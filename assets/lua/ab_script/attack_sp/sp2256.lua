--1022820:カリフラ&ケール_ユニオンシューティング(SSR)
--sp_effect_a2_00169

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

--エフェクト(味方)
SP_01=	158303	;--	カリフラ 、ケール 登場
SP_02=	158304	;--	正面突進〜フィニッシュ
SP_03=	158305	;--	正面突進〜フィニッシュ
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.9);


setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--カリフラ 、ケール 登場
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +20;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 83 );
SE002 = playSeVer2( spep_0 + 0, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 162 );

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--着地
SE004 = playSeVer2( spep_0 + 34, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE004, 158 );
SE005 = playSeVer2( spep_0 + 40, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE005, 158 );
SE006 = playSeVer2( spep_0 + 42, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE006, 158 );

--白フェード
entryFade( spep_0 + 102, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_1=spep_0+110;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94; 
------------------------------------------------------
--正面突進〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 350, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 350, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 350, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 350, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 350, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 350, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 350, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 350, finish_b, 255 );

--SE
--ダッシュ
SE008 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 0, 1278, "",spep_2 + 126, 0, 78, -1);
SE010 = playSeVer2( spep_2 + 0, 9, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 780, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    --敵位置の固定
    setMoveKey( SP_dodge + 9, 1, 23, -34.7 , 0 );

    setScaleKey( SP_dodge + 9, 1, 2.11, 2.11 );

    setRotateKey( SP_dodge + 9, 1, 12 );

    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_2-3 + 180, 1, 1);
setDisp( spep_2-1 + 230, 1, 0);

changeAnime( spep_2-3 + 180, 1, 104);

setMoveKey( spep_2-3 + 180, 1, -1.6, -50 , 0 );
setMoveKey( spep_2-3 + 182, 1, -1.5, -50 , 0 );
setMoveKey( spep_2-3 + 184, 1, -1.4, -49.9 , 0 );
setMoveKey( spep_2-3 + 186, 1, -1.4, -49.7 , 0 );
setMoveKey( spep_2-3 + 188, 1, -1.3, -49.5 , 0 );
setMoveKey( spep_2-3 + 190, 1, -1.2, -49.2 , 0 );
setMoveKey( spep_2-3 + 192, 1, -1.2, -48.8 , 0 );
setMoveKey( spep_2-3 + 194, 1, -1.1, -48.3 , 0 );
setMoveKey( spep_2-3 + 196, 1, -1, -47.7 , 0 );
setMoveKey( spep_2-3 + 198, 1, -1, -46.9 , 0 );
setMoveKey( spep_2-3 + 200, 1, -0.9, -46 , 0 );
setMoveKey( spep_2-3 + 202, 1, -0.8, -45 , 0 );
setMoveKey( spep_2-3 + 204, 1, -0.8, -43.7 , 0 );
setMoveKey( spep_2-3 + 206, 1, -0.7, -42.3 , 0 );
setMoveKey( spep_2-3 + 208, 1, -0.6, -40.6 , 0 );
setMoveKey( spep_2-3 + 210, 1, -0.5, -38.5 , 0 );
setMoveKey( spep_2-3 + 212, 1, -0.5, -36.1 , 0 );
setMoveKey( spep_2-3 + 214, 1, -0.4, -33.2 , 0 );
setMoveKey( spep_2-3 + 216, 1, -0.3, -29.5 , 0 );
setMoveKey( spep_2-3 + 218, 1, -0.3, -24.7 , 0 );
setMoveKey( spep_2-3 + 220, 1, -0.2, -17.7 , 0 );
setMoveKey( spep_2-3 + 222, 1, -0.1, 0 , 0 );
setMoveKey( spep_2-3 + 224, 1, -0.1, 0 , 0 );
setMoveKey( spep_2-3 + 226, 1, 0, 0 , 0 );
setMoveKey( spep_2-3 + 228, 1, 0, 12 , 0 );
setMoveKey( spep_2-1 + 230, 1, -10, -2.3 , 0 );

