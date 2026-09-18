--1021180:破壊神シドラ_破壊神の戒め_sp2140
--sp_effect_a9_00078

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
SP_01 = 156925;	--正面構え	ef_001
SP_02 = 156926;	--正面気を溜める	ef_002
SP_03 = 156927;	--正面突進	ef_003
SP_04 = 156928;	--フィニッシュ敵より手前	ef_004_front
SP_05 = 156929;	--フィニッシュ敵より奥	ef_004_back

--敵側
SP_04r = 156930;	--（敵側）フィニッシュ敵より手前	ef_004_front_r
SP_05r = 156931;	--（敵側）フィニッシュ敵より奥	ef_004_back_r

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
-- 正面構え(86F)
------------------------------------------------------
spep_0 = 0;

first_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --正面構え	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 86, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 86, first_f, 255 );

-- ** 音 ** --
--腕あげる
SE001 = playSe( spep_0 + 22, 1004 );

--腕あげる
SE002 = playSe( spep_0 + 26, 44,"",0.6 );
setSeVolumeByWorkId( spep_0 + 26, SE002, 78 );
setPitch( spep_0 + 26, SE002, -600 );
setTimeStretch( SE002, 0.6, 30, 4 );

--構える
SE003 = playSe( spep_0 + 80, 1233 );
setSeVolumeByWorkId( spep_0 + 80, SE003, 141 );
setPitch( spep_0 + 80, SE003, -400 );
setTimeStretch( SE003, 0.73, 10, 1 );

--構える
SE004 = playSe( spep_0 + 84, 1011 );
setSeVolumeByWorkId( spep_0 + 84, SE004, 89 );
stopSe( spep_0 +86 +86 + 6, SE004, 0 );

