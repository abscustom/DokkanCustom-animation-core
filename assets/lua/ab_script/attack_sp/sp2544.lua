--1026240:SSR超サイヤ人ゴッド孫悟空_ドラゴンスマッシュ
--sp_effect_b1_00250
--sp2544

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
SP_01 = 161703;  --回り込んで突撃　殴って追跡   ef_001_ch
SP_02 = 161705;  --↑敵を挟んでの背景   ef_001_bg
SP_03 = 161706;  --森林に入り蹴り ef_002_ch
SP_04 = 161708;  --↑敵を挟んでの背景   ef_002_bg
SP_05 = 161709;  --吹っ飛んで終了 ef_003_bg

--敵側
SP_01r = 161704;  --敵側  ef_001_ch_r
SP_03r = 161707;  --敵側  ef_002_ch_r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 回り込んで突撃　殴って追跡(156F)
------------------------------------------------------
spep_0 = 0;
setupMovie(0, SP_01, 0, 1);
-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --回り込んで突撃　殴って追跡	ef_001_ch
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 156, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 156, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 156, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 156 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 156, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -155, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -155, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -155, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 101 );
changeAnime( spep_0 + 102 -1, 1, 100 );
setDisp( spep_0 + 0, 1, 1 );

setMoveKey( spep_0 + 0, 1, 243.8, -9.1 , 0 );
setMoveKey( spep_0 + 1, 1, 243.8, -9.1 , 0 );
setMoveKey( spep_0 + 2, 1, 243.8, -9 , 0 );
setMoveKey( spep_0 + 3, 1, 243.8, -9 , 0 );
setMoveKey( spep_0 + 4, 1, 243.8, -9 , 0 );
setMoveKey( spep_0 + 5, 1, 243.8, -9 , 0 );
setMoveKey( spep_0 + 6, 1, 243.8, -9 , 0 );
setMoveKey( spep_0 + 90 -1, 1, 243.8, -9 , 0 );
setMoveKey( spep_0 + 92 -1, 1, 239.5, -6.5 , 0 );
setMoveKey( spep_0 + 94 -1, 1, 235.1, -4 , 0 );
setMoveKey( spep_0 + 96 -1, 1, 230.8, -1.4 , 0 );
setMoveKey( spep_0 + 98 -1, 1, 226.5, 1.1 , 0 );
setMoveKey( spep_0 + 101 -1, 1, 222.1, 3.7 , 0 );
setMoveKey( spep_0 + 102 -1, 1, 217, 3.7 , 0 );
setMoveKey( spep_0 + 104 -1, 1, 215.2, 4.3 , 0 );
setMoveKey( spep_0 + 106 -1, 1, 213.4, 4.9 , 0 );
setMoveKey( spep_0 + 108 -1, 1, 211.6, 5.5 , 0 );
setMoveKey( spep_0 + 110 -1, 1, 209.8, 6.1 , 0 );
setMoveKey( spep_0 + 112 -1, 1, 208, 6.7 , 0 );
setMoveKey( spep_0 + 114 -1, 1, 206.2, 7.3 , 0 );
setMoveKey( spep_0 + 116 -1, 1, 207.8, 7.8 , 0 );
setMoveKey( spep_0 + 118 -1, 1, 209.4, 8.2 , 0 );
setMoveKey( spep_0 + 120 -1, 1, 211, 8.7 , 0 );
setMoveKey( spep_0 + 122 -1, 1, 212.6, 9.1 , 0 );
setMoveKey( spep_0 + 124 -1, 1, 214.2, 9.6 , 0 );
setMoveKey( spep_0 + 126 -1, 1, 215.7, 10.1 , 0 );
setMoveKey( spep_0 + 138 -1, 1, 215.7, 10.1 , 0 );
setMoveKey( spep_0 + 139 -1, 1, 215.7, 10.1 , 0 );
setMoveKey( spep_0 + 140 -1, 1, 242.2, 18 , 0 );
setMoveKey( spep_0 + 142 -1, 1, 236.9, 18 , 0 );
setMoveKey( spep_0 + 144 -1, 1, 230.4, 18 , 0 );
setMoveKey( spep_0 + 146 -1, 1, 222.8, 18 , 0 );

setScaleKey( spep_0 + 0, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 1, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 2, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 3, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 4, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 5, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 6, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 90 -1, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 92 -1, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 94 -1, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 96 -1, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 98 -1, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 101 -1, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 102 -1, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 104 -1, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 106 -1, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 108 -1, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 110 -1, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 112 -1, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 114 -1, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 116 -1, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 118 -1, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 120 -1, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 122 -1, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 124 -1, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 126 -1, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 138 -1, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 139 -1, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 140 -1, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 142 -1, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 144 -1, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 146 -1, 1, 0.49, 0.49 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 174, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 158 );
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 16 );
SE003 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 174, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 200 );
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE005, 16 );
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 16 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 16 );
SE009 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE009, 16 );
SE010 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE010, 16 );

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--カメラワーク
SE008 = playSeVer2( spep_0 + 72, 1072, "", 0, 16, 0, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 156 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 146; --エンドフェイズのフレーム数を置き換える
    
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 222.8, 18 , 0 );
    setMoveKey( SP_dodge + 2, 1, 213.9, 18 , 0 );
    setMoveKey( SP_dodge + 4, 1, 203.9, 18 , 0 );
    setMoveKey( SP_dodge + 6, 1, 192.7, 18 , 0 );
    setMoveKey( SP_dodge + 8, 1, 180.3, 18 , 0 );
    setMoveKey( SP_dodge + 10, 1, 166.8, 18 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.49, 0.49 );
    setScaleKey( SP_dodge + 2, 1, 0.53, 0.53 );
    setScaleKey( SP_dodge + 4, 1, 0.58, 0.58 );
    setScaleKey( SP_dodge + 6, 1, 0.63, 0.63 );
    setScaleKey( SP_dodge + 8, 1, 0.69, 0.69 );
    setScaleKey( SP_dodge + 10, 1, 0.75, 0.75 );

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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 160 -1, 1, 0 );

setMoveKey( spep_0 + 148 -1, 1, 213.9, 18 , 0 );
setMoveKey( spep_0 + 150 -1, 1, 203.9, 18 , 0 );
setMoveKey( spep_0 + 152 -1, 1, 192.7, 18 , 0 );
setMoveKey( spep_0 + 154 -1, 1, 180.3, 18 , 0 );
setMoveKey( spep_0 + 156 -1, 1, 166.8, 18 , 0 );
setMoveKey( spep_0 + 158 -1, 1, 152.1, 18 , 0 );
setMoveKey( spep_0 + 160 -1, 1, 152.1, 18 , 0 );

setScaleKey( spep_0 + 148 -1, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 150 -1, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 152 -1, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 154 -1, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 156 -1, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 158 -1, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 160 -1, 1, 0.82, 0.82 );

setRotateKey( spep_0 + 160 -1, 1, 0 );

-- ** 音 ** --
--オーラ
SE014 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE014, 16 );

--向かっていく
SE011 = playSeVer2( spep_0 + 134, 1182, "",spep_0 + 174, 0, 14, -1);
SE012 = playSeVer2( spep_0 + 134, 1117, "",spep_0 + 174, 0, 14, -1);
SE013 = playSeVer2( spep_0 + 134, 1002, "",spep_0 + 174, 0, 14, -1);

