--1024110:UR_パラパラブラザーズ_ダンシングパラパラアタック
--sp_effect_b4_00225
--sp2353

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
SP_01 = 159474;  --登場  ef_001
SP_02 = 159475;  --カットイン後 スピーカーが振動する   ef_002
SP_03 = 159476;  --悟空がリズムにのって攻撃    ef_003
SP_04 = 159477;  --敵が画面奥に吹っ飛ぶ 手前   ef_004
SP_05 = 159478;  --敵が画面奥に吹っ飛ぶ 奥    ef_004_back
SP_06 = 159479;  --トランクスがリズムにのって攻撃 ef_005
SP_07 = 159480;  --敵が吹っ飛ぶ 横画面 手前   ef_006
SP_08 = 159481;  --敵が吹っ飛ぶ 横画面 奥    ef_006_back
SP_09 = 159482;  --パンがリズムにのって攻撃    ef_007
SP_10 = 159483;  --敵が斜め上に吹っ飛ぶ 手前   ef_008
SP_11 = 159484;  --敵が斜め上に吹っ飛ぶ 奥    ef_008_back
SP_12 = 159485;  --フィニッシュ絵 ef_009


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
-- 登場(66F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 85, 0x100, -1, 0, 0, 0 );  --登場  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 85, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 85, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 85, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 85 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 85, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 135, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 135, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 135, 515.5 , 0 );
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
SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--ポーズ決め
SE002 = playSeVer2( spep_0 + 12, 1208, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE002, 77 );
SE003 = playSeVer2( spep_0 + 22, 12, "",spep_0 + 102 + 15, 0, 10, -1);
SE004 = playSeVer2( spep_0 + 22, 31, "",spep_0 + 92 + 5, 0, 32, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 85 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_0 + 78, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 85;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
 
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
-- playSe( spep_1 + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- カットイン後,スピーカーが振動する(66F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
speakeron = entryEffectLife( spep_2 + 0, SP_02, 66, 0x100, -1, 0, 0, 0 );  --カットイン後,スピーカーが振動する   ef_002
setEffMoveKey( spep_2 + 0, speakeron, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66, speakeron, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, speakeron, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, speakeron, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, speakeron, 0 );
setEffRotateKey( spep_2 + 66, speakeron, 0 );
setEffAlphaKey( spep_2 + 0, speakeron, 255 );
setEffAlphaKey( spep_2 + 66 -1, speakeron, 255 );
setEffAlphaKey( spep_2 + 66, speakeron, 0 );

-- ** 音 ** --
--スピーカー音楽
SE006 = playSeVer2( spep_2 + 4, 1047, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 4, 20, "",spep_2 + 52, 0, 16, -1);
SE008 = playSeVer2( spep_2 + 16, 24, "", 0, 0, 0, 0.5);
SE009 = playSeVer2( spep_2 + 22, 24, "", 0, 0, 0, 0.5);
SE010 = playSeVer2( spep_2 + 28, 1005, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 38, 24, "", 0, 0, 0, 0.5);
SE012 = playSeVer2( spep_2 + 44, 24, "", 0, 0, 0, 0.5);
SE013 = playSeVer2( spep_2 + 50, 13, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 66;


------------------------------------------------------
-- 悟空がリズムにのって攻撃(142F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
gpunch = entryEffectLife( spep_3 + 0, SP_03, 142, 0x100, -1, 0, 0, 0 );  --悟空がリズムにのって攻撃    ef_003
setEffMoveKey( spep_3 + 0, gpunch, 0, 0 , 0 );
setEffMoveKey( spep_3 + 142, gpunch, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gpunch, 1.0, 1.0 );
setEffScaleKey( spep_3 + 142, gpunch, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gpunch, 0 );
setEffRotateKey( spep_3 + 142, gpunch, 0 );
setEffAlphaKey( spep_3 + 0, gpunch, 255 );
setEffAlphaKey( spep_3 + 142 -1, gpunch, 255 );
setEffAlphaKey( spep_3 + 142, gpunch, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 18 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
   
    pauseAll( SP_dodge, 67);
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め 背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--悟空右パンチ
SE014 = playSeVer2( spep_3 + 12, 20, "",spep_3 + 42, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 12, SE014, 72 );
SE015 = playSeVer2( spep_3 + 24, 24, "", 0, 0, 0, 0.5);
SE016 = playSeVer2( spep_3 + 30, 24, "", 0, 0, 0, 0.5);
SE017 = playSeVer2( spep_3 + 36, 1000, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 36, 1110, "",spep_3 + 82, 0, 28, -1);
setSeVolumeByWorkId( spep_3 + 36, SE018, 68 );
SE019 = playSeVer2( spep_3 + 60, 20, "",spep_3 + 90, 0, 10, -1);
SE020 = playSeVer2( spep_3 + 70, 24, "", 0, 0, 0, 0.5);
SE021 = playSeVer2( spep_3 + 76, 24, "", 0, 0, 0, 0.5);
SE022 = playSeVer2( spep_3 + 82, 1000, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_3 + 82, 1110, "",spep_3 + 128, 0, 26, -1);
setSeVolumeByWorkId( spep_3 + 82, SE023, 70 );

--悟空パンチで敵吹っ飛ぶ
SE024 = playSeVer2( spep_3 + 130, 1110, "",spep_3 + 172, 0, 26, -1);
setSeVolumeByWorkId( spep_3 + 130, SE024, 70 );
SE025 = playSeVer2( spep_3 + 130, 1000, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_3 + 130, 1027, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_3 + 130, 1121, "",spep_3 + 220, 0, 38, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 142 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 142;


------------------------------------------------------
-- 敵が画面奥に吹っ飛ぶ 手前(46F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
move1_f = entryEffectLife( spep_4 + 0, SP_04, 46, 0x100, -1, 0, 0, 0 );  --敵が画面奥に吹っ飛ぶ 手前   ef_004
setEffMoveKey( spep_4 + 0, move1_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, move1_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, move1_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 46, move1_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, move1_f, 0 );
setEffRotateKey( spep_4 + 46, move1_f, 0 );
setEffAlphaKey( spep_4 + 0, move1_f, 255 );
setEffAlphaKey( spep_4 + 46 -1, move1_f, 255 );
setEffAlphaKey( spep_4 + 46, move1_f, 0 );

move1_b = entryEffectLife( spep_4 + 0, SP_05, 46, 0x80, -1, 0, 0, 0 );  --敵が画面奥に吹っ飛ぶ 奥    ef_004_back
setEffMoveKey( spep_4 + 0, move1_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, move1_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, move1_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 46, move1_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, move1_b, 0 );
setEffRotateKey( spep_4 + 46, move1_b, 0 );
setEffAlphaKey( spep_4 + 0, move1_b, 255 );
setEffAlphaKey( spep_4 + 46 -1, move1_b, 255 );
setEffAlphaKey( spep_4 + 46, move1_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 49, 1, 0 );
changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, -87.9, -272.2 , 0 );
setMoveKey( spep_4 + 1, 1, -50.8, -162.4 , 0 );
setMoveKey( spep_4 + 2, 1, -57.6, -150 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -34.6, -101.5 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -21.5, -87.2 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -32.5, -79.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -16.7, -56.6 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -14, -41.7 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -14.9, -35.1 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -5.3, -31.6 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -5.7, -19.9 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -5.9, -18.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 1.4, -6.4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 0.7, -2.8 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 6.2, -4 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 6.8, 3.6 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 8.4, 6.4 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 9.9, 8.5 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 11.3, 10.1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 12.5, 11.3 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 13.6, 12 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 14.5, 12.3 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 15.2, 12.2 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 15.9, 11.7 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 16.5, 10.6 , 0 );
setMoveKey( spep_4 -3 + 49, 1, 16.5, 10.6 , 0 );

setScaleKey( spep_4 + 0, 1, 13.14, 13.14 );
setScaleKey( spep_4 + 1, 1, 9.43, 9.43 );
setScaleKey( spep_4 + 2, 1, 8.01, 8.01 );
setScaleKey( spep_4 -3 + 6, 1, 6.98, 6.98 );
setScaleKey( spep_4 -3 + 8, 1, 6.15, 6.15 );
setScaleKey( spep_4 -3 + 10, 1, 5.46, 5.46 );
setScaleKey( spep_4 -3 + 12, 1, 4.86, 4.86 );
setScaleKey( spep_4 -3 + 14, 1, 4.34, 4.34 );
setScaleKey( spep_4 -3 + 16, 1, 3.87, 3.87 );
setScaleKey( spep_4 -3 + 18, 1, 3.46, 3.46 );
setScaleKey( spep_4 -3 + 20, 1, 3.08, 3.08 );
setScaleKey( spep_4 -3 + 22, 1, 2.74, 2.74 );
setScaleKey( spep_4 -3 + 24, 1, 2.44, 2.44 );
setScaleKey( spep_4 -3 + 26, 1, 2.16, 2.16 );
setScaleKey( spep_4 -3 + 28, 1, 1.91, 1.91 );
setScaleKey( spep_4 -3 + 30, 1, 1.67, 1.67 );
setScaleKey( spep_4 -3 + 32, 1, 1.46, 1.46 );
setScaleKey( spep_4 -3 + 34, 1, 1.27, 1.27 );
setScaleKey( spep_4 -3 + 36, 1, 1.1, 1.1 );
setScaleKey( spep_4 -3 + 38, 1, 0.94, 0.94 );
setScaleKey( spep_4 -3 + 40, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 42, 1, 0.67, 0.67 );
setScaleKey( spep_4 -3 + 44, 1, 0.56, 0.56 );
setScaleKey( spep_4 -3 + 46, 1, 0.47, 0.47 );
setScaleKey( spep_4 -3 + 48, 1, 0.39, 0.39 );
setScaleKey( spep_4 -3 + 49, 1, 0.39, 0.39 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 49, 1, 0 );

setAlphaKey( spep_4 + 0, 1, 255 );
setAlphaKey( spep_4 -3 + 49, 1, 255 );

-- ** 音 ** --
--トランクス左パンチ
SE028 = playSeVer2( spep_4 + 42, 20, "",spep_4 + 82, 0, 16, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 46;


------------------------------------------------------
-- トランクスがリズムにのって攻撃(70F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
tpunch = entryEffectLife( spep_5 + 0, SP_06, 70, 0x100, -1, 0, 0, 0 );  --トランクスがリズムにのって攻撃 ef_005
setEffMoveKey( spep_5 + 0, tpunch, 0, 0 , 0 );
setEffMoveKey( spep_5 + 70, tpunch, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tpunch, 1.0, 1.0 );
setEffScaleKey( spep_5 + 70, tpunch, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tpunch, 0 );
setEffRotateKey( spep_5 + 70, tpunch, 0 );
setEffAlphaKey( spep_5 + 0, tpunch, 255 );
setEffAlphaKey( spep_5 + 70 -1, tpunch, 255 );
setEffAlphaKey( spep_5 + 70, tpunch, 0 );

-- ** 音 ** --
--トランクス左パンチ
SE029 = playSeVer2( spep_5 + 6, 24, "", 0, 0, 0, 0.5);
SE030 = playSeVer2( spep_5 + 12, 24, "", 0, 0, 0, 0.5);
SE031 = playSeVer2( spep_5 + 18, 1000, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_5 + 18, 1110, "",spep_5 + 64, 0, 26, -1);

--トランクス右アッパー
SE033 = playSeVer2( spep_5 + 38, 20, "",spep_5 + 76, 0, 18, -1);
SE034 = playSeVer2( spep_5 + 50, 24, "", 0, 0, 0, 0.5);
SE035 = playSeVer2( spep_5 + 56, 24, "", 0, 0, 0, 0.5);
SE036 = playSeVer2( spep_5 + 62, 1000, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_5 + 62, 1110, "",spep_5 + 104, 0, 26, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 70 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 70;


------------------------------------------------------
-- 敵が吹っ飛ぶ 横画面(46F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
move2_f = entryEffectLife( spep_6 + 0, SP_07, 46, 0x100, -1, 0, 0, 0 );  --敵が吹っ飛ぶ 横画面 手前   ef_006
setEffMoveKey( spep_6 + 0, move2_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, move2_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, move2_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 46, move2_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, move2_f, 0 );
setEffRotateKey( spep_6 + 46, move2_f, 0 );
setEffAlphaKey( spep_6 + 0, move2_f, 255 );
setEffAlphaKey( spep_6 + 46 -1, move2_f, 255 );
setEffAlphaKey( spep_6 + 46, move2_f, 0 );

move2_b = entryEffectLife( spep_6 + 0, SP_08, 46, 0x80, -1, 0, 0, 0 );  --敵が吹っ飛ぶ 横画面 奥    ef_006_back
setEffMoveKey( spep_6 + 0, move2_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, move2_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, move2_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 46, move2_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, move2_b, 0 );
setEffRotateKey( spep_6 + 46, move2_b, 0 );
setEffAlphaKey( spep_6 + 0, move2_b, 255 );
setEffAlphaKey( spep_6 + 46 -1, move2_b, 255 );
setEffAlphaKey( spep_6 + 46, move2_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 49, 1, 0 );
changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, -546.6, 18.6 , 0 );
setMoveKey( spep_6 + 1, 1, -481.4, 20.5 , 0 );
setMoveKey( spep_6 + 2, 1, -439.6, 22.5 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -391.9, 18.6 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -336.4, 20.5 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -286.8, 18.6 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -227.4, 18.6 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -177.8, 22.5 , 0 );
setMoveKey( spep_6 -3 + 16, 1, -127.1, 18.6 , 0 );
setMoveKey( spep_6 -3 + 18, 1, -68.7, 22.5 , 0 );
setMoveKey( spep_6 -3 + 20, 1, -55.8, 24.4 , 0 );
setMoveKey( spep_6 -3 + 22, 1, -48.7, 20.5 , 0 );
setMoveKey( spep_6 -3 + 24, 1, -45.5, 16.6 , 0 );
setMoveKey( spep_6 -3 + 26, 1, -34.5, 12.7 , 0 );
setMoveKey( spep_6 -3 + 28, 1, -31.3, 14.7 , 0 );
setMoveKey( spep_6 -3 + 30, 1, -28.1, 10.8 , 0 );
setMoveKey( spep_6 -3 + 32, 1, -17.1, 14.7 , 0 );
setMoveKey( spep_6 -3 + 34, 1, -13.8, 22.5 , 0 );
setMoveKey( spep_6 -3 + 36, 1, -9.6, 18.6 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 2.3, 22.5 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 15.3, 24.4 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 22.4, 20.5 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 25.6, 16.6 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 36.6, 12.7 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 39.8, 14.7 , 0 );
setMoveKey( spep_6 -3 + 49, 1, 39.8, 14.7 , 0 );

setScaleKey( spep_6 + 0, 1, 2.12, 2.12 );
setScaleKey( spep_6 -3 + 49, 1, 2.12, 2.12 );

setRotateKey( spep_6 + 0, 1, -4 );
setRotateKey( spep_6 + 1, 1, -3 );
setRotateKey( spep_6 + 2, 1, -2 );
setRotateKey( spep_6 -3 + 6, 1, -1 );
setRotateKey( spep_6 -3 + 8, 1, 0 );
setRotateKey( spep_6 -3 + 10, 1, 1 );
setRotateKey( spep_6 -3 + 12, 1, 2 );
setRotateKey( spep_6 -3 + 14, 1, 3 );
setRotateKey( spep_6 -3 + 16, 1, 4 );
setRotateKey( spep_6 -3 + 18, 1, 5 );
setRotateKey( spep_6 -3 + 20, 1, 6 );
setRotateKey( spep_6 -3 + 22, 1, 7 );
setRotateKey( spep_6 -3 + 24, 1, 8 );
setRotateKey( spep_6 -3 + 26, 1, 9 );
setRotateKey( spep_6 -3 + 28, 1, 10 );
setRotateKey( spep_6 -3 + 30, 1, 11 );
setRotateKey( spep_6 -3 + 32, 1, 12 );
setRotateKey( spep_6 -3 + 34, 1, 13 );
setRotateKey( spep_6 -3 + 36, 1, 14 );
setRotateKey( spep_6 -3 + 38, 1, 15 );
setRotateKey( spep_6 -3 + 40, 1, 16 );
setRotateKey( spep_6 -3 + 42, 1, 17 );
setRotateKey( spep_6 -3 + 44, 1, 18 );
setRotateKey( spep_6 -3 + 46, 1, 19 );
setRotateKey( spep_6 -3 + 48, 1, 20 );
setRotateKey( spep_6 -3 + 49, 1, 20 );

setAlphaKey( spep_6 + 0, 1, 255 );
setAlphaKey( spep_6 -3 + 49, 1, 255 );

-- ** 音 ** --
--トランクスアッパーで敵飛んでいく
SE038 = playSeVer2( spep_6 + 6, 1121, "",spep_6 + 98, 0, 38, -1);
SE039 = playSeVer2( spep_6 + 6, 1027, "", 0, 0, 0, -1);
--パンちゃん右ローキック
SE040 = playSeVer2( spep_6 + 42, 20, "",spep_6 + 78, 0, 16, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 46;


------------------------------------------------------
-- パンがリズムにのって攻撃(76F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
pattack = entryEffectLife( spep_7 + 0, SP_09, 76, 0x100, -1, 0, 0, 0 );  --パンがリズムにのって攻撃    ef_007
setEffMoveKey( spep_7 + 0, pattack, 0, 0 , 0 );
setEffMoveKey( spep_7 + 76, pattack, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, pattack, 1.0, 1.0 );
setEffScaleKey( spep_7 + 76, pattack, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, pattack, 0 );
setEffRotateKey( spep_7 + 76, pattack, 0 );
setEffAlphaKey( spep_7 + 0, pattack, 255 );
setEffAlphaKey( spep_7 + 76 -1, pattack, 255 );
setEffAlphaKey( spep_7 + 76, pattack, 0 );

-- ** 音 ** --
--パンちゃん右ローキック
SE041 = playSeVer2( spep_7 + 6, 24, "", 0, 0, 0, 0.5);
SE042 = playSeVer2( spep_7 + 12, 24, "", 0, 0, 0, 0.5);
SE043 = playSeVer2( spep_7 + 16, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 16, SE043, 74 );
SE044 = playSeVer2( spep_7 + 18, 1110, "",spep_7 + 60, 0, 26, -1);
SE045 = playSeVer2( spep_7 + 40, 20, "",spep_7 + 76, 0, 18, -1);
SE046 = playSeVer2( spep_7 + 50, 24, "", 0, 0, 0, 0.5);
SE047 = playSeVer2( spep_7 + 56, 24, "", 0, 0, 0, 0.5);
SE048 = playSeVer2( spep_7 + 60, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 60, SE048, 58 );
SE049 = playSeVer2( spep_7 + 62, 1110, "",spep_7 + 108, 0, 26, -1);	

--パンちゃんキックで敵飛んでいく
SE050 = playSeVer2( spep_7 + 72, 1027, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_7 + 72, 1121, "",spep_7 + 136, 0, 8, -1);
SE052 = playSeVer2( spep_7 + 72, 1183, "",spep_7 + 136, 0, 8, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 76;


------------------------------------------------------
-- 敵が斜め上に吹っ飛ぶ(76F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
move3_f = entryEffectLife( spep_8 + 0, SP_10, 76, 0x100, -1, 0, 0, 0 );  --敵が斜め上に吹っ飛ぶ 手前   ef_008
setEffMoveKey( spep_8 + 0, move3_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 76, move3_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, move3_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 76, move3_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, move3_f, 0 );
setEffRotateKey( spep_8 + 76, move3_f, 0 );
setEffAlphaKey( spep_8 + 0, move3_f, 255 );
setEffAlphaKey( spep_8 + 76 -1, move3_f, 255 );
setEffAlphaKey( spep_8 + 76, move3_f, 0 );

move3_b = entryEffectLife( spep_8 + 0, SP_11, 76, 0x80, -1, 0, 0, 0 );  --敵が斜め上に吹っ飛ぶ 奥    ef_008_back
setEffMoveKey( spep_8 + 0, move3_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 76, move3_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, move3_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 76, move3_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, move3_b, 0 );
setEffRotateKey( spep_8 + 76, move3_b, 0 );
setEffAlphaKey( spep_8 + 0, move3_b, 255 );
setEffAlphaKey( spep_8 + 76 -1, move3_b, 255 );
setEffAlphaKey( spep_8 + 76, move3_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 -3 + 68, 1, 0 );
changeAnime( spep_8 + 0, 1, 105 );

setMoveKey( spep_8 + 0, 1, -69.3, -251.1 , 0 );
setMoveKey( spep_8 + 1, 1, -84.1, -189.6 , 0 );
setMoveKey( spep_8 + 2, 1, -10.3, -183.5 , 0 );
setMoveKey( spep_8 -3 + 6, 1, 0.7, -81.4 , 0 );
setMoveKey( spep_8 -3 + 8, 1, -14, -92.7 , 0 );
setMoveKey( spep_8 -3 + 10, 1, 27.7, -25.9 , 0 );
setMoveKey( spep_8 -3 + 12, 1, 42.6, 13.1 , 0 );
setMoveKey( spep_8 -3 + 14, 1, 60.5, 51.9 , 0 );
setMoveKey( spep_8 -3 + 16, 1, 69.6, 82.6 , 0 );
setMoveKey( spep_8 -3 + 18, 1, 77.9, 118.9 , 0 );
setMoveKey( spep_8 -3 + 20, 1, 89.1, 149.2 , 0 );
setMoveKey( spep_8 -3 + 22, 1, 99.4, 177.3 , 0 );
setMoveKey( spep_8 -3 + 24, 1, 108.9, 203.4 , 0 );
setMoveKey( spep_8 -3 + 26, 1, 117.4, 227.3 , 0 );
setMoveKey( spep_8 -3 + 28, 1, 125.2, 249.2 , 0 );
setMoveKey( spep_8 -3 + 30, 1, 132.1, 268.9 , 0 );
setMoveKey( spep_8 -3 + 32, 1, 138.2, 286.6 , 0 );
setMoveKey( spep_8 -3 + 34, 1, 143.5, 302.2 , 0 );
setMoveKey( spep_8 -3 + 36, 1, 147.9, 315.8 , 0 );
setMoveKey( spep_8 -3 + 38, 1, 151.5, 327.2 , 0 );
setMoveKey( spep_8 -3 + 40, 1, 154.3, 336.7 , 0 );
setMoveKey( spep_8 -3 + 42, 1, 156.3, 344 , 0 );
setMoveKey( spep_8 -3 + 44, 1, 157.5, 349.4 , 0 );
setMoveKey( spep_8 -3 + 46, 1, 157.9, 352.7 , 0 );
setMoveKey( spep_8 -3 + 48, 1, 159.3, 354 , 0 );
setMoveKey( spep_8 -3 + 50, 1, 160.8, 355.3 , 0 );
setMoveKey( spep_8 -3 + 52, 1, 161.9, 360.2 , 0 );
setMoveKey( spep_8 -3 + 54, 1, 163.1, 365.1 , 0 );
setMoveKey( spep_8 -3 + 56, 1, 164.2, 370 , 0 );
setMoveKey( spep_8 -3 + 58, 1, 165.4, 375 , 0 );
setMoveKey( spep_8 -3 + 60, 1, 166.6, 379.9 , 0 );
setMoveKey( spep_8 -3 + 62, 1, 167.7, 384.8 , 0 );
setMoveKey( spep_8 -3 + 64, 1, 168.9, 389.7 , 0 );
setMoveKey( spep_8 -3 + 66, 1, 170, 394.6 , 0 );
setMoveKey( spep_8 -3 + 68, 1, 170, 394.6 , 0 );

setScaleKey( spep_8 + 0, 1, 5.28, 5.12 );
setScaleKey( spep_8 + 1, 1, 4.85, 4.7 );
setScaleKey( spep_8 + 2, 1, 4.48, 4.33 );
setScaleKey( spep_8 -3 + 6, 1, 4.14, 3.99 );
setScaleKey( spep_8 -3 + 8, 1, 3.83, 3.69 );
setScaleKey( spep_8 -3 + 10, 1, 3.55, 3.41 );
setScaleKey( spep_8 -3 + 12, 1, 3.28, 3.15 );
setScaleKey( spep_8 -3 + 14, 1, 3.04, 2.91 );
setScaleKey( spep_8 -3 + 16, 1, 2.8, 2.69 );
setScaleKey( spep_8 -3 + 18, 1, 2.59, 2.47 );
setScaleKey( spep_8 -3 + 20, 1, 2.38, 2.27 );
setScaleKey( spep_8 -3 + 22, 1, 2.18, 2.08 );
setScaleKey( spep_8 -3 + 24, 1, 2, 1.9 );
setScaleKey( spep_8 -3 + 26, 1, 1.82, 1.74 );
setScaleKey( spep_8 -3 + 28, 1, 1.66, 1.58 );
setScaleKey( spep_8 -3 + 30, 1, 1.5, 1.42 );
setScaleKey( spep_8 -3 + 32, 1, 1.35, 1.28 );
setScaleKey( spep_8 -3 + 34, 1, 1.21, 1.14 );
setScaleKey( spep_8 -3 + 36, 1, 1.07, 1.01 );
setScaleKey( spep_8 -3 + 38, 1, 0.95, 0.89 );
setScaleKey( spep_8 -3 + 40, 1, 0.83, 0.78 );
setScaleKey( spep_8 -3 + 42, 1, 0.71, 0.67 );
setScaleKey( spep_8 -3 + 44, 1, 0.6, 0.57 );
setScaleKey( spep_8 -3 + 46, 1, 0.5, 0.47 );
setScaleKey( spep_8 -3 + 48, 1, 0.42, 0.39 );
setScaleKey( spep_8 -3 + 50, 1, 0.33, 0.31 );
setScaleKey( spep_8 -3 + 52, 1, 0.34, 0.32 );
setScaleKey( spep_8 -3 + 54, 1, 0.34, 0.32 );
setScaleKey( spep_8 -3 + 56, 1, 0.35, 0.33 );
setScaleKey( spep_8 -3 + 58, 1, 0.35, 0.33 );
setScaleKey( spep_8 -3 + 60, 1, 0.35, 0.34 );
setScaleKey( spep_8 -3 + 62, 1, 0.36, 0.34 );
setScaleKey( spep_8 -3 + 64, 1, 0.36, 0.35 );
setScaleKey( spep_8 -3 + 66, 1, 0.36, 0.36 );
setScaleKey( spep_8 -3 + 68, 1, 0.36, 0.36 );

setRotateKey( spep_8 + 0, 1, 13.6 );
setRotateKey( spep_8 + 1, 1, 13.7 );
setRotateKey( spep_8 -3 + 68, 1, 13.7 );

setAlphaKey( spep_8 + 0, 1, 255 );
setAlphaKey( spep_8 -3 + 47, 1, 255 );
setAlphaKey( spep_8 -3 + 48, 1, 100 );
setAlphaKey( spep_8 -3 + 50, 1, 0 );
setAlphaKey( spep_8 -3 + 67, 1, 0 );
setAlphaKey( spep_8 -3 + 68, 1, 255 );

-- ** 音 ** --
--敵星になる
SE053 = playSeVer2( spep_8 + 44, 1042, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 76;


------------------------------------------------------
-- フィニッシュ絵(116F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_12, 0x100, -1, 0, 0, 0 );  --フィニッシュ絵 ef_009
setEffMoveKey( spep_9 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_9 + 116, finish, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 116, finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 116, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 116, finish, 255 );

-- ** 音 ** --
--回ってポーズ
SE054 = playSeVer2( spep_9 + 4, 1003, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_9 + 12, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 12, SE055, 170 );
SE056 = playSeVer2( spep_9 + 18, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 18, SE056, 316 );
SE057 = playSeVer2( spep_9 + 28, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 28, SE057, 162 );

--ラスト決めポーズ
SE058 = playSeVer2( spep_9 + 50, 1233, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_9 + 58, 1062, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_9 + 58, 1273, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_9 + 58, 1112, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 116, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 6 );
endPhase( spep_9 + 106 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 登場(66F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 85, 0x100, -1, 0, 0, 0 );  --登場  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 85, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 85, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 85, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 85 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 85, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--[[speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]

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

-- ** 音 ** --
--顔カットイン
SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--ポーズ決め
SE002 = playSeVer2( spep_0 + 12, 1208, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE002, 77 );
SE003 = playSeVer2( spep_0 + 22, 12, "",spep_0 + 102 + 15, 0, 10, -1);
SE004 = playSeVer2( spep_0 + 22, 31, "",spep_0 + 92 + 5, 0, 32, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 85 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_0 + 78, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 85;


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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- カットイン後,スピーカーが振動する(66F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
speakeron = entryEffectLife( spep_2 + 0, SP_02, 66, 0x100, -1, 0, 0, 0 );  --カットイン後,スピーカーが振動する   ef_002
setEffMoveKey( spep_2 + 0, speakeron, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66, speakeron, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, speakeron, -1.0, 1.0 );
setEffScaleKey( spep_2 + 66, speakeron, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, speakeron, 0 );
setEffRotateKey( spep_2 + 66, speakeron, 0 );
setEffAlphaKey( spep_2 + 0, speakeron, 255 );
setEffAlphaKey( spep_2 + 66 -1, speakeron, 255 );
setEffAlphaKey( spep_2 + 66, speakeron, 0 );

-- ** 音 ** --
--スピーカー音楽
SE006 = playSeVer2( spep_2 + 4, 1047, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 4, 20, "",spep_2 + 52, 0, 16, -1);
SE008 = playSeVer2( spep_2 + 16, 24, "", 0, 0, 0, 0.5);
SE009 = playSeVer2( spep_2 + 22, 24, "", 0, 0, 0, 0.5);
SE010 = playSeVer2( spep_2 + 28, 1005, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 38, 24, "", 0, 0, 0, 0.5);
SE012 = playSeVer2( spep_2 + 44, 24, "", 0, 0, 0, 0.5);
SE013 = playSeVer2( spep_2 + 50, 13, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 66;


------------------------------------------------------
-- 悟空がリズムにのって攻撃(142F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
gpunch = entryEffectLife( spep_3 + 0, SP_03, 142, 0x100, -1, 0, 0, 0 );  --悟空がリズムにのって攻撃    ef_003
setEffMoveKey( spep_3 + 0, gpunch, 0, 0 , 0 );
setEffMoveKey( spep_3 + 142, gpunch, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gpunch, -1.0, 1.0 );
setEffScaleKey( spep_3 + 142, gpunch, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gpunch, 0 );
setEffRotateKey( spep_3 + 142, gpunch, 0 );
setEffAlphaKey( spep_3 + 0, gpunch, 255 );
setEffAlphaKey( spep_3 + 142 -1, gpunch, 255 );
setEffAlphaKey( spep_3 + 142, gpunch, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 18 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
   
    pauseAll( SP_dodge, 67);
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め 背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--悟空右パンチ
SE014 = playSeVer2( spep_3 + 12, 20, "",spep_3 + 42, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 12, SE014, 72 );
SE015 = playSeVer2( spep_3 + 24, 24, "", 0, 0, 0, 0.5);
SE016 = playSeVer2( spep_3 + 30, 24, "", 0, 0, 0, 0.5);
SE017 = playSeVer2( spep_3 + 36, 1000, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 36, 1110, "",spep_3 + 82, 0, 28, -1);
setSeVolumeByWorkId( spep_3 + 36, SE018, 68 );
SE019 = playSeVer2( spep_3 + 60, 20, "",spep_3 + 90, 0, 10, -1);
SE020 = playSeVer2( spep_3 + 70, 24, "", 0, 0, 0, 0.5);
SE021 = playSeVer2( spep_3 + 76, 24, "", 0, 0, 0, 0.5);
SE022 = playSeVer2( spep_3 + 82, 1000, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_3 + 82, 1110, "",spep_3 + 128, 0, 26, -1);
setSeVolumeByWorkId( spep_3 + 82, SE023, 70 );

--悟空パンチで敵吹っ飛ぶ
SE024 = playSeVer2( spep_3 + 130, 1110, "",spep_3 + 172, 0, 26, -1);
setSeVolumeByWorkId( spep_3 + 130, SE024, 70 );
SE025 = playSeVer2( spep_3 + 130, 1000, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_3 + 130, 1027, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_3 + 130, 1121, "",spep_3 + 220, 0, 38, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 142 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 142;


------------------------------------------------------
-- 敵が画面奥に吹っ飛ぶ 手前(46F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
move1_f = entryEffectLife( spep_4 + 0, SP_04, 46, 0x100, -1, 0, 0, 0 );  --敵が画面奥に吹っ飛ぶ 手前   ef_004
setEffMoveKey( spep_4 + 0, move1_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, move1_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, move1_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 46, move1_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, move1_f, 0 );
setEffRotateKey( spep_4 + 46, move1_f, 0 );
setEffAlphaKey( spep_4 + 0, move1_f, 255 );
setEffAlphaKey( spep_4 + 46 -1, move1_f, 255 );
setEffAlphaKey( spep_4 + 46, move1_f, 0 );

move1_b = entryEffectLife( spep_4 + 0, SP_05, 46, 0x80, -1, 0, 0, 0 );  --敵が画面奥に吹っ飛ぶ 奥    ef_004_back
setEffMoveKey( spep_4 + 0, move1_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, move1_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, move1_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 46, move1_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, move1_b, 0 );
setEffRotateKey( spep_4 + 46, move1_b, 0 );
setEffAlphaKey( spep_4 + 0, move1_b, 255 );
setEffAlphaKey( spep_4 + 46 -1, move1_b, 255 );
setEffAlphaKey( spep_4 + 46, move1_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 49, 1, 0 );
changeAnime( spep_4 + 0, 1, 5 );

setMoveKey( spep_4 + 0, 1, 87.9, -272.2 , 0 );
setMoveKey( spep_4 + 1, 1, 50.8, -162.4 , 0 );
setMoveKey( spep_4 + 2, 1, 57.6, -150 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 34.6, -101.5 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 21.5, -87.2 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 32.5, -79.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 16.7, -56.6 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 14, -41.7 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 14.9, -35.1 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 5.3, -31.6 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 5.7, -19.9 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 5.9, -18.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -1.4, -6.4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -0.7, -2.8 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -6.2, -4 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -6.8, 3.6 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -8.4, 6.4 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -9.9, 8.5 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -11.3, 10.1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -12.5, 11.3 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -13.6, 12 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -14.5, 12.3 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -15.2, 12.2 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -15.9, 11.7 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -16.5, 10.6 , 0 );
setMoveKey( spep_4 -3 + 49, 1, -16.5, 10.6 , 0 );

setScaleKey( spep_4 + 0, 1, 13.14, 13.14 );
setScaleKey( spep_4 + 1, 1, 9.43, 9.43 );
setScaleKey( spep_4 + 2, 1, 8.01, 8.01 );
setScaleKey( spep_4 -3 + 6, 1, 6.98, 6.98 );
setScaleKey( spep_4 -3 + 8, 1, 6.15, 6.15 );
setScaleKey( spep_4 -3 + 10, 1, 5.46, 5.46 );
setScaleKey( spep_4 -3 + 12, 1, 4.86, 4.86 );
setScaleKey( spep_4 -3 + 14, 1, 4.34, 4.34 );
setScaleKey( spep_4 -3 + 16, 1, 3.87, 3.87 );
setScaleKey( spep_4 -3 + 18, 1, 3.46, 3.46 );
setScaleKey( spep_4 -3 + 20, 1, 3.08, 3.08 );
setScaleKey( spep_4 -3 + 22, 1, 2.74, 2.74 );
setScaleKey( spep_4 -3 + 24, 1, 2.44, 2.44 );
setScaleKey( spep_4 -3 + 26, 1, 2.16, 2.16 );
setScaleKey( spep_4 -3 + 28, 1, 1.91, 1.91 );
setScaleKey( spep_4 -3 + 30, 1, 1.67, 1.67 );
setScaleKey( spep_4 -3 + 32, 1, 1.46, 1.46 );
setScaleKey( spep_4 -3 + 34, 1, 1.27, 1.27 );
setScaleKey( spep_4 -3 + 36, 1, 1.1, 1.1 );
setScaleKey( spep_4 -3 + 38, 1, 0.94, 0.94 );
setScaleKey( spep_4 -3 + 40, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 42, 1, 0.67, 0.67 );
setScaleKey( spep_4 -3 + 44, 1, 0.56, 0.56 );
setScaleKey( spep_4 -3 + 46, 1, 0.47, 0.47 );
setScaleKey( spep_4 -3 + 48, 1, 0.39, 0.39 );
setScaleKey( spep_4 -3 + 49, 1, 0.39, 0.39 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 49, 1, 0 );

setAlphaKey( spep_4 + 0, 1, 255 );
setAlphaKey( spep_4 -3 + 49, 1, 255 );

-- ** 音 ** --
--トランクス左パンチ
SE028 = playSeVer2( spep_4 + 42, 20, "",spep_4 + 82, 0, 16, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 46;


------------------------------------------------------
-- トランクスがリズムにのって攻撃(70F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
tpunch = entryEffectLife( spep_5 + 0, SP_06, 70, 0x100, -1, 0, 0, 0 );  --トランクスがリズムにのって攻撃 ef_005
setEffMoveKey( spep_5 + 0, tpunch, 0, 0 , 0 );
setEffMoveKey( spep_5 + 70, tpunch, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tpunch, -1.0, 1.0 );
setEffScaleKey( spep_5 + 70, tpunch, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tpunch, 0 );
setEffRotateKey( spep_5 + 70, tpunch, 0 );
setEffAlphaKey( spep_5 + 0, tpunch, 255 );
setEffAlphaKey( spep_5 + 70 -1, tpunch, 255 );
setEffAlphaKey( spep_5 + 70, tpunch, 0 );

-- ** 音 ** --
--トランクス左パンチ
SE029 = playSeVer2( spep_5 + 6, 24, "", 0, 0, 0, 0.5);
SE030 = playSeVer2( spep_5 + 12, 24, "", 0, 0, 0, 0.5);
SE031 = playSeVer2( spep_5 + 18, 1000, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_5 + 18, 1110, "",spep_5 + 64, 0, 26, -1);

--トランクス右アッパー
SE033 = playSeVer2( spep_5 + 38, 20, "",spep_5 + 76, 0, 18, -1);
SE034 = playSeVer2( spep_5 + 50, 24, "", 0, 0, 0, 0.5);
SE035 = playSeVer2( spep_5 + 56, 24, "", 0, 0, 0, 0.5);
SE036 = playSeVer2( spep_5 + 62, 1000, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_5 + 62, 1110, "",spep_5 + 104, 0, 26, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 70 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 70;


------------------------------------------------------
-- 敵が吹っ飛ぶ 横画面(46F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
move2_f = entryEffectLife( spep_6 + 0, SP_07, 46, 0x100, -1, 0, 0, 0 );  --敵が吹っ飛ぶ 横画面 手前   ef_006
setEffMoveKey( spep_6 + 0, move2_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, move2_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, move2_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 46, move2_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, move2_f, 0 );
setEffRotateKey( spep_6 + 46, move2_f, 0 );
setEffAlphaKey( spep_6 + 0, move2_f, 255 );
setEffAlphaKey( spep_6 + 46 -1, move2_f, 255 );
setEffAlphaKey( spep_6 + 46, move2_f, 0 );

move2_b = entryEffectLife( spep_6 + 0, SP_08, 46, 0x80, -1, 0, 0, 0 );  --敵が吹っ飛ぶ 横画面 奥    ef_006_back
setEffMoveKey( spep_6 + 0, move2_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, move2_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, move2_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 46, move2_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, move2_b, 0 );
setEffRotateKey( spep_6 + 46, move2_b, 0 );
setEffAlphaKey( spep_6 + 0, move2_b, 255 );
setEffAlphaKey( spep_6 + 46 -1, move2_b, 255 );
setEffAlphaKey( spep_6 + 46, move2_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 49, 1, 0 );
changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, -546.6, 18.6 , 0 );
setMoveKey( spep_6 + 1, 1, -481.4, 20.5 , 0 );
setMoveKey( spep_6 + 2, 1, -439.6, 22.5 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -391.9, 18.6 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -336.4, 20.5 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -286.8, 18.6 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -227.4, 18.6 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -177.8, 22.5 , 0 );
setMoveKey( spep_6 -3 + 16, 1, -127.1, 18.6 , 0 );
setMoveKey( spep_6 -3 + 18, 1, -68.7, 22.5 , 0 );
setMoveKey( spep_6 -3 + 20, 1, -55.8, 24.4 , 0 );
setMoveKey( spep_6 -3 + 22, 1, -48.7, 20.5 , 0 );
setMoveKey( spep_6 -3 + 24, 1, -45.5, 16.6 , 0 );
setMoveKey( spep_6 -3 + 26, 1, -34.5, 12.7 , 0 );
setMoveKey( spep_6 -3 + 28, 1, -31.3, 14.7 , 0 );
setMoveKey( spep_6 -3 + 30, 1, -28.1, 10.8 , 0 );
setMoveKey( spep_6 -3 + 32, 1, -17.1, 14.7 , 0 );
setMoveKey( spep_6 -3 + 34, 1, -13.8, 22.5 , 0 );
setMoveKey( spep_6 -3 + 36, 1, -9.6, 18.6 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 2.3, 22.5 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 15.3, 24.4 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 22.4, 20.5 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 25.6, 16.6 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 36.6, 12.7 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 39.8, 14.7 , 0 );
setMoveKey( spep_6 -3 + 49, 1, 39.8, 14.7 , 0 );

setScaleKey( spep_6 + 0, 1, 2.12, 2.12 );
setScaleKey( spep_6 -3 + 49, 1, 2.12, 2.12 );

setRotateKey( spep_6 + 0, 1, -4 );
setRotateKey( spep_6 + 1, 1, -3 );
setRotateKey( spep_6 + 2, 1, -2 );
setRotateKey( spep_6 -3 + 6, 1, -1 );
setRotateKey( spep_6 -3 + 8, 1, 0 );
setRotateKey( spep_6 -3 + 10, 1, 1 );
setRotateKey( spep_6 -3 + 12, 1, 2 );
setRotateKey( spep_6 -3 + 14, 1, 3 );
setRotateKey( spep_6 -3 + 16, 1, 4 );
setRotateKey( spep_6 -3 + 18, 1, 5 );
setRotateKey( spep_6 -3 + 20, 1, 6 );
setRotateKey( spep_6 -3 + 22, 1, 7 );
setRotateKey( spep_6 -3 + 24, 1, 8 );
setRotateKey( spep_6 -3 + 26, 1, 9 );
setRotateKey( spep_6 -3 + 28, 1, 10 );
setRotateKey( spep_6 -3 + 30, 1, 11 );
setRotateKey( spep_6 -3 + 32, 1, 12 );
setRotateKey( spep_6 -3 + 34, 1, 13 );
setRotateKey( spep_6 -3 + 36, 1, 14 );
setRotateKey( spep_6 -3 + 38, 1, 15 );
setRotateKey( spep_6 -3 + 40, 1, 16 );
setRotateKey( spep_6 -3 + 42, 1, 17 );
setRotateKey( spep_6 -3 + 44, 1, 18 );
setRotateKey( spep_6 -3 + 46, 1, 19 );
setRotateKey( spep_6 -3 + 48, 1, 20 );
setRotateKey( spep_6 -3 + 49, 1, 20 );

setAlphaKey( spep_6 + 0, 1, 255 );
setAlphaKey( spep_6 -3 + 49, 1, 255 );

-- ** 音 ** --
--トランクスアッパーで敵飛んでいく
SE038 = playSeVer2( spep_6 + 6, 1121, "",spep_6 + 98, 0, 38, -1);
SE039 = playSeVer2( spep_6 + 6, 1027, "", 0, 0, 0, -1);
--パンちゃん右ローキック
SE040 = playSeVer2( spep_6 + 42, 20, "",spep_6 + 78, 0, 16, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 46;


------------------------------------------------------
-- パンがリズムにのって攻撃(76F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
pattack = entryEffectLife( spep_7 + 0, SP_09, 76, 0x100, -1, 0, 0, 0 );  --パンがリズムにのって攻撃    ef_007
setEffMoveKey( spep_7 + 0, pattack, 0, 0 , 0 );
setEffMoveKey( spep_7 + 76, pattack, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, pattack, -1.0, 1.0 );
setEffScaleKey( spep_7 + 76, pattack, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, pattack, 0 );
setEffRotateKey( spep_7 + 76, pattack, 0 );
setEffAlphaKey( spep_7 + 0, pattack, 255 );
setEffAlphaKey( spep_7 + 76 -1, pattack, 255 );
setEffAlphaKey( spep_7 + 76, pattack, 0 );

-- ** 音 ** --
--パンちゃん右ローキック
SE041 = playSeVer2( spep_7 + 6, 24, "", 0, 0, 0, 0.5);
SE042 = playSeVer2( spep_7 + 12, 24, "", 0, 0, 0, 0.5);
SE043 = playSeVer2( spep_7 + 16, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 16, SE043, 74 );
SE044 = playSeVer2( spep_7 + 18, 1110, "",spep_7 + 60, 0, 26, -1);
SE045 = playSeVer2( spep_7 + 40, 20, "",spep_7 + 76, 0, 18, -1);
SE046 = playSeVer2( spep_7 + 50, 24, "", 0, 0, 0, 0.5);
SE047 = playSeVer2( spep_7 + 56, 24, "", 0, 0, 0, 0.5);
SE048 = playSeVer2( spep_7 + 60, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 60, SE048, 58 );
SE049 = playSeVer2( spep_7 + 62, 1110, "",spep_7 + 108, 0, 26, -1); 

--パンちゃんキックで敵飛んでいく
SE050 = playSeVer2( spep_7 + 72, 1027, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_7 + 72, 1121, "",spep_7 + 136, 0, 8, -1);
SE052 = playSeVer2( spep_7 + 72, 1183, "",spep_7 + 136, 0, 8, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 76;


------------------------------------------------------
-- 敵が斜め上に吹っ飛ぶ(76F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
move3_f = entryEffectLife( spep_8 + 0, SP_10, 76, 0x100, -1, 0, 0, 0 );  --敵が斜め上に吹っ飛ぶ 手前   ef_008
setEffMoveKey( spep_8 + 0, move3_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 76, move3_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, move3_f, -1.0, 1.0 );
setEffScaleKey( spep_8 + 76, move3_f, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, move3_f, 0 );
setEffRotateKey( spep_8 + 76, move3_f, 0 );
setEffAlphaKey( spep_8 + 0, move3_f, 255 );
setEffAlphaKey( spep_8 + 76 -1, move3_f, 255 );
setEffAlphaKey( spep_8 + 76, move3_f, 0 );

move3_b = entryEffectLife( spep_8 + 0, SP_11, 76, 0x80, -1, 0, 0, 0 );  --敵が斜め上に吹っ飛ぶ 奥    ef_008_back
setEffMoveKey( spep_8 + 0, move3_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 76, move3_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, move3_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 76, move3_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, move3_b, 0 );
setEffRotateKey( spep_8 + 76, move3_b, 0 );
setEffAlphaKey( spep_8 + 0, move3_b, 255 );
setEffAlphaKey( spep_8 + 76 -1, move3_b, 255 );
setEffAlphaKey( spep_8 + 76, move3_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 -3 + 68, 1, 0 );
changeAnime( spep_8 + 0, 1, 105 );

setMoveKey( spep_8 + 0, 1, -69.3, -251.1 , 0 );
setMoveKey( spep_8 + 1, 1, -84.1, -189.6 , 0 );
setMoveKey( spep_8 + 2, 1, -10.3, -183.5 , 0 );
setMoveKey( spep_8 -3 + 6, 1, 0.7, -81.4 , 0 );
setMoveKey( spep_8 -3 + 8, 1, -14, -92.7 , 0 );
setMoveKey( spep_8 -3 + 10, 1, 27.7, -25.9 , 0 );
setMoveKey( spep_8 -3 + 12, 1, 42.6, 13.1 , 0 );
setMoveKey( spep_8 -3 + 14, 1, 60.5, 51.9 , 0 );
setMoveKey( spep_8 -3 + 16, 1, 69.6, 82.6 , 0 );
setMoveKey( spep_8 -3 + 18, 1, 77.9, 118.9 , 0 );
setMoveKey( spep_8 -3 + 20, 1, 89.1, 149.2 , 0 );
setMoveKey( spep_8 -3 + 22, 1, 99.4, 177.3 , 0 );
setMoveKey( spep_8 -3 + 24, 1, 108.9, 203.4 , 0 );
setMoveKey( spep_8 -3 + 26, 1, 117.4, 227.3 , 0 );
setMoveKey( spep_8 -3 + 28, 1, 125.2, 249.2 , 0 );
setMoveKey( spep_8 -3 + 30, 1, 132.1, 268.9 , 0 );
setMoveKey( spep_8 -3 + 32, 1, 138.2, 286.6 , 0 );
setMoveKey( spep_8 -3 + 34, 1, 143.5, 302.2 , 0 );
setMoveKey( spep_8 -3 + 36, 1, 147.9, 315.8 , 0 );
setMoveKey( spep_8 -3 + 38, 1, 151.5, 327.2 , 0 );
setMoveKey( spep_8 -3 + 40, 1, 154.3, 336.7 , 0 );
setMoveKey( spep_8 -3 + 42, 1, 156.3, 344 , 0 );
setMoveKey( spep_8 -3 + 44, 1, 157.5, 349.4 , 0 );
setMoveKey( spep_8 -3 + 46, 1, 157.9, 352.7 , 0 );
setMoveKey( spep_8 -3 + 48, 1, 159.3, 354 , 0 );
setMoveKey( spep_8 -3 + 50, 1, 160.8, 355.3 , 0 );
setMoveKey( spep_8 -3 + 52, 1, 161.9, 360.2 , 0 );
setMoveKey( spep_8 -3 + 54, 1, 163.1, 365.1 , 0 );
setMoveKey( spep_8 -3 + 56, 1, 164.2, 370 , 0 );
setMoveKey( spep_8 -3 + 58, 1, 165.4, 375 , 0 );
setMoveKey( spep_8 -3 + 60, 1, 166.6, 379.9 , 0 );
setMoveKey( spep_8 -3 + 62, 1, 167.7, 384.8 , 0 );
setMoveKey( spep_8 -3 + 64, 1, 168.9, 389.7 , 0 );
setMoveKey( spep_8 -3 + 66, 1, 170, 394.6 , 0 );
setMoveKey( spep_8 -3 + 68, 1, 170, 394.6 , 0 );

setScaleKey( spep_8 + 0, 1, 5.28, 5.12 );
setScaleKey( spep_8 + 1, 1, 4.85, 4.7 );
setScaleKey( spep_8 + 2, 1, 4.48, 4.33 );
setScaleKey( spep_8 -3 + 6, 1, 4.14, 3.99 );
setScaleKey( spep_8 -3 + 8, 1, 3.83, 3.69 );
setScaleKey( spep_8 -3 + 10, 1, 3.55, 3.41 );
setScaleKey( spep_8 -3 + 12, 1, 3.28, 3.15 );
setScaleKey( spep_8 -3 + 14, 1, 3.04, 2.91 );
setScaleKey( spep_8 -3 + 16, 1, 2.8, 2.69 );
setScaleKey( spep_8 -3 + 18, 1, 2.59, 2.47 );
setScaleKey( spep_8 -3 + 20, 1, 2.38, 2.27 );
setScaleKey( spep_8 -3 + 22, 1, 2.18, 2.08 );
setScaleKey( spep_8 -3 + 24, 1, 2, 1.9 );
setScaleKey( spep_8 -3 + 26, 1, 1.82, 1.74 );
setScaleKey( spep_8 -3 + 28, 1, 1.66, 1.58 );
setScaleKey( spep_8 -3 + 30, 1, 1.5, 1.42 );
setScaleKey( spep_8 -3 + 32, 1, 1.35, 1.28 );
setScaleKey( spep_8 -3 + 34, 1, 1.21, 1.14 );
setScaleKey( spep_8 -3 + 36, 1, 1.07, 1.01 );
setScaleKey( spep_8 -3 + 38, 1, 0.95, 0.89 );
setScaleKey( spep_8 -3 + 40, 1, 0.83, 0.78 );
setScaleKey( spep_8 -3 + 42, 1, 0.71, 0.67 );
setScaleKey( spep_8 -3 + 44, 1, 0.6, 0.57 );
setScaleKey( spep_8 -3 + 46, 1, 0.5, 0.47 );
setScaleKey( spep_8 -3 + 48, 1, 0.42, 0.39 );
setScaleKey( spep_8 -3 + 50, 1, 0.33, 0.31 );
setScaleKey( spep_8 -3 + 52, 1, 0.34, 0.32 );
setScaleKey( spep_8 -3 + 54, 1, 0.34, 0.32 );
setScaleKey( spep_8 -3 + 56, 1, 0.35, 0.33 );
setScaleKey( spep_8 -3 + 58, 1, 0.35, 0.33 );
setScaleKey( spep_8 -3 + 60, 1, 0.35, 0.34 );
setScaleKey( spep_8 -3 + 62, 1, 0.36, 0.34 );
setScaleKey( spep_8 -3 + 64, 1, 0.36, 0.35 );
setScaleKey( spep_8 -3 + 66, 1, 0.36, 0.36 );
setScaleKey( spep_8 -3 + 68, 1, 0.36, 0.36 );

setRotateKey( spep_8 + 0, 1, 13.6 );
setRotateKey( spep_8 + 1, 1, 13.7 );
setRotateKey( spep_8 -3 + 68, 1, 13.7 );

setAlphaKey( spep_8 + 0, 1, 255 );
setAlphaKey( spep_8 -3 + 47, 1, 255 );
setAlphaKey( spep_8 -3 + 48, 1, 100 );
setAlphaKey( spep_8 -3 + 50, 1, 0 );
setAlphaKey( spep_8 -3 + 67, 1, 0 );
setAlphaKey( spep_8 -3 + 68, 1, 255 );

-- ** 音 ** --
--敵星になる
SE053 = playSeVer2( spep_8 + 44, 1042, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 76;


------------------------------------------------------
-- フィニッシュ絵(116F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_12, 0x100, -1, 0, 0, 0 );  --フィニッシュ絵 ef_009
setEffMoveKey( spep_9 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_9 + 116, finish, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_9 + 116, finish, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 116, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 116, finish, 255 );

-- ** 音 ** --
--回ってポーズ
SE054 = playSeVer2( spep_9 + 4, 1003, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_9 + 12, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 12, SE055, 170 );
SE056 = playSeVer2( spep_9 + 18, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 18, SE056, 316 );
SE057 = playSeVer2( spep_9 + 28, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 28, SE057, 162 );

--ラスト決めポーズ
SE058 = playSeVer2( spep_9 + 50, 1233, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_9 + 58, 1062, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_9 + 58, 1273, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_9 + 58, 1112, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 116, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 6 );
endPhase( spep_9 + 106 );

end