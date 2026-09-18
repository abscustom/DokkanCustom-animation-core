--4025650:LRハッチヒャック(巨大化)_ブラッディナイトメア_sp2437
--sp_effect_a3_00096

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
SP_01 = 160963;  --眼が光る～セリフカットイン    ef_001
SP_02 = 160964;  --頭突き    ef_002_f
SP_03 = 160965;  --頭突き    ef_002_b
SP_04 = 160968;  --膝蹴り    ef_003_f
SP_05 = 160969;  --膝蹴り    ef_003_b
SP_06 = 160972;  --斜め殴り    ef_004_f
SP_07 = 160973;  --斜め殴り    ef_004_b
SP_08 = 160976;  --横殴り　こぶしアップ    ef_005_f
SP_09 = 160977;  --横殴り　こぶしアップ    ef_005_b
SP_10 = 160980;  --殴り～フィニッシュ    ef_006_f
SP_11 = 160981;  --殴り～フィニッシュ    ef_006_b

--敵側
SP_02r = 160966;  --頭突き　敵側    ef_002_r_f
SP_03r = 160967;  --頭突き　敵側    ef_002_r_b
SP_04r = 160970;  --膝蹴り　敵側    ef_003_r_f
SP_05r = 160971;  --膝蹴り　敵側    ef_003_r_b
SP_06r = 160974;  --斜め殴り　敵側    ef_004_r_f
SP_07r = 160975;  --斜め殴り　敵側    ef_004_r_b
SP_08r = 160978;  --横殴り　こぶしアップ　敵側    ef_005_r_f
SP_09r = 160979;  --横殴り　こぶしアップ　敵側    ef_005_r_b
SP_10r = 160982;  --殴り～フィニッシュ　敵側    ef_006_r_f
SP_11r = 160983;  --殴り～フィニッシュ　敵側    ef_006_r_b

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

ENABLE_AUTO_TIME_STRETCH(0.8);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 眼が光る～セリフカットイン(152F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --眼が光る～セリフカットイン    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 150, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 150, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 150, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 150 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 150 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 150, first_f, 0 );

-- ** 集中線 ** --

spep_x = spep_0 + 52;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
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

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--目光る
SE002 = playSeVer2( spep_0 + 30, 1328, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE002, 71 );
SE003 = playSeVer2( spep_0 + 38, 1291, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE003, 55 );
SE004 = playSeVer2( spep_0 + 38, 1329, "",spep_0 + 148, 0, 28, -1);
setPitch( spep_0 + 38, SE004, 300 );
setTimeStretch( SE004, 1.2, 30, 4 );
setSeVolumeByWorkId( spep_0 + 38, SE004, 120 );
SE005 = playSeVer2( spep_0 + 38, 1240, "",spep_0 + 128, 0, 24, -1);

--顔カットイン
SE006 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 150, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 150;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;

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


--------------------------------------
-- 頭突き(96F)
--------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
head_butt_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --頭突き    ef_002_f
setEffMoveKey( spep_2 + 0, head_butt_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 94, head_butt_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, head_butt_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 94, head_butt_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, head_butt_f, 0 );
setEffRotateKey( spep_2 + 94, head_butt_f, 0 );
setEffAlphaKey( spep_2 + 0, head_butt_f, 255 );
setEffAlphaKey( spep_2 + 94 -2, head_butt_f, 255 );
setEffAlphaKey( spep_2 + 94 -1, head_butt_f, 255 );
setEffAlphaKey( spep_2 + 94, head_butt_f, 0 );

head_butt_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --頭突き    ef_002_b
setEffMoveKey( spep_2 + 94, head_butt_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, head_butt_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 94, head_butt_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, head_butt_b, 0 );
setEffRotateKey( spep_2 + 94, head_butt_b, 0 );
setEffAlphaKey( spep_2 + 0, head_butt_b, 255 );
setEffAlphaKey( spep_2 + 94 -2, head_butt_b, 255 );
setEffAlphaKey( spep_2 + 94 -1, head_butt_b, 255 );
setEffAlphaKey( spep_2 + 94, head_butt_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 102 );

setMoveKey( spep_2 + 0, 1, 91, -114.0 , 0 );
--setMoveKey( spep_2 + 1, 1, 110.1, -85.2 , 0 );
setMoveKey( spep_2 + 1, 1, 110.8, -90.7 , 0 );
setMoveKey( spep_2 + 2, 1, 110.8, -90.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 131.6, -64.4 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 131.6, -64.4 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 152.2, -38.9 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 152.2, -38.9 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 173, -13.5 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 180.9, -23.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 188.9, -33.5 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 196.9, -43.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 205, -53.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 213, -63.7 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 220.9, -73.7 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 228.9, -83.7 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 236.9, -93.7 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 244.9, -103.7 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 252.9, -113.8 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 260.9, -123.8 , 0 );