-- ** 白背景 ** --
entryFade( spep_0 + 156, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 160;


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
SE016 = playSeVer2( spep_1 + 84, 1117, "",spep_1 + 124, 0, 14, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 森林に入り蹴り ef_002_ch(428F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
kick_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --森林に入り蹴り ef_002_ch
setEffMoveKey( spep_2 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 428, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 428, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 428, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 428 -1, kick_f, 255 );
setEffAlphaKey( spep_2 + 428, kick_f, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 222 -163, 1, 0 );
changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 + 184 -163, 1, 108 );
changeAnime( spep_2 + 214 -163, 1, 106 );

setMoveKey( spep_2 + 0, 1, 177.6, 12.2 , 0 );
setMoveKey( spep_2 + 20, 1, 177.6, 12.2 , 0 );--
setMoveKey( spep_2 + 184 -163, 1, 185.3, 19.7 , 0 );
setMoveKey( spep_2 + 185 -163, 1, 185.3, 19.7 , 0 );
setMoveKey( spep_2 + 186 -163, 1, 150.6, 4.3 , 0 );
setMoveKey( spep_2 + 187 -163, 1, 150.6, 4.3 , 0 );
setMoveKey( spep_2 + 188 -163, 1, 168.6, 31.8 , 0 );
setMoveKey( spep_2 + 189 -163, 1, 168.6, 31.8 , 0 );
setMoveKey( spep_2 + 190 -163, 1, 144.2, 12.7 , 0 );
setMoveKey( spep_2 + 191 -163, 1, 144.2, 12.7 , 0 );
setMoveKey( spep_2 + 192 -163, 1, 125.6, 20.5 , 0 );
setMoveKey( spep_2 + 193 -163, 1, 125.6, 20.5 , 0 );
setMoveKey( spep_2 + 194 -163, 1, 150.6, 21.5 , 0 );
setMoveKey( spep_2 + 195 -163, 1, 150.6, 21.5 , 0 );
setMoveKey( spep_2 + 196 -163, 1, 141, 29.2 , 0 );
setMoveKey( spep_2 + 197 -163, 1, 141, 29.2 , 0 );
setMoveKey( spep_2 + 198 -163, 1, 154.5, 38.9 , 0 );
setMoveKey( spep_2 + 199 -163, 1, 154.5, 38.9 , 0 );
setMoveKey( spep_2 + 200 -163, 1, 138.1, 19.7 , 0 );
setMoveKey( spep_2 + 201 -163, 1, 138.1, 19.7 , 0 );
setMoveKey( spep_2 + 202 -163, 1, 150.6, 42.7 , 0 );
setMoveKey( spep_2 + 203 -163, 1, 150.6, 42.7 , 0 );
setMoveKey( spep_2 + 204 -163, 1, 173.7, 15.8 , 0 );
setMoveKey( spep_2 + 205 -163, 1, 173.7, 15.8 , 0 );
setMoveKey( spep_2 + 206 -163, 1, 183.4, 24.6 , 0 );
setMoveKey( spep_2 + 207 -163, 1, 183.4, 24.6 , 0 );
setMoveKey( spep_2 + 208 -163, 1, 171.1, 30 , 0 );
setMoveKey( spep_2 + 209 -163, 1, 171.1, 30 , 0 );
setMoveKey( spep_2 + 210 -163, 1, 186, 27.6 , 0 );
setMoveKey( spep_2 + 211 -163, 1, 186, 27.6 , 0 );
setMoveKey( spep_2 + 212 -163, 1, 181.4, 35.1 , 0 );
setMoveKey( spep_2 + 213 -163, 1, 181.4, 35.1 , 0 );
setMoveKey( spep_2 + 214 -163, 1, 310.7, 28.8 , 0 );
setMoveKey( spep_2 + 216 -163, 1, 310.7, 28.8 , 0 );
setMoveKey( spep_2 + 218 -163, 1, 516.4, 27.9 , 0 );
setMoveKey( spep_2 + 220 -163, 1, 516.4, 27.9 , 0 );
setMoveKey( spep_2 + 222 -163, 1, 673, 27.9 , 0 );

setScaleKey( spep_2 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 184 -163, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 222 -163, 1, 1.8, 1.8 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 213 -163, 1, 0 );
setRotateKey( spep_2 + 214 -163, 1, -9.8 );
setRotateKey( spep_2 + 216 -163, 1, -9.8 );
setRotateKey( spep_2 + 218 -163, 1, -0.5 );
setRotateKey( spep_2 + 222 -163, 1, -0.5 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 302 -163, 1, 1 );
setDisp( spep_2 + 350 -163, 1, 0 );
changeAnime( spep_2 + 302 -163, 1, 106 );

setMoveKey( spep_2 + 302 -163, 1, -101.8, 149.1 , 0 );
setMoveKey( spep_2 + 303 -163, 1, -101.8, 149.1 , 0 );
setMoveKey( spep_2 + 304 -163, 1, -69.1, 121.7 , 0 );
setMoveKey( spep_2 + 305 -163, 1, -69.1, 121.7 , 0 );
setMoveKey( spep_2 + 306 -163, 1, -37.5, 95.2 , 0 );
setMoveKey( spep_2 + 307 -163, 1, -37.5, 95.2 , 0 );
setMoveKey( spep_2 + 308 -163, 1, -7.1, 69.7 , 0 );
setMoveKey( spep_2 + 309 -163, 1, -7.1, 69.7 , 0 );
setMoveKey( spep_2 + 310 -163, 1, 22.2, 45.1 , 0 );
setMoveKey( spep_2 + 311 -163, 1, 22.2, 45.1 , 0 );
setMoveKey( spep_2 + 312 -163, 1, 50.3, 21.5 , 0 );
setMoveKey( spep_2 + 313 -163, 1, 50.3, 21.5 , 0 );
setMoveKey( spep_2 + 314 -163, 1, 77.3, -1.1 , 0 );
setMoveKey( spep_2 + 315 -163, 1, 77.3, -1.1 , 0 );
setMoveKey( spep_2 + 316 -163, 1, 103.1, -22.8 , 0 );
setMoveKey( spep_2 + 317 -163, 1, 103.1, -22.8 , 0 );
setMoveKey( spep_2 + 318 -163, 1, 127.8, -43.5 , 0 );
setMoveKey( spep_2 + 319 -163, 1, 127.8, -43.5 , 0 );
setMoveKey( spep_2 + 320 -163, 1, 151.4, -63.3 , 0 );
setMoveKey( spep_2 + 321 -163, 1, 151.4, -63.3 , 0 );
setMoveKey( spep_2 + 322 -163, 1, 173.8, -82.1 , 0 );
setMoveKey( spep_2 + 323 -163, 1, 173.8, -82.1 , 0 );
setMoveKey( spep_2 + 324 -163, 1, 195.1, -100 , 0 );
setMoveKey( spep_2 + 325 -163, 1, 195.1, -100 , 0 );
setMoveKey( spep_2 + 326 -163, 1, 215.2, -116.9 , 0 );
setMoveKey( spep_2 + 327 -163, 1, 215.2, -116.9 , 0 );
setMoveKey( spep_2 + 328 -163, 1, 234.2, -132.8 , 0 );
setMoveKey( spep_2 + 329 -163, 1, 234.2, -132.8 , 0 );
setMoveKey( spep_2 + 330 -163, 1, 252.1, -147.8 , 0 );
setMoveKey( spep_2 + 331 -163, 1, 252.1, -147.8 , 0 );
setMoveKey( spep_2 + 332 -163, 1, 268.8, -161.8 , 0 );
setMoveKey( spep_2 + 333 -163, 1, 268.8, -161.8 , 0 );
setMoveKey( spep_2 + 334 -163, 1, 284.4, -174.9 , 0 );
setMoveKey( spep_2 + 335 -163, 1, 284.4, -174.9 , 0 );
setMoveKey( spep_2 + 336 -163, 1, 298.8, -187 , 0 );
setMoveKey( spep_2 + 337 -163, 1, 298.8, -187 , 0 );
setMoveKey( spep_2 + 338 -163, 1, 312.1, -198.1 , 0 );
setMoveKey( spep_2 + 339 -163, 1, 312.1, -198.1 , 0 );
setMoveKey( spep_2 + 340 -163, 1, 324.2, -208.3 , 0 );
setMoveKey( spep_2 + 341 -163, 1, 324.2, -208.3 , 0 );
setMoveKey( spep_2 + 342 -163, 1, 335.2, -217.6 , 0 );
setMoveKey( spep_2 + 343 -163, 1, 335.2, -217.6 , 0 );
setMoveKey( spep_2 + 344 -163, 1, 345.1, -225.8 , 0 );
setMoveKey( spep_2 + 345 -163, 1, 345.1, -225.8 , 0 );
setMoveKey( spep_2 + 346 -163, 1, 353.8, -233.2 , 0 );
setMoveKey( spep_2 + 347 -163, 1, 353.8, -233.2 , 0 );
setMoveKey( spep_2 + 348 -163, 1, 361.4, -239.5 , 0 );
setMoveKey( spep_2 + 349 -163, 1, 361.4, -239.5 , 0 );
setMoveKey( spep_2 + 350 -163, 1, 367.9, -244.9 , 0 );

setScaleKey( spep_2 + 302 -163, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 350 -163, 1, 0.25, 0.25 );

setRotateKey( spep_2 + 302 -163, 1, 70 );
setRotateKey( spep_2 + 350 -163, 1, 70 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 202, 1, 1 );
setDisp( spep_2 -3 + 302, 1, 0 );
changeAnime( spep_2 -3 + 202, 1, 105 );

setMoveKey( spep_2 -3 + 202, 1, -81.3, -24.7 , 0 );
setMoveKey( spep_2 -3 + 204, 1, -79, -24.8 , 0 );
setMoveKey( spep_2 -3 + 206, 1, -76.7, -24.9 , 0 );
setMoveKey( spep_2 -3 + 208, 1, -74.4, -25 , 0 );
setMoveKey( spep_2 -3 + 210, 1, -72.1, -25.1 , 0 );
setMoveKey( spep_2 -3 + 212, 1, -69.9, -25.2 , 0 );
setMoveKey( spep_2 -3 + 214, 1, -67.6, -25.2 , 0 );
setMoveKey( spep_2 -3 + 216, 1, -65.3, -25.3 , 0 );
setMoveKey( spep_2 -3 + 218, 1, -63, -25.4 , 0 );
setMoveKey( spep_2 -3 + 220, 1, -60.8, -25.4 , 0 );
setMoveKey( spep_2 -3 + 222, 1, -58.5, -25.5 , 0 );
setMoveKey( spep_2 -3 + 224, 1, -56.2, -25.5 , 0 );
setMoveKey( spep_2 -3 + 226, 1, -54, -25.6 , 0 );
setMoveKey( spep_2 -3 + 228, 1, -51.7, -25.6 , 0 );
setMoveKey( spep_2 -3 + 230, 1, -49.4, -25.7 , 0 );
setMoveKey( spep_2 -3 + 232, 1, -47.2, -25.7 , 0 );
setMoveKey( spep_2 -3 + 234, 1, -44.9, -25.8 , 0 );
setMoveKey( spep_2 -3 + 236, 1, -42.6, -25.8 , 0 );
setMoveKey( spep_2 -3 + 238, 1, -40.4, -25.8 , 0 );
setMoveKey( spep_2 -3 + 240, 1, -38.1, -25.9 , 0 );
setMoveKey( spep_2 -3 + 242, 1, -35.9, -25.9 , 0 );
setMoveKey( spep_2 -3 + 244, 1, -33.7, -25.9 , 0 );
setMoveKey( spep_2 -3 + 246, 1, -31.4, -25.9 , 0 );
setMoveKey( spep_2 -3 + 248, 1, -29.2, -25.9 , 0 );
setMoveKey( spep_2 -3 + 250, 1, -26.9, -26 , 0 );
setMoveKey( spep_2 -3 + 252, 1, -24.7, -26 , 0 );
setMoveKey( spep_2 -3 + 254, 1, -22.5, -26 , 0 );
setMoveKey( spep_2 -3 + 256, 1, -20.3, -26 , 0 );
setMoveKey( spep_2 -3 + 258, 1, -18, -26 , 0 );
setMoveKey( spep_2 -3 + 260, 1, -15.8, -26 , 0 );
setMoveKey( spep_2 -3 + 262, 1, -13.6, -26 , 0 );
setMoveKey( spep_2 -3 + 264, 1, -11.4, -26 , 0 );
setMoveKey( spep_2 -3 + 266, 1, -9.2, -26 , 0 );
setMoveKey( spep_2 -3 + 268, 1, -7, -26 , 0 );
setMoveKey( spep_2 -3 + 270, 1, -4.8, -26 , 0 );
setMoveKey( spep_2 -3 + 272, 1, -2.6, -26 , 0 );
setMoveKey( spep_2 -3 + 274, 1, -0.4, -26 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 1.7, -25.9 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 3.9, -25.9 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 6.1, -25.9 , 0 );
setMoveKey( spep_2 -3 + 302, 1, 6.1, -25.9 , 0 );

setScaleKey( spep_2 -3 + 202, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 204, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 206, 1, 2.66, 2.66 );
setScaleKey( spep_2 -3 + 208, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 210, 1, 2.53, 2.53 );
setScaleKey( spep_2 -3 + 212, 1, 2.46, 2.46 );
setScaleKey( spep_2 -3 + 214, 1, 2.4, 2.4 );
setScaleKey( spep_2 -3 + 216, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 218, 1, 2.27, 2.27 );
setScaleKey( spep_2 -3 + 220, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 222, 1, 2.14, 2.14 );
setScaleKey( spep_2 -3 + 224, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 226, 1, 2.01, 2.01 );
setScaleKey( spep_2 -3 + 228, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 230, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 232, 1, 1.82, 1.82 );
setScaleKey( spep_2 -3 + 234, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 236, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 238, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 240, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 242, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 244, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 246, 1, 1.39, 1.39 );
setScaleKey( spep_2 -3 + 248, 1, 1.32, 1.32 );
setScaleKey( spep_2 -3 + 250, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 252, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 254, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 256, 1, 1.09, 1.09 );
setScaleKey( spep_2 -3 + 258, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 260, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 262, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 264, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 266, 1, 0.79, 0.79 );
setScaleKey( spep_2 -3 + 268, 1, 0.74, 0.74 );
setScaleKey( spep_2 -3 + 270, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 272, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 274, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 276, 1, 0.51, 0.51 );
setScaleKey( spep_2 -3 + 278, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 280, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 302, 1, 0.1, 0.1 );

setRotateKey( spep_2 -3 + 202, 1, 27.1 );
setRotateKey( spep_2 -3 + 302, 1, 27.1 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 386, 1, 1 );
--setDisp( spep_2 -3 + 430, 1, 0 );
changeAnime( spep_2 -3 + 386, 1, 108 );

a3 = 170;
a4 = 100;
setMoveKey( spep_2 -3 + 386, 1, 36, -43.2 , 0 );
setMoveKey( spep_2 -3 + 387, 1, 36, -43.2 , 0 );
setMoveKey( spep_2 -3 + 388, 1, 40.6, -30.1 , 0 );
setMoveKey( spep_2 -3 + 389, 1, 40.6, -30.1 , 0 );
setMoveKey( spep_2 -3 + 390, 1, 34, -54.5 , 0 );
setMoveKey( spep_2 -3 + 391, 1, 34, -54.5 , 0 );
setMoveKey( spep_2 -3 + 392, 1, 41, -33.5 , 0 );
setMoveKey( spep_2 -3 + 393, 1, 41, -33.5 , 0 );
setMoveKey( spep_2 -3 + 394, 1, 39.3, -42.2 , 0 );
setMoveKey( spep_2 -3 + 395, 1, 39.3, -42.2 , 0 );
setMoveKey( spep_2 -3 + 396, 1, 40.2, -26 , 0 );
setMoveKey( spep_2 -3 + 397, 1, 40.2, -26 , 0 );
setMoveKey( spep_2 -3 + 398, 1, 41, -40.7 , 0 );
setMoveKey( spep_2 -3 + 399, 1, 41, -40.7 , 0 );
setMoveKey( spep_2 -3 + 400, 1, 35.7, -24.5 , 0 );
setMoveKey( spep_2 -3 + 401, 1, 35.7, -24.5 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 58.2, -54.7 , 0 );
setMoveKey( spep_2 -3 + 403, 1, 58.2, -54.7 , 0 );
setMoveKey( spep_2 -3 + 404, 1, 43.5, -38.4 , 0 );
setMoveKey( spep_2 -3 + 405, 1, 43.5, -38.4 , 0 );--
setMoveKey( spep_2 -3 + 406, 1, 219.8 -a3, -19.2 , 0 );
setMoveKey( spep_2 -3 + 407, 1, 219.8 -a3, -19.2 , 0 );
setMoveKey( spep_2 -3 + 408, 1, 224.4 -a3, -18.3 , 0 );
setMoveKey( spep_2 -3 + 409, 1, 224.4 -a3, -18.3 , 0 );
setMoveKey( spep_2 -3 + 410, 1, 222.6 -a3, -18 , 0 );
setMoveKey( spep_2 -3 + 411, 1, 222.6 -a3, -18 , 0 );
setMoveKey( spep_2 -3 + 412, 1, 210.5 -a3, -8.2 , 0 );
setMoveKey( spep_2 -3 + 413, 1, 210.5 -a3, -8.2 , 0 );
setMoveKey( spep_2 -3 + 414, 1, 213.4 +30, -10.6 , 0 );
setMoveKey( spep_2 -3 + 415, 1, 213.4 +30, -10.6 , 0 );
setMoveKey( spep_2 -3 + 416, 1, 223.6 +130, -10.6 , 0 );
setMoveKey( spep_2 -3 + 417, 1, 223.6 +130, -10.6 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 454.3 +a4, -24.2 , 0 );
setMoveKey( spep_2 -3 + 419, 1, 454.3 +a4, -24.2 , 0 );
setMoveKey( spep_2 -3 + 420, 1, 1027.2 +a4, -24.2 , 0 );
setMoveKey( spep_2 -3 + 422, 1, 1617.1 +a4, -24.2 , 0 );
setMoveKey( spep_2 -3 + 424, 1, 1615.1 +a4, -24.2 , 0 );
setMoveKey( spep_2 -3 + 426, 1, 1613.1 +a4, -24.2 , 0 );
setMoveKey( spep_2 -3 + 428, 1, 1611.1 +a4, -24.2 , 0 );
setMoveKey( spep_2 -3 + 430, 1, 1609.1 +a4, -24.2 , 0 );
--setMoveKey( spep_2 -3 + 432, 1, 1609.1, -24.2 , 0 );

setScaleKey( spep_2 -3 + 386, 1, 1.4, 1.4 );
setScaleKey( spep_2 -3 + 430, 1, 1.4, 1.4 );

setRotateKey( spep_2 -3 + 386, 1, 0 );
setRotateKey( spep_2 -3 + 430, 1, 0 );

-- ** 音 ** --
--パンチ
SE017 = playSeVer2( spep_2 + 18, 1259, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 18, SE017, 73 );
SE018 = playSeVer2( spep_2 + 24, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE018, 89 );
SE019 = playSeVer2( spep_2 + 24, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE019, 72 );
SE020 = playSeVer2( spep_2 + 26, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE020, 81 );

--オーラ
SE021 = playSeVer2( spep_2 + 46, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE021, 25 );
SE022 = playSeVer2( spep_2 + 46, 1181, "",spep_2 + 170, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 46, SE022, 126 );
SE023 = playSeVer2( spep_2 + 46, 1407, "",spep_2 + 170, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 46, SE023, 158 );
SE024 = playSeVer2( spep_2 + 70, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 70, SE024, 25 );
SE025 = playSeVer2( spep_2 + 94, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE025, 25 );

--俯瞰飛行音
SE026 = playSeVer2( spep_2 + 98, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 98, SE026, 76 );

--向かっていく
SE027 = playSeVer2( spep_2 + 100, 1182, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 104, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104, SE028, 119 );

--俯瞰飛行音
SE029 = playSeVer2( spep_2 + 134, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE029, 71 );
SE030 = playSeVer2( spep_2 + 134, 1304, "", 0, 0, 0, -1);

--飛行音
SE031 = playSeVer2( spep_2 + 134, 1019, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 198, 1019, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 200, 1314, "",spep_2 + 406, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 200, SE033, 73 );
SE037 = playSeVer2( spep_2 + 264, 1019, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 328, 1019, "", 0, 0, 0, -1);

--悟空フレームイン
SE034 = playSeVer2( spep_2 + 230, 1072, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 254, 1116, "",spep_2 + 300, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 254, SE035, 79 );
SE036 = playSeVer2( spep_2 + 260, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE036,  100 );

--正面向かってくる
SE038 = playSeVer2( spep_2 + 302, 44, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 302, 1182, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 306, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 306, SE040, 54 );
setTimeStretch( SE040, 1.33, 30, 4 );

--キック
SE042 = playSeVer2( spep_2 + 372, 1187, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 372, 1153, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 428 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 428;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
--spep_3 = 0;
-- ** ひび割れ ** --
finish_f = entryEffect( spep_3 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_3 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 8, finish_f, 0 );
setEffRotateKey( spep_3 + 112, finish_f, 0 );
setEffAlphaKey( spep_3 + 8, finish_f, 255 );
setEffAlphaKey( spep_3 + 112, finish_f, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 112, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 112, 1, 0 );

changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_3 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_3 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_3 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_3 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_3 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_3 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_3 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_3 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_3 + 0, 1, -122.8 - 232 );
setRotateKey( spep_3 + 2, 1, -122.8 );
setRotateKey( spep_3 -3 + 6, 1, -1 );
setRotateKey( spep_3 -3 + 8, 1, 120.7 );
setRotateKey( spep_3 -3 + 10, 1, 242.5 );
setRotateKey( spep_3 -3 + 12, 1, 364.3 );
setRotateKey( spep_3 -3 + 14, 1, 486 );
setRotateKey( spep_3 -3 + 16, 1, 607.8 );
setRotateKey( spep_3 -3 + 18, 1, 729.5 );
setRotateKey( spep_3 + 112, 1, 729.5 );

-- ** 音 ** --
--画面割れ
SE044 = playSeVer2( spep_3 + 14, 1054, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_3 + 14, 1025, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 108 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 6 ); -- ダメージ表示フレーム
endPhase( spep_3 + 108 ); -- 終了フレーム

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 回り込んで突撃　殴って追跡(156F)
------------------------------------------------------
spep_0 = 0;
setupMovie(0, SP_01, 0, 1);
-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --回り込んで突撃　殴って追跡    ef_001_ch
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 156, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 156, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 156, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 156 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 156, first_f, 0 );

spep_x = spep_0 + 0;

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -155, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -155, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -155, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1,1 );
changeAnime( spep_0 + 102 -1, 1,0 );
setDisp( spep_0 + 0, 1, 1 );