setScaleKey( spep_2-3 + 180, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 188, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 190, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 192, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 194, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 196, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 198, 1, 1.08, 1.08 );
setScaleKey( spep_2-3 + 200, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 202, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 204, 1, 1.11, 1.11 );
setScaleKey( spep_2-3 + 206, 1, 1.12, 1.12 );
setScaleKey( spep_2-3 + 208, 1, 1.13, 1.13 );
setScaleKey( spep_2-3 + 210, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 212, 1, 1.17, 1.17 );
setScaleKey( spep_2-3 + 214, 1, 1.2, 1.2 );
setScaleKey( spep_2-3 + 216, 1, 1.23, 1.23 );
setScaleKey( spep_2-3 + 218, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 220, 1, 1.34, 1.34 );
setScaleKey( spep_2-3 + 222, 1, 1.5, 1.5 );
setScaleKey( spep_2-1 + 230, 1, 1.5, 1.5 );

setRotateKey( spep_2-3 + 180, 1, 0 );
setRotateKey( spep_2-1 + 230, 1, 0 );

--SE
--カリフラ気弾溜め
SE011 = playSeVer2( spep_2 + 46, 1282, "",spep_2 + 102, 0, 6, -1);

--腕振りかぶる
SE012 = playSeVer2( spep_2 + 60, 1003, "", 0, 0, 0, -1);

--カリフラ気弾発射
SE014 = playSeVer2( spep_2 + 94, 1212, "",spep_2 + 152, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 94, SE014, 73 );
SE015 = playSeVer2( spep_2 + 94, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE015, 133 );
SE016 = playSeVer2( spep_2 + 94, 1021, "", 0, 0, 0, -1);

--ケール気弾溜め
SE017 = playSeVer2( spep_2 + 112, 1262, "",spep_2 + 170, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 112, SE017, 174 );
SE018 = playSeVer2( spep_2 + 112, 1276, "",spep_2 + 170, 0, 6, -1);
setPitch( spep_2 + 112, SE018, -500 );
setTimeStretch( SE018, 0.67, 30, 4 );

--ケール気弾発射
SE019 = playSeVer2( spep_2 + 160, 1027, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 160, 1022, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 160, 1193, "",spep_2 + 248, 0, 32, -1);
SE013 = playSeVer2( spep_2 + 178, 1212, "",spep_2 + 246, 16, 16, -1);
setStartTimeMs( SE013,  1383 );

--爆発
SE022 = playSeVer2( spep_2 + 222, 1068, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 226, 1023, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_2+226);
endPhase( spep_2 + 340 );
else
------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--カリフラ 、ケール 登場
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +20;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 83 );
SE002 = playSeVer2( spep_0 + 0, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 162 );

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--着地
SE004 = playSeVer2( spep_0 + 34, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE004, 158 );
SE005 = playSeVer2( spep_0 + 40, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE005, 158 );
SE006 = playSeVer2( spep_0 + 42, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE006, 158 );

--白フェード
entryFade( spep_0 + 102, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_1=spep_0+110;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94; 
------------------------------------------------------
--正面突進〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 350, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 350, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 350, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 350, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 350, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 350, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 350, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 350, finish_b, 255 );

--SE
--ダッシュ
SE008 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 0, 1278, "",spep_2 + 126, 0, 78, -1);
SE010 = playSeVer2( spep_2 + 0, 9, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 780, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    --敵位置の固定
    setMoveKey( SP_dodge + 9, 1, 23, -34.7 , 0 );

    setScaleKey( SP_dodge + 9, 1, 2.11, 2.11 );

    setRotateKey( SP_dodge + 9, 1, 12 );

    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_2-3 + 180, 1, 1);
setDisp( spep_2-1 + 230, 1, 0);

changeAnime( spep_2-3 + 180, 1, 104);

