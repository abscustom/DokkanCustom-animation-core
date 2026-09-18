--1021210:破壊神ラムーシ_破壊神の一喝_sp2141
--sp_effect_a9_00079

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
SP_01 = 156932;	 --正面構え	ef_001
SP_02 = 156933;	 --咆哮	ef_002
SP_03 = 156934;	 --突進	ef_003
SP_04 = 156936;	 --フィニッシュ_敵より手前	ef_004_front
SP_05 = 156937;	 --フィニッシュ_敵より奥	ef_004_back


--敵側
SP_03r = 156935;	 --(敵側)突進	ef_003_r
SP_04r = 156938;	 --（敵側）フィニッシュ_敵より手前	ef_004_front_r
SP_05r = 156939;	 --（敵側）フィニッシュ_敵より奥	ef_004_back_r

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
-- 正面構え(116F)
------------------------------------------------------
spep_0 = 0;

first_b = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --正面構え	ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 116, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 116, first_b, 255 );

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 0, 1232 );
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );

--足振り上げ
SE002 = playSe( spep_0 + 28, 1116 );
stopSe( spep_0 + 50, SE002, 16 );

--足振り上げ
SE003 = playSe( spep_0 + 40, 1004 );
setPitch( spep_0 + 40, SE003, -400 );
setTimeStretch( SE003, 0.73, 10, 1 );

--四股を踏む
SE004 = playSe( spep_0 + 70, 1011 );