setScaleKey( spep_2 + 0, 1, 1.33 +0.08 , 1.33 +0.08 );
--setScaleKey( spep_2 + 1, 1, 1.4 , 1.4  );
setScaleKey( spep_2 + 1, 1, 1.48 , 1.48  );
setScaleKey( spep_2 + 2, 1, 1.48 , 1.48  );
setScaleKey( spep_2 -3 + 6, 1, 1.56 , 1.56  );
setScaleKey( spep_2 -3 + 7, 1, 1.56 , 1.56  );
setScaleKey( spep_2 -3 + 8, 1, 1.63 , 1.63  );
setScaleKey( spep_2 -3 + 9, 1, 1.63 , 1.63  );
setScaleKey( spep_2 -3 + 10, 1, 1.71, 1.71 );
setScaleKey( spep_2 -3 + 12, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 18, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 22, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 24, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 28, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 30, 1, 1.75, 1.75 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 音 ** --
--振りかぶる
SE008 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 40, 0, 20, -1);      
SE009 = playSeVer2( spep_2 + 0, 1182, "", 0, 14, 0, -1);
setStartTimeMs( SE009,  33 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
   
    pauseAll( SP_dodge, 67);  

        -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 260.9, -123.8 , 0 );
    setMoveKey( SP_dodge + 2, 1, 268.9, -133.8 , 0 );
    setMoveKey( SP_dodge + 4, 1, 276.9, -143.9 , 0 );
    setMoveKey( SP_dodge + 6, 1, 284.9, -153.9 , 0 );
    setMoveKey( SP_dodge + 8, 1, 256.8, -117.4 , 0 );
    setMoveKey( SP_dodge + 10, 1, 228.6, -80.9 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.75, 1.75 );
    setScaleKey( SP_dodge + 2, 1, 1.75, 1.75 );
    setScaleKey( SP_dodge + 4, 1, 1.76, 1.76 );
    setScaleKey( SP_dodge + 6, 1, 1.76, 1.76 );
    setScaleKey( SP_dodge + 8, 1, 1.77, 1.77 );
    setScaleKey( SP_dodge + 10, 1, 1.77, 1.77 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    
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
setDisp( spep_2 -3 + 78, 1, 0 );

changeAnime( spep_2 -3 + 48, 1, 108 );

setMoveKey( spep_2 -3 + 34, 1, 268.9, -133.8 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 276.9, -143.9 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 284.9, -153.9 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 256.8, -117.4 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 228.6, -80.9 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 200.5, -44.5 , 0 );
setMoveKey( spep_2 -3 + 47, 1, 172.4, -8 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 237.4, -86 , 0 );
setMoveKey( spep_2 -3 + 49, 1, 237.4, -86 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 155.3, 92.3 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 265.3, -31.3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 121.3, 21.1 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 205.3, 15.4 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 127.2, -18.2 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 169.2, 18.2 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 191.2, 4.6 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 187.1, -9.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 181.1, 1.1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 172.9, -17.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 206.4, -92.9 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 245.8, -208.5 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 300.8, -370.5 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 371.8, -579.3 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 458.6, -834.9 , 0 );

setScaleKey( spep_2 -3 + 34, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 36, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 40, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 42, 1, 1.77, 1.77 );
setScaleKey( spep_2 -3 + 47, 1, 1.77, 1.77 );
setScaleKey( spep_2 -3 + 48, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 50, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 52, 1, 2.14, 2.14 );
setScaleKey( spep_2 -3 + 54, 1, 2.14, 2.14 );
setScaleKey( spep_2 -3 + 56, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 58, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 60, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 62, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 64, 1, 2.17, 2.17 );
setScaleKey( spep_2 -3 + 66, 1, 2.17, 2.17 );
setScaleKey( spep_2 -3 + 68, 1, 2.21, 2.21 );
setScaleKey( spep_2 -3 + 70, 1, 2.32, 2.32 );
setScaleKey( spep_2 -3 + 72, 1, 2.51, 2.51 );
setScaleKey( spep_2 -3 + 74, 1, 2.77, 2.77 );
setScaleKey( spep_2 -3 + 76, 1, 3.11, 3.11 );
setScaleKey( spep_2 -3 + 78, 1, 3.52, 3.52 );

setRotateKey( spep_2 -3 + 47, 1, 0 );
setRotateKey( spep_2 -3 + 48, 1, 35.9 );
setRotateKey( spep_2 -3 + 66, 1, 35.9 );
setRotateKey( spep_2 -3 + 68, 1, 36.4 );
setRotateKey( spep_2 -3 + 70, 1, 37.7 );
setRotateKey( spep_2 -3 + 72, 1, 39.8 );
setRotateKey( spep_2 -3 + 74, 1, 42.8 );
setRotateKey( spep_2 -3 + 76, 1, 46.7 );
setRotateKey( spep_2 -3 + 78, 1, 51.4 );

-- ** 音 ** --
--頭突き
SE010 = playSeVer2( spep_2 + 45, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 45, SE010, 87 );  
SE011 = playSeVer2( spep_2 + 45, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 45, SE011, 87 );  

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 94, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 膝蹴り(104F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
knee_kick_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --膝蹴り    ef_003_f
setEffMoveKey( spep_3 + 0, knee_kick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 101, knee_kick_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, knee_kick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 101, knee_kick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, knee_kick_f, 0 );
setEffRotateKey( spep_3 + 101, knee_kick_f, 0 );
setEffAlphaKey( spep_3 + 0, knee_kick_f, 255 );
setEffAlphaKey( spep_3 + 101 -1, knee_kick_f, 255 );
setEffAlphaKey( spep_3 + 101, knee_kick_f, 0 );

knee_kick_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --膝蹴り    ef_003_b
setEffMoveKey( spep_3 + 0, knee_kick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 101, knee_kick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, knee_kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 101, knee_kick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, knee_kick_b, 0 );
setEffRotateKey( spep_3 + 101, knee_kick_b, 0 );
setEffAlphaKey( spep_3 + 0, knee_kick_b, 255 );
setEffAlphaKey( spep_3 + 101 -1, knee_kick_b, 255 );
setEffAlphaKey( spep_3 + 101, knee_kick_b, 0 );

-- ** 集中線 ** --

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 46, 1, 0 );
setDisp( spep_3 -3 + 66, 1, 1 );
setDisp( spep_3 -3 + 96, 1, 0 );

changeAnime( spep_3 + 0, 1, 108 );
changeAnime( spep_3 -3 + 65, 1, 106 );

setMoveKey( spep_3 + 0, 1, 68, -21.2 , 0 );
setMoveKey( spep_3 + 1, 1, 65.5, -25.6 , 0 );
setMoveKey( spep_3 + 2, 1, 62.9, -29.6 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 60.5, -33.3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 57.8, -36.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 55.3, -39.7 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 52.8, -42.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 50.2, -44.7 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 47.7, -46.7 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 45.1, -48.4 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 42.6, -49.7 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 40.1, -50.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 37.5, -51.4 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 35, -51.7 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 32.5, -51.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 29.9, -51.2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 27.3, -50.5 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 24.8, -49.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 22.3, -48.1 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 19.7, -46.4 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 17.2, -44.3 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 14.7, -41.9 , 0 );
setMoveKey( spep_3 -3 + 45, 1, 12.1, -39.1 , 0 );
setMoveKey( spep_3 -3 + 65, 1, 12.1, -39.1 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -26.5, 2.4 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -112, 40.9 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 86.5, -21.7 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -72, 78.7 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 37, 2.4 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -52.5, 31.9 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -26.5, -27.1 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -48, 2.4 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -5, 2.4 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -26.5, 23.9 , 0 );
setMoveKey( spep_3 -3 + 86, 1, -26.5, -19.1 , 0 );
setMoveKey( spep_3 -3 + 88, 1, -48, 2.4 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -5, 2.4 , 0 );
setMoveKey( spep_3 -3 + 91, 1, -5, 2.4 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -590.2, 180.7 , 0 );
setMoveKey( spep_3 -3 + 93, 1, -590.2, 180.7 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -928.5, 287.6 , 0 );
setMoveKey( spep_3 -3 + 96, 1, -1041.2, 323.3 , 0 );

setScaleKey( spep_3 + 0, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 1, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 2, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 6, 1, 0.82, 0.82 );
setScaleKey( spep_3 -3 + 8, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 10, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 12, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 14, 1, 0.76, 0.76 );
setScaleKey( spep_3 -3 + 16, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 18, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 20, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 22, 1, 0.71, 0.71 );
setScaleKey( spep_3 -3 + 24, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 26, 1, 0.68, 0.68 );
setScaleKey( spep_3 -3 + 28, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 30, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 32, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 34, 1, 0.62, 0.62 );
setScaleKey( spep_3 -3 + 36, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 38, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 40, 1, 0.58, 0.58 );
setScaleKey( spep_3 -3 + 42, 1, 0.57, 0.57 );
setScaleKey( spep_3 -3 + 45, 1, 0.56, 0.56 );
setScaleKey( spep_3 -3 + 65, 1, 0.56, 0.56 );
setScaleKey( spep_3 -3 + 66, 1, 3.55, 3.55 );
setScaleKey( spep_3 -3 + 96, 1, 3.55, 3.55 );

setRotateKey( spep_3 + 0, 1, 10.5 );
setRotateKey( spep_3 -3 + 45, 1, 10.5 );
setRotateKey( spep_3 -3 + 65, 1, 10.5 );
setRotateKey( spep_3 -3 + 66, 1, -42.4 );
setRotateKey( spep_3 -3 + 96, 1, -42.4 );

-- ** 音 ** --
--振りかぶる
SE012 = playSeVer2( spep_3 + 0, 1004, "", 0, 0, 0, -1);    
SE013 = playSeVer2( spep_3 + 0, 1116, "",spep_3 + 42, 0, 20, -1);  

--足振りかぶる
SE014 = playSeVer2( spep_3 + 24, 1278, "",spep_3 + 86, 0, 14, -1);  
SE015 = playSeVer2( spep_3 + 30, 9, "", 0, 0, 0, -1);   

--キック
SE016 = playSeVer2( spep_3 + 60, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 60, SE016, 75 );
SE017 = playSeVer2( spep_3 + 60, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 60, SE017, 83 );

--画面遷移
SE018 = playSeVer2( spep_3 + 78, 1072, "", 0, 0, 0, -1);    

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 101, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 101;


--------------------------------------
-- 斜め殴り(76F)
--------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
Oblique_punch_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --斜め殴り    ef_004_f
setEffMoveKey( spep_4 + 0, Oblique_punch_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 72, Oblique_punch_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, Oblique_punch_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 72, Oblique_punch_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, Oblique_punch_f, 0 );
setEffRotateKey( spep_4 + 72, Oblique_punch_f, 0 );
setEffAlphaKey( spep_4 + 0, Oblique_punch_f, 255 );
setEffAlphaKey( spep_4 + 72 -2, Oblique_punch_f, 255 );
setEffAlphaKey( spep_4 + 72 -1, Oblique_punch_f, 255 );
setEffAlphaKey( spep_4 + 72, Oblique_punch_f, 0 );

Oblique_punch_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --斜め殴り    ef_004_b
setEffMoveKey( spep_4 + 0, Oblique_punch_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 72, Oblique_punch_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, Oblique_punch_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 72, Oblique_punch_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, Oblique_punch_b, 0 );
setEffRotateKey( spep_4 + 72, Oblique_punch_b, 0 );
setEffAlphaKey( spep_4 + 0, Oblique_punch_b, 255 );
setEffAlphaKey( spep_4 + 72 -2, Oblique_punch_b, 255 );
setEffAlphaKey( spep_4 + 72 -1, Oblique_punch_b, 255 );
setEffAlphaKey( spep_4 + 72, Oblique_punch_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 16, 1, 1 );
setDisp( spep_4 -3 + 70, 1, 0 );

changeAnime( spep_4 + 16, 1, 106 );
changeAnime( spep_4 -3 + 44, 1, 108 );

setMoveKey( spep_4 -3 + 16, 1, 499.8, -530.2 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 447.8, -483.9 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 361.6, -412 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 278.7, -342.7 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 204.4, -280.3 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 143.2, -228.6 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 95.7, -188.2 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 59.3, -157.1 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 31.1, -132.8 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 8.5, -113.2 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -10.2, -96.8 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -26, -82.7 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -39.9, -70.2 , 0 );
setMoveKey( spep_4 -3 + 41, 1, -39.9, -70.2 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 84.4, -170.5 , 0 );
setMoveKey( spep_4 -3 + 43, 1, 84.4, -170.5 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 147.9, -288 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 126, -183.8 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 110.5, -230.2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 159.6, -233.5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 163.5, -301.4 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 141.6, -197.3 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 126.2, -243.6 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 175.3, -247 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 179.2, -314.8 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 157.3, -210.7 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 141.9, -257.1 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 321.2, -385.4 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 455.3, -513.8 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 589.4, -642.2 , 0 );

setScaleKey( spep_4 -3 + 16, 1, 1.96, 1.96 );
setScaleKey( spep_4 -3 + 18, 1, 2.05, 2.05 );
setScaleKey( spep_4 -3 + 43, 1, 2.05, 2.05 );
setScaleKey( spep_4 -3 + 44, 1, 2.95, 2.95 );
setScaleKey( spep_4 -3 + 70, 1, 2.95, 2.95 );

setRotateKey( spep_4 -3 + 16, 1, -60.6 );
setRotateKey( spep_4 -3 + 18, 1, -53.3 );
setRotateKey( spep_4 -3 + 20, 1, -46 );
setRotateKey( spep_4 -3 + 22, 1, -38.9 );
setRotateKey( spep_4 -3 + 24, 1, -32.5 );
setRotateKey( spep_4 -3 + 26, 1, -27.3 );
setRotateKey( spep_4 -3 + 28, 1, -23.1 );
setRotateKey( spep_4 -3 + 30, 1, -20 );
setRotateKey( spep_4 -3 + 32, 1, -17.5 );
setRotateKey( spep_4 -3 + 34, 1, -15.5 );
setRotateKey( spep_4 -3 + 36, 1, -13.8 );
setRotateKey( spep_4 -3 + 38, 1, -12.3 );
setRotateKey( spep_4 -3 + 40, 1, -11 );
setRotateKey( spep_4 -3 + 41, 1, -11 );
setRotateKey( spep_4 -3 + 42, 1, -13.4 );
setRotateKey( spep_4 -3 + 43, 1, -13.4 );
setRotateKey( spep_4 -3 + 44, 1, 46.2 );
setRotateKey( spep_4 -3 + 70, 1, 46.2 );

-- ** 音 ** --
--パンチ
SE019 = playSeVer2( spep_4 + 38, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 38, SE019, 83 );
SE020 = playSeVer2( spep_4 + 38, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 38, SE020, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 72, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 白フェード ** --

-- ** 次の準備 ** --
spep_5 = spep_4 + 72;


--------------------------------------
-- 横殴り　こぶしアップ(160F)
--------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
sideways_blow_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --横殴り　こぶしアップ    ef_005_f
setEffMoveKey( spep_5 + 0, sideways_blow_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 156, sideways_blow_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, sideways_blow_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 156, sideways_blow_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, sideways_blow_f, 0 );
setEffRotateKey( spep_5 + 156, sideways_blow_f, 0 );
setEffAlphaKey( spep_5 + 0, sideways_blow_f, 255 );
setEffAlphaKey( spep_5 + 156 -2, sideways_blow_f, 255 );
setEffAlphaKey( spep_5 + 156 -1, sideways_blow_f, 255 );
setEffAlphaKey( spep_5 + 156, sideways_blow_f, 0 );

sideways_blow_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --横殴り　こぶしアップ    ef_005_b
setEffMoveKey( spep_5 + 0, sideways_blow_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 156, sideways_blow_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, sideways_blow_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 156, sideways_blow_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, sideways_blow_b, 0 );
setEffRotateKey( spep_5 + 156, sideways_blow_b, 0 );
setEffAlphaKey( spep_5 + 0, sideways_blow_b, 255 );
setEffAlphaKey( spep_5 + 156 -2, sideways_blow_b, 255 );
setEffAlphaKey( spep_5 + 156 -1, sideways_blow_b, 255 );
setEffAlphaKey( spep_5 + 156, sideways_blow_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 42, 1, 1 );
setDisp( spep_5 -3 + 84, 1, 0 );
setDisp( spep_5 -3 + 102, 1, 1 );
setDisp( spep_5 -3 + 159, 1, 0 );

changeAnime( spep_5 -3 + 42, 1, 108 );
changeAnime( spep_5 -3 + 110, 1, 106 );

setMoveKey( spep_5 -3 + 42, 1, 275.3, -33 , 0 );
setMoveKey( spep_5 -3 + 43, 1, 275.3, -33 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -18.3, -33 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 106.9, 9 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 133.7, -60.3 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 111.6, -37.2 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 170.6, -33 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 151.3, 9 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 175.4, -60.3 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 150.5, -37.2 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 206.7, -33 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 184.6, 9 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 205.9, -60.3 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 178.2, -37.2 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 231.7, -33 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 206.8, 9 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 225.3, -60.3 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 194.9, -37.2 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 245.6, -33 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 217.9, 9 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 233.6, -60.3 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 200.4, -37.2 , 0 );
setMoveKey( spep_5 -3 + 101, 1, 200.4, -37.2 , 0 );
setMoveKey( spep_5 -3 + 102, 1, -490.4, 326.1 , 0 );
setMoveKey( spep_5 -3 + 104, 1, -440, 293.7 , 0 );
setMoveKey( spep_5 -3 + 106, 1, -289, 196.1 , 0 );
setMoveKey( spep_5 -3 + 108, 1, -37.7, 33.1 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 42.5, 28.9 , 0 );
setMoveKey( spep_5 -3 + 112, 1, -45.6, 29.3 , 0 );
setMoveKey( spep_5 -3 + 114, 1, -1.6, 46.9 , 0 );
setMoveKey( spep_5 -3 + 116, 1, -1.6, 16.1 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 42.4, 29.3 , 0 );
setMoveKey( spep_5 -3 + 120, 1, -45.6, 29.3 , 0 );
setMoveKey( spep_5 -3 + 122, 1, -1.6, 46.9 , 0 );
setMoveKey( spep_5 -3 + 124, 1, -1.6, 36.1 , 0 );
setMoveKey( spep_5 -3 + 126, 1, -2, 28.4 , 0 );
setMoveKey( spep_5 -3 + 128, 1, -2.1, 28.3 , 0 );
setMoveKey( spep_5 -3 + 130, 1, -2.1, 28.2 , 0 );
setMoveKey( spep_5 -3 + 132, 1, -2.2, 28.1 , 0 );
setMoveKey( spep_5 -3 + 134, 1, -2.2, 28.1 , 0 );
setMoveKey( spep_5 -3 + 136, 1, -2.2, 28 , 0 );
setMoveKey( spep_5 -3 + 138, 1, -2.3, 28 , 0 );
setMoveKey( spep_5 -3 + 140, 1, -2.3, 27.9 , 0 );
setMoveKey( spep_5 -3 + 142, 1, -2.4, 27.9 , 0 );
setMoveKey( spep_5 -3 + 144, 1, -2.4, 27.8 , 0 );
setMoveKey( spep_5 -3 + 146, 1, -2.5, 27.8 , 0 );
setMoveKey( spep_5 -3 + 148, 1, -2.5, 27.7 , 0 );
setMoveKey( spep_5 -3 + 150, 1, -2.6, 27.6 , 0 );
setMoveKey( spep_5 -3 + 152, 1, -2.6, 27.6 , 0 );
setMoveKey( spep_5 -3 + 154, 1, -2.6, 27.4 , 0 );
setMoveKey( spep_5 -3 + 156, 1, -2.7, 27.4 , 0 );
setMoveKey( spep_5 -3 + 158, 1, -2.8, 27.4 , 0 );
setMoveKey( spep_5 -3 + 159, 1, -2.8, 27.4 , 0 );

setScaleKey( spep_5 -3 + 42, 1, 2.69, 2.69 );
setScaleKey( spep_5 -3 + 82, 1, 2.69, 2.69 );
setScaleKey( spep_5 -3 + 101, 1, 2.69, 2.69 );
setScaleKey( spep_5 -3 + 102, 1, 5.27, 5.27 );
setScaleKey( spep_5 -3 + 104, 1, 4.85, 4.85 );
setScaleKey( spep_5 -3 + 106, 1, 3.6, 3.6 );
setScaleKey( spep_5 -3 + 108, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 110, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 124, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 126, 1, 1.13, 1.13 );
setScaleKey( spep_5 -3 + 132, 1, 1.13, 1.13 );
setScaleKey( spep_5 -3 + 134, 1, 1.12, 1.12 );
setScaleKey( spep_5 -3 + 142, 1, 1.12, 1.12 );
setScaleKey( spep_5 -3 + 144, 1, 1.11, 1.11 );
setScaleKey( spep_5 -3 + 152, 1, 1.11, 1.11 );
setScaleKey( spep_5 -3 + 154, 1, 1.1, 1.1 );
setScaleKey( spep_5 -3 + 159, 1, 1.1, 1.1 );

setRotateKey( spep_5 -3 + 42, 1, 18.7 );
setRotateKey( spep_5 -3 + 82, 1, 18.7 );
setRotateKey( spep_5 -3 + 101, 1, 18.7 );
setRotateKey( spep_5 -3 + 102, 1, 14.9 );
setRotateKey( spep_5 -3 + 104, 1, 14.6 );
setRotateKey( spep_5 -3 + 106, 1, 13.8 );
setRotateKey( spep_5 -3 + 108, 1, 12.5 );
setRotateKey( spep_5 -3 + 109, 1, 12.5 );
setRotateKey( spep_5 -3 + 110, 1, -49.5 );
setRotateKey( spep_5 -3 + 112, 1, -52.3 );
setRotateKey( spep_5 -3 + 159, 1, -52.3 );

-- ** 音 ** --
--振りかぶる
SE021 = playSeVer2( spep_5 + 0, 8, "",spep_5 + 58, 0, 16, -1);  
SE022 = playSeVer2( spep_5 + 0, 1314, "",spep_5 + 58, 0, 16, -1);   

--横向きパンチ
SE023 = playSeVer2( spep_5 + 40, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 40, SE023, 79 );
SE024 = playSeVer2( spep_5 + 40, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 40, SE024, 79 );

--敵飛んでいく
SE025 = playSeVer2( spep_5 + 74, 1183, "",spep_5 + 136, 0, 20, -1);
setSeVolumeByWorkId( spep_5 + 74, SE025, 66 );
SE026 = playSeVer2( spep_5 + 74, 1121, "",spep_5 + 136, 0, 20, -1);
setSeVolumeByWorkId( spep_5 + 74, SE026, 72 );

--柱激突
SE027 = playSeVer2( spep_5 + 108, 1159, "",spep_5 + 234, 0, 70, -1); 

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 156, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 白フェード ** --

-- ** 次の準備 ** --
spep_6 = spep_5 + 156;


--------------------------------------
-- 殴り～フィニッシュ(212F)
--------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
last_f = entryEffect( spep_6 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --殴り～フィニッシュ    ef_006_f
setEffMoveKey( spep_6 + 0, last_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 210, last_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, last_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 210, last_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, last_f, 0 );
setEffRotateKey( spep_6 + 210, last_f, 0 );
setEffAlphaKey( spep_6 + 0, last_f, 255 );
setEffAlphaKey( spep_6 + 210 , last_f, 255 );

last_b = entryEffect( spep_6 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --殴り～フィニッシュ    ef_006_b
setEffMoveKey( spep_6 + 0, last_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 210, last_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, last_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 210, last_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, last_b, 0 );
setEffRotateKey( spep_6 + 210, last_b, 0 );
setEffAlphaKey( spep_6 + 0, last_b, 255 );
setEffAlphaKey( spep_6 + 210 , last_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 -3 + 48, 1, 1 );
setDisp( spep_6 -3 + 68, 1, 0 );

changeAnime( spep_6 -3 + 48, 1, 106 );

setMoveKey( spep_6 -3 + 48, 1, 3.9, 51.7 , 0 );
setMoveKey( spep_6 -3 + 68, 1, 3.9, 51.7 , 0 );

setScaleKey( spep_6 -3 + 48, 1, 1.12, 1.12 );
setScaleKey( spep_6 -3 + 68, 1, 1.12, 1.12 );

setRotateKey( spep_6 -3 + 48, 1, -52.3 );
setRotateKey( spep_6 -3 + 63, 1, -52.3 );
setRotateKey( spep_6 -3 + 64, 1, -54.5 );
setRotateKey( spep_6 -3 + 68, 1, -54.5 );

-- ** 音 ** --
--振りかぶる
SE028 = playSeVer2( spep_6 + 2, 1072, "",spep_6 + 16, 0, 0, -1);
setStartTimeMs( SE028,  233 );
SE029 = playSeVer2( spep_6 + 10, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE029,  83 );
SE030 = playSeVer2( spep_6 + 6, 1116, "",spep_6 + 52, 0, 22, -1);       

--追い討ちパンチ
SE031 = playSeVer2( spep_6 + 54, 1004, "", 0, 0, 0, -1);        
SE032 = playSeVer2( spep_6 + 63, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 63, SE032, 75 );  
SE033 = playSeVer2( spep_6 + 63, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 63, SE033, 82 );  
SE034 = playSeVer2( spep_6 + 63, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 63, SE034, 77 );  
SE035 = playSeVer2( spep_6 + 63, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 63, SE035, 77 );  

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 210, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 白フェード ** --

-- -- ** ダメージ表示 ** --
dealDamage( spep_6 + 98 ); -- ダメージ表示フレーム
endPhase( spep_6 + 200 ); -- 終了フレーム

else

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 眼が光る～セリフカットイン(152F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --眼が光る～セリフカットイン    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 150, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 150, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 150, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 150 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 150 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 150, first_f, 0 );

-- ** 集中線 ** --

spep_x = spep_0 + 52;

-- ** 顔カットイン ** --
--[[speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]

-- ** 書き文字エントリー ** --
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

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--目光る
SE002 = playSeVer2( spep_0 + 30, 1328, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE002, 71 );
SE003 = playSeVer2( spep_0 + 38, 1291, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE003, 55 );
SE004 = playSeVer2( spep_0 + 38, 1329, "",spep_0 + 148, 0, 28, -1);
setPitch( spep_0 + 38, SE004, 300 );
setTimeStretch( SE004, 1.2, 30, 4 );
setSeVolumeByWorkId( spep_0 + 38, SE004, 120 );
SE005 = playSeVer2( spep_0 + 38, 1240, "",spep_0 + 128, 0, 24, -1);

--顔カットイン
SE006 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 150, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 150;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;

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


--------------------------------------
-- 頭突き(96F)
--------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
head_butt_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --頭突き　敵側    ef_002_r_f
setEffMoveKey( spep_2 + 0, head_butt_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 94, head_butt_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, head_butt_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 94, head_butt_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, head_butt_f, 0 );
setEffRotateKey( spep_2 + 94, head_butt_f, 0 );
setEffAlphaKey( spep_2 + 0, head_butt_f, 255 );
setEffAlphaKey( spep_2 + 94 -2, head_butt_f, 255 );
setEffAlphaKey( spep_2 + 94 -1, head_butt_f, 255 );
setEffAlphaKey( spep_2 + 94, head_butt_f, 0 );

head_butt_b = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --頭突き　敵側    ef_002_r_b
setEffMoveKey( spep_2 + 94, head_butt_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, head_butt_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 94, head_butt_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, head_butt_b, 0 );
setEffRotateKey( spep_2 + 94, head_butt_b, 0 );
setEffAlphaKey( spep_2 + 0, head_butt_b, 255 );
setEffAlphaKey( spep_2 + 94 -2, head_butt_b, 255 );
setEffAlphaKey( spep_2 + 94 -1, head_butt_b, 255 );
setEffAlphaKey( spep_2 + 94, head_butt_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 102 );

setMoveKey( spep_2 + 0, 1, 91, -114.0 , 0 );
--setMoveKey( spep_2 + 1, 1, 110.1, -85.2 , 0 );
setMoveKey( spep_2 + 1, 1, 110.8, -90.7 , 0 );
setMoveKey( spep_2 + 2, 1, 110.8, -90.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 131.6, -64.4 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 131.6, -64.4 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 152.2, -38.9 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 152.2, -38.9 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 173, -13.5 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 180.9, -23.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 188.9, -33.5 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 196.9, -43.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 205, -53.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 213, -63.7 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 220.9, -73.7 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 228.9, -83.7 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 236.9, -93.7 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 244.9, -103.7 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 252.9, -113.8 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 260.9, -123.8 , 0 );

setScaleKey( spep_2 + 0, 1, 1.33 +0.08 , 1.33 +0.08 );
--setScaleKey( spep_2 + 1, 1, 1.4 , 1.4  );
setScaleKey( spep_2 + 1, 1, 1.48 , 1.48  );
setScaleKey( spep_2 + 2, 1, 1.48 , 1.48  );
setScaleKey( spep_2 -3 + 6, 1, 1.56 , 1.56  );
setScaleKey( spep_2 -3 + 7, 1, 1.56 , 1.56  );
setScaleKey( spep_2 -3 + 8, 1, 1.63 , 1.63  );
setScaleKey( spep_2 -3 + 9, 1, 1.63 , 1.63  );
setScaleKey( spep_2 -3 + 10, 1, 1.71, 1.71 );
setScaleKey( spep_2 -3 + 12, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 18, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 22, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 24, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 28, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 30, 1, 1.75, 1.75 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 音 ** --
--振りかぶる
SE008 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 40, 0, 20, -1);      
SE009 = playSeVer2( spep_2 + 0, 1182, "", 0, 14, 0, -1);
setStartTimeMs( SE009,  33 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
   
    pauseAll( SP_dodge, 67);  

        -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 260.9, -123.8 , 0 );
    setMoveKey( SP_dodge + 2, 1, 268.9, -133.8 , 0 );
    setMoveKey( SP_dodge + 4, 1, 276.9, -143.9 , 0 );
    setMoveKey( SP_dodge + 6, 1, 284.9, -153.9 , 0 );
    setMoveKey( SP_dodge + 8, 1, 256.8, -117.4 , 0 );
    setMoveKey( SP_dodge + 10, 1, 228.6, -80.9 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.75, 1.75 );
    setScaleKey( SP_dodge + 2, 1, 1.75, 1.75 );
    setScaleKey( SP_dodge + 4, 1, 1.76, 1.76 );
    setScaleKey( SP_dodge + 6, 1, 1.76, 1.76 );
    setScaleKey( SP_dodge + 8, 1, 1.77, 1.77 );
    setScaleKey( SP_dodge + 10, 1, 1.77, 1.77 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    
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
setDisp( spep_2 -3 + 78, 1, 0 );

changeAnime( spep_2 -3 + 48, 1, 108 );

setMoveKey( spep_2 -3 + 34, 1, 268.9, -133.8 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 276.9, -143.9 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 284.9, -153.9 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 256.8, -117.4 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 228.6, -80.9 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 200.5, -44.5 , 0 );
setMoveKey( spep_2 -3 + 47, 1, 172.4, -8 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 237.4, -86 , 0 );
setMoveKey( spep_2 -3 + 49, 1, 237.4, -86 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 155.3, 92.3 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 265.3, -31.3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 121.3, 21.1 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 205.3, 15.4 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 127.2, -18.2 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 169.2, 18.2 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 191.2, 4.6 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 187.1, -9.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 181.1, 1.1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 172.9, -17.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 206.4, -92.9 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 245.8, -208.5 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 300.8, -370.5 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 371.8, -579.3 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 458.6, -834.9 , 0 );

setScaleKey( spep_2 -3 + 34, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 36, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 40, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 42, 1, 1.77, 1.77 );
setScaleKey( spep_2 -3 + 47, 1, 1.77, 1.77 );
setScaleKey( spep_2 -3 + 48, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 50, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 52, 1, 2.14, 2.14 );
setScaleKey( spep_2 -3 + 54, 1, 2.14, 2.14 );
setScaleKey( spep_2 -3 + 56, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 58, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 60, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 62, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 64, 1, 2.17, 2.17 );
setScaleKey( spep_2 -3 + 66, 1, 2.17, 2.17 );
setScaleKey( spep_2 -3 + 68, 1, 2.21, 2.21 );
setScaleKey( spep_2 -3 + 70, 1, 2.32, 2.32 );
setScaleKey( spep_2 -3 + 72, 1, 2.51, 2.51 );
setScaleKey( spep_2 -3 + 74, 1, 2.77, 2.77 );
setScaleKey( spep_2 -3 + 76, 1, 3.11, 3.11 );
setScaleKey( spep_2 -3 + 78, 1, 3.52, 3.52 );

setRotateKey( spep_2 -3 + 47, 1, 0 );
setRotateKey( spep_2 -3 + 48, 1, 35.9 );
setRotateKey( spep_2 -3 + 66, 1, 35.9 );
setRotateKey( spep_2 -3 + 68, 1, 36.4 );
setRotateKey( spep_2 -3 + 70, 1, 37.7 );
setRotateKey( spep_2 -3 + 72, 1, 39.8 );
setRotateKey( spep_2 -3 + 74, 1, 42.8 );
setRotateKey( spep_2 -3 + 76, 1, 46.7 );
setRotateKey( spep_2 -3 + 78, 1, 51.4 );

-- ** 音 ** --
--頭突き
SE010 = playSeVer2( spep_2 + 45, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 45, SE010, 87 );  
SE011 = playSeVer2( spep_2 + 45, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 45, SE011, 87 );  

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 94, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 膝蹴り(104F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
knee_kick_f = entryEffect( spep_3 + 0, SP_04r, 0x100, -1, 0, 0, 0 );  --膝蹴り　敵側    ef_003_r_f
setEffMoveKey( spep_3 + 0, knee_kick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 101, knee_kick_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, knee_kick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 101, knee_kick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, knee_kick_f, 0 );
setEffRotateKey( spep_3 + 101, knee_kick_f, 0 );
setEffAlphaKey( spep_3 + 0, knee_kick_f, 255 );
setEffAlphaKey( spep_3 + 101 -1, knee_kick_f, 255 );
setEffAlphaKey( spep_3 + 101, knee_kick_f, 0 );

knee_kick_b = entryEffect( spep_3 + 0, SP_05r, 0x80, -1, 0, 0, 0 );  --膝蹴り　敵側    ef_003_r_b
setEffMoveKey( spep_3 + 0, knee_kick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 101, knee_kick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, knee_kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 101, knee_kick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, knee_kick_b, 0 );
setEffRotateKey( spep_3 + 101, knee_kick_b, 0 );
setEffAlphaKey( spep_3 + 0, knee_kick_b, 255 );
setEffAlphaKey( spep_3 + 101 -1, knee_kick_b, 255 );
setEffAlphaKey( spep_3 + 101, knee_kick_b, 0 );

-- ** 集中線 ** --

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 46, 1, 0 );
setDisp( spep_3 -3 + 66, 1, 1 );
setDisp( spep_3 -3 + 96, 1, 0 );

changeAnime( spep_3 + 0, 1, 108 );
changeAnime( spep_3 -3 + 65, 1, 106 );

setMoveKey( spep_3 + 0, 1, 68, -21.2 , 0 );
setMoveKey( spep_3 + 1, 1, 65.5, -25.6 , 0 );
setMoveKey( spep_3 + 2, 1, 62.9, -29.6 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 60.5, -33.3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 57.8, -36.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 55.3, -39.7 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 52.8, -42.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 50.2, -44.7 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 47.7, -46.7 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 45.1, -48.4 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 42.6, -49.7 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 40.1, -50.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 37.5, -51.4 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 35, -51.7 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 32.5, -51.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 29.9, -51.2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 27.3, -50.5 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 24.8, -49.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 22.3, -48.1 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 19.7, -46.4 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 17.2, -44.3 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 14.7, -41.9 , 0 );
setMoveKey( spep_3 -3 + 45, 1, 12.1, -39.1 , 0 );
setMoveKey( spep_3 -3 + 65, 1, 12.1, -39.1 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -26.5, 2.4 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -112, 40.9 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 86.5, -21.7 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -72, 78.7 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 37, 2.4 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -52.5, 31.9 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -26.5, -27.1 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -48, 2.4 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -5, 2.4 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -26.5, 23.9 , 0 );
setMoveKey( spep_3 -3 + 86, 1, -26.5, -19.1 , 0 );
setMoveKey( spep_3 -3 + 88, 1, -48, 2.4 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -5, 2.4 , 0 );
setMoveKey( spep_3 -3 + 91, 1, -5, 2.4 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -590.2, 180.7 , 0 );
setMoveKey( spep_3 -3 + 93, 1, -590.2, 180.7 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -928.5, 287.6 , 0 );
setMoveKey( spep_3 -3 + 96, 1, -1041.2, 323.3 , 0 );

setScaleKey( spep_3 + 0, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 1, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 2, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 6, 1, 0.82, 0.82 );
setScaleKey( spep_3 -3 + 8, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 10, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 12, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 14, 1, 0.76, 0.76 );
setScaleKey( spep_3 -3 + 16, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 18, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 20, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 22, 1, 0.71, 0.71 );
setScaleKey( spep_3 -3 + 24, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 26, 1, 0.68, 0.68 );
setScaleKey( spep_3 -3 + 28, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 30, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 32, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 34, 1, 0.62, 0.62 );
setScaleKey( spep_3 -3 + 36, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 38, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 40, 1, 0.58, 0.58 );
setScaleKey( spep_3 -3 + 42, 1, 0.57, 0.57 );
setScaleKey( spep_3 -3 + 45, 1, 0.56, 0.56 );
setScaleKey( spep_3 -3 + 65, 1, 0.56, 0.56 );
setScaleKey( spep_3 -3 + 66, 1, 3.55, 3.55 );
setScaleKey( spep_3 -3 + 96, 1, 3.55, 3.55 );

setRotateKey( spep_3 + 0, 1, 10.5 );
setRotateKey( spep_3 -3 + 45, 1, 10.5 );
setRotateKey( spep_3 -3 + 65, 1, 10.5 );
setRotateKey( spep_3 -3 + 66, 1, -42.4 );
setRotateKey( spep_3 -3 + 96, 1, -42.4 );

-- ** 音 ** --
--振りかぶる
SE012 = playSeVer2( spep_3 + 0, 1004, "", 0, 0, 0, -1);    
SE013 = playSeVer2( spep_3 + 0, 1116, "",spep_3 + 42, 0, 20, -1);  

--足振りかぶる
SE014 = playSeVer2( spep_3 + 24, 1278, "",spep_3 + 86, 0, 14, -1);  
SE015 = playSeVer2( spep_3 + 30, 9, "", 0, 0, 0, -1);   

--キック
SE016 = playSeVer2( spep_3 + 60, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 60, SE016, 75 );
SE017 = playSeVer2( spep_3 + 60, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 60, SE017, 83 );

--画面遷移
SE018 = playSeVer2( spep_3 + 78, 1072, "", 0, 0, 0, -1);    

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 101, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 101;


--------------------------------------
-- 斜め殴り(76F)
--------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
Oblique_punch_f = entryEffect( spep_4 + 0, SP_06r, 0x100, -1, 0, 0, 0 );  --斜め殴り　敵側    ef_004_r_f
setEffMoveKey( spep_4 + 0, Oblique_punch_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 72, Oblique_punch_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, Oblique_punch_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 72, Oblique_punch_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, Oblique_punch_f, 0 );
setEffRotateKey( spep_4 + 72, Oblique_punch_f, 0 );
setEffAlphaKey( spep_4 + 0, Oblique_punch_f, 255 );
setEffAlphaKey( spep_4 + 72 -2, Oblique_punch_f, 255 );
setEffAlphaKey( spep_4 + 72 -1, Oblique_punch_f, 255 );
setEffAlphaKey( spep_4 + 72, Oblique_punch_f, 0 );

Oblique_punch_b = entryEffect( spep_4 + 0, SP_07r, 0x80, -1, 0, 0, 0 );  --斜め殴り　敵側    ef_004_r_b
setEffMoveKey( spep_4 + 0, Oblique_punch_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 72, Oblique_punch_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, Oblique_punch_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 72, Oblique_punch_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, Oblique_punch_b, 0 );
setEffRotateKey( spep_4 + 72, Oblique_punch_b, 0 );
setEffAlphaKey( spep_4 + 0, Oblique_punch_b, 255 );
setEffAlphaKey( spep_4 + 72 -2, Oblique_punch_b, 255 );
setEffAlphaKey( spep_4 + 72 -1, Oblique_punch_b, 255 );
setEffAlphaKey( spep_4 + 72, Oblique_punch_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 16, 1, 1 );
setDisp( spep_4 -3 + 70, 1, 0 );

changeAnime( spep_4 + 16, 1, 106 );
changeAnime( spep_4 -3 + 44, 1, 108 );

setMoveKey( spep_4 -3 + 16, 1, 499.8, -530.2 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 447.8, -483.9 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 361.6, -412 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 278.7, -342.7 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 204.4, -280.3 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 143.2, -228.6 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 95.7, -188.2 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 59.3, -157.1 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 31.1, -132.8 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 8.5, -113.2 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -10.2, -96.8 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -26, -82.7 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -39.9, -70.2 , 0 );
setMoveKey( spep_4 -3 + 41, 1, -39.9, -70.2 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 84.4, -170.5 , 0 );
setMoveKey( spep_4 -3 + 43, 1, 84.4, -170.5 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 147.9, -288 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 126, -183.8 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 110.5, -230.2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 159.6, -233.5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 163.5, -301.4 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 141.6, -197.3 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 126.2, -243.6 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 175.3, -247 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 179.2, -314.8 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 157.3, -210.7 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 141.9, -257.1 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 321.2, -385.4 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 455.3, -513.8 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 589.4, -642.2 , 0 );

setScaleKey( spep_4 -3 + 16, 1, 1.96, 1.96 );
setScaleKey( spep_4 -3 + 18, 1, 2.05, 2.05 );
setScaleKey( spep_4 -3 + 43, 1, 2.05, 2.05 );
setScaleKey( spep_4 -3 + 44, 1, 2.95, 2.95 );
setScaleKey( spep_4 -3 + 70, 1, 2.95, 2.95 );

setRotateKey( spep_4 -3 + 16, 1, -60.6 );
setRotateKey( spep_4 -3 + 18, 1, -53.3 );
setRotateKey( spep_4 -3 + 20, 1, -46 );
setRotateKey( spep_4 -3 + 22, 1, -38.9 );
setRotateKey( spep_4 -3 + 24, 1, -32.5 );
setRotateKey( spep_4 -3 + 26, 1, -27.3 );
setRotateKey( spep_4 -3 + 28, 1, -23.1 );
setRotateKey( spep_4 -3 + 30, 1, -20 );
setRotateKey( spep_4 -3 + 32, 1, -17.5 );
setRotateKey( spep_4 -3 + 34, 1, -15.5 );
setRotateKey( spep_4 -3 + 36, 1, -13.8 );
setRotateKey( spep_4 -3 + 38, 1, -12.3 );
setRotateKey( spep_4 -3 + 40, 1, -11 );
setRotateKey( spep_4 -3 + 41, 1, -11 );
setRotateKey( spep_4 -3 + 42, 1, -13.4 );
setRotateKey( spep_4 -3 + 43, 1, -13.4 );
setRotateKey( spep_4 -3 + 44, 1, 46.2 );
setRotateKey( spep_4 -3 + 70, 1, 46.2 );

-- ** 音 ** --
--パンチ
SE019 = playSeVer2( spep_4 + 38, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 38, SE019, 83 );
SE020 = playSeVer2( spep_4 + 38, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 38, SE020, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 72, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 白フェード ** --

-- ** 次の準備 ** --
spep_5 = spep_4 + 72;


--------------------------------------
-- 横殴り　こぶしアップ(160F)
--------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
sideways_blow_f = entryEffect( spep_5 + 0, SP_08r, 0x100, -1, 0, 0, 0 );  --横殴り　こぶしアップ　敵側    ef_005_r_f
setEffMoveKey( spep_5 + 0, sideways_blow_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 156, sideways_blow_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, sideways_blow_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 156, sideways_blow_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, sideways_blow_f, 0 );
setEffRotateKey( spep_5 + 156, sideways_blow_f, 0 );
setEffAlphaKey( spep_5 + 0, sideways_blow_f, 255 );
setEffAlphaKey( spep_5 + 156 -2, sideways_blow_f, 255 );
setEffAlphaKey( spep_5 + 156 -1, sideways_blow_f, 255 );
setEffAlphaKey( spep_5 + 156, sideways_blow_f, 0 );

sideways_blow_b = entryEffect( spep_5 + 0, SP_09r, 0x80, -1, 0, 0, 0 );  --横殴り　こぶしアップ　敵側    ef_005_r_b
setEffMoveKey( spep_5 + 0, sideways_blow_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 156, sideways_blow_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, sideways_blow_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 156, sideways_blow_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, sideways_blow_b, 0 );
setEffRotateKey( spep_5 + 156, sideways_blow_b, 0 );
setEffAlphaKey( spep_5 + 0, sideways_blow_b, 255 );
setEffAlphaKey( spep_5 + 156 -2, sideways_blow_b, 255 );
setEffAlphaKey( spep_5 + 156 -1, sideways_blow_b, 255 );
setEffAlphaKey( spep_5 + 156, sideways_blow_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 42, 1, 1 );
setDisp( spep_5 -3 + 84, 1, 0 );
setDisp( spep_5 -3 + 102, 1, 1 );
setDisp( spep_5 -3 + 159, 1, 0 );

changeAnime( spep_5 -3 + 42, 1, 108 );
changeAnime( spep_5 -3 + 110, 1, 106 );

setMoveKey( spep_5 -3 + 42, 1, 275.3, -33 , 0 );
setMoveKey( spep_5 -3 + 43, 1, 275.3, -33 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -18.3, -33 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 106.9, 9 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 133.7, -60.3 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 111.6, -37.2 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 170.6, -33 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 151.3, 9 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 175.4, -60.3 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 150.5, -37.2 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 206.7, -33 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 184.6, 9 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 205.9, -60.3 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 178.2, -37.2 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 231.7, -33 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 206.8, 9 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 225.3, -60.3 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 194.9, -37.2 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 245.6, -33 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 217.9, 9 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 233.6, -60.3 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 200.4, -37.2 , 0 );
setMoveKey( spep_5 -3 + 101, 1, 200.4, -37.2 , 0 );
setMoveKey( spep_5 -3 + 102, 1, -490.4, 326.1 , 0 );
setMoveKey( spep_5 -3 + 104, 1, -440, 293.7 , 0 );
setMoveKey( spep_5 -3 + 106, 1, -289, 196.1 , 0 );
setMoveKey( spep_5 -3 + 108, 1, -37.7, 33.1 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 42.5, 28.9 , 0 );
setMoveKey( spep_5 -3 + 112, 1, -45.6, 29.3 , 0 );
setMoveKey( spep_5 -3 + 114, 1, -1.6, 46.9 , 0 );
setMoveKey( spep_5 -3 + 116, 1, -1.6, 16.1 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 42.4, 29.3 , 0 );
setMoveKey( spep_5 -3 + 120, 1, -45.6, 29.3 , 0 );
setMoveKey( spep_5 -3 + 122, 1, -1.6, 46.9 , 0 );
setMoveKey( spep_5 -3 + 124, 1, -1.6, 36.1 , 0 );
setMoveKey( spep_5 -3 + 126, 1, -2, 28.4 , 0 );
setMoveKey( spep_5 -3 + 128, 1, -2.1, 28.3 , 0 );
setMoveKey( spep_5 -3 + 130, 1, -2.1, 28.2 , 0 );
setMoveKey( spep_5 -3 + 132, 1, -2.2, 28.1 , 0 );
setMoveKey( spep_5 -3 + 134, 1, -2.2, 28.1 , 0 );
setMoveKey( spep_5 -3 + 136, 1, -2.2, 28 , 0 );
setMoveKey( spep_5 -3 + 138, 1, -2.3, 28 , 0 );
setMoveKey( spep_5 -3 + 140, 1, -2.3, 27.9 , 0 );
setMoveKey( spep_5 -3 + 142, 1, -2.4, 27.9 , 0 );
setMoveKey( spep_5 -3 + 144, 1, -2.4, 27.8 , 0 );
setMoveKey( spep_5 -3 + 146, 1, -2.5, 27.8 , 0 );
setMoveKey( spep_5 -3 + 148, 1, -2.5, 27.7 , 0 );
setMoveKey( spep_5 -3 + 150, 1, -2.6, 27.6 , 0 );
setMoveKey( spep_5 -3 + 152, 1, -2.6, 27.6 , 0 );
setMoveKey( spep_5 -3 + 154, 1, -2.6, 27.4 , 0 );
setMoveKey( spep_5 -3 + 156, 1, -2.7, 27.4 , 0 );
setMoveKey( spep_5 -3 + 158, 1, -2.8, 27.4 , 0 );
setMoveKey( spep_5 -3 + 159, 1, -2.8, 27.4 , 0 );

setScaleKey( spep_5 -3 + 42, 1, 2.69, 2.69 );
setScaleKey( spep_5 -3 + 82, 1, 2.69, 2.69 );
setScaleKey( spep_5 -3 + 101, 1, 2.69, 2.69 );
setScaleKey( spep_5 -3 + 102, 1, 5.27, 5.27 );
setScaleKey( spep_5 -3 + 104, 1, 4.85, 4.85 );
setScaleKey( spep_5 -3 + 106, 1, 3.6, 3.6 );
setScaleKey( spep_5 -3 + 108, 1, 1.5, 1.5 );
setScaleKey( spep_5 -3 + 110, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 124, 1, 1.15, 1.15 );
setScaleKey( spep_5 -3 + 126, 1, 1.13, 1.13 );
setScaleKey( spep_5 -3 + 132, 1, 1.13, 1.13 );
setScaleKey( spep_5 -3 + 134, 1, 1.12, 1.12 );
setScaleKey( spep_5 -3 + 142, 1, 1.12, 1.12 );
setScaleKey( spep_5 -3 + 144, 1, 1.11, 1.11 );
setScaleKey( spep_5 -3 + 152, 1, 1.11, 1.11 );
setScaleKey( spep_5 -3 + 154, 1, 1.1, 1.1 );
setScaleKey( spep_5 -3 + 159, 1, 1.1, 1.1 );

setRotateKey( spep_5 -3 + 42, 1, 18.7 );
setRotateKey( spep_5 -3 + 82, 1, 18.7 );
setRotateKey( spep_5 -3 + 101, 1, 18.7 );
setRotateKey( spep_5 -3 + 102, 1, 14.9 );
setRotateKey( spep_5 -3 + 104, 1, 14.6 );
setRotateKey( spep_5 -3 + 106, 1, 13.8 );
setRotateKey( spep_5 -3 + 108, 1, 12.5 );
setRotateKey( spep_5 -3 + 109, 1, 12.5 );
setRotateKey( spep_5 -3 + 110, 1, -49.5 );
setRotateKey( spep_5 -3 + 112, 1, -52.3 );
setRotateKey( spep_5 -3 + 159, 1, -52.3 );

-- ** 音 ** --
--振りかぶる
SE021 = playSeVer2( spep_5 + 0, 8, "",spep_5 + 58, 0, 16, -1);  
SE022 = playSeVer2( spep_5 + 0, 1314, "",spep_5 + 58, 0, 16, -1);   

--横向きパンチ
SE023 = playSeVer2( spep_5 + 40, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 40, SE023, 79 );
SE024 = playSeVer2( spep_5 + 40, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 40, SE024, 79 );

--敵飛んでいく
SE025 = playSeVer2( spep_5 + 74, 1183, "",spep_5 + 136, 0, 20, -1);
setSeVolumeByWorkId( spep_5 + 74, SE025, 66 );
SE026 = playSeVer2( spep_5 + 74, 1121, "",spep_5 + 136, 0, 20, -1);
setSeVolumeByWorkId( spep_5 + 74, SE026, 72 );

--柱激突
SE027 = playSeVer2( spep_5 + 108, 1159, "",spep_5 + 234, 0, 70, -1); 

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 156, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 白フェード ** --

-- ** 次の準備 ** --
spep_6 = spep_5 + 156;


--------------------------------------
-- 殴り～フィニッシュ(212F)
--------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
last_f = entryEffect( spep_6 + 0, SP_10r, 0x100, -1, 0, 0, 0 );  --殴り～フィニッシュ　敵側    ef_006_r_f
setEffMoveKey( spep_6 + 0, last_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 210, last_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, last_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 210, last_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, last_f, 0 );
setEffRotateKey( spep_6 + 210, last_f, 0 );
setEffAlphaKey( spep_6 + 0, last_f, 255 );
setEffAlphaKey( spep_6 + 210 , last_f, 255 );

last_b = entryEffect( spep_6 + 0, SP_11r, 0x80, -1, 0, 0, 0 );  --殴り～フィニッシュ　敵側    ef_006_r_b
setEffMoveKey( spep_6 + 0, last_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 210, last_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, last_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 210, last_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, last_b, 0 );
setEffRotateKey( spep_6 + 210, last_b, 0 );
setEffAlphaKey( spep_6 + 0, last_b, 255 );
setEffAlphaKey( spep_6 + 210 , last_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 -3 + 48, 1, 1 );
setDisp( spep_6 -3 + 68, 1, 0 );

changeAnime( spep_6 -3 + 48, 1, 106 );

setMoveKey( spep_6 -3 + 48, 1, 3.9, 51.7 , 0 );
setMoveKey( spep_6 -3 + 68, 1, 3.9, 51.7 , 0 );

setScaleKey( spep_6 -3 + 48, 1, 1.12, 1.12 );
setScaleKey( spep_6 -3 + 68, 1, 1.12, 1.12 );

setRotateKey( spep_6 -3 + 48, 1, -52.3 );
setRotateKey( spep_6 -3 + 63, 1, -52.3 );
setRotateKey( spep_6 -3 + 64, 1, -54.5 );
setRotateKey( spep_6 -3 + 68, 1, -54.5 );

-- ** 音 ** --
--振りかぶる
SE028 = playSeVer2( spep_6 + 2, 1072, "",spep_6 + 16, 0, 0, -1);
setStartTimeMs( SE028,  233 );
SE029 = playSeVer2( spep_6 + 10, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE029,  83 );
SE030 = playSeVer2( spep_6 + 6, 1116, "",spep_6 + 52, 0, 22, -1);       

--追い討ちパンチ
SE031 = playSeVer2( spep_6 + 54, 1004, "", 0, 0, 0, -1);        
SE032 = playSeVer2( spep_6 + 63, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 63, SE032, 75 );  
SE033 = playSeVer2( spep_6 + 63, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 63, SE033, 82 );  
SE034 = playSeVer2( spep_6 + 63, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 63, SE034, 77 );  
SE035 = playSeVer2( spep_6 + 63, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 63, SE035, 77 );  

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 210, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 白フェード ** --

-- -- ** ダメージ表示 ** --
dealDamage( spep_6 + 98 ); -- ダメージ表示フレーム
endPhase( spep_6 + 200 ); -- 終了フレーム


end