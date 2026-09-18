--1021560:URベクウ・ラッキーパンチ_sp2127
--sp_effect_b1_00134

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
SP_01 = 156576;  --カットイン、指を指す  ef_001
SP_02 = 156577;  --敵に向かってジャンプ_敵より手前    ef_002_front
SP_03 = 156578;  --敵に向かってジャンプ_敵より奥 ef_002_back
SP_04 = 156579;  --屁の文字が画面を負う_敵より手前    ef_003_front
SP_05 = 156580;  --屁の文字が画面を負う_敵より奥 ef_003_back
SP_06 = 156583;  --足のアップステップが崩れる   ef_004
SP_07 = 156584;  --カメラに向かって走ってくるベクウ    ef_005
SP_08 = 156585;  --横に走るベクウ ef_006
SP_09 = 156586;  --転んで地面に激突するベクウ   ef_007
SP_10 = 156587;  --敵に向かって滑って進む_敵より手前   ef_008_front
SP_11 = 156588;  --敵に向かって滑って進む_敵より奥    ef_008_back
SP_12 = 156589;  --敵に当たる手のアップ_敵より手前    ef_009_front
SP_13 = 156590;  --敵に当たる手のアップ_敵より奥 ef_009_back
SP_14 = 156591;  --飛んでいく敵_敵より手前    ef_010_front
SP_15 = 156592;  --飛んでいく敵_敵より奥 ef_010_back
SP_16 = 156593;  --カメラに激突_敵より手前    ef_011_front
SP_17 = 156594;  --カメラに激突_敵より奥 ef_011_back

--敵側
SP_04r = 156581;  --敵側)屁の文字が画面を負う_敵より手前 ef_003_front_r
SP_05r = 156582;  --敵側)屁の文字が画面を負う_敵より奥  ef_003_back_r


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
-- カットイン、指を指す(86F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 86, 0x100, -1, 0, 0, 0 );  --カットイン、指を指す(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 86, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 85, first_f, 255 );
setEffAlphaKey( spep_0 + 86, first_f, 0 );

