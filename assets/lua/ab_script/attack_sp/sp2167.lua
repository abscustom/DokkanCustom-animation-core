--1021870:クリリン_かめはめ波_sp2167
--sp_effect_a1_00282

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
SP_01 = 156966;		--ef_001
SP_02 = 156967;		--ef_002_front
SP_03 = 156968;		--ef_002_back
SP_04 = 156971;		--ef_003_front
SP_05 = 156972;		--ef_003_back
SP_06 = 156975;		--ef_004_front
SP_07 = 156976;		--ef_004_back
SP_08 = 156977;		--ef_005_front
SP_09 = 156978;		--ef_005_back
SP_10 = 156981;		--ef_006
SP_11 = 156983;		--ef_007_front
SP_12 = 156984;		--ef_007_back
SP_13 = 156987;		--ef_008
SP_14 = 156988;		--ef_009_front
SP_15 = 156989;		--ef_009_back

--敵側
SP_02r = 156969;	--ef_002_r_front
SP_03r = 156970;	--ef_002_r_back
SP_04r = 156973;	--ef_003_r_front
SP_05r = 156974;	--ef_003_r_back
SP_08r = 156979;	--ef_005_r_front
SP_09r = 156980;	--ef_005_r_back
SP_10r = 156982;	--ef_006_r
SP_11r = 156985;	--ef_007_r_front
SP_12r = 156986;	--ef_007_r_back

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
-- 開幕(86F)
------------------------------------------------------
spep_0 = 0;

first_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --開幕  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 86, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 86, first_f, 255 );

-- ** 音 ** --
--空中ダッシュ
SE001 = playSe( spep_0 + 0, 1182 );