--構える
SE005 = playSe( spep_0 + 84, 1226 );
setSeVolumeByWorkId( spep_0 + 84, SE005, 73 );
stopSe( spep_0 +86 +86 + 6, SE005, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;


------------------------------------------------------
-- 正面気を溜める(86F)
------------------------------------------------------
--spep_1 = 0;

kamae = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --正面気を溜める	ef_002
setEffMoveKey( spep_1 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, kamae, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, kamae, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kamae, 0 );
setEffRotateKey( spep_1 + 86, kamae, 0 );
setEffAlphaKey( spep_1 + 0, kamae, 255 );
setEffAlphaKey( spep_1 + 86, kamae, 255 );

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

--構える
SE007 = playSe( spep_1 + 2, 20 );
setSeVolumeByWorkId( spep_1 + 2, SE007, 84 );
stopSe( spep_1 +86 + 6, SE007, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 68, 16, 2+2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;

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

--前方ダッシュ
SE009 = playSe( spep_2 + 92, 1226 );
stopSe( spep_2 +94 +96 + 8, SE009, 0 );

--前方ダッシュ
SE010 = playSe( spep_2 + 92, 1182 );

--前方ダッシュ
SE011 = playSe( spep_2 + 92, 1314 );
setSeVolumeByWorkId( spep_2 + 92, SE011, 126 );
stopSe( spep_2 +94 +96 + 2, SE011, 8 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 正面突進(96F)
------------------------------------------------------
-- ** エフェクト等 ** --
tackle = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --正面突進	ef_003
setEffMoveKey( spep_3 + 0, tackle, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, tackle, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tackle, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, tackle, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tackle, 0 );
setEffRotateKey( spep_3 + 96, tackle, 0 );
setEffAlphaKey( spep_3 + 0, tackle, 255 );
setEffAlphaKey( spep_3 + 96, tackle, 255 );

-- ** 音 ** --
--ピタッ
SE012 = playSe( spep_3 + 64, 1072,"",0.6 );
setSeVolumeByWorkId( spep_3 + 64, SE012, 126 );
stopSe( spep_3 +96 + 16, SE012, 26 );

-- ** 黒背景 ** --
--entryFadeBg( spep_3 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;

------------------------------------------------------
-- フィニッシュ(136F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --フィニッシュ敵より手前	ef_004_front
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 136, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 136, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 136, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 136, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --フィニッシュ敵より奥	ef_004_back
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 136, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 136, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 136, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 136, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 101 );
changeAnime( spep_4 -3 + 12, 1, 104 );

a1=140;
b1=20;
setMoveKey( spep_4 + 0, 1, 414.6 -a1, 14.4 +b1 , 0 );
setMoveKey( spep_4 + 1, 1, 378.4 -a1, 4.4 +b1 , 0 );
setMoveKey( spep_4 + 2, 1, 342.2 -a1, -5.6 +b1 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 306 -a1, -15.7 +b1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 269.8 -a1, -25.7 +b1 , 0 );
setMoveKey( spep_4 -3 + 11, 1, 233.6 -a1, -35.7 +b1 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 206.9 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 206.3 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 205.8 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 205.3 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 204.8 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 204.2 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 203.7 -a1, -42 +b1 , 0 );

s1=0.6;
setScaleKey( spep_4 + 0, 1, 1.08 +s1, 1.08 +s1 );
setScaleKey( spep_4 -3 + 11, 1, 1.08 +s1, 1.08 +s1 );
setScaleKey( spep_4 -3 + 12, 1, 1.2 +s1, 1.2 +s1 );

setRotateKey( spep_4 + 0, 1, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 22 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 203.7 -a1, -42 +b1 , 0 );
    setMoveKey( SP_dodge + 2, 1, 203.2 -a1, -42 +b1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 202.7 -a1, -42 +b1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 202.2 -a1, -42 +b1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 201.6 -a1, -42 +b1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 201.1 -a1, -42 +b1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.2 +s1, 1.2 +s1 );
    setScaleKey( SP_dodge + 10, 1, 1.2 +s1, 1.2 +s1 );

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
setDisp( spep_4 + 176, 1, 0 );
changeAnime( spep_4 -3 + 60, 1, 105 );


setMoveKey( spep_4 -3 + 26, 1, 203.2 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 202.7 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 202.2 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 201.6 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 201.1 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 200.6 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 200.1 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 199.5 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 199 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 198.5 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 198 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 197.5 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 196.9 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 196.4 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 195.9 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 195.4 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 59, 1, 194.9 -a1, -42 +b1 , 0 );

a2=140;
b2=0;
setMoveKey( spep_4 -3 + 60, 1, 217 -a2, 56.2 -b2 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 218.3 -a2, -20.3 -b2 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 217.8 -a2, 21.3 -b2 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 250.9 -a2, 18.7 -b2 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 250 -a2, 60.8 -b2 , 0 );

a3=38;
b3=30;
setMoveKey( spep_4 -3 + 70, 1, 164.7 -a3 +1, -10 +b3 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 164.3 -a3 +1.5, 19 +b3 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 174.2 -a3 +2, 7.2 +b3 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 167.9 -a3 +2.5, 20.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 167.5 -a3 +3, 9.8 +b3 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 167.4 -a3 +3.5, 18.9 +b3 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 167.1 -a3 +4, 9.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 166.9 -a3 +4.5, 18.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 166.6 -a3 +5, 11.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 166.3 -a3 +5.5, 17.2 +b3 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 166.1 -a3 +6, 13.8 +b3 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 165.9 -a3 +6.5, 15.9 +b3 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 165.9 -a3 +7, 16.2 +b3 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 165.9 -a3 +7, 16.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 165.9 -a3 +8, 17 +b3 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 165.9 -a3 +8, 17.3 +b3 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 165.9 -a3 +8, 17.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 165.9 -a3 +8, 18 +b3 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 165.9 -a3 +9, 18.4 +b3 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 165.9 -a3 +9, 18.8 +b3 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 165.9 -a3 +9, 19.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 165.9 -a3 +10, 19.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 165.9 -a3 +10, 19.9 +b3 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 165.9 -a3 +10, 20.3 +b3 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 165.9 -a3 +11, 20.7 +b3 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 165.9 -a3 +11, 21.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 165.9 -a3 +11, 21.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 165.9 -a3 +12, 21.9 +b3 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 165.9 -a3 +12, 22.4 +b3 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 165.9 -a3 +12, 22.8 +b3 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 165.9 -a3 +13, 23.2 +b3 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 165.9 -a3 +13, 23.7 +b3 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 165.9 -a3 +13, 24.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 165.9 -a3 +14, 24.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 165.9 -a3 +14, 25.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 165.9 -a3 +14, 24.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 165.9 -a3 +15, 25.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 165.9 -a3 +15, 25.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 165.9 -a3 +15, 26.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 165.9 -a3 +16, 26.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 150, 1, 165.9 -a3 +16, 27.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 152, 1, 165.9 -a3 +16, 27.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 154, 1, 165.9 -a3 +17, 28.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 156, 1, 165.9 -a3 +17, 28.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 158, 1, 165.9 -a3 +17, 29.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 165.9 -a3 +18, 29.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 165.9 -a3 +18, 30.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 165.9 -a3 +18, 30.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 165.9 -a3 +18, 31.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 168, 1, 165.9 -a3 +18, 31.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 170, 1, 165.9 -a3 +18, 32.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 165.9 -a3 +19, 32.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 174, 1, 165.9 -a3 +19, 33.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 176, 1, 165.9 -a3 +19, 33.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 179, 1, 165.9 -a3 +19, 34.1 +b3 , 0 );

setScaleKey( spep_4 -3 + 59, 1, 1.2 +s1, 1.2 +s1 );
setScaleKey( spep_4 -3 + 60, 1, 0.6, 0.6);
setScaleKey( spep_4 -3 + 62, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 64, 1, 0.48, 0.48 );
setScaleKey( spep_4 -3 + 66, 1, 0.42, 0.42 );
setScaleKey( spep_4 -3 + 68, 1, 0.3, 0.3 );
setScaleKey( spep_4 -3 + 70, 1, 0.232, 0.232 );
setScaleKey( spep_4 -3 + 179, 1, 0.144, 0.144 );

setRotateKey( spep_4 -3 + 60, 1, 0 );
setRotateKey( spep_4 -3 + 62, 1, 6.3 );
setRotateKey( spep_4 -3 + 64, 1, 12.5 );
setRotateKey( spep_4 -3 + 66, 1, 18.8 );
setRotateKey( spep_4 -3 + 68, 1, 25 );
setRotateKey( spep_4 -3 + 70, 1, 31.3 );
setRotateKey( spep_4 -3 + 72, 1, 31.6 );
setRotateKey( spep_4 -3 + 74, 1, 31.9 );
setRotateKey( spep_4 -3 + 76, 1, 32.2 );
setRotateKey( spep_4 -3 + 78, 1, 32.5 );
setRotateKey( spep_4 -3 + 80, 1, 32.8 );
setRotateKey( spep_4 -3 + 82, 1, 33 );
setRotateKey( spep_4 -3 + 84, 1, 33.3 );
setRotateKey( spep_4 -3 + 86, 1, 33.6 );
setRotateKey( spep_4 -3 + 88, 1, 33.9 );
setRotateKey( spep_4 -3 + 90, 1, 34.2 );
setRotateKey( spep_4 -3 + 92, 1, 34.5 );
setRotateKey( spep_4 -3 + 94, 1, 34.8 );
setRotateKey( spep_4 -3 + 96, 1, 35.1 );
setRotateKey( spep_4 -3 + 98, 1, 35.4 );
setRotateKey( spep_4 -3 + 100, 1, 35.7 );
setRotateKey( spep_4 -3 + 102, 1, 36 );
setRotateKey( spep_4 -3 + 104, 1, 36.2 );
setRotateKey( spep_4 -3 + 106, 1, 36.5 );
setRotateKey( spep_4 -3 + 108, 1, 36.8 );
setRotateKey( spep_4 -3 + 110, 1, 37.1 );
setRotateKey( spep_4 -3 + 112, 1, 37.4 );
setRotateKey( spep_4 -3 + 114, 1, 37.7 );
setRotateKey( spep_4 -3 + 116, 1, 38 );
setRotateKey( spep_4 -3 + 118, 1, 38.3 );
setRotateKey( spep_4 -3 + 120, 1, 38.6 );
setRotateKey( spep_4 -3 + 122, 1, 38.9 );
setRotateKey( spep_4 -3 + 124, 1, 39.2 );
setRotateKey( spep_4 -3 + 126, 1, 39.4 );
setRotateKey( spep_4 -3 + 128, 1, 39.7 );
setRotateKey( spep_4 -3 + 130, 1, 40 );
setRotateKey( spep_4 -3 + 132, 1, 40.3 );
setRotateKey( spep_4 -3 + 134, 1, 40.6 );
setRotateKey( spep_4 -3 + 136, 1, 40.9 );
setRotateKey( spep_4 -3 + 138, 1, 41.2 );
setRotateKey( spep_4 -3 + 140, 1, 41.5 );
setRotateKey( spep_4 -3 + 142, 1, 41.8 );
setRotateKey( spep_4 -3 + 144, 1, 42.1 );
setRotateKey( spep_4 -3 + 146, 1, 42.4 );
setRotateKey( spep_4 -3 + 148, 1, 42.7 );
setRotateKey( spep_4 -3 + 150, 1, 43 );
setRotateKey( spep_4 -3 + 152, 1, 43.3 );
setRotateKey( spep_4 -3 + 154, 1, 43.6 );
setRotateKey( spep_4 -3 + 156, 1, 43.9 );
setRotateKey( spep_4 -3 + 158, 1, 44.2 );
setRotateKey( spep_4 -3 + 160, 1, 44.5 );
setRotateKey( spep_4 -3 + 162, 1, 44.8 );
setRotateKey( spep_4 -3 + 164, 1, 45.1 );
setRotateKey( spep_4 -3 + 166, 1, 45.4 );
setRotateKey( spep_4 -3 + 168, 1, 45.7 );
setRotateKey( spep_4 -3 + 170, 1, 46 );
setRotateKey( spep_4 -3 + 172, 1, 46.3 );
setRotateKey( spep_4 -3 + 174, 1, 46.6 );
setRotateKey( spep_4 -3 + 176, 1, 46.9 );
setRotateKey( spep_4 -3 + 179, 1, 47.2 );

-- ** 音 ** --
--気弾発射
SE013 = playSe( spep_4 + 56, 1017 );
setSeVolumeByWorkId( spep_4 + 56, SE013, 94 );

--気弾発射
SE014 = playSe( spep_4 + 56, 1145 );
setSeVolumeByWorkId( spep_4 + 56, SE014, 89 );

--気弾発射
SE015 = playSe( spep_4 + 56, 1027 );
setSeVolumeByWorkId( spep_4 + 56, SE015, 82 );

--気弾発射
SE016 = playSe( spep_4 + 56, 1023 );
setSeVolumeByWorkId( spep_4 + 56, SE016, 80 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 58 );
endPhase( spep_4 + 158 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 正面構え(86F)
------------------------------------------------------
spep_0 = 0;

first_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --正面構え  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 86, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 86, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 86, first_f, 255 );

-- ** 音 ** --
--腕あげる
SE001 = playSe( spep_0 + 22, 1004 );

--腕あげる
SE002 = playSe( spep_0 + 26, 44,"",0.6 );
setSeVolumeByWorkId( spep_0 + 26, SE002, 78 );
setPitch( spep_0 + 26, SE002, -600 );
setTimeStretch( SE002, 0.6, 30, 4 );

--構える
SE003 = playSe( spep_0 + 80, 1233 );
setSeVolumeByWorkId( spep_0 + 80, SE003, 141 );
setPitch( spep_0 + 80, SE003, -400 );
setTimeStretch( SE003, 0.73, 10, 1 );

--構える
SE004 = playSe( spep_0 + 84, 1011 );
setSeVolumeByWorkId( spep_0 + 84, SE004, 89 );
stopSe( spep_0 +86 +86 + 6, SE004, 0 );

--構える
SE005 = playSe( spep_0 + 84, 1226 );
setSeVolumeByWorkId( spep_0 + 84, SE005, 73 );
stopSe( spep_0 +86 +86 + 6, SE005, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;


------------------------------------------------------
-- 正面気を溜める(86F)
------------------------------------------------------
kamae = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --正面気を溜める ef_002
setEffMoveKey( spep_1 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, kamae, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_1 + 86, kamae, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kamae, 0 );
setEffRotateKey( spep_1 + 86, kamae, 0 );
setEffAlphaKey( spep_1 + 0, kamae, 255 );
setEffAlphaKey( spep_1 + 86, kamae, 255 );

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

--構える
SE007 = playSe( spep_1 + 2, 20 );
setSeVolumeByWorkId( spep_1 + 2, SE007, 84 );
stopSe( spep_1 +86 + 6, SE007, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 68, 16, 2+2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;

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

--前方ダッシュ
SE009 = playSe( spep_2 + 92, 1226 );
stopSe( spep_2 +94 +96 + 8, SE009, 0 );

--前方ダッシュ
SE010 = playSe( spep_2 + 92, 1182 );

--前方ダッシュ
SE011 = playSe( spep_2 + 92, 1314 );
setSeVolumeByWorkId( spep_2 + 92, SE011, 126 );
stopSe( spep_2 +94 +96 + 2, SE011, 8 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 正面突進(96F)
------------------------------------------------------
-- ** エフェクト等 ** --
tackle = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --正面突進  ef_003
setEffMoveKey( spep_3 + 0, tackle, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, tackle, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tackle, -1.0, 1.0 );
setEffScaleKey( spep_3 + 96, tackle, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tackle, 0 );
setEffRotateKey( spep_3 + 96, tackle, 0 );
setEffAlphaKey( spep_3 + 0, tackle, 255 );
setEffAlphaKey( spep_3 + 96, tackle, 255 );

-- ** 音 ** --
--ピタッ
SE012 = playSe( spep_3 + 64, 1072,"",0.6 );
setSeVolumeByWorkId( spep_3 + 64, SE012, 126 );
stopSe( spep_3 +96 + 16, SE012, 26 );

-- ** 黒背景 ** --
--entryFadeBg( spep_3 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;

------------------------------------------------------
-- フィニッシュ(136F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_04r, 0x100, -1, 0, 0, 0 );  --フィニッシュ敵より手前 ef_004_front
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 136, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 136, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 136, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 136, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_05r, 0x80, -1, 0, 0, 0 );  --フィニッシュ敵より奥   ef_004_back
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 136, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 136, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 136, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 136, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 101 );
changeAnime( spep_4 -3 + 12, 1, 104 );

a1=140;
b1=20;
setMoveKey( spep_4 + 0, 1, 414.6 -a1, 14.4 +b1 , 0 );
setMoveKey( spep_4 + 1, 1, 378.4 -a1, 4.4 +b1 , 0 );
setMoveKey( spep_4 + 2, 1, 342.2 -a1, -5.6 +b1 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 306 -a1, -15.7 +b1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 269.8 -a1, -25.7 +b1 , 0 );
setMoveKey( spep_4 -3 + 11, 1, 233.6 -a1, -35.7 +b1 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 206.9 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 206.3 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 205.8 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 205.3 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 204.8 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 204.2 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 203.7 -a1, -42 +b1 , 0 );

s1=0.6;
setScaleKey( spep_4 + 0, 1, 1.08 +s1, 1.08 +s1 );
setScaleKey( spep_4 -3 + 11, 1, 1.08 +s1, 1.08 +s1 );
setScaleKey( spep_4 -3 + 12, 1, 1.2 +s1, 1.2 +s1 );

setRotateKey( spep_4 + 0, 1, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 22 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 203.7 -a1, -42 +b1 , 0 );
    setMoveKey( SP_dodge + 2, 1, 203.2 -a1, -42 +b1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 202.7 -a1, -42 +b1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 202.2 -a1, -42 +b1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 201.6 -a1, -42 +b1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 201.1 -a1, -42 +b1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.2 +s1, 1.2 +s1 );
    setScaleKey( SP_dodge + 10, 1, 1.2 +s1, 1.2 +s1 );

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
setDisp( spep_4 + 176, 1, 0 );
changeAnime( spep_4 -3 + 60, 1, 105 );


setMoveKey( spep_4 -3 + 26, 1, 203.2 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 202.7 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 202.2 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 201.6 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 201.1 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 200.6 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 200.1 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 199.5 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 199 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 198.5 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 198 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 197.5 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 196.9 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 196.4 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 195.9 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 195.4 -a1, -42 +b1 , 0 );
setMoveKey( spep_4 -3 + 59, 1, 194.9 -a1, -42 +b1 , 0 );

a2=140;
b2=0;
setMoveKey( spep_4 -3 + 60, 1, 217 -a2, 56.2 -b2 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 218.3 -a2, -20.3 -b2 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 217.8 -a2, 21.3 -b2 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 250.9 -a2, 18.7 -b2 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 250 -a2, 60.8 -b2 , 0 );

a3=38;
b3=30;
setMoveKey( spep_4 -3 + 70, 1, 164.7 -a3 +1, -10 +b3 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 164.3 -a3 +1.5, 19 +b3 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 174.2 -a3 +2, 7.2 +b3 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 167.9 -a3 +2.5, 20.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 167.5 -a3 +3, 9.8 +b3 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 167.4 -a3 +3.5, 18.9 +b3 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 167.1 -a3 +4, 9.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 166.9 -a3 +4.5, 18.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 166.6 -a3 +5, 11.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 166.3 -a3 +5.5, 17.2 +b3 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 166.1 -a3 +6, 13.8 +b3 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 165.9 -a3 +6.5, 15.9 +b3 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 165.9 -a3 +7, 16.2 +b3 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 165.9 -a3 +7, 16.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 165.9 -a3 +8, 17 +b3 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 165.9 -a3 +8, 17.3 +b3 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 165.9 -a3 +8, 17.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 165.9 -a3 +8, 18 +b3 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 165.9 -a3 +9, 18.4 +b3 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 165.9 -a3 +9, 18.8 +b3 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 165.9 -a3 +9, 19.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 165.9 -a3 +10, 19.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 165.9 -a3 +10, 19.9 +b3 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 165.9 -a3 +10, 20.3 +b3 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 165.9 -a3 +11, 20.7 +b3 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 165.9 -a3 +11, 21.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 165.9 -a3 +11, 21.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 165.9 -a3 +12, 21.9 +b3 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 165.9 -a3 +12, 22.4 +b3 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 165.9 -a3 +12, 22.8 +b3 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 165.9 -a3 +13, 23.2 +b3 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 165.9 -a3 +13, 23.7 +b3 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 165.9 -a3 +13, 24.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 165.9 -a3 +14, 24.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 165.9 -a3 +14, 25.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 165.9 -a3 +14, 24.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 165.9 -a3 +15, 25.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 165.9 -a3 +15, 25.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 165.9 -a3 +15, 26.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 165.9 -a3 +16, 26.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 150, 1, 165.9 -a3 +16, 27.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 152, 1, 165.9 -a3 +16, 27.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 154, 1, 165.9 -a3 +17, 28.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 156, 1, 165.9 -a3 +17, 28.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 158, 1, 165.9 -a3 +17, 29.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 165.9 -a3 +18, 29.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 165.9 -a3 +18, 30.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 165.9 -a3 +18, 30.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 165.9 -a3 +18, 31.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 168, 1, 165.9 -a3 +18, 31.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 170, 1, 165.9 -a3 +18, 32.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 165.9 -a3 +19, 32.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 174, 1, 165.9 -a3 +19, 33.1 +b3 , 0 );
setMoveKey( spep_4 -3 + 176, 1, 165.9 -a3 +19, 33.6 +b3 , 0 );
setMoveKey( spep_4 -3 + 179, 1, 165.9 -a3 +19, 34.1 +b3 , 0 );

setScaleKey( spep_4 -3 + 59, 1, 1.2 +s1, 1.2 +s1 );
setScaleKey( spep_4 -3 + 60, 1, 0.6, 0.6);
setScaleKey( spep_4 -3 + 62, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 64, 1, 0.48, 0.48 );
setScaleKey( spep_4 -3 + 66, 1, 0.42, 0.42 );
setScaleKey( spep_4 -3 + 68, 1, 0.3, 0.3 );
setScaleKey( spep_4 -3 + 70, 1, 0.232, 0.232 );
setScaleKey( spep_4 -3 + 179, 1, 0.144, 0.144 );

setRotateKey( spep_4 -3 + 60, 1, 0 );
setRotateKey( spep_4 -3 + 62, 1, 6.3 );
setRotateKey( spep_4 -3 + 64, 1, 12.5 );
setRotateKey( spep_4 -3 + 66, 1, 18.8 );
setRotateKey( spep_4 -3 + 68, 1, 25 );
setRotateKey( spep_4 -3 + 70, 1, 31.3 );
setRotateKey( spep_4 -3 + 72, 1, 31.6 );
setRotateKey( spep_4 -3 + 74, 1, 31.9 );
setRotateKey( spep_4 -3 + 76, 1, 32.2 );
setRotateKey( spep_4 -3 + 78, 1, 32.5 );
setRotateKey( spep_4 -3 + 80, 1, 32.8 );
setRotateKey( spep_4 -3 + 82, 1, 33 );
setRotateKey( spep_4 -3 + 84, 1, 33.3 );
setRotateKey( spep_4 -3 + 86, 1, 33.6 );
setRotateKey( spep_4 -3 + 88, 1, 33.9 );
setRotateKey( spep_4 -3 + 90, 1, 34.2 );
setRotateKey( spep_4 -3 + 92, 1, 34.5 );
setRotateKey( spep_4 -3 + 94, 1, 34.8 );
setRotateKey( spep_4 -3 + 96, 1, 35.1 );
setRotateKey( spep_4 -3 + 98, 1, 35.4 );
setRotateKey( spep_4 -3 + 100, 1, 35.7 );
setRotateKey( spep_4 -3 + 102, 1, 36 );
setRotateKey( spep_4 -3 + 104, 1, 36.2 );
setRotateKey( spep_4 -3 + 106, 1, 36.5 );
setRotateKey( spep_4 -3 + 108, 1, 36.8 );
setRotateKey( spep_4 -3 + 110, 1, 37.1 );
setRotateKey( spep_4 -3 + 112, 1, 37.4 );
setRotateKey( spep_4 -3 + 114, 1, 37.7 );
setRotateKey( spep_4 -3 + 116, 1, 38 );
setRotateKey( spep_4 -3 + 118, 1, 38.3 );
setRotateKey( spep_4 -3 + 120, 1, 38.6 );
setRotateKey( spep_4 -3 + 122, 1, 38.9 );
setRotateKey( spep_4 -3 + 124, 1, 39.2 );
setRotateKey( spep_4 -3 + 126, 1, 39.4 );
setRotateKey( spep_4 -3 + 128, 1, 39.7 );
setRotateKey( spep_4 -3 + 130, 1, 40 );
setRotateKey( spep_4 -3 + 132, 1, 40.3 );
setRotateKey( spep_4 -3 + 134, 1, 40.6 );
setRotateKey( spep_4 -3 + 136, 1, 40.9 );
setRotateKey( spep_4 -3 + 138, 1, 41.2 );
setRotateKey( spep_4 -3 + 140, 1, 41.5 );
setRotateKey( spep_4 -3 + 142, 1, 41.8 );
setRotateKey( spep_4 -3 + 144, 1, 42.1 );
setRotateKey( spep_4 -3 + 146, 1, 42.4 );
setRotateKey( spep_4 -3 + 148, 1, 42.7 );
setRotateKey( spep_4 -3 + 150, 1, 43 );
setRotateKey( spep_4 -3 + 152, 1, 43.3 );
setRotateKey( spep_4 -3 + 154, 1, 43.6 );
setRotateKey( spep_4 -3 + 156, 1, 43.9 );
setRotateKey( spep_4 -3 + 158, 1, 44.2 );
setRotateKey( spep_4 -3 + 160, 1, 44.5 );
setRotateKey( spep_4 -3 + 162, 1, 44.8 );
setRotateKey( spep_4 -3 + 164, 1, 45.1 );
setRotateKey( spep_4 -3 + 166, 1, 45.4 );
setRotateKey( spep_4 -3 + 168, 1, 45.7 );
setRotateKey( spep_4 -3 + 170, 1, 46 );
setRotateKey( spep_4 -3 + 172, 1, 46.3 );
setRotateKey( spep_4 -3 + 174, 1, 46.6 );
setRotateKey( spep_4 -3 + 176, 1, 46.9 );
setRotateKey( spep_4 -3 + 179, 1, 47.2 );

-- ** 音 ** --
--気弾発射
SE013 = playSe( spep_4 + 56, 1017 );
setSeVolumeByWorkId( spep_4 + 56, SE013, 94 );

--気弾発射
SE014 = playSe( spep_4 + 56, 1145 );
setSeVolumeByWorkId( spep_4 + 56, SE014, 89 );

--気弾発射
SE015 = playSe( spep_4 + 56, 1027 );
setSeVolumeByWorkId( spep_4 + 56, SE015, 82 );

--気弾発射
SE016 = playSe( spep_4 + 56, 1023 );
setSeVolumeByWorkId( spep_4 + 56, SE016, 80 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 58 );
endPhase( spep_4 + 158 );

end