spep_x = spep_0 + 0;
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
SE001 = playSe( spep_0 + 8, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 88, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 78, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;


------------------------------------------------------
-- 敵に向かってジャンプ(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
jump_f = entryEffectLife( spep_1 + 0, SP_02, 56, 0x100, -1, 0, 0, 0 );  --敵に向かってジャンプ_敵より手前(ef_002_front)
setEffMoveKey( spep_1 + 0, jump_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, jump_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, jump_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, jump_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jump_f, 0 );
setEffRotateKey( spep_1 + 56, jump_f, 0 );
setEffAlphaKey( spep_1 + 0, jump_f, 255 );
setEffAlphaKey( spep_1 -1 + 56, jump_f, 255 );
setEffAlphaKey( spep_1 + 56, jump_f, 0 );

jump_b = entryEffectLife( spep_1 + 0, SP_03, 56, 0x80, -1, 0, 0, 0 );  --敵に向かってジャンプ_敵より奥(ef_002_back)
setEffMoveKey( spep_1 + 0, jump_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, jump_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, jump_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, jump_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jump_b, 0 );
setEffRotateKey( spep_1 + 56, jump_b, 0 );
setEffAlphaKey( spep_1 + 0, jump_b, 255 );
setEffAlphaKey( spep_1 -1 + 56, jump_b, 255 );
setEffAlphaKey( spep_1 + 56, jump_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
--setDisp( spep_1 + 56, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );

a1 =0;
b1 =84;
setMoveKey( spep_1 + 0, 1, 246.1 +a1, -133.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 246.1 +a1, -133.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 236.2 +a1, -129.2 +b1 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 226.4 +a1, -124.8 +b1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 216.6 +a1, -120.4 +b1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 206.7 +a1, -115.9 +b1 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 196.9 +a1, -111.5 +b1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 187 +a1, -107.1 +b1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 177.2 +a1, -102.7 +b1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 167.4 +a1, -98.2 +b1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 157.4 +a1, -93.8 +b1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 147.6 +a1, -89.4 +b1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 137.8 +a1, -84.9 +b1 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 127.9 +a1, -80.5 +b1 , 0 );

s1 =1.2;
setScaleKey( spep_1 + 0, 1, 0.18 +s1, 0.18 +s1 );
setScaleKey( spep_1 -3 + 8, 1, 0.18 +s1, 0.18 +s1 );
setScaleKey( spep_1 -3 + 10, 1, 0.19 +s1, 0.19 +s1 );
setScaleKey( spep_1 -3 + 22, 1, 0.19 +s1, 0.19 +s1 );
setScaleKey( spep_1 -3 + 24, 1, 0.2 +s1, 0.2 +s1 );

setRotateKey( spep_1 + 0, 1, 0 );

-- ** 音 ** --
--とびかかる
SE002 = playSe( spep_1 + 8, 1117 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 58, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 118.1 +a1, -76.1 +b1 , 0 );
    setMoveKey( SP_dodge + 2, 1, 108.2 +a1, -71.6 +b1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 98.4 +a1, -67.2 +b1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 88.6 +a1, -62.8 +b1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 78.7 +a1, -58.3 +b1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 68.9 +a1, -53.9 +b1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.2 +s1, 0.2 +s1 );
    setScaleKey( SP_dodge + 2, 1, 0.21 +s1, 0.21 +s1 );
    setScaleKey( SP_dodge + 10, 1, 0.21 +s1, 0.21 +s1 );

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

setMoveKey( spep_1 -3 + 34, 1, 118.1 +a1, -76.1 +b1 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 108.2 +a1, -71.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 98.4 +a1, -67.2 +b1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 88.6 +a1, -62.8 +b1 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 78.7 +a1, -58.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 68.9 +a1, -53.9 +b1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 59 +a1, -49.5 +b1 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 49.2 +a1, -45 +b1 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 39.3 +a1, -40.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 29.5 +a1, -36.2 +b1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 19.7 +a1, -31.8 +b1 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 9.8 +a1, -27.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -0.1 +a1, -22.9 +b1 , 0 );
--setMoveKey( spep_1 -3 + 59, 1, -0.1 +a1, -22.9 +b1 , 0 );


setScaleKey( spep_1 -3 + 36, 1, 0.2 +s1, 0.2 +s1 );
setScaleKey( spep_1 -3 + 38, 1, 0.21 +s1, 0.21 +s1 );
setScaleKey( spep_1 -3 + 50, 1, 0.21 +s1, 0.21 +s1 );
setScaleKey( spep_1 -3 + 52, 1, 0.22 +s1, 0.22 +s1 );
setScaleKey( spep_1 -3 + 58, 1, 0.22 +s1, 0.22 +s1 );


setRotateKey( spep_1 + 55, 1, 0 );

-- ** 音 ** --
stopSe( spep_1 + 34, SE002, 56 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;


------------------------------------------------------
-- 屁の文字が画面を負う(116F)
------------------------------------------------------
-- ** エフェクト等 ** --
skunk_f = entryEffectLife( spep_2 + 0, SP_04, 116, 0x100, -1, 0, 0, 0 );  --屁の文字が画面を負う_敵より手前(ef_003_front)
setEffMoveKey( spep_2 + 0, skunk_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, skunk_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, skunk_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, skunk_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, skunk_f, 0 );
setEffRotateKey( spep_2 + 116, skunk_f, 0 );
setEffAlphaKey( spep_2 + 0, skunk_f, 255 );
setEffAlphaKey( spep_2 -1 + 116, skunk_f, 255 );
setEffAlphaKey( spep_2 + 116, skunk_f, 0 );

skunk_b = entryEffectLife( spep_2 + 0, SP_05, 116, 0x80, -1, 0, 0, 0 );  --屁の文字が画面を負う_敵より奥(ef_003_back)
setEffMoveKey( spep_2 + 0, skunk_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, skunk_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, skunk_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, skunk_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, skunk_b, 0 );
setEffRotateKey( spep_2 + 116, skunk_b, 0 );
setEffAlphaKey( spep_2 + 0, skunk_b, 255 );
setEffAlphaKey( spep_2 -1 + 116, skunk_b, 255 );
setEffAlphaKey( spep_2 + 116, skunk_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 116, 1, 0 );
changeAnime( spep_2 + 0, 1, 101 );

b2=25;
setMoveKey( spep_2    + 0, 1, 369.5, -91.9 +b2 , 0 );
setMoveKey( spep_2    + 1, 1, 335.6, -88.8 +b2 , 0 );
setMoveKey( spep_2    + 2, 1, 301.6, -87.6 +b2 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 267.6, -86.5 +b2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 233.7, -78.4 +b2 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 199.8, -71.2 +b2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 199.4, -71 +b2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 198.9, -70.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 198.5, -70.8 +b2 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 198.1, -70.6 +b2 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 197.7, -70.5 +b2 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 197.3, -70.4 +b2 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 196.9, -70.2 +b2 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 196.4, -70.1 +b2 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 196, -69.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 195.6, -69.8 +b2 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 195.2, -69.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 194.8, -69.5 +b2 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 194.4, -69.4 +b2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 194, -69.3 +b2 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 193.5, -69.1 +b2 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 193.1, -69 +b2 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 192.7, -68.8 +b2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 192.3, -68.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 191.9, -68.6 +b2 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 191.5, -68.4 +b2 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 191, -68.3 +b2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 190.6, -68.2 +b2 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 190.2, -68 +b2 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 189.8, -67.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 189.4, -67.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 189, -67.6 +b2 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 188.5, -67.5 +b2 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 188.1, -67.3 +b2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 187.7, -67.2 +b2 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 187.3, -67.1 +b2 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 186.9, -66.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 186.5, -66.8 +b2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 186, -66.6 +b2 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 185.6, -66.5 +b2 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 185.2, -66.4 +b2 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 184.8, -66.2 +b2 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 184.4, -66.1 +b2 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 184, -66 +b2 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 183.6, -65.8 +b2 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 183.1, -65.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 182.7, -65.6 +b2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 182.3, -65.4 +b2 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 181.9, -65.3 +b2 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 181.5, -65.1 +b2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 181.1, -65 +b2 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 180.6, -64.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 180.2, -64.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 179.8, -64.6 +b2 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 179.4, -64.5 +b2 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 179, -64.3 +b2 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 178.6, -64.2 +b2 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 178.1, -64 +b2 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 177.7, -63.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 177.3, -63.8 +b2 , 0 );
setMoveKey( spep_2 -3 + 119, 1, 177.3, -63.8 +b2 , 0 );

s2=0.1;
setScaleKey( spep_2 + 0, 1, 2.604 +s2, 2.604 +s2 );
setScaleKey( spep_2 + 1, 1, 2.356 +s2, 2.356 +s2 );
setScaleKey( spep_2 + 2, 1, 2.17 +s2, 2.17 +s2 );
setScaleKey( spep_2 -3 + 6, 1, 1.922 +s2, 1.922 +s2 );
setScaleKey( spep_2 -3 + 8, 1, 1.736 +s2, 1.736 +s2 );
setScaleKey( spep_2 -3 + 10, 1, 1.488 +s2, 1.488 +s2 );
--setScaleKey( spep_2 -3 + 44, 1, 1.488, 1.488 );
setScaleKey( spep_2 -3 + 46, 1, 1.426 +s2, 1.426 +s2 );
--setScaleKey( spep_2 -3 + 86, 1, 1.426, 1.426 );
setScaleKey( spep_2 -3 + 88, 1, 1.364 +s2, 1.364 +s2 );
setScaleKey( spep_2 -3 + 118, 1, 1.314 +s2, 1.314 +s2 );
setScaleKey( spep_2 -3 + 119, 1, 1.314 +s2, 1.314 +s2 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 116, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 118, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 音 ** --
--浮く
SE003 = playSe( spep_2 + 0, 1186 );
stopSe( spep_2 + 28, SE003, 6 );

--おなら1
SE004 = playSe( spep_2 + 28, 1293 );
setSeVolumeByWorkId( spep_2 + 28, SE004, 107 );

--おなら2
SE005 = playSe( spep_2 + 56, 1294 );
stopSe( spep_2 + 76, SE005, 12 );

--おなら3
SE006 = playSe( spep_2 + 64, 1293 );
setSeVolumeByWorkId( spep_2 + 64, SE006, 114 );
setPitch( spep_2 + 64, SE006, 300 );
setTimeStretch( SE006, 1.2, 10, 1 );

--おなら4
SE007 = playSe( spep_2 + 88, 1293 );
setSeVolumeByWorkId( spep_2 + 88, SE007, 136 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;


------------------------------------------------------
-- 足のアップステップが崩れる(66F)
------------------------------------------------------
-- ** エフェクト等 ** --
step_f = entryEffectLife( spep_3 + 0, SP_06, 64, 0x100, -1, 0, 0, 0 );  --足のアップステップが崩れる(ef_004)
setEffMoveKey( spep_3 + 0, step_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 64, step_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, step_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 64, step_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, step_f, 0 );
setEffRotateKey( spep_3 + 64, step_f, 0 );
setEffAlphaKey( spep_3 + 0, step_f, 255 );
setEffAlphaKey( spep_3 -1 + 64, step_f, 255 );
setEffAlphaKey( spep_3 + 64, step_f, 0 );

-- ** 音 ** --
--足踏み1
SE008 = playSe( spep_3 + 4, 1108 );
setSeVolumeByWorkId( spep_3 + 4, SE008, 141 );

--足踏み2	
SE009 = playSe( spep_3 + 16, 1106 );
setSeVolumeByWorkId( spep_3 + 16, SE009, 127 );

--足踏み3
SE010 = playSe( spep_3 + 28, 1106 );

--足踏み4	
SE011 = playSe( spep_3 + 40, 1106 );
setSeVolumeByWorkId( spep_3 + 40, SE011, 150 );

--足踏み5
SE012 = playSe( spep_3 + 44, 1108 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 66, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 64;


------------------------------------------------------
-- カメラに向かって走ってくるベクウ(82F)
------------------------------------------------------
-- ** エフェクト等 ** --
run = entryEffectLife( spep_4 + 0, SP_07, 80, 0x100, -1, 0, 0, 0 );  --カメラに向かって走ってくるベクウ(ef_005)
setEffMoveKey( spep_4 + 0, run, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, run, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, run, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, run, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, run, 0 );
setEffRotateKey( spep_4 + 80, run, 0 );
setEffAlphaKey( spep_4 + 0, run, 255 );
setEffAlphaKey( spep_4 -1 + 80, run, 255 );
setEffAlphaKey( spep_4 + 80, run, 0 );

-- ** 音 ** --
--ガッツポーズ1
SE013 = playSe( spep_4 + 2, 31 );
stopSe( spep_4 + 34, SE013, 14 );
setPitch( spep_4 + 2, SE013, -400 );
setTimeStretch( SE013, 0.73, 10, 1 );

--ガッツポーズ2
SE014 = playSe( spep_4 + 4, 1012 );
setSeVolumeByWorkId( spep_4 + 7, SE014, 73 );

--走り出し1
SE015 = playSe( spep_4 + 54, 1111 );
setSeVolumeByWorkId( spep_4 + 54, SE015, 216 );
stopSe( spep_4 +67 + 5, SE015, 0 );			

--走り出し2
SE016 = playSe( spep_4 + 54, 1182 );
setSeVolumeByWorkId( spep_4 + 54, SE016, 53 );
stopSe( spep_4 +67 + 3, SE016, 12 );			

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 82, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 80;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_5 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );

--走る1
SE018 = playSe( spep_5 + 90, 1111 );
setSeVolumeByWorkId( spep_5 + 90, SE018, 219 );
stopSe( spep_5 +94 + 14, SE018, 0 );

--走る2
SE019 = playSe( spep_5 + 90, 1182 );
setSeVolumeByWorkId( spep_5 + 90, SE019, 58 );
stopSe( spep_5 +94 + 14, SE019, 10 );

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;


------------------------------------------------------
-- 横に走るベクウ(58F)
------------------------------------------------------
-- ** エフェクト等 ** --
move = entryEffectLife( spep_6 + 0, SP_08, 58, 0x80, -1, 0, 0, 0 );  --横に走るベクウ(ef_006)
setEffMoveKey( spep_6 + 0, move, 0, 0 , 0 );
setEffMoveKey( spep_6 + 58, move, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, move, 1.0, 1.0 );
setEffScaleKey( spep_6 + 58, move, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, move, 0 );
setEffRotateKey( spep_6 + 58, move, 0 );
setEffAlphaKey( spep_6 + 0, move, 255 );
setEffAlphaKey( spep_6 -1 + 58, move, 255 );
setEffAlphaKey( spep_6 + 58, move, 0 );

-- ** 音 ** --
--走る3
SE020 = playSe( spep_6 + 16, 1111 );
setSeVolumeByWorkId( spep_6 + 16, SE020, 191 );
stopSe( spep_6 + 34, SE020, 0 );

--走る4
SE021 = playSe( spep_6 + 16, 1182 );
setSeVolumeByWorkId( spep_6 + 16, SE021, 55 );
stopSe( spep_6 + 34, SE021, 10 );

--走る5
SE022 = playSe( spep_6 + 40, 1111 );
setSeVolumeByWorkId( spep_6 + 40, SE022, 214 );
stopSe( spep_6 +45 + 13, SE022, 0 );

--走る6
SE023 = playSe( spep_6 + 40, 1182 );
setSeVolumeByWorkId( spep_6 + 40, SE023, 54 );
stopSe( spep_6 +45 + 13, SE023, 10 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 60, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 52;
------------------------------------------------------
-- 転んで地面に激突するベクウ(66F)
------------------------------------------------------
-- ** エフェクト等 ** --
clash = entryEffectLife( spep_7 + 0, SP_09, 66, 0x100, -1, 0, 0, 0 );  --転んで地面に激突するベクウ(ef_007)
setEffMoveKey( spep_7 + 0, clash, 0, 0 , 0 );
setEffMoveKey( spep_7 + 66, clash, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, clash, 1.0, 1.0 );
setEffScaleKey( spep_7 + 66, clash, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, clash, 0 );
setEffRotateKey( spep_7 + 66, clash, 0 );
setEffAlphaKey( spep_7 + 0, clash, 255 );
setEffAlphaKey( spep_7 -1 + 66, clash, 255 );
setEffAlphaKey( spep_7 + 66, clash, 0 );

-- ** 音 ** --
--飛び込む1
SE024 = playSe( spep_7 + 0, 37 );
setSeVolumeByWorkId( spep_7 + 0, SE024, 140 );

--滑り込み1
SE025 = playSe( spep_7 + 8, 1219 );
stopSe( spep_7 +66 +36 + 16, SE025, 28 );

--飛び込む2
SE026 = playSe( spep_7 + 14, 1190 );
setSeVolumeByWorkId( spep_7 + 14, SE026, 41 );

--滑り込み2
SE027 = playSe( spep_7 + 16, 1044 );
setSeVolumeByWorkId( spep_7 + 16, SE027, 47 );
stopSe( spep_7 +66 +36 + 18, SE027, 14 );
setPitch( spep_7 + 29, SE027, 300 );
setTimeStretch( SE027, 1.2, 10, 1 );

--飛び込む3
SE028 = playSe( spep_7 + 18, 1192 );
setSeVolumeByWorkId( spep_7 + 18, SE028, 200 );				

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 68, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 66;


------------------------------------------------------
-- 敵に向かって滑って進む(36F)
------------------------------------------------------
-- ** エフェクト等 ** --
slip_f = entryEffectLife( spep_8 + 0, SP_10, 36, 0x100, -1, 0, 0, 0 );  --敵に向かって滑って進む_敵より手前(ef_008_front)
setEffMoveKey( spep_8 + 0, slip_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 36, slip_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, slip_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 36, slip_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, slip_f, 0 );
setEffRotateKey( spep_8 + 36, slip_f, 0 );
setEffAlphaKey( spep_8 + 0, slip_f, 255 );
setEffAlphaKey( spep_8 -1 + 36, slip_f, 255 );
setEffAlphaKey( spep_8 + 36, slip_f, 0 );

slip_b = entryEffectLife( spep_8 + 0, SP_11, 36, 0x80, -1, 0, 0, 0 );  --敵に向かって滑って進む_敵より奥(ef_008_back)
setEffMoveKey( spep_8 + 0, slip_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 36, slip_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, slip_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 36, slip_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, slip_b, 0 );
setEffRotateKey( spep_8 + 36, slip_b, 0 );
setEffAlphaKey( spep_8 + 0, slip_b, 255 );
setEffAlphaKey( spep_8 -1 + 36, slip_b, 255 );
setEffAlphaKey( spep_8 + 36, slip_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
--setDisp( spep_8 + 36, 1, 0 );
changeAnime( spep_8 + 0, 1, 100 );

b3=20;
setMoveKey( spep_8    + 0, 1, 234, -21.5 +b3 , 0 );
setMoveKey( spep_8    + 2, 1, 234, -13.5 +b3 , 0 );
setMoveKey( spep_8    + 4, 1, 234, -29.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 6, 1, 226, -21.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 8, 1, 242, -21.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 10, 1, 234, -13.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 12, 1, 234, -29.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 14, 1, 226, -21.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 16, 1, 242, -21.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 18, 1, 234, -13.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 20, 1, 234, -29.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 22, 1, 226, -21.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 24, 1, 242, -21.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 26, 1, 234, -17.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 28, 1, 234, -25.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 30, 1, 230, -21.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 32, 1, 238, -21.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 34, 1, 234, -17.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 36, 1, 234, -25.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 38, 1, 230, -21.5 +b3 , 0 );
--setMoveKey( spep_8 -3 + 39, 1, 230, -21.5 +b3 , 0 );

setScaleKey( spep_8 + 0, 1, 0.87, 0.87 );
setScaleKey( spep_8 -3 + 38, 1, 0.87, 0.87 );
--setScaleKey( spep_8 -3 + 39, 1, 0.87, 0.87 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8 -3 + 38, 1, 0 );
--setRotateKey( spep_8 -3 + 39, 1, 0 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 38, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 36;


------------------------------------------------------
-- 敵に当たる手のアップ(36F)
------------------------------------------------------
-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_9 + 0, SP_12, 36, 0x100, -1, 0, 0, 0 );  --敵に当たる手のアップ_敵より手前(ef_009_front)
setEffMoveKey( spep_9 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 36, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 36, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, attack_f, 0 );
setEffRotateKey( spep_9 + 36, attack_f, 0 );
setEffAlphaKey( spep_9 + 0, attack_f, 255 );
setEffAlphaKey( spep_9 -1 + 36, attack_f, 255 );
setEffAlphaKey( spep_9 + 36, attack_f, 0 );

attack_b = entryEffectLife( spep_9 + 0, SP_13, 36, 0x80, -1, 0, 0, 0 );  --敵に当たる手のアップ_敵より奥(ef_009_back)
setEffMoveKey( spep_9 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 36, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 36, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, attack_b, 0 );
setEffRotateKey( spep_9 + 36, attack_b, 0 );
setEffAlphaKey( spep_9 + 0, attack_b, 255 );
setEffAlphaKey( spep_9 -1 + 36, attack_b, 255 );
setEffAlphaKey( spep_9 + 36, attack_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_9 + 0, 1, 1 );
--setDisp( spep_9 + 36, 1, 0 );
changeAnime( spep_9 + 0, 1, 100 );
changeAnime( spep_9 -3 + 14, 1, 108 );

a3=517;
b3=220;
c3=180;
setMoveKey( spep_9 + 0, 1, 128.1, -276.1 +b3, 0 );
setMoveKey( spep_9 -3 + 13, 1, 128.1, -276.1 +b3 , 0 );
setMoveKey( spep_9 -3 + 14, 1, -424.5 +a3, -125.4 +c3 , 0 );
setMoveKey( spep_9 -3 + 16, 1, -424.5 +a3, -164.6 +c3 , 0 );
setMoveKey( spep_9 -3 + 18, 1, -424.5 +a3, -4.8 +c3 , 0 );
setMoveKey( spep_9 -3 + 20, 1, -452.5 +a3, -216.3 +c3 , 0 );
setMoveKey( spep_9 -3 + 22, 1, -468.3 +a3, -125.4 +c3 , 0 );
setMoveKey( spep_9 -3 + 24, 1, -331.9 +a3, -125.4 +c3 , 0 );
setMoveKey( spep_9 -3 + 26, 1, -402.6 +a3, -58.8 +c3 , 0 );
setMoveKey( spep_9 -3 + 28, 1, -397.5 +a3, -174 +c3 , 0 );
setMoveKey( spep_9 -3 + 30, 1, -392.4 +a3, -107.5 +c3 , 0 );
setMoveKey( spep_9 -3 + 32, 1, -387.3 +a3, -101.5 +c3 , 0 );
setMoveKey( spep_9 -3 + 34, 1, -382.2 +a3, -95.5 +c3 , 0 );
setMoveKey( spep_9 -3 + 36, 1, -377.2 +a3, -89.6 +c3 , 0 );
setMoveKey( spep_9 -3 + 38, 1, -372.1 +a3, -83.6 +c3 , 0 );
--setMoveKey( spep_9 -3 + 39, 1, -372.1 +a3, -83.6 +c3 , 0 );

s3=1;
setScaleKey( spep_9  + 0, 1, 14.82, 14.82 );
setScaleKey( spep_9 -3 + 13, 1, 14.82, 14.82 );
setScaleKey( spep_9 -3 + 14, 1, 14 -s3, 14 -s3 );
setScaleKey( spep_9 -3 + 24, 1, 14 -s3, 14 -s3 );
setScaleKey( spep_9 -3 + 26, 1, 13.64 -s3, 13.64 -s3 );
setScaleKey( spep_9 -3 + 28, 1, 13.34 -s3, 13.34 -s3 );
setScaleKey( spep_9 -3 + 30, 1, 13.04 -s3, 13.04 -s3 );
setScaleKey( spep_9 -3 + 32, 1, 12.74 -s3, 12.74 -s3 );
setScaleKey( spep_9 -3 + 34, 1, 12.38 -s3, 12.38 -s3 );
setScaleKey( spep_9 -3 + 36, 1, 12.08 -s3, 12.08 -s3 );
setScaleKey( spep_9 -3 + 38, 1, 11.78 -s3, 11.78 -s3 );
--setScaleKey( spep_9 -3 + 39, 1, 11.78 -s3, 11.78 -s3 );

setRotateKey( spep_9 -3 + 0, 1, 0 );
setRotateKey( spep_9 -3 + 38, 1, 0 );

-- ** 音 ** --
--パンチ1
SE029 = playSe( spep_9 + 11, 1110 );
setSeVolumeByWorkId( spep_9 + 11, SE029, 44 );

--パンチ2
SE030 = playSe( spep_9 + 11, 1187 );
setSeVolumeByWorkId( spep_9 + 11, SE030, 74 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 38, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 36;


------------------------------------------------------
-- 飛んでいく敵(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
flye_f = entryEffectLife( spep_10 + 0, SP_14, 56, 0x100, -1, 0, 0, 0 );  --飛んでいく敵_敵より手前(ef_010_front)
setEffMoveKey( spep_10 + 0, flye_f, 0, 0 , 0 );
setEffMoveKey( spep_10 + 56, flye_f, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, flye_f, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, flye_f, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, flye_f, 0 );
setEffRotateKey( spep_10 + 56, flye_f, 0 );
setEffAlphaKey( spep_10 + 0, flye_f, 255 );
setEffAlphaKey( spep_10 -1 + 56, flye_f, 255 );
setEffAlphaKey( spep_10 + 56, flye_f, 0 );

flye_b = entryEffectLife( spep_10 + 0, SP_15, 56, 0x80, -1, 0, 0, 0 );  --飛んでいく敵_敵より奥(ef_010_back)
setEffMoveKey( spep_10 + 0, flye_b, 0, 0 , 0 );
setEffMoveKey( spep_10 + 56, flye_b, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, flye_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, flye_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, flye_b, 0 );
setEffRotateKey( spep_10 + 56, flye_b, 0 );
setEffAlphaKey( spep_10 + 0, flye_b, 255 );
setEffAlphaKey( spep_10 -1 + 56, flye_b, 255 );
setEffAlphaKey( spep_10 + 56, flye_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_10 + 0, 1, 1 );--
--setDisp( spep_10 + 56, 1, 0 );--
changeAnime( spep_10 + 0, 1, 105 );

a4=10;
setMoveKey( spep_10    + 0, 1, 21.9 +a4, -37.5 , 0 );
setMoveKey( spep_10    + 1, 1, 20.9 +a4, -26 , 0 );
setMoveKey( spep_10    + 2, 1, 22.3 +a4, -3.7 , 0 );
setMoveKey( spep_10 -3 + 6, 1, 25.2 +a4, 24.2 , 0 );
setMoveKey( spep_10 -3 + 8, 1, 28.8 +a4, 54.7 , 0 );
setMoveKey( spep_10 -3 + 10, 1, 32.9 +a4, 85.8 , 0 );
setMoveKey( spep_10 -3 + 12, 1, 37 +a4, 115.9 , 0 );
setMoveKey( spep_10 -3 + 14, 1, 40.9 +a4, 143.6 , 0 );
setMoveKey( spep_10 -3 + 16, 1, 44.4 +a4, 167.7 , 0 );
setMoveKey( spep_10 -3 + 18, 1, 47.3 +a4, 186.9 , 0 );
setMoveKey( spep_10 -3 + 20, 1, 49.3 +a4, 200 , 0 );
setMoveKey( spep_10 -3 + 22, 1, 50.1 +a4, 205.4 , 0 );
setMoveKey( spep_10 -3 + 24, 1, 49.3 +a4, 207.9 , 0 );
setMoveKey( spep_10 -3 + 26, 1, 47.5 +a4, 211.7 , 0 );
setMoveKey( spep_10 -3 + 28, 1, 45.3 +a4, 216 , 0 );
setMoveKey( spep_10 -3 + 30, 1, 42.8 +a4, 220.6 , 0 );
setMoveKey( spep_10 -3 + 32, 1, 40.2 +a4, 225.4 , 0 );
setMoveKey( spep_10 -3 + 34, 1, 37.5 +a4, 230.4 , 0 );
setMoveKey( spep_10 -3 + 36, 1, 34.7 +a4, 235.3 , 0 );
setMoveKey( spep_10 -3 + 38, 1, 31.9 +a4, 240.3 , 0 );
setMoveKey( spep_10 -3 + 40, 1, 29 +a4, 245.2 , 0 );
setMoveKey( spep_10 -3 + 42, 1, 26.1 +a4, 250.1 , 0 );
setMoveKey( spep_10 -3 + 44, 1, 23.1 +a4, 254.9 , 0 );
setMoveKey( spep_10 -3 + 46, 1, 20.2 +a4, 259.5 , 0 );
setMoveKey( spep_10 -3 + 48, 1, 17.3 +a4, 263.9 , 0 );
setMoveKey( spep_10 -3 + 50, 1, 14.5 +a4, 268.1 , 0 );
setMoveKey( spep_10 -3 + 52, 1, 11.8 +a4, 271.8 , 0 );
setMoveKey( spep_10 -3 + 54, 1, 9.2 +a4, 275 , 0 );
setMoveKey( spep_10 -3 + 56, 1, 6.9 +a4, 277.1 , 0 );
setMoveKey( spep_10 -3 + 58, 1, 5.2 +a4, 276.9 , 0 );
--setMoveKey( spep_10 -3 + 59, 1, 5.2 +a4, 276.9 , 0 );

setScaleKey( spep_10  + 0, 1, 1.98, 1.98 );
setScaleKey( spep_10  + 1, 1, 1.86, 1.86 );
setScaleKey( spep_10  + 2, 1, 1.74, 1.74 );
setScaleKey( spep_10 -3 + 6, 1, 1.68, 1.68 );
setScaleKey( spep_10 -3 + 8, 1, 1.56, 1.56 );
setScaleKey( spep_10 -3 + 10, 1, 1.44, 1.44 );
setScaleKey( spep_10 -3 + 12, 1, 1.32, 1.32 );
setScaleKey( spep_10 -3 + 14, 1, 1.26, 1.26 );
setScaleKey( spep_10 -3 + 16, 1, 1.14, 1.14 );
setScaleKey( spep_10 -3 + 18, 1, 1.02, 1.02 );
setScaleKey( spep_10 -3 + 20, 1, 0.90, 0.90 );
setScaleKey( spep_10 -3 + 22, 1, 0.84, 0.84 );
setScaleKey( spep_10 -3 + 24, 1, 0.78, 0.78 );
setScaleKey( spep_10 -3 + 26, 1, 0.78, 0.78 );
setScaleKey( spep_10 -3 + 28, 1, 0.72, 0.72 );
setScaleKey( spep_10 -3 + 30, 1, 0.72, 0.72 );
setScaleKey( spep_10 -3 + 32, 1, 0.66, 0.66 );
setScaleKey( spep_10 -3 + 34, 1, 0.66, 0.66 );
setScaleKey( spep_10 -3 + 36, 1, 0.60, 0.60 );
setScaleKey( spep_10 -3 + 38, 1, 0.60, 0.60 );
setScaleKey( spep_10 -3 + 40, 1, 0.54, 0.54 );
setScaleKey( spep_10 -3 + 42, 1, 0.54, 0.54 );
setScaleKey( spep_10 -3 + 44, 1, 0.48, 0.48 );
setScaleKey( spep_10 -3 + 46, 1, 0.48, 0.48 );
setScaleKey( spep_10 -3 + 48, 1, 0.42, 0.42 );
setScaleKey( spep_10 -3 + 50, 1, 0.42, 0.42 );
setScaleKey( spep_10 -3 + 52, 1, 0.36, 0.36 );
setScaleKey( spep_10 -3 + 54, 1, 0.36, 0.36 );
setScaleKey( spep_10 -3 + 56, 1, 0.30, 0.30 );
setScaleKey( spep_10 -3 + 58, 1, 0.30, 0.30 );
--setScaleKey( spep_10 -3 + 59, 1, 0.325, 0.325 );

setRotateKey( spep_10    + 0, 1, -21.6 );
setRotateKey( spep_10    + 1, 1, -19.6 );
setRotateKey( spep_10    + 2, 1, -17.5 );
setRotateKey( spep_10 -3 + 6, 1, -15.4 );
setRotateKey( spep_10 -3 + 8, 1, -13.3 );
setRotateKey( spep_10 -3 + 10, 1, -11.2 );
setRotateKey( spep_10 -3 + 12, 1, -9.1 );
setRotateKey( spep_10 -3 + 14, 1, -7 );
setRotateKey( spep_10 -3 + 16, 1, -4.9 );
setRotateKey( spep_10 -3 + 18, 1, -2.9 );
setRotateKey( spep_10 -3 + 20, 1, -0.8 );
setRotateKey( spep_10 -3 + 22, 1, 1.3 );
setRotateKey( spep_10 -3 + 24, 1, 1.9 );
setRotateKey( spep_10 -3 + 26, 1, 2.5 );
setRotateKey( spep_10 -3 + 28, 1, 3.1 );
setRotateKey( spep_10 -3 + 30, 1, 3.6 );
setRotateKey( spep_10 -3 + 32, 1, 4.2 );
setRotateKey( spep_10 -3 + 34, 1, 4.8 );
setRotateKey( spep_10 -3 + 36, 1, 5.4 );
setRotateKey( spep_10 -3 + 38, 1, 6 );
setRotateKey( spep_10 -3 + 40, 1, 6.5 );
setRotateKey( spep_10 -3 + 42, 1, 7.1 );
setRotateKey( spep_10 -3 + 44, 1, 7.7 );
setRotateKey( spep_10 -3 + 46, 1, 8.3 );
setRotateKey( spep_10 -3 + 48, 1, 8.8 );
setRotateKey( spep_10 -3 + 50, 1, 9.4 );
setRotateKey( spep_10 -3 + 52, 1, 10 );
setRotateKey( spep_10 -3 + 54, 1, 10.6 );
setRotateKey( spep_10 -3 + 56, 1, 11.1 );
setRotateKey( spep_10 -3 + 58, 1, 11.7 );
--setRotateKey( spep_10 -3 + 59, 1, 11.7 );

-- ** 音 ** --
--敵飛んでいく1
SE031 = playSe( spep_10 + 9, 1121,"",0.5 );
setSeVolumeByWorkId( spep_10 + 9, SE031, 79 );
stopSe( spep_10 +56 + 11, SE031, 16 );

--敵飛んでいく2
SE032 = playSe( spep_10 + 17, 1053,"",0.5 );
setSeVolumeByWorkId( spep_10 + 17, SE032, 87 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 58, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 56;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_11 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_11 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_11 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_f, 0 );
setEffRotateKey( spep_11 + 100, finish_f, 0 );
setEffAlphaKey( spep_11 + 0, finish_f, 255 );
setEffAlphaKey( spep_11 + 100, finish_f, 255 );

finish_b = entryEffect( spep_11 + 0, SP_17, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
setEffMoveKey( spep_11 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_11 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_11 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_b, 0 );
setEffRotateKey( spep_11 + 100, finish_b, 0 );
setEffAlphaKey( spep_11 + 0, finish_b, 255 );
setEffAlphaKey( spep_11 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_11 + 100, 1, 0 );
changeAnime( spep_11 + 0, 1, 107 );

setMoveKey( spep_11    + 0, 1, 36.2, 265.9 , 0 );
setMoveKey( spep_11    + 1, 1, 32.5, 228 , 0 );
setMoveKey( spep_11    + 2, 1, 27.7, 179.3 , 0 );
setMoveKey( spep_11 -3 + 6, 1, 21.9, 119.7 , 0 );
setMoveKey( spep_11 -3 + 8, 1, 15, 49.3 , 0 );
setMoveKey( spep_11 -3 + 10, 1, 7.1, -32 , 0 );
setMoveKey( spep_11 -3 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_11 -3 + 103, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_11    + 0, 1, 0.22, 0.22 );
setScaleKey( spep_11    + 1, 1, 0.35, 0.35 );
setScaleKey( spep_11    + 2, 1, 0.51, 0.51 );
setScaleKey( spep_11 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_11 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_11 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_11 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_11 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_11 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_11 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_11 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_11 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_11 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_11 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_11 -3 + 103, 1, 1.6, 1.6 );

setRotateKey( spep_11    + 0, 1, 0 );
setRotateKey( spep_11    + 1, 1, 105 );
setRotateKey( spep_11    + 2, 1, 240 );
setRotateKey( spep_11 -3 + 6, 1, 405 );
setRotateKey( spep_11 -3 + 8, 1, 600 );
setRotateKey( spep_11 -3 + 10, 1, 825 );
setRotateKey( spep_11 -3 + 12, 1, 1080 );
setRotateKey( spep_11 -3 + 103, 1, 1080 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_11 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_11 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_11 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_11 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_11 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_11 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_11 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_11 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_11 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_11 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_11 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_11 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_11 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_11 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_11 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_11 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_11 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_11 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_11 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_11 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_11 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_11 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_11 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_11 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_11 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_11 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_11 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_11 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_11 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_11 + 14, ctga, 14, 20 );

setEffMoveKey( spep_11 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_11 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_11 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_11 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_11 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_11 + 14, ctga, -10.9 );
setEffRotateKey( spep_11 + 15, ctga, -10.9 );
setEffRotateKey( spep_11 + 16, ctga, -14.9 );
setEffRotateKey( spep_11 + 17, ctga, -14.9 );
setEffRotateKey( spep_11 + 18, ctga, -10.9 );
setEffRotateKey( spep_11 + 19, ctga, -10.9 );
setEffRotateKey( spep_11 + 20, ctga, -14.9 );
setEffRotateKey( spep_11 + 21, ctga, -14.9 );
setEffRotateKey( spep_11 + 22, ctga, -10.9 );
setEffRotateKey( spep_11 + 23, ctga, -10.9 );
setEffRotateKey( spep_11 + 24, ctga, -14.9 );
setEffRotateKey( spep_11 + 25, ctga, -14.9 );
setEffRotateKey( spep_11 + 26, ctga, -10.9 );
setEffRotateKey( spep_11 + 27, ctga, -10.9 );
setEffRotateKey( spep_11 + 28, ctga, -14.9 );
setEffRotateKey( spep_11 + 100, ctga, -14.9 );

setEffAlphaKey( spep_11 + 14, ctga, 255 );
setEffAlphaKey( spep_11 + 100, ctga, 255 );

-- ** 音 ** --
--ガッ
playSe( spep_11 + 8, 1054 );
setSeVolume( spep_11 + 8, 1054, 126 );

-- ** 背景 ** --
entryFadeBg( spep_11 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_11 + 10 );
endPhase( spep_11 + 98 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- カットイン、指を指す(86F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 86, 0x100, -1, 0, 0, 0 );  --カットイン、指を指す(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 86, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 86, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 85, first_f, 255 );
setEffAlphaKey( spep_0 + 86, first_f, 0 );

spep_x = spep_0 + 0;
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
SE001 = playSe( spep_0 + 8, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 88, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 78, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;


------------------------------------------------------
-- 敵に向かってジャンプ(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
jump_f = entryEffectLife( spep_1 + 0, SP_02, 56, 0x100, -1, 0, 0, 0 );  --敵に向かってジャンプ_敵より手前(ef_002_front)
setEffMoveKey( spep_1 + 0, jump_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, jump_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, jump_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 56, jump_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jump_f, 0 );
setEffRotateKey( spep_1 + 56, jump_f, 0 );
setEffAlphaKey( spep_1 + 0, jump_f, 255 );
setEffAlphaKey( spep_1 -1 + 56, jump_f, 255 );
setEffAlphaKey( spep_1 + 56, jump_f, 0 );

jump_b = entryEffectLife( spep_1 + 0, SP_03, 56, 0x80, -1, 0, 0, 0 );  --敵に向かってジャンプ_敵より奥(ef_002_back)
setEffMoveKey( spep_1 + 0, jump_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, jump_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, jump_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 56, jump_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jump_b, 0 );
setEffRotateKey( spep_1 + 56, jump_b, 0 );
setEffAlphaKey( spep_1 + 0, jump_b, 255 );
setEffAlphaKey( spep_1 -1 + 56, jump_b, 255 );
setEffAlphaKey( spep_1 + 56, jump_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
--setDisp( spep_1 + 56, 1, 0 );
changeAnime( spep_1 + 0, 1, 0 );

a1 =0;
b1 =84;
setMoveKey( spep_1 + 0, 1, -246.1 -a1, -133.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -246.1 -a1, -133.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -236.2 -a1, -129.2 +b1 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -226.4 -a1, -124.8 +b1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -216.6 -a1, -120.4 +b1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -206.7 -a1, -115.9 +b1 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -196.9 -a1, -111.5 +b1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -187 -a1, -107.1 +b1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -177.2 -a1, -102.7 +b1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -167.4 -a1, -98.2 +b1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -157.4 -a1, -93.8 +b1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -147.6 -a1, -89.4 +b1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -137.8 -a1, -84.9 +b1 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -127.9 -a1, -80.5 +b1 , 0 );

s1 =1.2;
setScaleKey( spep_1 + 0, 1, 0.18 +s1, 0.18 +s1 );
setScaleKey( spep_1 -3 + 8, 1, 0.18 +s1, 0.18 +s1 );
setScaleKey( spep_1 -3 + 10, 1, 0.19 +s1, 0.19 +s1 );
setScaleKey( spep_1 -3 + 22, 1, 0.19 +s1, 0.19 +s1 );
setScaleKey( spep_1 -3 + 24, 1, 0.2 +s1, 0.2 +s1 );

setRotateKey( spep_1 + 0, 1, 0 );

-- ** 音 ** --
--とびかかる
SE002 = playSe( spep_1 + 8, 1117 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 58, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, -118.1 -a1, -76.1 +b1 , 0 );
    setMoveKey( SP_dodge + 2, 1, -108.2 -a1, -71.6 +b1 , 0 );
    setMoveKey( SP_dodge + 4, 1, -98.4 -a1, -67.2 +b1 , 0 );
    setMoveKey( SP_dodge + 6, 1, -88.6 -a1, -62.8 +b1 , 0 );
    setMoveKey( SP_dodge + 8, 1, -78.7 -a1, -58.3 +b1 , 0 );
    setMoveKey( SP_dodge + 10, 1, -68.9 -a1, -53.9 +b1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.2 +s1, 0.2 +s1 );
    setScaleKey( SP_dodge + 2, 1, 0.21 +s1, 0.21 +s1 );
    setScaleKey( SP_dodge + 10, 1, 0.21 +s1, 0.21 +s1 );

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

setMoveKey( spep_1 -3 + 34, 1, -118.1 -a1, -76.1 +b1 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -108.2 -a1, -71.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 38, 1, -98.4 -a1, -67.2 +b1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -88.6 -a1, -62.8 +b1 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -78.7 -a1, -58.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -68.9 -a1, -53.9 +b1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -59 -a1, -49.5 +b1 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -49.2 -a1, -45 +b1 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -39.3 -a1, -40.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -29.5 -a1, -36.2 +b1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -19.7 -a1, -31.8 +b1 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -9.8 -a1, -27.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 0.1 -a1, -22.9 +b1 , 0 );
--setMoveKey( spep_1 -3 + 59, 1, -0.1 +a1, -22.9 +b1 , 0 );


setScaleKey( spep_1 -3 + 36, 1, 0.2 +s1, 0.2 +s1 );
setScaleKey( spep_1 -3 + 38, 1, 0.21 +s1, 0.21 +s1 );
setScaleKey( spep_1 -3 + 50, 1, 0.21 +s1, 0.21 +s1 );
setScaleKey( spep_1 -3 + 52, 1, 0.22 +s1, 0.22 +s1 );
setScaleKey( spep_1 -3 + 58, 1, 0.22 +s1, 0.22 +s1 );


setRotateKey( spep_1 + 55, 1, 0 );

-- ** 音 ** --
stopSe( spep_1 + 34, SE002, 56 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;


------------------------------------------------------
-- 屁の文字が画面を負う(116F)
------------------------------------------------------
-- ** エフェクト等 ** --
skunk_f = entryEffectLife( spep_2 + 0, SP_04, 116, 0x100, -1, 0, 0, 0 );  --屁の文字が画面を負う_敵より手前(ef_003_front)
setEffMoveKey( spep_2 + 0, skunk_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, skunk_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, skunk_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 116, skunk_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, skunk_f, 0 );
setEffRotateKey( spep_2 + 116, skunk_f, 0 );
setEffAlphaKey( spep_2 + 0, skunk_f, 255 );
setEffAlphaKey( spep_2 -1 + 116, skunk_f, 255 );
setEffAlphaKey( spep_2 + 116, skunk_f, 0 );

skunk_b = entryEffectLife( spep_2 + 0, SP_05, 116, 0x80, -1, 0, 0, 0 );  --屁の文字が画面を負う_敵より奥(ef_003_back)
setEffMoveKey( spep_2 + 0, skunk_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, skunk_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, skunk_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 116, skunk_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, skunk_b, 0 );
setEffRotateKey( spep_2 + 116, skunk_b, 0 );
setEffAlphaKey( spep_2 + 0, skunk_b, 255 );
setEffAlphaKey( spep_2 -1 + 116, skunk_b, 255 );
setEffAlphaKey( spep_2 + 116, skunk_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 116, 1, 0 );
changeAnime( spep_2 + 0, 1, 1 );

b2=25;
setMoveKey( spep_2    + 0, 1, -369.5, -91.9 +b2 , 0 );
setMoveKey( spep_2    + 1, 1, -335.6, -88.8 +b2 , 0 );
setMoveKey( spep_2    + 2, 1, -301.6, -87.6 +b2 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -267.6, -86.5 +b2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -233.7, -78.4 +b2 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -199.8, -71.2 +b2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -199.4, -71 +b2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -198.9, -70.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -198.5, -70.8 +b2 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -198.1, -70.6 +b2 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -197.7, -70.5 +b2 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -197.3, -70.4 +b2 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -196.9, -70.2 +b2 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -196.4, -70.1 +b2 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -196, -69.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -195.6, -69.8 +b2 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -195.2, -69.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -194.8, -69.5 +b2 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -194.4, -69.4 +b2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -194, -69.3 +b2 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -193.5, -69.1 +b2 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -193.1, -69 +b2 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -192.7, -68.8 +b2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -192.3, -68.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -191.9, -68.6 +b2 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -191.5, -68.4 +b2 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -191, -68.3 +b2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -190.6, -68.2 +b2 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -190.2, -68 +b2 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -189.8, -67.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -189.4, -67.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -189, -67.6 +b2 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -188.5, -67.5 +b2 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -188.1, -67.3 +b2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -187.7, -67.2 +b2 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -187.3, -67.1 +b2 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -186.9, -66.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -186.5, -66.8 +b2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -186, -66.6 +b2 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -185.6, -66.5 +b2 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -185.2, -66.4 +b2 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -184.8, -66.2 +b2 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -184.4, -66.1 +b2 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -184, -66 +b2 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -183.6, -65.8 +b2 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -183.1, -65.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -182.7, -65.6 +b2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -182.3, -65.4 +b2 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -181.9, -65.3 +b2 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -181.5, -65.1 +b2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -181.1, -65 +b2 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -180.6, -64.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -180.2, -64.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -179.8, -64.6 +b2 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -179.4, -64.5 +b2 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -179, -64.3 +b2 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -178.6, -64.2 +b2 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -178.1, -64 +b2 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -177.7, -63.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -177.3, -63.8 +b2 , 0 );
setMoveKey( spep_2 -3 + 119, 1, -177.3, -63.8 +b2 , 0 );

s2=0.1;
setScaleKey( spep_2 + 0, 1, 2.604 +s2, 2.604 +s2 );
setScaleKey( spep_2 + 1, 1, 2.356 +s2, 2.356 +s2 );
setScaleKey( spep_2 + 2, 1, 2.17 +s2, 2.17 +s2 );
setScaleKey( spep_2 -3 + 6, 1, 1.922 +s2, 1.922 +s2 );
setScaleKey( spep_2 -3 + 8, 1, 1.736 +s2, 1.736 +s2 );
setScaleKey( spep_2 -3 + 10, 1, 1.488 +s2, 1.488 +s2 );
--setScaleKey( spep_2 -3 + 44, 1, 1.488, 1.488 );
setScaleKey( spep_2 -3 + 46, 1, 1.426 +s2, 1.426 +s2 );
--setScaleKey( spep_2 -3 + 86, 1, 1.426, 1.426 );
setScaleKey( spep_2 -3 + 88, 1, 1.364 +s2, 1.364 +s2 );
setScaleKey( spep_2 -3 + 118, 1, 1.314 +s2, 1.314 +s2 );
setScaleKey( spep_2 -3 + 119, 1, 1.314 +s2, 1.314 +s2 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 116, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 118, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 音 ** --
--浮く
SE003 = playSe( spep_2 + 0, 1186 );
stopSe( spep_2 + 28, SE003, 6 );

--おなら1
SE004 = playSe( spep_2 + 28, 1293 );
setSeVolumeByWorkId( spep_2 + 28, SE004, 107 );

--おなら2
SE005 = playSe( spep_2 + 56, 1294 );
stopSe( spep_2 + 76, SE005, 12 );

--おなら3
SE006 = playSe( spep_2 + 64, 1293 );
setSeVolumeByWorkId( spep_2 + 64, SE006, 114 );
setPitch( spep_2 + 64, SE006, 300 );
setTimeStretch( SE006, 1.2, 10, 1 );

--おなら4
SE007 = playSe( spep_2 + 88, 1293 );
setSeVolumeByWorkId( spep_2 + 88, SE007, 136 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;


------------------------------------------------------
-- 足のアップステップが崩れる(66F)
------------------------------------------------------
-- ** エフェクト等 ** --
step_f = entryEffectLife( spep_3 + 0, SP_06, 64, 0x100, -1, 0, 0, 0 );  --足のアップステップが崩れる(ef_004)
setEffMoveKey( spep_3 + 0, step_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 64, step_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, step_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 64, step_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, step_f, 0 );
setEffRotateKey( spep_3 + 64, step_f, 0 );
setEffAlphaKey( spep_3 + 0, step_f, 255 );
setEffAlphaKey( spep_3 -1 + 64, step_f, 255 );
setEffAlphaKey( spep_3 + 64, step_f, 0 );

-- ** 音 ** --
--足踏み1
SE008 = playSe( spep_3 + 4, 1108 );
setSeVolumeByWorkId( spep_3 + 4, SE008, 141 );

--足踏み2	
SE009 = playSe( spep_3 + 16, 1106 );
setSeVolumeByWorkId( spep_3 + 16, SE009, 127 );

--足踏み3
SE010 = playSe( spep_3 + 28, 1106 );

--足踏み4	
SE011 = playSe( spep_3 + 40, 1106 );
setSeVolumeByWorkId( spep_3 + 40, SE011, 150 );

--足踏み5
SE012 = playSe( spep_3 + 44, 1108 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 66, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 64;


------------------------------------------------------
-- カメラに向かって走ってくるベクウ(82F)
------------------------------------------------------
-- ** エフェクト等 ** --
run = entryEffectLife( spep_4 + 0, SP_07, 80, 0x100, -1, 0, 0, 0 );  --カメラに向かって走ってくるベクウ(ef_005)
setEffMoveKey( spep_4 + 0, run, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, run, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, run, -1.0, 1.0 );
setEffScaleKey( spep_4 + 80, run, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, run, 0 );
setEffRotateKey( spep_4 + 80, run, 0 );
setEffAlphaKey( spep_4 + 0, run, 255 );
setEffAlphaKey( spep_4 -1 + 80, run, 255 );
setEffAlphaKey( spep_4 + 80, run, 0 );

-- ** 音 ** --
--ガッツポーズ1
SE013 = playSe( spep_4 + 2, 31 );
stopSe( spep_4 + 34, SE013, 14 );
setPitch( spep_4 + 2, SE013, -400 );
setTimeStretch( SE013, 0.73, 10, 1 );

--ガッツポーズ2
SE014 = playSe( spep_4 + 4, 1012 );
setSeVolumeByWorkId( spep_4 + 7, SE014, 73 );

--走り出し1
SE015 = playSe( spep_4 + 54, 1111 );
setSeVolumeByWorkId( spep_4 + 54, SE015, 216 );
stopSe( spep_4 +67 + 5, SE015, 0 );

--走り出し2
SE016 = playSe( spep_4 + 54, 1182 );
setSeVolumeByWorkId( spep_4 + 54, SE016, 53 );
stopSe( spep_4 +67 + 3, SE016, 12 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 82, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 80;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_5 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen, -1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, -1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );

--走る1
SE018 = playSe( spep_5 + 90, 1111 );
setSeVolumeByWorkId( spep_5 + 90, SE018, 219 );
stopSe( spep_5 +94 + 14, SE018, 0 );

--走る2
SE019 = playSe( spep_5 + 90, 1182 );
setSeVolumeByWorkId( spep_5 + 90, SE019, 58 );
stopSe( spep_5 +94 + 14, SE019, 10 );

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;


------------------------------------------------------
-- 横に走るベクウ(58F)
------------------------------------------------------
-- ** エフェクト等 ** --
move = entryEffectLife( spep_6 + 0, SP_08, 58, 0x100, -1, 0, 0, 0 );  --横に走るベクウ(ef_006)
setEffMoveKey( spep_6 + 0, move, 0, 0 , 0 );
setEffMoveKey( spep_6 + 58, move, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, move, -1.0, 1.0 );
setEffScaleKey( spep_6 + 58, move, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, move, 0 );
setEffRotateKey( spep_6 + 58, move, 0 );
setEffAlphaKey( spep_6 + 0, move, 255 );
setEffAlphaKey( spep_6 -1 + 58, move, 255 );
setEffAlphaKey( spep_6 + 58, move, 0 );

-- ** 音 ** --
--走る3
SE020 = playSe( spep_6 + 16, 1111 );
setSeVolumeByWorkId( spep_6 + 16, SE020, 191 );
stopSe( spep_6 + 34, SE020, 0 );

--走る4
SE021 = playSe( spep_6 + 16, 1182 );
setSeVolumeByWorkId( spep_6 + 16, SE021, 55 );
stopSe( spep_6 + 34, SE021, 10 );

--走る5
SE022 = playSe( spep_6 + 40, 1111 );
setSeVolumeByWorkId( spep_6 + 40, SE022, 214 );
stopSe( spep_6 +45 + 13, SE022, 0 );

--走る6
SE023 = playSe( spep_6 + 40, 1182 );
setSeVolumeByWorkId( spep_6 + 40, SE023, 54 );
stopSe( spep_6 +45 + 13, SE023, 10 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 60, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 58;


------------------------------------------------------
-- 転んで地面に激突するベクウ(66F)
------------------------------------------------------
-- ** エフェクト等 ** --
clash = entryEffectLife( spep_7 + 0, SP_09, 66, 0x80, -1, 0, 0, 0 );  --転んで地面に激突するベクウ(ef_007)
setEffMoveKey( spep_7 + 0, clash, 0, 0 , 0 );
setEffMoveKey( spep_7 + 66, clash, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, clash, -1.0, 1.0 );
setEffScaleKey( spep_7 + 66, clash, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, clash, 0 );
setEffRotateKey( spep_7 + 66, clash, 0 );
setEffAlphaKey( spep_7 + 0, clash, 255 );
setEffAlphaKey( spep_7 -1 + 66, clash, 255 );
setEffAlphaKey( spep_7 + 66, clash, 0 );

-- ** 音 ** --
--飛び込む1
SE024 = playSe( spep_7 + 0, 37 );
setSeVolumeByWorkId( spep_7 + 0, SE024, 140 );

--滑り込み1
SE025 = playSe( spep_7 + 8, 1219 );
stopSe( spep_7 +66 +36 + 16, SE025, 28 );

--飛び込む2
SE026 = playSe( spep_7 + 14, 1190 );
setSeVolumeByWorkId( spep_7 + 14, SE026, 41 );

--滑り込み2
SE027 = playSe( spep_7 + 16, 1044 );
setSeVolumeByWorkId( spep_7 + 16, SE027, 47 );
stopSe( spep_7 +66 +36 + 18, SE027, 14 );
setPitch( spep_7 + 29, SE027, 300 );
setTimeStretch( SE027, 1.2, 10, 1 );

--飛び込む3
SE028 = playSe( spep_7 + 18, 1192 );
setSeVolumeByWorkId( spep_7 + 18, SE028, 200 );				

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 68, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 62;


------------------------------------------------------
-- 敵に向かって滑って進む(36F)
------------------------------------------------------
-- ** エフェクト等 ** --
slip_f = entryEffectLife( spep_8 + 0, SP_10, 36, 0x100, -1, 0, 0, 0 );  --敵に向かって滑って進む_敵より手前(ef_008_front)
setEffMoveKey( spep_8 + 0, slip_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 36, slip_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, slip_f, -1.0, 1.0 );
setEffScaleKey( spep_8 + 36, slip_f, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, slip_f, 0 );
setEffRotateKey( spep_8 + 36, slip_f, 0 );
setEffAlphaKey( spep_8 + 0, slip_f, 255 );
setEffAlphaKey( spep_8 -1 + 36, slip_f, 255 );
setEffAlphaKey( spep_8 + 36, slip_f, 0 );

slip_b = entryEffectLife( spep_8 + 0, SP_11, 36, 0x80, -1, 0, 0, 0 );  --敵に向かって滑って進む_敵より奥(ef_008_back)
setEffMoveKey( spep_8 + 0, slip_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 36, slip_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, slip_b, -1.0, 1.0 );
setEffScaleKey( spep_8 + 36, slip_b, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, slip_b, 0 );
setEffRotateKey( spep_8 + 36, slip_b, 0 );
setEffAlphaKey( spep_8 + 0, slip_b, 255 );
setEffAlphaKey( spep_8 -1 + 36, slip_b, 255 );
setEffAlphaKey( spep_8 + 36, slip_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
--setDisp( spep_8 + 36, 1, 0 );
changeAnime( spep_8 + 0, 1, 0 );

b3=20;
setMoveKey( spep_8    + 0, 1, -234, -21.5 +b3 , 0 );
setMoveKey( spep_8    + 2, 1, -234, -13.5 +b3 , 0 );
setMoveKey( spep_8    + 4, 1, -234, -29.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 6, 1, -226, -21.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 8, 1, -242, -21.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 10, 1, -234, -13.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 12, 1, -234, -29.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 14, 1, -226, -21.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 16, 1, -242, -21.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 18, 1, -234, -13.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 20, 1, -234, -29.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 22, 1, -226, -21.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 24, 1, -242, -21.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 26, 1, -234, -17.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 28, 1, -234, -25.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 30, 1, -230, -21.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 32, 1, -238, -21.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 34, 1, -234, -17.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 36, 1, -234, -25.5 +b3 , 0 );
setMoveKey( spep_8 -3 + 38, 1, -230, -21.5 +b3 , 0 );
--setMoveKey( spep_8 -3 + 39, 1, 230, -21.5 +b3 , 0 );

setScaleKey( spep_8 + 0, 1, 0.87, 0.87 );
setScaleKey( spep_8 -3 + 38, 1, 0.87, 0.87 );
--setScaleKey( spep_8 -3 + 39, 1, 0.87, 0.87 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8 -3 + 38, 1, 0 );
--setRotateKey( spep_8 -3 + 39, 1, 0 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 38, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 36;


------------------------------------------------------
-- 敵に当たる手のアップ(36F)
------------------------------------------------------
-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_9 + 0, SP_12, 36, 0x100, -1, 0, 0, 0 );  --敵に当たる手のアップ_敵より手前(ef_009_front)
setEffMoveKey( spep_9 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 36, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, attack_f, -1.0, 1.0 );
setEffScaleKey( spep_9 + 36, attack_f, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, attack_f, 0 );
setEffRotateKey( spep_9 + 36, attack_f, 0 );
setEffAlphaKey( spep_9 + 0, attack_f, 255 );
setEffAlphaKey( spep_9 -1 + 36, attack_f, 255 );
setEffAlphaKey( spep_9 + 36, attack_f, 0 );

attack_b = entryEffectLife( spep_9 + 0, SP_13, 36, 0x80, -1, 0, 0, 0 );  --敵に当たる手のアップ_敵より奥(ef_009_back)
setEffMoveKey( spep_9 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 36, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, attack_b, -1.0, 1.0 );
setEffScaleKey( spep_9 + 36, attack_b, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, attack_b, 0 );
setEffRotateKey( spep_9 + 36, attack_b, 0 );
setEffAlphaKey( spep_9 + 0, attack_b, 255 );
setEffAlphaKey( spep_9 -1 + 36, attack_b, 255 );
setEffAlphaKey( spep_9 + 36, attack_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_9 + 0, 1, 1 );
--setDisp( spep_9 + 36, 1, 0 );
changeAnime( spep_9 + 0, 1, 0 );
changeAnime( spep_9 -3 + 14, 1, 8 );

a3=517;
b3=220;
c3=180;
setMoveKey( spep_9    + 0, 1, -128.1, -276.1 +b3, 0 );
setMoveKey( spep_9 -3 + 13, 1, -128.1, -276.1 +b3 , 0 );
setMoveKey( spep_9 -3 + 14, 1, 424.5 -a3, -125.4 +c3 , 0 );
setMoveKey( spep_9 -3 + 16, 1, 424.5 -a3, -164.6 +c3 , 0 );
setMoveKey( spep_9 -3 + 18, 1, 424.5 -a3, -4.8 +c3 , 0 );
setMoveKey( spep_9 -3 + 20, 1, 452.5 -a3, -216.3 +c3 , 0 );
setMoveKey( spep_9 -3 + 22, 1, 468.3 -a3, -125.4 +c3 , 0 );
setMoveKey( spep_9 -3 + 24, 1, 331.9 -a3, -125.4 +c3 , 0 );
setMoveKey( spep_9 -3 + 26, 1, 402.6 -a3, -58.8 +c3 , 0 );
setMoveKey( spep_9 -3 + 28, 1, 397.5 -a3, -174 +c3 , 0 );
setMoveKey( spep_9 -3 + 30, 1, 392.4 -a3, -107.5 +c3 , 0 );
setMoveKey( spep_9 -3 + 32, 1, 387.3 -a3, -101.5 +c3 , 0 );
setMoveKey( spep_9 -3 + 34, 1, 382.2 -a3, -95.5 +c3 , 0 );
setMoveKey( spep_9 -3 + 36, 1, 377.2 -a3, -89.6 +c3 , 0 );
setMoveKey( spep_9 -3 + 38, 1, 372.1 -a3, -83.6 +c3 , 0 );
--setMoveKey( spep_9 -3 + 39, 1, -372.1 +a3, -83.6 +c3 , 0 );

s3=1;
setScaleKey( spep_9    + 0, 1, 14.82, 14.82 );
setScaleKey( spep_9 -3 + 13, 1, 14.82, 14.82 );
setScaleKey( spep_9 -3 + 14, 1, 14 -s3, 14 -s3 );
setScaleKey( spep_9 -3 + 24, 1, 14 -s3, 14 -s3 );
setScaleKey( spep_9 -3 + 26, 1, 13.64 -s3, 13.64 -s3 );
setScaleKey( spep_9 -3 + 28, 1, 13.34 -s3, 13.34 -s3 );
setScaleKey( spep_9 -3 + 30, 1, 13.04 -s3, 13.04 -s3 );
setScaleKey( spep_9 -3 + 32, 1, 12.74 -s3, 12.74 -s3 );
setScaleKey( spep_9 -3 + 34, 1, 12.38 -s3, 12.38 -s3 );
setScaleKey( spep_9 -3 + 36, 1, 12.08 -s3, 12.08 -s3 );
setScaleKey( spep_9 -3 + 38, 1, 11.78 -s3, 11.78 -s3 );
--setScaleKey( spep_9 -3 + 39, 1, 11.78 -s3, 11.78 -s3 );

setRotateKey( spep_9 -3 + 0, 1, 0 );
setRotateKey( spep_9 -3 + 38, 1, 0 );

-- ** 音 ** --
--パンチ1
SE029 = playSe( spep_9 + 11, 1110 );
setSeVolumeByWorkId( spep_9 + 11, SE029, 44 );

--パンチ2
SE030 = playSe( spep_9 + 11, 1187 );
setSeVolumeByWorkId( spep_9 + 11, SE030, 74 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 38, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 36;


------------------------------------------------------
-- 飛んでいく敵(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
flye_f = entryEffectLife( spep_10 + 0, SP_14, 56, 0x100, -1, 0, 0, 0 );  --飛んでいく敵_敵より手前(ef_010_front)
setEffMoveKey( spep_10 + 0, flye_f, 0, 0 , 0 );
setEffMoveKey( spep_10 + 56, flye_f, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, flye_f, -1.0, 1.0 );
setEffScaleKey( spep_10 + 56, flye_f, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0, flye_f, 0 );
setEffRotateKey( spep_10 + 56, flye_f, 0 );
setEffAlphaKey( spep_10 + 0, flye_f, 255 );
setEffAlphaKey( spep_10 -1 + 56, flye_f, 255 );
setEffAlphaKey( spep_10 + 56, flye_f, 0 );

flye_b = entryEffectLife( spep_10 + 0, SP_15, 56, 0x80, -1, 0, 0, 0 );  --飛んでいく敵_敵より奥(ef_010_back)
setEffMoveKey( spep_10 + 0, flye_b, 0, 0 , 0 );
setEffMoveKey( spep_10 + 56, flye_b, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, flye_b, -1.0, 1.0 );
setEffScaleKey( spep_10 + 56, flye_b, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0, flye_b, 0 );
setEffRotateKey( spep_10 + 56, flye_b, 0 );
setEffAlphaKey( spep_10 + 0, flye_b, 255 );
setEffAlphaKey( spep_10 -1 + 56, flye_b, 255 );
setEffAlphaKey( spep_10 + 56, flye_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_10 + 0, 1, 1 );--
--setDisp( spep_10 + 56, 1, 0 );--
changeAnime( spep_10 + 0, 1, 5 );

a4=10;
setMoveKey( spep_10    + 0, 1, -21.9 -a4, -37.5 , 0 );
setMoveKey( spep_10    + 1, 1, -20.9 -a4, -26 , 0 );
setMoveKey( spep_10    + 2, 1, -22.3 -a4, -3.7 , 0 );
setMoveKey( spep_10 -3 + 6, 1, -25.2 -a4, 24.2 , 0 );
setMoveKey( spep_10 -3 + 8, 1, -28.8 -a4, 54.7 , 0 );
setMoveKey( spep_10 -3 + 10, 1, -32.9 -a4, 85.8 , 0 );
setMoveKey( spep_10 -3 + 12, 1, -37 -a4, 115.9 , 0 );
setMoveKey( spep_10 -3 + 14, 1, -40.9 -a4, 143.6 , 0 );
setMoveKey( spep_10 -3 + 16, 1, -44.4 -a4, 167.7 , 0 );
setMoveKey( spep_10 -3 + 18, 1, -47.3 -a4, 186.9 , 0 );
setMoveKey( spep_10 -3 + 20, 1, -49.3 -a4, 200 , 0 );
setMoveKey( spep_10 -3 + 22, 1, -50.1 -a4, 205.4 , 0 );
setMoveKey( spep_10 -3 + 24, 1, -49.3 -a4, 207.9 , 0 );
setMoveKey( spep_10 -3 + 26, 1, -47.5 -a4, 211.7 , 0 );
setMoveKey( spep_10 -3 + 28, 1, -45.3 -a4, 216 , 0 );
setMoveKey( spep_10 -3 + 30, 1, -42.8 -a4, 220.6 , 0 );
setMoveKey( spep_10 -3 + 32, 1, -40.2 -a4, 225.4 , 0 );
setMoveKey( spep_10 -3 + 34, 1, -37.5 -a4, 230.4 , 0 );
setMoveKey( spep_10 -3 + 36, 1, -34.7 -a4, 235.3 , 0 );
setMoveKey( spep_10 -3 + 38, 1, -31.9 -a4, 240.3 , 0 );
setMoveKey( spep_10 -3 + 40, 1, -29 -a4, 245.2 , 0 );
setMoveKey( spep_10 -3 + 42, 1, -26.1 -a4, 250.1 , 0 );
setMoveKey( spep_10 -3 + 44, 1, -23.1 -a4, 254.9 , 0 );
setMoveKey( spep_10 -3 + 46, 1, -20.2 -a4, 259.5 , 0 );
setMoveKey( spep_10 -3 + 48, 1, -17.3 -a4, 263.9 , 0 );
setMoveKey( spep_10 -3 + 50, 1, -14.5 -a4, 268.1 , 0 );
setMoveKey( spep_10 -3 + 52, 1, -11.8 -a4, 271.8 , 0 );
setMoveKey( spep_10 -3 + 54, 1, -9.2 -a4, 275 , 0 );
setMoveKey( spep_10 -3 + 56, 1, -6.9 -a4, 277.1 , 0 );
setMoveKey( spep_10 -3 + 58, 1, -5.2 -a4, 276.9 , 0 );
--setMoveKey( spep_10 -3 + 59, 1, 5.2 -a4, 276.9 , 0 );

setScaleKey( spep_10  + 0, 1, 1.98, 1.98 );
setScaleKey( spep_10  + 1, 1, 1.86, 1.86 );
setScaleKey( spep_10  + 2, 1, 1.74, 1.74 );
setScaleKey( spep_10 -3 + 6, 1, 1.68, 1.68 );
setScaleKey( spep_10 -3 + 8, 1, 1.56, 1.56 );
setScaleKey( spep_10 -3 + 10, 1, 1.44, 1.44 );
setScaleKey( spep_10 -3 + 12, 1, 1.32, 1.32 );
setScaleKey( spep_10 -3 + 14, 1, 1.26, 1.26 );
setScaleKey( spep_10 -3 + 16, 1, 1.14, 1.14 );
setScaleKey( spep_10 -3 + 18, 1, 1.02, 1.02 );
setScaleKey( spep_10 -3 + 20, 1, 0.90, 0.90 );
setScaleKey( spep_10 -3 + 22, 1, 0.84, 0.84 );
setScaleKey( spep_10 -3 + 24, 1, 0.78, 0.78 );
setScaleKey( spep_10 -3 + 26, 1, 0.78, 0.78 );
setScaleKey( spep_10 -3 + 28, 1, 0.72, 0.72 );
setScaleKey( spep_10 -3 + 30, 1, 0.72, 0.72 );
setScaleKey( spep_10 -3 + 32, 1, 0.66, 0.66 );
setScaleKey( spep_10 -3 + 34, 1, 0.66, 0.66 );
setScaleKey( spep_10 -3 + 36, 1, 0.60, 0.60 );
setScaleKey( spep_10 -3 + 38, 1, 0.60, 0.60 );
setScaleKey( spep_10 -3 + 40, 1, 0.54, 0.54 );
setScaleKey( spep_10 -3 + 42, 1, 0.54, 0.54 );
setScaleKey( spep_10 -3 + 44, 1, 0.48, 0.48 );
setScaleKey( spep_10 -3 + 46, 1, 0.48, 0.48 );
setScaleKey( spep_10 -3 + 48, 1, 0.42, 0.42 );
setScaleKey( spep_10 -3 + 50, 1, 0.42, 0.42 );
setScaleKey( spep_10 -3 + 52, 1, 0.36, 0.36 );
setScaleKey( spep_10 -3 + 54, 1, 0.36, 0.36 );
setScaleKey( spep_10 -3 + 56, 1, 0.30, 0.30 );
setScaleKey( spep_10 -3 + 58, 1, 0.30, 0.30 );
--setScaleKey( spep_10 -3 + 59, 1, 0.325, 0.325 );

setRotateKey( spep_10    + 0, 1, 21.6 );
setRotateKey( spep_10    + 1, 1, 19.6 );
setRotateKey( spep_10    + 2, 1, 17.5 );
setRotateKey( spep_10 -3 + 6, 1, 15.4 );
setRotateKey( spep_10 -3 + 8, 1, 13.3 );
setRotateKey( spep_10 -3 + 10, 1, 11.2 );
setRotateKey( spep_10 -3 + 12, 1, 9.1 );
setRotateKey( spep_10 -3 + 14, 1, 7 );
setRotateKey( spep_10 -3 + 16, 1, 4.9 );
setRotateKey( spep_10 -3 + 18, 1, 2.9 );
setRotateKey( spep_10 -3 + 20, 1, 0.8 );
setRotateKey( spep_10 -3 + 22, 1, -1.3 );
setRotateKey( spep_10 -3 + 24, 1, -1.9 );
setRotateKey( spep_10 -3 + 26, 1, -2.5 );
setRotateKey( spep_10 -3 + 28, 1, -3.1 );
setRotateKey( spep_10 -3 + 30, 1, -3.6 );
setRotateKey( spep_10 -3 + 32, 1, -4.2 );
setRotateKey( spep_10 -3 + 34, 1, -4.8 );
setRotateKey( spep_10 -3 + 36, 1, -5.4 );
setRotateKey( spep_10 -3 + 38, 1, -6 );
setRotateKey( spep_10 -3 + 40, 1, -6.5 );
setRotateKey( spep_10 -3 + 42, 1, -7.1 );
setRotateKey( spep_10 -3 + 44, 1, -7.7 );
setRotateKey( spep_10 -3 + 46, 1, -8.3 );
setRotateKey( spep_10 -3 + 48, 1, -8.8 );
setRotateKey( spep_10 -3 + 50, 1, -9.4 );
setRotateKey( spep_10 -3 + 52, 1, -10 );
setRotateKey( spep_10 -3 + 54, 1, -10.6 );
setRotateKey( spep_10 -3 + 56, 1, -11.1 );
setRotateKey( spep_10 -3 + 58, 1, -11.7 );
--setRotateKey( spep_10 -3 + 59, 1, 11.7 );

-- ** 音 ** --
--敵飛んでいく1
SE031 = playSe( spep_10 + 9, 1121,"",0.5 );
setSeVolumeByWorkId( spep_10 + 9, SE031, 79 );
stopSe( spep_10 +56 + 11, SE031, 16 );

--敵飛んでいく2
SE032 = playSe( spep_10 + 17, 1053,"",0.5 );
setSeVolumeByWorkId( spep_10 + 17, SE032, 87 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 58, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 56;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_11 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_11 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_11 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_11 + 100, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_f, 0 );
setEffRotateKey( spep_11 + 100, finish_f, 0 );
setEffAlphaKey( spep_11 + 0, finish_f, 255 );
setEffAlphaKey( spep_11 + 100, finish_f, 255 );

finish_b = entryEffect( spep_11 + 0, SP_17, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
setEffMoveKey( spep_11 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_11 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_11 + 100, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_b, 0 );
setEffRotateKey( spep_11 + 100, finish_b, 0 );
setEffAlphaKey( spep_11 + 0, finish_b, 255 );
setEffAlphaKey( spep_11 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_11 + 100, 1, 0 );
changeAnime( spep_11 + 0, 1, 7 );

setMoveKey( spep_11    + 0, 1, -36.2, 265.9 , 0 );
setMoveKey( spep_11    + 1, 1, -32.5, 228 , 0 );
setMoveKey( spep_11    + 2, 1, -27.7, 179.3 , 0 );
setMoveKey( spep_11 -3 + 6, 1, -21.9, 119.7 , 0 );
setMoveKey( spep_11 -3 + 8, 1, -15, 49.3 , 0 );
setMoveKey( spep_11 -3 + 10, 1, -7.1, -32 , 0 );
setMoveKey( spep_11 -3 + 12, 1, 1.9, -124.1 , 0 );
setMoveKey( spep_11 -3 + 103, 1, 1.9, -124.1 , 0 );

setScaleKey( spep_11    + 0, 1, 0.22, 0.22 );
setScaleKey( spep_11    + 1, 1, 0.35, 0.35 );
setScaleKey( spep_11    + 2, 1, 0.51, 0.51 );
setScaleKey( spep_11 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_11 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_11 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_11 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_11 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_11 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_11 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_11 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_11 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_11 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_11 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_11 -3 + 103, 1, 1.6, 1.6 );

setRotateKey( spep_11    + 0, 1, 0 );
setRotateKey( spep_11    + 1, 1, -105 );
setRotateKey( spep_11    + 2, 1, -240 );
setRotateKey( spep_11 -3 + 6, 1, -405 );
setRotateKey( spep_11 -3 + 8, 1, -600 );
setRotateKey( spep_11 -3 + 10, 1, -825 );
setRotateKey( spep_11 -3 + 12, 1, -1080 );
setRotateKey( spep_11 -3 + 103, 1, -1080 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_11 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_11 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_11 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_11 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_11 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_11 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_11 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_11 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_11 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_11 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_11 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_11 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_11 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_11 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_11 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_11 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_11 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_11 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_11 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_11 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_11 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_11 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_11 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_11 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_11 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_11 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_11 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_11 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_11 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_11 + 14, ctga, 14, 20 );

setEffMoveKey( spep_11 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_11 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_11 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_11 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_11 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_11 + 14, ctga, -10.9 );
setEffRotateKey( spep_11 + 15, ctga, -10.9 );
setEffRotateKey( spep_11 + 16, ctga, -14.9 );
setEffRotateKey( spep_11 + 17, ctga, -14.9 );
setEffRotateKey( spep_11 + 18, ctga, -10.9 );
setEffRotateKey( spep_11 + 19, ctga, -10.9 );
setEffRotateKey( spep_11 + 20, ctga, -14.9 );
setEffRotateKey( spep_11 + 21, ctga, -14.9 );
setEffRotateKey( spep_11 + 22, ctga, -10.9 );
setEffRotateKey( spep_11 + 23, ctga, -10.9 );
setEffRotateKey( spep_11 + 24, ctga, -14.9 );
setEffRotateKey( spep_11 + 25, ctga, -14.9 );
setEffRotateKey( spep_11 + 26, ctga, -10.9 );
setEffRotateKey( spep_11 + 27, ctga, -10.9 );
setEffRotateKey( spep_11 + 28, ctga, -14.9 );
setEffRotateKey( spep_11 + 100, ctga, -14.9 );

setEffAlphaKey( spep_11 + 14, ctga, 255 );
setEffAlphaKey( spep_11 + 100, ctga, 255 );

-- ** 音 ** --
--ガッ
playSe( spep_11 + 8, 1054 );
setSeVolume( spep_11 + 8, 1054, 126 );

-- ** 背景 ** --
entryFadeBg( spep_11 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_11 + 10 );
endPhase( spep_11 + 98 );

end