--空中ダッシュ
SE002 = playSe( spep_0 + 0, 1314 );
stopSe( spep_0 + 84, SE002, 4 );
setPitch( spep_0 + 0, SE002, -500 );
setTimeStretch( SE002, 0.67, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 12 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
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
SE003 = playSe( spep_0 + 10, 1018 );

--クリリンキック
SE004 = playSe( spep_0 + 76, 1004 );

--クリリンキック
SE005 = playSe( spep_0 +84, 1187 );
setSeVolumeByWorkId( spep_0 +84, SE005, 78 );
stopSe( spep_0 +86 + 16, SE005, 44 );

--クリリンキック
SE006 = playSe( spep_0 +84, 1010 );
setSeVolumeByWorkId( spep_0 +84, SE006, 88 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;


------------------------------------------------------
-- キック(56F)
------------------------------------------------------
--spep_1 = 0;
-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_1 + 0, SP_02, 56, 0x100, -1, 0, 0, 0 );  --キック  ef_002_front
setEffMoveKey( spep_1 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 56, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 55, kick_f, 255 );
setEffAlphaKey( spep_1 + 56, kick_f, 0 );

kick_b = entryEffectLife( spep_1 + 0, SP_03, 56, 0x80, -1, 0, 0, 0 );  --キック  ef_002_back
setEffMoveKey( spep_1 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 56, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 55, kick_b, 255 );
setEffAlphaKey( spep_1 + 56, kick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 10, 1, 1 );
--setDisp( spep_1 -3 + 59, 1, 0 );
changeAnime( spep_1 -3 + 10, 1, 106 );

a1=20;
b1=80;
setMoveKey( spep_1 -3 + 10, 1, 76.3 + a1, -38.9 +b1 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 80.7 + a1, -44.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 83.5 + a1, -20 +b1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 89.5 + a1, -34.1 +b1 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 94.8 + a1, -24.2 +b1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 92.9 + a1, -21.7 +b1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 91.1 + a1, -19.2 +b1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 90.9 + a1, -17.2 +b1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 90.7 + a1, -15.2 +b1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 90.5 + a1, -13.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 90.7 + a1, -11.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 91 + a1, -9.4 +b1 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 91.2 + a1, -7.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 91.4 + a1, -5.7 +b1 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 91.7 + a1, -3.7 +b1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 91.9 + a1, -1.9 +b1 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 92.1 + a1, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 92.4 + a1, 1.9 +b1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 92.6 + a1, 3.8 +b1 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 92.9 + a1, 5.7 +b1 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 93.1 + a1, 7.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 93.3 + a1, 9.4 +b1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 93.6 + a1, 11.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 93.8 + a1, 13.2 +b1 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 94 + a1, 15.1 +b1 , 0 );
--setMoveKey( spep_1 -3 + 59, 1, 94 + a1, 15.1 +b1 , 0 );

s1=0.2;
setScaleKey( spep_1 -3 + 10, 1, 2.226 +s1, 2.226 +s1 );
setScaleKey( spep_1 -3 + 12, 1, 2.072 +s1, 2.072 +s1 );
setScaleKey( spep_1 -3 + 14, 1, 1.904 +s1, 1.904 +s1 );
setScaleKey( spep_1 -3 + 16, 1, 1.834 +s1, 1.834 +s1 );
setScaleKey( spep_1 -3 + 18, 1, 1.778 +s1, 1.778 +s1 );
setScaleKey( spep_1 -3 + 20, 1, 1.736 +s1, 1.736 +s1 );
setScaleKey( spep_1 -3 + 22, 1, 1.694 +s1, 1.694 +s1 );
setScaleKey( spep_1 -3 + 24, 1, 1.68 +s1, 1.68 +s1 );
setScaleKey( spep_1 -3 + 26, 1, 1.68 +s1, 1.68 +s1 );
setScaleKey( spep_1 -3 + 28, 1, 1.666 +s1, 1.666 +s1 );
setScaleKey( spep_1 -3 + 46, 1, 1.666 +s1, 1.666 +s1 );
setScaleKey( spep_1 -3 + 48, 1, 1.652 +s1, 1.652 +s1 );
setScaleKey( spep_1 -3 + 58, 1, 1.652 +s1, 1.652 +s1 );
--setScaleKey( spep_1 -3 + 59, 1, 1.652, 1.652 );

setRotateKey( spep_1 -3 + 10, 1, -11.1 );
setRotateKey( spep_1 -3 + 12, 1, -11.2 );
setRotateKey( spep_1 -3 + 16, 1, -11.2 );
setRotateKey( spep_1 -3 + 18, 1, -10.7 );
setRotateKey( spep_1 -3 + 20, 1, -10.2 );
setRotateKey( spep_1 -3 + 22, 1, -9.6 );
setRotateKey( spep_1 -3 + 24, 1, -9.1 );
setRotateKey( spep_1 -3 + 26, 1, -8.6 );
setRotateKey( spep_1 -3 + 28, 1, -8 );
setRotateKey( spep_1 -3 + 30, 1, -7.5 );
setRotateKey( spep_1 -3 + 32, 1, -7 );
setRotateKey( spep_1 -3 + 34, 1, -6.4 );
setRotateKey( spep_1 -3 + 36, 1, -5.9 );
setRotateKey( spep_1 -3 + 38, 1, -5.4 );
setRotateKey( spep_1 -3 + 40, 1, -4.8 );
setRotateKey( spep_1 -3 + 42, 1, -4.3 );
setRotateKey( spep_1 -3 + 44, 1, -3.7 );
setRotateKey( spep_1 -3 + 46, 1, -3.2 );
setRotateKey( spep_1 -3 + 48, 1, -2.7 );
setRotateKey( spep_1 -3 + 50, 1, -2.1 );
setRotateKey( spep_1 -3 + 52, 1, -1.6 );
setRotateKey( spep_1 -3 + 54, 1, -1.1 );
setRotateKey( spep_1 -3 + 56, 1, -0.5 );
setRotateKey( spep_1 -3 + 58, 1, 0 );
--setRotateKey( spep_1 -3 + 59, 1, 0 );

-- ** 音 ** --
--クリリンキック
SE007 = playSe( spep_1 + 4, 1110 );
setSeVolumeByWorkId( spep_1 + 4, SE007, 32 );
setSeVolumeByWorkId( spep_1 + 8, SE007, 64 );
setSeVolumeByWorkId( spep_1 + 12, SE007, 96 );
setSeVolumeByWorkId( spep_1 + 16, SE007, 128 );
setSeVolumeByWorkId( spep_1 + 20, SE007, 158 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;


------------------------------------------------------
-- ブロー(66F)
------------------------------------------------------
--spep_2 = 0;
-- ** エフェクト等 ** --
blow_f = entryEffectLife( spep_2 + 0, SP_04, 66 -2, 0x100, -1, 0, 0, 0 );  --ブロー　前面  ef_003_front
setEffMoveKey( spep_2 + 0, blow_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66 -2, blow_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, blow_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66 -2, blow_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, blow_f, 0 );
setEffRotateKey( spep_2 + 66 -2, blow_f, 0 );
setEffAlphaKey( spep_2 + 0, blow_f, 255 );
setEffAlphaKey( spep_2 + 65 -2, blow_f, 255 );
setEffAlphaKey( spep_2 + 66 -2, blow_f, 0 );

blow_b = entryEffectLife( spep_2 + 0, SP_05, 66 -2, 0x80, -1, 0, 0, 0 );  --ブロー　後面  ef_003_front
setEffMoveKey( spep_2 + 0, blow_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66 -2, blow_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, blow_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66 -2, blow_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, blow_b, 0 );
setEffRotateKey( spep_2 + 66 -2, blow_b, 0 );
setEffAlphaKey( spep_2 + 0, blow_b, 255 );
setEffAlphaKey( spep_2 + 65 -2, blow_b, 255 );
setEffAlphaKey( spep_2 + 66 -2, blow_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_2 + 0, 1, 1 );
--setDisp( spep_2 + 66, 1, 0 );
changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2 -3 + 26, 1, 108 );

a2=100;
b2=500;
setMoveKey( spep_2 + 0, 1, 1226.8 +a2, -400.5 +b2 , 0 );
setMoveKey( spep_2 + 1, 1, 1188.9 +a2, -408.6 +b2 , 0 );
setMoveKey( spep_2 + 2, 1, 1150.9 +a2, -416.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 1113 +a2, -424.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 1075 +a2, -432.8 +b2 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 1037.1 +a2, -440.8 +b2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 999.2 +a2, -448.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 961.2 +a2, -456.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 923.3 +a2, -465 +b2 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 771.5 +a2, -497.2 +b2 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 619.7 +a2, -529.5 +b2 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 316.2 +a2, -593.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 25, 1, 12.7 +a2, -658.4 +b2 , 0 );

a3=500;
b3=200;
setMoveKey( spep_2 -3 + 26, 1, -332.6 +a3, -213.1 +b3 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -327.1 +a3, -210.5 +b3 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -321.7 +a3, -207.8 +b3 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -316.2 +a3, -205.2 +b3 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -310.8 +a3, -202.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -308.9 +a3, -201.7 +b3 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -307 +a3, -200.8 +b3 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -305 +a3, -199.9 +b3 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -303.1 +a3, -198.9 +b3 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -301.2 +a3, -198 +b3 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -299.3 +a3, -197.1 +b3 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -297.4 +a3, -196.2 +b3 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -296.3 +a3, -195.7 +b3 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -295.2 +a3, -195.1 +b3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -294 +a3, -194.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -292.9 +a3, -194 +b3 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -291.8 +a3, -193.5 +b3 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -291 +a3, -193.1 +b3 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -290.3 +a3, -192.8 +b3 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -289.5 +a3, -192.4 +b3 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -288.8 +a3, -192.1 +b3 , 0 );
--setMoveKey( spep_2 -3 + 68, 1, -288 +a3, -191.7 +b3 , 0 );
--setMoveKey( spep_2 -3 + 69, 1, -288 +a3, -191.7 +b3 , 0 );

s2=1.0;
setScaleKey( spep_2 + 0, 1, 12.608 -s2, 12.608 -s2 );
setScaleKey( spep_2 + 1, 1, 12.624 -s2, 12.624 -s2 );
setScaleKey( spep_2 -3 + 25, 1, 12.624 -s2, 12.624 -s2 );
setScaleKey( spep_2 -3 + 26, 1, 12.64 -s2, 12.64 -s2 );
setScaleKey( spep_2 -3 + 66, 1, 12.64 -s2, 12.64 -s2 );
--setScaleKey( spep_2 -3 + 68, 1, 12.64 -s2, 12.64 -s2 );
--setScaleKey( spep_2 -3 + 69, 1, 12.64, 12.64 );

setRotateKey( spep_2 + 0, 1, -25.3 );
setRotateKey( spep_2 -3 + 25, 1, -25.3 );
setRotateKey( spep_2 -3 + 26, 1, 0 );
setRotateKey( spep_2 -3 + 66, 1, 0 );
--setRotateKey( spep_2 -3 + 68, 1, 0 );
--setRotateKey( spep_2 -3 + 69, 1, 0 );

-- ** 音 ** --
--敵貫く
SE008 = playSe( spep_2 + 18, 1189 );

--敵貫く
SE009 = playSe( spep_2 + 24, 1190 );
setSeVolumeByWorkId( spep_2 + 24, SE009, 77 );

--敵貫く
SE010 = playSe( spep_2 + 24, 1009 );

--敵貫く
SE011 = playSe( spep_2 + 26, 1153 );

--敵貫く
SE012 = playSe( spep_2 + 28, 1110 );

--カメラ遷移
SE013 = playSe( spep_2 + 56, 1072 );
setSeVolumeByWorkId( spep_2 + 56, SE013, 25 );
setSeVolumeByWorkId( spep_2 + 60, SE013, 50 );
setSeVolumeByWorkId( spep_2 + 64, SE013, 75 );
setSeVolumeByWorkId( spep_2 + 68, SE013, 100 );
setStartTimeMs( SE013,  333 );

--カメラ遷移
SE014 = playSe( spep_2 + 56, 1182 );
setSeVolumeByWorkId( spep_2 + 56, SE014, 20 );
setSeVolumeByWorkId( spep_2 + 61, SE014, 40 );
setSeVolumeByWorkId( spep_2 + 65, SE014, 60 );
setSeVolumeByWorkId( spep_2 + 70, SE014, 79 );
setPitch( spep_2 + 56, SE014, -600 );
setTimeStretch( SE014, 0.6, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 66 -2 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 66 -2;


------------------------------------------------------
-- めりこむ(56F)
------------------------------------------------------
--spep_3 = 0;
-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_3 + 0, SP_06, 56, 0x100, -1, 0, 0, 0 );  --めりこむ　前面  ef_004_front
setEffMoveKey( spep_3 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_f, 0 );
setEffRotateKey( spep_3 + 56, punch_f, 0 );
setEffAlphaKey( spep_3 + 0, punch_f, 255 );
setEffAlphaKey( spep_3 + 55, punch_f, 255 );
setEffAlphaKey( spep_3 + 56, punch_f, 0 );

punch_b = entryEffectLife( spep_3 + 0, SP_07, 56, 0x80, -1, 0, 0, 0 );  --めりこむ　後面  ef_004_back
setEffMoveKey( spep_3 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_b, 0 );
setEffRotateKey( spep_3 + 56, punch_b, 0 );
setEffAlphaKey( spep_3 + 0, punch_b, 255 );
setEffAlphaKey( spep_3 + 55, punch_b, 255 );
setEffAlphaKey( spep_3 + 56, punch_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_3 + 0, 1, 1 );--
--setDisp( spep_3 + 56, 1, 0 );--
changeAnime( spep_3 + 0, 1, 108 );

a4=150;
b4=60;
setMoveKey( spep_3 + 0, 1, 143.9 +a4, 40.7 +b4 , 0 );
setMoveKey( spep_3 + 1, 1, 34 +a4, -10.4 +b4 , 0 );
setMoveKey( spep_3 + 2, 1, 34 +a4, -10.4 +b4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -1.4 +a4, -16.6 +b4 , 0 );
setMoveKey( spep_3 -3 + 7, 1, -1.4 +a4, -16.6 +b4 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -4.9 +a4, -17.9 +b4 , 0 );
setMoveKey( spep_3 -3 + 9, 1, -4.9 +a4, -17.9 +b4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -6.9 +a4, -17.9 +b4 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -6.9 +a4, -17.8 +b4 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -6.9 +a4, -17.8 +b4 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -6.9 +a4, -17.8 +b4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -6.9 +a4, -17.8 +b4 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -6.9 +a4, -17.7 +b4 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -6.9 +a4, -17.7 +b4 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -6.9 +a4, -17.7 +b4 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -6.9 +a4, -17.6 +b4 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -6.9 +a4, -17.6 +b4 , 0 );
--setMoveKey( spep_3 -3 + 59, 1, -10.8 +a4, -15.6 +b4 , 0 );

s3=1.2;
setScaleKey( spep_3    + 0, 1, 5.01 +s3, 5.01 +s3 );
setScaleKey( spep_3    + 1, 1, 2.94 +s3, 2.94 +s3 );
setScaleKey( spep_3    + 2, 1, 2.94 +s3, 2.94 +s3 );
setScaleKey( spep_3 -3 + 6, 1, 2.385 +s3, 2.385 +s3 );
setScaleKey( spep_3 -3 + 7, 1, 2.385 +s3, 2.385 +s3 );
setScaleKey( spep_3 -3 + 8, 1, 2.295 +s3, 2.295 +s3 );
setScaleKey( spep_3 -3 + 9, 1, 2.295 +s3, 2.295 +s3 );
setScaleKey( spep_3 -3 + 10, 1, 2.24 +s3, 2.24 +s3 );
--setScaleKey( spep_3 -3 + 16, 1, 2.24, 2.24 );
--setScaleKey( spep_3 -3 + 18, 1, 2.225, 2.225 );
--setScaleKey( spep_3 -3 + 24, 1, 2.225, 2.225 );
setScaleKey( spep_3 -3 + 26, 1, 2.24 +s3, 2.21 +s3 );
setScaleKey( spep_3 -3 + 58, 1, 2.24 +s3, 2.21 +s3 );
--setScaleKey( spep_3 -3 + 59, 1, 2.25, 2.25 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 55, 1, 0 );
--setRotateKey( spep_3 + 56, 1, 0 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;


------------------------------------------------------
-- かめはめ波ため(56F)
------------------------------------------------------
--spep_4 = 0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_4 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --かめはめ波ため　前面 ef_005_front
setEffMoveKey( spep_4 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame_f, 0 );
setEffRotateKey( spep_4 + 56, tame_f, 0 );
setEffAlphaKey( spep_4 + 0, tame_f, 255 );
setEffAlphaKey( spep_4 + 56, tame_f, 255 );

tame_b = entryEffect( spep_4 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --かめはめ波ため　後面 ef_005_back
setEffMoveKey( spep_4 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame_b, 0 );
setEffRotateKey( spep_4 + 56, tame_b, 0 );
setEffAlphaKey( spep_4 + 0, tame_b, 255 );
setEffAlphaKey( spep_4 + 56, tame_b, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 56, 1, 0 );
changeAnime( spep_4 + 0, 1, 107 );

a5=55;
b5=30;
setMoveKey( spep_4 + 0, 1, -22.9 -a5, 8.2 +b5 , 0 );
setMoveKey( spep_4 + 1, 1, 2.5 -a5, -28.9 +b5 , 0 );
setMoveKey( spep_4 + 2, 1, 27.2 -a5, -65.3 +b5 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 51.3 -a5, -100.7 +b5 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 74.8 -a5, -135.2 +b5 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 97.7 -a5, -168.8 +b5 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 101.6 -a5, -174.5 +b5 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 105.3 -a5, -179.9 +b5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 108.9 -a5, -185.1 +b5 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 112.3 -a5, -190 +b5 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 115.5 -a5, -194.7 +b5 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 118.5 -a5, -199.1 +b5 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 121.4 -a5, -203.3 +b5 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 120.8 -a5, -203.4 +b5 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 120 -a5, -203.4 +b5 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 119.2 -a5, -203.2 +b5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 118.3 -a5, -202.8 +b5 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 117.3 -a5, -202.3 +b5 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 116.2 -a5, -201.7 +b5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 115 -a5, -200.9 +b5 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 113.8 -a5, -200 +b5 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 112.4 -a5, -198.9 +b5 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 111 -a5, -197.6 +b5 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 109.5 -a5, -196.2 +b5 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 107.8 -a5, -194.6 +b5 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 106.1 -a5, -192.9 +b5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 104.3 -a5, -191.1 +b5 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 102.5 -a5, -188.9 +b5 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 100.5 -a5, -186.8 +b5 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 98.5 -a5, -184.5  +b5, 0 );
setMoveKey( spep_4 -3 + 59, 1, 98.5 -a5, -184.5  +b5, 0 );

s4=0.2;
setScaleKey( spep_4 + 0, 1, 0.88 +s4, 0.88 +s4 );
setScaleKey( spep_4 + 1, 1, 1 +s4, 1 +s4 );
setScaleKey( spep_4 + 2, 1, 1.12 +s4, 1.12 +s4 );
setScaleKey( spep_4 -3 + 6, 1, 1.232 +s4, 1.232 +s4 );
setScaleKey( spep_4 -3 + 8, 1, 1.344 +s4, 1.344 +s4 );
setScaleKey( spep_4 -3 + 10, 1, 1.448 +s4, 1.448 +s4 );
setScaleKey( spep_4 -3 + 12, 1, 1.464 +s4, 1.464 +s4 );
setScaleKey( spep_4 -3 + 14, 1, 1.472 +s4, 1.472 +s4 );
setScaleKey( spep_4 -3 + 16, 1, 1.480 +s4, 1.480 +s4 );
setScaleKey( spep_4 -3 + 18, 1, 1.488 +s4, 1.488 +s4 );
setScaleKey( spep_4 -3 + 20, 1, 1.496 +s4, 1.496 +s4 );
setScaleKey( spep_4 -3 + 22, 1, 1.504 +s4, 1.504 +s4 );
setScaleKey( spep_4 -3 + 24, 1, 1.512 +s4, 1.512 +s4 );
setScaleKey( spep_4 -3 + 26, 1, 1.504 +s4, 1.504 +s4 );
setScaleKey( spep_4 -3 + 28, 1, 1.496 +s4, 1.496 +s4 );
setScaleKey( spep_4 -3 + 30, 1, 1.496 +s4, 1.496 +s4 );
setScaleKey( spep_4 -3 + 32, 1, 1.488 +s4, 1.488 +s4 );
setScaleKey( spep_4 -3 + 34, 1, 1.480 +s4, 1.480 +s4 );
setScaleKey( spep_4 -3 + 36, 1, 1.472 +s4, 1.472 +s4 );
setScaleKey( spep_4 -3 + 38, 1, 1.464 +s4, 1.464 +s4 );
setScaleKey( spep_4 -3 + 40, 1, 1.456 +s4, 1.456 +s4 );
setScaleKey( spep_4 -3 + 42, 1, 1.448 +s4, 1.448 +s4 );
setScaleKey( spep_4 -3 + 44, 1, 1.432 +s4, 1.432 +s4 );
setScaleKey( spep_4 -3 + 46, 1, 1.424 +s4, 1.424 +s4 );
setScaleKey( spep_4 -3 + 48, 1, 1.416 +s4, 1.416 +s4 );
setScaleKey( spep_4 -3 + 50, 1, 1.408 +s4, 1.408 +s4 );
setScaleKey( spep_4 -3 + 52, 1, 1.392 +s4, 1.392 +s4 );
setScaleKey( spep_4 -3 + 54, 1, 1.384 +s4, 1.384 +s4 );
setScaleKey( spep_4 -3 + 56, 1, 1.368 +s4, 1.368 +s4 );
setScaleKey( spep_4 -3 + 58, 1, 1.36 +s4, 1.36 +s4 );
setScaleKey( spep_4 -3 + 59, 1, 1.36 +s4, 1.36 +s4 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 56, 1, 0 );

-- ** 音 ** --
--敵吹き飛ばし
SE015 = playSe( spep_4 + 0, 1027 );

--かめはめ波溜め
SE016 = playSe( spep_4 + 0, 1132 );
setSeVolumeByWorkId( spep_4 + 0, SE016, 84 );
stopSe( spep_4 +56 + 6, SE016, 0 );

--かめはめ波溜め
SE017 = playSe( spep_4 + 0, 1131 );
setSeVolumeByWorkId( spep_4 + 0, SE017, 73 );
stopSe( spep_4 +56 + 6, SE017, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


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
-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;


------------------------------------------------------
-- かめはめ波打つ(116F)
------------------------------------------------------
--spep_6 = 0;
-- ** エフェクト等 ** --
tread_f = entryEffectLife( spep_6 + 0, SP_10, 116, 0x100, -1, 0, 0, 0 );  --かめはめ波打つ　前面 ef_006
setEffMoveKey( spep_6 + 0, tread_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, tread_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tread_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, tread_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tread_f, 0 );
setEffRotateKey( spep_6 + 116, tread_f, 0 );
setEffAlphaKey( spep_6 + 0, tread_f, 255 );
setEffAlphaKey( spep_6 + 115, tread_f, 255 );
setEffAlphaKey( spep_6 + 116, tread_f, 0 );

-- ** 音 ** --
--発射前溜め
SE019 = playSe( spep_6 + 0, 1132 );
setSeVolumeByWorkId( spep_6 + 0, SE019, 25 );
setSeVolumeByWorkId( spep_6 + 2, SE019, 50 );
setSeVolumeByWorkId( spep_6 + 4, SE019, 75 );
setSeVolumeByWorkId( spep_6 + 6, SE019, 100 );
stopSe( spep_6 + 36, SE019, 20 );
setStartTimeMs( SE019,  850 );

--かめはめ波発射
SE020 = playSe( spep_6 + 34, 1022 );

--かめはめ波発射
SE021 = playSe( spep_6 + 34, 1146 );

--ヒット
SE022 = playSe( spep_6 + 108, 1011 );
setSeVolumeByWorkId( spep_6 + 108, SE022, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 116;


------------------------------------------------------
-- かめはめ波ヒット(54F)
------------------------------------------------------
--spep_7 = 0;
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_7 + 0, SP_11, 0x100, -1, 0, 0, 0 );  --かめはめ波ヒット　前面 ef_007_front
setEffMoveKey( spep_7 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 54, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 54, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hit_f, 0 );
setEffRotateKey( spep_7 + 54, hit_f, 0 );
setEffAlphaKey( spep_7 + 0, hit_f, 255 );
setEffAlphaKey( spep_7 + 54, hit_f, 255 );

hit_b = entryEffectLife( spep_7 + 0, SP_12, 54, 0x80, -1, 0, 0, 0 );  --かめはめ波ヒット　後面 ef_007_back
setEffMoveKey( spep_7 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 54, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 54, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hit_b, 0 );
setEffRotateKey( spep_7 + 54, hit_b, 0 );
setEffAlphaKey( spep_7 + 0, hit_b, 255 );
setEffAlphaKey( spep_7 + 53, hit_b, 255 );
setEffAlphaKey( spep_7 + 54, hit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 54, 1, 0 );
changeAnime( spep_7 + 0, 1, 108 );

a6=130;
b6=50;
setMoveKey( spep_7 + 0, 1, 0 +a6, 0 +b6 , 0 );
setMoveKey( spep_7 + 1, 1, 2.5 +a6, 7.8 +b6 , 0 );
setMoveKey( spep_7 + 2, 1, 5 +a6, -0.3 +b6 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 7.6 +a6, 12.9 +b6 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 10.1 +a6, 4.8 +b6 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 12.6 +a6, 17.9 +b6 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 15.1 +a6, 9.8 +b6 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 17.7 +a6, 23 +b6 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 20.2 +a6, 14.9 +b6 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 22.7 +a6, 17.4 +b6 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 25.2 +a6, 30.5 +b6 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 27.7 +a6, 22.4 +b6 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 30.3 +a6, 35.6 +b6 , 0 );
setMoveKey( spep_7 -3 + 25, 1, 30.3 +a6, 35.6 +b6 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 32.8 +a6, 27.5 +b6 , 0 );

a7=40;
b7=30;
setMoveKey( spep_7 -3 + 28, 1, 125.1 +a7, 36.9 +b7 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 165.5 +a7, 70.5 +b7 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 205.7 +a7, 103.7 +b7 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 245.6 +a7, 136.6 +b7 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 285 +a7, 169.2 +b7 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 324.2 +a7, 201.5 +b7 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 363 +a7, 233.4 +b7 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 376.6 +a7, 243.8 +b7 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 390 +a7, 254.1 +b7 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 403.2 +a7, 264.1 +b7 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 416.3 +a7, 273.9 +b7 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 429.2 +a7, 283.6 +b7 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 441.9 +a7, 293.1 +b7 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 454.4 +a7, 302.5 +b7 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 466.8 +a7, 311.7 +b7 , 0 );
setMoveKey( spep_7 -3 + 57, 1, 466.8 +a7, 311.7 +b7 , 0 );

s5=0.2;
setScaleKey( spep_7 + 0, 1, 2.265 +s5, 2.265 +s5 );
setScaleKey( spep_7 + 1, 1, 2.25 +s5, 2.25 +s5 );
setScaleKey( spep_7 + 2, 1, 2.25 +s5, 2.25 +s5 );
setScaleKey( spep_7 -3 + 6, 1, 2.235 +s5, 2.235 +s5 );
setScaleKey( spep_7 -3 + 8, 1, 2.235 +s5, 2.235 +s5 );
setScaleKey( spep_7 -3 + 10, 1, 2.22 +s5, 2.22 +s5 );
setScaleKey( spep_7 -3 + 12, 1, 2.22 +s5, 2.22 +s5 );
setScaleKey( spep_7 -3 + 14, 1, 2.205 +s5, 2.205 +s5 );
setScaleKey( spep_7 -3 + 16, 1, 2.205 +s5, 2.205 +s5 );
setScaleKey( spep_7 -3 + 18, 1, 2.19 +s5, 2.19 +s5 );
setScaleKey( spep_7 -3 + 20, 1, 2.19 +s5, 2.19 +s5 );
setScaleKey( spep_7 -3 + 22, 1, 2.175 +s5, 2.175 +s5 );
setScaleKey( spep_7 -3 + 24, 1, 2.175 +s5, 2.175 +s5 );
setScaleKey( spep_7 -3 + 26, 1, 2.16 +s5, 2.16 +s5 );
setScaleKey( spep_7 -3 + 28, 1, 1.8 +s5, 1.8 +s5 );
setScaleKey( spep_7 -3 + 30, 1, 1.65 +s5, 1.65 +s5 );
setScaleKey( spep_7 -3 + 32, 1, 1.5 +s5, 1.5 +s5 );
setScaleKey( spep_7 -3 + 34, 1, 1.35 +s5, 1.35 +s5 );
setScaleKey( spep_7 -3 + 36, 1, 1.215 +s5, 1.215 +s5 );
setScaleKey( spep_7 -3 + 38, 1, 1.065 +s5, 1.065 +s5 );
setScaleKey( spep_7 -3 + 40, 1, 0.915 +s5, 0.915 +s5 );
setScaleKey( spep_7 -3 + 42, 1, 0.84 +s5, 0.84 +s5 );
setScaleKey( spep_7 -3 + 44, 1, 0.765 +s5, 0.765 +s5 );
setScaleKey( spep_7 -3 + 46, 1, 0.69 +s5, 0.69 +s5 );
setScaleKey( spep_7 -3 + 48, 1, 0.615 +s5, 0.615 +s5 );
setScaleKey( spep_7 -3 + 50, 1, 0.54 +s5, 0.54 +s5 );
setScaleKey( spep_7 -3 + 52, 1, 0.465 +s5, 0.465 +s5 );
setScaleKey( spep_7 -3 + 54, 1, 0.39 +s5, 0.39 +s5 );
setScaleKey( spep_7 -3 + 56, 1, 0.315 +s5, 0.315 +s5 );
setScaleKey( spep_7 -3 + 57, 1, 0.315 +s5, 0.315 +s5 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 + 1, 1, -0.1 );
setRotateKey( spep_7 + 2, 1, -0.1 );
setRotateKey( spep_7 -3 + 6, 1, -0.2 );
setRotateKey( spep_7 -3 + 8, 1, -0.2 );
setRotateKey( spep_7 -3 + 10, 1, -0.3 );
setRotateKey( spep_7 -3 + 12, 1, -0.4 );
setRotateKey( spep_7 -3 + 14, 1, -0.4 );
setRotateKey( spep_7 -3 + 16, 1, -0.5 );
setRotateKey( spep_7 -3 + 18, 1, -0.6 );
setRotateKey( spep_7 -3 + 20, 1, -0.6 );
setRotateKey( spep_7 -3 + 22, 1, -0.7 );
setRotateKey( spep_7 -3 + 24, 1, -0.7 );
setRotateKey( spep_7 -3 + 26, 1, -0.8 );
setRotateKey( spep_7 -3 + 28, 1, -0.9 );
setRotateKey( spep_7 -3 + 30, 1, -0.9 );
setRotateKey( spep_7 -3 + 32, 1, -1 );
setRotateKey( spep_7 -3 + 34, 1, -1 );
setRotateKey( spep_7 -3 + 36, 1, -1.1 );
setRotateKey( spep_7 -3 + 38, 1, -1.2 );
setRotateKey( spep_7 -3 + 40, 1, -1.2 );
setRotateKey( spep_7 -3 + 42, 1, -1.3 );
setRotateKey( spep_7 -3 + 44, 1, -1.4 );
setRotateKey( spep_7 -3 + 46, 1, -1.4 );
setRotateKey( spep_7 -3 + 48, 1, -1.5 );
setRotateKey( spep_7 -3 + 50, 1, -1.5 );
setRotateKey( spep_7 -3 + 52, 1, -1.6 );
setRotateKey( spep_7 -3 + 54, 1, -1.7 );
setRotateKey( spep_7 -3 + 57, 1, -1.7 );

-- ** 音 ** --

--飛んでいく
SE023 = playSe( spep_7 + 28, 1021 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 54 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 54;


------------------------------------------------------
-- 爆ぜる(56F)
------------------------------------------------------
--spep_8 = 0;
-- ** エフェクト等 ** --
bakuhathu = entryEffectLife( spep_8 + 0, SP_13, 56, 0x100, -1, 0, 0, 0 );  --爆ぜる  ef_008
setEffMoveKey( spep_8 + 0, bakuhathu, 0, 0 , 0 );
setEffMoveKey( spep_8 + 56, bakuhathu, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, bakuhathu, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, bakuhathu, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, bakuhathu, 0 );
setEffRotateKey( spep_8 + 56, bakuhathu, 0 );
setEffAlphaKey( spep_8 + 0, bakuhathu, 255 );
setEffAlphaKey( spep_8 + 55, bakuhathu, 255 );
setEffAlphaKey( spep_8 + 56, bakuhathu, 0 );

-- ** 音 ** --
--爆発
SE024 = playSe( spep_8 + 6, 1023 );

--爆発２
SE025 = playSe( spep_8 + 50, 1002 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 56;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
--spep_9 = 0;
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_9 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_9 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_f, 0 );
setEffRotateKey( spep_9 + 100, finish_f, 0 );
setEffAlphaKey( spep_9 + 0, finish_f, 255 );
setEffAlphaKey( spep_9 + 100, finish_f, 255 );

finish_b = entryEffect( spep_9 + 0, SP_15, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
setEffMoveKey( spep_9 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_b, 0 );
setEffRotateKey( spep_9 + 100, finish_b, 0 );
setEffAlphaKey( spep_9 + 0, finish_b, 255 );
setEffAlphaKey( spep_9 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 + 100, 1, 0 );
changeAnime( spep_9 + 0, 1, 107 );

setMoveKey( spep_9 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_9 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_9 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_9 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_9 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_9 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_9 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_9 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_9 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_9 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_9 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_9 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_9 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_9 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_9 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_9 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_9 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_9 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_9 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_9 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_9 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_9 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_9 + 0, 1, 105 );
setRotateKey( spep_9 -3 + 4, 1, 240 );
setRotateKey( spep_9 -3 + 6, 1, 405 );
setRotateKey( spep_9 -3 + 8, 1, 600 );
setRotateKey( spep_9 -3 + 10, 1, 825 );
setRotateKey( spep_9 -3 + 12, 1, 1080 );
setRotateKey( spep_9 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_9 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_9 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_9 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_9 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_9 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_9 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_9 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_9 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_9 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_9 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_9 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_9 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_9 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_9 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_9 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_9 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_9 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_9 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_9 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_9 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_9 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_9 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_9 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_9 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_9 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_9 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_9 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_9 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_9 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_9 + 14, ctga, 14, 20 );

setEffMoveKey( spep_9 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_9 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_9 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_9 + 14, ctga, -10.9 );
setEffRotateKey( spep_9 + 15, ctga, -10.9 );
setEffRotateKey( spep_9 + 16, ctga, -14.9 );
setEffRotateKey( spep_9 + 17, ctga, -14.9 );
setEffRotateKey( spep_9 + 18, ctga, -10.9 );
setEffRotateKey( spep_9 + 19, ctga, -10.9 );
setEffRotateKey( spep_9 + 20, ctga, -14.9 );
setEffRotateKey( spep_9 + 21, ctga, -14.9 );
setEffRotateKey( spep_9 + 22, ctga, -10.9 );
setEffRotateKey( spep_9 + 23, ctga, -10.9 );
setEffRotateKey( spep_9 + 24, ctga, -14.9 );
setEffRotateKey( spep_9 + 25, ctga, -14.9 );
setEffRotateKey( spep_9 + 26, ctga, -10.9 );
setEffRotateKey( spep_9 + 27, ctga, -10.9 );
setEffRotateKey( spep_9 + 28, ctga, -14.9 );
setEffRotateKey( spep_9 + 100, ctga, -14.9 );

setEffAlphaKey( spep_9 + 14, ctga, 255 );
setEffAlphaKey( spep_9 + 100, ctga, 255 );

-- ** 音 ** --
--ガッ
SE026 = playSe( spep_9 + 8, 1054 );

-- ** 背景 ** --
entryFadeBg( spep_9 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 10 );
endPhase( spep_9 + 98 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕(86F)
------------------------------------------------------
spep_0 = 0;

first_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --開幕  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 86, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 86, first_f, 255 );

-- ** 音 ** --
--空中ダッシュ
SE001 = playSe( spep_0 + 0, 1182 );

--空中ダッシュ
SE002 = playSe( spep_0 + 0, 1314 );
stopSe( spep_0 + 84, SE002, 4 );
setPitch( spep_0 + 0, SE002, -500 );
setTimeStretch( SE002, 0.67, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 12 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
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
SE003 = playSe( spep_0 + 10, 1018 );

--クリリンキック
SE004 = playSe( spep_0 + 76, 1004 );

--クリリンキック
SE005 = playSe( spep_0 +84, 1187 );
setSeVolumeByWorkId( spep_0 +84, SE005, 78 );
stopSe( spep_0 +86 + 16, SE005, 44 );

--クリリンキック
SE006 = playSe( spep_0 +84, 1010 );
setSeVolumeByWorkId( spep_0 +84, SE006, 88 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;


------------------------------------------------------
-- キック(56F)
------------------------------------------------------
--spep_1 = 0;
-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_1 + 0, SP_02r, 56, 0x100, -1, 0, 0, 0 );  --キック  ef_002_front
setEffMoveKey( spep_1 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 56, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 55, kick_f, 255 );
setEffAlphaKey( spep_1 + 56, kick_f, 0 );

kick_b = entryEffectLife( spep_1 + 0, SP_03r, 56, 0x80, -1, 0, 0, 0 );  --キック  ef_002_back
setEffMoveKey( spep_1 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 56, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 55, kick_b, 255 );
setEffAlphaKey( spep_1 + 56, kick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 10, 1, 1 );
--setDisp( spep_1 -3 + 59, 1, 0 );
changeAnime( spep_1 -3 + 10, 1, 106 );

a1=20;
b1=80;
setMoveKey( spep_1 -3 + 10, 1, 76.3 + a1, -38.9 +b1 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 80.7 + a1, -44.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 83.5 + a1, -20 +b1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 89.5 + a1, -34.1 +b1 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 94.8 + a1, -24.2 +b1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 92.9 + a1, -21.7 +b1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 91.1 + a1, -19.2 +b1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 90.9 + a1, -17.2 +b1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 90.7 + a1, -15.2 +b1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 90.5 + a1, -13.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 90.7 + a1, -11.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 91 + a1, -9.4 +b1 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 91.2 + a1, -7.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 91.4 + a1, -5.7 +b1 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 91.7 + a1, -3.7 +b1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 91.9 + a1, -1.9 +b1 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 92.1 + a1, 0 +b1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 92.4 + a1, 1.9 +b1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 92.6 + a1, 3.8 +b1 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 92.9 + a1, 5.7 +b1 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 93.1 + a1, 7.6 +b1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 93.3 + a1, 9.4 +b1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 93.6 + a1, 11.3 +b1 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 93.8 + a1, 13.2 +b1 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 94 + a1, 15.1 +b1 , 0 );
--setMoveKey( spep_1 -3 + 59, 1, 94 + a1, 15.1 +b1 , 0 );

s1=0.2;
setScaleKey( spep_1 -3 + 10, 1, 2.226 +s1, 2.226 +s1 );
setScaleKey( spep_1 -3 + 12, 1, 2.072 +s1, 2.072 +s1 );
setScaleKey( spep_1 -3 + 14, 1, 1.904 +s1, 1.904 +s1 );
setScaleKey( spep_1 -3 + 16, 1, 1.834 +s1, 1.834 +s1 );
setScaleKey( spep_1 -3 + 18, 1, 1.778 +s1, 1.778 +s1 );
setScaleKey( spep_1 -3 + 20, 1, 1.736 +s1, 1.736 +s1 );
setScaleKey( spep_1 -3 + 22, 1, 1.694 +s1, 1.694 +s1 );
setScaleKey( spep_1 -3 + 24, 1, 1.68 +s1, 1.68 +s1 );
setScaleKey( spep_1 -3 + 26, 1, 1.68 +s1, 1.68 +s1 );
setScaleKey( spep_1 -3 + 28, 1, 1.666 +s1, 1.666 +s1 );
setScaleKey( spep_1 -3 + 46, 1, 1.666 +s1, 1.666 +s1 );
setScaleKey( spep_1 -3 + 48, 1, 1.652 +s1, 1.652 +s1 );
setScaleKey( spep_1 -3 + 58, 1, 1.652 +s1, 1.652 +s1 );
--setScaleKey( spep_1 -3 + 59, 1, 1.652, 1.652 );

setRotateKey( spep_1 -3 + 10, 1, -11.1 );
setRotateKey( spep_1 -3 + 12, 1, -11.2 );
setRotateKey( spep_1 -3 + 16, 1, -11.2 );
setRotateKey( spep_1 -3 + 18, 1, -10.7 );
setRotateKey( spep_1 -3 + 20, 1, -10.2 );
setRotateKey( spep_1 -3 + 22, 1, -9.6 );
setRotateKey( spep_1 -3 + 24, 1, -9.1 );
setRotateKey( spep_1 -3 + 26, 1, -8.6 );
setRotateKey( spep_1 -3 + 28, 1, -8 );
setRotateKey( spep_1 -3 + 30, 1, -7.5 );
setRotateKey( spep_1 -3 + 32, 1, -7 );
setRotateKey( spep_1 -3 + 34, 1, -6.4 );
setRotateKey( spep_1 -3 + 36, 1, -5.9 );
setRotateKey( spep_1 -3 + 38, 1, -5.4 );
setRotateKey( spep_1 -3 + 40, 1, -4.8 );
setRotateKey( spep_1 -3 + 42, 1, -4.3 );
setRotateKey( spep_1 -3 + 44, 1, -3.7 );
setRotateKey( spep_1 -3 + 46, 1, -3.2 );
setRotateKey( spep_1 -3 + 48, 1, -2.7 );
setRotateKey( spep_1 -3 + 50, 1, -2.1 );
setRotateKey( spep_1 -3 + 52, 1, -1.6 );
setRotateKey( spep_1 -3 + 54, 1, -1.1 );
setRotateKey( spep_1 -3 + 56, 1, -0.5 );
setRotateKey( spep_1 -3 + 58, 1, 0 );
--setRotateKey( spep_1 -3 + 59, 1, 0 );

-- ** 音 ** --
--クリリンキック
SE007 = playSe( spep_1 + 4, 1110 );
setSeVolumeByWorkId( spep_1 + 4, SE007, 32 );
setSeVolumeByWorkId( spep_1 + 8, SE007, 64 );
setSeVolumeByWorkId( spep_1 + 12, SE007, 96 );
setSeVolumeByWorkId( spep_1 + 16, SE007, 128 );
setSeVolumeByWorkId( spep_1 + 20, SE007, 158 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;


------------------------------------------------------
-- ブロー(66F)
------------------------------------------------------
--spep_2 = 0;
-- ** エフェクト等 ** --
blow_f = entryEffectLife( spep_2 + 0, SP_04r, 66 -2, 0x100, -1, 0, 0, 0 );  --ブロー　前面  ef_003_front
setEffMoveKey( spep_2 + 0, blow_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66 -2, blow_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, blow_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66 -2, blow_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, blow_f, 0 );
setEffRotateKey( spep_2 + 66 -2, blow_f, 0 );
setEffAlphaKey( spep_2 + 0, blow_f, 255 );
setEffAlphaKey( spep_2 + 65 -2, blow_f, 255 );
setEffAlphaKey( spep_2 + 66 -2, blow_f, 0 );

blow_b = entryEffectLife( spep_2 + 0, SP_05r, 66 -2, 0x80, -1, 0, 0, 0 );  --ブロー　後面  ef_003_front
setEffMoveKey( spep_2 + 0, blow_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66 -2, blow_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, blow_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66 -2, blow_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, blow_b, 0 );
setEffRotateKey( spep_2 + 66 -2, blow_b, 0 );
setEffAlphaKey( spep_2 + 0, blow_b, 255 );
setEffAlphaKey( spep_2 + 65 -2, blow_b, 255 );
setEffAlphaKey( spep_2 + 66 -2, blow_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_2 + 0, 1, 1 );
--setDisp( spep_2 + 66, 1, 0 );
changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2 -3 + 26, 1, 108 );

a2=100;
b2=500;
setMoveKey( spep_2 + 0, 1, 1226.8 +a2, -400.5 +b2 , 0 );
setMoveKey( spep_2 + 1, 1, 1188.9 +a2, -408.6 +b2 , 0 );
setMoveKey( spep_2 + 2, 1, 1150.9 +a2, -416.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 1113 +a2, -424.7 +b2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 1075 +a2, -432.8 +b2 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 1037.1 +a2, -440.8 +b2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 999.2 +a2, -448.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 961.2 +a2, -456.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 923.3 +a2, -465 +b2 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 771.5 +a2, -497.2 +b2 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 619.7 +a2, -529.5 +b2 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 316.2 +a2, -593.9 +b2 , 0 );
setMoveKey( spep_2 -3 + 25, 1, 12.7 +a2, -658.4 +b2 , 0 );

a3=500;
b3=200;
setMoveKey( spep_2 -3 + 26, 1, -332.6 +a3, -213.1 +b3 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -327.1 +a3, -210.5 +b3 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -321.7 +a3, -207.8 +b3 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -316.2 +a3, -205.2 +b3 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -310.8 +a3, -202.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -308.9 +a3, -201.7 +b3 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -307 +a3, -200.8 +b3 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -305 +a3, -199.9 +b3 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -303.1 +a3, -198.9 +b3 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -301.2 +a3, -198 +b3 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -299.3 +a3, -197.1 +b3 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -297.4 +a3, -196.2 +b3 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -296.3 +a3, -195.7 +b3 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -295.2 +a3, -195.1 +b3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -294 +a3, -194.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -292.9 +a3, -194 +b3 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -291.8 +a3, -193.5 +b3 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -291 +a3, -193.1 +b3 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -290.3 +a3, -192.8 +b3 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -289.5 +a3, -192.4 +b3 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -288.8 +a3, -192.1 +b3 , 0 );
--setMoveKey( spep_2 -3 + 68, 1, -288 +a3, -191.7 +b3 , 0 );
--setMoveKey( spep_2 -3 + 69, 1, -288 +a3, -191.7 +b3 , 0 );

s2=1.0;
setScaleKey( spep_2 + 0, 1, 12.608 -s2, 12.608 -s2 );
setScaleKey( spep_2 + 1, 1, 12.624 -s2, 12.624 -s2 );
setScaleKey( spep_2 -3 + 25, 1, 12.624 -s2, 12.624 -s2 );
setScaleKey( spep_2 -3 + 26, 1, 12.64 -s2, 12.64 -s2 );
setScaleKey( spep_2 -3 + 66, 1, 12.64 -s2, 12.64 -s2 );
--setScaleKey( spep_2 -3 + 68, 1, 12.64 -s2, 12.64 -s2 );
--setScaleKey( spep_2 -3 + 69, 1, 12.64, 12.64 );

setRotateKey( spep_2 + 0, 1, -25.3 );
setRotateKey( spep_2 -3 + 25, 1, -25.3 );
setRotateKey( spep_2 -3 + 26, 1, 0 );
setRotateKey( spep_2 -3 + 66, 1, 0 );
--setRotateKey( spep_2 -3 + 68, 1, 0 );
--setRotateKey( spep_2 -3 + 69, 1, 0 );

-- ** 音 ** --
--敵貫く
SE008 = playSe( spep_2 + 18, 1189 );

--敵貫く
SE009 = playSe( spep_2 + 24, 1190 );
setSeVolumeByWorkId( spep_2 + 24, SE009, 77 );

--敵貫く
SE010 = playSe( spep_2 + 24, 1009 );

--敵貫く
SE011 = playSe( spep_2 + 26, 1153 );

--敵貫く
SE012 = playSe( spep_2 + 28, 1110 );

--カメラ遷移
SE013 = playSe( spep_2 + 56, 1072 );
setSeVolumeByWorkId( spep_2 + 56, SE013, 25 );
setSeVolumeByWorkId( spep_2 + 60, SE013, 50 );
setSeVolumeByWorkId( spep_2 + 64, SE013, 75 );
setSeVolumeByWorkId( spep_2 + 68, SE013, 100 );
setStartTimeMs( SE013,  333 );

--カメラ遷移
SE014 = playSe( spep_2 + 56, 1182 );
setSeVolumeByWorkId( spep_2 + 56, SE014, 20 );
setSeVolumeByWorkId( spep_2 + 61, SE014, 40 );
setSeVolumeByWorkId( spep_2 + 65, SE014, 60 );
setSeVolumeByWorkId( spep_2 + 70, SE014, 79 );
setPitch( spep_2 + 56, SE014, -600 );
setTimeStretch( SE014, 0.6, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 66 -2 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 66 -2;


------------------------------------------------------
-- めりこむ(56F)
------------------------------------------------------
--spep_3 = 0;
-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_3 + 0, SP_06, 56, 0x100, -1, 0, 0, 0 );  --めりこむ　前面  ef_004_front
setEffMoveKey( spep_3 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_f, 0 );
setEffRotateKey( spep_3 + 56, punch_f, 0 );
setEffAlphaKey( spep_3 + 0, punch_f, 255 );
setEffAlphaKey( spep_3 + 55, punch_f, 255 );
setEffAlphaKey( spep_3 + 56, punch_f, 0 );

punch_b = entryEffectLife( spep_3 + 0, SP_07, 56, 0x80, -1, 0, 0, 0 );  --めりこむ　後面  ef_004_back
setEffMoveKey( spep_3 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_b, 0 );
setEffRotateKey( spep_3 + 56, punch_b, 0 );
setEffAlphaKey( spep_3 + 0, punch_b, 255 );
setEffAlphaKey( spep_3 + 55, punch_b, 255 );
setEffAlphaKey( spep_3 + 56, punch_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_3 + 0, 1, 1 );--
--setDisp( spep_3 + 56, 1, 0 );--
changeAnime( spep_3 + 0, 1, 108 );

a4=150;
b4=60;
setMoveKey( spep_3 + 0, 1, 143.9 +a4, 40.7 +b4 , 0 );
setMoveKey( spep_3 + 1, 1, 34 +a4, -10.4 +b4 , 0 );
setMoveKey( spep_3 + 2, 1, 34 +a4, -10.4 +b4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -1.4 +a4, -16.6 +b4 , 0 );
setMoveKey( spep_3 -3 + 7, 1, -1.4 +a4, -16.6 +b4 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -4.9 +a4, -17.9 +b4 , 0 );
setMoveKey( spep_3 -3 + 9, 1, -4.9 +a4, -17.9 +b4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -6.9 +a4, -17.9 +b4 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -6.9 +a4, -17.8 +b4 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -6.9 +a4, -17.8 +b4 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -6.9 +a4, -17.8 +b4 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -6.9 +a4, -17.8 +b4 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -6.9 +a4, -17.7 +b4 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -6.9 +a4, -17.7 +b4 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -6.9 +a4, -17.7 +b4 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -6.9 +a4, -17.6 +b4 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -6.9 +a4, -17.6 +b4 , 0 );
--setMoveKey( spep_3 -3 + 59, 1, -10.8 +a4, -15.6 +b4 , 0 );

s3=1.2;
setScaleKey( spep_3    + 0, 1, 5.01 +s3, 5.01 +s3 );
setScaleKey( spep_3    + 1, 1, 2.94 +s3, 2.94 +s3 );
setScaleKey( spep_3    + 2, 1, 2.94 +s3, 2.94 +s3 );
setScaleKey( spep_3 -3 + 6, 1, 2.385 +s3, 2.385 +s3 );
setScaleKey( spep_3 -3 + 7, 1, 2.385 +s3, 2.385 +s3 );
setScaleKey( spep_3 -3 + 8, 1, 2.295 +s3, 2.295 +s3 );
setScaleKey( spep_3 -3 + 9, 1, 2.295 +s3, 2.295 +s3 );
setScaleKey( spep_3 -3 + 10, 1, 2.24 +s3, 2.24 +s3 );
--setScaleKey( spep_3 -3 + 16, 1, 2.24, 2.24 );
--setScaleKey( spep_3 -3 + 18, 1, 2.225, 2.225 );
--setScaleKey( spep_3 -3 + 24, 1, 2.225, 2.225 );
setScaleKey( spep_3 -3 + 26, 1, 2.24 +s3, 2.21 +s3 );
setScaleKey( spep_3 -3 + 58, 1, 2.24 +s3, 2.21 +s3 );
--setScaleKey( spep_3 -3 + 59, 1, 2.25, 2.25 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 55, 1, 0 );
--setRotateKey( spep_3 + 56, 1, 0 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;


------------------------------------------------------
-- かめはめ波ため(56F)
------------------------------------------------------
--spep_4 = 0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_4 + 0, SP_08r, 0x100, -1, 0, 0, 0 );  --かめはめ波ため　前面 ef_005_front
setEffMoveKey( spep_4 + 0, tame_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, tame_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame_f, 0 );
setEffRotateKey( spep_4 + 56, tame_f, 0 );
setEffAlphaKey( spep_4 + 0, tame_f, 255 );
setEffAlphaKey( spep_4 + 56, tame_f, 255 );

tame_b = entryEffect( spep_4 + 0, SP_09r, 0x80, -1, 0, 0, 0 );  --かめはめ波ため　後面 ef_005_back
setEffMoveKey( spep_4 + 0, tame_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, tame_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame_b, 0 );
setEffRotateKey( spep_4 + 56, tame_b, 0 );
setEffAlphaKey( spep_4 + 0, tame_b, 255 );
setEffAlphaKey( spep_4 + 56, tame_b, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 56, 1, 0 );
changeAnime( spep_4 + 0, 1, 107 );

a5=55;
b5=30;
setMoveKey( spep_4 + 0, 1, -22.9 -a5, 8.2 +b5 , 0 );
setMoveKey( spep_4 + 1, 1, 2.5 -a5, -28.9 +b5 , 0 );
setMoveKey( spep_4 + 2, 1, 27.2 -a5, -65.3 +b5 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 51.3 -a5, -100.7 +b5 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 74.8 -a5, -135.2 +b5 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 97.7 -a5, -168.8 +b5 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 101.6 -a5, -174.5 +b5 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 105.3 -a5, -179.9 +b5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 108.9 -a5, -185.1 +b5 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 112.3 -a5, -190 +b5 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 115.5 -a5, -194.7 +b5 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 118.5 -a5, -199.1 +b5 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 121.4 -a5, -203.3 +b5 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 120.8 -a5, -203.4 +b5 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 120 -a5, -203.4 +b5 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 119.2 -a5, -203.2 +b5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 118.3 -a5, -202.8 +b5 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 117.3 -a5, -202.3 +b5 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 116.2 -a5, -201.7 +b5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 115 -a5, -200.9 +b5 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 113.8 -a5, -200 +b5 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 112.4 -a5, -198.9 +b5 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 111 -a5, -197.6 +b5 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 109.5 -a5, -196.2 +b5 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 107.8 -a5, -194.6 +b5 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 106.1 -a5, -192.9 +b5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 104.3 -a5, -191.1 +b5 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 102.5 -a5, -188.9 +b5 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 100.5 -a5, -186.8 +b5 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 98.5 -a5, -184.5  +b5, 0 );
setMoveKey( spep_4 -3 + 59, 1, 98.5 -a5, -184.5  +b5, 0 );

s4=0.2;
setScaleKey( spep_4 + 0, 1, 0.88 +s4, 0.88 +s4 );
setScaleKey( spep_4 + 1, 1, 1 +s4, 1 +s4 );
setScaleKey( spep_4 + 2, 1, 1.12 +s4, 1.12 +s4 );
setScaleKey( spep_4 -3 + 6, 1, 1.232 +s4, 1.232 +s4 );
setScaleKey( spep_4 -3 + 8, 1, 1.344 +s4, 1.344 +s4 );
setScaleKey( spep_4 -3 + 10, 1, 1.448 +s4, 1.448 +s4 );
setScaleKey( spep_4 -3 + 12, 1, 1.464 +s4, 1.464 +s4 );
setScaleKey( spep_4 -3 + 14, 1, 1.472 +s4, 1.472 +s4 );
setScaleKey( spep_4 -3 + 16, 1, 1.480 +s4, 1.480 +s4 );
setScaleKey( spep_4 -3 + 18, 1, 1.488 +s4, 1.488 +s4 );
setScaleKey( spep_4 -3 + 20, 1, 1.496 +s4, 1.496 +s4 );
setScaleKey( spep_4 -3 + 22, 1, 1.504 +s4, 1.504 +s4 );
setScaleKey( spep_4 -3 + 24, 1, 1.512 +s4, 1.512 +s4 );
setScaleKey( spep_4 -3 + 26, 1, 1.504 +s4, 1.504 +s4 );
setScaleKey( spep_4 -3 + 28, 1, 1.496 +s4, 1.496 +s4 );
setScaleKey( spep_4 -3 + 30, 1, 1.496 +s4, 1.496 +s4 );
setScaleKey( spep_4 -3 + 32, 1, 1.488 +s4, 1.488 +s4 );
setScaleKey( spep_4 -3 + 34, 1, 1.480 +s4, 1.480 +s4 );
setScaleKey( spep_4 -3 + 36, 1, 1.472 +s4, 1.472 +s4 );
setScaleKey( spep_4 -3 + 38, 1, 1.464 +s4, 1.464 +s4 );
setScaleKey( spep_4 -3 + 40, 1, 1.456 +s4, 1.456 +s4 );
setScaleKey( spep_4 -3 + 42, 1, 1.448 +s4, 1.448 +s4 );
setScaleKey( spep_4 -3 + 44, 1, 1.432 +s4, 1.432 +s4 );
setScaleKey( spep_4 -3 + 46, 1, 1.424 +s4, 1.424 +s4 );
setScaleKey( spep_4 -3 + 48, 1, 1.416 +s4, 1.416 +s4 );
setScaleKey( spep_4 -3 + 50, 1, 1.408 +s4, 1.408 +s4 );
setScaleKey( spep_4 -3 + 52, 1, 1.392 +s4, 1.392 +s4 );
setScaleKey( spep_4 -3 + 54, 1, 1.384 +s4, 1.384 +s4 );
setScaleKey( spep_4 -3 + 56, 1, 1.368 +s4, 1.368 +s4 );
setScaleKey( spep_4 -3 + 58, 1, 1.36 +s4, 1.36 +s4 );
setScaleKey( spep_4 -3 + 59, 1, 1.36 +s4, 1.36 +s4 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 56, 1, 0 );

-- ** 音 ** --
--敵吹き飛ばし
SE015 = playSe( spep_4 + 0, 1027 );

--かめはめ波溜め
SE016 = playSe( spep_4 + 0, 1132 );
setSeVolumeByWorkId( spep_4 + 0, SE016, 84 );
stopSe( spep_4 +56 + 6, SE016, 0 );

--かめはめ波溜め
SE017 = playSe( spep_4 + 0, 1131 );
setSeVolumeByWorkId( spep_4 + 0, SE017, 73 );
stopSe( spep_4 +56 + 6, SE017, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


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
-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;


------------------------------------------------------
-- かめはめ波打つ(116F)
------------------------------------------------------
--spep_6 = 0;
-- ** エフェクト等 ** --
tread_f = entryEffectLife( spep_6 + 0, SP_10r, 116, 0x100, -1, 0, 0, 0 );  --かめはめ波打つ　前面 ef_006
setEffMoveKey( spep_6 + 0, tread_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, tread_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tread_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, tread_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tread_f, 0 );
setEffRotateKey( spep_6 + 116, tread_f, 0 );
setEffAlphaKey( spep_6 + 0, tread_f, 255 );
setEffAlphaKey( spep_6 + 115, tread_f, 255 );
setEffAlphaKey( spep_6 + 116, tread_f, 0 );

-- ** 音 ** --
--発射前溜め
SE019 = playSe( spep_6 + 0, 1132 );
setSeVolumeByWorkId( spep_6 + 0, SE019, 25 );
setSeVolumeByWorkId( spep_6 + 2, SE019, 50 );
setSeVolumeByWorkId( spep_6 + 4, SE019, 75 );
setSeVolumeByWorkId( spep_6 + 6, SE019, 100 );
stopSe( spep_6 + 36, SE019, 20 );
setStartTimeMs( SE019,  850 );

--かめはめ波発射
SE020 = playSe( spep_6 + 34, 1022 );

--かめはめ波発射
SE021 = playSe( spep_6 + 34, 1146 );

--ヒット
SE022 = playSe( spep_6 + 108, 1011 );
setSeVolumeByWorkId( spep_6 + 108, SE022, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 116;


------------------------------------------------------
-- かめはめ波ヒット(54F)
------------------------------------------------------
--spep_7 = 0;
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_7 + 0, SP_11r, 0x100, -1, 0, 0, 0 );  --かめはめ波ヒット　前面 ef_007_front
setEffMoveKey( spep_7 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 54, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 54, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hit_f, 0 );
setEffRotateKey( spep_7 + 54, hit_f, 0 );
setEffAlphaKey( spep_7 + 0, hit_f, 255 );
setEffAlphaKey( spep_7 + 54, hit_f, 255 );

hit_b = entryEffectLife( spep_7 + 0, SP_12r, 54, 0x80, -1, 0, 0, 0 );  --かめはめ波ヒット　後面 ef_007_back
setEffMoveKey( spep_7 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 54, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 54, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hit_b, 0 );
setEffRotateKey( spep_7 + 54, hit_b, 0 );
setEffAlphaKey( spep_7 + 0, hit_b, 255 );
setEffAlphaKey( spep_7 + 53, hit_b, 255 );
setEffAlphaKey( spep_7 + 54, hit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 54, 1, 0 );
changeAnime( spep_7 + 0, 1, 108 );

a6=130;
b6=50;
setMoveKey( spep_7 + 0, 1, 0 +a6, 0 +b6 , 0 );
setMoveKey( spep_7 + 1, 1, 2.5 +a6, 7.8 +b6 , 0 );
setMoveKey( spep_7 + 2, 1, 5 +a6, -0.3 +b6 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 7.6 +a6, 12.9 +b6 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 10.1 +a6, 4.8 +b6 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 12.6 +a6, 17.9 +b6 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 15.1 +a6, 9.8 +b6 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 17.7 +a6, 23 +b6 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 20.2 +a6, 14.9 +b6 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 22.7 +a6, 17.4 +b6 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 25.2 +a6, 30.5 +b6 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 27.7 +a6, 22.4 +b6 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 30.3 +a6, 35.6 +b6 , 0 );
setMoveKey( spep_7 -3 + 25, 1, 30.3 +a6, 35.6 +b6 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 32.8 +a6, 27.5 +b6 , 0 );

a7=40;
b7=30;
setMoveKey( spep_7 -3 + 28, 1, 125.1 +a7, 36.9 +b7 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 165.5 +a7, 70.5 +b7 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 205.7 +a7, 103.7 +b7 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 245.6 +a7, 136.6 +b7 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 285 +a7, 169.2 +b7 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 324.2 +a7, 201.5 +b7 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 363 +a7, 233.4 +b7 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 376.6 +a7, 243.8 +b7 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 390 +a7, 254.1 +b7 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 403.2 +a7, 264.1 +b7 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 416.3 +a7, 273.9 +b7 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 429.2 +a7, 283.6 +b7 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 441.9 +a7, 293.1 +b7 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 454.4 +a7, 302.5 +b7 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 466.8 +a7, 311.7 +b7 , 0 );
setMoveKey( spep_7 -3 + 57, 1, 466.8 +a7, 311.7 +b7 , 0 );

s5=0.2;
setScaleKey( spep_7 + 0, 1, 2.265 +s5, 2.265 +s5 );
setScaleKey( spep_7 + 1, 1, 2.25 +s5, 2.25 +s5 );
setScaleKey( spep_7 + 2, 1, 2.25 +s5, 2.25 +s5 );
setScaleKey( spep_7 -3 + 6, 1, 2.235 +s5, 2.235 +s5 );
setScaleKey( spep_7 -3 + 8, 1, 2.235 +s5, 2.235 +s5 );
setScaleKey( spep_7 -3 + 10, 1, 2.22 +s5, 2.22 +s5 );
setScaleKey( spep_7 -3 + 12, 1, 2.22 +s5, 2.22 +s5 );
setScaleKey( spep_7 -3 + 14, 1, 2.205 +s5, 2.205 +s5 );
setScaleKey( spep_7 -3 + 16, 1, 2.205 +s5, 2.205 +s5 );
setScaleKey( spep_7 -3 + 18, 1, 2.19 +s5, 2.19 +s5 );
setScaleKey( spep_7 -3 + 20, 1, 2.19 +s5, 2.19 +s5 );
setScaleKey( spep_7 -3 + 22, 1, 2.175 +s5, 2.175 +s5 );
setScaleKey( spep_7 -3 + 24, 1, 2.175 +s5, 2.175 +s5 );
setScaleKey( spep_7 -3 + 26, 1, 2.16 +s5, 2.16 +s5 );
setScaleKey( spep_7 -3 + 28, 1, 1.8 +s5, 1.8 +s5 );
setScaleKey( spep_7 -3 + 30, 1, 1.65 +s5, 1.65 +s5 );
setScaleKey( spep_7 -3 + 32, 1, 1.5 +s5, 1.5 +s5 );
setScaleKey( spep_7 -3 + 34, 1, 1.35 +s5, 1.35 +s5 );
setScaleKey( spep_7 -3 + 36, 1, 1.215 +s5, 1.215 +s5 );
setScaleKey( spep_7 -3 + 38, 1, 1.065 +s5, 1.065 +s5 );
setScaleKey( spep_7 -3 + 40, 1, 0.915 +s5, 0.915 +s5 );
setScaleKey( spep_7 -3 + 42, 1, 0.84 +s5, 0.84 +s5 );
setScaleKey( spep_7 -3 + 44, 1, 0.765 +s5, 0.765 +s5 );
setScaleKey( spep_7 -3 + 46, 1, 0.69 +s5, 0.69 +s5 );
setScaleKey( spep_7 -3 + 48, 1, 0.615 +s5, 0.615 +s5 );
setScaleKey( spep_7 -3 + 50, 1, 0.54 +s5, 0.54 +s5 );
setScaleKey( spep_7 -3 + 52, 1, 0.465 +s5, 0.465 +s5 );
setScaleKey( spep_7 -3 + 54, 1, 0.39 +s5, 0.39 +s5 );
setScaleKey( spep_7 -3 + 56, 1, 0.315 +s5, 0.315 +s5 );
setScaleKey( spep_7 -3 + 57, 1, 0.315 +s5, 0.315 +s5 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 + 1, 1, -0.1 );
setRotateKey( spep_7 + 2, 1, -0.1 );
setRotateKey( spep_7 -3 + 6, 1, -0.2 );
setRotateKey( spep_7 -3 + 8, 1, -0.2 );
setRotateKey( spep_7 -3 + 10, 1, -0.3 );
setRotateKey( spep_7 -3 + 12, 1, -0.4 );
setRotateKey( spep_7 -3 + 14, 1, -0.4 );
setRotateKey( spep_7 -3 + 16, 1, -0.5 );
setRotateKey( spep_7 -3 + 18, 1, -0.6 );
setRotateKey( spep_7 -3 + 20, 1, -0.6 );
setRotateKey( spep_7 -3 + 22, 1, -0.7 );
setRotateKey( spep_7 -3 + 24, 1, -0.7 );
setRotateKey( spep_7 -3 + 26, 1, -0.8 );
setRotateKey( spep_7 -3 + 28, 1, -0.9 );
setRotateKey( spep_7 -3 + 30, 1, -0.9 );
setRotateKey( spep_7 -3 + 32, 1, -1 );
setRotateKey( spep_7 -3 + 34, 1, -1 );
setRotateKey( spep_7 -3 + 36, 1, -1.1 );
setRotateKey( spep_7 -3 + 38, 1, -1.2 );
setRotateKey( spep_7 -3 + 40, 1, -1.2 );
setRotateKey( spep_7 -3 + 42, 1, -1.3 );
setRotateKey( spep_7 -3 + 44, 1, -1.4 );
setRotateKey( spep_7 -3 + 46, 1, -1.4 );
setRotateKey( spep_7 -3 + 48, 1, -1.5 );
setRotateKey( spep_7 -3 + 50, 1, -1.5 );
setRotateKey( spep_7 -3 + 52, 1, -1.6 );
setRotateKey( spep_7 -3 + 54, 1, -1.7 );
setRotateKey( spep_7 -3 + 57, 1, -1.7 );

-- ** 音 ** --

--飛んでいく
SE023 = playSe( spep_7 + 28, 1021 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 54 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 54;


------------------------------------------------------
-- 爆ぜる(56F)
------------------------------------------------------
--spep_8 = 0;
-- ** エフェクト等 ** --
bakuhathu = entryEffectLife( spep_8 + 0, SP_13, 56, 0x100, -1, 0, 0, 0 );  --爆ぜる  ef_008
setEffMoveKey( spep_8 + 0, bakuhathu, 0, 0 , 0 );
setEffMoveKey( spep_8 + 56, bakuhathu, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, bakuhathu, -1.0, 1.0 );
setEffScaleKey( spep_8 + 56, bakuhathu, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, bakuhathu, 0 );
setEffRotateKey( spep_8 + 56, bakuhathu, 0 );
setEffAlphaKey( spep_8 + 0, bakuhathu, 255 );
setEffAlphaKey( spep_8 + 55, bakuhathu, 255 );
setEffAlphaKey( spep_8 + 56, bakuhathu, 0 );

-- ** 音 ** --
--爆発
SE024 = playSe( spep_8 + 6, 1023 );

--爆発２
SE025 = playSe( spep_8 + 50, 1002 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 56;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
--spep_9 = 0;
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_9 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_9 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_f, 0 );
setEffRotateKey( spep_9 + 100, finish_f, 0 );
setEffAlphaKey( spep_9 + 0, finish_f, 255 );
setEffAlphaKey( spep_9 + 100, finish_f, 255 );

finish_b = entryEffect( spep_9 + 0, SP_15, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
setEffMoveKey( spep_9 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_b, 0 );
setEffRotateKey( spep_9 + 100, finish_b, 0 );
setEffAlphaKey( spep_9 + 0, finish_b, 255 );
setEffAlphaKey( spep_9 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 + 100, 1, 0 );
changeAnime( spep_9 + 0, 1, 107 );

setMoveKey( spep_9 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_9 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_9 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_9 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_9 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_9 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_9 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_9 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_9 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_9 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_9 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_9 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_9 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_9 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_9 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_9 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_9 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_9 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_9 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_9 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_9 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_9 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_9 + 0, 1, 105 );
setRotateKey( spep_9 -3 + 4, 1, 240 );
setRotateKey( spep_9 -3 + 6, 1, 405 );
setRotateKey( spep_9 -3 + 8, 1, 600 );
setRotateKey( spep_9 -3 + 10, 1, 825 );
setRotateKey( spep_9 -3 + 12, 1, 1080 );
setRotateKey( spep_9 + 100, 1, 1080 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_9 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_9 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_9 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_9 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_9 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_9 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_9 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_9 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_9 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_9 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_9 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_9 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_9 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_9 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_9 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_9 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_9 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_9 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_9 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_9 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_9 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_9 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_9 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_9 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_9 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_9 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_9 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_9 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_9 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_9 + 14, ctga, 14, 20 );

setEffMoveKey( spep_9 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_9 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_9 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_9 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_9 + 14, ctga, -10.9 );
setEffRotateKey( spep_9 + 15, ctga, -10.9 );
setEffRotateKey( spep_9 + 16, ctga, -14.9 );
setEffRotateKey( spep_9 + 17, ctga, -14.9 );
setEffRotateKey( spep_9 + 18, ctga, -10.9 );
setEffRotateKey( spep_9 + 19, ctga, -10.9 );
setEffRotateKey( spep_9 + 20, ctga, -14.9 );
setEffRotateKey( spep_9 + 21, ctga, -14.9 );
setEffRotateKey( spep_9 + 22, ctga, -10.9 );
setEffRotateKey( spep_9 + 23, ctga, -10.9 );
setEffRotateKey( spep_9 + 24, ctga, -14.9 );
setEffRotateKey( spep_9 + 25, ctga, -14.9 );
setEffRotateKey( spep_9 + 26, ctga, -10.9 );
setEffRotateKey( spep_9 + 27, ctga, -10.9 );
setEffRotateKey( spep_9 + 28, ctga, -14.9 );
setEffRotateKey( spep_9 + 100, ctga, -14.9 );

setEffAlphaKey( spep_9 + 14, ctga, 255 );
setEffAlphaKey( spep_9 + 100, ctga, 255 );

-- ** 音 ** --
--ガッ
SE026 = playSe( spep_9 + 8, 1054 );

-- ** 背景 ** --
entryFadeBg( spep_9 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 10 );
endPhase( spep_9 + 98 );

end