--1026190:SSR人造人間17号&ヘルファイター17号_ヘルコンビネーション
--sp_effect_b4_00278

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
SP_01 = 161647;	--開幕〜カードカットインまで	ef_001
SP_02 = 161648;	--突進〜フィニッシュまで	ef_002
SP_03 = 161650;	--突進〜フィニッシュまで	ef_003

--敵側
SP_02r = 161649;	--突進〜フィニッシュまで	ef_002r
SP_03r = 161651;	--突進〜フィニッシュまで	ef_003r

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
-- 開幕〜カードカットインまで(134F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --開幕〜カードカットインまで	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 132, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 132, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 132, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 132 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 132, first_f, 0 );

-- ** 音 ** --
--炎
SE001 = playSeVer2( spep_0 + 0, 1268, "",spep_0 + 148, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 158 );
SE002 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 148, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 82 );

--入り
SE003 = playSeVer2( spep_0 + 0, 1188, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 81 );

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 14; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    
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

spep_x = spep_0 + 16;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 25, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 25, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 25, 515.5 , 0 );
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
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--炎飲まれる
SE005 = playSeVer2( spep_0 + 86, 1258, "",spep_0 + 156, 18, 26, -1);
setSeVolumeByWorkId( spep_0 + 86, SE005, 60 );
setStartTimeMs( SE005,  400 );
SE006 = playSeVer2( spep_0 + 82, 1014, "",spep_0 + 156, 20, 26, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 132 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 132;


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

--向かっていく
SE008 = playSeVer2( spep_1 + 84, 1182, "",spep_1 + 142, 0, 22, -1);
SE009 = playSeVer2( spep_1 + 84, 1117, "",spep_1 + 142, 0, 22, -1);
SE010 = playSeVer2( spep_1 + 84, 9, "",spep_1 + 142, 0, 22, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 突進〜フィニッシュまで(524F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --突進〜フィニッシュまで	ef_002
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 524, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 524, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 524, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 524, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --突進〜フィニッシュまで	ef_003
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 524, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 524, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 524, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 524, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -1 + 94, 1, 0 );
changeAnime( spep_2 + 0, 1, 117 );
changeAnime( spep_2 -1 + 30, 1, 5 );

setMoveKey( spep_2 + 0, 1, -22.9, 28.7 , 0 );
setMoveKey( spep_2 -1 + 4, 1, -22.9, 28.7 , 0 );
setMoveKey( spep_2 -1 + 5, 1, -22.9, 28.7 , 0 );
setMoveKey( spep_2 -1 + 6, 1, -23, 28.7 , 0 );
setMoveKey( spep_2 -1 + 12, 1, -23, 28.7 , 0 );
setMoveKey( spep_2 -1 + 13, 1, -23, 28.7 , 0 );
setMoveKey( spep_2 -1 + 14, 1, -23.1, 28.7 , 0 );
setMoveKey( spep_2 -1 + 15, 1, -23.1, 28.7 , 0 );
setMoveKey( spep_2 -1 + 16, 1, -23.1, 28.7 , 0 );
setMoveKey( spep_2 -1 + 17, 1, -23.1, 28.7 , 0 );
setMoveKey( spep_2 -1 + 18, 1, -23.2, 28.7 , 0 );
setMoveKey( spep_2 -1 + 19, 1, -23.2, 28.7 , 0 );
setMoveKey( spep_2 -1 + 20, 1, -23.2, 28.7 , 0 );
setMoveKey( spep_2 -1 + 21, 1, -23.2, 28.7 , 0 );
setMoveKey( spep_2 -1 + 22, 1, -23.4, 28.4 , 0 );
setMoveKey( spep_2 -1 + 23, 1, -23.4, 28.4 , 0 );
setMoveKey( spep_2 -1 + 24, 1, -23.5, 28.1 , 0 );
setMoveKey( spep_2 -1 + 25, 1, -23.5, 28.1 , 0 );
setMoveKey( spep_2 -1 + 26, 1, -23.7, 27.7 , 0 );
setMoveKey( spep_2 -1 + 29, 1, -23.9, 27.4 , 0 );
setMoveKey( spep_2 -1 + 30, 1, 54.3, -133.6 , 0 );
setMoveKey( spep_2 -1 + 31, 1, 54.3, -133.6 , 0 );
setMoveKey( spep_2 -1 + 32, 1, 69.3, -200.5 , 0 );
setMoveKey( spep_2 -1 + 33, 1, 69.3, -200.5 , 0 );
setMoveKey( spep_2 -1 + 34, 1, 54.7, -128.1 , 0 );
setMoveKey( spep_2 -1 + 35, 1, 54.7, -128.1 , 0 );
setMoveKey( spep_2 -1 + 36, 1, 40, -56.1 , 0 );
setMoveKey( spep_2 -1 + 37, 1, 40, -56.1 , 0 );
setMoveKey( spep_2 -1 + 38, 1, 65, -122.9 , 0 );
setMoveKey( spep_2 -1 + 39, 1, 65, -122.9 , 0 );
setMoveKey( spep_2 -1 + 40, 1, 45.8, 24 , 0 );
setMoveKey( spep_2 -1 + 41, 1, 45.8, 24 , 0 );
setMoveKey( spep_2 -1 + 42, 1, 45.8, 86.7 , 0 );
setMoveKey( spep_2 -1 + 43, 1, 45.8, 86.7 , 0 );
setMoveKey( spep_2 -1 + 44, 1, 58.2, 103.2 , 0 );
setMoveKey( spep_2 -1 + 45, 1, 58.2, 103.2 , 0 );
setMoveKey( spep_2 -1 + 46, 1, 49, 126.9 , 0 );
setMoveKey( spep_2 -1 + 47, 1, 49, 126.9 , 0 );
setMoveKey( spep_2 -1 + 48, 1, 60.5, 156.8 , 0 );
setMoveKey( spep_2 -1 + 49, 1, 60.5, 156.8 , 0 );
setMoveKey( spep_2 -1 + 50, 1, 52.1, 175.8 , 0 );
setMoveKey( spep_2 -1 + 51, 1, 52.1, 175.8 , 0 );
setMoveKey( spep_2 -1 + 52, 1, 63.8, 182.1 , 0 );
setMoveKey( spep_2 -1 + 53, 1, 63.8, 182.1 , 0 );
setMoveKey( spep_2 -1 + 54, 1, 63, 192 , 0 );
setMoveKey( spep_2 -1 + 55, 1, 63, 192 , 0 );
setMoveKey( spep_2 -1 + 56, 1, 57.6, 188.1 , 0 );
setMoveKey( spep_2 -1 + 57, 1, 57.6, 188.1 , 0 );
setMoveKey( spep_2 -1 + 58, 1, 57.6, 188.9 , 0 );
setMoveKey( spep_2 -1 + 59, 1, 57.6, 188.9 , 0 );
setMoveKey( spep_2 -1 + 60, 1, 57.6, 189.7 , 0 );
setMoveKey( spep_2 -1 + 62, 1, 57.7, 190.4 , 0 );
setMoveKey( spep_2 -1 + 64, 1, 57.7, 191.2 , 0 );
setMoveKey( spep_2 -1 + 66, 1, 57.7, 192 , 0 );
setMoveKey( spep_2 -1 + 68, 1, 57.8, 192.7 , 0 );
setMoveKey( spep_2 -1 + 69, 1, 57.8, 192.7 , 0 );
setMoveKey( spep_2 -1 + 70, 1, 53.6, 198.6 , 0 );
setMoveKey( spep_2 -1 + 71, 1, 53.6, 198.6 , 0 );
setMoveKey( spep_2 -1 + 72, 1, 64.2, 189.8 , 0 );
setMoveKey( spep_2 -1 + 73, 1, 64.2, 189.8 , 0 );
setMoveKey( spep_2 -1 + 74, 1, 57.9, 195 , 0 );
setMoveKey( spep_2 -1 + 76, 1, 57.9, 195.8 , 0 );
setMoveKey( spep_2 -1 + 78, 1, 58, 196.6 , 0 );
setMoveKey( spep_2 -1 + 80, 1, 58, 197.3 , 0 );
setMoveKey( spep_2 -1 + 82, 1, 58, 198.1 , 0 );
setMoveKey( spep_2 -1 + 84, 1, 58.1, 198.9 , 0 );
setMoveKey( spep_2 -1 + 86, 1, 58.1, 199.7 , 0 );
setMoveKey( spep_2 -1 + 88, 1, 58.2, 200.4 , 0 );
setMoveKey( spep_2 -1 + 90, 1, 58.2, 201.2 , 0 );
setMoveKey( spep_2 -1 + 93, 1, 58.3, 202 , 0 );
setMoveKey( spep_2 -1 + 94, 1, 58.3, 202 , 0 );

setScaleKey( spep_2 + 0, 1, 1.19, 1.19 );
setScaleKey( spep_2 -1 + 2, 1, 1.19, 1.19 );
setScaleKey( spep_2 -1 + 3, 1, 1.19, 1.19 );
setScaleKey( spep_2 -1 + 4, 1, 1.2, 1.2 );
setScaleKey( spep_2 -1 + 5, 1, 1.2, 1.2 );
setScaleKey( spep_2 -1 + 6, 1, 1.21, 1.21 );
setScaleKey( spep_2 -1 + 7, 1, 1.21, 1.21 );
setScaleKey( spep_2 -1 + 8, 1, 1.22, 1.22 );
setScaleKey( spep_2 -1 + 9, 1, 1.22, 1.22 );
setScaleKey( spep_2 -1 + 10, 1, 1.24, 1.24 );
setScaleKey( spep_2 -1 + 11, 1, 1.24, 1.24 );
setScaleKey( spep_2 -1 + 12, 1, 1.26, 1.26 );
setScaleKey( spep_2 -1 + 13, 1, 1.26, 1.26 );
setScaleKey( spep_2 -1 + 14, 1, 1.28, 1.28 );
setScaleKey( spep_2 -1 + 15, 1, 1.28, 1.28 );
setScaleKey( spep_2 -1 + 16, 1, 1.31, 1.31 );
setScaleKey( spep_2 -1 + 17, 1, 1.31, 1.31 );
setScaleKey( spep_2 -1 + 18, 1, 1.34, 1.34 );
setScaleKey( spep_2 -1 + 19, 1, 1.34, 1.34 );
setScaleKey( spep_2 -1 + 20, 1, 1.38, 1.38 );
setScaleKey( spep_2 -1 + 21, 1, 1.38, 1.38 );
setScaleKey( spep_2 -1 + 22, 1, 1.57, 1.57 );
setScaleKey( spep_2 -1 + 23, 1, 1.57, 1.57 );
setScaleKey( spep_2 -1 + 24, 1, 1.79, 1.79 );
setScaleKey( spep_2 -1 + 25, 1, 1.79, 1.79 );
setScaleKey( spep_2 -1 + 26, 1, 2.02, 2.02 );
setScaleKey( spep_2 -1 + 27, 1, 2.02, 2.02 );
setScaleKey( spep_2 -1 + 28, 1, 2.27, 2.27 );
setScaleKey( spep_2 -1 + 29, 1, 2.27, 2.27 );
setScaleKey( spep_2 -1 + 30, 1, 4.37, 4.37 );
setScaleKey( spep_2 -1 + 31, 1, 4.37, 4.37 );
setScaleKey( spep_2 -1 + 32, 1, 5.55, 5.55 );
setScaleKey( spep_2 -1 + 33, 1, 5.55, 5.55 );
setScaleKey( spep_2 -1 + 34, 1, 4.34, 4.34 );
setScaleKey( spep_2 -1 + 35, 1, 4.34, 4.34 );
setScaleKey( spep_2 -1 + 36, 1, 3.12, 3.12 );
setScaleKey( spep_2 -1 + 37, 1, 3.12, 3.12 );
setScaleKey( spep_2 -1 + 38, 1, 4.61, 4.61 );
setScaleKey( spep_2 -1 + 39, 1, 4.61, 4.61 );
setScaleKey( spep_2 -1 + 40, 1, 2.6, 2.6 );
setScaleKey( spep_2 -1 + 41, 1, 2.6, 2.6 );
setScaleKey( spep_2 -1 + 42, 1, 2.22, 2.22 );
setScaleKey( spep_2 -1 + 43, 1, 2.22, 2.22 );
setScaleKey( spep_2 -1 + 44, 1, 2.05, 2.05 );
setScaleKey( spep_2 -1 + 45, 1, 2.05, 2.05 );
setScaleKey( spep_2 -1 + 46, 1, 1.89, 1.89 );
setScaleKey( spep_2 -1 + 47, 1, 1.89, 1.89 );
setScaleKey( spep_2 -1 + 48, 1, 1.75, 1.75 );
setScaleKey( spep_2 -1 + 49, 1, 1.75, 1.75 );
setScaleKey( spep_2 -1 + 50, 1, 1.63, 1.63 );
setScaleKey( spep_2 -1 + 51, 1, 1.63, 1.63 );
setScaleKey( spep_2 -1 + 52, 1, 1.53, 1.53 );
setScaleKey( spep_2 -1 + 53, 1, 1.53, 1.53 );
setScaleKey( spep_2 -1 + 54, 1, 1.51, 1.51 );
setScaleKey( spep_2 -1 + 55, 1, 1.51, 1.51 );
setScaleKey( spep_2 -1 + 56, 1, 1.49, 1.49 );
setScaleKey( spep_2 -1 + 57, 1, 1.49, 1.49 );
setScaleKey( spep_2 -1 + 58, 1, 1.47, 1.47 );
setScaleKey( spep_2 -1 + 59, 1, 1.47, 1.47 );
setScaleKey( spep_2 -1 + 60, 1, 1.45, 1.45 );
setScaleKey( spep_2 -1 + 62, 1, 1.44, 1.44 );
setScaleKey( spep_2 -1 + 64, 1, 1.42, 1.42 );
setScaleKey( spep_2 -1 + 66, 1, 1.4, 1.4 );
setScaleKey( spep_2 -1 + 68, 1, 1.38, 1.38 );
setScaleKey( spep_2 -1 + 69, 1, 1.38, 1.38 );
setScaleKey( spep_2 -1 + 70, 1, 1.36, 1.36 );
setScaleKey( spep_2 -1 + 71, 1, 1.36, 1.36 );
setScaleKey( spep_2 -1 + 72, 1, 1.34, 1.34 );
setScaleKey( spep_2 -1 + 73, 1, 1.34, 1.34 );
setScaleKey( spep_2 -1 + 74, 1, 1.32, 1.32 );
setScaleKey( spep_2 -1 + 76, 1, 1.31, 1.31 );
setScaleKey( spep_2 -1 + 78, 1, 1.29, 1.29 );
setScaleKey( spep_2 -1 + 80, 1, 1.27, 1.27 );
setScaleKey( spep_2 -1 + 82, 1, 1.25, 1.25 );
setScaleKey( spep_2 -1 + 84, 1, 1.23, 1.23 );
setScaleKey( spep_2 -1 + 86, 1, 1.21, 1.21 );
setScaleKey( spep_2 -1 + 88, 1, 1.19, 1.19 );
setScaleKey( spep_2 -1 + 90, 1, 1.18, 1.18 );
setScaleKey( spep_2 -1 + 93, 1, 1.16, 1.16 );
setScaleKey( spep_2 -1 + 94, 1, 1.16, 1.16 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -1 + 29, 1, 0 );
setRotateKey( spep_2 -1 + 30, 1, 6.2 );
setRotateKey( spep_2 -1 + 32, 1, 6.2 );
setRotateKey( spep_2 -1 + 33, 1, 6.2 );
setRotateKey( spep_2 -1 + 34, 1, 6 );
setRotateKey( spep_2 -1 + 35, 1, 6 );
setRotateKey( spep_2 -1 + 36, 1, 5.8 );
setRotateKey( spep_2 -1 + 37, 1, 5.8 );
setRotateKey( spep_2 -1 + 38, 1, 5.4 );
setRotateKey( spep_2 -1 + 39, 1, 5.4 );
setRotateKey( spep_2 -1 + 40, 1, 1.6 );
setRotateKey( spep_2 -1 + 41, 1, 1.6 );
setRotateKey( spep_2 -1 + 42, 1, -1.5 );
setRotateKey( spep_2 -1 + 43, 1, -1.5 );
setRotateKey( spep_2 -1 + 44, 1, -2.8 );
setRotateKey( spep_2 -1 + 45, 1, -2.8 );
setRotateKey( spep_2 -1 + 46, 1, -4.1 );
setRotateKey( spep_2 -1 + 47, 1, -4.1 );
setRotateKey( spep_2 -1 + 48, 1, -5.2 );
setRotateKey( spep_2 -1 + 49, 1, -5.2 );
setRotateKey( spep_2 -1 + 50, 1, -6.2 );
setRotateKey( spep_2 -1 + 51, 1, -6.2 );
setRotateKey( spep_2 -1 + 52, 1, -7 );
setRotateKey( spep_2 -1 + 53, 1, -7 );
setRotateKey( spep_2 -1 + 54, 1, -7 );
setRotateKey( spep_2 -1 + 55, 1, -7 );
setRotateKey( spep_2 -1 + 56, 1, -7.1 );
setRotateKey( spep_2 -1 + 57, 1, -7.1 );
setRotateKey( spep_2 -1 + 58, 1, -7.1 );
setRotateKey( spep_2 -1 + 59, 1, -7.1 );
setRotateKey( spep_2 -1 + 60, 1, -7.2 );
setRotateKey( spep_2 -1 + 62, 1, -7.2 );
setRotateKey( spep_2 -1 + 64, 1, -7.3 );
setRotateKey( spep_2 -1 + 68, 1, -7.3 );
setRotateKey( spep_2 -1 + 69, 1, -7.3 );
setRotateKey( spep_2 -1 + 70, 1, -7.4 );
setRotateKey( spep_2 -1 + 71, 1, -7.4 );
setRotateKey( spep_2 -1 + 72, 1, -7.4 );
setRotateKey( spep_2 -1 + 73, 1, -7.4 );
setRotateKey( spep_2 -1 + 74, 1, -7.5 );
setRotateKey( spep_2 -1 + 78, 1, -7.5 );
setRotateKey( spep_2 -1 + 80, 1, -7.6 );
setRotateKey( spep_2 -1 + 82, 1, -7.6 );
setRotateKey( spep_2 -1 + 84, 1, -7.7 );
setRotateKey( spep_2 -1 + 88, 1, -7.7 );
setRotateKey( spep_2 -1 + 90, 1, -7.8 );
setRotateKey( spep_2 -1 + 94, 1, -7.8 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 136, 1, 1 );
setDisp( spep_2 -1 + 158, 1, 0 );
changeAnime( spep_2 -1 + 136, 1, 108 );

a1 = 30;
b1 = 60;
setMoveKey( spep_2 -1 + 136, 1, 207.1 +a1, 123.2 -b1 , 0 );
setMoveKey( spep_2 -1 + 137, 1, 207.1 +a1, 123.2 -b1 , 0 );
setMoveKey( spep_2 -1 + 138, 1, 391.2 +a1, 207.1 -b1 , 0 );
setMoveKey( spep_2 -1 + 139, 1, 391.2 +a1, 207.1 -b1 , 0 );
setMoveKey( spep_2 -1 + 140, 1, 166.7 +a1, 99.1 -b1 , 0 );
setMoveKey( spep_2 -1 + 141, 1, 166.7 +a1, 99.1 -b1 , 0 );
setMoveKey( spep_2 -1 + 142, 1, 218.6 +a1, 219.2 -b1 , 0 );
setMoveKey( spep_2 -1 + 143, 1, 218.6 +a1, 219.2 -b1 , 0 );
setMoveKey( spep_2 -1 + 144, 1, 168.3 +a1, 103 -b1 , 0 );
setMoveKey( spep_2 -1 + 145, 1, 168.3 +a1, 103 -b1 , 0 );
setMoveKey( spep_2 -1 + 146, 1, 163.2 +a1, 101.6 -b1 , 0 );
setMoveKey( spep_2 -1 + 147, 1, 163.2 +a1, 101.6 -b1 , 0 );
setMoveKey( spep_2 -1 + 148, 1, 191.3 +a1, 134.4 -b1 , 0 );
setMoveKey( spep_2 -1 + 149, 1, 191.3 +a1, 134.4 -b1 , 0 );
setMoveKey( spep_2 -1 + 150, 1, 281.7 +a1, 237.4 -b1 , 0 );
setMoveKey( spep_2 -1 + 152, 1, 415.4 +a1, 393.4 -b1 , 0 );
setMoveKey( spep_2 -1 + 154, 1, 553.3 +a1, 488.1 -b1 , 0 );
setMoveKey( spep_2 -1 + 156, 1, 673.4 +a1, 588.9 -b1 , 0 );
setMoveKey( spep_2 -1 + 158, 1, 673.4 +a1, 588.9 -b1 , 0 );

setScaleKey( spep_2 -1 + 136, 1, 4.646, 4.646 );
setScaleKey( spep_2 -1 + 137, 1, 4.646, 4.646 );
setScaleKey( spep_2 -1 + 138, 1, 8.1305, 8.1305 );
setScaleKey( spep_2 -1 + 139, 1, 8.1305, 8.1305 );
setScaleKey( spep_2 -1 + 140, 1, 3.9444999999999997, 3.9444999999999997 );
setScaleKey( spep_2 -1 + 141, 1, 3.9444999999999997, 3.9444999999999997 );
setScaleKey( spep_2 -1 + 142, 1, 5.106, 5.106 );
setScaleKey( spep_2 -1 + 143, 1, 5.106, 5.106 );
setScaleKey( spep_2 -1 + 144, 1, 4.186, 4.186 );
setScaleKey( spep_2 -1 + 145, 1, 4.186, 4.186 );
setScaleKey( spep_2 -1 + 146, 1, 4.162999999999999, 4.162999999999999 );
setScaleKey( spep_2 -1 + 147, 1, 4.162999999999999, 4.162999999999999 );
setScaleKey( spep_2 -1 + 148, 1, 4.14, 4.14 );
setScaleKey( spep_2 -1 + 149, 1, 4.14, 4.14 );
setScaleKey( spep_2 -1 + 150, 1, 4.117, 4.117 );
setScaleKey( spep_2 -1 + 151, 1, 4.117, 4.117 );
setScaleKey( spep_2 -1 + 152, 1, 4.093999999999999, 4.093999999999999 );
setScaleKey( spep_2 -1 + 154, 1, 4.071, 4.071 );
setScaleKey( spep_2 -1 + 156, 1, 4.0595, 4.0595 );
setScaleKey( spep_2 -1 + 158, 1, 4.0595, 4.0595 );

setRotateKey( spep_2 -1 + 136, 1, -47 );
setRotateKey( spep_2 -1 + 158, 1, -47 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 184, 1, 1 );
setDisp( spep_2 -1 + 240, 1, 0 );
changeAnime( spep_2 -1 + 184, 1, 106 );
changeAnime( spep_2 -1 + 208, 1, 107 );

setMoveKey( spep_2 -1 + 184, 1, -512.3, -142.3 , 0 );
setMoveKey( spep_2 -1 + 186, 1, -325.6, -62.8 , 0 );
setMoveKey( spep_2 -1 + 188, 1, -138.9, 16.6 , 0 );
setMoveKey( spep_2 -1 + 190, 1, -124.6, 21 , 0 );
setMoveKey( spep_2 -1 + 192, 1, -111.3, 25 , 0 );
setMoveKey( spep_2 -1 + 194, 1, -99.2, 28.7 , 0 );
setMoveKey( spep_2 -1 + 196, 1, -88.2, 32.1 , 0 );
setMoveKey( spep_2 -1 + 198, 1, -78.2, 35.1 , 0 );
setMoveKey( spep_2 -1 + 200, 1, -69.4, 37.8 , 0 );
setMoveKey( spep_2 -1 + 202, 1, -61.7, 40.2 , 0 );
setMoveKey( spep_2 -1 + 203, 1, -61.7, 40.2 , 0 );
setMoveKey( spep_2 -1 + 204, 1, -64.7, 49.6 , 0 );
setMoveKey( spep_2 -1 + 205, 1, -64.7, 49.6 , 0 );
setMoveKey( spep_2 -1 + 206, 1, -46.1, -9.1 , 0 );
setMoveKey( spep_2 -1 + 207, 1, -46.1, -9.1 , 0 );--
setMoveKey( spep_2 -1 + 208, 1, 112, -65.4 , 0 );
setMoveKey( spep_2 -1 + 209, 1, 112, -65.4 , 0 );
setMoveKey( spep_2 -1 + 210, 1, 25.4, 54.1 , 0 );
setMoveKey( spep_2 -1 + 211, 1, 25.4, 54.1 , 0 );
setMoveKey( spep_2 -1 + 212, 1, 105.2, -89 , 0 );
setMoveKey( spep_2 -1 + 213, 1, 105.2, -89 , 0 );
setMoveKey( spep_2 -1 + 214, 1, 21.8, 43.1 , 0 );
setMoveKey( spep_2 -1 + 215, 1, 21.8, 43.1 , 0 );
setMoveKey( spep_2 -1 + 216, 1, 33.9, 34.1 , 0 );
setMoveKey( spep_2 -1 + 217, 1, 33.9, 34.1 , 0 );
setMoveKey( spep_2 -1 + 218, 1, 14.4, 53.8 , 0 );
setMoveKey( spep_2 -1 + 219, 1, 14.4, 53.8 , 0 );
setMoveKey( spep_2 -1 + 220, 1, 39.6, 47.9 , 0 );
setMoveKey( spep_2 -1 + 221, 1, 39.6, 47.9 , 0 );
setMoveKey( spep_2 -1 + 222, 1, 21.4, 35.3 , 0 );
setMoveKey( spep_2 -1 + 223, 1, 21.4, 35.3 , 0 );
setMoveKey( spep_2 -1 + 224, 1, 42.7, 33.2 , 0 );
setMoveKey( spep_2 -1 + 225, 1, 42.7, 33.2 , 0 );
setMoveKey( spep_2 -1 + 226, 1, 24.7, 52.8 , 0 );
setMoveKey( spep_2 -1 + 227, 1, 24.7, 52.8 , 0 );
setMoveKey( spep_2 -1 + 228, 1, 51.4, 46.6 , 0 );
setMoveKey( spep_2 -1 + 229, 1, 51.4, 46.6 , 0 );
setMoveKey( spep_2 -1 + 230, 1, 42.4, 40.9 , 0 );
setMoveKey( spep_2 -1 + 232, 1, 154.6, 28.9 , 0 );
setMoveKey( spep_2 -1 + 234, 1, 268.9, 16.6 , 0 );
setMoveKey( spep_2 -1 + 236, 1, 385.3, 4.1 , 0 );
setMoveKey( spep_2 -1 + 238, 1, 503.8, -8.6 , 0 );
setMoveKey( spep_2 -1 + 240, 1, 503.8, -8.6 , 0 );

setScaleKey( spep_2 -1 + 184, 1, 2.132, 2.132 );
setScaleKey( spep_2 -1 + 202, 1, 2.132, 2.132 );
setScaleKey( spep_2 -1 + 203, 1, 2.132, 2.132 );
setScaleKey( spep_2 -1 + 204, 1, 2.509, 2.509 );
setScaleKey( spep_2 -1 + 205, 1, 2.509, 2.509 );
setScaleKey( spep_2 -1 + 206, 1, 3.445, 3.445 );
setScaleKey( spep_2 -1 + 207, 1, 3.445, 3.445 );--
setScaleKey( spep_2 -1 + 208, 1, 1.81, 1.81 );
setScaleKey( spep_2 -1 + 209, 1, 1.81, 1.81 );
setScaleKey( spep_2 -1 + 210, 1, 1.04, 1.04 );
setScaleKey( spep_2 -1 + 211, 1, 1.04, 1.04 );
setScaleKey( spep_2 -1 + 212, 1, 1.55, 1.55 );
setScaleKey( spep_2 -1 + 213, 1, 1.55, 1.55 );
setScaleKey( spep_2 -1 + 214, 1, 0.83, 0.83 );
setScaleKey( spep_2 -1 + 222, 1, 0.83, 0.83 );
setScaleKey( spep_2 -1 + 223, 1, 0.83, 0.83 );
setScaleKey( spep_2 -1 + 224, 1, 0.84, 0.84 );
setScaleKey( spep_2 -1 + 230, 1, 0.84, 0.84 );
setScaleKey( spep_2 -1 + 232, 1, 0.91, 0.91 );
setScaleKey( spep_2 -1 + 234, 1, 0.99, 0.99 );
setScaleKey( spep_2 -1 + 236, 1, 1.06, 1.06 );
setScaleKey( spep_2 -1 + 238, 1, 1.14, 1.14 );
setScaleKey( spep_2 -1 + 240, 1, 1.14, 1.14 );

setRotateKey( spep_2 -1 + 184, 1, -6 );
setRotateKey( spep_2 -1 + 207, 1, -6 );--
setRotateKey( spep_2 -1 + 208, 1, -2.3 );
setRotateKey( spep_2 -1 + 240, 1, -2.3 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 338, 1, 1 );
setDisp( spep_2 -1 + 386, 1, 0 );
changeAnime( spep_2 -1 + 338, 1, 106 );
changeAnime( spep_2 -1 + 360, 1, 108 );

setMoveKey( spep_2 -1 + 338, 1, -391, 256.2 , 0 );
setMoveKey( spep_2 -1 + 340, 1, -340.2, 232 , 0 );
setMoveKey( spep_2 -1 + 342, 1, -289.4, 207.9 , 0 );
setMoveKey( spep_2 -1 + 344, 1, -238.5, 183.7 , 0 );
setMoveKey( spep_2 -1 + 346, 1, -187.7, 159.5 , 0 );
setMoveKey( spep_2 -1 + 348, 1, -136.9, 135.4 , 0 );
setMoveKey( spep_2 -1 + 350, 1, -86, 111.2 , 0 );
setMoveKey( spep_2 -1 + 352, 1, -35.2, 87 , 0 );
setMoveKey( spep_2 -1 + 354, 1, 15.6, 62.8 , 0 );
setMoveKey( spep_2 -1 + 356, 1, 66.5, 38.7 , 0 );
setMoveKey( spep_2 -1 + 358, 1, 117.3, 14.5 , 0 );
setMoveKey( spep_2 -1 + 359, 1, 117.3, 14.5 , 0 );--
setMoveKey( spep_2 -1 + 360, 1, 67.2, 26 , 0 );
setMoveKey( spep_2 -1 + 361, 1, 67.2, 26 , 0 );
setMoveKey( spep_2 -1 + 362, 1, 127.6, 51.7 , 0 );
setMoveKey( spep_2 -1 + 363, 1, 127.6, 51.7 , 0 );
setMoveKey( spep_2 -1 + 364, 1, 67.8, 0.4 , 0 );
setMoveKey( spep_2 -1 + 365, 1, 67.8, 0.4 , 0 );
setMoveKey( spep_2 -1 + 366, 1, 199.3, 53.4 , 0 );
setMoveKey( spep_2 -1 + 367, 1, 199.3, 53.4 , 0 );
setMoveKey( spep_2 -1 + 368, 1, 60.5, 0.3 , 0 );
setMoveKey( spep_2 -1 + 369, 1, 60.5, 0.3 , 0 );
setMoveKey( spep_2 -1 + 370, 1, 72, -6.7 , 0 );
setMoveKey( spep_2 -1 + 371, 1, 72, -6.7 , 0 );
setMoveKey( spep_2 -1 + 372, 1, 60.3, 5.6 , 0 );
setMoveKey( spep_2 -1 + 373, 1, 60.3, 5.6 , 0 );
setMoveKey( spep_2 -1 + 374, 1, 76.6, 5.1 , 0 );
setMoveKey( spep_2 -1 + 375, 1, 76.6, 5.1 , 0 );
setMoveKey( spep_2 -1 + 376, 1, 66.1, -4.9 , 0 );
setMoveKey( spep_2 -1 + 377, 1, 66.1, -4.9 , 0 );
setMoveKey( spep_2 -1 + 378, 1, 205.8, -6.7 , 0 );
setMoveKey( spep_2 -1 + 380, 1, 315.3, 5.6 , 0 );
setMoveKey( spep_2 -1 + 382, 1, 446.2, 0.3 , 0 );
setMoveKey( spep_2 -1 + 384, 1, 577.1, 5.1 , 0 );
setMoveKey( spep_2 -1 + 386, 1, 577.1, 5.1 , 0 );

setScaleKey( spep_2 -1 + 338, 1, 1.656, 1.656 );
setScaleKey( spep_2 -1 + 359, 1, 1.656, 1.656 );--
setScaleKey( spep_2 -1 + 360, 1, 3.42, 3.42 );
setScaleKey( spep_2 -1 + 361, 1, 3.42, 3.42 );
setScaleKey( spep_2 -1 + 362, 1, 4.88, 4.88 );
setScaleKey( spep_2 -1 + 363, 1, 4.88, 4.88 );
setScaleKey( spep_2 -1 + 364, 1, 2.44, 2.44 );
setScaleKey( spep_2 -1 + 365, 1, 2.44, 2.44 );
setScaleKey( spep_2 -1 + 366, 1, 4.27, 4.27 );
setScaleKey( spep_2 -1 + 367, 1, 4.27, 4.27 );
setScaleKey( spep_2 -1 + 368, 1, 1.95, 1.95 );
setScaleKey( spep_2 -1 + 386, 1, 1.95, 1.95 );

setRotateKey( spep_2 -1 + 338, 1, -8.7 );
setRotateKey( spep_2 -1 + 359, 1, -8.7 );--
setRotateKey( spep_2 -1 + 360, 1, -14 );
setRotateKey( spep_2 -1 + 386, 1, -14 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 406, 1, 1 );
setDisp( spep_2 -1 + 525, 1, 0 );
changeAnime( spep_2 -1 + 406, 1, 5 );

a4 =30;
setMoveKey( spep_2 -1 + 406, 1, -174.2 -a4, -336.6 , 0 );
setMoveKey( spep_2 -1 + 408, 1, -113.4 -a4, -279.2 , 0 );
setMoveKey( spep_2 -1 + 410, 1, -26.5 -a4, -250.8 , 0 );
setMoveKey( spep_2 -1 + 412, 1, 43.3 -a4, -187.5 , 0 );
setMoveKey( spep_2 -1 + 414, 1, 95 -a4, -159.5 , 0 );
setMoveKey( spep_2 -1 + 416, 1, 169.5 -a4, -104.7 , 0 );
setMoveKey( spep_2 -1 + 418, 1, 184.1 -a4, -100.2 , 0 );
setMoveKey( spep_2 -1 + 420, 1, 188.7 -a4, -86.6 , 0 );
setMoveKey( spep_2 -1 + 422, 1, 198.2 -a4, -85.6 , 0 );
setMoveKey( spep_2 -1 + 424, 1, 213.2 -a4, -74.9 , 0 );
setMoveKey( spep_2 -1 + 426, 1, 220.2 -a4, -75.6 , 0 );
setMoveKey( spep_2 -1 + 428, 1, 220.8 -a4, -64.7 , 0 );
setMoveKey( spep_2 -1 + 430, 1, 226 -a4, -66.4 , 0 );
setMoveKey( spep_2 -1 + 432, 1, 236.9 -a4, -58.2 , 0 );
setMoveKey( spep_2 -1 + 434, 1, 237 -a4, -63.2 , 0 );
setMoveKey( spep_2 -1 + 436, 1, 231.6 -a4, -55.8 , 0 );
setMoveKey( spep_2 -1 + 438, 1, 231.9 -a4, -60.5 , 0 );
setMoveKey( spep_2 -1 + 440, 1, 238.8 -a4, -54.7 , 0 );
setMoveKey( spep_2 -1 + 442, 1, 238.7 -a4, -59.9 , 0 );
setMoveKey( spep_2 -1 + 444, 1, 233.1 -a4, -52.8 , 0 );
setMoveKey( spep_2 -1 + 446, 1, 233.2 -a4, -57.7 , 0 );
setMoveKey( spep_2 -1 + 448, 1, 240 -a4, -52.2 , 0 );
setMoveKey( spep_2 -1 + 450, 1, 239.7 -a4, -57.6 , 0 );
setMoveKey( spep_2 -1 + 452, 1, 234.1 -a4, -50.9 , 0 );
setMoveKey( spep_2 -1 + 454, 1, 234.1 -a4, -55.9 , 0 );
setMoveKey( spep_2 -1 + 456, 1, 240.7 -a4, -50.7 , 0 );
setMoveKey( spep_2 -1 + 458, 1, 240.4 -a4, -56.3 , 0 );
setMoveKey( spep_2 -1 + 460, 1, 234.6 -a4, -49.9 , 0 );
setMoveKey( spep_2 -1 + 462, 1, 234.4 -a4, -55.2 , 0 );
setMoveKey( spep_2 -1 + 464, 1, 240.8 -a4, -50.3 , 0 );
setMoveKey( spep_2 -1 + 466, 1, 240.4 -a4, -56.1 , 0 );
setMoveKey( spep_2 -1 + 468, 1, 234.6 -a4, -49.7 , 0 );
setMoveKey( spep_2 -1 + 470, 1, 234.4 -a4, -55.1 , 0 );
setMoveKey( spep_2 -1 + 472, 1, 240.8 -a4, -50.2 , 0 );
setMoveKey( spep_2 -1 + 474, 1, 240.4 -a4, -56.1 , 0 );
setMoveKey( spep_2 -1 + 476, 1, 234.6 -a4, -49.7 , 0 );
setMoveKey( spep_2 -1 + 478, 1, 235.8 -a4, -54.5 , 0 );
setMoveKey( spep_2 -1 + 480, 1, 239.4 -a4, -50.8 , 0 );
setMoveKey( spep_2 -1 + 482, 1, 239.8 -a4, -55.4 , 0 );
setMoveKey( spep_2 -1 + 484, 1, 237.6 -a4, -52.8 , 0 );
setMoveKey( spep_2 -1 + 486, 1, 235.7 -a4, -54.5 , 0 );
setMoveKey( spep_2 -1 + 488, 1, 239.4 -a4, -50.8 , 0 );
setMoveKey( spep_2 -1 + 490, 1, 239.8 -a4, -55.4 , 0 );
setMoveKey( spep_2 -1 + 492, 1, 237.6 -a4, -52.8 , 0 );
setMoveKey( spep_2 -1 + 494, 1, 235.7 -a4, -54.5 , 0 );
setMoveKey( spep_2 -1 + 496, 1, 239.4 -a4, -50.8 , 0 );
setMoveKey( spep_2 -1 + 498, 1, 239.8 -a4, -55.4 , 0 );
setMoveKey( spep_2 -1 + 500, 1, 237.6 -a4, -52.8 , 0 );
setMoveKey( spep_2 -1 + 502, 1, 235.7 -a4, -54.5 , 0 );
setMoveKey( spep_2 -1 + 504, 1, 239.4 -a4, -50.8 , 0 );
setMoveKey( spep_2 -1 + 506, 1, 239.8 -a4, -55.4 , 0 );
setMoveKey( spep_2 -1 + 508, 1, 237.6 -a4, -52.8 , 0 );
setMoveKey( spep_2 -1 + 510, 1, 239.4 -a4, -50.8 , 0 );
setMoveKey( spep_2 -1 + 512, 1, 239.8 -a4, -55.4 , 0 );
setMoveKey( spep_2 -1 + 514, 1, 237.6 -a4, -52.8 , 0 );
setMoveKey( spep_2 -1 + 516, 1, 235.8 -a4, -54.5 , 0 );
setMoveKey( spep_2 -1 + 518, 1, 239.4 -a4, -50.8 , 0 );
setMoveKey( spep_2 -1 + 520, 1, 239.8 -a4, -55.4 , 0 );
setMoveKey( spep_2 -1 + 522, 1, 237.6 -a4, -52.8 , 0 );
setMoveKey( spep_2 -1 + 524, 1, 237.6 -a4, -52.7 , 0 );
setMoveKey( spep_2 -1 + 525, 1, 237.6 -a4, -52.7 , 0 );

setScaleKey( spep_2 -1 + 406, 1, 1.55, 1.55 );
setScaleKey( spep_2 -1 + 408, 1, 1.34, 1.34 );
setScaleKey( spep_2 -1 + 410, 1, 1.14, 1.14 );
setScaleKey( spep_2 -1 + 412, 1, 0.94, 0.94 );
setScaleKey( spep_2 -1 + 414, 1, 0.74, 0.74 );
setScaleKey( spep_2 -1 + 416, 1, 0.54, 0.54 );
setScaleKey( spep_2 -1 + 418, 1, 0.51, 0.51 );
setScaleKey( spep_2 -1 + 420, 1, 0.48, 0.48 );
setScaleKey( spep_2 -1 + 422, 1, 0.45, 0.45 );
setScaleKey( spep_2 -1 + 424, 1, 0.42, 0.42 );
setScaleKey( spep_2 -1 + 426, 1, 0.4, 0.4 );
setScaleKey( spep_2 -1 + 428, 1, 0.38, 0.38 );
setScaleKey( spep_2 -1 + 430, 1, 0.36, 0.36 );
setScaleKey( spep_2 -1 + 432, 1, 0.35, 0.35 );
setScaleKey( spep_2 -1 + 434, 1, 0.34, 0.34 );
setScaleKey( spep_2 -1 + 436, 1, 0.34, 0.34 );
setScaleKey( spep_2 -1 + 438, 1, 0.33, 0.33 );
setScaleKey( spep_2 -1 + 442, 1, 0.33, 0.33 );
setScaleKey( spep_2 -1 + 444, 1, 0.32, 0.32 );
setScaleKey( spep_2 -1 + 448, 1, 0.32, 0.32 );
setScaleKey( spep_2 -1 + 450, 1, 0.31, 0.31 );
setScaleKey( spep_2 -1 + 525, 1, 0.31, 0.31 );

r2 = 41;
setRotateKey( spep_2 -1 + 406, 1, 95.7 -r2 );
setRotateKey( spep_2 -1 + 408, 1, 95.7 -r2 );
setRotateKey( spep_2 -1 + 410, 1, 95.6 -r2 );
setRotateKey( spep_2 -1 + 525, 1, 95.6 -r2 );

-- ** 音 ** --
--殴る
SE011 = playSeVer2( spep_2 + 22, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 22, 1010, "", 0, 0, 0, -1);

--右側から向かっていく
SE013 = playSeVer2( spep_2 + 62, 1117, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 62, 1277, "", 0, 0, 0, -1);

--振りかぶる
SE015 = playSeVer2( spep_2 + 88, 1116, "",spep_2 + 128, 0, 14, -1);
SE016 = playSeVer2( spep_2 + 106, 1004, "", 0, 0, 0, -1);

--裏拳
SE017 = playSeVer2( spep_2 + 128, 1187, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 130, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE019 = playSeVer2( spep_2 + 138, 1121, "",spep_2 + 234, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 138, SE019, 74 );

--蹴り飛ばす
SE020 = playSeVer2( spep_2 + 192, 1003, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 202, 1187, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 204, 1153, "", 0, 0, 0, -1);

--構える
SE023 = playSeVer2( spep_2 + 260, 1013, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 260, 1189, "", 0, 0, 0, -1);

--向かってくる
SE025 = playSeVer2( spep_2 + 292, 1182, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 292, 9, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 292, 1117, "", 0, 0, 0, -1);

--タックル
SE028 = playSeVer2( spep_2 + 354, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 354, SE028, 89 );
SE029 = playSeVer2( spep_2 + 354, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 354, SE029, 79 );
SE030 = playSeVer2( spep_2 + 354, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 354, SE030, 72 );

--敵ひきづられ飛んでいく
SE031 = playSeVer2( spep_2 + 398, 1159, "",spep_2 + 516, 14, 44, -1);
SE032 = playSeVer2( spep_2 + 398, 1044, "",spep_2 + 516, 0, 66, -1);
setSeVolumeByWorkId( spep_2 + 398, SE032, 174 );
SE033 = playSeVer2( spep_2 + 398, 1168, "",spep_2 + 516, 0, 66, -1);
setSeVolumeByWorkId( spep_2 + 398, SE033, 129 );
SE034 = playSeVer2( spep_2 + 404, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 404, SE034, 141 );
SE035 = playSeVer2( spep_2 + 408, 1011, "", 0, 18, 0, -1);
SE036 = playSeVer2( spep_2 + 414, 1197, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 426, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 426, SE037, 81 );
SE038 = playSeVer2( spep_2 + 436, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 436, SE038, 63 );
SE039 = playSeVer2( spep_2 + 446, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 446, SE039, 52 );
SE040 = playSeVer2( spep_2 + 456, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 456, SE040, 46 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 524 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 406 );
endPhase( spep_2 + 514 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕〜カードカットインまで(134F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --開幕〜カードカットインまで    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 132, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 132, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 132, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 132 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 132, first_f, 0 );

-- ** 音 ** --
--炎
SE001 = playSeVer2( spep_0 + 0, 1268, "",spep_0 + 148, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 158 );
SE002 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 148, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 82 );

--入り
SE003 = playSeVer2( spep_0 + 0, 1188, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 81 );

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 14; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    
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

spep_x = spep_0 + 16;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 25, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 25, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 25, 515.5 , 0 );
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
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--炎飲まれる
SE005 = playSeVer2( spep_0 + 86, 1258, "",spep_0 + 156, 18, 26, -1);
setSeVolumeByWorkId( spep_0 + 86, SE005, 60 );
setStartTimeMs( SE005,  400 );
SE006 = playSeVer2( spep_0 + 82, 1014, "",spep_0 + 156, 20, 26, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 132 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 132;


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

--向かっていく
SE008 = playSeVer2( spep_1 + 84, 1182, "",spep_1 + 142, 0, 22, -1);
SE009 = playSeVer2( spep_1 + 84, 1117, "",spep_1 + 142, 0, 22, -1);
SE010 = playSeVer2( spep_1 + 84, 9, "",spep_1 + 142, 0, 22, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 突進〜フィニッシュまで(524F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --突進〜フィニッシュまで ef_002
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 524, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 524, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 524, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 524, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --突進〜フィニッシュまで  ef_003
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 524, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 524, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 524, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 524, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -1 + 94, 1, 0 );
changeAnime( spep_2 + 0, 1, 17 );
changeAnime( spep_2 -1 + 30, 1, 105 );

setMoveKey( spep_2 + 0, 1, 22.9, 28.7 , 0 );
setMoveKey( spep_2 -1 + 4, 1, 22.9, 28.7 , 0 );
setMoveKey( spep_2 -1 + 5, 1, 22.9, 28.7 , 0 );
setMoveKey( spep_2 -1 + 6, 1, 23, 28.7 , 0 );
setMoveKey( spep_2 -1 + 12, 1, 23, 28.7 , 0 );
setMoveKey( spep_2 -1 + 13, 1, 23, 28.7 , 0 );
setMoveKey( spep_2 -1 + 14, 1, 23.1, 28.7 , 0 );
setMoveKey( spep_2 -1 + 15, 1, 23.1, 28.7 , 0 );
setMoveKey( spep_2 -1 + 16, 1, 23.1, 28.7 , 0 );
setMoveKey( spep_2 -1 + 17, 1, 23.1, 28.7 , 0 );
setMoveKey( spep_2 -1 + 18, 1, 23.2, 28.7 , 0 );
setMoveKey( spep_2 -1 + 19, 1, 23.2, 28.7 , 0 );
setMoveKey( spep_2 -1 + 20, 1, 23.2, 28.7 , 0 );
setMoveKey( spep_2 -1 + 21, 1, 23.2, 28.7 , 0 );
setMoveKey( spep_2 -1 + 22, 1, 23.4, 28.4 , 0 );
setMoveKey( spep_2 -1 + 23, 1, 23.4, 28.4 , 0 );
setMoveKey( spep_2 -1 + 24, 1, 23.5, 28.1 , 0 );
setMoveKey( spep_2 -1 + 25, 1, 23.5, 28.1 , 0 );
setMoveKey( spep_2 -1 + 26, 1, 23.7, 27.7 , 0 );
setMoveKey( spep_2 -1 + 29, 1, 23.9, 27.4 , 0 );
setMoveKey( spep_2 -1 + 30, 1, -54.3, -133.6 , 0 );
setMoveKey( spep_2 -1 + 31, 1, -54.3, -133.6 , 0 );
setMoveKey( spep_2 -1 + 32, 1, -69.3, -200.5 , 0 );
setMoveKey( spep_2 -1 + 33, 1, -69.3, -200.5 , 0 );
setMoveKey( spep_2 -1 + 34, 1, -54.7, -128.1 , 0 );
setMoveKey( spep_2 -1 + 35, 1, -54.7, -128.1 , 0 );
setMoveKey( spep_2 -1 + 36, 1, -40, -56.1 , 0 );
setMoveKey( spep_2 -1 + 37, 1, -40, -56.1 , 0 );
setMoveKey( spep_2 -1 + 38, 1, -65, -122.9 , 0 );
setMoveKey( spep_2 -1 + 39, 1, -65, -122.9 , 0 );
setMoveKey( spep_2 -1 + 40, 1, -45.8, 24 , 0 );
setMoveKey( spep_2 -1 + 41, 1, -45.8, 24 , 0 );
setMoveKey( spep_2 -1 + 42, 1, -45.8, 86.7 , 0 );
setMoveKey( spep_2 -1 + 43, 1, -45.8, 86.7 , 0 );
setMoveKey( spep_2 -1 + 44, 1, -58.2, 103.2 , 0 );
setMoveKey( spep_2 -1 + 45, 1, -58.2, 103.2 , 0 );
setMoveKey( spep_2 -1 + 46, 1, -49, 126.9 , 0 );
setMoveKey( spep_2 -1 + 47, 1, -49, 126.9 , 0 );
setMoveKey( spep_2 -1 + 48, 1, -60.5, 156.8 , 0 );
setMoveKey( spep_2 -1 + 49, 1, -60.5, 156.8 , 0 );
setMoveKey( spep_2 -1 + 50, 1, -52.1, 175.8 , 0 );
setMoveKey( spep_2 -1 + 51, 1, -52.1, 175.8 , 0 );
setMoveKey( spep_2 -1 + 52, 1, -63.8, 182.1 , 0 );
setMoveKey( spep_2 -1 + 53, 1, -63.8, 182.1 , 0 );
setMoveKey( spep_2 -1 + 54, 1, -63, 192 , 0 );
setMoveKey( spep_2 -1 + 55, 1, -63, 192 , 0 );
setMoveKey( spep_2 -1 + 56, 1, -57.6, 188.1 , 0 );
setMoveKey( spep_2 -1 + 57, 1, -57.6, 188.1 , 0 );
setMoveKey( spep_2 -1 + 58, 1, -57.6, 188.9 , 0 );
setMoveKey( spep_2 -1 + 59, 1, -57.6, 188.9 , 0 );
setMoveKey( spep_2 -1 + 60, 1, -57.6, 189.7 , 0 );
setMoveKey( spep_2 -1 + 62, 1, -57.7, 190.4 , 0 );
setMoveKey( spep_2 -1 + 64, 1, -57.7, 191.2 , 0 );
setMoveKey( spep_2 -1 + 66, 1, -57.7, 192 , 0 );
setMoveKey( spep_2 -1 + 68, 1, -57.8, 192.7 , 0 );
setMoveKey( spep_2 -1 + 69, 1, -57.8, 192.7 , 0 );
setMoveKey( spep_2 -1 + 70, 1, -53.6, 198.6 , 0 );
setMoveKey( spep_2 -1 + 71, 1, -53.6, 198.6 , 0 );
setMoveKey( spep_2 -1 + 72, 1, -64.2, 189.8 , 0 );
setMoveKey( spep_2 -1 + 73, 1, -64.2, 189.8 , 0 );
setMoveKey( spep_2 -1 + 74, 1, -57.9, 195 , 0 );
setMoveKey( spep_2 -1 + 76, 1, -57.9, 195.8 , 0 );
setMoveKey( spep_2 -1 + 78, 1, -58, 196.6 , 0 );
setMoveKey( spep_2 -1 + 80, 1, -58, 197.3 , 0 );
setMoveKey( spep_2 -1 + 82, 1, -58, 198.1 , 0 );
setMoveKey( spep_2 -1 + 84, 1, -58.1, 198.9 , 0 );
setMoveKey( spep_2 -1 + 86, 1, -58.1, 199.7 , 0 );
setMoveKey( spep_2 -1 + 88, 1, -58.2, 200.4 , 0 );
setMoveKey( spep_2 -1 + 90, 1, -58.2, 201.2 , 0 );
setMoveKey( spep_2 -1 + 93, 1, -58.3, 202 , 0 );
setMoveKey( spep_2 -1 + 94, 1, -58.3, 202 , 0 );

setScaleKey( spep_2 + 0, 1, 1.19, 1.19 );
setScaleKey( spep_2 -1 + 2, 1, 1.19, 1.19 );
setScaleKey( spep_2 -1 + 3, 1, 1.19, 1.19 );
setScaleKey( spep_2 -1 + 4, 1, 1.2, 1.2 );
setScaleKey( spep_2 -1 + 5, 1, 1.2, 1.2 );
setScaleKey( spep_2 -1 + 6, 1, 1.21, 1.21 );
setScaleKey( spep_2 -1 + 7, 1, 1.21, 1.21 );
setScaleKey( spep_2 -1 + 8, 1, 1.22, 1.22 );
setScaleKey( spep_2 -1 + 9, 1, 1.22, 1.22 );
setScaleKey( spep_2 -1 + 10, 1, 1.24, 1.24 );
setScaleKey( spep_2 -1 + 11, 1, 1.24, 1.24 );
setScaleKey( spep_2 -1 + 12, 1, 1.26, 1.26 );
setScaleKey( spep_2 -1 + 13, 1, 1.26, 1.26 );
setScaleKey( spep_2 -1 + 14, 1, 1.28, 1.28 );
setScaleKey( spep_2 -1 + 15, 1, 1.28, 1.28 );
setScaleKey( spep_2 -1 + 16, 1, 1.31, 1.31 );
setScaleKey( spep_2 -1 + 17, 1, 1.31, 1.31 );
setScaleKey( spep_2 -1 + 18, 1, 1.34, 1.34 );
setScaleKey( spep_2 -1 + 19, 1, 1.34, 1.34 );
setScaleKey( spep_2 -1 + 20, 1, 1.38, 1.38 );
setScaleKey( spep_2 -1 + 21, 1, 1.38, 1.38 );
setScaleKey( spep_2 -1 + 22, 1, 1.57, 1.57 );
setScaleKey( spep_2 -1 + 23, 1, 1.57, 1.57 );
setScaleKey( spep_2 -1 + 24, 1, 1.79, 1.79 );
setScaleKey( spep_2 -1 + 25, 1, 1.79, 1.79 );
setScaleKey( spep_2 -1 + 26, 1, 2.02, 2.02 );
setScaleKey( spep_2 -1 + 27, 1, 2.02, 2.02 );
setScaleKey( spep_2 -1 + 28, 1, 2.27, 2.27 );
setScaleKey( spep_2 -1 + 29, 1, 2.27, 2.27 );
setScaleKey( spep_2 -1 + 30, 1, 4.37, 4.37 );
setScaleKey( spep_2 -1 + 31, 1, 4.37, 4.37 );
setScaleKey( spep_2 -1 + 32, 1, 5.55, 5.55 );
setScaleKey( spep_2 -1 + 33, 1, 5.55, 5.55 );
setScaleKey( spep_2 -1 + 34, 1, 4.34, 4.34 );
setScaleKey( spep_2 -1 + 35, 1, 4.34, 4.34 );
setScaleKey( spep_2 -1 + 36, 1, 3.12, 3.12 );
setScaleKey( spep_2 -1 + 37, 1, 3.12, 3.12 );
setScaleKey( spep_2 -1 + 38, 1, 4.61, 4.61 );
setScaleKey( spep_2 -1 + 39, 1, 4.61, 4.61 );
setScaleKey( spep_2 -1 + 40, 1, 2.6, 2.6 );
setScaleKey( spep_2 -1 + 41, 1, 2.6, 2.6 );
setScaleKey( spep_2 -1 + 42, 1, 2.22, 2.22 );
setScaleKey( spep_2 -1 + 43, 1, 2.22, 2.22 );
setScaleKey( spep_2 -1 + 44, 1, 2.05, 2.05 );
setScaleKey( spep_2 -1 + 45, 1, 2.05, 2.05 );
setScaleKey( spep_2 -1 + 46, 1, 1.89, 1.89 );
setScaleKey( spep_2 -1 + 47, 1, 1.89, 1.89 );
setScaleKey( spep_2 -1 + 48, 1, 1.75, 1.75 );
setScaleKey( spep_2 -1 + 49, 1, 1.75, 1.75 );
setScaleKey( spep_2 -1 + 50, 1, 1.63, 1.63 );
setScaleKey( spep_2 -1 + 51, 1, 1.63, 1.63 );
setScaleKey( spep_2 -1 + 52, 1, 1.53, 1.53 );
setScaleKey( spep_2 -1 + 53, 1, 1.53, 1.53 );
setScaleKey( spep_2 -1 + 54, 1, 1.51, 1.51 );
setScaleKey( spep_2 -1 + 55, 1, 1.51, 1.51 );
setScaleKey( spep_2 -1 + 56, 1, 1.49, 1.49 );
setScaleKey( spep_2 -1 + 57, 1, 1.49, 1.49 );
setScaleKey( spep_2 -1 + 58, 1, 1.47, 1.47 );
setScaleKey( spep_2 -1 + 59, 1, 1.47, 1.47 );
setScaleKey( spep_2 -1 + 60, 1, 1.45, 1.45 );
setScaleKey( spep_2 -1 + 62, 1, 1.44, 1.44 );
setScaleKey( spep_2 -1 + 64, 1, 1.42, 1.42 );
setScaleKey( spep_2 -1 + 66, 1, 1.4, 1.4 );
setScaleKey( spep_2 -1 + 68, 1, 1.38, 1.38 );
setScaleKey( spep_2 -1 + 69, 1, 1.38, 1.38 );
setScaleKey( spep_2 -1 + 70, 1, 1.36, 1.36 );
setScaleKey( spep_2 -1 + 71, 1, 1.36, 1.36 );
setScaleKey( spep_2 -1 + 72, 1, 1.34, 1.34 );
setScaleKey( spep_2 -1 + 73, 1, 1.34, 1.34 );
setScaleKey( spep_2 -1 + 74, 1, 1.32, 1.32 );
setScaleKey( spep_2 -1 + 76, 1, 1.31, 1.31 );
setScaleKey( spep_2 -1 + 78, 1, 1.29, 1.29 );
setScaleKey( spep_2 -1 + 80, 1, 1.27, 1.27 );
setScaleKey( spep_2 -1 + 82, 1, 1.25, 1.25 );
setScaleKey( spep_2 -1 + 84, 1, 1.23, 1.23 );
setScaleKey( spep_2 -1 + 86, 1, 1.21, 1.21 );
setScaleKey( spep_2 -1 + 88, 1, 1.19, 1.19 );
setScaleKey( spep_2 -1 + 90, 1, 1.18, 1.18 );
setScaleKey( spep_2 -1 + 93, 1, 1.16, 1.16 );
setScaleKey( spep_2 -1 + 94, 1, 1.16, 1.16 );

setRotateKey( spep_2 + 0, 1, -0 );
setRotateKey( spep_2 -1 + 29, 1, -0 );
setRotateKey( spep_2 -1 + 30, 1, -6.2 );
setRotateKey( spep_2 -1 + 32, 1, -6.2 );
setRotateKey( spep_2 -1 + 33, 1, -6.2 );
setRotateKey( spep_2 -1 + 34, 1, -6 );
setRotateKey( spep_2 -1 + 35, 1, -6 );
setRotateKey( spep_2 -1 + 36, 1, -5.8 );
setRotateKey( spep_2 -1 + 37, 1, -5.8 );
setRotateKey( spep_2 -1 + 38, 1, -5.4 );
setRotateKey( spep_2 -1 + 39, 1, -5.4 );
setRotateKey( spep_2 -1 + 40, 1, -1.6 );
setRotateKey( spep_2 -1 + 41, 1, -1.6 );
setRotateKey( spep_2 -1 + 42, 1, 1.5 );
setRotateKey( spep_2 -1 + 43, 1, 1.5 );
setRotateKey( spep_2 -1 + 44, 1, 2.8 );
setRotateKey( spep_2 -1 + 45, 1, 2.8 );
setRotateKey( spep_2 -1 + 46, 1, 4.1 );
setRotateKey( spep_2 -1 + 47, 1, 4.1 );
setRotateKey( spep_2 -1 + 48, 1, 5.2 );
setRotateKey( spep_2 -1 + 49, 1, 5.2 );
setRotateKey( spep_2 -1 + 50, 1, 6.2 );
setRotateKey( spep_2 -1 + 51, 1, 6.2 );
setRotateKey( spep_2 -1 + 52, 1, 7 );
setRotateKey( spep_2 -1 + 53, 1, 7 );
setRotateKey( spep_2 -1 + 54, 1, 7 );
setRotateKey( spep_2 -1 + 55, 1, 7 );
setRotateKey( spep_2 -1 + 56, 1, 7.1 );
setRotateKey( spep_2 -1 + 57, 1, 7.1 );
setRotateKey( spep_2 -1 + 58, 1, 7.1 );
setRotateKey( spep_2 -1 + 59, 1, 7.1 );
setRotateKey( spep_2 -1 + 60, 1, 7.2 );
setRotateKey( spep_2 -1 + 62, 1, 7.2 );
setRotateKey( spep_2 -1 + 64, 1, 7.3 );
setRotateKey( spep_2 -1 + 68, 1, 7.3 );
setRotateKey( spep_2 -1 + 69, 1, 7.3 );
setRotateKey( spep_2 -1 + 70, 1, 7.4 );
setRotateKey( spep_2 -1 + 71, 1, 7.4 );
setRotateKey( spep_2 -1 + 72, 1, 7.4 );
setRotateKey( spep_2 -1 + 73, 1, 7.4 );
setRotateKey( spep_2 -1 + 74, 1, 7.5 );
setRotateKey( spep_2 -1 + 78, 1, 7.5 );
setRotateKey( spep_2 -1 + 80, 1, 7.6 );
setRotateKey( spep_2 -1 + 82, 1, 7.6 );
setRotateKey( spep_2 -1 + 84, 1, 7.7 );
setRotateKey( spep_2 -1 + 88, 1, 7.7 );
setRotateKey( spep_2 -1 + 90, 1, 7.8 );
setRotateKey( spep_2 -1 + 94, 1, 7.8 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 136, 1, 1 );
setDisp( spep_2 -1 + 158, 1, 0 );
changeAnime( spep_2 -1 + 136, 1, 8 );

a1 = 30;
b1 = 60;
setMoveKey( spep_2 -1 + 136, 1, -207.1 -a1, 123.2 -b1 , 0 );
setMoveKey( spep_2 -1 + 137, 1, -207.1 -a1, 123.2 -b1 , 0 );
setMoveKey( spep_2 -1 + 138, 1, -391.2 -a1, 207.1 -b1 , 0 );
setMoveKey( spep_2 -1 + 139, 1, -391.2 -a1, 207.1 -b1 , 0 );
setMoveKey( spep_2 -1 + 140, 1, -166.7 -a1, 99.1 -b1 , 0 );
setMoveKey( spep_2 -1 + 141, 1, -166.7 -a1, 99.1 -b1 , 0 );
setMoveKey( spep_2 -1 + 142, 1, -218.6 -a1, 219.2 -b1 , 0 );
setMoveKey( spep_2 -1 + 143, 1, -218.6 -a1, 219.2 -b1 , 0 );
setMoveKey( spep_2 -1 + 144, 1, -168.3 -a1, 103 -b1 , 0 );
setMoveKey( spep_2 -1 + 145, 1, -168.3 -a1, 103 -b1 , 0 );
setMoveKey( spep_2 -1 + 146, 1, -163.2 -a1, 101.6 -b1 , 0 );
setMoveKey( spep_2 -1 + 147, 1, -163.2 -a1, 101.6 -b1 , 0 );
setMoveKey( spep_2 -1 + 148, 1, -191.3 -a1, 134.4 -b1 , 0 );
setMoveKey( spep_2 -1 + 149, 1, -191.3 -a1, 134.4 -b1 , 0 );
setMoveKey( spep_2 -1 + 150, 1, -281.7 -a1, 237.4 -b1 , 0 );
setMoveKey( spep_2 -1 + 152, 1, -415.4 -a1, 393.4 -b1 , 0 );
setMoveKey( spep_2 -1 + 154, 1, -553.3 -a1, 488.1 -b1 , 0 );
setMoveKey( spep_2 -1 + 156, 1, -673.4 -a1, 588.9 -b1 , 0 );
setMoveKey( spep_2 -1 + 158, 1, -673.4 -a1, 588.9 -b1 , 0 );

setScaleKey( spep_2 -1 + 136, 1, 4.646, 4.646 );
setScaleKey( spep_2 -1 + 137, 1, 4.646, 4.646 );
setScaleKey( spep_2 -1 + 138, 1, 8.1305, 8.1305 );
setScaleKey( spep_2 -1 + 139, 1, 8.1305, 8.1305 );
setScaleKey( spep_2 -1 + 140, 1, 3.9444999999999997, 3.9444999999999997 );
setScaleKey( spep_2 -1 + 141, 1, 3.9444999999999997, 3.9444999999999997 );
setScaleKey( spep_2 -1 + 142, 1, 5.106, 5.106 );
setScaleKey( spep_2 -1 + 143, 1, 5.106, 5.106 );
setScaleKey( spep_2 -1 + 144, 1, 4.186, 4.186 );
setScaleKey( spep_2 -1 + 145, 1, 4.186, 4.186 );
setScaleKey( spep_2 -1 + 146, 1, 4.162999999999999, 4.162999999999999 );
setScaleKey( spep_2 -1 + 147, 1, 4.162999999999999, 4.162999999999999 );
setScaleKey( spep_2 -1 + 148, 1, 4.14, 4.14 );
setScaleKey( spep_2 -1 + 149, 1, 4.14, 4.14 );
setScaleKey( spep_2 -1 + 150, 1, 4.117, 4.117 );
setScaleKey( spep_2 -1 + 151, 1, 4.117, 4.117 );
setScaleKey( spep_2 -1 + 152, 1, 4.093999999999999, 4.093999999999999 );
setScaleKey( spep_2 -1 + 154, 1, 4.071, 4.071 );
setScaleKey( spep_2 -1 + 156, 1, 4.0595, 4.0595 );
setScaleKey( spep_2 -1 + 158, 1, 4.0595, 4.0595 );

setRotateKey( spep_2 -1 + 136, 1, 47 );
setRotateKey( spep_2 -1 + 158, 1, 47 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 184, 1, 1 );
setDisp( spep_2 -1 + 240, 1, 0 );
changeAnime( spep_2 -1 + 184, 1, 6 );
changeAnime( spep_2 -1 + 208, 1, 7 );

setMoveKey( spep_2 -1 + 184, 1, 512.3, -142.3 , 0 );
setMoveKey( spep_2 -1 + 186, 1, 325.6, -62.8 , 0 );
setMoveKey( spep_2 -1 + 188, 1, 138.9, 16.6 , 0 );
setMoveKey( spep_2 -1 + 190, 1, 124.6, 21 , 0 );
setMoveKey( spep_2 -1 + 192, 1, 111.3, 25 , 0 );
setMoveKey( spep_2 -1 + 194, 1, 99.2, 28.7 , 0 );
setMoveKey( spep_2 -1 + 196, 1, 88.2, 32.1 , 0 );
setMoveKey( spep_2 -1 + 198, 1, 78.2, 35.1 , 0 );
setMoveKey( spep_2 -1 + 200, 1, 69.4, 37.8 , 0 );
setMoveKey( spep_2 -1 + 202, 1, 61.7, 40.2 , 0 );
setMoveKey( spep_2 -1 + 203, 1, 61.7, 40.2 , 0 );
setMoveKey( spep_2 -1 + 204, 1, 64.7, 49.6 , 0 );
setMoveKey( spep_2 -1 + 205, 1, 64.7, 49.6 , 0 );
setMoveKey( spep_2 -1 + 206, 1, 46.1, -9.1 , 0 );
setMoveKey( spep_2 -1 + 207, 1, 46.1, -9.1 , 0 );--
setMoveKey( spep_2 -1 + 208, 1, -112, -65.4 , 0 );
setMoveKey( spep_2 -1 + 209, 1, -112, -65.4 , 0 );
setMoveKey( spep_2 -1 + 210, 1, -25.4, 54.1 , 0 );
setMoveKey( spep_2 -1 + 211, 1, -25.4, 54.1 , 0 );
setMoveKey( spep_2 -1 + 212, 1, -105.2, -89 , 0 );
setMoveKey( spep_2 -1 + 213, 1, -105.2, -89 , 0 );
setMoveKey( spep_2 -1 + 214, 1, -21.8, 43.1 , 0 );
setMoveKey( spep_2 -1 + 215, 1, -21.8, 43.1 , 0 );
setMoveKey( spep_2 -1 + 216, 1, -33.9, 34.1 , 0 );
setMoveKey( spep_2 -1 + 217, 1, -33.9, 34.1 , 0 );
setMoveKey( spep_2 -1 + 218, 1, -14.4, 53.8 , 0 );
setMoveKey( spep_2 -1 + 219, 1, -14.4, 53.8 , 0 );
setMoveKey( spep_2 -1 + 220, 1, -39.6, 47.9 , 0 );
setMoveKey( spep_2 -1 + 221, 1, -39.6, 47.9 , 0 );
setMoveKey( spep_2 -1 + 222, 1, -21.4, 35.3 , 0 );
setMoveKey( spep_2 -1 + 223, 1, -21.4, 35.3 , 0 );
setMoveKey( spep_2 -1 + 224, 1, -42.7, 33.2 , 0 );
setMoveKey( spep_2 -1 + 225, 1, -42.7, 33.2 , 0 );
setMoveKey( spep_2 -1 + 226, 1, -24.7, 52.8 , 0 );
setMoveKey( spep_2 -1 + 227, 1, -24.7, 52.8 , 0 );
setMoveKey( spep_2 -1 + 228, 1, -51.4, 46.6 , 0 );
setMoveKey( spep_2 -1 + 229, 1, -51.4, 46.6 , 0 );
setMoveKey( spep_2 -1 + 230, 1, -42.4, 40.9 , 0 );
setMoveKey( spep_2 -1 + 232, 1, -154.6, 28.9 , 0 );
setMoveKey( spep_2 -1 + 234, 1, -268.9, 16.6 , 0 );
setMoveKey( spep_2 -1 + 236, 1, -385.3, 4.1 , 0 );
setMoveKey( spep_2 -1 + 238, 1, -503.8, -8.6 , 0 );
setMoveKey( spep_2 -1 + 240, 1, -503.8, -8.6 , 0 );

setScaleKey( spep_2 -1 + 184, 1, 2.132, 2.132 );
setScaleKey( spep_2 -1 + 202, 1, 2.132, 2.132 );
setScaleKey( spep_2 -1 + 203, 1, 2.132, 2.132 );
setScaleKey( spep_2 -1 + 204, 1, 2.509, 2.509 );
setScaleKey( spep_2 -1 + 205, 1, 2.509, 2.509 );
setScaleKey( spep_2 -1 + 206, 1, 3.445, 3.445 );
setScaleKey( spep_2 -1 + 207, 1, 3.445, 3.445 );--
setScaleKey( spep_2 -1 + 208, 1, 1.81, 1.81 );
setScaleKey( spep_2 -1 + 209, 1, 1.81, 1.81 );
setScaleKey( spep_2 -1 + 210, 1, 1.04, 1.04 );
setScaleKey( spep_2 -1 + 211, 1, 1.04, 1.04 );
setScaleKey( spep_2 -1 + 212, 1, 1.55, 1.55 );
setScaleKey( spep_2 -1 + 213, 1, 1.55, 1.55 );
setScaleKey( spep_2 -1 + 214, 1, 0.83, 0.83 );
setScaleKey( spep_2 -1 + 222, 1, 0.83, 0.83 );
setScaleKey( spep_2 -1 + 223, 1, 0.83, 0.83 );
setScaleKey( spep_2 -1 + 224, 1, 0.84, 0.84 );
setScaleKey( spep_2 -1 + 230, 1, 0.84, 0.84 );
setScaleKey( spep_2 -1 + 232, 1, 0.91, 0.91 );
setScaleKey( spep_2 -1 + 234, 1, 0.99, 0.99 );
setScaleKey( spep_2 -1 + 236, 1, 1.06, 1.06 );
setScaleKey( spep_2 -1 + 238, 1, 1.14, 1.14 );
setScaleKey( spep_2 -1 + 240, 1, 1.14, 1.14 );

setRotateKey( spep_2 -1 + 184, 1, 6 );
setRotateKey( spep_2 -1 + 207, 1, 6 );--
setRotateKey( spep_2 -1 + 208, 1, 2.3 );
setRotateKey( spep_2 -1 + 240, 1, 2.3 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 338, 1, 1 );
setDisp( spep_2 -1 + 386, 1, 0 );
changeAnime( spep_2 -1 + 338, 1, 106 );
changeAnime( spep_2 -1 + 360, 1, 108 );

setMoveKey( spep_2 -1 + 338, 1, 657, 318.2 , 0 );
setMoveKey( spep_2 -1 + 340, 1, 612.2, 302 , 0 );
setMoveKey( spep_2 -1 + 342, 1, 557.4, 239.9 , 0 );
setMoveKey( spep_2 -1 + 344, 1, 502.5, 211.7 , 0 );
setMoveKey( spep_2 -1 + 346, 1, 447.7, 184.5 , 0 );
setMoveKey( spep_2 -1 + 348, 1, 392.9, 155.4 , 0 );
setMoveKey( spep_2 -1 + 350, 1, 337, 127.2 , 0 );
setMoveKey( spep_2 -1 + 352, 1, 282.2, 99 , 0 );
setMoveKey( spep_2 -1 + 354, 1, 227.6, 70.8 , 0 );
setMoveKey( spep_2 -1 + 356, 1, 172.5, 42.7 , 0 );
setMoveKey( spep_2 -1 + 358, 1, 117.3, 14.5 , 0 );
setMoveKey( spep_2 -1 + 359, 1, 117.3, 14.5 , 0 );--
setMoveKey( spep_2 -1 + 360, 1, 67.2, 26 , 0 );
setMoveKey( spep_2 -1 + 361, 1, 67.2, 26 , 0 );
setMoveKey( spep_2 -1 + 362, 1, 127.6, 51.7 , 0 );
setMoveKey( spep_2 -1 + 363, 1, 127.6, 51.7 , 0 );
setMoveKey( spep_2 -1 + 364, 1, 67.8, 0.4 , 0 );
setMoveKey( spep_2 -1 + 365, 1, 67.8, 0.4 , 0 );
setMoveKey( spep_2 -1 + 366, 1, 199.3, 53.4 , 0 );
setMoveKey( spep_2 -1 + 367, 1, 199.3, 53.4 , 0 );
setMoveKey( spep_2 -1 + 368, 1, 60.5, 0.3 , 0 );
setMoveKey( spep_2 -1 + 369, 1, 60.5, 0.3 , 0 );
setMoveKey( spep_2 -1 + 370, 1, 72, -6.7 , 0 );
setMoveKey( spep_2 -1 + 371, 1, 72, -6.7 , 0 );
setMoveKey( spep_2 -1 + 372, 1, 60.3, 5.6 , 0 );
setMoveKey( spep_2 -1 + 373, 1, 60.3, 5.6 , 0 );
setMoveKey( spep_2 -1 + 374, 1, 76.6, 5.1 , 0 );
setMoveKey( spep_2 -1 + 375, 1, 76.6, 5.1 , 0 );
setMoveKey( spep_2 -1 + 376, 1, 66.1, -4.9 , 0 );
setMoveKey( spep_2 -1 + 377, 1, 66.1, -4.9 , 0 );
setMoveKey( spep_2 -1 + 378, 1, 205.8, -6.7 , 0 );
setMoveKey( spep_2 -1 + 380, 1, 315.3, 5.6 , 0 );
setMoveKey( spep_2 -1 + 382, 1, 446.2, 0.3 , 0 );
setMoveKey( spep_2 -1 + 384, 1, 577.1, 5.1 , 0 );
setMoveKey( spep_2 -1 + 386, 1, 577.1, 5.1 , 0 );

setScaleKey( spep_2 -1 + 338, 1, 1.656, 1.656 );
setScaleKey( spep_2 -1 + 359, 1, 1.656, 1.656 );--
setScaleKey( spep_2 -1 + 360, 1, 3.42, 3.42 );
setScaleKey( spep_2 -1 + 361, 1, 3.42, 3.42 );
setScaleKey( spep_2 -1 + 362, 1, 4.88, 4.88 );
setScaleKey( spep_2 -1 + 363, 1, 4.88, 4.88 );
setScaleKey( spep_2 -1 + 364, 1, 2.44, 2.44 );
setScaleKey( spep_2 -1 + 365, 1, 2.44, 2.44 );
setScaleKey( spep_2 -1 + 366, 1, 4.27, 4.27 );
setScaleKey( spep_2 -1 + 367, 1, 4.27, 4.27 );
setScaleKey( spep_2 -1 + 368, 1, 1.95, 1.95 );
setScaleKey( spep_2 -1 + 386, 1, 1.95, 1.95 );

setRotateKey( spep_2 -1 + 338, 1, -8.7 );
setRotateKey( spep_2 -1 + 359, 1, -8.7 );--
setRotateKey( spep_2 -1 + 360, 1, -14 );
setRotateKey( spep_2 -1 + 386, 1, -14 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 406, 1, 1 );
setDisp( spep_2 -1 + 525, 1, 0 );
changeAnime( spep_2 -1 + 406, 1, 5 );

a4 =30;
setMoveKey( spep_2 -1 + 406, 1, -174.2 -a4, -336.6 , 0 );
setMoveKey( spep_2 -1 + 408, 1, -113.4 -a4, -279.2 , 0 );
setMoveKey( spep_2 -1 + 410, 1, -26.5 -a4, -250.8 , 0 );
setMoveKey( spep_2 -1 + 412, 1, 43.3 -a4, -187.5 , 0 );
setMoveKey( spep_2 -1 + 414, 1, 95 -a4, -159.5 , 0 );
setMoveKey( spep_2 -1 + 416, 1, 169.5 -a4, -104.7 , 0 );
setMoveKey( spep_2 -1 + 418, 1, 184.1 -a4, -100.2 , 0 );
setMoveKey( spep_2 -1 + 420, 1, 188.7 -a4, -86.6 , 0 );
setMoveKey( spep_2 -1 + 422, 1, 198.2 -a4, -85.6 , 0 );
setMoveKey( spep_2 -1 + 424, 1, 213.2 -a4, -74.9 , 0 );
setMoveKey( spep_2 -1 + 426, 1, 220.2 -a4, -75.6 , 0 );
setMoveKey( spep_2 -1 + 428, 1, 220.8 -a4, -64.7 , 0 );
setMoveKey( spep_2 -1 + 430, 1, 226 -a4, -66.4 , 0 );
setMoveKey( spep_2 -1 + 432, 1, 236.9 -a4, -58.2 , 0 );
setMoveKey( spep_2 -1 + 434, 1, 237 -a4, -63.2 , 0 );
setMoveKey( spep_2 -1 + 436, 1, 231.6 -a4, -55.8 , 0 );
setMoveKey( spep_2 -1 + 438, 1, 231.9 -a4, -60.5 , 0 );
setMoveKey( spep_2 -1 + 440, 1, 238.8 -a4, -54.7 , 0 );
setMoveKey( spep_2 -1 + 442, 1, 238.7 -a4, -59.9 , 0 );
setMoveKey( spep_2 -1 + 444, 1, 233.1 -a4, -52.8 , 0 );
setMoveKey( spep_2 -1 + 446, 1, 233.2 -a4, -57.7 , 0 );
setMoveKey( spep_2 -1 + 448, 1, 240 -a4, -52.2 , 0 );
setMoveKey( spep_2 -1 + 450, 1, 239.7 -a4, -57.6 , 0 );
setMoveKey( spep_2 -1 + 452, 1, 234.1 -a4, -50.9 , 0 );
setMoveKey( spep_2 -1 + 454, 1, 234.1 -a4, -55.9 , 0 );
setMoveKey( spep_2 -1 + 456, 1, 240.7 -a4, -50.7 , 0 );
setMoveKey( spep_2 -1 + 458, 1, 240.4 -a4, -56.3 , 0 );
setMoveKey( spep_2 -1 + 460, 1, 234.6 -a4, -49.9 , 0 );
setMoveKey( spep_2 -1 + 462, 1, 234.4 -a4, -55.2 , 0 );
setMoveKey( spep_2 -1 + 464, 1, 240.8 -a4, -50.3 , 0 );
setMoveKey( spep_2 -1 + 466, 1, 240.4 -a4, -56.1 , 0 );
setMoveKey( spep_2 -1 + 468, 1, 234.6 -a4, -49.7 , 0 );
setMoveKey( spep_2 -1 + 470, 1, 234.4 -a4, -55.1 , 0 );
setMoveKey( spep_2 -1 + 472, 1, 240.8 -a4, -50.2 , 0 );
setMoveKey( spep_2 -1 + 474, 1, 240.4 -a4, -56.1 , 0 );
setMoveKey( spep_2 -1 + 476, 1, 234.6 -a4, -49.7 , 0 );
setMoveKey( spep_2 -1 + 478, 1, 235.8 -a4, -54.5 , 0 );
setMoveKey( spep_2 -1 + 480, 1, 239.4 -a4, -50.8 , 0 );
setMoveKey( spep_2 -1 + 482, 1, 239.8 -a4, -55.4 , 0 );
setMoveKey( spep_2 -1 + 484, 1, 237.6 -a4, -52.8 , 0 );
setMoveKey( spep_2 -1 + 486, 1, 235.7 -a4, -54.5 , 0 );
setMoveKey( spep_2 -1 + 488, 1, 239.4 -a4, -50.8 , 0 );
setMoveKey( spep_2 -1 + 490, 1, 239.8 -a4, -55.4 , 0 );
setMoveKey( spep_2 -1 + 492, 1, 237.6 -a4, -52.8 , 0 );
setMoveKey( spep_2 -1 + 494, 1, 235.7 -a4, -54.5 , 0 );
setMoveKey( spep_2 -1 + 496, 1, 239.4 -a4, -50.8 , 0 );
setMoveKey( spep_2 -1 + 498, 1, 239.8 -a4, -55.4 , 0 );
setMoveKey( spep_2 -1 + 500, 1, 237.6 -a4, -52.8 , 0 );
setMoveKey( spep_2 -1 + 502, 1, 235.7 -a4, -54.5 , 0 );
setMoveKey( spep_2 -1 + 504, 1, 239.4 -a4, -50.8 , 0 );
setMoveKey( spep_2 -1 + 506, 1, 239.8 -a4, -55.4 , 0 );
setMoveKey( spep_2 -1 + 508, 1, 237.6 -a4, -52.8 , 0 );
setMoveKey( spep_2 -1 + 510, 1, 239.4 -a4, -50.8 , 0 );
setMoveKey( spep_2 -1 + 512, 1, 239.8 -a4, -55.4 , 0 );
setMoveKey( spep_2 -1 + 514, 1, 237.6 -a4, -52.8 , 0 );
setMoveKey( spep_2 -1 + 516, 1, 235.8 -a4, -54.5 , 0 );
setMoveKey( spep_2 -1 + 518, 1, 239.4 -a4, -50.8 , 0 );
setMoveKey( spep_2 -1 + 520, 1, 239.8 -a4, -55.4 , 0 );
setMoveKey( spep_2 -1 + 522, 1, 237.6 -a4, -52.8 , 0 );
setMoveKey( spep_2 -1 + 524, 1, 237.6 -a4, -52.7 , 0 );
setMoveKey( spep_2 -1 + 525, 1, 237.6 -a4, -52.7 , 0 );

setScaleKey( spep_2 -1 + 406, 1, 1.55, 1.55 );
setScaleKey( spep_2 -1 + 408, 1, 1.34, 1.34 );
setScaleKey( spep_2 -1 + 410, 1, 1.14, 1.14 );
setScaleKey( spep_2 -1 + 412, 1, 0.94, 0.94 );
setScaleKey( spep_2 -1 + 414, 1, 0.74, 0.74 );
setScaleKey( spep_2 -1 + 416, 1, 0.54, 0.54 );
setScaleKey( spep_2 -1 + 418, 1, 0.51, 0.51 );
setScaleKey( spep_2 -1 + 420, 1, 0.48, 0.48 );
setScaleKey( spep_2 -1 + 422, 1, 0.45, 0.45 );
setScaleKey( spep_2 -1 + 424, 1, 0.42, 0.42 );
setScaleKey( spep_2 -1 + 426, 1, 0.4, 0.4 );
setScaleKey( spep_2 -1 + 428, 1, 0.38, 0.38 );
setScaleKey( spep_2 -1 + 430, 1, 0.36, 0.36 );
setScaleKey( spep_2 -1 + 432, 1, 0.35, 0.35 );
setScaleKey( spep_2 -1 + 434, 1, 0.34, 0.34 );
setScaleKey( spep_2 -1 + 436, 1, 0.34, 0.34 );
setScaleKey( spep_2 -1 + 438, 1, 0.33, 0.33 );
setScaleKey( spep_2 -1 + 442, 1, 0.33, 0.33 );
setScaleKey( spep_2 -1 + 444, 1, 0.32, 0.32 );
setScaleKey( spep_2 -1 + 448, 1, 0.32, 0.32 );
setScaleKey( spep_2 -1 + 450, 1, 0.31, 0.31 );
setScaleKey( spep_2 -1 + 525, 1, 0.31, 0.31 );

r2 = 41;
setRotateKey( spep_2 -1 + 406, 1, 95.7 -r2 );
setRotateKey( spep_2 -1 + 408, 1, 95.7 -r2 );
setRotateKey( spep_2 -1 + 410, 1, 95.6 -r2 );
setRotateKey( spep_2 -1 + 525, 1, 95.6 -r2 );

-- ** 音 ** --
--殴る
SE011 = playSeVer2( spep_2 + 22, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 22, 1010, "", 0, 0, 0, -1);

--右側から向かっていく
SE013 = playSeVer2( spep_2 + 62, 1117, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 62, 1277, "", 0, 0, 0, -1);

--振りかぶる
SE015 = playSeVer2( spep_2 + 88, 1116, "",spep_2 + 128, 0, 14, -1);
SE016 = playSeVer2( spep_2 + 106, 1004, "", 0, 0, 0, -1);

--裏拳
SE017 = playSeVer2( spep_2 + 128, 1187, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 130, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE019 = playSeVer2( spep_2 + 138, 1121, "",spep_2 + 234, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 138, SE019, 74 );

--蹴り飛ばす
SE020 = playSeVer2( spep_2 + 192, 1003, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 202, 1187, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 204, 1153, "", 0, 0, 0, -1);

--構える
SE023 = playSeVer2( spep_2 + 260, 1013, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 260, 1189, "", 0, 0, 0, -1);

--向かってくる
SE025 = playSeVer2( spep_2 + 292, 1182, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 292, 9, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 292, 1117, "", 0, 0, 0, -1);

--タックル
SE028 = playSeVer2( spep_2 + 354, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 354, SE028, 89 );
SE029 = playSeVer2( spep_2 + 354, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 354, SE029, 79 );
SE030 = playSeVer2( spep_2 + 354, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 354, SE030, 72 );

--敵ひきづられ飛んでいく
SE031 = playSeVer2( spep_2 + 398, 1159, "",spep_2 + 516, 14, 44, -1);
SE032 = playSeVer2( spep_2 + 398, 1044, "",spep_2 + 516, 0, 66, -1);
setSeVolumeByWorkId( spep_2 + 398, SE032, 174 );
SE033 = playSeVer2( spep_2 + 398, 1168, "",spep_2 + 516, 0, 66, -1);
setSeVolumeByWorkId( spep_2 + 398, SE033, 129 );
SE034 = playSeVer2( spep_2 + 404, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 404, SE034, 141 );
SE035 = playSeVer2( spep_2 + 408, 1011, "", 0, 18, 0, -1);
SE036 = playSeVer2( spep_2 + 414, 1197, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 426, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 426, SE037, 81 );
SE038 = playSeVer2( spep_2 + 436, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 436, SE038, 63 );
SE039 = playSeVer2( spep_2 + 446, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 446, SE039, 52 );
SE040 = playSeVer2( spep_2 + 456, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 456, SE040, 46 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 524 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 406 );
endPhase( spep_2 + 514 );


end