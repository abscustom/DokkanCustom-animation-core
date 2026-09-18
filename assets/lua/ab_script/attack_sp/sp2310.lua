--1023350:SSR人造人間17号(未来)&18号(未来)_ノンストップバイオレンス_sp2310
--sp_effect_b4_00206

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
SP_01 = 158662; --セリフカットイン    ef_101
SP_02 = 158663; --重なる ef_102
SP_03 = 158651; --分裂して初撃　前面 ef_003
SP_04 = 158652; --分裂して初撃　背面 ef_004
SP_05 = 158654; --連撃　前面 ef_006
SP_06 = 158656; --連撃　背面 ef_007
SP_07 = 158664;  --18号殴り～二人で体当たり　前面    ef_103
SP_08 = 158666;  --18号殴り～二人で体当たり　背面    ef_104

--敵側
SP_05e = 158655;  --連撃　前面　敵側  ef_006e
SP_07e = 158665;  --18号殴り～二人で体当たり　前面　敵側 ef_103e

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

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
-- セリフカットイン(94F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 94, 0x100, -1, 0, 0, 0 );  --セリフカットイン    ef_101
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 94, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 94, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 94, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 94 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 94, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 +94 + 22, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 24 );

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 94 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 94;


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

--二人重なる
SE004 = playSeVer2( spep_1 + 88, 1274, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 88, SE004, 75 );
setPitch( spep_1 + 88, SE004, -400 );
setTimeStretch( SE004, 0.73, 30, 4 );
SE005 = playSeVer2( spep_1 + 88, 1295, "",spep_1 +94 + 82, 28, 26, 0.6);
setSeVolumeByWorkId( spep_1 + 88, SE005, 145 );
SE006 = playSeVer2( spep_1 + 88, 1271, "",spep_1 +94 + 82, 0, 26, 0.6);
setSeVolumeByWorkId( spep_1 + 88, SE006, 141 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 重なる(84F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
fdash = entryEffectLife( spep_2 + 0, SP_02, 84, 0x100, -1, 0, 0, 0 );  --重なる ef_102
setEffMoveKey( spep_2 + 0, fdash, 0, 0 , 0 );
setEffMoveKey( spep_2 + 84, fdash, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, fdash, 1.0, 1.0 );
setEffScaleKey( spep_2 + 84, fdash, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fdash, 0 );
setEffRotateKey( spep_2 + 84, fdash, 0 );
setEffAlphaKey( spep_2 + 0, fdash, 255 );
setEffAlphaKey( spep_2 + 84 -1, fdash, 255 );
setEffAlphaKey( spep_2 + 84, fdash, 0 );

-- ** 音 ** --
--17号向かってくる
SE007 = playSeVer2( spep_2 + 54, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 64, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE008, 209 );
SE009 = playSeVer2( spep_2 + 74, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE009, 224 );

--二人飛び込んでくる
SE010 = playSeVer2( spep_2 + 82, 1117, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 82, 1116, "",spep_2 +84 + 36, 0, 18, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 84 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 84;


------------------------------------------------------
-- 分裂して初撃(96F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
fattack_f = entryEffectLife( spep_3 + 0, SP_03, 96, 0x100, -1, 0, 0, 0 );  --分裂して初撃　前面  ef_003
setEffMoveKey( spep_3 + 0, fattack_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, fattack_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fattack_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, fattack_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fattack_f, 0 );
setEffRotateKey( spep_3 + 96, fattack_f, 0 );
setEffAlphaKey( spep_3 + 0, fattack_f, 255 );
setEffAlphaKey( spep_3 + 96 -1, fattack_f, 255 );
setEffAlphaKey( spep_3 + 96, fattack_f, 0 );

fattack_b = entryEffectLife( spep_3 + 0, SP_04, 96, 0x80, -1, 0, 0, 0 );  --分裂して初撃　背面   ef_004
setEffMoveKey( spep_3 + 0, fattack_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, fattack_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fattack_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, fattack_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fattack_b, 0 );
setEffRotateKey( spep_3 + 96, fattack_b, 0 );
setEffAlphaKey( spep_3 + 0, fattack_b, 255 );
setEffAlphaKey( spep_3 + 96 -1, fattack_b, 255 );
setEffAlphaKey( spep_3 + 96, fattack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 118 );

setMoveKey( spep_3 + 0, 1, -11.3, -408.8 , 0 );

setScaleKey( spep_3 + 0, 1, 4, 4 );

setRotateKey( spep_3 + 0, 1, 47 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    --stopSe( SP_dodge - 12, SE017, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, -11.3, -408.8 , 0 );
    setMoveKey( SP_dodge + 10, 1, -11.3, -408.8 , 0 );

    setScaleKey( SP_dodge + 0, 1, 4, 4 );
    setScaleKey( SP_dodge + 10, 1, 4, 4 );

    setRotateKey( SP_dodge + 0, 1, 47 );
    setRotateKey( SP_dodge + 10, 1, 47 );    
    
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
--setDisp( spep_3 + 96, 1, 0 );
changeAnime( spep_3 -3 + 46, 1, 107 );
changeAnime( spep_3 -3 + 68, 1, 6 );
changeAnime( spep_3 -3 + 74, 1, 7 );

setMoveKey( spep_3 -3 + 45, 1, -11.3, -408.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -71.6, -286.4 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -56.8, -314.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -63.3, -315.6 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -48.5, -330.3 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -49.6, -329 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -45.5, -346.3 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -41.3, -355.6 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -37.2, -364.9 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -33, -374.3 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -28.8, -383.6 , 0 );
setMoveKey( spep_3 -3 + 67, 1, -24.7, -392.9 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -83.5, -156.4 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -52.9, -151.3 , 0 );
setMoveKey( spep_3 -3 + 73, 1, -100.8, -140.4 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -39, -254.1 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -50.8, -266.2 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -51.7, -268.6 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -52.6, -300 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -53.6, -320.9 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -54.5, -341.7 , 0 );
setMoveKey( spep_3 -3 + 86, 1, -55.4, -362.6 , 0 );
setMoveKey( spep_3 -3 + 88, 1, -56.3, -383.4 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -57.2, -404.3 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -58.1, -425.1 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -59, -446 , 0 );
setMoveKey( spep_3 -3 + 96, 1, -59.9, -466.8 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -60.8, -487.7 , 0 );
--setMoveKey( spep_3 -3 + 99, 1, -60.8, -487.7 , 0 );

setScaleKey( spep_3 -3 + 45, 1, 4, 4 );
setScaleKey( spep_3 -3 + 46, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 48, 1, 1.55, 1.55 );
setScaleKey( spep_3 -3 + 50, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 52, 1, 1.65, 1.65 );
setScaleKey( spep_3 -3 + 54, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 56, 1, 1.75, 1.75 );
setScaleKey( spep_3 -3 + 58, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 60, 1, 1.85, 1.85 );
setScaleKey( spep_3 -3 + 62, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 64, 1, 1.95, 1.95 );
setScaleKey( spep_3 -3 + 67, 1, 2, 2 );
setScaleKey( spep_3 -3 + 68, 1, 3.94, 3.94 );
setScaleKey( spep_3 -3 + 73, 1, 3.94, 3.94 );
setScaleKey( spep_3 -3 + 74, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 76, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 78, 1, 1.92, 1.92 );
setScaleKey( spep_3 -3 + 80, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 82, 1, 2.03, 2.03 );
setScaleKey( spep_3 -3 + 84, 1, 2.09, 2.09 );
setScaleKey( spep_3 -3 + 86, 1, 2.15, 2.15 );
setScaleKey( spep_3 -3 + 88, 1, 2.21, 2.21 );
setScaleKey( spep_3 -3 + 90, 1, 2.27, 2.27 );
setScaleKey( spep_3 -3 + 92, 1, 2.33, 2.33 );
setScaleKey( spep_3 -3 + 94, 1, 2.39, 2.39 );
setScaleKey( spep_3 -3 + 96, 1, 2.45, 2.45 );
setScaleKey( spep_3 -3 + 98, 1, 2.51, 2.51 );
--setScaleKey( spep_3 -3 + 99, 1, 2.51, 2.51 );

setRotateKey( spep_3 -3 + 45, 1, 47 );
setRotateKey( spep_3 -3 + 46, 1, 19.3 );
setRotateKey( spep_3 -3 + 48, 1, 19.5 );
setRotateKey( spep_3 -3 + 67, 1, 19.5 );
setRotateKey( spep_3 -3 + 68, 1, 26.6 );
setRotateKey( spep_3 -3 + 73, 1, 26.6 );
setRotateKey( spep_3 -3 + 74, 1, 3.8 );
setRotateKey( spep_3 -3 + 98, 1, 3.8 );
--setRotateKey( spep_3 -3 + 99, 1, 3.8 );

-- ** 音 ** --
--18号キック
SE012 = playSeVer2( spep_3 + 28, 1004, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 38, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 38, 1010, "", 0, 0, 0, -1);

--17号パンチ
SE015 = playSeVer2( spep_3 + 60, 1000, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 60, 1009, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 62, 1110, "", 0, 0, 0, -1);

--ラッシュ
SE018 = playSeVer2( spep_3 + 86, 1110, "",spep_3 +96 + 20, 0, 10, -1);  
SE019 = playSeVer2( spep_3 + 86, 1009, "", 0, 0, 0, -1);    
SE020 = playSeVer2( spep_3 + 94, 1110, "",spep_3 +96 + 32, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 94, SE020, 87 );
-- ** 次の準備 ** --
spep_4 = spep_3 + 96;


------------------------------------------------------
-- 連撃(56F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
rash_f = entryEffectLife( spep_4 + 0, SP_05, 56, 0x100, -1, 0, 0, 0 );  --連撃　前面 ef_006
setEffMoveKey( spep_4 + 0, rash_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, rash_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rash_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, rash_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rash_f, 0 );
setEffRotateKey( spep_4 + 56, rash_f, 0 );
setEffAlphaKey( spep_4 + 0, rash_f, 255 );
setEffAlphaKey( spep_4 + 56 -1, rash_f, 255 );
setEffAlphaKey( spep_4 + 56, rash_f, 0 );

rash_b = entryEffectLife( spep_4 + 0, SP_06, 56, 0x80, -1, 0, 0, 0 );  --連撃　背面  ef_007
setEffMoveKey( spep_4 + 0, rash_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, rash_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rash_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, rash_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rash_b, 0 );
setEffRotateKey( spep_4 + 56, rash_b, 0 );
setEffAlphaKey( spep_4 + 0, rash_b, 255 );
setEffAlphaKey( spep_4 + 56 -1, rash_b, 255 );
setEffAlphaKey( spep_4 + 56, rash_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
--setDisp( spep_4 + 56, 1, 0 );--
changeAnime( spep_4 + 0, 1, 107 );
changeAnime( spep_4 -3 + 16, 1, 7 );
changeAnime( spep_4 -3 + 26, 1, 107 );
changeAnime( spep_4 -3 + 42, 1, 7 );
changeAnime( spep_4 -3 + 52, 1, 107 );

setMoveKey( spep_4 + 0, 1, 27.7, 85.9 , 0 );
setMoveKey( spep_4 + 1, 1, 26.7, 94.6 , 0 );
setMoveKey( spep_4 + 2, 1, 33.2, 88.2 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 27.1, 99.4 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 38.6, 98 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 35, 109.2 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 34, 112.8 , 0 );
setMoveKey( spep_4 -3 + 15, 1, 40.5, 106.5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 92.3, 84.4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 103.7, 83 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 100.1, 94.1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 99.1, 97.8 , 0 );
setMoveKey( spep_4 -3 + 25, 1, 105.6, 91.4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 41.7, 135.9 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 53.1, 134.5 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 49.6, 145.7 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 48.6, 149.4 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 55, 143 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 49, 154.2 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 60.4, 152.8 , 0 );
setMoveKey( spep_4 -3 + 41, 1, 56.9, 164 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 113.7, 134.3 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 120.1, 128 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 114.1, 139.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 125.5, 137.8 , 0 );
setMoveKey( spep_4 -3 + 51, 1, 122, 149 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 63.1, 185.9 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 69.6, 179.6 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 63.6, 190.7 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 75, 189.4 , 0 );
--setMoveKey( spep_4 -3 + 59, 1, 75, 189.4 , 0 );

s4 = 0.04;
setScaleKey( spep_4 + 0, 1, 0.66 -s4, 0.66 -s4 );
setScaleKey( spep_4 -3 + 58, 1, 0.66 -s4, 0.66 -s4 );
--setScaleKey( spep_4 -3 + 59, 1, 0.66, 0.66 );--

setRotateKey( spep_4 + 0, 1, -52.2 );
setRotateKey( spep_4 + 1, 1, -54.9 );
setRotateKey( spep_4 + 2, 1, -52.2 );
setRotateKey( spep_4 -3 + 6, 1, -54.9 );
setRotateKey( spep_4 -3 + 8, 1, -52.2 );
setRotateKey( spep_4 -3 + 10, 1, -54.9 );
setRotateKey( spep_4 -3 + 12, 1, -52.2 );
setRotateKey( spep_4 -3 + 15, 1, -54.9 );
setRotateKey( spep_4 -3 + 16, 1, 93.1 );
setRotateKey( spep_4 -3 + 18, 1, 95.6 );
setRotateKey( spep_4 -3 + 20, 1, 93.1 );
setRotateKey( spep_4 -3 + 22, 1, 95.6 );
setRotateKey( spep_4 -3 + 25, 1, 93.1 );
setRotateKey( spep_4 -3 + 26, 1, -52.2 );
setRotateKey( spep_4 -3 + 28, 1, -54.9 );
setRotateKey( spep_4 -3 + 30, 1, -52.2 );
setRotateKey( spep_4 -3 + 32, 1, -54.9 );
setRotateKey( spep_4 -3 + 34, 1, -52.2 );
setRotateKey( spep_4 -3 + 36, 1, -54.9 );
setRotateKey( spep_4 -3 + 38, 1, -52.2 );
setRotateKey( spep_4 -3 + 41, 1, -54.9 );
setRotateKey( spep_4 -3 + 42, 1, 93.1 );
setRotateKey( spep_4 -3 + 44, 1, 95.6 );
setRotateKey( spep_4 -3 + 46, 1, 93.1 );
setRotateKey( spep_4 -3 + 48, 1, 95.6 );
setRotateKey( spep_4 -3 + 51, 1, 93.1 );
setRotateKey( spep_4 -3 + 52, 1, -52.2 );
setRotateKey( spep_4 -3 + 54, 1, -54.9 );
setRotateKey( spep_4 -3 + 56, 1, -52.2 );
setRotateKey( spep_4 -3 + 58, 1, -54.9 );
--setRotateKey( spep_4 -3 + 59, 1, -54.9 );--

-- ** 音 ** --
--ラッシュ
SE021 = playSeVer2( spep_4 + 0, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE021, 83 );
SE022 = playSeVer2( spep_4 + 8, 1110, "",spep_4 + 42, 0, 12, -1);
setPitch( spep_4 + 8, SE022, -200 );
setTimeStretch( SE022, 0.87, 30, 4 );
SE023 = playSeVer2( spep_4 + 16, 1110, "",spep_4 + 48, 0, 10, -1);
SE024 = playSeVer2( spep_4 + 16, 1010, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_4 + 22, 1110, "",spep_4 +56 + 4, 0, 12, -1);
setSeVolumeByWorkId( spep_4 + 22, SE025, 88 );
setPitch( spep_4 + 22, SE025, 200 );
setTimeStretch( SE025, 1.13, 30, 4 );
SE026 = playSeVer2( spep_4 + 36, 1110, "",spep_4 +56 + 14, 0, 12, -1);
SE027 = playSeVer2( spep_4 + 36, 1000, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_4 + 52, 1110, "", 0, 0, 0, -1);

--18号ラストパンチ
SE029 = playSeVer2( spep_4 + 52, 1120, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


------------------------------------------------------
-- 18号殴り～二人で体当たり(236F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --18号殴り～二人で体当たり　前面   ef_008
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 236, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 236, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 236, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 236, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --18号殴り～二人で体当たり　背面    ef_009
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 236, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 236, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 236, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 236, finish_b, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_5 + 0, 1, 1 );--
setDisp( spep_5 -3 + 20, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, -177.6, 15.7 , 0 );
setMoveKey( spep_5 + 1, 1, -177, 22.4 , 0 );
setMoveKey( spep_5 + 2, 1, -166.4, 9 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -169.2, 15.7 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -158.6, 19 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -158.1, 15.7 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -154.1, 15.7 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 50.8, 15.7 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 255.8, 15.7 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 460.8, 15.7 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 665.8, 15.7 , 0 );

setScaleKey( spep_5 + 0, 1, 2.49, 2.49 );
setScaleKey( spep_5 + 1, 1, 2.5, 2.5 );
setScaleKey( spep_5 -3 + 20, 1, 2.5, 2.5 );

setRotateKey( spep_5 + 0, 1, -60.2 );
setRotateKey( spep_5 -3 + 20, 1, -60.2 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 40, 1, 1 );
setDisp( spep_5 -3 + 99, 1, 0 );
changeAnime( spep_5 -3 + 40, 1, 106 );
changeAnime( spep_5 -3 + 68, 1, 108 );

setMoveKey( spep_5 -3 + 40, 1, -395.2, 22.4 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -296.4, 22.4 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -197.6, 22.4 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -98.8, 22.4 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 0, 22.4 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 4.8, 22.4 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 9.7, 22.4 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 14.5, 22.4 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 19.4, 22.4 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 24.2, 22.4 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 29, 22.4 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 33.9, 22.4 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 38.7, 22.4 , 0 );
setMoveKey( spep_5 -3 + 67, 1, 43.6, 22.4 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 133.5, 109.1 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 153.6, 75.6 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 130.2, 95.7 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 153.6, 99 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 143.6, 78.9 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 207.2, 89 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 270.8, 89 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 334.5, 89 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 398.1, 89 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 461.8, 89 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 525.4, 89 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 589, 89 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 652.7, 89 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 716.3, 89 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 780, 89 , 0 );
setMoveKey( spep_5 -3 + 99, 1, 843.6, 89 , 0 );

setScaleKey( spep_5 -3 + 40, 1, 2.5, 2.5 );
setScaleKey( spep_5 -3 + 67, 1, 2.5, 2.5 );
setScaleKey( spep_5 -3 + 68, 1, 3, 3 );
setScaleKey( spep_5 -3 + 99, 1, 3, 3 );

setRotateKey( spep_5 -3 + 40, 1, -28.7 );
setRotateKey( spep_5 -3 + 67, 1, -28.7 );
setRotateKey( spep_5 -3 + 68, 1, -28.6 );
setRotateKey( spep_5 -3 + 99, 1, -28.6 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 108, 1, 1 );
setDisp( spep_5 -3 + 120, 1, 0 );
changeAnime( spep_5 -3 + 108, 1, 105 );

setMoveKey( spep_5 -3 + 108, 1, 0, -193.3 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 0, -154.6 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 0, -115.8 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 0, -77.1 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 0.1, -38.4 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 10.2, -13.1 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 10.2, -13.1 , 0 );

setScaleKey( spep_5 -3 + 108, 1, 3.99, 3.99 );
setScaleKey( spep_5 -3 + 110, 1, 3.36, 3.36 );
setScaleKey( spep_5 -3 + 112, 1, 2.72, 2.72 );
setScaleKey( spep_5 -3 + 114, 1, 2.08, 2.08 );
setScaleKey( spep_5 -3 + 116, 1, 1.44, 1.44 );
setScaleKey( spep_5 -3 + 118, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 120, 1, 0.8, 0.8 );

setRotateKey( spep_5 -3 + 108, 1, -28.6 );
setRotateKey( spep_5 -3 + 120, 1, -28.6 );

-- ** 音 ** --
--敵飛んでいく
SE030 = playSeVer2( spep_5 + 18, 1183, "",spep_5 + 74, 0, 18, -1);

--2人タックル
SE031 = playSeVer2( spep_5 + 44, 1003, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_5 + 44, 1004, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_5 + 56, 1153, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_5 + 56, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE035 = playSeVer2( spep_5 + 78, 1121, "",spep_5 + 122, 0, 12, -1);

--壁爆発
SE036 = playSeVer2( spep_5 + 106, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 106, SE036, 70 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 236 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 116 );
endPhase( spep_5 + 226 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- セリフカットイン(94F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 94, 0x100, -1, 0, 0, 0 );  --セリフカットイン    ef_101
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 94, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 94, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 94, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 94 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 94, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 +94 + 22, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 24 );

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 94 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 94;


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

--二人重なる
SE004 = playSeVer2( spep_1 + 88, 1274, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 88, SE004, 75 );
setPitch( spep_1 + 88, SE004, -400 );
setTimeStretch( SE004, 0.73, 30, 4 );
SE005 = playSeVer2( spep_1 + 88, 1295, "",spep_1 +94 + 82, 28, 26, 0.6);
setSeVolumeByWorkId( spep_1 + 88, SE005, 145 );
SE006 = playSeVer2( spep_1 + 88, 1271, "",spep_1 +94 + 82, 0, 26, 0.6);
setSeVolumeByWorkId( spep_1 + 88, SE006, 141 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 重なる(84F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
fdash = entryEffectLife( spep_2 + 0, SP_02, 84, 0x100, -1, 0, 0, 0 );  --重なる ef_102
setEffMoveKey( spep_2 + 0, fdash, 0, 0 , 0 );
setEffMoveKey( spep_2 + 84, fdash, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, fdash, -1.0, 1.0 );
setEffScaleKey( spep_2 + 84, fdash, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fdash, 0 );
setEffRotateKey( spep_2 + 84, fdash, 0 );
setEffAlphaKey( spep_2 + 0, fdash, 255 );
setEffAlphaKey( spep_2 + 84 -1, fdash, 255 );
setEffAlphaKey( spep_2 + 84, fdash, 0 );

-- ** 音 ** --
--17号向かってくる
SE007 = playSeVer2( spep_2 + 54, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 64, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE008, 209 );
SE009 = playSeVer2( spep_2 + 74, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE009, 224 );

--二人飛び込んでくる
SE010 = playSeVer2( spep_2 + 82, 1117, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 82, 1116, "",spep_2 +84 + 36, 0, 18, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 84 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 84;


------------------------------------------------------
-- 分裂して初撃(96F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
fattack_f = entryEffectLife( spep_3 + 0, SP_03, 96, 0x100, -1, 0, 0, 0 );  --分裂して初撃　前面  ef_003
setEffMoveKey( spep_3 + 0, fattack_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, fattack_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fattack_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 96, fattack_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fattack_f, 0 );
setEffRotateKey( spep_3 + 96, fattack_f, 0 );
setEffAlphaKey( spep_3 + 0, fattack_f, 255 );
setEffAlphaKey( spep_3 + 96 -1, fattack_f, 255 );
setEffAlphaKey( spep_3 + 96, fattack_f, 0 );

fattack_b = entryEffectLife( spep_3 + 0, SP_04, 96, 0x80, -1, 0, 0, 0 );  --分裂して初撃　背面   ef_004
setEffMoveKey( spep_3 + 0, fattack_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, fattack_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fattack_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 96, fattack_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fattack_b, 0 );
setEffRotateKey( spep_3 + 96, fattack_b, 0 );
setEffAlphaKey( spep_3 + 0, fattack_b, 255 );
setEffAlphaKey( spep_3 + 96 -1, fattack_b, 255 );
setEffAlphaKey( spep_3 + 96, fattack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 18 );

setMoveKey( spep_3 + 0, 1, 11.3, -408.8 , 0 );

setScaleKey( spep_3 + 0, 1, 4, 4 );

setRotateKey( spep_3 + 0, 1, -47 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    --stopSe( SP_dodge - 12, SE017, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 11.3, -408.8 , 0 );
    setMoveKey( SP_dodge + 10, 1, 11.3, -408.8 , 0 );

    setScaleKey( SP_dodge + 0, 1, 4, 4 );
    setScaleKey( SP_dodge + 10, 1, 4, 4 );

    setRotateKey( SP_dodge + 0, 1, -47 );
    setRotateKey( SP_dodge + 10, 1, -47 );    
    
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
--setDisp( spep_3 + 96, 1, 0 );
changeAnime( spep_3 -3 + 46, 1, 7 );
changeAnime( spep_3 -3 + 68, 1, 106 );
changeAnime( spep_3 -3 + 74, 1, 107 );

setMoveKey( spep_3 -3 + 45, 1, 11.3, -408.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 71.6, -286.4 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 56.8, -314.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 63.3, -315.6 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 48.5, -330.3 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 49.6, -329 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 45.5, -346.3 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 41.3, -355.6 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 37.2, -364.9 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 33, -374.3 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 28.8, -383.6 , 0 );
setMoveKey( spep_3 -3 + 67, 1, 24.7, -392.9 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 83.5, -156.4 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 52.9, -151.3 , 0 );
setMoveKey( spep_3 -3 + 73, 1, 100.8, -140.4 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 39, -254.1 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 50.8, -266.2 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 51.7, -268.6 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 52.6, -300 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 53.6, -320.9 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 54.5, -341.7 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 55.4, -362.6 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 56.3, -383.4 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 57.2, -404.3 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 58.1, -425.1 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 59, -446 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 59.9, -466.8 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 60.8, -487.7 , 0 );
--setMoveKey( spep_3 -3 + 99, 1, -60.8, -487.7 , 0 );

setScaleKey( spep_3 -3 + 45, 1, 4, 4 );
setScaleKey( spep_3 -3 + 46, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 48, 1, 1.55, 1.55 );
setScaleKey( spep_3 -3 + 50, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 52, 1, 1.65, 1.65 );
setScaleKey( spep_3 -3 + 54, 1, 1.7, 1.7 );
setScaleKey( spep_3 -3 + 56, 1, 1.75, 1.75 );
setScaleKey( spep_3 -3 + 58, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 60, 1, 1.85, 1.85 );
setScaleKey( spep_3 -3 + 62, 1, 1.9, 1.9 );
setScaleKey( spep_3 -3 + 64, 1, 1.95, 1.95 );
setScaleKey( spep_3 -3 + 67, 1, 2, 2 );
setScaleKey( spep_3 -3 + 68, 1, 3.94, 3.94 );
setScaleKey( spep_3 -3 + 73, 1, 3.94, 3.94 );
setScaleKey( spep_3 -3 + 74, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 76, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 78, 1, 1.92, 1.92 );
setScaleKey( spep_3 -3 + 80, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 82, 1, 2.03, 2.03 );
setScaleKey( spep_3 -3 + 84, 1, 2.09, 2.09 );
setScaleKey( spep_3 -3 + 86, 1, 2.15, 2.15 );
setScaleKey( spep_3 -3 + 88, 1, 2.21, 2.21 );
setScaleKey( spep_3 -3 + 90, 1, 2.27, 2.27 );
setScaleKey( spep_3 -3 + 92, 1, 2.33, 2.33 );
setScaleKey( spep_3 -3 + 94, 1, 2.39, 2.39 );
setScaleKey( spep_3 -3 + 96, 1, 2.45, 2.45 );
setScaleKey( spep_3 -3 + 98, 1, 2.51, 2.51 );
--setScaleKey( spep_3 -3 + 99, 1, 2.51, 2.51 );

setRotateKey( spep_3 -3 + 45, 1, -47 );
setRotateKey( spep_3 -3 + 46, 1, -19.3 );
setRotateKey( spep_3 -3 + 48, 1, -19.5 );
setRotateKey( spep_3 -3 + 67, 1, -19.5 );
setRotateKey( spep_3 -3 + 68, 1, -26.6 );
setRotateKey( spep_3 -3 + 73, 1, -26.6 );
setRotateKey( spep_3 -3 + 74, 1, -3.8 );
setRotateKey( spep_3 -3 + 98, 1, -3.8 );
--setRotateKey( spep_3 -3 + 99, 1, 3.8 );

-- ** 音 ** --
--18号キック
SE012 = playSeVer2( spep_3 + 28, 1004, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 38, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 38, 1010, "", 0, 0, 0, -1);

--17号パンチ
SE015 = playSeVer2( spep_3 + 60, 1000, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 60, 1009, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 62, 1110, "", 0, 0, 0, -1);

--ラッシュ
SE018 = playSeVer2( spep_3 + 86, 1110, "",spep_3 +96 + 20, 0, 10, -1);  
SE019 = playSeVer2( spep_3 + 86, 1009, "", 0, 0, 0, -1);    
SE020 = playSeVer2( spep_3 + 94, 1110, "",spep_3 +96 + 32, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 94, SE020, 87 );
-- ** 次の準備 ** --
spep_4 = spep_3 + 96;


------------------------------------------------------
-- 連撃(56F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
rash_f = entryEffectLife( spep_4 + 0, SP_05e, 56, 0x100, -1, 0, 0, 0 );  --連撃　前面 ef_006
setEffMoveKey( spep_4 + 0, rash_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, rash_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rash_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, rash_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rash_f, 0 );
setEffRotateKey( spep_4 + 56, rash_f, 0 );
setEffAlphaKey( spep_4 + 0, rash_f, 255 );
setEffAlphaKey( spep_4 + 56 -1, rash_f, 255 );
setEffAlphaKey( spep_4 + 56, rash_f, 0 );

rash_b = entryEffectLife( spep_4 + 0, SP_06, 56, 0x80, -1, 0, 0, 0 );  --連撃　背面  ef_007
setEffMoveKey( spep_4 + 0, rash_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, rash_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rash_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, rash_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rash_b, 0 );
setEffRotateKey( spep_4 + 56, rash_b, 0 );
setEffAlphaKey( spep_4 + 0, rash_b, 255 );
setEffAlphaKey( spep_4 + 56 -1, rash_b, 255 );
setEffAlphaKey( spep_4 + 56, rash_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
--setDisp( spep_4 + 56, 1, 0 );--
changeAnime( spep_4 + 0, 1, 107 );
changeAnime( spep_4 -3 + 16, 1, 7 );
changeAnime( spep_4 -3 + 26, 1, 107 );
changeAnime( spep_4 -3 + 42, 1, 7 );
changeAnime( spep_4 -3 + 52, 1, 107 );

setMoveKey( spep_4 + 0, 1, 27.7, 85.9 , 0 );
setMoveKey( spep_4 + 1, 1, 26.7, 94.6 , 0 );
setMoveKey( spep_4 + 2, 1, 33.2, 88.2 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 27.1, 99.4 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 38.6, 98 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 35, 109.2 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 34, 112.8 , 0 );
setMoveKey( spep_4 -3 + 15, 1, 40.5, 106.5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 92.3, 84.4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 103.7, 83 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 100.1, 94.1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 99.1, 97.8 , 0 );
setMoveKey( spep_4 -3 + 25, 1, 105.6, 91.4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 41.7, 135.9 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 53.1, 134.5 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 49.6, 145.7 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 48.6, 149.4 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 55, 143 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 49, 154.2 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 60.4, 152.8 , 0 );
setMoveKey( spep_4 -3 + 41, 1, 56.9, 164 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 113.7, 134.3 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 120.1, 128 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 114.1, 139.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 125.5, 137.8 , 0 );
setMoveKey( spep_4 -3 + 51, 1, 122, 149 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 63.1, 185.9 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 69.6, 179.6 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 63.6, 190.7 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 75, 189.4 , 0 );
--setMoveKey( spep_4 -3 + 59, 1, 75, 189.4 , 0 );

s4 = 0.04;
setScaleKey( spep_4 + 0, 1, 0.66 -s4, 0.66 -s4 );
setScaleKey( spep_4 -3 + 58, 1, 0.66 -s4, 0.66 -s4 );
--setScaleKey( spep_4 -3 + 59, 1, 0.66, 0.66 );--

setRotateKey( spep_4 + 0, 1, -52.2 );
setRotateKey( spep_4 + 1, 1, -54.9 );
setRotateKey( spep_4 + 2, 1, -52.2 );
setRotateKey( spep_4 -3 + 6, 1, -54.9 );
setRotateKey( spep_4 -3 + 8, 1, -52.2 );
setRotateKey( spep_4 -3 + 10, 1, -54.9 );
setRotateKey( spep_4 -3 + 12, 1, -52.2 );
setRotateKey( spep_4 -3 + 15, 1, -54.9 );
setRotateKey( spep_4 -3 + 16, 1, 93.1 );
setRotateKey( spep_4 -3 + 18, 1, 95.6 );
setRotateKey( spep_4 -3 + 20, 1, 93.1 );
setRotateKey( spep_4 -3 + 22, 1, 95.6 );
setRotateKey( spep_4 -3 + 25, 1, 93.1 );
setRotateKey( spep_4 -3 + 26, 1, -52.2 );
setRotateKey( spep_4 -3 + 28, 1, -54.9 );
setRotateKey( spep_4 -3 + 30, 1, -52.2 );
setRotateKey( spep_4 -3 + 32, 1, -54.9 );
setRotateKey( spep_4 -3 + 34, 1, -52.2 );
setRotateKey( spep_4 -3 + 36, 1, -54.9 );
setRotateKey( spep_4 -3 + 38, 1, -52.2 );
setRotateKey( spep_4 -3 + 41, 1, -54.9 );
setRotateKey( spep_4 -3 + 42, 1, 93.1 );
setRotateKey( spep_4 -3 + 44, 1, 95.6 );
setRotateKey( spep_4 -3 + 46, 1, 93.1 );
setRotateKey( spep_4 -3 + 48, 1, 95.6 );
setRotateKey( spep_4 -3 + 51, 1, 93.1 );
setRotateKey( spep_4 -3 + 52, 1, -52.2 );
setRotateKey( spep_4 -3 + 54, 1, -54.9 );
setRotateKey( spep_4 -3 + 56, 1, -52.2 );
setRotateKey( spep_4 -3 + 58, 1, -54.9 );
--setRotateKey( spep_4 -3 + 59, 1, -54.9 );--

-- ** 音 ** --
--ラッシュ
SE021 = playSeVer2( spep_4 + 0, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE021, 83 );
SE022 = playSeVer2( spep_4 + 8, 1110, "",spep_4 + 42, 0, 12, -1);
setPitch( spep_4 + 8, SE022, -200 );
setTimeStretch( SE022, 0.87, 30, 4 );
SE023 = playSeVer2( spep_4 + 16, 1110, "",spep_4 + 48, 0, 10, -1);
SE024 = playSeVer2( spep_4 + 16, 1010, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_4 + 22, 1110, "",spep_4 +56 + 4, 0, 12, -1);
setSeVolumeByWorkId( spep_4 + 22, SE025, 88 );
setPitch( spep_4 + 22, SE025, 200 );
setTimeStretch( SE025, 1.13, 30, 4 );
SE026 = playSeVer2( spep_4 + 36, 1110, "",spep_4 +56 + 14, 0, 12, -1);
SE027 = playSeVer2( spep_4 + 36, 1000, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_4 + 52, 1110, "", 0, 0, 0, -1);

--18号ラストパンチ
SE029 = playSeVer2( spep_4 + 52, 1120, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


------------------------------------------------------
-- 18号殴り～二人で体当たり(236F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07e, 0x100, -1, 0, 0, 0 );  --18号殴り～二人で体当たり　前面   ef_008
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 236, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 236, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 236, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 236, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --18号殴り～二人で体当たり　背面    ef_009
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 236, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 236, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 236, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 236, finish_b, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_5 + 0, 1, 1 );--
setDisp( spep_5 -3 + 20, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, -177.6, 15.7 , 0 );
setMoveKey( spep_5 + 1, 1, -177, 22.4 , 0 );
setMoveKey( spep_5 + 2, 1, -166.4, 9 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -169.2, 15.7 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -158.6, 19 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -158.1, 15.7 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -154.1, 15.7 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 50.8, 15.7 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 255.8, 15.7 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 460.8, 15.7 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 665.8, 15.7 , 0 );

setScaleKey( spep_5 + 0, 1, 2.49, 2.49 );
setScaleKey( spep_5 + 1, 1, 2.5, 2.5 );
setScaleKey( spep_5 -3 + 20, 1, 2.5, 2.5 );

setRotateKey( spep_5 + 0, 1, -60.2 );
setRotateKey( spep_5 -3 + 20, 1, -60.2 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 40, 1, 1 );
setDisp( spep_5 -3 + 99, 1, 0 );
changeAnime( spep_5 -3 + 40, 1, 106 );
changeAnime( spep_5 -3 + 68, 1, 108 );

setMoveKey( spep_5 -3 + 40, 1, -395.2, 22.4 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -296.4, 22.4 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -197.6, 22.4 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -98.8, 22.4 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 0, 22.4 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 4.8, 22.4 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 9.7, 22.4 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 14.5, 22.4 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 19.4, 22.4 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 24.2, 22.4 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 29, 22.4 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 33.9, 22.4 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 38.7, 22.4 , 0 );
setMoveKey( spep_5 -3 + 67, 1, 43.6, 22.4 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 133.5, 109.1 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 153.6, 75.6 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 130.2, 95.7 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 153.6, 99 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 143.6, 78.9 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 207.2, 89 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 270.8, 89 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 334.5, 89 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 398.1, 89 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 461.8, 89 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 525.4, 89 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 589, 89 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 652.7, 89 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 716.3, 89 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 780, 89 , 0 );
setMoveKey( spep_5 -3 + 99, 1, 843.6, 89 , 0 );

setScaleKey( spep_5 -3 + 40, 1, 2.5, 2.5 );
setScaleKey( spep_5 -3 + 67, 1, 2.5, 2.5 );
setScaleKey( spep_5 -3 + 68, 1, 3, 3 );
setScaleKey( spep_5 -3 + 99, 1, 3, 3 );

setRotateKey( spep_5 -3 + 40, 1, -28.7 );
setRotateKey( spep_5 -3 + 67, 1, -28.7 );
setRotateKey( spep_5 -3 + 68, 1, -28.6 );
setRotateKey( spep_5 -3 + 99, 1, -28.6 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 108, 1, 1 );
setDisp( spep_5 -3 + 120, 1, 0 );
changeAnime( spep_5 -3 + 108, 1, 105 );

setMoveKey( spep_5 -3 + 108, 1, 0, -193.3 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 0, -154.6 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 0, -115.8 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 0, -77.1 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 0.1, -38.4 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 10.2, -13.1 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 10.2, -13.1 , 0 );

setScaleKey( spep_5 -3 + 108, 1, 3.99, 3.99 );
setScaleKey( spep_5 -3 + 110, 1, 3.36, 3.36 );
setScaleKey( spep_5 -3 + 112, 1, 2.72, 2.72 );
setScaleKey( spep_5 -3 + 114, 1, 2.08, 2.08 );
setScaleKey( spep_5 -3 + 116, 1, 1.44, 1.44 );
setScaleKey( spep_5 -3 + 118, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 120, 1, 0.8, 0.8 );

setRotateKey( spep_5 -3 + 108, 1, -28.6 );
setRotateKey( spep_5 -3 + 120, 1, -28.6 );

-- ** 音 ** --
--敵飛んでいく
SE030 = playSeVer2( spep_5 + 18, 1183, "",spep_5 + 74, 0, 18, -1);

--2人タックル
SE031 = playSeVer2( spep_5 + 44, 1003, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_5 + 44, 1004, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_5 + 56, 1153, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_5 + 56, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE035 = playSeVer2( spep_5 + 78, 1121, "",spep_5 + 122, 0, 12, -1);

--壁爆発
SE036 = playSeVer2( spep_5 + 106, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 106, SE036, 70 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 236 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 116 );
endPhase( spep_5 + 226 );

end