setMoveKey( spep_0 + 0, 1, -243.8, -9.1 , 0 );
setMoveKey( spep_0 + 1, 1, -243.8, -9.1 , 0 );
setMoveKey( spep_0 + 2, 1, -243.8, -9 , 0 );
setMoveKey( spep_0 + 3, 1, -243.8, -9 , 0 );
setMoveKey( spep_0 + 4, 1, -243.8, -9 , 0 );
setMoveKey( spep_0 + 5, 1, -243.8, -9 , 0 );
setMoveKey( spep_0 + 6, 1, -243.8, -9 , 0 );
setMoveKey( spep_0 + 90 -1, 1, -243.8, -9 , 0 );
setMoveKey( spep_0 + 92 -1, 1, -239.5, -6.5 , 0 );
setMoveKey( spep_0 + 94 -1, 1, -235.1, -4 , 0 );
setMoveKey( spep_0 + 96 -1, 1, -230.8, -1.4 , 0 );
setMoveKey( spep_0 + 98 -1, 1, -226.5, 1.1 , 0 );
setMoveKey( spep_0 + 101 -1, 1, -222.1, 3.7 , 0 );
setMoveKey( spep_0 + 102 -1, 1, -217, 3.7 , 0 );
setMoveKey( spep_0 + 104 -1, 1, -215.2, 4.3 , 0 );
setMoveKey( spep_0 + 106 -1, 1, -213.4, 4.9 , 0 );
setMoveKey( spep_0 + 108 -1, 1, -211.6, 5.5 , 0 );
setMoveKey( spep_0 + 110 -1, 1, -209.8, 6.1 , 0 );
setMoveKey( spep_0 + 112 -1, 1, -208, 6.7 , 0 );
setMoveKey( spep_0 + 114 -1, 1, -206.2, 7.3 , 0 );
setMoveKey( spep_0 + 116 -1, 1, -207.8, 7.8 , 0 );
setMoveKey( spep_0 + 118 -1, 1, -209.4, 8.2 , 0 );
setMoveKey( spep_0 + 120 -1, 1, -211, 8.7 , 0 );
setMoveKey( spep_0 + 122 -1, 1, -212.6, 9.1 , 0 );
setMoveKey( spep_0 + 124 -1, 1, -214.2, 9.6 , 0 );
setMoveKey( spep_0 + 126 -1, 1, -215.7, 10.1 , 0 );
setMoveKey( spep_0 + 138 -1, 1, -215.7, 10.1 , 0 );
setMoveKey( spep_0 + 139 -1, 1, -215.7, 10.1 , 0 );
setMoveKey( spep_0 + 140 -1, 1, -242.2, 18 , 0 );
setMoveKey( spep_0 + 142 -1, 1, -236.9, 18 , 0 );
setMoveKey( spep_0 + 144 -1, 1, -230.4, 18 , 0 );
setMoveKey( spep_0 + 146 -1, 1, -222.8, 18 , 0 );

