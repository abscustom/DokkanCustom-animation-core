--1024650:LR合体ザマス_裁きの刃_sp2397
--sp_effect_a3_00094

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
SP_01 = 160149;  --開始→初弾の背景    ef_001_bg
SP_02 = 160151;  --開始→初弾のキャラ   ef_001_ch
SP_03 = 160155;  --刃エフェクト→爆風   ef_002_ch
SP_04 = 160153;  --刃エフェクト→爆風の背景    ef_002_bg
SP_05 = 160170;  --ラストガラスひび割れ   ef_003_glass
SP_06 = 160157;  --ラスト ef_003_bg

--敵側
SP_01r = 160150;  --開始→初弾の背景：敵側 ef_001_bg_r
SP_02r = 160152;  --開始→初弾のキャラ：敵側    ef_001_ch_r
SP_03r = 160156;  --刃エフェクト→爆風：敵側    ef_002_ch_r
SP_04r = 160154;  --刃エフェクト→爆風：の背景敵側 ef_002_bg_r


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
-- 開始→初弾→敵着弾のキャラ(316F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_02, 204, 0x100, -1, 0, 0, 0 );  --開始→初弾→敵着弾のキャラ ef_001_ch
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 204, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 204, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 204, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 204 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 204, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_01, 204, 0x80, -1, 0, 0, 0 );  --開始→初弾→敵着弾の背景  ef_001_bg
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 204, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 204, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 204, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 204 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 204, first_b, 0 );

spep_x = spep_0 + 8;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 155, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 155, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 155, 515.5 , 0 );
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

-- ** 書き文字エントリー ** --
ctbibibi = entryEffectLife( spep_0 -3 + 146,  10025, 60, 0x100, -1, 0, 120.7, 311.1 );  --ビビビッ
setEffMoveKey( spep_0 -3 + 146, ctbibibi, 120.7, 311.1 , 0 );
setEffMoveKey( spep_0 -3 + 148, ctbibibi, 134.9, 305.2 , 0 );
setEffMoveKey( spep_0 -3 + 150, ctbibibi, 111.9, 309.9 , 0 );
setEffMoveKey( spep_0 -3 + 152, ctbibibi, 134.1, 307.1 , 0 );
setEffMoveKey( spep_0 -3 + 154, ctbibibi, 158.4, 331.8 , 0 );
setEffMoveKey( spep_0 -3 + 156, ctbibibi, 121.4, 320 , 0 );
setEffMoveKey( spep_0 -3 + 158, ctbibibi, 147.3, 341.9 , 0 );
setEffMoveKey( spep_0 -3 + 160, ctbibibi, 119.3, 327.3 , 0 );
setEffMoveKey( spep_0 -3 + 162, ctbibibi, 151.4, 332.8 , 0 );
setEffMoveKey( spep_0 -3 + 164, ctbibibi, 120.8, 318.1 , 0 );
setEffMoveKey( spep_0 -3 + 166, ctbibibi, 149.6, 333.5 , 0 );
setEffMoveKey( spep_0 -3 + 168, ctbibibi, 123, 315 , 0 );
setEffMoveKey( spep_0 -3 + 170, ctbibibi, 150.1, 335.5 , 0 );
setEffMoveKey( spep_0 -3 + 172, ctbibibi, 123.3, 316.9 , 0 );
setEffMoveKey( spep_0 -3 + 174, ctbibibi, 140.8, 334.6 , 0 );
setEffMoveKey( spep_0 -3 + 176, ctbibibi, 152.5, 333.8 , 0 );
setEffMoveKey( spep_0 -3 + 178, ctbibibi, 140.8, 334.6 , 0 );
setEffMoveKey( spep_0 -3 + 180, ctbibibi, 141.7, 321.1 , 0 );
setEffMoveKey( spep_0 -3 + 182, ctbibibi, 120.7, 311.1 , 0 );
setEffMoveKey( spep_0 -3 + 184, ctbibibi, 134.9, 305.2 , 0 );
setEffMoveKey( spep_0 -3 + 186, ctbibibi, 111.9, 309.9 , 0 );
setEffMoveKey( spep_0 -3 + 188, ctbibibi, 134.1, 307.1 , 0 );
setEffMoveKey( spep_0 -3 + 190, ctbibibi, 158.4, 331.8 , 0 );
setEffMoveKey( spep_0 -3 + 192, ctbibibi, 121.4, 320 , 0 );
setEffMoveKey( spep_0 -3 + 194, ctbibibi, 147.3, 341.9 , 0 );
setEffMoveKey( spep_0 -3 + 196, ctbibibi, 119.3, 327.3 , 0 );
setEffMoveKey( spep_0 -3 + 198, ctbibibi, 151.4, 332.8 , 0 );
setEffMoveKey( spep_0 -3 + 200, ctbibibi, 120.8, 318.1 , 0 );
setEffMoveKey( spep_0 -3 + 202, ctbibibi, 149.6, 333.5 , 0 );
setEffMoveKey( spep_0 -3 + 204, ctbibibi, 123, 315 , 0 );
setEffMoveKey( spep_0 -3 + 206, ctbibibi, 150.1, 335.5 , 0 );

setEffScaleKey( spep_0 -3 + 146, ctbibibi, 1.92, 1.92 );
setEffScaleKey( spep_0 -3 + 206, ctbibibi, 1.92, 1.92 );

setEffRotateKey( spep_0 -3 + 146, ctbibibi, 10.7 );
setEffRotateKey( spep_0 -3 + 206, ctbibibi, 10.7 );

setEffAlphaKey( spep_0 -3 + 146, ctbibibi, 255 );
setEffAlphaKey( spep_0 -3 + 206, ctbibibi, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 96, 1, 0 );
changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 185.1, 61.2 , 0 );
setMoveKey( spep_0 + 1, 1, 185.3, 61 , 0 );
setMoveKey( spep_0 + 2, 1, 185.6, 60.9 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 185.8, 60.7 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 185.8, 60.7 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 186.1, 60.6 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 186.1, 60.6 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 186.3, 60.5 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 186.5, 60.3 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 186.8, 60.2 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 187, 60.1 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 187.3, 59.9 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 187.5, 59.8 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 187.7, 59.7 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 188, 59.5 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 188.2, 59.4 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 188.4, 59.3 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 188.7, 59.1 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 188.9, 59 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 189.2, 58.9 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 189.4, 58.7 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 189.6, 58.6 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 189.9, 58.5 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 190.1, 58.3 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 190.4, 58.2 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 190.6, 58.1 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 190.8, 57.9 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 191.1, 57.8 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 191.3, 57.7 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 191.6, 57.5 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 191.8, 57.4 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 192, 57.3 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 192.3, 57.1 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 192.5, 57 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 192.8, 56.9 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 193, 56.7 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 193.2, 56.6 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 193.5, 56.5 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 193.7, 56.3 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 194, 56.2 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 194.2, 56.1 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 194.4, 55.9 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 194.7, 55.8 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 194.9, 55.7 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 195.1, 55.5 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 195.4, 55.4 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 195.6, 55.3 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 195.9, 55.1 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 196.1, 55 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 196.3, 54.9 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 196.3, 54.9 , 0 );

