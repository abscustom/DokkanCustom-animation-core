--1026090:パン(幼年期)_乙女ラッシュ
--sp_effect_b1_00234

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
SP_01 = 161258;	--セリフカットイン　パン画面にダッシュ	ef_001
SP_02 = 161259;	--敵に向かってダッシュ	ef_002
SP_03 = 161260;	--敵に向かってダッシュ　奥	ef_002_back
SP_04 = 161263;	--画面に向かってキック→ＨＩＴエフェクト	ef_003
SP_05 = 161265;	--着地し瞬間移動→パンチ→着地→構えて飛び上がる→空中キック	ef_004
SP_06 = 161266;	--着地し瞬間移動→パンチ→着地→構えて飛び上がる→空中キック 奥	ef_004_back
SP_07 = 161269;	--フィニッシュ　ef_005
SP_08 = 161270;	--フィニッシュ　ef_005_back

--敵側
SP_02r = 161261; --敵に向かってダッシュ    ef_002_r
SP_03r = 161262; --敵に向かってダッシュ　奥  ef_002_r_back
SP_04r = 161264; --画面に向かってキック→ＨＩＴエフェクト   ef_003_r
SP_05r = 161267; --着地し瞬間移動→パンチ→着地→構えて飛び上がる→空中キック ef_004_r
SP_06r = 161268; --着地し瞬間移動→パンチ→着地→構えて飛び上がる→空中キック 奥   ef_004_r_back

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
-- セリフカットイン　パン画面にダッシュ	(182f)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 182, 0x100, -1, 0, 0, 0 );  --パン画面にダッシュ
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 182, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 182, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 182, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 182, first_f, 255 );

spep_x = spep_0 + 24;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 85, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 85, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 85, 515.5 , 0 );
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
--構える
SE001 = playSeVer2( spep_0 + 16, 1013, "", 0, 0, 0, -1);

--向かってくる
SE003 = playSeVer2( spep_0 + 128, 9, "",spep_0 + 194, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 128, SE003, 75 );
SE004 = playSeVer2( spep_0 + 128, 63, "",spep_0 + 194, 0, 6, 0.6);
SE005 = playSeVer2( spep_0 + 128, 1277, "",spep_0 + 194, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 128, SE005, 184 );

--走る音
SE006 = playSeVer2( spep_0 + 130, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE006, 251 );
setPitch( spep_0 + 130, SE006, -500 );
setTimeStretch( SE006, 0.67, 30, 4 );
SE007 = playSeVer2( spep_0 + 130, 1111, "",spep_0 + 140, 0, 2, -1);
SE008 = playSeVer2( spep_0 + 140, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE008, 251 );
setPitch( spep_0 + 140, SE008, -500 );
setTimeStretch( SE008, 0.67, 30, 4 );
SE009 = playSeVer2( spep_0 + 140, 1111, "",spep_0 + 150, 0, 2, -1);

--向かってくる
SE010 = playSeVer2( spep_0 + 140, 1202, "",spep_0 + 200, 0, 14, 0.6);