setScaleKey( spep_0 + 0, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 1, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 2, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 3, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 4, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 5, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 6, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 90 -1, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 92 -1, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 94 -1, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 96 -1, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 98 -1, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 101 -1, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 102 -1, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 104 -1, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 106 -1, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 108 -1, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 110 -1, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 112 -1, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 114 -1, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 116 -1, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 118 -1, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 120 -1, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 122 -1, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 124 -1, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 126 -1, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 138 -1, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 139 -1, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 140 -1, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 142 -1, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 144 -1, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 146 -1, 1, 0.49, 0.49 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 174, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 158 );
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 16 );
SE003 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 174, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 200 );
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE005, 16 );
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 16 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 16 );
SE009 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE009, 16 );
SE010 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE010, 16 );

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--カメラワーク
SE008 = playSeVer2( spep_0 + 72, 1072, "", 0, 16, 0, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 156 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 146; --エンドフェイズのフレーム数を置き換える
    
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 222.8, 18 , 0 );
    setMoveKey( SP_dodge + 2, 1, 213.9, 18 , 0 );
    setMoveKey( SP_dodge + 4, 1, 203.9, 18 , 0 );
    setMoveKey( SP_dodge + 6, 1, 192.7, 18 , 0 );
    setMoveKey( SP_dodge + 8, 1, 180.3, 18 , 0 );
    setMoveKey( SP_dodge + 10, 1, 166.8, 18 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.49, 0.49 );
    setScaleKey( SP_dodge + 2, 1, 0.53, 0.53 );
    setScaleKey( SP_dodge + 4, 1, 0.58, 0.58 );
    setScaleKey( SP_dodge + 6, 1, 0.63, 0.63 );
    setScaleKey( SP_dodge + 8, 1, 0.69, 0.69 );
    setScaleKey( SP_dodge + 10, 1, 0.75, 0.75 );

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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 160 -1, 1, 0 );