--四股を踏む
SE005 = playSe( spep_0 + 72, 1159 );
setSeVolumeByWorkId( spep_0 + 72, SE005, 86 );
stopSe( spep_0 +116 +86 + 4, SE005, 12 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


------------------------------------------------------
-- 咆哮(86F)
------------------------------------------------------
--spep_1 = 0;
-- ** エフェクト等 ** --
roar = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --咆哮	ef_002
setEffMoveKey( spep_1 + 0, roar, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, roar, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, roar, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, roar, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, roar, 0 );
setEffRotateKey( spep_1 + 86, roar, 0 );
setEffAlphaKey( spep_1 + 0, roar, 255 );
setEffAlphaKey( spep_1 + 86, roar, 255 );

spep_x = spep_1 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
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
--顔カットイン
SE006 = playSe( spep_1 + 2, 1018 );

--雄叫び
SE007 = playSe( spep_1 + 2, 1258 );
setSeVolumeByWorkId( spep_1 + 2, SE007, 57 );
stopSe( spep_1 +86 + 6, SE007, 10 );

--雄叫び
SE008 = playSe( spep_1 + 2, 1175 );
setSeVolumeByWorkId( spep_1 + 2, SE008, 70 );
stopSe( spep_1 +86 + 6, SE008, 10 );

--雄叫び
SE009 = playSe( spep_1 + 2, 1278 );
stopSe( spep_1 +86 + 6, SE009, 10 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 22, 0, 64 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_1 + 68, 16, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_2 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--走ってくる
SE011 = playSe( spep_2 +84, 1314,"",0.6 );
stopSe( spep_2 +94 +80 + 20, SE011, 32 );

--走ってくる
SE012 = playSe( spep_2 +84, 1002,"",0.6 );
setSeVolumeByWorkId( spep_2 +84, SE012, 78 );
stopSe( spep_2 +94 + 6, SE012, 14 );

--走ってくる
SE013 = playSe( spep_2 +84, 1011,"",0.6 );
setSeVolumeByWorkId( spep_2 +84, SE013, 52 );
stopSe( spep_2 +94 + 16, SE013, 18 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 突進(80F)
------------------------------------------------------
--spep_3 = 0;
-- ** エフェクト等 ** --
charge = entryEffectLife( spep_3 + 0, SP_03, 80, 0x100, -1, 0, 0, 0 );  --突進	ef_003
setEffMoveKey( spep_3 + 0, charge, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, charge, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, charge, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, charge, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, charge, 0 );
setEffRotateKey( spep_3 + 80, charge, 0 );
setEffAlphaKey( spep_3 + 0, charge, 255 );
setEffAlphaKey( spep_3 + 79, charge, 255 );
setEffAlphaKey( spep_3 + 80, charge, 0 );

-- ** 音 ** --
--走ってくる
SE014 = playSe( spep_3 + 6, 1002,"",0.6 );
setSeVolumeByWorkId( spep_3 + 6, SE014, 78 );
stopSe( spep_3 + 26, SE014, 18 );

--走ってくる
SE015 = playSe( spep_3 + 6, 1011,"",0.6 );
setSeVolumeByWorkId( spep_3 + 6, SE015, 76 );
stopSe( spep_3 + 24, SE015, 20 );

--走ってくる
SE016 = playSe( spep_3 + 24, 1002,"",0.6 );
setSeVolumeByWorkId( spep_3 + 24, SE016, 69 );
stopSe( spep_3 + 40, SE016, 18 );

--走ってくる
SE017 = playSe( spep_3 + 24, 1011,"",0.6 );
setSeVolumeByWorkId( spep_3 + 24, SE017, 76 );
stopSe( spep_3 + 42, SE017, 18 );

--走ってくる
SE018 = playSe( spep_3 + 40, 1002,"",0.6 );
setSeVolumeByWorkId( spep_3 + 40, SE018, 77 );
stopSe( spep_3 + 60, SE018, 14 );

--走ってくる
SE019 = playSe( spep_3 + 40, 1011,"",0.6 );
setSeVolumeByWorkId( spep_3 + 40, SE019, 74 );
stopSe( spep_3 + 60, SE019, 18 );

--走ってくる
SE020 = playSe( spep_3 + 60, 1002,"",0.6 );
setSeVolumeByWorkId( spep_3 + 60, SE020, 76 );
stopSe( spep_3 +70 + 6, SE020, 16 );

--走ってくる
SE021 = playSe( spep_3 + 60, 1011,"",0.6 );
setSeVolumeByWorkId( spep_3 + 60, SE021, 70 );
stopSe( spep_3 +70 + 12, SE021, 14 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 80 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 80;

------------------------------------------------------
-- フィニッシュ(186F)
------------------------------------------------------
--spep_4 = 0;
-- ** エフェクト等 ** --
fiish_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --フィニッシュ_敵より手前	ef_004_front
setEffMoveKey( spep_4 + 0, fiish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 186, fiish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, fiish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 186, fiish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fiish_f, 0 );
setEffRotateKey( spep_4 + 186, fiish_f, 0 );
setEffAlphaKey( spep_4 + 0, fiish_f, 255 );
setEffAlphaKey( spep_4 + 186, fiish_f, 255 );

fininsh_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --フィニッシュ_敵より奥	ef_004_back
setEffMoveKey( spep_4 + 0, fininsh_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 186, fininsh_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, fininsh_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 186, fininsh_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fininsh_b, 0 );
setEffRotateKey( spep_4 + 186, fininsh_b, 0 );
setEffAlphaKey( spep_4 + 0, fininsh_b, 255 );
setEffAlphaKey( spep_4 + 186, fininsh_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 117 );

a1=200;
b1=20;
setMoveKey( spep_4 + 0, 1, 375.1 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 + 1, 1, 352.5 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 + 2, 1, 330 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 307.5 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 285 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 280.5 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 275.9 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 271.4 -a1, -23.9 +b1 , 0 );

s1=0.2;
setScaleKey( spep_4 + 0, 1, 1.5 +s1, 1.5 +s1 );

setRotateKey( spep_4 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 186 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 12 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 271.4 -a1, -23.9 +b1 , 0 );
    setMoveKey( SP_dodge + 2, 1, 266.8 -a1, -23.9 +b1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 266 -a1, -23.9 +b1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 265.2 -a1, -23.9 +b1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 264.4 -a1, -23.9 +b1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 263.6 -a1, -23.9 +b1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.5 +s1, 1.5 +s1 );
    setScaleKey( SP_dodge + 10, 1, 1.5 +s1, 1.5 +s1 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
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
setDisp( spep_4 -3 + 174, 1, 0 );
changeAnime( spep_4 -3 + 80, 1, 106 );
changeAnime( spep_4 -3 + 92, 1, 105 );

setMoveKey( spep_4 -3 + 16, 1, 266.8 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 266 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 265.2 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 264.4 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 263.6 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 262.8 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 251.7 -a1, -22.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 240.7 -a1, -21.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 229.7 -a1, -20.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 218.7 -a1, -19.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 216.8 -a1, -19.7 +b1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 214.8 -a1, -19.5 +b1 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 212.9 -a1, -19.4 +b1 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 210.9 -a1, -19.1 +b1 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 208.9 -a1, -19 +b1 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 208.6 -a1, -18.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 208.2 -a1, -18.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 207.9 -a1, -18.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 207.5 -a1, -18.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 207.5 -a1, -18.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 207.4 -a1, -18.8 +b1 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 207.4 -a1, -18.8 +b1 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 207.3 -a1, -18.8 +b1 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 207.3 -a1, -18.8 +b1 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 207.2 -a1, -18.8 +b1 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 207.2 -a1, -18.8 +b1 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 206.5 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 79, 1, 206.5 -a1, -16.9 +b1 , 0 );

a2=260;
b2=200;
setMoveKey( spep_4 -3 + 80, 1, 286.5 -a2, 281 -b2 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 279.6 -a2, 302.7 -b2 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 293.6 -a2, 278.7 -b2 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 292.6 -a2, 292.9 -b2 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 280.6 -a2, 285.9 -b2 , 0 );
setMoveKey( spep_4 -3 + 91, 1, 283.8 -a2, 300.7 -b2 , 0 );

a3=80;
b3=10;
setMoveKey( spep_4 -3 + 92, 1, 122.2 -a3, 76.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 131.7 -a3, 76.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 144 -a3 +3, 75.6 +b3 +15 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 156.3 -a3, 75.1 +b3 -25 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 168.6 -a3, 74.6 +b3 +12 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 174.5 -a3 +5, 74.3 +b3 -30 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 180.4 -a3 +15, 74.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 186.3 -a3 +15, 73.8 +b3 -20 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 192.2 -a3 +15, 73.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 198.1 -a3 +20, 73.3 +b3 -20 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 200.2 -a3 +27, 73.3 +b3 -5 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 202.4 -a3 +27, 73.2 +b3 -20 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 204.5 -a3 +27, 73.1 +b3 -5 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 206.7 -a3 +27, 73 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 208.9 -a3 +27, 72.9 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 211 -a3 +27, 72.8 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 211.4 -a3 +28, 72.8 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 211.7 -a3 +29, 72.8 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 212 -a3 +30, 72.8 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 212.3 -a3 +30, 72.8 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 212.7 -a3 +30, 72.7 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 213 -a3 +30, 72.7 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 213.3 -a3 +30, 72.7 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 213.6 -a3 +30, 72.7 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 214 -a3 +30, 72.7 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 214.3 -a3 +30, 72.7 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 214.6 -a3 +30, 72.7 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 215 -a3 +30, 72.6 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 215.3 -a3 +30, 72.6 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 150, 1, 215.6 -a3 +30, 72.6 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 152, 1, 215.9 -a3 +30, 72.6 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 154, 1, 216.3 -a3 +30, 72.6 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 156, 1, 216.6 -a3 +30, 72.6 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 158, 1, 216.9 -a3 +30, 72.6 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 217.2 -a3 +30, 72.5 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 217.6 -a3 +30, 72.5 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 217.9 -a3 +30, 72.5 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 218.2 -a3 +30, 72.5 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 168, 1, 218.6 -a3 +30, 72.5 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 170, 1, 218.9 -a3 +30, 72.5 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 219.2 -a3 +30, 72.5 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 174, 1, 219.5 -a3 +30, 72.4 +b3 -10 , 0 );

setScaleKey( spep_4 -3 + 26, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 28, 1, 1.44 +s1, 1.44 +s1 );
setScaleKey( spep_4 -3 + 30, 1, 1.38 +s1, 1.38 +s1 );
setScaleKey( spep_4 -3 + 32, 1, 1.32 +s1, 1.32 +s1 );
setScaleKey( spep_4 -3 + 34, 1, 1.26 +s1, 1.26 +s1 );
setScaleKey( spep_4 -3 + 36, 1, 1.26 +s1, 1.26 +s1 );
setScaleKey( spep_4 -3 + 38, 1, 1.2 +s1, 1.2 +s1 );
setScaleKey( spep_4 -3 + 74, 1, 1.2 +s1, 1.2 +s1 );
setScaleKey( spep_4 -3 + 76, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 91, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 92, 1, 1.102, 1.102 );
setScaleKey( spep_4 -3 + 94, 1, 0.986, 0.986 );
setScaleKey( spep_4 -3 + 96, 1, 0.928, 0.928 );
setScaleKey( spep_4 -3 + 98, 1, 0.812, 0.812 );
setScaleKey( spep_4 -3 + 100, 1, 0.754, 0.754 );
setScaleKey( spep_4 -3 + 102, 1, 0.638, 0.638 );
setScaleKey( spep_4 -3 + 104, 1, 0.58, 0.58 );
setScaleKey( spep_4 -3 + 106, 1, 0.522, 0.522 );
setScaleKey( spep_4 -3 + 108, 1, 0.464, 0.464 );
setScaleKey( spep_4 -3 + 110, 1, 0.406, 0.406 );
setScaleKey( spep_4 -3 + 112, 1, 0.368, 0.368 );
setScaleKey( spep_4 -3 + 114, 1, 0.29, 0.29 );
setScaleKey( spep_4 -3 + 116, 1, 0.29, 0.29 );
setScaleKey( spep_4 -3 + 118, 1, 0.232, 0.232 );
--setScaleKey( spep_4 -3 + 120, 1, 0.23199999999999998, 0.23199999999999998 );
setScaleKey( spep_4 -3 + 122, 1, 0.174, 0.174 );
--setScaleKey( spep_4 -3 + 130, 1, 0.174, 0.174 );
setScaleKey( spep_4 -3 + 132, 1, 0.116, 0.116 );
--setScaleKey( spep_4 -3 + 180, 1, 0.11599999999999999, 0.11599999999999999 );
setScaleKey( spep_4 -3 + 174, 1, 0.058, 0.058 );

setRotateKey( spep_4 -3 + 79, 1, 0 );
setRotateKey( spep_4 -3 + 80, 1, -45.6 );
setRotateKey( spep_4 -3 + 82, 1, -45.7 );
setRotateKey( spep_4 -3 + 91, 1, -45.7 );
setRotateKey( spep_4 -3 + 92, 1, -21.8 );
setRotateKey( spep_4 -3 + 94, 1, -18.9 );
setRotateKey( spep_4 -3 + 96, 1, -15.8 );
setRotateKey( spep_4 -3 + 98, 1, -12.7 );
setRotateKey( spep_4 -3 + 100, 1, -9.7 );
setRotateKey( spep_4 -3 + 102, 1, -6.6 );
setRotateKey( spep_4 -3 + 104, 1, -3.5 );
setRotateKey( spep_4 -3 + 106, 1, -1.3 );
setRotateKey( spep_4 -3 + 108, 1, 0.8 );
setRotateKey( spep_4 -3 + 110, 1, 3 );
setRotateKey( spep_4 -3 + 112, 1, 5.1 );
setRotateKey( spep_4 -3 + 114, 1, 6.2 );
setRotateKey( spep_4 -3 + 116, 1, 7.2 );
setRotateKey( spep_4 -3 + 118, 1, 8.2 );
setRotateKey( spep_4 -3 + 120, 1, 9.3 );
setRotateKey( spep_4 -3 + 122, 1, 10.3 );
setRotateKey( spep_4 -3 + 124, 1, 10.7 );
setRotateKey( spep_4 -3 + 126, 1, 11.1 );
setRotateKey( spep_4 -3 + 128, 1, 11.5 );
setRotateKey( spep_4 -3 + 130, 1, 11.8 );
setRotateKey( spep_4 -3 + 132, 1, 12.2 );
setRotateKey( spep_4 -3 + 134, 1, 12.6 );
setRotateKey( spep_4 -3 + 136, 1, 12.7 );
setRotateKey( spep_4 -3 + 138, 1, 12.7 );
setRotateKey( spep_4 -3 + 140, 1, 12.8 );
setRotateKey( spep_4 -3 + 142, 1, 12.8 );
setRotateKey( spep_4 -3 + 144, 1, 12.9 );
setRotateKey( spep_4 -3 + 146, 1, 13 );
setRotateKey( spep_4 -3 + 148, 1, 13 );
setRotateKey( spep_4 -3 + 150, 1, 13.1 );
setRotateKey( spep_4 -3 + 152, 1, 13.1 );
setRotateKey( spep_4 -3 + 154, 1, 13.2 );
setRotateKey( spep_4 -3 + 156, 1, 13.3 );
setRotateKey( spep_4 -3 + 158, 1, 13.3 );
setRotateKey( spep_4 -3 + 160, 1, 13.4 );
setRotateKey( spep_4 -3 + 162, 1, 13.4 );
setRotateKey( spep_4 -3 + 164, 1, 13.5 );
setRotateKey( spep_4 -3 + 166, 1, 13.6 );
setRotateKey( spep_4 -3 + 168, 1, 13.6 );
setRotateKey( spep_4 -3 + 170, 1, 13.7 );
setRotateKey( spep_4 -3 + 172, 1, 13.7 );
setRotateKey( spep_4 -3 + 174, 1, 13.8 );

-- ** 音 ** --
--走ってくる
SE022 = playSe( spep_4 + 0, 1002,"",0.6 );
setSeVolumeByWorkId( spep_4 + 0, SE022, 78 );

--走ってくる
SE023 = playSe( spep_4 + 0, 1011,"",0.6 );
setSeVolumeByWorkId( spep_4 + 0, SE023, 76 );

--タックル
SE024 = playSe( spep_4 + 70, 1123 );

--タックル
SE025 = playSe( spep_4 + 72, 1024 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 76 );
endPhase( spep_4 + 176 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 正面構え(116F)
------------------------------------------------------
spep_0 = 0;

first_b = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --正面構え  ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 116, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 116, first_b, 255 );

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 0, 1232 );
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );

--足振り上げ
SE002 = playSe( spep_0 + 28, 1116 );
stopSe( spep_0 + 50, SE002, 16 );

--足振り上げ
SE003 = playSe( spep_0 + 40, 1004 );
setPitch( spep_0 + 40, SE003, -400 );
setTimeStretch( SE003, 0.73, 10, 1 );

--四股を踏む
SE004 = playSe( spep_0 + 70, 1011 );

--四股を踏む
SE005 = playSe( spep_0 + 72, 1159 );
setSeVolumeByWorkId( spep_0 + 72, SE005, 86 );
stopSe( spep_0 +116 +86 + 4, SE005, 12 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


------------------------------------------------------
-- 咆哮(86F)
------------------------------------------------------
--spep_1 = 0;
-- ** エフェクト等 ** --
roar = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --咆哮  ef_002
setEffMoveKey( spep_1 + 0, roar, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, roar, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, roar, -1.0, 1.0 );
setEffScaleKey( spep_1 + 86, roar, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, roar, 0 );
setEffRotateKey( spep_1 + 86, roar, 0 );
setEffAlphaKey( spep_1 + 0, roar, 255 );
setEffAlphaKey( spep_1 + 86, roar, 255 );

spep_x = spep_1 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

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
--顔カットイン
SE006 = playSe( spep_1 + 2, 1018 );

--雄叫び
SE007 = playSe( spep_1 + 2, 1258 );
setSeVolumeByWorkId( spep_1 + 2, SE007, 57 );
stopSe( spep_1 +86 + 6, SE007, 10 );

--雄叫び
SE008 = playSe( spep_1 + 2, 1175 );
setSeVolumeByWorkId( spep_1 + 2, SE008, 70 );
stopSe( spep_1 +86 + 6, SE008, 10 );

--雄叫び
SE009 = playSe( spep_1 + 2, 1278 );
stopSe( spep_1 +86 + 6, SE009, 10 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 22, 0, 64 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_1 + 68, 16, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_2 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--走ってくる
SE011 = playSe( spep_2 +84, 1314,"",0.6 );
stopSe( spep_2 +94 +80 + 20, SE011, 32 );

--走ってくる
SE012 = playSe( spep_2 +84, 1002,"",0.6 );
setSeVolumeByWorkId( spep_2 +84, SE012, 78 );
stopSe( spep_2 +94 + 6, SE012, 14 );

--走ってくる
SE013 = playSe( spep_2 +84, 1011,"",0.6 );
setSeVolumeByWorkId( spep_2 +84, SE013, 52 );
stopSe( spep_2 +94 + 16, SE013, 18 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 突進(80F)
------------------------------------------------------
--spep_3 = 0;
-- ** エフェクト等 ** --
charge = entryEffectLife( spep_3 + 0, SP_03r, 80, 0x100, -1, 0, 0, 0 );  --突進    ef_003
setEffMoveKey( spep_3 + 0, charge, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, charge, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, charge, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, charge, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, charge, 0 );
setEffRotateKey( spep_3 + 80, charge, 0 );
setEffAlphaKey( spep_3 + 0, charge, 255 );
setEffAlphaKey( spep_3 + 79, charge, 255 );
setEffAlphaKey( spep_3 + 80, charge, 0 );

-- ** 音 ** --
--走ってくる
SE014 = playSe( spep_3 + 6, 1002,"",0.6 );
setSeVolumeByWorkId( spep_3 + 6, SE014, 78 );
stopSe( spep_3 + 26, SE014, 18 );

--走ってくる
SE015 = playSe( spep_3 + 6, 1011,"",0.6 );
setSeVolumeByWorkId( spep_3 + 6, SE015, 76 );
stopSe( spep_3 + 24, SE015, 20 );

--走ってくる
SE016 = playSe( spep_3 + 24, 1002,"",0.6 );
setSeVolumeByWorkId( spep_3 + 24, SE016, 69 );
stopSe( spep_3 + 40, SE016, 18 );

--走ってくる
SE017 = playSe( spep_3 + 24, 1011,"",0.6 );
setSeVolumeByWorkId( spep_3 + 24, SE017, 76 );
stopSe( spep_3 + 42, SE017, 18 );

--走ってくる
SE018 = playSe( spep_3 + 40, 1002,"",0.6 );
setSeVolumeByWorkId( spep_3 + 40, SE018, 77 );
stopSe( spep_3 + 60, SE018, 14 );

--走ってくる
SE019 = playSe( spep_3 + 40, 1011,"",0.6 );
setSeVolumeByWorkId( spep_3 + 40, SE019, 74 );
stopSe( spep_3 + 60, SE019, 18 );

--走ってくる
SE020 = playSe( spep_3 + 60, 1002,"",0.6 );
setSeVolumeByWorkId( spep_3 + 60, SE020, 76 );
stopSe( spep_3 +70 + 6, SE020, 16 );

--走ってくる
SE021 = playSe( spep_3 + 60, 1011,"",0.6 );
setSeVolumeByWorkId( spep_3 + 60, SE021, 70 );
stopSe( spep_3 +70 + 12, SE021, 14 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 80 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 80;

------------------------------------------------------
-- フィニッシュ(186F)
------------------------------------------------------
--spep_4 = 0;
-- ** エフェクト等 ** --
fiish_f = entryEffect( spep_4 + 0, SP_04r, 0x100, -1, 0, 0, 0 );  --フィニッシュ_敵より手前 ef_004_front
setEffMoveKey( spep_4 + 0, fiish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 186, fiish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, fiish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 186, fiish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fiish_f, 0 );
setEffRotateKey( spep_4 + 186, fiish_f, 0 );
setEffAlphaKey( spep_4 + 0, fiish_f, 255 );
setEffAlphaKey( spep_4 + 186, fiish_f, 255 );

fininsh_b = entryEffect( spep_4 + 0, SP_05r, 0x80, -1, 0, 0, 0 );  --フィニッシュ_敵より奥 ef_004_back
setEffMoveKey( spep_4 + 0, fininsh_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 186, fininsh_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, fininsh_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 186, fininsh_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fininsh_b, 0 );
setEffRotateKey( spep_4 + 186, fininsh_b, 0 );
setEffAlphaKey( spep_4 + 0, fininsh_b, 255 );
setEffAlphaKey( spep_4 + 186, fininsh_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 117 );

a1=200;
b1=20;
setMoveKey( spep_4 + 0, 1, 375.1 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 + 1, 1, 352.5 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 + 2, 1, 330 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 307.5 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 285 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 280.5 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 275.9 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 271.4 -a1, -23.9 +b1 , 0 );

s1=0.2;
setScaleKey( spep_4 + 0, 1, 1.5 +s1, 1.5 +s1 );

setRotateKey( spep_4 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 186 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 12 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 271.4 -a1, -23.9 +b1 , 0 );
    setMoveKey( SP_dodge + 2, 1, 266.8 -a1, -23.9 +b1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 266 -a1, -23.9 +b1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 265.2 -a1, -23.9 +b1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 264.4 -a1, -23.9 +b1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 263.6 -a1, -23.9 +b1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.5 +s1, 1.5 +s1 );
    setScaleKey( SP_dodge + 10, 1, 1.5 +s1, 1.5 +s1 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
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
setDisp( spep_4 -3 + 174, 1, 0 );
changeAnime( spep_4 -3 + 80, 1, 106 );
changeAnime( spep_4 -3 + 92, 1, 105 );

setMoveKey( spep_4 -3 + 16, 1, 266.8 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 266 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 265.2 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 264.4 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 263.6 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 262.8 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 251.7 -a1, -22.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 240.7 -a1, -21.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 229.7 -a1, -20.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 218.7 -a1, -19.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 216.8 -a1, -19.7 +b1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 214.8 -a1, -19.5 +b1 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 212.9 -a1, -19.4 +b1 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 210.9 -a1, -19.1 +b1 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 208.9 -a1, -19 +b1 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 208.6 -a1, -18.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 208.2 -a1, -18.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 207.9 -a1, -18.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 207.5 -a1, -18.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 207.5 -a1, -18.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 207.4 -a1, -18.8 +b1 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 207.4 -a1, -18.8 +b1 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 207.3 -a1, -18.8 +b1 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 207.3 -a1, -18.8 +b1 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 207.2 -a1, -18.8 +b1 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 207.2 -a1, -18.8 +b1 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 206.5 -a1, -23.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 79, 1, 206.5 -a1, -16.9 +b1 , 0 );

a2=260;
b2=200;
setMoveKey( spep_4 -3 + 80, 1, 286.5 -a2, 281 -b2 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 279.6 -a2, 302.7 -b2 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 293.6 -a2, 278.7 -b2 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 292.6 -a2, 292.9 -b2 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 280.6 -a2, 285.9 -b2 , 0 );
setMoveKey( spep_4 -3 + 91, 1, 283.8 -a2, 300.7 -b2 , 0 );

a3=80;
b3=10;
setMoveKey( spep_4 -3 + 92, 1, 122.2 -a3, 76.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 131.7 -a3, 76.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 144 -a3 +3, 75.6 +b3 +15 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 156.3 -a3, 75.1 +b3 -25 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 168.6 -a3, 74.6 +b3 +12 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 174.5 -a3 +5, 74.3 +b3 -30 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 180.4 -a3 +15, 74.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 186.3 -a3 +15, 73.8 +b3 -20 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 192.2 -a3 +15, 73.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 198.1 -a3 +20, 73.3 +b3 -20 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 200.2 -a3 +27, 73.3 +b3 -5 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 202.4 -a3 +27, 73.2 +b3 -20 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 204.5 -a3 +27, 73.1 +b3 -5 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 206.7 -a3 +27, 73 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 208.9 -a3 +27, 72.9 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 211 -a3 +27, 72.8 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 211.4 -a3 +28, 72.8 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 211.7 -a3 +29, 72.8 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 212 -a3 +30, 72.8 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 212.3 -a3 +30, 72.8 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 212.7 -a3 +30, 72.7 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 213 -a3 +30, 72.7 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 213.3 -a3 +30, 72.7 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 213.6 -a3 +30, 72.7 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 214 -a3 +30, 72.7 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 214.3 -a3 +30, 72.7 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 214.6 -a3 +30, 72.7 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 215 -a3 +30, 72.6 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 215.3 -a3 +30, 72.6 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 150, 1, 215.6 -a3 +30, 72.6 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 152, 1, 215.9 -a3 +30, 72.6 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 154, 1, 216.3 -a3 +30, 72.6 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 156, 1, 216.6 -a3 +30, 72.6 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 158, 1, 216.9 -a3 +30, 72.6 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 217.2 -a3 +30, 72.5 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 217.6 -a3 +30, 72.5 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 217.9 -a3 +30, 72.5 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 218.2 -a3 +30, 72.5 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 168, 1, 218.6 -a3 +30, 72.5 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 170, 1, 218.9 -a3 +30, 72.5 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 219.2 -a3 +30, 72.5 +b3 -10 , 0 );
setMoveKey( spep_4 -3 + 174, 1, 219.5 -a3 +30, 72.4 +b3 -10 , 0 );

setScaleKey( spep_4 -3 + 26, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 28, 1, 1.44 +s1, 1.44 +s1 );
setScaleKey( spep_4 -3 + 30, 1, 1.38 +s1, 1.38 +s1 );
setScaleKey( spep_4 -3 + 32, 1, 1.32 +s1, 1.32 +s1 );
setScaleKey( spep_4 -3 + 34, 1, 1.26 +s1, 1.26 +s1 );
setScaleKey( spep_4 -3 + 36, 1, 1.26 +s1, 1.26 +s1 );
setScaleKey( spep_4 -3 + 38, 1, 1.2 +s1, 1.2 +s1 );
setScaleKey( spep_4 -3 + 74, 1, 1.2 +s1, 1.2 +s1 );
setScaleKey( spep_4 -3 + 76, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 91, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_4 -3 + 92, 1, 1.102, 1.102 );
setScaleKey( spep_4 -3 + 94, 1, 0.986, 0.986 );
setScaleKey( spep_4 -3 + 96, 1, 0.928, 0.928 );
setScaleKey( spep_4 -3 + 98, 1, 0.812, 0.812 );
setScaleKey( spep_4 -3 + 100, 1, 0.754, 0.754 );
setScaleKey( spep_4 -3 + 102, 1, 0.638, 0.638 );
setScaleKey( spep_4 -3 + 104, 1, 0.58, 0.58 );
setScaleKey( spep_4 -3 + 106, 1, 0.522, 0.522 );
setScaleKey( spep_4 -3 + 108, 1, 0.464, 0.464 );
setScaleKey( spep_4 -3 + 110, 1, 0.406, 0.406 );
setScaleKey( spep_4 -3 + 112, 1, 0.368, 0.368 );
setScaleKey( spep_4 -3 + 114, 1, 0.29, 0.29 );
setScaleKey( spep_4 -3 + 116, 1, 0.29, 0.29 );
setScaleKey( spep_4 -3 + 118, 1, 0.232, 0.232 );
--setScaleKey( spep_4 -3 + 120, 1, 0.23199999999999998, 0.23199999999999998 );
setScaleKey( spep_4 -3 + 122, 1, 0.174, 0.174 );
--setScaleKey( spep_4 -3 + 130, 1, 0.174, 0.174 );
setScaleKey( spep_4 -3 + 132, 1, 0.116, 0.116 );
--setScaleKey( spep_4 -3 + 180, 1, 0.11599999999999999, 0.11599999999999999 );
setScaleKey( spep_4 -3 + 174, 1, 0.058, 0.058 );

setRotateKey( spep_4 -3 + 79, 1, 0 );
setRotateKey( spep_4 -3 + 80, 1, -45.6 );
setRotateKey( spep_4 -3 + 82, 1, -45.7 );
setRotateKey( spep_4 -3 + 91, 1, -45.7 );
setRotateKey( spep_4 -3 + 92, 1, -21.8 );
setRotateKey( spep_4 -3 + 94, 1, -18.9 );
setRotateKey( spep_4 -3 + 96, 1, -15.8 );
setRotateKey( spep_4 -3 + 98, 1, -12.7 );
setRotateKey( spep_4 -3 + 100, 1, -9.7 );
setRotateKey( spep_4 -3 + 102, 1, -6.6 );
setRotateKey( spep_4 -3 + 104, 1, -3.5 );
setRotateKey( spep_4 -3 + 106, 1, -1.3 );
setRotateKey( spep_4 -3 + 108, 1, 0.8 );
setRotateKey( spep_4 -3 + 110, 1, 3 );
setRotateKey( spep_4 -3 + 112, 1, 5.1 );
setRotateKey( spep_4 -3 + 114, 1, 6.2 );
setRotateKey( spep_4 -3 + 116, 1, 7.2 );
setRotateKey( spep_4 -3 + 118, 1, 8.2 );
setRotateKey( spep_4 -3 + 120, 1, 9.3 );
setRotateKey( spep_4 -3 + 122, 1, 10.3 );
setRotateKey( spep_4 -3 + 124, 1, 10.7 );
setRotateKey( spep_4 -3 + 126, 1, 11.1 );
setRotateKey( spep_4 -3 + 128, 1, 11.5 );
setRotateKey( spep_4 -3 + 130, 1, 11.8 );
setRotateKey( spep_4 -3 + 132, 1, 12.2 );
setRotateKey( spep_4 -3 + 134, 1, 12.6 );
setRotateKey( spep_4 -3 + 136, 1, 12.7 );
setRotateKey( spep_4 -3 + 138, 1, 12.7 );
setRotateKey( spep_4 -3 + 140, 1, 12.8 );
setRotateKey( spep_4 -3 + 142, 1, 12.8 );
setRotateKey( spep_4 -3 + 144, 1, 12.9 );
setRotateKey( spep_4 -3 + 146, 1, 13 );
setRotateKey( spep_4 -3 + 148, 1, 13 );
setRotateKey( spep_4 -3 + 150, 1, 13.1 );
setRotateKey( spep_4 -3 + 152, 1, 13.1 );
setRotateKey( spep_4 -3 + 154, 1, 13.2 );
setRotateKey( spep_4 -3 + 156, 1, 13.3 );
setRotateKey( spep_4 -3 + 158, 1, 13.3 );
setRotateKey( spep_4 -3 + 160, 1, 13.4 );
setRotateKey( spep_4 -3 + 162, 1, 13.4 );
setRotateKey( spep_4 -3 + 164, 1, 13.5 );
setRotateKey( spep_4 -3 + 166, 1, 13.6 );
setRotateKey( spep_4 -3 + 168, 1, 13.6 );
setRotateKey( spep_4 -3 + 170, 1, 13.7 );
setRotateKey( spep_4 -3 + 172, 1, 13.7 );
setRotateKey( spep_4 -3 + 174, 1, 13.8 );

-- ** 音 ** --
--走ってくる
SE022 = playSe( spep_4 + 0, 1002,"",0.6 );
setSeVolumeByWorkId( spep_4 + 0, SE022, 78 );

--走ってくる
SE023 = playSe( spep_4 + 0, 1011,"",0.6 );
setSeVolumeByWorkId( spep_4 + 0, SE023, 76 );

--タックル
SE024 = playSe( spep_4 + 70, 1123 );

--タックル
SE025 = playSe( spep_4 + 72, 1024 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 76 );
endPhase( spep_4 + 176 );

end