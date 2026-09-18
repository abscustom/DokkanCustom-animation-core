--1021240:破壊神ヘレス_破壊神の祝福_2133
--sp_effect_a9_00073

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
SP_01 = 156706;  --構える  ef_001
SP_02 = 156707;  --気弾の弾幕を出すef_002
SP_03 = 156708;  --フィニッシュ_敵より手前 ef_003_front
SP_04 = 156709;  --フィニッシュ_敵より奥  ef_003_back

--敵側

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
-- 構える(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 96, 0x100, -1, 0, 0, 0 );  --構える(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 70, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 70, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 70, 515.5 , 0 );
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
--環境音
SE001 = playSe( spep_0 + 0, 1175 );
stopSe( spep_0 + 92, SE001, 54 );
setBandpassFilter( spep_0 + 0, SE001, 1500, 24000 );

--手構える
SE002 = playSe( spep_0 + 8, 1003 );
setSeVolumeByWorkId( spep_0 + 8, SE002, 82 );

--顔カットイン
SE000 = playSe( spep_0 + 12, 1018 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 78, 16, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


------------------------------------------------------
-- 気弾の弾幕を出す(96F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_1 + 0, SP_02, 96, 0x100, -1, 0, 0, 0 );  --気弾の弾幕を出す(ef_002)
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 96, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 96 -1, tame, 255 );
setEffAlphaKey( spep_1 + 96, tame, 0 );

-- ** 音 ** --
--手広げる
SE003 = playSe( spep_1 + 6, 1225 );
stopSe( spep_1 + 44, SE003, 10 );

--手広げる
SE004 = playSe( spep_1 + 6, 1189 );
setSeVolumeByWorkId( spep_1 + 6, SE004, 73 );

--手広げる
SE005 = playSe( spep_1 + 6, 1115 );
setSeVolumeByWorkId( spep_1 + 6, SE005, 77 );
stopSe( spep_1 +96 + 6, SE005, 0 );

--手広げる
SE006 = playSe( spep_1 + 6, 1263 );
setSeVolumeByWorkId( spep_1 + 6, SE006, 78 );
stopSe( spep_1 +96 + 6, SE006, 0 );

--飛び上がる
SE007 = playSe( spep_1 + 48, 1172,"",0.6 );
setSeVolumeByWorkId( spep_1 + 48, SE007, 13 );
setSeVolumeByWorkId( spep_1 + 50, SE007, 26 );
setSeVolumeByWorkId( spep_1 + 52, SE007, 39 );
setSeVolumeByWorkId( spep_1 + 54, SE007, 52 );
setSeVolumeByWorkId( spep_1 + 56, SE007, 66 );
setSeVolumeByWorkId( spep_1 + 58, SE007, 79 );
stopSe( spep_1 +96 + 2, SE007, 0 );
setStartTimeMs( SE007,  150 );
setPitch( spep_1 + 48, SE007, 200 );
setTimeStretch( SE007, 1.13, 10, 1 );

--飛び上がる
SE008 = playSe( spep_1 + 56, 1127,"",0.6 );
setSeVolumeByWorkId( spep_1 + 56, SE008, 22 );
setSeVolumeByWorkId( spep_1 + 58, SE008, 43 );
setSeVolumeByWorkId( spep_1 + 60, SE008, 65 );
setSeVolumeByWorkId( spep_1 + 62, SE008, 86 );
stopSe( spep_1 +96 + 2, SE008, 0 );
setStartTimeMs( SE008,  133 );

--飛び上がる
SE009 = playSe( spep_1 + 54, 1290,"",0.6 );
stopSe( spep_1 +96 + 2, SE009, 0 );
setPitch( spep_1 + 54, SE009, 200 );
setTimeStretch( SE009, 1.13, 10, 1 );