--走る音
SE011 = playSeVer2( spep_0 + 150, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE011, 251 );
setPitch( spep_0 + 150, SE011, -500 );
setTimeStretch( SE011, 0.67, 30, 4 );
SE012 = playSeVer2( spep_0 + 150, 1111, "",spep_0 + 160, 0, 2, -1);
SE013 = playSeVer2( spep_0 + 160, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE013, 251 );
setPitch( spep_0 + 160, SE013, -500 );
setTimeStretch( SE013, 0.67, 30, 4 );
SE014 = playSeVer2( spep_0 + 160, 1111, "",spep_0 + 172, 0, 2, -1);
SE015 = playSeVer2( spep_0 + 172, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 172, SE015, 251 );
setPitch( spep_0 + 172, SE015, -500 );
setTimeStretch( SE015, 0.67, 30, 4 );
SE016 = playSeVer2( spep_0 + 172, 1111, "",spep_0 + 180, 0, 2, -1);
SE017 = playSeVer2( spep_0 + 180, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE017, 251 );
setPitch( spep_0 + 180, SE017, -500 );
setTimeStretch( SE017, 0.67, 30, 4 );
SE018 = playSeVer2( spep_0 + 180, 1111, "",spep_0 + 188, 0, 8, -1);

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 184, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 182;

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
entryFadeBg( spep_1 + 0, 0, 98, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 敵に向かってダッシュ(90F)
------------------------------------------------------
--spep_2 = 0;


-- ** エフェクト等 ** --
dash_f = entryEffectLife( spep_2 + 0 -1, SP_02, 90, 0x100, -1, 0, 0, 0 );  --敵に向かってダッシュ
setEffMoveKey( spep_2 + 0 -1, dash_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, dash_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0 -1, dash_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, dash_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0 -1, dash_f, 0 );
setEffRotateKey( spep_2 + 90, dash_f, 0 );
setEffAlphaKey( spep_2 + 0 -1, dash_f, 0 );
setEffAlphaKey( spep_2 + 0, dash_f, 255 );
setEffAlphaKey( spep_2 + 90, dash_f, 255 );

dash_b = entryEffectLife( spep_2 + 0 -1, SP_03, 90, 0x80, -1, 0, 0, 0 );  --敵に向かってダッシュ
setEffMoveKey( spep_2 + 0 -1, dash_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, dash_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0 -1, dash_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, dash_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0 -1, dash_b, 0 );
setEffRotateKey( spep_2 + 90, dash_b, 0 );
setEffAlphaKey( spep_2 + 0 -1, dash_b, 0 );
setEffAlphaKey( spep_2 + 0, dash_b, 255 );
setEffAlphaKey( spep_2 + 90, dash_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 117 );

setMoveKey( spep_2 + 0, 1, 242.2, 194.8 , 0 );
setMoveKey( spep_2 + 2, 1, 234.4, 200.4 , 0 );
setMoveKey( spep_2 + 4, 1, 223.4, 205.8 , 0 );
setMoveKey( spep_2 + 6, 1, 209.3, 211.1 , 0 );
setMoveKey( spep_2 + 8, 1, 191.9, 216.1 , 0 );
setMoveKey( spep_2 + 10, 1, 171.4, 220.9 , 0 );
setMoveKey( spep_2 + 12, 1, 147.6, 225.6 , 0 );
setMoveKey( spep_2 + 14, 1, 120.6, 230 , 0 );
setMoveKey( spep_2 + 16, 1, 90.5, 234.3 , 0 );
setMoveKey( spep_2 + 18, 1, 57.2, 238.4 , 0 );
setMoveKey( spep_2 + 20, 1, 20.6, 242.2 , 0 );
setMoveKey( spep_2 + 22, 1, -19.1, 245.8 , 0 );
setMoveKey( spep_2 + 24, 1, -62.1, 249.3 , 0 );
setMoveKey( spep_2 + 26, 1, -108.3, 252.5 , 0 );
setMoveKey( spep_2 + 28, 1, -157.6, 255.6 , 0 );
setMoveKey( spep_2 + 30, 1, -210.2, 258.4 , 0 );

setScaleKey( spep_2 + 0, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 2, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 4, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 6, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 8, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 10, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 12, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 14, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 16, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 18, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 20, 1, 1, 1 );
setScaleKey( spep_2 + 22, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 24, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 26, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 28, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 30, 1, 1.31, 1.31 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 音 ** --
--走っていく
SE020 = playSeVer2( spep_2 + 0, 1111, "",spep_2 + 16, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 0, SE020, 132 );                 
SE021 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 48, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 0, SE021, 60 );                   
SE022 = playSeVer2( spep_2 + 0, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE022, 178 );
setBandpassFilter( spep_2 + 0, SE022, 24, 1116 );
SE023 = playSeVer2( spep_2 + 10, 1111, "",spep_2 + 26, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 10, SE023, 130 );                 
SE024 = playSeVer2( spep_2 + 12, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE024, 178 );
setBandpassFilter( spep_2 + 12, SE024, 24, 1116 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 92, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    stopSe( SP_dodge - 12, SE024, 0);

   
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
-- ** 敵キャラクター ** --
setDisp( spep_2 + 90, 1, 0 );

setMoveKey( spep_2 + 32, 1, -265.9, 261.1 , 0 );
setMoveKey( spep_2 + 34, 1, -230.1, 253.7 , 0 );
setMoveKey( spep_2 + 36, 1, -166.1, 233.2 , 0 );
setMoveKey( spep_2 + 38, 1, -104.7, 213.1 , 0 );
setMoveKey( spep_2 + 40, 1, -45.9, 193.6 , 0 );
setMoveKey( spep_2 + 42, 1, 10.2, 174.8 , 0 );
setMoveKey( spep_2 + 44, 1, 63.8, 156.5 , 0 );
setMoveKey( spep_2 + 46, 1, 114.7, 138.8 , 0 );
setMoveKey( spep_2 + 48, 1, 163.1, 121.6 , 0 );
setMoveKey( spep_2 + 50, 1, 208.8, 105 , 0 );
setMoveKey( spep_2 + 52, 1, 251.9, 89 , 0 );
setMoveKey( spep_2 + 54, 1, 292.4, 73.5 , 0 );
setMoveKey( spep_2 + 66, 1, 292.4, 73.5 , 0 );
setMoveKey( spep_2 + 67, 1, 292.4, 73.5 , 0 );
setMoveKey( spep_2 + 68, 1, 237.5, 38 , 0 );
setMoveKey( spep_2 + 70, 1, 182.4, 2.6 , 0 );
setMoveKey( spep_2 + 72, 1, 127.4, -32.7 , 0 );
setMoveKey( spep_2 + 74, 1, 72.3, -67.9 , 0 );
setMoveKey( spep_2 + 76, 1, 69.6, -61.3 , 0 );
setMoveKey( spep_2 + 78, 1, 66.9, -54.5 , 0 );
setMoveKey( spep_2 + 80, 1, 64.2, -47.6 , 0 );
setMoveKey( spep_2 + 82, 1, 61.4, -40.6 , 0 );
setMoveKey( spep_2 + 84, 1, 58.6, -33.5 , 0 );
setMoveKey( spep_2 + 86, 1, 55.8, -26.2 , 0 );
setMoveKey( spep_2 + 88, 1, 52.9, -18.8 , 0 );
setMoveKey( spep_2 + 90, 1, 50, -11.3 , 0 );

setScaleKey( spep_2 + 32, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 34, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 36, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 38, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 40, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 42, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 44, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 46, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 48, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 50, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 52, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 54, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 66, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 67, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 68, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 70, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 72, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 74, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 76, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 78, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 80, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 82, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 84, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 86, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 88, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 90, 1, 1.72, 1.72 );

setRotateKey( spep_2 + 90, 1, 0 );

-- ** 音 ** --
--走っていく
SE025 = playSeVer2( spep_2 + 20, 1111, "",spep_2 + 38, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 20, SE025, 130 );
SE026 = playSeVer2( spep_2 + 22, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE026, 191 );
setBandpassFilter( spep_2 + 22, SE026, 24, 1116 );
SE027 = playSeVer2( spep_2 + 28, 1111, "",spep_2 + 44, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 28, SE027, 126 );                 
SE028 = playSeVer2( spep_2 + 30, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 30, SE028, 162 );
setBandpassFilter( spep_2 + 30, SE028, 24, 1116 );

--ジャンプ
SE029 = playSeVer2( spep_2 + 38, 1117, "",spep_2 + 60, 0, 6, -1);

--着地
SE030 = playSeVer2( spep_2 + 48, 1111, "",spep_2 + 64, 0, 6, -1);                       
SE031 = playSeVer2( spep_2 + 52, 1106, "", 0, 0, 0, -1);

--飛びかかってくる
SE032 = playSeVer2( spep_2 + 62, 1117, "",spep_2 + 84, 0, 6, -1);                       
SE033 = playSeVer2( spep_2 + 62, 1116, "", 0, 0, 0, 0.6);
setBandpassFilter( spep_2 + 62, SE033, 325, 24000 );
SE034 = playSeVer2( spep_2 + 64, 1000, "", 0, 0, 0, -1);
setBandpassFilter( spep_2 + 64, SE034, 700, 24000 );
SE035 = playSeVer2( spep_2 + 80, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE035, 46 );                  

-- ** 次の準備 ** --
spep_3 = spep_2 + 90;


------------------------------------------------------
-- 画面に向かってキック→ＨＩＴエフェクト(66f)
------------------------------------------------------
--spep_3 = 0;


-- ** エフェクト等 ** --
hit = entryEffectLife( spep_3 + 0, SP_04, 66 -1, 0x100, -1, 0, 0, 0 );  --画面に向かってキック→ＨＩＴエフェクト
setEffMoveKey( spep_3 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66 -1, hit, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66 -1, hit, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit, 0 );
setEffRotateKey( spep_3 + 66 -1, hit, 0 );
setEffAlphaKey( spep_3 + 0, hit, 255 );
setEffAlphaKey( spep_3 + 66 -2 -1, hit, 255 );
setEffAlphaKey( spep_3 + 66 -1 -1, hit, 255 );
setEffAlphaKey( spep_3 + 66 -1, hit, 0 );

-- ** 音 ** --
--敵ヒット
SE036 = playSeVer2( spep_3 + 42, 1010, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_3 + 42, 1110, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE038 = playSeVer2( spep_3 + 62, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 62, SE038, 64 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 68, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 66 -1;

------------------------------------------------------
-- 着地し瞬間移動→パンチ→着地→構えて飛び上がる→空中キック(304f)
------------------------------------------------------
--spep_4 = 0;


-- ** エフェクト等 ** --
a1 = -1

kick_f = entryEffectLife( spep_4 + 0 -1 +a1 , SP_05, 304, 0x100, -1, 0, 0, 0 );  --着地し瞬間移動→パンチ→着地→構えて飛び上がる→空中キック
setEffMoveKey( spep_4 + 0 -1 +a1, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 304 -2, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0 -1 +a1, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 304 -2, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0 -1 +a1, kick_f, 0 );
setEffRotateKey( spep_4 + 304 -2, kick_f, 0 );
setEffAlphaKey( spep_4 + 0 -2, kick_f, 0 );
setEffAlphaKey( spep_4 + 0 -1, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 304 -2 -2, kick_f, 255 );
setEffAlphaKey( spep_4 + 304 -1 -2, kick_f, 255 );
setEffAlphaKey( spep_4 + 304 -2, kick_f, 0 );

kick_b = entryEffectLife( spep_4 + 0 -1 +a1, SP_06, 304, 0x80, -1, 0, 0, 0 );  --着地し瞬間移動→パンチ→着地→構えて飛び上がる→空中キック
setEffMoveKey( spep_4 + 0 -1 +a1, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 304 -2, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0 -1 +a1, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 304 -2, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0 -1  +a1, kick_b, 0 );
setEffRotateKey( spep_4 + 304 -2, kick_b, 0 );
setEffAlphaKey( spep_4 + 0 -2, kick_b, 0 );
setEffAlphaKey( spep_4 + 0 -1, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 304 -2 -2, kick_b, 255 );
setEffAlphaKey( spep_4 + 304 -1 -2, kick_b, 255 );
setEffAlphaKey( spep_4 + 304 -2, kick_b, 0 );

-- ** 敵キャラクター ** --
a2 = -1

setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 30 +a2, 1, 0 );
setDisp( spep_4 + 102 +a2, 1, 1 );
setDisp( spep_4 + 178 +a2, 1, 0 );
setDisp( spep_4 + 198 +a2, 1, 1 );
setDisp( spep_4 + 274 +a2, 1, 0 );
changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4 + 102 +a2, 1, 108 );
changeAnime( spep_4 + 116 +a2, 1, 106 );
changeAnime( spep_4 + 150 +a2, 1, 107 );
changeAnime( spep_4 + 198 +a2, 1, 106 );
changeAnime( spep_4 + 262 +a2, 1, 107 );

setMoveKey( spep_4 + 0, 1, 105.3, 44.2 , 0 );
--setMoveKey( spep_4 + 1, 1, 105.3, 44.2 , 0 );
setMoveKey( spep_4 + 2 +a2, 1, 73.1, 69.7 , 0 );
setMoveKey( spep_4 + 3 +a2, 1, 73.1, 69.7 , 0 );
setMoveKey( spep_4 + 4 +a2, 1, 165.6, 13.2 , 0 );
setMoveKey( spep_4 + 5 +a2, 1, 165.6, 13.2 , 0 );
setMoveKey( spep_4 + 6 +a2, 1, 141.2, 61.7 , 0 );
setMoveKey( spep_4 + 7 +a2, 1, 141.2, 61.7 , 0 );
setMoveKey( spep_4 + 8 +a2, 1, 91.8, 20.8 , 0 );
setMoveKey( spep_4 + 9 +a2, 1, 91.8, 20.8 , 0 );
setMoveKey( spep_4 + 10 +a2, 1, 110.9, 49 , 0 );
setMoveKey( spep_4 + 11 +a2, 1, 110.9, 49 , 0 );
setMoveKey( spep_4 + 12 +a2, 1, 115.8, 47.2 , 0 );
setMoveKey( spep_4 + 13 +a2, 1, 115.8, 47.2 , 0 );
setMoveKey( spep_4 + 14 +a2, 1, 117.7, 47.6 , 0 );
setMoveKey( spep_4 + 15 +a2, 1, 117.7, 47.6 , 0 );
setMoveKey( spep_4 + 16 +a2, 1, 119.5, 48 , 0 );
setMoveKey( spep_4 + 17 +a2, 1, 119.5, 48 , 0 );
setMoveKey( spep_4 + 18 +a2, 1, 121.2, 48.5 , 0 );
setMoveKey( spep_4 + 19 +a2, 1, 121.2, 48.5 , 0 );
setMoveKey( spep_4 + 20 +a2, 1, 123.1, 49 , 0 );
setMoveKey( spep_4 + 21 +a2, 1, 123.1, 49 , 0 );
setMoveKey( spep_4 + 22 +a2, 1, 124.9, 49.4 , 0 );
setMoveKey( spep_4 + 23 +a2, 1, 124.9, 49.4 , 0 );
setMoveKey( spep_4 + 24 +a2, 1, 126.7, 49.8 , 0 );
setMoveKey( spep_4 + 25 +a2, 1, 126.7, 49.8 , 0 );
setMoveKey( spep_4 + 26 +a2, 1, 128.5, 50.3 , 0 );
setMoveKey( spep_4 + 27 +a2, 1, 128.5, 50.3 , 0 );
setMoveKey( spep_4 + 28 +a2, 1, 130.4, 50.7 , 0 );
setMoveKey( spep_4 + 30 +a2, 1, 130.4, 50.7 , 0 );

setMoveKey( spep_4 + 102 +a2, 1, 16.4, -40.7 , 0 );
setMoveKey( spep_4 + 104 +a2, 1, 21.8, -31.7 , 0 );
setMoveKey( spep_4 + 106 +a2, 1, 27.2, -22.6 , 0 );
setMoveKey( spep_4 + 108 +a2, 1, 32.6, -13.5 , 0 );
setMoveKey( spep_4 + 110 +a2, 1, 37.9, -4.3 , 0 );
setMoveKey( spep_4 + 112 +a2, 1, 43.4, 4.9 , 0 );
setMoveKey( spep_4 + 114 +a2, 1, 48.8, 14.1 , 0 );
setMoveKey( spep_4 + 115 +a2, 1, 48.8, 14.1 , 0 );
setMoveKey( spep_4 + 116 +a2, 1, 130.9, 103.2 , 0 );  --106
setMoveKey( spep_4 + 117 +a2, 1, 130.9, 103.2 , 0 );
setMoveKey( spep_4 + 118 +a2, 1, 98.4, 147 , 0 );
setMoveKey( spep_4 + 119 +a2, 1, 98.4, 147 , 0 );
setMoveKey( spep_4 + 120 +a2, 1, 156, 55.7 , 0 );
setMoveKey( spep_4 + 121 +a2, 1, 156, 55.7 , 0 );
setMoveKey( spep_4 + 122 +a2, 1, 80.6, 33.5 , 0 );
setMoveKey( spep_4 + 123 +a2, 1, 80.6, 33.5 , 0 );
setMoveKey( spep_4 + 124 +a2, 1, 195.1, 136.3 , 0 );
setMoveKey( spep_4 + 125 +a2, 1, 195.1, 136.3 , 0 );
setMoveKey( spep_4 + 126 +a2, 1, 120.8, 112 , 0 );
setMoveKey( spep_4 + 127 +a2, 1, 120.8, 112 , 0 );
setMoveKey( spep_4 + 128 +a2, 1, 189.4, 54.7 , 0 );
setMoveKey( spep_4 + 129 +a2, 1, 189.4, 54.7 , 0 );
setMoveKey( spep_4 + 130 +a2, 1, 140, 58.5 , 0 );
setMoveKey( spep_4 + 131 +a2, 1, 140, 58.5 , 0 );
setMoveKey( spep_4 + 132 +a2, 1, 185.7, 112.2 , 0 );
setMoveKey( spep_4 + 133 +a2, 1, 185.7, 112.2 , 0 );
setMoveKey( spep_4 + 134 +a2, 1, 163.1, 92.1 , 0 );
setMoveKey( spep_4 + 135 +a2, 1, 163.1, 92.1 , 0 );
setMoveKey( spep_4 + 136 +a2, 1, 166.7, 90.9 , 0 );
setMoveKey( spep_4 + 137 +a2, 1, 166.7, 90.9 , 0 );
setMoveKey( spep_4 + 138 +a2, 1, 170.3, 89.6 , 0 );
setMoveKey( spep_4 + 139 +a2, 1, 170.3, 89.6 , 0 );
setMoveKey( spep_4 + 140 +a2, 1, 174, 88.4 , 0 );
setMoveKey( spep_4 + 141 +a2, 1, 174, 88.4 , 0 );
setMoveKey( spep_4 + 142 +a2, 1, 177.7, 87.2 , 0 );
setMoveKey( spep_4 + 143 +a2, 1, 177.7, 87.2 , 0 );
setMoveKey( spep_4 + 144 +a2, 1, 181.4, 85.9 , 0 );
setMoveKey( spep_4 + 145 +a2, 1, 181.4, 85.9 , 0 );
setMoveKey( spep_4 + 146 +a2, 1, 185.1, 84.7 , 0 );
setMoveKey( spep_4 + 147 +a2, 1, 185.1, 84.7 , 0 );
setMoveKey( spep_4 + 148 +a2, 1, 188.8, 83.4 , 0 );
setMoveKey( spep_4 + 149 +a2, 1, 188.8, 83.4 , 0 );
setMoveKey( spep_4 + 150 +a2, 1, 83.4, 225 , 0 );  --107
setMoveKey( spep_4 + 152 +a2, 1, 98.4, 233.5 , 0 );
setMoveKey( spep_4 + 154 +a2, 1, 122.3, 240.1 , 0 );
setMoveKey( spep_4 + 156 +a2, 1, 155.7, 244.6 , 0 );
setMoveKey( spep_4 + 158 +a2, 1, 198.9, 247.1 , 0 );
setMoveKey( spep_4 + 160 +a2, 1, 252.3, 247.4 , 0 );
setMoveKey( spep_4 + 162 +a2, 1, 316.5, 245.5 , 0 );
setMoveKey( spep_4 + 164 +a2, 1, 391.8, 241.2 , 0 );
setMoveKey( spep_4 + 166 +a2, 1, 478.8, 234.3 , 0 );
setMoveKey( spep_4 + 168 +a2, 1, 577.8, 224.8 , 0 );
setMoveKey( spep_4 + 170 +a2, 1, 689.2, 212.7 , 0 );
setMoveKey( spep_4 + 172 +a2, 1, 813.7, 197.9 , 0 );
setMoveKey( spep_4 + 174 +a2, 1, 951.4, 180.3 , 0 );
setMoveKey( spep_4 + 176 +a2, 1, 1103, 159.6 , 0 );
setMoveKey( spep_4 + 178 +a2, 1, 1103 +40, 159.6 -30 , 0 );

setMoveKey( spep_4 + 198 +a2, 1, -16.4, -128.6 , 0 );   --106
setMoveKey( spep_4 + 200 +a2, 1, -11.4, -121.7 , 0 );
setMoveKey( spep_4 + 202 +a2, 1, -6.2, -114.7 , 0 );
setMoveKey( spep_4 + 204 +a2, 1, -1.1, -107.7 , 0 );
setMoveKey( spep_4 + 206 +a2, 1, 4, -100.6 , 0 );
setMoveKey( spep_4 + 208 +a2, 1, 9.2, -93.6 , 0 );
setMoveKey( spep_4 + 210 +a2, 1, 14.4, -86.5 , 0 );
setMoveKey( spep_4 + 212 +a2, 1, 19.6, -79.6 , 0 );
setMoveKey( spep_4 + 214 +a2, 1, 24.6, -72.6 , 0 );
setMoveKey( spep_4 + 216 +a2, 1, 29.6, -65.8 , 0 );
setMoveKey( spep_4 + 218 +a2, 1, 34.5, -59 , 0 );
setMoveKey( spep_4 + 220 +a2, 1, 39.2, -52.4 , 0 );
setMoveKey( spep_4 + 222 +a2, 1, 43.7, -45.9 , 0 );
setMoveKey( spep_4 + 224 +a2, 1, 48.1, -39.7 , 0 );
setMoveKey( spep_4 + 226 +a2, 1, 52.2, -33.7 , 0 );
setMoveKey( spep_4 + 228 +a2, 1, 56.1, -27.8 , 0 );
setMoveKey( spep_4 + 230 +a2, 1, 59.8, -22.3 , 0 );
setMoveKey( spep_4 + 232 +a2, 1, 63.1, -17 , 0 );
setMoveKey( spep_4 + 234 +a2, 1, 66.2, -12.1 , 0 );
setMoveKey( spep_4 + 236 +a2, 1, 68.9, -7.4 , 0 );
setMoveKey( spep_4 + 238 +a2, 1, 71.3, -3.3 , 0 );
setMoveKey( spep_4 + 240 +a2, 1, 73.2, 0.7 , 0 );
setMoveKey( spep_4 + 242 +a2, 1, 74.8, 4.2 , 0 );
setMoveKey( spep_4 + 244 +a2, 1, 75.9, 7.3 , 0 );
setMoveKey( spep_4 + 246 +a2, 1, 76.6, 9.8 , 0 );
setMoveKey( spep_4 + 248 +a2, 1, 76.7, 12 , 0 );
setMoveKey( spep_4 + 250 +a2, 1, 76.4, 13.6 , 0 );
setMoveKey( spep_4 + 251 +a2, 1, 76.4, 13.6 , 0 );
setMoveKey( spep_4 + 252 +a2, 1, 128.9, -554 , 0 );  --大きくなる
setMoveKey( spep_4 + 254 +a2, 1, 129.6, -507.9 , 0 );
setMoveKey( spep_4 + 256 +a2, 1, 130.3, -461.8 , 0 );
setMoveKey( spep_4 + 258 +a2, 1, 131, -415.7 , 0 );
setMoveKey( spep_4 + 260 +a2, 1, 127.6, -399.1 , 0 );
setMoveKey( spep_4 + 261 +a2, 1, 127.6, -399.1 , 0 );
setMoveKey( spep_4 + 262 +a2, 1, 118.4, -66.5 , 0 );  --107
setMoveKey( spep_4 + 264 +a2, 1, 192.2, -88.6 , 0 );
setMoveKey( spep_4 + 266 +a2, 1, 349.6, -241.8 , 0 );
setMoveKey( spep_4 + 268 +a2, 1, 367.5, -322.3 , 0 );
setMoveKey( spep_4 + 270 +a2, 1, 584.6, -282 , 0 );
setMoveKey( spep_4 + 272 +a2, 1, 612.6, -368.7 , 0 );
setMoveKey( spep_4 + 274 +a2, 1, 612.6 +30, -368.7 -80 , 0 );

setScaleKey( spep_4 + 0, 1, 1.59, 1.59 );
--setScaleKey( spep_4 + 1, 1, 1.59, 1.59 );
setScaleKey( spep_4 + 2 +a2, 1, 1.58, 1.58 );
setScaleKey( spep_4 + 5 +a2, 1, 1.58, 1.58 );
setScaleKey( spep_4 + 6 +a2, 1, 1.57, 1.57 );
setScaleKey( spep_4 + 7 +a2, 1, 1.57, 1.57 );
setScaleKey( spep_4 + 8 +a2, 1, 1.56, 1.56 );
setScaleKey( spep_4 + 11 +a2, 1, 1.56, 1.56 );
setScaleKey( spep_4 + 12 +a2, 1, 1.55, 1.55 );
setScaleKey( spep_4 + 13 +a2, 1, 1.55, 1.55 );
setScaleKey( spep_4 + 14 +a2, 1, 1.54, 1.54 );
setScaleKey( spep_4 + 15 +a2, 1, 1.54, 1.54 );
setScaleKey( spep_4 + 16 +a2, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 17 +a2, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 18 +a2, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 19 +a2, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 20 +a2, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 21 +a2, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22 +a2, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 23 +a2, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 24 +a2, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 25 +a2, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 26 +a2, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 27 +a2, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 28 +a2, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 30 +a2, 1, 1.45, 1.45 );

setScaleKey( spep_4 + 102 +a2, 1, 3.18, 3.18 );
setScaleKey( spep_4 + 104 +a2, 1, 3.19, 3.19 );
setScaleKey( spep_4 + 106 +a2, 1, 3.19, 3.19 );
setScaleKey( spep_4 + 108 +a2, 1, 3.2, 3.2 );
setScaleKey( spep_4 + 110 +a2, 1, 3.2, 3.2 );
setScaleKey( spep_4 + 112 +a2, 1, 3.21, 3.21 );
setScaleKey( spep_4 + 115 +a2, 1, 3.21, 3.21 );
setScaleKey( spep_4 + 116 +a2, 1, 2.99, 2.99 );  --106
setScaleKey( spep_4 + 117 +a2, 1, 2.99, 2.99 );
setScaleKey( spep_4 + 118 +a2, 1, 3, 3 );
setScaleKey( spep_4 + 121 +a2, 1, 3, 3 );
setScaleKey( spep_4 + 122 +a2, 1, 3.01, 3.01 );
setScaleKey( spep_4 + 125 +a2, 1, 3.01, 3.01 );
setScaleKey( spep_4 + 126 +a2, 1, 3.02, 3.02 );
setScaleKey( spep_4 + 129 +a2, 1, 3.02, 3.02 );
setScaleKey( spep_4 + 130 +a2, 1, 3.03, 3.03 );
setScaleKey( spep_4 + 135 +a2, 1, 3.03, 3.03 );
setScaleKey( spep_4 + 136 +a2, 1, 3.04, 3.04 );
setScaleKey( spep_4 + 139 +a2, 1, 3.04, 3.04 );
setScaleKey( spep_4 + 140 +a2, 1, 3.05, 3.05 );
setScaleKey( spep_4 + 143 +a2, 1, 3.05, 3.05 );
setScaleKey( spep_4 + 144 +a2, 1, 3.06, 3.06 );
setScaleKey( spep_4 + 149 +a2, 1, 3.06, 3.06 );
setScaleKey( spep_4 + 150 +a2, 1, 0.85, 0.85 );  --107
setScaleKey( spep_4 + 152 +a2, 1, 0.88, 0.88 );
setScaleKey( spep_4 + 154 +a2, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 156 +a2, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 158 +a2, 1, 1.11, 1.11 );
setScaleKey( spep_4 + 160 +a2, 1, 1.25, 1.25 );
setScaleKey( spep_4 + 162 +a2, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 164 +a2, 1, 1.61, 1.61 );
setScaleKey( spep_4 + 166 +a2, 1, 1.84, 1.84 );
setScaleKey( spep_4 + 168 +a2, 1, 2.1, 2.1 );
setScaleKey( spep_4 + 170 +a2, 1, 2.4, 2.4 );
setScaleKey( spep_4 + 172 +a2, 1, 2.73, 2.73 );
setScaleKey( spep_4 + 174 +a2, 1, 3.1, 3.1 );
setScaleKey( spep_4 + 176 +a2, 1, 3.51, 3.51 );
setScaleKey( spep_4 + 178 +a2, 1, 3.51, 3.51 );

setScaleKey( spep_4 + 198 +a2, 1, 1.87, 1.87 );  --106
setScaleKey( spep_4 + 200 +a2, 1, 1.92, 1.92 );
setScaleKey( spep_4 + 202 +a2, 1, 1.97, 1.97 );
setScaleKey( spep_4 + 204 +a2, 1, 2.02, 2.02 );
setScaleKey( spep_4 + 206 +a2, 1, 2.06, 2.06 );
setScaleKey( spep_4 + 208 +a2, 1, 2.11, 2.11 );
setScaleKey( spep_4 + 210 +a2, 1, 2.16, 2.16 );
setScaleKey( spep_4 + 212 +a2, 1, 2.21, 2.21 );
setScaleKey( spep_4 + 214 +a2, 1, 2.26, 2.26 );
setScaleKey( spep_4 + 216 +a2, 1, 2.3, 2.3 );
setScaleKey( spep_4 + 218 +a2, 1, 2.35, 2.35 );
setScaleKey( spep_4 + 220 +a2, 1, 2.4, 2.4 );
setScaleKey( spep_4 + 222 +a2, 1, 2.45, 2.45 );
setScaleKey( spep_4 + 224 +a2, 1, 2.5, 2.5 );
setScaleKey( spep_4 + 226 +a2, 1, 2.54, 2.54 );
setScaleKey( spep_4 + 228 +a2, 1, 2.59, 2.59 );
setScaleKey( spep_4 + 230 +a2, 1, 2.64, 2.64 );
setScaleKey( spep_4 + 232 +a2, 1, 2.69, 2.69 );
setScaleKey( spep_4 + 234 +a2, 1, 2.74, 2.74 );
setScaleKey( spep_4 + 236 +a2, 1, 2.78, 2.78 );
setScaleKey( spep_4 + 238 +a2, 1, 2.83, 2.83 );
setScaleKey( spep_4 + 240 +a2, 1, 2.88, 2.88 );
setScaleKey( spep_4 + 242 +a2, 1, 2.93, 2.93 );
setScaleKey( spep_4 + 244 +a2, 1, 2.98, 2.98 );
setScaleKey( spep_4 + 246 +a2, 1, 3.02, 3.02 );
setScaleKey( spep_4 + 248 +a2, 1, 3.07, 3.07 );
setScaleKey( spep_4 + 250 +a2, 1, 3.12, 3.12 );
setScaleKey( spep_4 + 251 +a2, 1, 3.12, 3.12 );
setScaleKey( spep_4 + 252 +a2, 1, 5.25, 5.25 );
setScaleKey( spep_4 + 254 +a2, 1, 5.29, 5.29 );
setScaleKey( spep_4 + 256 +a2, 1, 5.32, 5.32 );
setScaleKey( spep_4 + 258 +a2, 1, 5.36, 5.36 );
setScaleKey( spep_4 + 260 +a2, 1, 5.21, 5.21 );
setScaleKey( spep_4 + 261 +a2, 1, 5.21, 5.21 );
setScaleKey( spep_4 + 262 +a2, 1, 1.37, 1.37 );  --107
setScaleKey( spep_4 + 264 +a2, 1, 1.92, 1.92 );
setScaleKey( spep_4 + 266 +a2, 1, 2.42, 2.42 );
setScaleKey( spep_4 + 268 +a2, 1, 2.9, 2.9 );
setScaleKey( spep_4 + 270 +a2, 1, 3.44, 3.44 );
setScaleKey( spep_4 + 272 +a2, 1, 3.98, 3.98 );
setScaleKey( spep_4 + 274 +a2, 1, 3.98, 3.98 );

setRotateKey( spep_4 + 0, 1, 0 );
--setRotateKey( spep_4 + 1, 1, 0 );
setRotateKey( spep_4 + 2 +a2, 1, 0.5 );
setRotateKey( spep_4 + 3 +a2, 1, 0.5 );
setRotateKey( spep_4 + 4 +a2, 1, 0.9 );
setRotateKey( spep_4 + 5 +a2, 1, 0.9 );
setRotateKey( spep_4 + 6 +a2, 1, 1.4 );
setRotateKey( spep_4 + 7 +a2, 1, 1.4 );
setRotateKey( spep_4 + 8 +a2, 1, 1.9 );
setRotateKey( spep_4 + 9 +a2, 1, 1.9 );
setRotateKey( spep_4 + 10 +a2, 1, 2.3 );
setRotateKey( spep_4 + 11 +a2, 1, 2.3 );
setRotateKey( spep_4 + 12 +a2, 1, 2.8 );
setRotateKey( spep_4 + 13 +a2, 1, 2.8 );
setRotateKey( spep_4 + 14 +a2, 1, 3.3 );
setRotateKey( spep_4 + 15 +a2, 1, 3.3 );
setRotateKey( spep_4 + 16 +a2, 1, 3.7 );
setRotateKey( spep_4 + 17 +a2, 1, 3.7 );
setRotateKey( spep_4 + 18 +a2, 1, 4.2 );
setRotateKey( spep_4 + 19 +a2, 1, 4.2 );
setRotateKey( spep_4 + 20 +a2, 1, 4.7 );
setRotateKey( spep_4 + 21 +a2, 1, 4.7 );
setRotateKey( spep_4 + 22 +a2, 1, 5.1 );
setRotateKey( spep_4 + 23 +a2, 1, 5.1 );
setRotateKey( spep_4 + 24 +a2, 1, 5.6 );
setRotateKey( spep_4 + 25 +a2, 1, 5.6 );
setRotateKey( spep_4 + 26 +a2, 1, 6.1 );
setRotateKey( spep_4 + 27 +a2, 1, 6.1 );
setRotateKey( spep_4 + 28 +a2, 1, 6.5 );
setRotateKey( spep_4 + 30 +a2, 1, 6.5 );

setRotateKey( spep_4 + 102 +a2, 1, 1.8 );
setRotateKey( spep_4 + 104 +a2, 1, 0.1 );
setRotateKey( spep_4 + 106 +a2, 1, -1.6 );
setRotateKey( spep_4 + 108 +a2, 1, -3.2 );
setRotateKey( spep_4 + 110 +a2, 1, -4.9 );
setRotateKey( spep_4 + 112 +a2, 1, -6.5 );
setRotateKey( spep_4 + 114 +a2, 1, -8.2 );
setRotateKey( spep_4 + 115 +a2, 1, -8.2 );
setRotateKey( spep_4 + 116 +a2, 1, -42.9 );  --106
setRotateKey( spep_4 + 117 +a2, 1, -42.9 );
setRotateKey( spep_4 + 118 +a2, 1, -42 );
setRotateKey( spep_4 + 119 +a2, 1, -42 );
setRotateKey( spep_4 + 120 +a2, 1, -41.1 );
setRotateKey( spep_4 + 121 +a2, 1, -41.1 );
setRotateKey( spep_4 + 122 +a2, 1, -40.1 );
setRotateKey( spep_4 + 123 +a2, 1, -40.1 );
setRotateKey( spep_4 + 124 +a2, 1, -39.2 );
setRotateKey( spep_4 + 125 +a2, 1, -39.2 );
setRotateKey( spep_4 + 126 +a2, 1, -38.3 );
setRotateKey( spep_4 + 127 +a2, 1, -38.3 );
setRotateKey( spep_4 + 128 +a2, 1, -37.3 );
setRotateKey( spep_4 + 129 +a2, 1, -37.3 );
setRotateKey( spep_4 + 130 +a2, 1, -36.4 );
setRotateKey( spep_4 + 131 +a2, 1, -36.4 );
setRotateKey( spep_4 + 132 +a2, 1, -35.4 );
setRotateKey( spep_4 + 133 +a2, 1, -35.4 );
setRotateKey( spep_4 + 134 +a2, 1, -34.5 );
setRotateKey( spep_4 + 135 +a2, 1, -34.5 );
setRotateKey( spep_4 + 136 +a2, 1, -33.6 );
setRotateKey( spep_4 + 137 +a2, 1, -33.6 );
setRotateKey( spep_4 + 138 +a2, 1, -32.6 );
setRotateKey( spep_4 + 139 +a2, 1, -32.6 );
setRotateKey( spep_4 + 140 +a2, 1, -31.7 );
setRotateKey( spep_4 + 141 +a2, 1, -31.7 );
setRotateKey( spep_4 + 142 +a2, 1, -30.8 );
setRotateKey( spep_4 + 143 +a2, 1, -30.8 );
setRotateKey( spep_4 + 144 +a2, 1, -29.8 );
setRotateKey( spep_4 + 145 +a2, 1, -29.8 );
setRotateKey( spep_4 + 146 +a2, 1, -28.9 );
setRotateKey( spep_4 + 147 +a2, 1, -28.9 );
setRotateKey( spep_4 + 148 +a2, 1, -28 );
setRotateKey( spep_4 + 149 +a2, 1, -28 );
setRotateKey( spep_4 + 150 +a2, 1, -22.7 );  --107
setRotateKey( spep_4 + 152 +a2, 1, -22.5 );
setRotateKey( spep_4 + 154 +a2, 1, -21.9 );
setRotateKey( spep_4 + 156 +a2, 1, -20.8 );
setRotateKey( spep_4 + 158 +a2, 1, -19.3 );
setRotateKey( spep_4 + 160 +a2, 1, -17.4 );
setRotateKey( spep_4 + 162 +a2, 1, -15.1 );
setRotateKey( spep_4 + 164 +a2, 1, -12.4 );
setRotateKey( spep_4 + 166 +a2, 1, -9.2 );
setRotateKey( spep_4 + 168 +a2, 1, -5.6 );
setRotateKey( spep_4 + 170 +a2, 1, -1.5 );
setRotateKey( spep_4 + 172 +a2, 1, 2.9 );
setRotateKey( spep_4 + 174 +a2, 1, 7.8 );
setRotateKey( spep_4 + 176 +a2, 1, 13.1 );
setRotateKey( spep_4 + 178 +a2, 1, 13.1 );

setRotateKey( spep_4 + 198 +a2, 1, -35.3 );  --106
setRotateKey( spep_4 + 200 +a2, 1, -35.6 );
setRotateKey( spep_4 + 202 +a2, 1, -35.8 );
setRotateKey( spep_4 + 204 +a2, 1, -36.1 );
setRotateKey( spep_4 + 206 +a2, 1, -36.3 );
setRotateKey( spep_4 + 208 +a2, 1, -36.6 );
setRotateKey( spep_4 + 210 +a2, 1, -36.8 );
setRotateKey( spep_4 + 212 +a2, 1, -37 );
setRotateKey( spep_4 + 214 +a2, 1, -37.2 );
setRotateKey( spep_4 + 216 +a2, 1, -37.4 );
setRotateKey( spep_4 + 218 +a2, 1, -37.5 );
setRotateKey( spep_4 + 220 +a2, 1, -37.7 );
setRotateKey( spep_4 + 222 +a2, 1, -37.8 );
setRotateKey( spep_4 + 224 +a2, 1, -38 );
setRotateKey( spep_4 + 226 +a2, 1, -38.1 );
setRotateKey( spep_4 + 228 +a2, 1, -38.2 );
setRotateKey( spep_4 + 230 +a2, 1, -38.4 );
setRotateKey( spep_4 + 232 +a2, 1, -38.5 );
setRotateKey( spep_4 + 234 +a2, 1, -38.5 );
setRotateKey( spep_4 + 236 +a2, 1, -38.6 );
setRotateKey( spep_4 + 238 +a2, 1, -38.7 );
setRotateKey( spep_4 + 240 +a2, 1, -38.7 );
setRotateKey( spep_4 + 242 +a2, 1, -38.8 );
setRotateKey( spep_4 + 244 +a2, 1, -38.8 );
setRotateKey( spep_4 + 246 +a2, 1, -38.9 );
setRotateKey( spep_4 + 250 +a2, 1, -38.9 );
setRotateKey( spep_4 + 251 +a2, 1, -38.9 );
setRotateKey( spep_4 + 252 +a2, 1, -57.9 );
setRotateKey( spep_4 + 261 +a2, 1, -57.9 );
setRotateKey( spep_4 + 262 +a2, 1, -44 );  --107
setRotateKey( spep_4 + 264 +a2, 1, -30 );
setRotateKey( spep_4 + 266 +a2, 1, -16.1 );
setRotateKey( spep_4 + 268 +a2, 1, -2.1 );
setRotateKey( spep_4 + 270 +a2, 1, 11.9 );
setRotateKey( spep_4 + 272 +a2, 1, 25.9 );

-- ** 音 ** --
--着地
SE039 = playSeVer2( spep_4 + 38, 1301, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 38, SE039, 141 );
SE040 = playSeVer2( spep_4 + 38, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 38, SE040, 141 );
setPitch( spep_4 + 38, SE040, -400 );
setTimeStretch( SE040, 0.73, 30, 4 );
SE041 = playSeVer2( spep_4 + 38, 1108, "", 0, 0, 0, -1);
setPitch( spep_4 + 38, SE041, -400 );
setTimeStretch( SE041, 0.73, 30, 4 );

--瞬間移動
SE042 = playSeVer2( spep_4 + 76, 1109, "", 0, 0, 0, -1);

--パンチ
SE043 = playSeVer2( spep_4 + 118, 1189, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_4 + 120, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 120, SE044, 92 );
SE045 = playSeVer2( spep_4 + 124, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 124, SE045, 120 );

--敵飛んでいく
SE046 = playSeVer2( spep_4 + 142, 1121, "",spep_4 + 228, 0, 36, -1);
setSeVolumeByWorkId( spep_4 + 142, SE046, 38 );
SE047 = playSeVer2( spep_4 + 152, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 152, SE047, 45 );

--着地
SE048 = playSeVer2( spep_4 + 168, 1301, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 168, SE048, 168 );
SE049 = playSeVer2( spep_4 + 172, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 172, SE049, 153 );
setBandpassFilter( spep_4 + 172, SE049, 24, 2865 );
SE050 = playSeVer2( spep_4 + 172, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 172, SE050, 172 );
setBandpassFilter( spep_4 + 172, SE050, 24, 970 );

--飛びかかる
SE051 = playSeVer2( spep_4 + 212, 1117, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_4 + 212, 44, "", 0, 0, 0, -1);

--蹴り飛ばし
SE053 = playSeVer2( spep_4 + 264, 1120, "", 0, 0, 0, 0.6);
setPitch( spep_4 + 264, SE053, 100 );
setTimeStretch( SE053, 1.07, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 306, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 304 -2;


------------------------------------------------------
-- フィニッシュ(108f)
------------------------------------------------------
-- ** ひび割れ ** --
finish_f = entryEffect( spep_5 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_5 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 8, finish_f, 0 );
setEffRotateKey( spep_5 + 112, finish_f, 0 );
setEffAlphaKey( spep_5 + 8, finish_f, 255 );
setEffAlphaKey( spep_5 + 112, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --フィニッシュ
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 112, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 112, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 112, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 112, finish_b, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_5 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_5 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_5 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_5 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_5 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_5 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_5 + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 112, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 112, 1, 0 );

changeAnime( spep_5 + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_5 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_5 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_5 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_5 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_5 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_5 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_5 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_5 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_5 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_5 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_5 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_5 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_5 + 0, 1, -122.8 - 232 );
setRotateKey( spep_5 + 2, 1, -122.8 );
setRotateKey( spep_5 -3 + 6, 1, -1 );
setRotateKey( spep_5 -3 + 8, 1, 120.7 );
setRotateKey( spep_5 -3 + 10, 1, 242.5 );
setRotateKey( spep_5 -3 + 12, 1, 364.3 );
setRotateKey( spep_5 -3 + 14, 1, 486 );
setRotateKey( spep_5 -3 + 16, 1, 607.8 );
setRotateKey( spep_5 -3 + 18, 1, 729.5 );
setRotateKey( spep_5 + 112, 1, 729.5 );

-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_5 + 14, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_5 + 14, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_5 + 6 ); -- ダメージ表示フレーム
endPhase( spep_5 + 108 ); -- 終了フレーム


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- セリフカットイン　パン画面にダッシュ   (182f)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 182, 0x100, -1, 0, 0, 0 );  --パン画面にダッシュ
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 182, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 182, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 182, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 182, first_f, 255 );