setScaleKey( spep_0 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 1, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 2, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 3, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 4, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 5, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 6, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 96, 1, 0.6, 0.6 );

r1 = 5;
setRotateKey( spep_0 + 0, 1, 9 -r1 );
setRotateKey( spep_0 + 1, 1, 9 -r1 );
setRotateKey( spep_0 + 2, 1, 9 -r1 );
setRotateKey( spep_0 + 3, 1, 9 -r1 );
setRotateKey( spep_0 + 4, 1, 9 -r1 );
setRotateKey( spep_0 + 5, 1, 9 -r1 );
setRotateKey( spep_0 + 6, 1, 9 -r1 );
setRotateKey( spep_0 -3 + 96, 1, 9 -r1 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--画面遷移
SE003 = playSeVer2( spep_0 + 80, 1072, "", 0, 14, 0, -1);
setStartTimeMs( SE003,  200 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 316 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 128 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
   
    pauseAll( SP_dodge, 67);
    
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

-- ** 音 ** --
--連続気弾発射
SE004 = playSeVer2( spep_0 + 136, 1177, "",spep_0 + 220, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 136, SE004, 61 );
SE005 = playSeVer2( spep_0 + 138, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE005, 79 );
SE006 = playSeVer2( spep_0 + 138, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE006, 79 );
SE008 = playSeVer2( spep_0 + 142, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE008, 73 );
SE009 = playSeVer2( spep_0 + 152, 1016, "",spep_0 + 168, 0, 6, -1);
SE010 = playSeVer2( spep_0 + 158, 1016, "",spep_0 + 174, 0, 6, -1);
SE011 = playSeVer2( spep_0 + 166, 1016, "",spep_0 + 180, 0, 4, -1);
SE012 = playSeVer2( spep_0 + 172, 1016, "",spep_0 + 188, 0, 6, -1);
SE013 = playSeVer2( spep_0 + 180, 1016, "",spep_0 + 196, 0, 6, -1);
SE014 = playSeVer2( spep_0 + 188, 1016, "",spep_0 + 202, 0, 4, -1);
SE015 = playSeVer2( spep_0 + 194, 1016, "",spep_0 + 210, 0, 6, -1);

--気弾を撃つベース
SE007 = playSeVer2( spep_0 + 138, 1357, "",spep_0 + 216, 0, 8, 0.6);

-- ** 次の準備 ** --
spep_1 = spep_0 + 204;


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

--気弾を撃つベース
SE017 = playSeVer2( spep_1 + 88, 1357, "", 0, 6, 0, -1);
setStartTimeMs( SE017,  267 );

--連続爆発
SE018 = playSeVer2( spep_1 + 88, 1023, "", 0, 0, 0, -1);

--連続気弾発射
SE019 = playSeVer2( spep_1 + 88, 1016, "",spep_1 + 102, 0, 6, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 刃エフェクト→爆風(102F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
blade_f = entryEffectLife( spep_2 + 0, SP_03, 100, 0x100, -1, 0, 0, 0 );  --刃エフェクト→爆風   ef_002_ch
setEffMoveKey( spep_2 + 0, blade_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, blade_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, blade_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, blade_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, blade_f, 0 );
setEffRotateKey( spep_2 + 100, blade_f, 0 );
setEffAlphaKey( spep_2 + 0, blade_f, 255 );
setEffAlphaKey( spep_2 + 100 -1, blade_f, 255 );
setEffAlphaKey( spep_2 + 100, blade_f, 0 );

blade_b = entryEffectLife( spep_2 + 0, SP_04, 100, 0x80, -1, 0, 0, 0 );  --刃エフェクト→爆風の背景    ef_002_bg
setEffMoveKey( spep_2 + 0, blade_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, blade_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, blade_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, blade_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, blade_b, 0 );
setEffRotateKey( spep_2 + 100, blade_b, 0 );
setEffAlphaKey( spep_2 + 0, blade_b, 255 );
setEffAlphaKey( spep_2 + 100 -1, blade_b, 255 );
setEffAlphaKey( spep_2 + 100, blade_b, 0 );

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_2 -3 + 8,  10014, 96-2, 0x100, -1, 0, 75.9, 373.5 ); --ズドドドッ
setEffMoveKey( spep_2 -3 + 8, ctzudodo, 75.9, 373.5 , 0 );
setEffMoveKey( spep_2 -3 + 10, ctzudodo, 91, 376.2 , 0 );
setEffMoveKey( spep_2 -3 + 12, ctzudodo, 69.1, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 14, ctzudodo, 89.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 16, ctzudodo, 96.6, 411.3 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctzudodo, 71.7, 381.4 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctzudodo, 81.8, 413.7 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctzudodo, 66, 386.5 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctzudodo, 90.1, 408.3 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctzudodo, 72.2, 379.5 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctzudodo, 88.2, 407.9 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctzudodo, 75.7, 378.1 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctzudodo, 87.6, 409.9 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctzudodo, 74.9, 379.8 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctzudodo, 80.2, 404.1 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctzudodo, 90.5, 409.8 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctzudodo, 80.2, 404.1 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctzudodo, 88.2, 393.2 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctzudodo, 75.9, 373.5 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctzudodo, 91, 376.2 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctzudodo, 69.1, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctzudodo, 89.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctzudodo, 96.6, 411.3 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctzudodo, 71.7, 381.4 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctzudodo, 81.8, 413.7 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctzudodo, 66, 386.5 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctzudodo, 90.1, 408.3 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctzudodo, 72.2, 379.5 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctzudodo, 88.2, 407.9 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctzudodo, 75.7, 378.1 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctzudodo, 87.6, 409.9 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctzudodo, 74.9, 379.8 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctzudodo, 80.2, 404.1 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctzudodo, 90.5, 409.8 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctzudodo, 80.2, 404.1 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctzudodo, 88.2, 393.2 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctzudodo, 75.9, 373.5 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctzudodo, 91, 376.2 , 0 );
setEffMoveKey( spep_2 -3 + 84, ctzudodo, 69.1, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 86, ctzudodo, 89.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctzudodo, 96.6, 411.3 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctzudodo, 71.7, 381.4 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctzudodo, 81.8, 413.7 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctzudodo, 66, 386.5 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctzudodo, 90.1, 408.3 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctzudodo, 72.2, 379.5 , 0 );
setEffMoveKey( spep_2 -3 + 100, ctzudodo, 88.2, 407.9 , 0 );
setEffMoveKey( spep_2 -3 + 102, ctzudodo, 75.7, 378.1 , 0 );
setEffMoveKey( spep_2 -5 + 104, ctzudodo, 87.6, 409.9 , 0 );

setEffScaleKey( spep_2 -3 + 8, ctzudodo, 2.048, 2.048 );
setEffScaleKey( spep_2 -5 + 104, ctzudodo, 2.048, 2.048 );

setEffRotateKey( spep_2 -3 + 8, ctzudodo, 48.7 );
setEffRotateKey( spep_2 -5 + 104, ctzudodo, 48.7 );

setEffAlphaKey( spep_2 -3 + 8, ctzudodo, 255 );
setEffAlphaKey( spep_2 -5 + 104, ctzudodo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
--setDisp( spep_2 -3 + 105, 1, 0 );
changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 -3 + 10, 1, 106 );

setMoveKey( spep_2 + 0, 1, 201.5, -62.1 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 201.5, -62.1 , 0 );
m1 = 10;
setMoveKey( spep_2 -3 + 10, 1, 159.5 + 3.1 +m1, -80.3 - 4.7 -m1 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 159.5 - 3.1 -m1, -80.3 + 4.6 +m1 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 159.5 - 3.1, -80.3 - 6.2 -m1 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 159.5 + 0, -80.3 - 1.5 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 159.5 - 4.7 -m1, -80.3 + 4.1 +m1 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 159.5 + 0, -80.3 - 4.7 -m1 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 159.5 - 3.1 -m1, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 159.5 - 1  , -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 159.5 + 4.7 +m1, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 159.5 + 4.6, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 159.5 + 0.6 +m1, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 159.5 + 1.5 +m1, -80.3 - 4.6 -m1 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 159.5 + 0.5, -80.3 + 4.6 +m1 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 159.5 + 0.5 +m1, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 159.5 - 2.5 -m1, -80.3 + 2.6 +m1 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 159.5 - 0.6, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 159.5 + 1.6 +m1, -80.3 + 4.6 +m1 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 159.5 + 0, -80.3 - 4.6 -m1 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 159.5 + 1.5 +m1, -80.3 + 0.4 +m1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 159.5 - 3.1 -m1, -80.3 + 1.6 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 159.5 + 0, -80.3 - 1.6 -m1 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 159.5 + 1.6 +m1, -80.3 - 4.7 -m1 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 159.5 - 3.1 -m1, -80.3 + 4.6 +m1 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 159.5 + 0, -80.3 - 6.2 -m1 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 159.5 + 0 +m1, -80.3 - 1.5 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 159.5 + 0, -80.3 + 4.1 +m1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 159.5 + 3.1 +m1, -80.3 - 4.7 -m1 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 159.5 - 4.7 -m1, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 159.5 + 2.6 +m1, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 159.5 + 0, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 159.5 + 3.1 +m1, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 159.5 - 3.1 -m1, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 159.5 - 3.1, -80.3 - 4.6 -m1 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 159.5 + 0, -80.3 + 4.6 +m1 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 159.5 - 4.7 -m1, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 159.5 + 0 +m1, -80.3 + 2.6 +m1 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 159.5 - 3.1 -m1, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 159.5 - 1, -80.3 + 4.6  +m1, 0 );
setMoveKey( spep_2 -3 + 86, 1, 159.5 + 4.7 +m1, -80.3 - 4.6 -m1 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 159.5 + 4.6, -80.3 + 0.4 +m1 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 159.5 + 0.6 +m1, -80.3 + 1.6 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 159.5 + 1.5, -80.3 - 1.6 -m1 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 159.5 + 0.5 +m1, -80.3 - 0 +m1 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 159.5 + 0.5, -80.3 + 1.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 159.5 - 2.5 -m1, -80.3 - 0 -m1 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 159.5 - 0.6, -80.3 - 2.1 +m1 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 159.5 + 1.6 +m1, -80.3 - 0 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 159.5 + 0, -80.3 - 1.6 +m1 , 0 );--

setScaleKey( spep_2 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_2 -5 + 104, 1, 1.2, 1.2 );

setRotateKey( spep_2 + 0, 1, 11.5 );
setRotateKey( spep_2 -3 + 9, 1, 11.5 );
setRotateKey( spep_2 -3 + 10, 1, -53.7 );
setRotateKey( spep_2 -5 + 104, 1, -53.7 );

-- ** 音 ** --
--連続気弾発射
SE020 = playSeVer2( spep_2 + 2, 1016, "",spep_2 + 16, 0, 6, -1);
SE022 = playSeVer2( spep_2 + 10, 1016, "",spep_2 + 24, 0, 4, -1);
SE023 = playSeVer2( spep_2 + 18, 1016, "",spep_2 + 30, 0, 4, -1);
SE024 = playSeVer2( spep_2 + 26, 1016, "",spep_2 + 38, 0, 4, -1);
SE026 = playSeVer2( spep_2 + 34, 1016, "",spep_2 + 46, 0, 6, -1);
SE027 = playSeVer2( spep_2 + 42, 1016, "",spep_2 + 56, 0, 6, -1);
SE028 = playSeVer2( spep_2 + 50, 1016, "",spep_2 + 62, 0, 4, -1);
SE029 = playSeVer2( spep_2 + 56, 1016, "",spep_2 + 70, 0, 6, -1);
SE030 = playSeVer2( spep_2 + 64, 1016, "",spep_2 + 78, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 64, SE030, 81 );
SE031 = playSeVer2( spep_2 + 70, 1016, "",spep_2 + 84, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 70, SE031, 79 );

--連続爆発
SE021 = playSeVer2( spep_2 + 10, 1011, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 32, 1024, "", 0, 0, 0, -1);

--敵飛んでいく
SE032 = playSeVer2( spep_2 + 70, 1121, "",spep_2 + 146, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 70, SE032, 77 );
SE033 = playSeVer2( spep_2 + 70, 1183, "",spep_2 + 146, 0, 18, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 102 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 100;


------------------------------------------------------
-- ラスト(126F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --ラスト ef_003_bg
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 146, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 146, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 146, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --ラスト ef_003_bg
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 146, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 146, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 146, finish_b, 255 );

-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_3 -3 + 14 +16,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 -3 + 14 +16, shuchusenga, 32, 25 );

setEffMoveKey( spep_3 -3 + 14 +16, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 46 +16, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 14 +16, shuchusenga, 1, 1 );
setEffScaleKey( spep_3 -3 + 46 +16, shuchusenga, 1, 1 );

setEffRotateKey( spep_3 -3 + 14 +16, shuchusenga, 0 );
setEffRotateKey( spep_3 -3 + 46 +16, shuchusenga, 0 );

setEffAlphaKey( spep_3 -3 + 14 +16, shuchusenga, 255 );
setEffAlphaKey( spep_3 -3 + 28 +16, shuchusenga, 255 );
setEffAlphaKey( spep_3 -3 + 30 +16, shuchusenga, 252 );
setEffAlphaKey( spep_3 -3 + 32 +16, shuchusenga, 242 );
setEffAlphaKey( spep_3 -3 + 34 +16, shuchusenga, 227 );
setEffAlphaKey( spep_3 -3 + 36 +16, shuchusenga, 205 );
setEffAlphaKey( spep_3 -3 + 38 +16, shuchusenga, 176 );
setEffAlphaKey( spep_3 -3 + 40 +16, shuchusenga, 142 );
setEffAlphaKey( spep_3 -3 + 42 +16, shuchusenga, 101 );
setEffAlphaKey( spep_3 -3 + 44 +16, shuchusenga, 54 );
setEffAlphaKey( spep_3 -3 + 46 +16, shuchusenga, 0 );

-- ** 黒い集中線 ** --
kuroshuchusenga = entryEffectLife( spep_3 -3 + 14 +16,  1657, 119, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 -3 + 14 +16, kuroshuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 149, kuroshuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 14 +16, kuroshuchusenga, 1, 1 );
setEffScaleKey( spep_3 -3 + 149, kuroshuchusenga, 1, 1 );

setEffRotateKey( spep_3 -3 + 14 +16, kuroshuchusenga, 0 );
setEffRotateKey( spep_3 -3 + 149, kuroshuchusenga, 0 );

setEffAlphaKey( spep_3 -3 + 14 +16, kuroshuchusenga, 255 );
setEffAlphaKey( spep_3 -3 + 149, kuroshuchusenga, 255 );

-- ** 書き文字エントリー ** --
drawtext_gatsu = entryEffectLife( spep_3 -3 + 30,  10005, 119, 0x100, -1, 0, -91.2, 72.7 );  --ガッ
a = 35;
b = 90;
setEffMoveKey( spep_3 -3 + 30, drawtext_gatsu, -91.2 +a, 72.7 -b , 0 );
setEffMoveKey( spep_3 -3 + 32, drawtext_gatsu, -100 +a, 69.4 -b , 0 );
setEffMoveKey( spep_3 -3 + 34, drawtext_gatsu, -93.7 +a, 70.3 -b , 0 );
setEffMoveKey( spep_3 -3 + 36, drawtext_gatsu, -97.7 +a, 69.8 -b , 0 );
setEffMoveKey( spep_3 -3 + 149, drawtext_gatsu, -97.7 +a, 69.8 -b , 0 );

setEffScaleKey( spep_3 -3 + 30, drawtext_gatsu, 3.42, 3.42 );
setEffScaleKey( spep_3 -3 + 32, drawtext_gatsu, 3.8, 3.8 );
setEffScaleKey( spep_3 -3 + 34, drawtext_gatsu, 3.56, 3.56 );
setEffScaleKey( spep_3 -3 + 36, drawtext_gatsu, 3.68, 3.68 );
setEffScaleKey( spep_3 -3 + 149, drawtext_gatsu, 3.68, 3.68 );

setEffRotateKey( spep_3 -3 + 30, drawtext_gatsu, -23 );
setEffRotateKey( spep_3 -3 + 32, drawtext_gatsu, -23 );
setEffRotateKey( spep_3 -3 + 34, drawtext_gatsu, -23 );
setEffRotateKey( spep_3 -3 + 36, drawtext_gatsu, -23 );
setEffRotateKey( spep_3 -3 + 149, drawtext_gatsu, -23 );

setEffAlphaKey( spep_3 -3 + 30, drawtext_gatsu, 255 );
setEffAlphaKey( spep_3 -3 + 32, drawtext_gatsu, 255 );
setEffAlphaKey( spep_3 -3 + 34, drawtext_gatsu, 255 );
setEffAlphaKey( spep_3 -3 + 36, drawtext_gatsu, 255 );
setEffAlphaKey( spep_3 -3 + 149, drawtext_gatsu, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 149, 1, 0 );
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, 32.8, 16.6 , 0 );
setMoveKey( spep_3 + 1, 1, 33.4, 16.4 , 0 );
setMoveKey( spep_3 + 2, 1, 35.6, 15.6 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 40, 12.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 45.6, 2.4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 45.7, -16.2 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 30.1, -35.4 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 5.5, -33.2 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 11, -11.7 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 48.9, -33.5 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 23.1, -95.4 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -28, -62.1 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 46.6, -59.5 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -6.4, -160.3 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -24.4, -65.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -25.9, -61.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -24.4, -65.6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -25.9, -61.6 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -24.4, -65.6 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -25.9, -61.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -24.4, -65.6 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -25.9, -61.6 , 0 );
setMoveKey( spep_3 -3 + 149, 1, -25.9, -61.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 1, 1, 0.23, 0.23 );
setScaleKey( spep_3 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_3 -3 + 6, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 8, 1, 0.33, 0.33 );
setScaleKey( spep_3 -3 + 10, 1, 0.39, 0.39 );
setScaleKey( spep_3 -3 + 12, 1, 0.46, 0.46 );
setScaleKey( spep_3 -3 + 14, 1, 0.54, 0.54 );
setScaleKey( spep_3 -3 + 16, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 18, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 20, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 22, 1, 1.01, 1.01 );
setScaleKey( spep_3 -3 + 24, 1, 1.16, 1.16 );
setScaleKey( spep_3 -3 + 26, 1, 1.32, 1.32 );
setScaleKey( spep_3 -3 + 28, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 30, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 32, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 34, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 36, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 38, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 40, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 42, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 149, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 1, 1, 5.5 );
setRotateKey( spep_3 + 2, 1, 22 );
setRotateKey( spep_3 -3 + 6, 1, 49.6 );
setRotateKey( spep_3 -3 + 8, 1, 88.2 );
setRotateKey( spep_3 -3 + 10, 1, 137.8 );
setRotateKey( spep_3 -3 + 12, 1, 198.4 );
setRotateKey( spep_3 -3 + 14, 1, 270 );
setRotateKey( spep_3 -3 + 16, 1, 352.7 );
setRotateKey( spep_3 -3 + 18, 1, 446.3 );
setRotateKey( spep_3 -3 + 20, 1, 551 );
setRotateKey( spep_3 -3 + 22, 1, 666.7 );
setRotateKey( spep_3 -3 + 24, 1, 793.5 );
setRotateKey( spep_3 -3 + 26, 1, 931.2 );
setRotateKey( spep_3 -3 + 28, 1, 1080 );
setRotateKey( spep_3 -3 + 149, 1, 1080 );

-- ** 音 ** --
--画面割れる
SE034 = playSeVer2( spep_3 + 20, 1054, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_3 + 20, 1025, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 149 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 26 );
endPhase( spep_3 + 136 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開始→初弾→敵着弾のキャラ(316F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_02r, 204, 0x100, -1, 0, 0, 0 );  --開始→初弾→敵着弾のキャラ ef_001_ch
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 204, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 204, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 204, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 204 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 204, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_01r, 204, 0x80, -1, 0, 0, 0 );  --開始→初弾→敵着弾の背景  ef_001_bg
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 204, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 204, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 204, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 204 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 204, first_b, 0 );

spep_x = spep_0 + 8;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
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

-- ** 書き文字エントリー ** --
ctbibibi = entryEffectLife( spep_0 -3 + 146,  10025, 60, 0x100, -1, 0, 120.7, 311.1 );  --ビビビッ
setEffMoveKey( spep_0 -3 + 146, ctbibibi, 120.7, 311.1 , 0 );
setEffMoveKey( spep_0 -3 + 148, ctbibibi, 134.9, 305.2 , 0 );
setEffMoveKey( spep_0 -3 + 150, ctbibibi, 111.9, 309.9 , 0 );
setEffMoveKey( spep_0 -3 + 152, ctbibibi, 134.1, 307.1 , 0 );
setEffMoveKey( spep_0 -3 + 154, ctbibibi, 158.4, 331.8 , 0 );
setEffMoveKey( spep_0 -3 + 156, ctbibibi, 121.4, 320 , 0 );
setEffMoveKey( spep_0 -3 + 158, ctbibibi, 147.3, 341.9 , 0 );
setEffMoveKey( spep_0 -3 + 160, ctbibibi, 119.3, 327.3 , 0 );
setEffMoveKey( spep_0 -3 + 162, ctbibibi, 151.4, 332.8 , 0 );
setEffMoveKey( spep_0 -3 + 164, ctbibibi, 120.8, 318.1 , 0 );
setEffMoveKey( spep_0 -3 + 166, ctbibibi, 149.6, 333.5 , 0 );
setEffMoveKey( spep_0 -3 + 168, ctbibibi, 123, 315 , 0 );
setEffMoveKey( spep_0 -3 + 170, ctbibibi, 150.1, 335.5 , 0 );
setEffMoveKey( spep_0 -3 + 172, ctbibibi, 123.3, 316.9 , 0 );
setEffMoveKey( spep_0 -3 + 174, ctbibibi, 140.8, 334.6 , 0 );
setEffMoveKey( spep_0 -3 + 176, ctbibibi, 152.5, 333.8 , 0 );
setEffMoveKey( spep_0 -3 + 178, ctbibibi, 140.8, 334.6 , 0 );
setEffMoveKey( spep_0 -3 + 180, ctbibibi, 141.7, 321.1 , 0 );
setEffMoveKey( spep_0 -3 + 182, ctbibibi, 120.7, 311.1 , 0 );
setEffMoveKey( spep_0 -3 + 184, ctbibibi, 134.9, 305.2 , 0 );
setEffMoveKey( spep_0 -3 + 186, ctbibibi, 111.9, 309.9 , 0 );
setEffMoveKey( spep_0 -3 + 188, ctbibibi, 134.1, 307.1 , 0 );
setEffMoveKey( spep_0 -3 + 190, ctbibibi, 158.4, 331.8 , 0 );
setEffMoveKey( spep_0 -3 + 192, ctbibibi, 121.4, 320 , 0 );
setEffMoveKey( spep_0 -3 + 194, ctbibibi, 147.3, 341.9 , 0 );
setEffMoveKey( spep_0 -3 + 196, ctbibibi, 119.3, 327.3 , 0 );
setEffMoveKey( spep_0 -3 + 198, ctbibibi, 151.4, 332.8 , 0 );
setEffMoveKey( spep_0 -3 + 200, ctbibibi, 120.8, 318.1 , 0 );
setEffMoveKey( spep_0 -3 + 202, ctbibibi, 149.6, 333.5 , 0 );
setEffMoveKey( spep_0 -3 + 204, ctbibibi, 123, 315 , 0 );
setEffMoveKey( spep_0 -3 + 206, ctbibibi, 150.1, 335.5 , 0 );

setEffScaleKey( spep_0 -3 + 146, ctbibibi, 1.92, 1.92 );
setEffScaleKey( spep_0 -3 + 206, ctbibibi, 1.92, 1.92 );

setEffRotateKey( spep_0 -3 + 146, ctbibibi, 10.7 );
setEffRotateKey( spep_0 -3 + 206, ctbibibi, 10.7 );

setEffAlphaKey( spep_0 -3 + 146, ctbibibi, 255 );
setEffAlphaKey( spep_0 -3 + 206, ctbibibi, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 96, 1, 0 );
changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 185.1, 61.2 , 0 );
setMoveKey( spep_0 + 1, 1, 185.3, 61 , 0 );
setMoveKey( spep_0 + 2, 1, 185.6, 60.9 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 185.8, 60.7 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 185.8, 60.7 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 186.1, 60.6 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 186.1, 60.6 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 186.3, 60.5 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 186.5, 60.3 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 186.8, 60.2 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 187, 60.1 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 187.3, 59.9 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 187.5, 59.8 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 187.7, 59.7 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 188, 59.5 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 188.2, 59.4 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 188.4, 59.3 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 188.7, 59.1 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 188.9, 59 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 189.2, 58.9 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 189.4, 58.7 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 189.6, 58.6 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 189.9, 58.5 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 190.1, 58.3 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 190.4, 58.2 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 190.6, 58.1 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 190.8, 57.9 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 191.1, 57.8 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 191.3, 57.7 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 191.6, 57.5 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 191.8, 57.4 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 192, 57.3 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 192.3, 57.1 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 192.5, 57 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 192.8, 56.9 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 193, 56.7 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 193.2, 56.6 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 193.5, 56.5 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 193.7, 56.3 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 194, 56.2 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 194.2, 56.1 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 194.4, 55.9 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 194.7, 55.8 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 194.9, 55.7 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 195.1, 55.5 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 195.4, 55.4 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 195.6, 55.3 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 195.9, 55.1 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 196.1, 55 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 196.3, 54.9 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 196.3, 54.9 , 0 );