setMoveKey( spep_2-3 + 180, 1, -1.6, -50 , 0 );
setMoveKey( spep_2-3 + 182, 1, -1.5, -50 , 0 );
setMoveKey( spep_2-3 + 184, 1, -1.4, -49.9 , 0 );
setMoveKey( spep_2-3 + 186, 1, -1.4, -49.7 , 0 );
setMoveKey( spep_2-3 + 188, 1, -1.3, -49.5 , 0 );
setMoveKey( spep_2-3 + 190, 1, -1.2, -49.2 , 0 );
setMoveKey( spep_2-3 + 192, 1, -1.2, -48.8 , 0 );
setMoveKey( spep_2-3 + 194, 1, -1.1, -48.3 , 0 );
setMoveKey( spep_2-3 + 196, 1, -1, -47.7 , 0 );
setMoveKey( spep_2-3 + 198, 1, -1, -46.9 , 0 );
setMoveKey( spep_2-3 + 200, 1, -0.9, -46 , 0 );
setMoveKey( spep_2-3 + 202, 1, -0.8, -45 , 0 );
setMoveKey( spep_2-3 + 204, 1, -0.8, -43.7 , 0 );
setMoveKey( spep_2-3 + 206, 1, -0.7, -42.3 , 0 );
setMoveKey( spep_2-3 + 208, 1, -0.6, -40.6 , 0 );
setMoveKey( spep_2-3 + 210, 1, -0.5, -38.5 , 0 );
setMoveKey( spep_2-3 + 212, 1, -0.5, -36.1 , 0 );
setMoveKey( spep_2-3 + 214, 1, -0.4, -33.2 , 0 );
setMoveKey( spep_2-3 + 216, 1, -0.3, -29.5 , 0 );
setMoveKey( spep_2-3 + 218, 1, -0.3, -24.7 , 0 );
setMoveKey( spep_2-3 + 220, 1, -0.2, -17.7 , 0 );
setMoveKey( spep_2-3 + 222, 1, -0.1, 0 , 0 );
setMoveKey( spep_2-3 + 224, 1, -0.1, 0 , 0 );
setMoveKey( spep_2-3 + 226, 1, 0, 0 , 0 );
setMoveKey( spep_2-3 + 228, 1, 0, 12 , 0 );
setMoveKey( spep_2-1 + 230, 1, -10, -2.3 , 0 );

setScaleKey( spep_2-3 + 180, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 188, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 190, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 192, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 194, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 196, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 198, 1, 1.08, 1.08 );
setScaleKey( spep_2-3 + 200, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 202, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 204, 1, 1.11, 1.11 );
setScaleKey( spep_2-3 + 206, 1, 1.12, 1.12 );
setScaleKey( spep_2-3 + 208, 1, 1.13, 1.13 );
setScaleKey( spep_2-3 + 210, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 212, 1, 1.17, 1.17 );
setScaleKey( spep_2-3 + 214, 1, 1.2, 1.2 );
setScaleKey( spep_2-3 + 216, 1, 1.23, 1.23 );
setScaleKey( spep_2-3 + 218, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 220, 1, 1.34, 1.34 );
setScaleKey( spep_2-3 + 222, 1, 1.5, 1.5 );
setScaleKey( spep_2-1 + 230, 1, 1.5, 1.5 );

setRotateKey( spep_2-3 + 180, 1, 0 );
setRotateKey( spep_2-1 + 230, 1, 0 );

--SE
--カリフラ気弾溜め
SE011 = playSeVer2( spep_2 + 46, 1282, "",spep_2 + 102, 0, 6, -1);

--腕振りかぶる
SE012 = playSeVer2( spep_2 + 60, 1003, "", 0, 0, 0, -1);

--カリフラ気弾発射
SE014 = playSeVer2( spep_2 + 94, 1212, "",spep_2 + 152, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 94, SE014, 73 );
SE015 = playSeVer2( spep_2 + 94, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE015, 133 );
SE016 = playSeVer2( spep_2 + 94, 1021, "", 0, 0, 0, -1);

--ケール気弾溜め
SE017 = playSeVer2( spep_2 + 112, 1262, "",spep_2 + 170, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 112, SE017, 174 );
SE018 = playSeVer2( spep_2 + 112, 1276, "",spep_2 + 170, 0, 6, -1);
setPitch( spep_2 + 112, SE018, -500 );
setTimeStretch( SE018, 0.67, 30, 4 );

--ケール気弾発射
SE019 = playSeVer2( spep_2 + 160, 1027, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 160, 1022, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 160, 1193, "",spep_2 + 248, 0, 32, -1);
SE013 = playSeVer2( spep_2 + 178, 1212, "",spep_2 + 246, 16, 16, -1);
setStartTimeMs( SE013,  1383 );

--爆発
SE022 = playSeVer2( spep_2 + 222, 1068, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 226, 1023, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_2+226);
endPhase( spep_2 + 340 );
end