setMoveKey( spep_0 + 148 -1, 1, -213.9, 18 , 0 );
setMoveKey( spep_0 + 150 -1, 1, -203.9, 18 , 0 );
setMoveKey( spep_0 + 152 -1, 1, -192.7, 18 , 0 );
setMoveKey( spep_0 + 154 -1, 1, -180.3, 18 , 0 );
setMoveKey( spep_0 + 156 -1, 1, -166.8, 18 , 0 );
setMoveKey( spep_0 + 158 -1, 1, -152.1, 18 , 0 );
setMoveKey( spep_0 + 160 -1, 1, -152.1, 18 , 0 );

setScaleKey( spep_0 + 148 -1, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 150 -1, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 152 -1, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 154 -1, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 156 -1, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 158 -1, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 160 -1, 1, 0.82, 0.82 );

setRotateKey( spep_0 + 160 -1, 1, 0 );

-- ** 音 ** --
--オーラ
SE014 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE014, 16 );

--向かっていく
SE011 = playSeVer2( spep_0 + 134, 1182, "",spep_0 + 174, 0, 14, -1);
SE012 = playSeVer2( spep_0 + 134, 1117, "",spep_0 + 174, 0, 14, -1);
SE013 = playSeVer2( spep_0 + 134, 1002, "",spep_0 + 174, 0, 14, -1);