--飛び上がる
SE010 = playSe( spep_1 + 54, 1264,"",0.6 );
stopSe( spep_1 +96 + 2, SE010, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 14, 0, 82 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 96;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
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
-- ** 白背景 ** --
--entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- フィニッシュ(148F)
------------------------------------------------------
-- ** エフェクト等 ** --
first_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --フィニッシュ_敵より手前(ef_003_front)
setEffMoveKey( spep_3 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 148, first_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 148, first_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, first_f, 0 );
setEffRotateKey( spep_3 + 148, first_f, 0 );
setEffAlphaKey( spep_3 + 0, first_f, 255 );
setEffAlphaKey( spep_3 + 148 -1, first_f, 255 );
setEffAlphaKey( spep_3 + 148, first_f, 0 );

first_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --フィニッシュ_敵より奥   (ef_003_back)
setEffMoveKey( spep_3 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 148, first_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 148, first_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, first_b, 0 );
setEffRotateKey( spep_3 + 148, first_b, 0 );
setEffAlphaKey( spep_3 + 0, first_b, 255 );
setEffAlphaKey( spep_3 + 148 -1, first_b, 255 );
setEffAlphaKey( spep_3 + 148, first_b, 0 );

-- ** 音 ** --
--気弾飛んでくる
SE012 = playSe( spep_3 + 0, 1027 );
setSeVolumeByWorkId( spep_3 + 0, SE012, 79 );

--気弾飛んでくる
SE013 = playSe( spep_3 + 0, 1021 );
setSeVolumeByWorkId( spep_3 + 0, SE013, 86 );

--気弾飛んでくる
SE014 = playSe( spep_3 + 4, 1016 );
setSeVolumeByWorkId( spep_3 + 4, SE014, 81 );

--気弾飛んでくる
SE015 = playSe( spep_3 + 14, 1016 );
setSeVolumeByWorkId( spep_3 + 14, SE015, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 148 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 32 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    --setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    --setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    --setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );    
    
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
setDisp( spep_3 -3 + 56, 1, 1 );
setDisp( spep_3 -3 + 149, 1, 0 );

changeAnime( spep_3 -3 + 56, 1, 104 );
changeAnime( spep_3 -3 + 58, 1, 106 );
changeAnime( spep_3 -3 + 62, 1, 108 );
changeAnime( spep_3 -3 + 66, 1, 106 );
changeAnime( spep_3 -3 + 72, 1, 108 );
changeAnime( spep_3 -3 + 78, 1, 106 );
changeAnime( spep_3 -3 + 82, 1, 108 );
changeAnime( spep_3 -3 + 86, 1, 106 );
changeAnime( spep_3 -3 + 92, 1, 108 );
changeAnime( spep_3 -3 + 98, 1, 106 );
changeAnime( spep_3 -3 + 102, 1, 108 );
changeAnime( spep_3 -3 + 106, 1, 106 );
changeAnime( spep_3 -3 + 112, 1, 108 );
changeAnime( spep_3 -3 + 118, 1, 106 );
changeAnime( spep_3 -3 + 122, 1, 108 );
changeAnime( spep_3 -3 + 126, 1, 106 );
changeAnime( spep_3 -3 + 132, 1, 108 );
changeAnime( spep_3 -3 + 138, 1, 106 );
changeAnime( spep_3 -3 + 142, 1, 108 );

a1=200;
b1=0;
setMoveKey( spep_3 -3 + 56, 1, 336.4 -a1, -169.8 +b1 , 0 );
setMoveKey( spep_3 -3 + 57, 1, 336.4 -a1, -169.8 +b1 , 0 );--


a2=440;
b2=90;

a3=285;
b3=35;
setMoveKey( spep_3 -3 + 58, 1, 601.8 -a2, -174.5 +b2 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 616.7 -a2, -150.7 +b2 , 0 );
setMoveKey( spep_3 -3 + 61, 1, 616.7 -a2, -150.7 +b2 , 0 );--

setMoveKey( spep_3 -3 + 62, 1, 441.2 -a3, -157.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 441.2 -a3, -119.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 65, 1, 441.2 -a3, -119.5 +b3 , 0 );--

setMoveKey( spep_3 -3 + 66, 1, 631.6 -a2, -184 +b2 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 650.7 -a2, -165 +b2 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 612.6 -a2, -165 +b2 , 0 );
setMoveKey( spep_3 -3 + 71, 1, 612.6 -a2, -165 +b2 , 0 );--

setMoveKey( spep_3 -3 + 72, 1, 441.2 -a3, -119.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 441.2 -a3, -157.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 441.2 -a3, -119.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 77, 1, 441.2 -a3, -119.5 +b3 , 0 );--

setMoveKey( spep_3 -3 + 78, 1, 631.6 -a2, -172.6 +b2 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 662.1 -a2, -165 +b2 , 0 );
setMoveKey( spep_3 -3 + 81, 1, 662.1 -a2, -165 +b2 , 0 );--

setMoveKey( spep_3 -3 + 82, 1, 422.2 -a3, -150 +b3 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 441.2 -a3, -108.1 +b3 , 0 );
setMoveKey( spep_3 -3 + 85, 1, 441.2 -a3, -108.1 +b3 , 0 );--

setMoveKey( spep_3 -3 + 86, 1, 643.1 -a2, -184 +b2 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 620.2 -a2, -145.9 +b2 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 631.6 -a2, -195.5 +b2 , 0 );
setMoveKey( spep_3 -3 + 91, 1, 631.6 -a2, -195.5 +b2 , 0 );--

setMoveKey( spep_3 -3 + 92, 1, 460.3 -a3, -127.1 +b3 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 422.2 -a3, -150 +b3 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 441.2 -a3, -104.3 +b3 , 0 );
setMoveKey( spep_3 -3 + 97, 1, 441.2 -a3, -104.3 +b3 , 0 );

setMoveKey( spep_3 -3 + 98, 1, 643.1 -a2, -184 +b2 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 620.2 -a2, -145.9 +b2 , 0 );
setMoveKey( spep_3 -3 + 101, 1, 620.2 -a2, -145.9 +b2 , 0 );--
 
setMoveKey( spep_3 -3 + 102, 1, 441.2 -a3, -169 +b3 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 452.7 -a3, -138.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 105, 1, 452.7 -a3, -138.5 +b3 , 0 );--

setMoveKey( spep_3 -3 + 106, 1, 624 -a2, -165 +b2 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 631.6 -a2, -153.5 +b2 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 631.6 -a2, -184 +b2 , 0 );
setMoveKey( spep_3 -3 + 111, 1, 631.6 -a2, -184 +b2 , 0 );--

setMoveKey( spep_3 -3 + 112, 1, 441.2 -a3, -119.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 441.2 -a3, -157.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 460.3 -a3, -138.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 117, 1, 460.3 -a3, -138.5 +b3 , 0 );

setMoveKey( spep_3 -3 + 118, 1, 612.6 -a2, -165 +b2 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 631.6 -a2, -145.9 +b2 , 0 );
setMoveKey( spep_3 -3 + 121, 1, 631.6 -a2, -145.9 +b2 , 0 );--

setMoveKey( spep_3 -3 + 122, 1, 441.2 -a3, -157.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 441.2 -a3, -119.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 125, 1, 441.2 -a3, -119.5 +b3 , 0 );--

setMoveKey( spep_3 -3 + 126, 1, 631.6 -a2, -184 +b2 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 650.7 -a2, -165 +b2 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 612.6 -a2, -165 +b2 , 0 );
setMoveKey( spep_3 -3 + 131, 1, 612.6 -a2, -165 +b2 , 0 );--

setMoveKey( spep_3 -3 + 132, 1, 422.2 -a3, -138.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 422.2 -a3, -138.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 137, 1, 422.2 -a3, -138.5 +b3 , 0 );--

setMoveKey( spep_3 -3 + 138, 1, 612.6 -a2, -165 +b2 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 612.6 -a2, -165 +b2 , 0 );
setMoveKey( spep_3 -3 + 141, 1, 612.6 -a2, -165 +b2 , 0 );--

setMoveKey( spep_3 -3 + 142, 1, 422.2 -a3, -138.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 145, 1, 422.2 -a3, -138.5 +b3 , 0 );--

setMoveKey( spep_3 -3 + 146, 1, 612.6 -a2, -165 +b2 , 0 );
setMoveKey( spep_3 -3 + 149, 1, 612.6 -a2, -165 +b2 , 0 );

s1=0.2;
setScaleKey( spep_3 -3 + 56, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 61, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 62, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 65, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 66, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 71, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 72, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 77, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 78, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 81, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 82, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 85, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 86, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 91, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 92, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 97, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 98, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 101, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 102, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 105, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 106, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 111, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 112, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 117, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 118, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 121, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 122, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 125, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 126, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 131, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 132, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 137, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 138, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 141, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 142, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 149, 1, 1.98 +s1, 1.98 +s1 );

setRotateKey( spep_3 -3 + 56, 1, 0 );
setRotateKey( spep_3 -3 + 149, 1, 0 );


-- ** 音 ** --
--気弾飛んでくる
SE016 = playSe( spep_3 + 24, 1016 );
setSeVolumeByWorkId( spep_3 + 24, SE016, 89 );

--連続気弾ヒット
SE017 = playSe( spep_3 + 54, 1032,"",0.7 );

--連続気弾ヒット
SE018 = playSe( spep_3 + 62, 1032,"",0.7 );
setSeVolumeByWorkId( spep_3 + 62, SE018, 79 );

--連続気弾ヒット
SE019 = playSe( spep_3 + 66, 1031 );
setSeVolumeByWorkId( spep_3 + 66, SE019, 52 );

--連続気弾ヒット
SE020 = playSe( spep_3 + 70, 1032,"",0.7 );

--連続気弾ヒット
SE021 = playSe( spep_3 + 76, 1032,"",0.7 );
setSeVolumeByWorkId( spep_3 + 76, SE021, 81 );

--連続気弾ヒット
SE022 = playSe( spep_3 + 84, 1032,"",0.7 );
setSeVolumeByWorkId( spep_3 + 84, SE022, 79 );

--連続気弾ヒット
SE023 = playSe( spep_3 + 88, 1031 );
setSeVolumeByWorkId( spep_3 + 88, SE023, 69 );

--連続気弾ヒット
SE024 = playSe( spep_3 + 92, 1032,"",0.7 );
setSeVolumeByWorkId( spep_3 + 92, SE024, 86 );

--連続気弾ヒット
SE025 = playSe( spep_3 + 104, 1032,"",0.7 );
setSeVolumeByWorkId( spep_3 + 104, SE025, 82 );

--連続気弾ヒット
SE026 = playSe( spep_3 + 112, 1032,"",0.7 );
setSeVolumeByWorkId( spep_3 + 112, SE026, 69 );

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 38 +14 );
endPhase( spep_3 + 138 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 構える(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 96, 0x100, -1, 0, 0, 0 );  --構える(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 70, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 70, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 70, 515.5 , 0 );
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
--環境音
SE001 = playSe( spep_0 + 0, 1175 );
stopSe( spep_0 + 92, SE001, 54 );
setBandpassFilter( spep_0 + 0, SE001, 1500, 24000 );

--手構える
SE002 = playSe( spep_0 + 8, 1003 );
setSeVolumeByWorkId( spep_0 + 8, SE002, 82 );

--顔カットイン
SE000 = playSe( spep_0 + 12, 1018 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 78, 16, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


------------------------------------------------------
-- 気弾の弾幕を出す(96F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_1 + 0, SP_02, 96, 0x100, -1, 0, 0, 0 );  --気弾の弾幕を出す(ef_002)
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_1 + 96, tame, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 96, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 96 -1, tame, 255 );
setEffAlphaKey( spep_1 + 96, tame, 0 );

-- ** 音 ** --
--手広げる
SE003 = playSe( spep_1 + 6, 1225 );
stopSe( spep_1 + 44, SE003, 10 );

--手広げる
SE004 = playSe( spep_1 + 6, 1189 );
setSeVolumeByWorkId( spep_1 + 6, SE004, 73 );

--手広げる
SE005 = playSe( spep_1 + 6, 1115 );
setSeVolumeByWorkId( spep_1 + 6, SE005, 77 );
stopSe( spep_1 +96 + 6, SE005, 0 );

--手広げる
SE006 = playSe( spep_1 + 6, 1263 );
setSeVolumeByWorkId( spep_1 + 6, SE006, 78 );
stopSe( spep_1 +96 + 6, SE006, 0 );

--飛び上がる
SE007 = playSe( spep_1 + 48, 1172,"",0.6 );
setSeVolumeByWorkId( spep_1 + 48, SE007, 13 );
setSeVolumeByWorkId( spep_1 + 50, SE007, 26 );
setSeVolumeByWorkId( spep_1 + 52, SE007, 39 );
setSeVolumeByWorkId( spep_1 + 54, SE007, 52 );
setSeVolumeByWorkId( spep_1 + 56, SE007, 66 );
setSeVolumeByWorkId( spep_1 + 58, SE007, 79 );
stopSe( spep_1 +96 + 2, SE007, 0 );
setStartTimeMs( SE007,  150 );
setPitch( spep_1 + 48, SE007, 200 );
setTimeStretch( SE007, 1.13, 10, 1 );

--飛び上がる
SE008 = playSe( spep_1 + 56, 1127,"",0.6 );
setSeVolumeByWorkId( spep_1 + 56, SE008, 22 );
setSeVolumeByWorkId( spep_1 + 58, SE008, 43 );
setSeVolumeByWorkId( spep_1 + 60, SE008, 65 );
setSeVolumeByWorkId( spep_1 + 62, SE008, 86 );
stopSe( spep_1 +96 + 2, SE008, 0 );
setStartTimeMs( SE008,  133 );

--飛び上がる
SE009 = playSe( spep_1 + 54, 1290,"",0.6 );
stopSe( spep_1 +96 + 2, SE009, 0 );
setPitch( spep_1 + 54, SE009, 200 );
setTimeStretch( SE009, 1.13, 10, 1 );

--飛び上がる
SE010 = playSe( spep_1 + 54, 1264,"",0.6 );
stopSe( spep_1 +96 + 2, SE010, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 14, 0, 82 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 96;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
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
-- ** 白背景 ** --
--entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- フィニッシュ(148F)
------------------------------------------------------
-- ** エフェクト等 ** --
first_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --フィニッシュ_敵より手前(ef_003_front)
setEffMoveKey( spep_3 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 148, first_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 148, first_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, first_f, 0 );
setEffRotateKey( spep_3 + 148, first_f, 0 );
setEffAlphaKey( spep_3 + 0, first_f, 255 );
setEffAlphaKey( spep_3 + 148 -1, first_f, 255 );
setEffAlphaKey( spep_3 + 148, first_f, 0 );

first_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --フィニッシュ_敵より奥   (ef_003_back)
setEffMoveKey( spep_3 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 148, first_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 148, first_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, first_b, 0 );
setEffRotateKey( spep_3 + 148, first_b, 0 );
setEffAlphaKey( spep_3 + 0, first_b, 255 );
setEffAlphaKey( spep_3 + 148 -1, first_b, 255 );
setEffAlphaKey( spep_3 + 148, first_b, 0 );

-- ** 音 ** --
--気弾飛んでくる
SE012 = playSe( spep_3 + 0, 1027 );
setSeVolumeByWorkId( spep_3 + 0, SE012, 79 );

--気弾飛んでくる
SE013 = playSe( spep_3 + 0, 1021 );
setSeVolumeByWorkId( spep_3 + 0, SE013, 86 );

--気弾飛んでくる
SE014 = playSe( spep_3 + 4, 1016 );
setSeVolumeByWorkId( spep_3 + 4, SE014, 81 );

--気弾飛んでくる
SE015 = playSe( spep_3 + 14, 1016 );
setSeVolumeByWorkId( spep_3 + 14, SE015, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 148 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 32 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    --setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    --setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    --setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );    
    
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
setDisp( spep_3 -3 + 56, 1, 1 );
setDisp( spep_3 -3 + 149, 1, 0 );

changeAnime( spep_3 -3 + 56, 1, 104 );
changeAnime( spep_3 -3 + 58, 1, 106 );
changeAnime( spep_3 -3 + 62, 1, 108 );
changeAnime( spep_3 -3 + 66, 1, 106 );
changeAnime( spep_3 -3 + 72, 1, 108 );
changeAnime( spep_3 -3 + 78, 1, 106 );
changeAnime( spep_3 -3 + 82, 1, 108 );
changeAnime( spep_3 -3 + 86, 1, 106 );
changeAnime( spep_3 -3 + 92, 1, 108 );
changeAnime( spep_3 -3 + 98, 1, 106 );
changeAnime( spep_3 -3 + 102, 1, 108 );
changeAnime( spep_3 -3 + 106, 1, 106 );
changeAnime( spep_3 -3 + 112, 1, 108 );
changeAnime( spep_3 -3 + 118, 1, 106 );
changeAnime( spep_3 -3 + 122, 1, 108 );
changeAnime( spep_3 -3 + 126, 1, 106 );
changeAnime( spep_3 -3 + 132, 1, 108 );
changeAnime( spep_3 -3 + 138, 1, 106 );
changeAnime( spep_3 -3 + 142, 1, 108 );

a1=200;
b1=0;
setMoveKey( spep_3 -3 + 56, 1, 336.4 -a1, -169.8 +b1 , 0 );
setMoveKey( spep_3 -3 + 57, 1, 336.4 -a1, -169.8 +b1 , 0 );--


a2=440;
b2=90;

a3=285;
b3=35;
setMoveKey( spep_3 -3 + 58, 1, 601.8 -a2, -174.5 +b2 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 616.7 -a2, -150.7 +b2 , 0 );
setMoveKey( spep_3 -3 + 61, 1, 616.7 -a2, -150.7 +b2 , 0 );--

setMoveKey( spep_3 -3 + 62, 1, 441.2 -a3, -157.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 441.2 -a3, -119.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 65, 1, 441.2 -a3, -119.5 +b3 , 0 );--

setMoveKey( spep_3 -3 + 66, 1, 631.6 -a2, -184 +b2 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 650.7 -a2, -165 +b2 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 612.6 -a2, -165 +b2 , 0 );
setMoveKey( spep_3 -3 + 71, 1, 612.6 -a2, -165 +b2 , 0 );--

setMoveKey( spep_3 -3 + 72, 1, 441.2 -a3, -119.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 441.2 -a3, -157.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 441.2 -a3, -119.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 77, 1, 441.2 -a3, -119.5 +b3 , 0 );--

setMoveKey( spep_3 -3 + 78, 1, 631.6 -a2, -172.6 +b2 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 662.1 -a2, -165 +b2 , 0 );
setMoveKey( spep_3 -3 + 81, 1, 662.1 -a2, -165 +b2 , 0 );--

setMoveKey( spep_3 -3 + 82, 1, 422.2 -a3, -150 +b3 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 441.2 -a3, -108.1 +b3 , 0 );
setMoveKey( spep_3 -3 + 85, 1, 441.2 -a3, -108.1 +b3 , 0 );--

setMoveKey( spep_3 -3 + 86, 1, 643.1 -a2, -184 +b2 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 620.2 -a2, -145.9 +b2 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 631.6 -a2, -195.5 +b2 , 0 );
setMoveKey( spep_3 -3 + 91, 1, 631.6 -a2, -195.5 +b2 , 0 );--

setMoveKey( spep_3 -3 + 92, 1, 460.3 -a3, -127.1 +b3 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 422.2 -a3, -150 +b3 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 441.2 -a3, -104.3 +b3 , 0 );
setMoveKey( spep_3 -3 + 97, 1, 441.2 -a3, -104.3 +b3 , 0 );

setMoveKey( spep_3 -3 + 98, 1, 643.1 -a2, -184 +b2 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 620.2 -a2, -145.9 +b2 , 0 );
setMoveKey( spep_3 -3 + 101, 1, 620.2 -a2, -145.9 +b2 , 0 );--
 
setMoveKey( spep_3 -3 + 102, 1, 441.2 -a3, -169 +b3 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 452.7 -a3, -138.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 105, 1, 452.7 -a3, -138.5 +b3 , 0 );--

setMoveKey( spep_3 -3 + 106, 1, 624 -a2, -165 +b2 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 631.6 -a2, -153.5 +b2 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 631.6 -a2, -184 +b2 , 0 );
setMoveKey( spep_3 -3 + 111, 1, 631.6 -a2, -184 +b2 , 0 );--

setMoveKey( spep_3 -3 + 112, 1, 441.2 -a3, -119.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 441.2 -a3, -157.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 460.3 -a3, -138.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 117, 1, 460.3 -a3, -138.5 +b3 , 0 );

setMoveKey( spep_3 -3 + 118, 1, 612.6 -a2, -165 +b2 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 631.6 -a2, -145.9 +b2 , 0 );
setMoveKey( spep_3 -3 + 121, 1, 631.6 -a2, -145.9 +b2 , 0 );--

setMoveKey( spep_3 -3 + 122, 1, 441.2 -a3, -157.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 441.2 -a3, -119.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 125, 1, 441.2 -a3, -119.5 +b3 , 0 );--

setMoveKey( spep_3 -3 + 126, 1, 631.6 -a2, -184 +b2 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 650.7 -a2, -165 +b2 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 612.6 -a2, -165 +b2 , 0 );
setMoveKey( spep_3 -3 + 131, 1, 612.6 -a2, -165 +b2 , 0 );--

setMoveKey( spep_3 -3 + 132, 1, 422.2 -a3, -138.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 422.2 -a3, -138.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 137, 1, 422.2 -a3, -138.5 +b3 , 0 );--

setMoveKey( spep_3 -3 + 138, 1, 612.6 -a2, -165 +b2 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 612.6 -a2, -165 +b2 , 0 );
setMoveKey( spep_3 -3 + 141, 1, 612.6 -a2, -165 +b2 , 0 );--

setMoveKey( spep_3 -3 + 142, 1, 422.2 -a3, -138.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 145, 1, 422.2 -a3, -138.5 +b3 , 0 );--

setMoveKey( spep_3 -3 + 146, 1, 612.6 -a2, -165 +b2 , 0 );
setMoveKey( spep_3 -3 + 149, 1, 612.6 -a2, -165 +b2 , 0 );

s1=0.2;
setScaleKey( spep_3 -3 + 56, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 61, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 62, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 65, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 66, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 71, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 72, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 77, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 78, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 81, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 82, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 85, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 86, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 91, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 92, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 97, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 98, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 101, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 102, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 105, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 106, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 111, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 112, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 117, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 118, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 121, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 122, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 125, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 126, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 131, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 132, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 137, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 138, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 141, 1, 1.98, 1.98 );
setScaleKey( spep_3 -3 + 142, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_3 -3 + 149, 1, 1.98 +s1, 1.98 +s1 );

setRotateKey( spep_3 -3 + 56, 1, 0 );
setRotateKey( spep_3 -3 + 149, 1, 0 );


-- ** 音 ** --
--気弾飛んでくる
SE016 = playSe( spep_3 + 24, 1016 );
setSeVolumeByWorkId( spep_3 + 24, SE016, 89 );

--連続気弾ヒット
SE017 = playSe( spep_3 + 54, 1032,"",0.7 );

--連続気弾ヒット
SE018 = playSe( spep_3 + 62, 1032,"",0.7 );
setSeVolumeByWorkId( spep_3 + 62, SE018, 79 );

--連続気弾ヒット
SE019 = playSe( spep_3 + 66, 1031 );
setSeVolumeByWorkId( spep_3 + 66, SE019, 52 );

--連続気弾ヒット
SE020 = playSe( spep_3 + 70, 1032,"",0.7 );

--連続気弾ヒット
SE021 = playSe( spep_3 + 76, 1032,"",0.7 );
setSeVolumeByWorkId( spep_3 + 76, SE021, 81 );

--連続気弾ヒット
SE022 = playSe( spep_3 + 84, 1032,"",0.7 );
setSeVolumeByWorkId( spep_3 + 84, SE022, 79 );

--連続気弾ヒット
SE023 = playSe( spep_3 + 88, 1031 );
setSeVolumeByWorkId( spep_3 + 88, SE023, 69 );

--連続気弾ヒット
SE024 = playSe( spep_3 + 92, 1032,"",0.7 );
setSeVolumeByWorkId( spep_3 + 92, SE024, 86 );

--連続気弾ヒット
SE025 = playSe( spep_3 + 104, 1032,"",0.7 );
setSeVolumeByWorkId( spep_3 + 104, SE025, 82 );

--連続気弾ヒット
SE026 = playSe( spep_3 + 112, 1032,"",0.7 );
setSeVolumeByWorkId( spep_3 + 112, SE026, 69 );

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 38 +14 );
endPhase( spep_3 + 138 );

end