spep_x = spep_0 + 24;
-- ** 顔カットイン ** --
--[[speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 85, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 85, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 85, 515.5 , 0 );
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
--構える
SE001 = playSeVer2( spep_0 + 16, 1013, "", 0, 0, 0, -1);

--向かってくる
SE003 = playSeVer2( spep_0 + 128, 9, "",spep_0 + 194, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 128, SE003, 75 );
SE004 = playSeVer2( spep_0 + 128, 63, "",spep_0 + 194, 0, 6, 0.6);
SE005 = playSeVer2( spep_0 + 128, 1277, "",spep_0 + 194, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 128, SE005, 184 );

--走る音
SE006 = playSeVer2( spep_0 + 130, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE006, 251 );
setPitch( spep_0 + 130, SE006, -500 );
setTimeStretch( SE006, 0.67, 30, 4 );
SE007 = playSeVer2( spep_0 + 130, 1111, "",spep_0 + 140, 0, 2, -1);
SE008 = playSeVer2( spep_0 + 140, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE008, 251 );
setPitch( spep_0 + 140, SE008, -500 );
setTimeStretch( SE008, 0.67, 30, 4 );
SE009 = playSeVer2( spep_0 + 140, 1111, "",spep_0 + 150, 0, 2, -1);

--向かってくる
SE010 = playSeVer2( spep_0 + 140, 1202, "",spep_0 + 200, 0, 14, 0.6);

--走る音
SE011 = playSeVer2( spep_0 + 150, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE011, 251 );
setPitch( spep_0 + 150, SE011, -500 );
setTimeStretch( SE011, 0.67, 30, 4 );
SE012 = playSeVer2( spep_0 + 150, 1111, "",spep_0 + 160, 0, 2, -1);
SE013 = playSeVer2( spep_0 + 160, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE013, 251 );
setPitch( spep_0 + 160, SE013, -500 );
setTimeStretch( SE013, 0.67, 30, 4 );
SE014 = playSeVer2( spep_0 + 160, 1111, "",spep_0 + 172, 0, 2, -1);
SE015 = playSeVer2( spep_0 + 172, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 172, SE015, 251 );
setPitch( spep_0 + 172, SE015, -500 );
setTimeStretch( SE015, 0.67, 30, 4 );
SE016 = playSeVer2( spep_0 + 172, 1111, "",spep_0 + 180, 0, 2, -1);
SE017 = playSeVer2( spep_0 + 180, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE017, 251 );
setPitch( spep_0 + 180, SE017, -500 );
setTimeStretch( SE017, 0.67, 30, 4 );
SE018 = playSeVer2( spep_0 + 180, 1111, "",spep_0 + 188, 0, 8, -1);

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 184, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 182;

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
entryFadeBg( spep_1 + 0, 0, 98, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 敵に向かってダッシュ(90F)
------------------------------------------------------
--spep_2 = 0;


-- ** エフェクト等 ** --
dash_f = entryEffectLife( spep_2 + 0 -1, SP_02r, 90, 0x100, -1, 0, 0, 0 );  --敵に向かってダッシュ
setEffMoveKey( spep_2 + 0 -1, dash_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, dash_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0 -1, dash_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, dash_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0 -1, dash_f, 0 );
setEffRotateKey( spep_2 + 90, dash_f, 0 );
setEffAlphaKey( spep_2 + 0 -1, dash_f, 0 );
setEffAlphaKey( spep_2 + 0, dash_f, 255 );
setEffAlphaKey( spep_2 + 90, dash_f, 255 );

dash_b = entryEffectLife( spep_2 + 0 -1, SP_03r, 90, 0x80, -1, 0, 0, 0 );  --敵に向かってダッシュ
setEffMoveKey( spep_2 + 0 -1, dash_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, dash_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0 -1, dash_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, dash_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0 -1, dash_b, 0 );
setEffRotateKey( spep_2 + 90, dash_b, 0 );
setEffAlphaKey( spep_2 + 0 -1, dash_b, 0 );
setEffAlphaKey( spep_2 + 0, dash_b, 255 );
setEffAlphaKey( spep_2 + 90, dash_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 117 );

setMoveKey( spep_2 + 0, 1, 242.2, 194.8 , 0 );
setMoveKey( spep_2 + 2, 1, 234.4, 200.4 , 0 );
setMoveKey( spep_2 + 4, 1, 223.4, 205.8 , 0 );
setMoveKey( spep_2 + 6, 1, 209.3, 211.1 , 0 );
setMoveKey( spep_2 + 8, 1, 191.9, 216.1 , 0 );
setMoveKey( spep_2 + 10, 1, 171.4, 220.9 , 0 );
setMoveKey( spep_2 + 12, 1, 147.6, 225.6 , 0 );
setMoveKey( spep_2 + 14, 1, 120.6, 230 , 0 );
setMoveKey( spep_2 + 16, 1, 90.5, 234.3 , 0 );
setMoveKey( spep_2 + 18, 1, 57.2, 238.4 , 0 );
setMoveKey( spep_2 + 20, 1, 20.6, 242.2 , 0 );
setMoveKey( spep_2 + 22, 1, -19.1, 245.8 , 0 );
setMoveKey( spep_2 + 24, 1, -62.1, 249.3 , 0 );
setMoveKey( spep_2 + 26, 1, -108.3, 252.5 , 0 );
setMoveKey( spep_2 + 28, 1, -157.6, 255.6 , 0 );
setMoveKey( spep_2 + 30, 1, -210.2, 258.4 , 0 );

setScaleKey( spep_2 + 0, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 2, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 4, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 6, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 8, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 10, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 12, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 14, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 16, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 18, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 20, 1, 1, 1 );
setScaleKey( spep_2 + 22, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 24, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 26, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 28, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 30, 1, 1.31, 1.31 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 音 ** --
--走っていく
SE020 = playSeVer2( spep_2 + 0, 1111, "",spep_2 + 16, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 0, SE020, 132 );                 
SE021 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 48, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 0, SE021, 60 );                   
SE022 = playSeVer2( spep_2 + 0, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE022, 178 );
setBandpassFilter( spep_2 + 0, SE022, 24, 1116 );
SE023 = playSeVer2( spep_2 + 10, 1111, "",spep_2 + 26, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 10, SE023, 130 );                 
SE024 = playSeVer2( spep_2 + 12, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE024, 178 );
setBandpassFilter( spep_2 + 12, SE024, 24, 1116 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 92, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    stopSe( SP_dodge - 12, SE024, 0);

   
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
-- ** 敵キャラクター ** --
setDisp( spep_2 + 90, 1, 0 );

setMoveKey( spep_2 + 32, 1, -265.9, 261.1 , 0 );
setMoveKey( spep_2 + 34, 1, -230.1, 253.7 , 0 );
setMoveKey( spep_2 + 36, 1, -166.1, 233.2 , 0 );
setMoveKey( spep_2 + 38, 1, -104.7, 213.1 , 0 );
setMoveKey( spep_2 + 40, 1, -45.9, 193.6 , 0 );
setMoveKey( spep_2 + 42, 1, 10.2, 174.8 , 0 );
setMoveKey( spep_2 + 44, 1, 63.8, 156.5 , 0 );
setMoveKey( spep_2 + 46, 1, 114.7, 138.8 , 0 );
setMoveKey( spep_2 + 48, 1, 163.1, 121.6 , 0 );
setMoveKey( spep_2 + 50, 1, 208.8, 105 , 0 );
setMoveKey( spep_2 + 52, 1, 251.9, 89 , 0 );
setMoveKey( spep_2 + 54, 1, 292.4, 73.5 , 0 );
setMoveKey( spep_2 + 66, 1, 292.4, 73.5 , 0 );
setMoveKey( spep_2 + 67, 1, 292.4, 73.5 , 0 );
setMoveKey( spep_2 + 68, 1, 237.5, 38 , 0 );
setMoveKey( spep_2 + 70, 1, 182.4, 2.6 , 0 );
setMoveKey( spep_2 + 72, 1, 127.4, -32.7 , 0 );
setMoveKey( spep_2 + 74, 1, 72.3, -67.9 , 0 );
setMoveKey( spep_2 + 76, 1, 69.6, -61.3 , 0 );
setMoveKey( spep_2 + 78, 1, 66.9, -54.5 , 0 );
setMoveKey( spep_2 + 80, 1, 64.2, -47.6 , 0 );
setMoveKey( spep_2 + 82, 1, 61.4, -40.6 , 0 );
setMoveKey( spep_2 + 84, 1, 58.6, -33.5 , 0 );
setMoveKey( spep_2 + 86, 1, 55.8, -26.2 , 0 );
setMoveKey( spep_2 + 88, 1, 52.9, -18.8 , 0 );
setMoveKey( spep_2 + 90, 1, 50, -11.3 , 0 );

setScaleKey( spep_2 + 32, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 34, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 36, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 38, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 40, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 42, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 44, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 46, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 48, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 50, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 52, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 54, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 66, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 67, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 68, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 70, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 72, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 74, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 76, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 78, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 80, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 82, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 84, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 86, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 88, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 90, 1, 1.72, 1.72 );

setRotateKey( spep_2 + 90, 1, 0 );

-- ** 音 ** --
--走っていく
SE025 = playSeVer2( spep_2 + 20, 1111, "",spep_2 + 38, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 20, SE025, 130 );
SE026 = playSeVer2( spep_2 + 22, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE026, 191 );
setBandpassFilter( spep_2 + 22, SE026, 24, 1116 );
SE027 = playSeVer2( spep_2 + 28, 1111, "",spep_2 + 44, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 28, SE027, 126 );                 
SE028 = playSeVer2( spep_2 + 30, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 30, SE028, 162 );
setBandpassFilter( spep_2 + 30, SE028, 24, 1116 );

--ジャンプ
SE029 = playSeVer2( spep_2 + 38, 1117, "",spep_2 + 60, 0, 6, -1);

--着地
SE030 = playSeVer2( spep_2 + 48, 1111, "",spep_2 + 64, 0, 6, -1);                       
SE031 = playSeVer2( spep_2 + 52, 1106, "", 0, 0, 0, -1);

--飛びかかってくる
SE032 = playSeVer2( spep_2 + 62, 1117, "",spep_2 + 84, 0, 6, -1);                       
SE033 = playSeVer2( spep_2 + 62, 1116, "", 0, 0, 0, 0.6);
setBandpassFilter( spep_2 + 62, SE033, 325, 24000 );
SE034 = playSeVer2( spep_2 + 64, 1000, "", 0, 0, 0, -1);
setBandpassFilter( spep_2 + 64, SE034, 700, 24000 );
SE035 = playSeVer2( spep_2 + 80, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE035, 46 );                  

-- ** 次の準備 ** --
spep_3 = spep_2 + 90;


------------------------------------------------------
-- 画面に向かってキック→ＨＩＴエフェクト(66f)
------------------------------------------------------
--spep_3 = 0;


-- ** エフェクト等 ** --
hit = entryEffectLife( spep_3 + 0, SP_04r, 66 -1, 0x100, -1, 0, 0, 0 );  --画面に向かってキック→ＨＩＴエフェクト
setEffMoveKey( spep_3 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66 -1, hit, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66 -1, hit, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit, 0 );
setEffRotateKey( spep_3 + 66 -1, hit, 0 );
setEffAlphaKey( spep_3 + 0, hit, 255 );
setEffAlphaKey( spep_3 + 66 -2 -1, hit, 255 );
setEffAlphaKey( spep_3 + 66 -1 -1, hit, 255 );
setEffAlphaKey( spep_3 + 66 -1, hit, 0 );

-- ** 音 ** --
--敵ヒット
SE036 = playSeVer2( spep_3 + 42, 1010, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_3 + 42, 1110, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE038 = playSeVer2( spep_3 + 62, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 62, SE038, 64 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 68, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 66 -1;

------------------------------------------------------
-- 着地し瞬間移動→パンチ→着地→構えて飛び上がる→空中キック(304f)
------------------------------------------------------
--spep_4 = 0;


-- ** エフェクト等 ** --
a1 = -1

kick_f = entryEffectLife( spep_4 + 0 -1 +a1 , SP_05r, 304, 0x100, -1, 0, 0, 0 );  --着地し瞬間移動→パンチ→着地→構えて飛び上がる→空中キック
setEffMoveKey( spep_4 + 0 -1 +a1, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 304 -2, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0 -1 +a1, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 304 -2, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0 -1 +a1, kick_f, 0 );
setEffRotateKey( spep_4 + 304 -2, kick_f, 0 );
setEffAlphaKey( spep_4 + 0 -2, kick_f, 0 );
setEffAlphaKey( spep_4 + 0 -1, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 304 -2 -2, kick_f, 255 );
setEffAlphaKey( spep_4 + 304 -1 -2, kick_f, 255 );
setEffAlphaKey( spep_4 + 304 -2, kick_f, 0 );

kick_b = entryEffectLife( spep_4 + 0 -1 +a1, SP_06r, 304, 0x80, -1, 0, 0, 0 );  --着地し瞬間移動→パンチ→着地→構えて飛び上がる→空中キック
setEffMoveKey( spep_4 + 0 -1 +a1, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 304 -2, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0 -1 +a1, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 304 -2, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0 -1  +a1, kick_b, 0 );
setEffRotateKey( spep_4 + 304 -2, kick_b, 0 );
setEffAlphaKey( spep_4 + 0 -2, kick_b, 0 );
setEffAlphaKey( spep_4 + 0 -1, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 304 -2 -2, kick_b, 255 );
setEffAlphaKey( spep_4 + 304 -1 -2, kick_b, 255 );
setEffAlphaKey( spep_4 + 304 -2, kick_b, 0 );

-- ** 敵キャラクター ** --
a2 = -1

setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 30 +a2, 1, 0 );
setDisp( spep_4 + 102 +a2, 1, 1 );
setDisp( spep_4 + 178 +a2, 1, 0 );
setDisp( spep_4 + 198 +a2, 1, 1 );
setDisp( spep_4 + 274 +a2, 1, 0 );
changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4 + 102 +a2, 1, 108 );
changeAnime( spep_4 + 116 +a2, 1, 106 );
changeAnime( spep_4 + 150 +a2, 1, 107 );
changeAnime( spep_4 + 198 +a2, 1, 106 );
changeAnime( spep_4 + 262 +a2, 1, 107 );

setMoveKey( spep_4 + 0, 1, 105.3, 44.2 , 0 );
--setMoveKey( spep_4 + 1, 1, 105.3, 44.2 , 0 );
setMoveKey( spep_4 + 2 +a2, 1, 73.1, 69.7 , 0 );
setMoveKey( spep_4 + 3 +a2, 1, 73.1, 69.7 , 0 );
setMoveKey( spep_4 + 4 +a2, 1, 165.6, 13.2 , 0 );
setMoveKey( spep_4 + 5 +a2, 1, 165.6, 13.2 , 0 );
setMoveKey( spep_4 + 6 +a2, 1, 141.2, 61.7 , 0 );
setMoveKey( spep_4 + 7 +a2, 1, 141.2, 61.7 , 0 );
setMoveKey( spep_4 + 8 +a2, 1, 91.8, 20.8 , 0 );
setMoveKey( spep_4 + 9 +a2, 1, 91.8, 20.8 , 0 );
setMoveKey( spep_4 + 10 +a2, 1, 110.9, 49 , 0 );
setMoveKey( spep_4 + 11 +a2, 1, 110.9, 49 , 0 );
setMoveKey( spep_4 + 12 +a2, 1, 115.8, 47.2 , 0 );
setMoveKey( spep_4 + 13 +a2, 1, 115.8, 47.2 , 0 );
setMoveKey( spep_4 + 14 +a2, 1, 117.7, 47.6 , 0 );
setMoveKey( spep_4 + 15 +a2, 1, 117.7, 47.6 , 0 );
setMoveKey( spep_4 + 16 +a2, 1, 119.5, 48 , 0 );
setMoveKey( spep_4 + 17 +a2, 1, 119.5, 48 , 0 );
setMoveKey( spep_4 + 18 +a2, 1, 121.2, 48.5 , 0 );
setMoveKey( spep_4 + 19 +a2, 1, 121.2, 48.5 , 0 );
setMoveKey( spep_4 + 20 +a2, 1, 123.1, 49 , 0 );
setMoveKey( spep_4 + 21 +a2, 1, 123.1, 49 , 0 );
setMoveKey( spep_4 + 22 +a2, 1, 124.9, 49.4 , 0 );
setMoveKey( spep_4 + 23 +a2, 1, 124.9, 49.4 , 0 );
setMoveKey( spep_4 + 24 +a2, 1, 126.7, 49.8 , 0 );
setMoveKey( spep_4 + 25 +a2, 1, 126.7, 49.8 , 0 );
setMoveKey( spep_4 + 26 +a2, 1, 128.5, 50.3 , 0 );
setMoveKey( spep_4 + 27 +a2, 1, 128.5, 50.3 , 0 );
setMoveKey( spep_4 + 28 +a2, 1, 130.4, 50.7 , 0 );
setMoveKey( spep_4 + 30 +a2, 1, 130.4, 50.7 , 0 );

setMoveKey( spep_4 + 102 +a2, 1, 16.4, -40.7 , 0 );
setMoveKey( spep_4 + 104 +a2, 1, 21.8, -31.7 , 0 );
setMoveKey( spep_4 + 106 +a2, 1, 27.2, -22.6 , 0 );
setMoveKey( spep_4 + 108 +a2, 1, 32.6, -13.5 , 0 );
setMoveKey( spep_4 + 110 +a2, 1, 37.9, -4.3 , 0 );
setMoveKey( spep_4 + 112 +a2, 1, 43.4, 4.9 , 0 );
setMoveKey( spep_4 + 114 +a2, 1, 48.8, 14.1 , 0 );
setMoveKey( spep_4 + 115 +a2, 1, 48.8, 14.1 , 0 );
setMoveKey( spep_4 + 116 +a2, 1, 130.9, 103.2 , 0 );  --106
setMoveKey( spep_4 + 117 +a2, 1, 130.9, 103.2 , 0 );
setMoveKey( spep_4 + 118 +a2, 1, 98.4, 147 , 0 );
setMoveKey( spep_4 + 119 +a2, 1, 98.4, 147 , 0 );
setMoveKey( spep_4 + 120 +a2, 1, 156, 55.7 , 0 );
setMoveKey( spep_4 + 121 +a2, 1, 156, 55.7 , 0 );
setMoveKey( spep_4 + 122 +a2, 1, 80.6, 33.5 , 0 );
setMoveKey( spep_4 + 123 +a2, 1, 80.6, 33.5 , 0 );
setMoveKey( spep_4 + 124 +a2, 1, 195.1, 136.3 , 0 );
setMoveKey( spep_4 + 125 +a2, 1, 195.1, 136.3 , 0 );
setMoveKey( spep_4 + 126 +a2, 1, 120.8, 112 , 0 );
setMoveKey( spep_4 + 127 +a2, 1, 120.8, 112 , 0 );
setMoveKey( spep_4 + 128 +a2, 1, 189.4, 54.7 , 0 );
setMoveKey( spep_4 + 129 +a2, 1, 189.4, 54.7 , 0 );
setMoveKey( spep_4 + 130 +a2, 1, 140, 58.5 , 0 );
setMoveKey( spep_4 + 131 +a2, 1, 140, 58.5 , 0 );
setMoveKey( spep_4 + 132 +a2, 1, 185.7, 112.2 , 0 );
setMoveKey( spep_4 + 133 +a2, 1, 185.7, 112.2 , 0 );
setMoveKey( spep_4 + 134 +a2, 1, 163.1, 92.1 , 0 );
setMoveKey( spep_4 + 135 +a2, 1, 163.1, 92.1 , 0 );
setMoveKey( spep_4 + 136 +a2, 1, 166.7, 90.9 , 0 );
setMoveKey( spep_4 + 137 +a2, 1, 166.7, 90.9 , 0 );
setMoveKey( spep_4 + 138 +a2, 1, 170.3, 89.6 , 0 );
setMoveKey( spep_4 + 139 +a2, 1, 170.3, 89.6 , 0 );
setMoveKey( spep_4 + 140 +a2, 1, 174, 88.4 , 0 );
setMoveKey( spep_4 + 141 +a2, 1, 174, 88.4 , 0 );
setMoveKey( spep_4 + 142 +a2, 1, 177.7, 87.2 , 0 );
setMoveKey( spep_4 + 143 +a2, 1, 177.7, 87.2 , 0 );
setMoveKey( spep_4 + 144 +a2, 1, 181.4, 85.9 , 0 );
setMoveKey( spep_4 + 145 +a2, 1, 181.4, 85.9 , 0 );
setMoveKey( spep_4 + 146 +a2, 1, 185.1, 84.7 , 0 );
setMoveKey( spep_4 + 147 +a2, 1, 185.1, 84.7 , 0 );
setMoveKey( spep_4 + 148 +a2, 1, 188.8, 83.4 , 0 );
setMoveKey( spep_4 + 149 +a2, 1, 188.8, 83.4 , 0 );
setMoveKey( spep_4 + 150 +a2, 1, 83.4, 225 , 0 );  --107
setMoveKey( spep_4 + 152 +a2, 1, 98.4, 233.5 , 0 );
setMoveKey( spep_4 + 154 +a2, 1, 122.3, 240.1 , 0 );
setMoveKey( spep_4 + 156 +a2, 1, 155.7, 244.6 , 0 );
setMoveKey( spep_4 + 158 +a2, 1, 198.9, 247.1 , 0 );
setMoveKey( spep_4 + 160 +a2, 1, 252.3, 247.4 , 0 );
setMoveKey( spep_4 + 162 +a2, 1, 316.5, 245.5 , 0 );
setMoveKey( spep_4 + 164 +a2, 1, 391.8, 241.2 , 0 );
setMoveKey( spep_4 + 166 +a2, 1, 478.8, 234.3 , 0 );
setMoveKey( spep_4 + 168 +a2, 1, 577.8, 224.8 , 0 );
setMoveKey( spep_4 + 170 +a2, 1, 689.2, 212.7 , 0 );
setMoveKey( spep_4 + 172 +a2, 1, 813.7, 197.9 , 0 );
setMoveKey( spep_4 + 174 +a2, 1, 951.4, 180.3 , 0 );
setMoveKey( spep_4 + 176 +a2, 1, 1103, 159.6 , 0 );
setMoveKey( spep_4 + 178 +a2, 1, 1103 +40, 159.6 -30 , 0 );

setMoveKey( spep_4 + 198 +a2, 1, -16.4, -128.6 , 0 );   --106
setMoveKey( spep_4 + 200 +a2, 1, -11.4, -121.7 , 0 );
setMoveKey( spep_4 + 202 +a2, 1, -6.2, -114.7 , 0 );
setMoveKey( spep_4 + 204 +a2, 1, -1.1, -107.7 , 0 );
setMoveKey( spep_4 + 206 +a2, 1, 4, -100.6 , 0 );
setMoveKey( spep_4 + 208 +a2, 1, 9.2, -93.6 , 0 );
setMoveKey( spep_4 + 210 +a2, 1, 14.4, -86.5 , 0 );
setMoveKey( spep_4 + 212 +a2, 1, 19.6, -79.6 , 0 );
setMoveKey( spep_4 + 214 +a2, 1, 24.6, -72.6 , 0 );
setMoveKey( spep_4 + 216 +a2, 1, 29.6, -65.8 , 0 );
setMoveKey( spep_4 + 218 +a2, 1, 34.5, -59 , 0 );
setMoveKey( spep_4 + 220 +a2, 1, 39.2, -52.4 , 0 );
setMoveKey( spep_4 + 222 +a2, 1, 43.7, -45.9 , 0 );
setMoveKey( spep_4 + 224 +a2, 1, 48.1, -39.7 , 0 );
setMoveKey( spep_4 + 226 +a2, 1, 52.2, -33.7 , 0 );
setMoveKey( spep_4 + 228 +a2, 1, 56.1, -27.8 , 0 );
setMoveKey( spep_4 + 230 +a2, 1, 59.8, -22.3 , 0 );
setMoveKey( spep_4 + 232 +a2, 1, 63.1, -17 , 0 );
setMoveKey( spep_4 + 234 +a2, 1, 66.2, -12.1 , 0 );
setMoveKey( spep_4 + 236 +a2, 1, 68.9, -7.4 , 0 );
setMoveKey( spep_4 + 238 +a2, 1, 71.3, -3.3 , 0 );
setMoveKey( spep_4 + 240 +a2, 1, 73.2, 0.7 , 0 );
setMoveKey( spep_4 + 242 +a2, 1, 74.8, 4.2 , 0 );
setMoveKey( spep_4 + 244 +a2, 1, 75.9, 7.3 , 0 );
setMoveKey( spep_4 + 246 +a2, 1, 76.6, 9.8 , 0 );
setMoveKey( spep_4 + 248 +a2, 1, 76.7, 12 , 0 );
setMoveKey( spep_4 + 250 +a2, 1, 76.4, 13.6 , 0 );
setMoveKey( spep_4 + 251 +a2, 1, 76.4, 13.6 , 0 );
setMoveKey( spep_4 + 252 +a2, 1, 128.9, -554 , 0 );  --大きくなる
setMoveKey( spep_4 + 254 +a2, 1, 129.6, -507.9 , 0 );
setMoveKey( spep_4 + 256 +a2, 1, 130.3, -461.8 , 0 );
setMoveKey( spep_4 + 258 +a2, 1, 131, -415.7 , 0 );
setMoveKey( spep_4 + 260 +a2, 1, 127.6, -399.1 , 0 );
setMoveKey( spep_4 + 261 +a2, 1, 127.6, -399.1 , 0 );
setMoveKey( spep_4 + 262 +a2, 1, 118.4, -66.5 , 0 );  --107
setMoveKey( spep_4 + 264 +a2, 1, 192.2, -88.6 , 0 );
setMoveKey( spep_4 + 266 +a2, 1, 349.6, -241.8 , 0 );
setMoveKey( spep_4 + 268 +a2, 1, 367.5, -322.3 , 0 );
setMoveKey( spep_4 + 270 +a2, 1, 584.6, -282 , 0 );
setMoveKey( spep_4 + 272 +a2, 1, 612.6, -368.7 , 0 );
setMoveKey( spep_4 + 274 +a2, 1, 612.6 +30, -368.7 -80 , 0 );

setScaleKey( spep_4 + 0, 1, 1.59, 1.59 );
--setScaleKey( spep_4 + 1, 1, 1.59, 1.59 );
setScaleKey( spep_4 + 2 +a2, 1, 1.58, 1.58 );
setScaleKey( spep_4 + 5 +a2, 1, 1.58, 1.58 );
setScaleKey( spep_4 + 6 +a2, 1, 1.57, 1.57 );
setScaleKey( spep_4 + 7 +a2, 1, 1.57, 1.57 );
setScaleKey( spep_4 + 8 +a2, 1, 1.56, 1.56 );
setScaleKey( spep_4 + 11 +a2, 1, 1.56, 1.56 );
setScaleKey( spep_4 + 12 +a2, 1, 1.55, 1.55 );
setScaleKey( spep_4 + 13 +a2, 1, 1.55, 1.55 );
setScaleKey( spep_4 + 14 +a2, 1, 1.54, 1.54 );
setScaleKey( spep_4 + 15 +a2, 1, 1.54, 1.54 );
setScaleKey( spep_4 + 16 +a2, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 17 +a2, 1, 1.53, 1.53 );
setScaleKey( spep_4 + 18 +a2, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 19 +a2, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 20 +a2, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 21 +a2, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22 +a2, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 23 +a2, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 24 +a2, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 25 +a2, 1, 1.48, 1.48 );
setScaleKey( spep_4 + 26 +a2, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 27 +a2, 1, 1.46, 1.46 );
setScaleKey( spep_4 + 28 +a2, 1, 1.45, 1.45 );
setScaleKey( spep_4 + 30 +a2, 1, 1.45, 1.45 );

setScaleKey( spep_4 + 102 +a2, 1, 3.18, 3.18 );
setScaleKey( spep_4 + 104 +a2, 1, 3.19, 3.19 );
setScaleKey( spep_4 + 106 +a2, 1, 3.19, 3.19 );
setScaleKey( spep_4 + 108 +a2, 1, 3.2, 3.2 );
setScaleKey( spep_4 + 110 +a2, 1, 3.2, 3.2 );
setScaleKey( spep_4 + 112 +a2, 1, 3.21, 3.21 );
setScaleKey( spep_4 + 115 +a2, 1, 3.21, 3.21 );
setScaleKey( spep_4 + 116 +a2, 1, 2.99, 2.99 );  --106
setScaleKey( spep_4 + 117 +a2, 1, 2.99, 2.99 );
setScaleKey( spep_4 + 118 +a2, 1, 3, 3 );
setScaleKey( spep_4 + 121 +a2, 1, 3, 3 );
setScaleKey( spep_4 + 122 +a2, 1, 3.01, 3.01 );
setScaleKey( spep_4 + 125 +a2, 1, 3.01, 3.01 );
setScaleKey( spep_4 + 126 +a2, 1, 3.02, 3.02 );
setScaleKey( spep_4 + 129 +a2, 1, 3.02, 3.02 );
setScaleKey( spep_4 + 130 +a2, 1, 3.03, 3.03 );
setScaleKey( spep_4 + 135 +a2, 1, 3.03, 3.03 );
setScaleKey( spep_4 + 136 +a2, 1, 3.04, 3.04 );
setScaleKey( spep_4 + 139 +a2, 1, 3.04, 3.04 );
setScaleKey( spep_4 + 140 +a2, 1, 3.05, 3.05 );
setScaleKey( spep_4 + 143 +a2, 1, 3.05, 3.05 );
setScaleKey( spep_4 + 144 +a2, 1, 3.06, 3.06 );
setScaleKey( spep_4 + 149 +a2, 1, 3.06, 3.06 );
setScaleKey( spep_4 + 150 +a2, 1, 0.85, 0.85 );  --107
setScaleKey( spep_4 + 152 +a2, 1, 0.88, 0.88 );
setScaleKey( spep_4 + 154 +a2, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 156 +a2, 1, 1.01, 1.01 );
setScaleKey( spep_4 + 158 +a2, 1, 1.11, 1.11 );
setScaleKey( spep_4 + 160 +a2, 1, 1.25, 1.25 );
setScaleKey( spep_4 + 162 +a2, 1, 1.41, 1.41 );
setScaleKey( spep_4 + 164 +a2, 1, 1.61, 1.61 );
setScaleKey( spep_4 + 166 +a2, 1, 1.84, 1.84 );
setScaleKey( spep_4 + 168 +a2, 1, 2.1, 2.1 );
setScaleKey( spep_4 + 170 +a2, 1, 2.4, 2.4 );
setScaleKey( spep_4 + 172 +a2, 1, 2.73, 2.73 );
setScaleKey( spep_4 + 174 +a2, 1, 3.1, 3.1 );
setScaleKey( spep_4 + 176 +a2, 1, 3.51, 3.51 );
setScaleKey( spep_4 + 178 +a2, 1, 3.51, 3.51 );

setScaleKey( spep_4 + 198 +a2, 1, 1.87, 1.87 );  --106
setScaleKey( spep_4 + 200 +a2, 1, 1.92, 1.92 );
setScaleKey( spep_4 + 202 +a2, 1, 1.97, 1.97 );
setScaleKey( spep_4 + 204 +a2, 1, 2.02, 2.02 );
setScaleKey( spep_4 + 206 +a2, 1, 2.06, 2.06 );
setScaleKey( spep_4 + 208 +a2, 1, 2.11, 2.11 );
setScaleKey( spep_4 + 210 +a2, 1, 2.16, 2.16 );
setScaleKey( spep_4 + 212 +a2, 1, 2.21, 2.21 );
setScaleKey( spep_4 + 214 +a2, 1, 2.26, 2.26 );
setScaleKey( spep_4 + 216 +a2, 1, 2.3, 2.3 );
setScaleKey( spep_4 + 218 +a2, 1, 2.35, 2.35 );
setScaleKey( spep_4 + 220 +a2, 1, 2.4, 2.4 );
setScaleKey( spep_4 + 222 +a2, 1, 2.45, 2.45 );
setScaleKey( spep_4 + 224 +a2, 1, 2.5, 2.5 );
setScaleKey( spep_4 + 226 +a2, 1, 2.54, 2.54 );
setScaleKey( spep_4 + 228 +a2, 1, 2.59, 2.59 );
setScaleKey( spep_4 + 230 +a2, 1, 2.64, 2.64 );
setScaleKey( spep_4 + 232 +a2, 1, 2.69, 2.69 );
setScaleKey( spep_4 + 234 +a2, 1, 2.74, 2.74 );
setScaleKey( spep_4 + 236 +a2, 1, 2.78, 2.78 );
setScaleKey( spep_4 + 238 +a2, 1, 2.83, 2.83 );
setScaleKey( spep_4 + 240 +a2, 1, 2.88, 2.88 );
setScaleKey( spep_4 + 242 +a2, 1, 2.93, 2.93 );
setScaleKey( spep_4 + 244 +a2, 1, 2.98, 2.98 );
setScaleKey( spep_4 + 246 +a2, 1, 3.02, 3.02 );
setScaleKey( spep_4 + 248 +a2, 1, 3.07, 3.07 );
setScaleKey( spep_4 + 250 +a2, 1, 3.12, 3.12 );
setScaleKey( spep_4 + 251 +a2, 1, 3.12, 3.12 );
setScaleKey( spep_4 + 252 +a2, 1, 5.25, 5.25 );
setScaleKey( spep_4 + 254 +a2, 1, 5.29, 5.29 );
setScaleKey( spep_4 + 256 +a2, 1, 5.32, 5.32 );
setScaleKey( spep_4 + 258 +a2, 1, 5.36, 5.36 );
setScaleKey( spep_4 + 260 +a2, 1, 5.21, 5.21 );
setScaleKey( spep_4 + 261 +a2, 1, 5.21, 5.21 );
setScaleKey( spep_4 + 262 +a2, 1, 1.37, 1.37 );  --107
setScaleKey( spep_4 + 264 +a2, 1, 1.92, 1.92 );
setScaleKey( spep_4 + 266 +a2, 1, 2.42, 2.42 );
setScaleKey( spep_4 + 268 +a2, 1, 2.9, 2.9 );
setScaleKey( spep_4 + 270 +a2, 1, 3.44, 3.44 );
setScaleKey( spep_4 + 272 +a2, 1, 3.98, 3.98 );
setScaleKey( spep_4 + 274 +a2, 1, 3.98, 3.98 );

setRotateKey( spep_4 + 0, 1, 0 );
--setRotateKey( spep_4 + 1, 1, 0 );
setRotateKey( spep_4 + 2 +a2, 1, 0.5 );
setRotateKey( spep_4 + 3 +a2, 1, 0.5 );
setRotateKey( spep_4 + 4 +a2, 1, 0.9 );
setRotateKey( spep_4 + 5 +a2, 1, 0.9 );
setRotateKey( spep_4 + 6 +a2, 1, 1.4 );
setRotateKey( spep_4 + 7 +a2, 1, 1.4 );
setRotateKey( spep_4 + 8 +a2, 1, 1.9 );
setRotateKey( spep_4 + 9 +a2, 1, 1.9 );
setRotateKey( spep_4 + 10 +a2, 1, 2.3 );
setRotateKey( spep_4 + 11 +a2, 1, 2.3 );
setRotateKey( spep_4 + 12 +a2, 1, 2.8 );
setRotateKey( spep_4 + 13 +a2, 1, 2.8 );
setRotateKey( spep_4 + 14 +a2, 1, 3.3 );
setRotateKey( spep_4 + 15 +a2, 1, 3.3 );
setRotateKey( spep_4 + 16 +a2, 1, 3.7 );
setRotateKey( spep_4 + 17 +a2, 1, 3.7 );
setRotateKey( spep_4 + 18 +a2, 1, 4.2 );
setRotateKey( spep_4 + 19 +a2, 1, 4.2 );
setRotateKey( spep_4 + 20 +a2, 1, 4.7 );
setRotateKey( spep_4 + 21 +a2, 1, 4.7 );
setRotateKey( spep_4 + 22 +a2, 1, 5.1 );
setRotateKey( spep_4 + 23 +a2, 1, 5.1 );
setRotateKey( spep_4 + 24 +a2, 1, 5.6 );
setRotateKey( spep_4 + 25 +a2, 1, 5.6 );
setRotateKey( spep_4 + 26 +a2, 1, 6.1 );
setRotateKey( spep_4 + 27 +a2, 1, 6.1 );
setRotateKey( spep_4 + 28 +a2, 1, 6.5 );
setRotateKey( spep_4 + 30 +a2, 1, 6.5 );

setRotateKey( spep_4 + 102 +a2, 1, 1.8 );
setRotateKey( spep_4 + 104 +a2, 1, 0.1 );
setRotateKey( spep_4 + 106 +a2, 1, -1.6 );
setRotateKey( spep_4 + 108 +a2, 1, -3.2 );
setRotateKey( spep_4 + 110 +a2, 1, -4.9 );
setRotateKey( spep_4 + 112 +a2, 1, -6.5 );
setRotateKey( spep_4 + 114 +a2, 1, -8.2 );
setRotateKey( spep_4 + 115 +a2, 1, -8.2 );
setRotateKey( spep_4 + 116 +a2, 1, -42.9 );  --106
setRotateKey( spep_4 + 117 +a2, 1, -42.9 );
setRotateKey( spep_4 + 118 +a2, 1, -42 );
setRotateKey( spep_4 + 119 +a2, 1, -42 );
setRotateKey( spep_4 + 120 +a2, 1, -41.1 );
setRotateKey( spep_4 + 121 +a2, 1, -41.1 );
setRotateKey( spep_4 + 122 +a2, 1, -40.1 );
setRotateKey( spep_4 + 123 +a2, 1, -40.1 );
setRotateKey( spep_4 + 124 +a2, 1, -39.2 );
setRotateKey( spep_4 + 125 +a2, 1, -39.2 );
setRotateKey( spep_4 + 126 +a2, 1, -38.3 );
setRotateKey( spep_4 + 127 +a2, 1, -38.3 );
setRotateKey( spep_4 + 128 +a2, 1, -37.3 );
setRotateKey( spep_4 + 129 +a2, 1, -37.3 );
setRotateKey( spep_4 + 130 +a2, 1, -36.4 );
setRotateKey( spep_4 + 131 +a2, 1, -36.4 );
setRotateKey( spep_4 + 132 +a2, 1, -35.4 );
setRotateKey( spep_4 + 133 +a2, 1, -35.4 );
setRotateKey( spep_4 + 134 +a2, 1, -34.5 );
setRotateKey( spep_4 + 135 +a2, 1, -34.5 );
setRotateKey( spep_4 + 136 +a2, 1, -33.6 );
setRotateKey( spep_4 + 137 +a2, 1, -33.6 );
setRotateKey( spep_4 + 138 +a2, 1, -32.6 );
setRotateKey( spep_4 + 139 +a2, 1, -32.6 );
setRotateKey( spep_4 + 140 +a2, 1, -31.7 );
setRotateKey( spep_4 + 141 +a2, 1, -31.7 );
setRotateKey( spep_4 + 142 +a2, 1, -30.8 );
setRotateKey( spep_4 + 143 +a2, 1, -30.8 );
setRotateKey( spep_4 + 144 +a2, 1, -29.8 );
setRotateKey( spep_4 + 145 +a2, 1, -29.8 );
setRotateKey( spep_4 + 146 +a2, 1, -28.9 );
setRotateKey( spep_4 + 147 +a2, 1, -28.9 );
setRotateKey( spep_4 + 148 +a2, 1, -28 );
setRotateKey( spep_4 + 149 +a2, 1, -28 );
setRotateKey( spep_4 + 150 +a2, 1, -22.7 );  --107
setRotateKey( spep_4 + 152 +a2, 1, -22.5 );
setRotateKey( spep_4 + 154 +a2, 1, -21.9 );
setRotateKey( spep_4 + 156 +a2, 1, -20.8 );
setRotateKey( spep_4 + 158 +a2, 1, -19.3 );
setRotateKey( spep_4 + 160 +a2, 1, -17.4 );
setRotateKey( spep_4 + 162 +a2, 1, -15.1 );
setRotateKey( spep_4 + 164 +a2, 1, -12.4 );
setRotateKey( spep_4 + 166 +a2, 1, -9.2 );
setRotateKey( spep_4 + 168 +a2, 1, -5.6 );
setRotateKey( spep_4 + 170 +a2, 1, -1.5 );
setRotateKey( spep_4 + 172 +a2, 1, 2.9 );
setRotateKey( spep_4 + 174 +a2, 1, 7.8 );
setRotateKey( spep_4 + 176 +a2, 1, 13.1 );
setRotateKey( spep_4 + 178 +a2, 1, 13.1 );

setRotateKey( spep_4 + 198 +a2, 1, -35.3 );  --106
setRotateKey( spep_4 + 200 +a2, 1, -35.6 );
setRotateKey( spep_4 + 202 +a2, 1, -35.8 );
setRotateKey( spep_4 + 204 +a2, 1, -36.1 );
setRotateKey( spep_4 + 206 +a2, 1, -36.3 );
setRotateKey( spep_4 + 208 +a2, 1, -36.6 );
setRotateKey( spep_4 + 210 +a2, 1, -36.8 );
setRotateKey( spep_4 + 212 +a2, 1, -37 );
setRotateKey( spep_4 + 214 +a2, 1, -37.2 );
setRotateKey( spep_4 + 216 +a2, 1, -37.4 );
setRotateKey( spep_4 + 218 +a2, 1, -37.5 );
setRotateKey( spep_4 + 220 +a2, 1, -37.7 );
setRotateKey( spep_4 + 222 +a2, 1, -37.8 );
setRotateKey( spep_4 + 224 +a2, 1, -38 );
setRotateKey( spep_4 + 226 +a2, 1, -38.1 );
setRotateKey( spep_4 + 228 +a2, 1, -38.2 );
setRotateKey( spep_4 + 230 +a2, 1, -38.4 );
setRotateKey( spep_4 + 232 +a2, 1, -38.5 );
setRotateKey( spep_4 + 234 +a2, 1, -38.5 );
setRotateKey( spep_4 + 236 +a2, 1, -38.6 );
setRotateKey( spep_4 + 238 +a2, 1, -38.7 );
setRotateKey( spep_4 + 240 +a2, 1, -38.7 );
setRotateKey( spep_4 + 242 +a2, 1, -38.8 );
setRotateKey( spep_4 + 244 +a2, 1, -38.8 );
setRotateKey( spep_4 + 246 +a2, 1, -38.9 );
setRotateKey( spep_4 + 250 +a2, 1, -38.9 );
setRotateKey( spep_4 + 251 +a2, 1, -38.9 );
setRotateKey( spep_4 + 252 +a2, 1, -57.9 );
setRotateKey( spep_4 + 261 +a2, 1, -57.9 );
setRotateKey( spep_4 + 262 +a2, 1, -44 );  --107
setRotateKey( spep_4 + 264 +a2, 1, -30 );
setRotateKey( spep_4 + 266 +a2, 1, -16.1 );
setRotateKey( spep_4 + 268 +a2, 1, -2.1 );
setRotateKey( spep_4 + 270 +a2, 1, 11.9 );
setRotateKey( spep_4 + 272 +a2, 1, 25.9 );

-- ** 音 ** --
--着地
SE039 = playSeVer2( spep_4 + 38, 1301, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 38, SE039, 141 );
SE040 = playSeVer2( spep_4 + 38, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 38, SE040, 141 );
setPitch( spep_4 + 38, SE040, -400 );
setTimeStretch( SE040, 0.73, 30, 4 );
SE041 = playSeVer2( spep_4 + 38, 1108, "", 0, 0, 0, -1);
setPitch( spep_4 + 38, SE041, -400 );
setTimeStretch( SE041, 0.73, 30, 4 );

--瞬間移動
SE042 = playSeVer2( spep_4 + 76, 1109, "", 0, 0, 0, -1);

--パンチ
SE043 = playSeVer2( spep_4 + 118, 1189, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_4 + 120, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 120, SE044, 92 );
SE045 = playSeVer2( spep_4 + 124, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 124, SE045, 120 );

--敵飛んでいく
SE046 = playSeVer2( spep_4 + 142, 1121, "",spep_4 + 228, 0, 36, -1);
setSeVolumeByWorkId( spep_4 + 142, SE046, 38 );
SE047 = playSeVer2( spep_4 + 152, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 152, SE047, 45 );

--着地
SE048 = playSeVer2( spep_4 + 168, 1301, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 168, SE048, 168 );
SE049 = playSeVer2( spep_4 + 172, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 172, SE049, 153 );
setBandpassFilter( spep_4 + 172, SE049, 24, 2865 );
SE050 = playSeVer2( spep_4 + 172, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 172, SE050, 172 );
setBandpassFilter( spep_4 + 172, SE050, 24, 970 );

--飛びかかる
SE051 = playSeVer2( spep_4 + 212, 1117, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_4 + 212, 44, "", 0, 0, 0, -1);

--蹴り飛ばし
SE053 = playSeVer2( spep_4 + 264, 1120, "", 0, 0, 0, 0.6);
setPitch( spep_4 + 264, SE053, 100 );
setTimeStretch( SE053, 1.07, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 306, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 304 -2;


------------------------------------------------------
-- フィニッシュ(108f)
------------------------------------------------------
-- ** ひび割れ ** --
finish_f = entryEffect( spep_5 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_5 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 8, finish_f, 0 );
setEffRotateKey( spep_5 + 112, finish_f, 0 );
setEffAlphaKey( spep_5 + 8, finish_f, 255 );
setEffAlphaKey( spep_5 + 112, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --フィニッシュ
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 112, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 112, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 112, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 112, finish_b, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_5 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_5 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_5 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_5 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_5 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_5 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_5 + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 112, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 112, 1, 0 );

changeAnime( spep_5 + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_5 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_5 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_5 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_5 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_5 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_5 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_5 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_5 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_5 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_5 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_5 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_5 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_5 + 0, 1, -122.8 - 232 );
setRotateKey( spep_5 + 2, 1, -122.8 );
setRotateKey( spep_5 -3 + 6, 1, -1 );
setRotateKey( spep_5 -3 + 8, 1, 120.7 );
setRotateKey( spep_5 -3 + 10, 1, 242.5 );
setRotateKey( spep_5 -3 + 12, 1, 364.3 );
setRotateKey( spep_5 -3 + 14, 1, 486 );
setRotateKey( spep_5 -3 + 16, 1, 607.8 );
setRotateKey( spep_5 -3 + 18, 1, 729.5 );
setRotateKey( spep_5 + 112, 1, 729.5 );

-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_5 + 14, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_5 + 14, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_5 + 6 ); -- ダメージ表示フレーム
endPhase( spep_5 + 108 ); -- 終了フレーム

end