-- ** 白背景 ** --
entryFade( spep_0 + 156, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 160;


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
SE016 = playSeVer2( spep_1 + 84, 1117, "",spep_1 + 124, 0, 14, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 森林に入り蹴り ef_002_ch(428F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
kick_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --森林に入り蹴り ef_002_ch
setEffMoveKey( spep_2 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 428, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 428, kick_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 428, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 428 -1, kick_f, 255 );
setEffAlphaKey( spep_2 + 428, kick_f, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 222 -163, 1, 0 );
changeAnime( spep_2 + 5, 1,1 );
changeAnime( spep_2 + 184 -163, 1,8 );
changeAnime( spep_2 + 214 -163, 1,6 );

setMoveKey( spep_2 + 0, 1, -177.6, 12.2 , 0 );
setMoveKey( spep_2 + 20, 1, -177.6, 12.2 , 0 );--
setMoveKey( spep_2 + 184 -163, 1, -185.3, 19.7 , 0 );
setMoveKey( spep_2 + 185 -163, 1, -185.3, 19.7 , 0 );
setMoveKey( spep_2 + 186 -163, 1, -150.6, 4.3 , 0 );
setMoveKey( spep_2 + 187 -163, 1, -150.6, 4.3 , 0 );
setMoveKey( spep_2 + 188 -163, 1, -168.6, 31.8 , 0 );
setMoveKey( spep_2 + 189 -163, 1, -168.6, 31.8 , 0 );
setMoveKey( spep_2 + 190 -163, 1, -144.2, 12.7 , 0 );
setMoveKey( spep_2 + 191 -163, 1, -144.2, 12.7 , 0 );
setMoveKey( spep_2 + 192 -163, 1, -125.6, 20.5 , 0 );
setMoveKey( spep_2 + 193 -163, 1, -125.6, 20.5 , 0 );
setMoveKey( spep_2 + 194 -163, 1, -150.6, 21.5 , 0 );
setMoveKey( spep_2 + 195 -163, 1, -150.6, 21.5 , 0 );
setMoveKey( spep_2 + 196 -163, 1, -141, 29.2 , 0 );
setMoveKey( spep_2 + 197 -163, 1, -141, 29.2 , 0 );
setMoveKey( spep_2 + 198 -163, 1, -154.5, 38.9 , 0 );
setMoveKey( spep_2 + 199 -163, 1, -154.5, 38.9 , 0 );
setMoveKey( spep_2 + 200 -163, 1, -138.1, 19.7 , 0 );
setMoveKey( spep_2 + 201 -163, 1, -138.1, 19.7 , 0 );
setMoveKey( spep_2 + 202 -163, 1, -150.6, 42.7 , 0 );
setMoveKey( spep_2 + 203 -163, 1, -150.6, 42.7 , 0 );
setMoveKey( spep_2 + 204 -163, 1, -173.7, 15.8 , 0 );
setMoveKey( spep_2 + 205 -163, 1, -173.7, 15.8 , 0 );
setMoveKey( spep_2 + 206 -163, 1, -183.4, 24.6 , 0 );
setMoveKey( spep_2 + 207 -163, 1, -183.4, 24.6 , 0 );
setMoveKey( spep_2 + 208 -163, 1, -171.1, 30 , 0 );
setMoveKey( spep_2 + 209 -163, 1, -171.1, 30 , 0 );
setMoveKey( spep_2 + 210 -163, 1, -186, 27.6 , 0 );
setMoveKey( spep_2 + 211 -163, 1, -186, 27.6 , 0 );
setMoveKey( spep_2 + 212 -163, 1, -181.4, 35.1 , 0 );
setMoveKey( spep_2 + 213 -163, 1, -181.4, 35.1 , 0 );
setMoveKey( spep_2 + 214 -163, 1, -310.7, 28.8 , 0 );
setMoveKey( spep_2 + 216 -163, 1, -310.7, 28.8 , 0 );
setMoveKey( spep_2 + 218 -163, 1, -516.4, 27.9 , 0 );
setMoveKey( spep_2 + 220 -163, 1, -516.4, 27.9 , 0 );
setMoveKey( spep_2 + 222 -163, 1, -673, 27.9 , 0 );

setScaleKey( spep_2 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 184 -163, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 222 -163, 1, 1.8, 1.8 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 213 -163, 1, 0 );
setRotateKey( spep_2 + 214 -163, 1, 9.8 );
setRotateKey( spep_2 + 216 -163, 1, 9.8 );
setRotateKey( spep_2 + 218 -163, 1, 0.5 );
setRotateKey( spep_2 + 222 -163, 1, 0.5 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 302 -163, 1, 1 );
setDisp( spep_2 + 350 -163, 1, 0 );
changeAnime( spep_2 + 302 -163, 1,6 );

setMoveKey( spep_2 + 302 -163, 1, 101.8, 149.1 , 0 );
setMoveKey( spep_2 + 303 -163, 1, 101.8, 149.1 , 0 );
setMoveKey( spep_2 + 304 -163, 1, 69.1, 121.7 , 0 );
setMoveKey( spep_2 + 305 -163, 1, 69.1, 121.7 , 0 );
setMoveKey( spep_2 + 306 -163, 1, 37.5, 95.2 , 0 );
setMoveKey( spep_2 + 307 -163, 1, 37.5, 95.2 , 0 );
setMoveKey( spep_2 + 308 -163, 1, 7.1, 69.7 , 0 );
setMoveKey( spep_2 + 309 -163, 1, 7.1, 69.7 , 0 );
setMoveKey( spep_2 + 310 -163, 1, -22.2, 45.1 , 0 );
setMoveKey( spep_2 + 311 -163, 1, -22.2, 45.1 , 0 );
setMoveKey( spep_2 + 312 -163, 1, -50.3, 21.5 , 0 );
setMoveKey( spep_2 + 313 -163, 1, -50.3, 21.5 , 0 );
setMoveKey( spep_2 + 314 -163, 1, -77.3, -1.1 , 0 );
setMoveKey( spep_2 + 315 -163, 1, -77.3, -1.1 , 0 );
setMoveKey( spep_2 + 316 -163, 1, -103.1, -22.8 , 0 );
setMoveKey( spep_2 + 317 -163, 1, -103.1, -22.8 , 0 );
setMoveKey( spep_2 + 318 -163, 1, -127.8, -43.5 , 0 );
setMoveKey( spep_2 + 319 -163, 1, -127.8, -43.5 , 0 );
setMoveKey( spep_2 + 320 -163, 1, -151.4, -63.3 , 0 );
setMoveKey( spep_2 + 321 -163, 1, -151.4, -63.3 , 0 );
setMoveKey( spep_2 + 322 -163, 1, -173.8, -82.1 , 0 );
setMoveKey( spep_2 + 323 -163, 1, -173.8, -82.1 , 0 );
setMoveKey( spep_2 + 324 -163, 1, -195.1, -100 , 0 );
setMoveKey( spep_2 + 325 -163, 1, -195.1, -100 , 0 );
setMoveKey( spep_2 + 326 -163, 1, -215.2, -116.9 , 0 );
setMoveKey( spep_2 + 327 -163, 1, -215.2, -116.9 , 0 );
setMoveKey( spep_2 + 328 -163, 1, -234.2, -132.8 , 0 );
setMoveKey( spep_2 + 329 -163, 1, -234.2, -132.8 , 0 );
setMoveKey( spep_2 + 330 -163, 1, -252.1, -147.8 , 0 );
setMoveKey( spep_2 + 331 -163, 1, -252.1, -147.8 , 0 );
setMoveKey( spep_2 + 332 -163, 1, -268.8, -161.8 , 0 );
setMoveKey( spep_2 + 333 -163, 1, -268.8, -161.8 , 0 );
setMoveKey( spep_2 + 334 -163, 1, -284.4, -174.9 , 0 );
setMoveKey( spep_2 + 335 -163, 1, -284.4, -174.9 , 0 );
setMoveKey( spep_2 + 336 -163, 1, -298.8, -187 , 0 );
setMoveKey( spep_2 + 337 -163, 1, -298.8, -187 , 0 );
setMoveKey( spep_2 + 338 -163, 1, -312.1, -198.1 , 0 );
setMoveKey( spep_2 + 339 -163, 1, -312.1, -198.1 , 0 );
setMoveKey( spep_2 + 340 -163, 1, -324.2, -208.3 , 0 );
setMoveKey( spep_2 + 341 -163, 1, -324.2, -208.3 , 0 );
setMoveKey( spep_2 + 342 -163, 1, -335.2, -217.6 , 0 );
setMoveKey( spep_2 + 343 -163, 1, -335.2, -217.6 , 0 );
setMoveKey( spep_2 + 344 -163, 1, -345.1, -225.8 , 0 );
setMoveKey( spep_2 + 345 -163, 1, -345.1, -225.8 , 0 );
setMoveKey( spep_2 + 346 -163, 1, -353.8, -233.2 , 0 );
setMoveKey( spep_2 + 347 -163, 1, -353.8, -233.2 , 0 );
setMoveKey( spep_2 + 348 -163, 1, -361.4, -239.5 , 0 );
setMoveKey( spep_2 + 349 -163, 1, -361.4, -239.5 , 0 );
setMoveKey( spep_2 + 350 -163, 1, -367.9, -244.9 , 0 );

setScaleKey( spep_2 + 302 -163, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 350 -163, 1, 0.25, 0.25 );

setRotateKey( spep_2 + 302 -163, 1, -70 );
setRotateKey( spep_2 + 350 -163, 1, -70 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 202, 1, 1 );
setDisp( spep_2 -3 + 302, 1, 0 );
changeAnime( spep_2 -3 + 202, 1,5 );

setMoveKey( spep_2 -3 + 202, 1, 81.3, -24.7 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 79, -24.8 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 76.7, -24.9 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 74.4, -25 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 72.1, -25.1 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 69.9, -25.2 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 67.6, -25.2 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 65.3, -25.3 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 63, -25.4 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 60.8, -25.4 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 58.5, -25.5 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 56.2, -25.5 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 54, -25.6 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 51.7, -25.6 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 49.4, -25.7 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 47.2, -25.7 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 44.9, -25.8 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 42.6, -25.8 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 40.4, -25.8 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 38.1, -25.9 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 35.9, -25.9 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 33.7, -25.9 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 31.4, -25.9 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 29.2, -25.9 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 26.9, -26 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 24.7, -26 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 22.5, -26 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 20.3, -26 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 18, -26 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 15.8, -26 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 13.6, -26 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 11.4, -26 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 9.2, -26 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 7, -26 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 4.8, -26 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 2.6, -26 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 0.4, -26 , 0 );
setMoveKey( spep_2 -3 + 276, 1, -1.7, -25.9 , 0 );
setMoveKey( spep_2 -3 + 278, 1, -3.9, -25.9 , 0 );
setMoveKey( spep_2 -3 + 280, 1, -6.1, -25.9 , 0 );
setMoveKey( spep_2 -3 + 302, 1, -6.1, -25.9 , 0 );

setScaleKey( spep_2 -3 + 202, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 204, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 206, 1, 2.66, 2.66 );
setScaleKey( spep_2 -3 + 208, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 210, 1, 2.53, 2.53 );
setScaleKey( spep_2 -3 + 212, 1, 2.46, 2.46 );
setScaleKey( spep_2 -3 + 214, 1, 2.4, 2.4 );
setScaleKey( spep_2 -3 + 216, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 218, 1, 2.27, 2.27 );
setScaleKey( spep_2 -3 + 220, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 222, 1, 2.14, 2.14 );
setScaleKey( spep_2 -3 + 224, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 226, 1, 2.01, 2.01 );
setScaleKey( spep_2 -3 + 228, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 230, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 232, 1, 1.82, 1.82 );
setScaleKey( spep_2 -3 + 234, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 236, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 238, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 240, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 242, 1, 1.51, 1.51 );
setScaleKey( spep_2 -3 + 244, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 246, 1, 1.39, 1.39 );
setScaleKey( spep_2 -3 + 248, 1, 1.32, 1.32 );
setScaleKey( spep_2 -3 + 250, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 252, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 254, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 256, 1, 1.09, 1.09 );
setScaleKey( spep_2 -3 + 258, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 260, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 262, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 264, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 266, 1, 0.79, 0.79 );
setScaleKey( spep_2 -3 + 268, 1, 0.74, 0.74 );
setScaleKey( spep_2 -3 + 270, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 272, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 274, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 276, 1, 0.51, 0.51 );
setScaleKey( spep_2 -3 + 278, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 280, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 302, 1, 0.1, 0.1 );

setRotateKey( spep_2 -3 + 202, 1, -27.1 );
setRotateKey( spep_2 -3 + 302, 1, -27.1 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 386, 1, 1 );
--setDisp( spep_2 -3 + 430, 1, 0 );
changeAnime( spep_2 -3 + 386, 1, 8 );

a3 = 170;
a4 = 100;
setMoveKey( spep_2 -3 + 386, 1, -36, -43.2 , 0 );
setMoveKey( spep_2 -3 + 387, 1, -36, -43.2 , 0 );
setMoveKey( spep_2 -3 + 388, 1, -40.6, -30.1 , 0 );
setMoveKey( spep_2 -3 + 389, 1, -40.6, -30.1 , 0 );
setMoveKey( spep_2 -3 + 390, 1, -34, -54.5 , 0 );
setMoveKey( spep_2 -3 + 391, 1, -34, -54.5 , 0 );
setMoveKey( spep_2 -3 + 392, 1, -41, -33.5 , 0 );
setMoveKey( spep_2 -3 + 393, 1, -41, -33.5 , 0 );
setMoveKey( spep_2 -3 + 394, 1, -39.3, -42.2 , 0 );
setMoveKey( spep_2 -3 + 395, 1, -39.3, -42.2 , 0 );
setMoveKey( spep_2 -3 + 396, 1, -40.2, -26 , 0 );
setMoveKey( spep_2 -3 + 397, 1, -40.2, -26 , 0 );
setMoveKey( spep_2 -3 + 398, 1, -41, -40.7 , 0 );
setMoveKey( spep_2 -3 + 399, 1, -41, -40.7 , 0 );
setMoveKey( spep_2 -3 + 400, 1, -35.7, -24.5 , 0 );
setMoveKey( spep_2 -3 + 401, 1, -35.7, -24.5 , 0 );
setMoveKey( spep_2 -3 + 402, 1, -58.2, -54.7 , 0 );
setMoveKey( spep_2 -3 + 403, 1, -58.2, -54.7 , 0 );
setMoveKey( spep_2 -3 + 404, 1, -43.5, -38.4 , 0 );
setMoveKey( spep_2 -3 + 405, 1, -43.5, -38.4 , 0 );--
setMoveKey( spep_2 -3 + 406, 1, -219.8 -a3, -19.2 , 0 );
setMoveKey( spep_2 -3 + 407, 1, -219.8 -a3, -19.2 , 0 );
setMoveKey( spep_2 -3 + 408, 1, -224.4 -a3, -18.3 , 0 );
setMoveKey( spep_2 -3 + 409, 1, -224.4 -a3, -18.3 , 0 );
setMoveKey( spep_2 -3 + 410, 1, -222.6 -a3, -18 , 0 );
setMoveKey( spep_2 -3 + 411, 1, -222.6 -a3, -18 , 0 );
setMoveKey( spep_2 -3 + 412, 1, -210.5 -a3, -8.2 , 0 );
setMoveKey( spep_2 -3 + 413, 1, -210.5 -a3, -8.2 , 0 );
setMoveKey( spep_2 -3 + 414, 1, -213.4 +30, -10.6 , 0 );
setMoveKey( spep_2 -3 + 415, 1, -213.4 +30, -10.6 , 0 );
setMoveKey( spep_2 -3 + 416, 1, -223.6 +130, -10.6 , 0 );
setMoveKey( spep_2 -3 + 417, 1, -223.6 +130, -10.6 , 0 );
setMoveKey( spep_2 -3 + 418, 1, -454.3 +a4, -24.2 , 0 );
setMoveKey( spep_2 -3 + 419, 1, -454.3 +a4, -24.2 , 0 );
setMoveKey( spep_2 -3 + 420, 1, -1027.2 +a4, -24.2 , 0 );
setMoveKey( spep_2 -3 + 422, 1, -1617.1 +a4, -24.2 , 0 );
setMoveKey( spep_2 -3 + 424, 1, -1615.1 +a4, -24.2 , 0 );
setMoveKey( spep_2 -3 + 426, 1, -1613.1 +a4, -24.2 , 0 );
setMoveKey( spep_2 -3 + 428, 1, -1611.1 +a4, -24.2 , 0 );
setMoveKey( spep_2 -3 + 430, 1, -1609.1 +a4, -24.2 , 0 );
--setMoveKey( spep_2 -3 + 432, 1, 1609.1, -24.2 , 0 );

setScaleKey( spep_2 -3 + 386, 1, 1.4, 1.4 );
setScaleKey( spep_2 -3 + 430, 1, 1.4, 1.4 );

setRotateKey( spep_2 -3 + 386, 1, 0 );
setRotateKey( spep_2 -3 + 430, 1, 0 );

-- ** 音 ** --
--パンチ
SE017 = playSeVer2( spep_2 + 18, 1259, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 18, SE017, 73 );
SE018 = playSeVer2( spep_2 + 24, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE018, 89 );
SE019 = playSeVer2( spep_2 + 24, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE019, 72 );
SE020 = playSeVer2( spep_2 + 26, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE020, 81 );

--オーラ
SE021 = playSeVer2( spep_2 + 46, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE021, 25 );
SE022 = playSeVer2( spep_2 + 46, 1181, "",spep_2 + 170, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 46, SE022, 126 );
SE023 = playSeVer2( spep_2 + 46, 1407, "",spep_2 + 170, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 46, SE023, 158 );
SE024 = playSeVer2( spep_2 + 70, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 70, SE024, 25 );
SE025 = playSeVer2( spep_2 + 94, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE025, 25 );

--俯瞰飛行音
SE026 = playSeVer2( spep_2 + 98, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 98, SE026, 76 );

--向かっていく
SE027 = playSeVer2( spep_2 + 100, 1182, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 104, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104, SE028, 119 );

--俯瞰飛行音
SE029 = playSeVer2( spep_2 + 134, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE029, 71 );
SE030 = playSeVer2( spep_2 + 134, 1304, "", 0, 0, 0, -1);

--飛行音
SE031 = playSeVer2( spep_2 + 134, 1019, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 198, 1019, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 200, 1314, "",spep_2 + 406, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 200, SE033, 73 );
SE037 = playSeVer2( spep_2 + 264, 1019, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 328, 1019, "", 0, 0, 0, -1);

--悟空フレームイン
SE034 = playSeVer2( spep_2 + 230, 1072, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 254, 1116, "",spep_2 + 300, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 254, SE035, 79 );
SE036 = playSeVer2( spep_2 + 260, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE036,  100 );

--正面向かってくる
SE038 = playSeVer2( spep_2 + 302, 44, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 302, 1182, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 306, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 306, SE040, 54 );
setTimeStretch( SE040, 1.33, 30, 4 );

--キック
SE042 = playSeVer2( spep_2 + 372, 1187, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 372, 1153, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 428 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 428;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
--spep_3 = 0;
-- ** ひび割れ ** --
finish_f = entryEffect( spep_3 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_3 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 8, finish_f, 0 );
setEffRotateKey( spep_3 + 112, finish_f, 0 );
setEffAlphaKey( spep_3 + 8, finish_f, 255 );
setEffAlphaKey( spep_3 + 112, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --吹っ飛んで終了 ef_003_bg
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 112, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 112, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 112, finish_b, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_3 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_3 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_3 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_3 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_3 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_3 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_3 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_3 + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 112, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 112, 1, 0 );

changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_3 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_3 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_3 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_3 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_3 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_3 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_3 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_3 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_3 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_3 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_3 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_3 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_3 + 0, 1, -122.8 - 232 );
setRotateKey( spep_3 + 2, 1, -122.8 );
setRotateKey( spep_3 -3 + 6, 1, -1 );
setRotateKey( spep_3 -3 + 8, 1, 120.7 );
setRotateKey( spep_3 -3 + 10, 1, 242.5 );
setRotateKey( spep_3 -3 + 12, 1, 364.3 );
setRotateKey( spep_3 -3 + 14, 1, 486 );
setRotateKey( spep_3 -3 + 16, 1, 607.8 );
setRotateKey( spep_3 -3 + 18, 1, 729.5 );
setRotateKey( spep_3 + 112, 1, 729.5 );

-- ** 音 ** --
--画面割れ
SE044 = playSeVer2( spep_3 + 14, 1054, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_3 + 14, 1025, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 108 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- -- ** ダメージ表示 ** --
dealDamage( spep_3 + 6 ); -- ダメージ表示フレーム
endPhase( spep_3 + 108 ); -- 終了フレーム

end