setScaleKey( spep_0 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 1, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 2, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 3, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 4, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 5, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 6, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 96, 1, 0.6, 0.6 );

r1 = 5;
setRotateKey( spep_0 + 0, 1, 9 -r1 );
setRotateKey( spep_0 + 1, 1, 9 -r1 );
setRotateKey( spep_0 + 2, 1, 9 -r1 );
setRotateKey( spep_0 + 3, 1, 9 -r1 );
setRotateKey( spep_0 + 4, 1, 9 -r1 );
setRotateKey( spep_0 + 5, 1, 9 -r1 );
setRotateKey( spep_0 + 6, 1, 9 -r1 );
setRotateKey( spep_0 -3 + 96, 1, 9 -r1 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--画面遷移
SE003 = playSeVer2( spep_0 + 80, 1072, "", 0, 14, 0, -1);
setStartTimeMs( SE003,  200 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 316 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 128 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
   
    pauseAll( SP_dodge, 67);
    
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

-- ** 音 ** --
--連続気弾発射
SE004 = playSeVer2( spep_0 + 136, 1177, "",spep_0 + 220, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 136, SE004, 61 );
SE005 = playSeVer2( spep_0 + 138, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE005, 79 );
SE006 = playSeVer2( spep_0 + 138, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE006, 79 );
SE008 = playSeVer2( spep_0 + 142, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE008, 73 );
SE009 = playSeVer2( spep_0 + 152, 1016, "",spep_0 + 168, 0, 6, -1);
SE010 = playSeVer2( spep_0 + 158, 1016, "",spep_0 + 174, 0, 6, -1);
SE011 = playSeVer2( spep_0 + 166, 1016, "",spep_0 + 180, 0, 4, -1);
SE012 = playSeVer2( spep_0 + 172, 1016, "",spep_0 + 188, 0, 6, -1);
SE013 = playSeVer2( spep_0 + 180, 1016, "",spep_0 + 196, 0, 6, -1);
SE014 = playSeVer2( spep_0 + 188, 1016, "",spep_0 + 202, 0, 4, -1);
SE015 = playSeVer2( spep_0 + 194, 1016, "",spep_0 + 210, 0, 6, -1);

--気弾を撃つベース
SE007 = playSeVer2( spep_0 + 138, 1357, "",spep_0 + 216, 0, 8, 0.6);

-- ** 次の準備 ** --
spep_1 = spep_0 + 204;


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

--気弾を撃つベース
SE017 = playSeVer2( spep_1 + 88, 1357, "", 0, 6, 0, -1);
setStartTimeMs( SE017,  267 );

--連続爆発
SE018 = playSeVer2( spep_1 + 88, 1023, "", 0, 0, 0, -1);

--連続気弾発射
SE019 = playSeVer2( spep_1 + 88, 1016, "",spep_1 + 102, 0, 6, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 刃エフェクト→爆風(102F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
blade_f = entryEffectLife( spep_2 + 0, SP_03, 100, 0x100, -1, 0, 0, 0 );  --刃エフェクト→爆風   ef_002_ch
setEffMoveKey( spep_2 + 0, blade_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, blade_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, blade_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, blade_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, blade_f, 0 );
setEffRotateKey( spep_2 + 100, blade_f, 0 );
setEffAlphaKey( spep_2 + 0, blade_f, 255 );
setEffAlphaKey( spep_2 + 100 -1, blade_f, 255 );
setEffAlphaKey( spep_2 + 100, blade_f, 0 );

blade_b = entryEffectLife( spep_2 + 0, SP_04, 100, 0x80, -1, 0, 0, 0 );  --刃エフェクト→爆風の背景    ef_002_bg
setEffMoveKey( spep_2 + 0, blade_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, blade_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, blade_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, blade_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, blade_b, 0 );
setEffRotateKey( spep_2 + 100, blade_b, 0 );
setEffAlphaKey( spep_2 + 0, blade_b, 255 );
setEffAlphaKey( spep_2 + 100 -1, blade_b, 255 );
setEffAlphaKey( spep_2 + 100, blade_b, 0 );

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_2 -3 + 8,  10014, 96-2, 0x100, -1, 0, 75.9, 373.5 ); --ズドドドッ
setEffMoveKey( spep_2 -3 + 8, ctzudodo, 75.9, 373.5 , 0 );
setEffMoveKey( spep_2 -3 + 10, ctzudodo, 91, 376.2 , 0 );
setEffMoveKey( spep_2 -3 + 12, ctzudodo, 69.1, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 14, ctzudodo, 89.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 16, ctzudodo, 96.6, 411.3 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctzudodo, 71.7, 381.4 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctzudodo, 81.8, 413.7 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctzudodo, 66, 386.5 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctzudodo, 90.1, 408.3 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctzudodo, 72.2, 379.5 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctzudodo, 88.2, 407.9 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctzudodo, 75.7, 378.1 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctzudodo, 87.6, 409.9 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctzudodo, 74.9, 379.8 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctzudodo, 80.2, 404.1 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctzudodo, 90.5, 409.8 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctzudodo, 80.2, 404.1 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctzudodo, 88.2, 393.2 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctzudodo, 75.9, 373.5 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctzudodo, 91, 376.2 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctzudodo, 69.1, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctzudodo, 89.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctzudodo, 96.6, 411.3 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctzudodo, 71.7, 381.4 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctzudodo, 81.8, 413.7 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctzudodo, 66, 386.5 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctzudodo, 90.1, 408.3 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctzudodo, 72.2, 379.5 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctzudodo, 88.2, 407.9 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctzudodo, 75.7, 378.1 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctzudodo, 87.6, 409.9 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctzudodo, 74.9, 379.8 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctzudodo, 80.2, 404.1 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctzudodo, 90.5, 409.8 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctzudodo, 80.2, 404.1 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctzudodo, 88.2, 393.2 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctzudodo, 75.9, 373.5 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctzudodo, 91, 376.2 , 0 );
setEffMoveKey( spep_2 -3 + 84, ctzudodo, 69.1, 367.8 , 0 );
setEffMoveKey( spep_2 -3 + 86, ctzudodo, 89.4, 377.3 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctzudodo, 96.6, 411.3 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctzudodo, 71.7, 381.4 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctzudodo, 81.8, 413.7 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctzudodo, 66, 386.5 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctzudodo, 90.1, 408.3 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctzudodo, 72.2, 379.5 , 0 );
setEffMoveKey( spep_2 -3 + 100, ctzudodo, 88.2, 407.9 , 0 );
setEffMoveKey( spep_2 -3 + 102, ctzudodo, 75.7, 378.1 , 0 );
setEffMoveKey( spep_2 -5 + 104, ctzudodo, 87.6, 409.9 , 0 );

setEffScaleKey( spep_2 -3 + 8, ctzudodo, 2.048, 2.048 );
setEffScaleKey( spep_2 -5 + 104, ctzudodo, 2.048, 2.048 );

setEffRotateKey( spep_2 -3 + 8, ctzudodo, -48.7 );
setEffRotateKey( spep_2 -5 + 104, ctzudodo, -48.7 );

setEffAlphaKey( spep_2 -3 + 8, ctzudodo, 255 );
setEffAlphaKey( spep_2 -5 + 104, ctzudodo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
--setDisp( spep_2 -3 + 105, 1, 0 );
changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 -3 + 10, 1, 106 );

setMoveKey( spep_2 + 0, 1, 201.5, -62.1 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 201.5, -62.1 , 0 );
m1 = 10;
setMoveKey( spep_2 -3 + 10, 1, 159.5 + 3.1 +m1, -80.3 - 4.7 -m1 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 159.5 - 3.1 -m1, -80.3 + 4.6 +m1 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 159.5 - 3.1, -80.3 - 6.2 -m1 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 159.5 + 0, -80.3 - 1.5 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 159.5 - 4.7 -m1, -80.3 + 4.1 +m1 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 159.5 + 0, -80.3 - 4.7 -m1 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 159.5 - 3.1 -m1, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 159.5 - 1  , -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 159.5 + 4.7 +m1, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 159.5 + 4.6, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 159.5 + 0.6 +m1, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 159.5 + 1.5 +m1, -80.3 - 4.6 -m1 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 159.5 + 0.5, -80.3 + 4.6 +m1 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 159.5 + 0.5 +m1, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 159.5 - 2.5 -m1, -80.3 + 2.6 +m1 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 159.5 - 0.6, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 159.5 + 1.6 +m1, -80.3 + 4.6 +m1 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 159.5 + 0, -80.3 - 4.6 -m1 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 159.5 + 1.5 +m1, -80.3 + 0.4 +m1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 159.5 - 3.1 -m1, -80.3 + 1.6 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 159.5 + 0, -80.3 - 1.6 -m1 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 159.5 + 1.6 +m1, -80.3 - 4.7 -m1 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 159.5 - 3.1 -m1, -80.3 + 4.6 +m1 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 159.5 + 0, -80.3 - 6.2 -m1 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 159.5 + 0 +m1, -80.3 - 1.5 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 159.5 + 0, -80.3 + 4.1 +m1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 159.5 + 3.1 +m1, -80.3 - 4.7 -m1 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 159.5 - 4.7 -m1, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 159.5 + 2.6 +m1, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 159.5 + 0, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 159.5 + 3.1 +m1, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 159.5 - 3.1 -m1, -80.3 + 3.1 +m1 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 159.5 - 3.1, -80.3 - 4.6 -m1 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 159.5 + 0, -80.3 + 4.6 +m1 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 159.5 - 4.7 -m1, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 159.5 + 0 +m1, -80.3 + 2.6 +m1 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 159.5 - 3.1 -m1, -80.3 - 3.1 -m1 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 159.5 - 1, -80.3 + 4.6  +m1, 0 );
setMoveKey( spep_2 -3 + 86, 1, 159.5 + 4.7 +m1, -80.3 - 4.6 -m1 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 159.5 + 4.6, -80.3 + 0.4 +m1 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 159.5 + 0.6 +m1, -80.3 + 1.6 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 159.5 + 1.5, -80.3 - 1.6 -m1 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 159.5 + 0.5 +m1, -80.3 - 0 +m1 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 159.5 + 0.5, -80.3 + 1.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 159.5 - 2.5 -m1, -80.3 - 0 -m1 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 159.5 - 0.6, -80.3 - 2.1 +m1 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 159.5 + 1.6 +m1, -80.3 - 0 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 159.5 + 0, -80.3 - 1.6 +m1 , 0 );--

setScaleKey( spep_2 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_2 -5 + 104, 1, 1.2, 1.2 );

setRotateKey( spep_2 + 0, 1, 11.5 );
setRotateKey( spep_2 -3 + 9, 1, 11.5 );
setRotateKey( spep_2 -3 + 10, 1, -53.7 );
setRotateKey( spep_2 -5 + 104, 1, -53.7 );

-- ** 音 ** --
--連続気弾発射
SE020 = playSeVer2( spep_2 + 2, 1016, "",spep_2 + 16, 0, 6, -1);
SE022 = playSeVer2( spep_2 + 10, 1016, "",spep_2 + 24, 0, 4, -1);
SE023 = playSeVer2( spep_2 + 18, 1016, "",spep_2 + 30, 0, 4, -1);
SE024 = playSeVer2( spep_2 + 26, 1016, "",spep_2 + 38, 0, 4, -1);
SE026 = playSeVer2( spep_2 + 34, 1016, "",spep_2 + 46, 0, 6, -1);
SE027 = playSeVer2( spep_2 + 42, 1016, "",spep_2 + 56, 0, 6, -1);
SE028 = playSeVer2( spep_2 + 50, 1016, "",spep_2 + 62, 0, 4, -1);
SE029 = playSeVer2( spep_2 + 56, 1016, "",spep_2 + 70, 0, 6, -1);
SE030 = playSeVer2( spep_2 + 64, 1016, "",spep_2 + 78, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 64, SE030, 81 );
SE031 = playSeVer2( spep_2 + 70, 1016, "",spep_2 + 84, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 70, SE031, 79 );

--連続爆発
SE021 = playSeVer2( spep_2 + 10, 1011, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 32, 1024, "", 0, 0, 0, -1);

--敵飛んでいく
SE032 = playSeVer2( spep_2 + 70, 1121, "",spep_2 + 146, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 70, SE032, 77 );
SE033 = playSeVer2( spep_2 + 70, 1183, "",spep_2 + 146, 0, 18, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 102 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 100;


------------------------------------------------------
-- ラスト(126F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --ラスト ef_003_bg
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 146, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 146, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 146, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --ラスト ef_003_bg
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 146, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 146, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 146, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 146, finish_b, 255 );

-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_3 -3 + 14 +16,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 -3 + 14 +16, shuchusenga, 32, 25 );

setEffMoveKey( spep_3 -3 + 14 +16, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 46 +16, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 14 +16, shuchusenga, 1, 1 );
setEffScaleKey( spep_3 -3 + 46 +16, shuchusenga, 1, 1 );

setEffRotateKey( spep_3 -3 + 14 +16, shuchusenga, 0 );
setEffRotateKey( spep_3 -3 + 46 +16, shuchusenga, 0 );

setEffAlphaKey( spep_3 -3 + 14 +16, shuchusenga, 255 );
setEffAlphaKey( spep_3 -3 + 28 +16, shuchusenga, 255 );
setEffAlphaKey( spep_3 -3 + 30 +16, shuchusenga, 252 );
setEffAlphaKey( spep_3 -3 + 32 +16, shuchusenga, 242 );
setEffAlphaKey( spep_3 -3 + 34 +16, shuchusenga, 227 );
setEffAlphaKey( spep_3 -3 + 36 +16, shuchusenga, 205 );
setEffAlphaKey( spep_3 -3 + 38 +16, shuchusenga, 176 );
setEffAlphaKey( spep_3 -3 + 40 +16, shuchusenga, 142 );
setEffAlphaKey( spep_3 -3 + 42 +16, shuchusenga, 101 );
setEffAlphaKey( spep_3 -3 + 44 +16, shuchusenga, 54 );
setEffAlphaKey( spep_3 -3 + 46 +16, shuchusenga, 0 );

-- ** 黒い集中線 ** --
kuroshuchusenga = entryEffectLife( spep_3 -3 + 14 +16,  1657, 119, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 -3 + 14 +16, kuroshuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 149, kuroshuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 14 +16, kuroshuchusenga, 1, 1 );
setEffScaleKey( spep_3 -3 + 149, kuroshuchusenga, 1, 1 );

setEffRotateKey( spep_3 -3 + 14 +16, kuroshuchusenga, 0 );
setEffRotateKey( spep_3 -3 + 149, kuroshuchusenga, 0 );

setEffAlphaKey( spep_3 -3 + 14 +16, kuroshuchusenga, 255 );
setEffAlphaKey( spep_3 -3 + 149, kuroshuchusenga, 255 );

-- ** 書き文字エントリー ** --
drawtext_gatsu = entryEffectLife( spep_3 -3 + 30,  10005, 119, 0x100, -1, 0, -91.2, 72.7 );  --ガッ
a = 35;
b = 90;
setEffMoveKey( spep_3 -3 + 30, drawtext_gatsu, -91.2 +a, 72.7 -b , 0 );
setEffMoveKey( spep_3 -3 + 32, drawtext_gatsu, -100 +a, 69.4 -b , 0 );
setEffMoveKey( spep_3 -3 + 34, drawtext_gatsu, -93.7 +a, 70.3 -b , 0 );
setEffMoveKey( spep_3 -3 + 36, drawtext_gatsu, -97.7 +a, 69.8 -b , 0 );
setEffMoveKey( spep_3 -3 + 149, drawtext_gatsu, -97.7 +a, 69.8 -b , 0 );

setEffScaleKey( spep_3 -3 + 30, drawtext_gatsu, 3.42, 3.42 );
setEffScaleKey( spep_3 -3 + 32, drawtext_gatsu, 3.8, 3.8 );
setEffScaleKey( spep_3 -3 + 34, drawtext_gatsu, 3.56, 3.56 );
setEffScaleKey( spep_3 -3 + 36, drawtext_gatsu, 3.68, 3.68 );
setEffScaleKey( spep_3 -3 + 149, drawtext_gatsu, 3.68, 3.68 );

setEffRotateKey( spep_3 -3 + 30, drawtext_gatsu, -23 );
setEffRotateKey( spep_3 -3 + 32, drawtext_gatsu, -23 );
setEffRotateKey( spep_3 -3 + 34, drawtext_gatsu, -23 );
setEffRotateKey( spep_3 -3 + 36, drawtext_gatsu, -23 );
setEffRotateKey( spep_3 -3 + 149, drawtext_gatsu, -23 );

setEffAlphaKey( spep_3 -3 + 30, drawtext_gatsu, 255 );
setEffAlphaKey( spep_3 -3 + 32, drawtext_gatsu, 255 );
setEffAlphaKey( spep_3 -3 + 34, drawtext_gatsu, 255 );
setEffAlphaKey( spep_3 -3 + 36, drawtext_gatsu, 255 );
setEffAlphaKey( spep_3 -3 + 149, drawtext_gatsu, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 149, 1, 0 );
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, 32.8, 16.6 , 0 );
setMoveKey( spep_3 + 1, 1, 33.4, 16.4 , 0 );
setMoveKey( spep_3 + 2, 1, 35.6, 15.6 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 40, 12.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 45.6, 2.4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 45.7, -16.2 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 30.1, -35.4 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 5.5, -33.2 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 11, -11.7 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 48.9, -33.5 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 23.1, -95.4 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -28, -62.1 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 46.6, -59.5 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -6.4, -160.3 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -24.4, -65.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -25.9, -61.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -24.4, -65.6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -25.9, -61.6 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -24.4, -65.6 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -25.9, -61.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -24.4, -65.6 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -25.9, -61.6 , 0 );
setMoveKey( spep_3 -3 + 149, 1, -25.9, -61.6 , 0 );

setScaleKey( spep_3 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_3 + 1, 1, 0.23, 0.23 );
setScaleKey( spep_3 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_3 -3 + 6, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 8, 1, 0.33, 0.33 );
setScaleKey( spep_3 -3 + 10, 1, 0.39, 0.39 );
setScaleKey( spep_3 -3 + 12, 1, 0.46, 0.46 );
setScaleKey( spep_3 -3 + 14, 1, 0.54, 0.54 );
setScaleKey( spep_3 -3 + 16, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 18, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 20, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 22, 1, 1.01, 1.01 );
setScaleKey( spep_3 -3 + 24, 1, 1.16, 1.16 );
setScaleKey( spep_3 -3 + 26, 1, 1.32, 1.32 );
setScaleKey( spep_3 -3 + 28, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 30, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 32, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 34, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 36, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 38, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 40, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 42, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 149, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 1, 1, 5.5 );
setRotateKey( spep_3 + 2, 1, 22 );
setRotateKey( spep_3 -3 + 6, 1, 49.6 );
setRotateKey( spep_3 -3 + 8, 1, 88.2 );
setRotateKey( spep_3 -3 + 10, 1, 137.8 );
setRotateKey( spep_3 -3 + 12, 1, 198.4 );
setRotateKey( spep_3 -3 + 14, 1, 270 );
setRotateKey( spep_3 -3 + 16, 1, 352.7 );
setRotateKey( spep_3 -3 + 18, 1, 446.3 );
setRotateKey( spep_3 -3 + 20, 1, 551 );
setRotateKey( spep_3 -3 + 22, 1, 666.7 );
setRotateKey( spep_3 -3 + 24, 1, 793.5 );
setRotateKey( spep_3 -3 + 26, 1, 931.2 );
setRotateKey( spep_3 -3 + 28, 1, 1080 );
setRotateKey( spep_3 -3 + 149, 1, 1080 );

-- ** 音 ** --
--画面割れる
SE034 = playSeVer2( spep_3 + 20, 1054, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_3 + 20, 1025, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 149 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 26 );
endPhase( spep_3 + 136 );

end