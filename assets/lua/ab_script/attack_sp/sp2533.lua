--1026230:ドクター・ミュー&ドクター・ゲロ_地獄から蘇る強敵たち
--sp_effect_a7_00060

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
SP_01 = 161586; --冒頭 ef_001
SP_02 = 161587; --ヤコンの攻撃 ef_002_front
SP_03 = 161588; --ヤコンの攻撃 ef_002_back
SP_04 = 161591; --ダブルロケットパンチ ef_003
SP_05 = 161593; --ロケットパンチ命中 ef_004_front
SP_06 = 161594; --ロケットパンチ命中 ef_004_back
SP_07 = 161597; --三人でビーム ef_005
SP_08 = 161599; --ビームが命中 ef_006_front
SP_09 = 161600; --ビームが命中 ef_006_back
SP_10 = 161603; --ナッパ ef_007_front
SP_11 = 161604; --ナッパ ef_007_back
SP_12 = 161607; --フィニッシュ ef_008

--敵側
SP_02r = 161589; --ヤコンの攻撃 ef_002_re_front
SP_03r = 161590; --ヤコンの攻撃 ef_002_re_back
SP_04r = 161592; --ダブルロケットパンチ ef_003_re
SP_05r = 161595; --ロケットパンチ命中 ef_004_re_front
SP_06r = 161596; --ロケットパンチ命中 ef_004_re_back
SP_07r = 161598; --三人でビーム ef_005_re
SP_08r = 161601; --ビームが命中 ef_006_re_front
SP_09r = 161602; --ビームが命中 ef_006_re_back
SP_10r = 161605; --ナッパ ef_007_re_front
SP_11r = 161606; --ナッパ ef_007_re_back
SP_12r = 161608; --フィニッシュ ef_008_re

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
-- 冒頭(186F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --冒頭   ef_001

setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 186, first_f, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 186, first_f, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 186, first_f, 0 );

setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 186 - 2, first_f, 255 );
setEffAlphaKey( spep_0 + 186 - 1, first_f, 255 );
setEffAlphaKey( spep_0 + 186, first_f, 0 );

--//////////セリフカットインテンプレ
------------------------------------------------------
spep_x = spep_0 + 10;  --表示させたいフレーム−10の分を足す！

speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);
------------------------------------------------------

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--腕上げる
SE003 = playSeVer2( spep_0 + 118, 1003, "", 0, 0, 0, -1);

--集中線
SE004 = playSeVer2( spep_0 + 138, 20, "",spep_0 + 202, 0, 10, -1);
SE005 = playSeVer2( spep_0 + 138, 12, "",spep_0 + 202, 0, 10, -1);

--敵向かってくる
SE006 = playSeVer2( spep_0 + 146, 1117, "",spep_0 + 202, 0, 10, -1);
SE007 = playSeVer2( spep_0 + 146, 1116, "",spep_0 + 202, 0, 10, -1);
SE008 = playSeVer2( spep_0 + 146, 1314, "",spep_0 + 202, 0, 10, -1);
SE009 = playSeVer2( spep_0 + 146, 9, "",spep_0 + 202, 0, 10, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 186 + 2, 0, 0, 0, 0, 255); 

--黒フェード
entryFade( spep_0 + 0, 0, 2, 8, 0, 0, 0, 255 );  --black fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 186;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
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
SE999 = playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--ヤコン振りかぶる
SE011 = playSeVer2( spep_1 + 92, 1117, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- ヤコンの攻撃(72F)
------------------------------------------------------

-- ** エフェクト等 ** --
slash_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --ヤコンの攻撃 ef_002_front

setEffMoveKey( spep_2 + 0, slash_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 72, slash_f, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, slash_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 72, slash_f, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, slash_f, 0 );
setEffRotateKey( spep_2 + 72, slash_f, 0 );

setEffAlphaKey( spep_2 + 0, slash_f, 255 );
setEffAlphaKey( spep_2 + 72 - 2, slash_f, 255 );
setEffAlphaKey( spep_2 + 72 - 1, slash_f, 255 );
setEffAlphaKey( spep_2 + 72, slash_f, 0 );


slash_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --ヤコンの攻撃 ef_002_back
setEffMoveKey( spep_2 + 0, slash_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 72, slash_b, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, slash_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 72, slash_b, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, slash_b, 0 );
setEffRotateKey( spep_2 + 72, slash_b, 0 );

setEffAlphaKey( spep_2 + 0, slash_b, 255 );
setEffAlphaKey( spep_2 + 72 - 2, slash_b, 255 );
setEffAlphaKey( spep_2 + 72 - 1, slash_b, 255 );
setEffAlphaKey( spep_2 + 72, slash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -2 + 2, 1, 1 );

changeAnime( spep_2 -2 + 2, 1, 118 );

setMoveKey( spep_2 -2 + 2, 1, 682.4, 11.4 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 613.2, 2.1 , 0 );
setMoveKey( spep_2 -3 + 5, 1, 613.2, 2.1 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 548.2, -6.6 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 548.2, -6.6 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 491.1, -14.3 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 491.1, -14.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 443.4, -20.7 , 0 );
setMoveKey( spep_2 -3 + 11, 1, 443.4, -20.7 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 404.8, -25.9 , 0 );
setMoveKey( spep_2 -3 + 13, 1, 404.8, -25.9 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 374, -30 , 0 );
setMoveKey( spep_2 -3 + 15, 1, 374, -30 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 349.6, -33.3 , 0 );
setMoveKey( spep_2 -3 + 17, 1, 349.6, -33.3 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 330.3, -35.9 , 0 );
setMoveKey( spep_2 -3 + 19, 1, 330.3, -35.9 , 0 );

setScaleKey( spep_2 -2 + 2, 1, 5, 5 );
setScaleKey( spep_2 -3 + 4, 1, 4.62, 4.62 );
setScaleKey( spep_2 -3 + 5, 1, 4.62, 4.62 );
setScaleKey( spep_2 -3 + 6, 1, 4.26, 4.26 );
setScaleKey( spep_2 -3 + 7, 1, 4.26, 4.26 );
setScaleKey( spep_2 -3 + 8, 1, 3.95, 3.95 );
setScaleKey( spep_2 -3 + 9, 1, 3.95, 3.95 );
setScaleKey( spep_2 -3 + 10, 1, 3.68, 3.68 );
setScaleKey( spep_2 -3 + 11, 1, 3.68, 3.68 );
setScaleKey( spep_2 -3 + 12, 1, 3.47, 3.47 );
setScaleKey( spep_2 -3 + 13, 1, 3.47, 3.47 );
setScaleKey( spep_2 -3 + 14, 1, 3.3, 3.3 );
setScaleKey( spep_2 -3 + 15, 1, 3.3, 3.3 );
setScaleKey( spep_2 -3 + 16, 1, 3.17, 3.17 );
setScaleKey( spep_2 -3 + 17, 1, 3.17, 3.17 );
setScaleKey( spep_2 -3 + 18, 1, 3.06, 3.06 );
setScaleKey( spep_2 -3 + 19, 1, 3.06, 3.06 );

setRotateKey( spep_2 -2 + 2, 1, 0 );
setRotateKey( spep_2 -3 + 19, 1, 0 );

-- ** 音 ** --
--ヤコン振りかぶる
SE012 = playSeVer2( spep_2 + 4, 1004, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 72 + 2, 0, 0, 0, 0, 255); 

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 16; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE999, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 330.3, -35.9 , 0 );
    setMoveKey( SP_dodge + 1, 1, 315.1, -37.9 , 0 );
    setMoveKey( SP_dodge + 2, 1, 315.1, -37.9 , 0 );
    setMoveKey( SP_dodge + 3, 1, 303.2, -39.5 , 0 );
    setMoveKey( SP_dodge + 4, 1, 303.2, -39.5 , 0 );
    setMoveKey( SP_dodge + 5, 1, 294.1, -40.7 , 0 );
    setMoveKey( SP_dodge + 6, 1, 294.1, -40.7 , 0 );
    setMoveKey( SP_dodge + 7, 1, 287.1, -41.7 , 0 );
    setMoveKey( SP_dodge + 8, 1, 287.1, -41.7 , 0 );
    setMoveKey( SP_dodge + 9, 1, 282, -42.3 , 0 );
    setMoveKey( SP_dodge + 10, 1, 282, -42.3 , 0 );

    setScaleKey( SP_dodge + 0, 1, 3.06, 3.06 );
    setScaleKey( SP_dodge + 1, 1, 2.98, 2.98 );
    setScaleKey( SP_dodge + 2, 1, 2.98, 2.98 );
    setScaleKey( SP_dodge + 3, 1, 2.91, 2.91 );
    setScaleKey( SP_dodge + 4, 1, 2.91, 2.91 );
    setScaleKey( SP_dodge + 5, 1, 2.86, 2.86 );
    setScaleKey( SP_dodge + 6, 1, 2.86, 2.86 );
    setScaleKey( SP_dodge + 7, 1, 2.82, 2.82 );
    setScaleKey( SP_dodge + 8, 1, 2.82, 2.82 );
    setScaleKey( SP_dodge + 9, 1, 2.79, 2.79 );
    setScaleKey( SP_dodge + 10, 1, 2.79, 2.79 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 46, 1, 0 );

changeAnime( spep_2 -3 + 38, 1, 107 );

setMoveKey( spep_2 -3 + 20, 1, 315.1, -37.9 , 0 );
setMoveKey( spep_2 -3 + 21, 1, 315.1, -37.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 303.2, -39.5 , 0 );
setMoveKey( spep_2 -3 + 23, 1, 303.2, -39.5 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 294.1, -40.7 , 0 );
setMoveKey( spep_2 -3 + 25, 1, 294.1, -40.7 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 287.1, -41.7 , 0 );
setMoveKey( spep_2 -3 + 27, 1, 287.1, -41.7 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 282, -42.3 , 0 );
setMoveKey( spep_2 -3 + 29, 1, 282, -42.3 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 278.5, -42.8 , 0 );
setMoveKey( spep_2 -3 + 31, 1, 278.5, -42.8 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 276.3, -43.1 , 0 );
setMoveKey( spep_2 -3 + 33, 1, 276.3, -43.1 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 275.3, -43.2 , 0 );
setMoveKey( spep_2 -3 + 35, 1, 275.3, -43.2 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 272.5, -42 , 0 );
setMoveKey( spep_2 -3 + 37, 1, 272.5, -42 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 260.3, 15.1 , 0 );
setMoveKey( spep_2 -3 + 39, 1, 260.3, 15.1 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 308.5, 36.7 , 0 );
setMoveKey( spep_2 -3 + 41, 1, 308.5, 36.7 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 409.6, 55.5 , 0 );
setMoveKey( spep_2 -3 + 43, 1, 409.6, 55.5 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 857.5, 313.6 , 0 );
setMoveKey( spep_2 -3 + 45, 1, 857.5, 313.6 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 857.5, 313.6 , 0 );

setScaleKey( spep_2 -3 + 20, 1, 2.98, 2.98 );
setScaleKey( spep_2 -3 + 21, 1, 2.98, 2.98 );
setScaleKey( spep_2 -3 + 22, 1, 2.91, 2.91 );
setScaleKey( spep_2 -3 + 23, 1, 2.91, 2.91 );
setScaleKey( spep_2 -3 + 24, 1, 2.86, 2.86 );
setScaleKey( spep_2 -3 + 25, 1, 2.86, 2.86 );
setScaleKey( spep_2 -3 + 26, 1, 2.82, 2.82 );
setScaleKey( spep_2 -3 + 27, 1, 2.82, 2.82 );
setScaleKey( spep_2 -3 + 28, 1, 2.79, 2.79 );
setScaleKey( spep_2 -3 + 29, 1, 2.79, 2.79 );
setScaleKey( spep_2 -3 + 30, 1, 2.77, 2.77 );
setScaleKey( spep_2 -3 + 31, 1, 2.77, 2.77 );
setScaleKey( spep_2 -3 + 32, 1, 2.76, 2.76 );
setScaleKey( spep_2 -3 + 33, 1, 2.76, 2.76 );
setScaleKey( spep_2 -3 + 34, 1, 2.76, 2.76 );
setScaleKey( spep_2 -3 + 35, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 36, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 37, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 38, 1, 1.29, 1.29 );
setScaleKey( spep_2 -3 + 39, 1, 1.29, 1.29 );
setScaleKey( spep_2 -3 + 40, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 41, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 42, 1, 2.57, 2.57 );
setScaleKey( spep_2 -3 + 43, 1, 2.57, 2.57 );
setScaleKey( spep_2 -3 + 44, 1, 5.6, 5.6 );
setScaleKey( spep_2 -3 + 45, 1, 5.6, 5.6 );
setScaleKey( spep_2 -3 + 46, 1, 5.6, 5.6 );

setRotateKey( spep_2 -3 + 20, 1, 0 );
setRotateKey( spep_2 -3 + 46, 1, 0 );

setBlendColor( spep_2 -3 + 36, 1, 3, 0, 0, 0, 1.0);
setBlendColor( spep_2 -3 + 37, 1, 3, 0, 0, 0, 1.0);
setBlendColor( spep_2 -3 + 38, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--ヤコン殴る
SE013 = playSeVer2( spep_2 + 32, 1187, "", 0, 0, 0, -1);

--画面遷移
SE014 = playSeVer2( spep_2 + 42, 1072, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 72;

------------------------------------------------------
-- ダブルロケットパンチ(74F)
------------------------------------------------------

-- ** エフェクト等 ** --
rocketpunch_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --ダブルロケットパンチ ef_003

setEffMoveKey( spep_3 + 0, rocketpunch_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 74, rocketpunch_f, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, rocketpunch_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 74, rocketpunch_f, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, rocketpunch_f, 0 );
setEffRotateKey( spep_3 + 74, rocketpunch_f, 0 );

setEffAlphaKey( spep_3 + 0, rocketpunch_f, 255 );
setEffAlphaKey( spep_3 + 74 - 2, rocketpunch_f, 255 );
setEffAlphaKey( spep_3 + 74 - 1, rocketpunch_f, 255 );
setEffAlphaKey( spep_3 + 74, rocketpunch_f, 0 );

-- ** 音 ** --
--集中線
SE015 = playSeVer2( spep_3 + 4, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 4, SE015, 79 );
SE016 = playSeVer2( spep_3 + 4, 22, "", 0, 0, 0, -1);

--構える
SE017 = playSeVer2( spep_3 + 26, 1012, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 30, 1003, "", 0, 0, 0, -1);

--ロケットパンチ発射
SE019 = playSeVer2( spep_3 + 48, 1027, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_3 + 48, 1193, "",spep_3 + 144, 0, 24, -1);
SE021 = playSeVer2( spep_3 + 48, 1137, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 48, SE021, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 74 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_4 = spep_3 + 74;

------------------------------------------------------
-- ロケットパンチ命中(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
punchhit_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --ロケットパンチ命中 ef_004_front
setEffMoveKey( spep_4 + 0, punchhit_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, punchhit_f, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, punchhit_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, punchhit_f, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, punchhit_f, 0 );
setEffRotateKey( spep_4 + 100, punchhit_f, 0 );

setEffAlphaKey( spep_4 + 0, punchhit_f, 255 );
setEffAlphaKey( spep_4 + 100 - 2, punchhit_f, 255 );
setEffAlphaKey( spep_4 + 100 - 1, punchhit_f, 255 );
setEffAlphaKey( spep_4 + 100, punchhit_f, 0 );

punchhit_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --ロケットパンチ命中 ef_004_back
setEffMoveKey( spep_4 + 0, punchhit_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, punchhit_b, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, punchhit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, punchhit_b, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, punchhit_b, 0 );
setEffRotateKey( spep_4 + 100, punchhit_b, 0 );

setEffAlphaKey( spep_4 + 0, punchhit_b, 255 );
setEffAlphaKey( spep_4 + 100 - 2, punchhit_b, 255 );
setEffAlphaKey( spep_4 + 100 - 1, punchhit_b, 255 );
setEffAlphaKey( spep_4 + 100, punchhit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -2 + 2, 1, 1 );
setDisp( spep_4 -3 + 46, 1, 0 );

changeAnime( spep_4 -2 + 2, 1, 105 );
changeAnime( spep_4 -3 + 44, 1, 108 );

setMoveKey( spep_4 -2 + 2, 1, -1.1, -9.8 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 52.9, -51.2 , 0 );
setMoveKey( spep_4 -3 + 5, 1, 52.9, -51.2 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 63.7, -78 , 0 );
setMoveKey( spep_4 -3 + 7, 1, 63.7, -78 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 63.6, -87.1 , 0 );
setMoveKey( spep_4 -3 + 9, 1, 63.6, -87.1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 63.4, -89.6 , 0 );
setMoveKey( spep_4 -3 + 11, 1, 63.4, -89.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 63.1, -92 , 0 );
setMoveKey( spep_4 -3 + 13, 1, 63.1, -92 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 62.8, -94.2 , 0 );
setMoveKey( spep_4 -3 + 15, 1, 62.8, -94.2 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 62.5, -96.3 , 0 );
setMoveKey( spep_4 -3 + 17, 1, 62.5, -96.3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 62.3, -98.2 , 0 );
setMoveKey( spep_4 -3 + 19, 1, 62.3, -98.2 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 62, -99.9 , 0 );
setMoveKey( spep_4 -3 + 21, 1, 62, -99.9 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 61.7, -101.6 , 0 );
setMoveKey( spep_4 -3 + 23, 1, 61.7, -101.6 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 61.5, -103 , 0 );
setMoveKey( spep_4 -3 + 25, 1, 61.5, -103 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 61.2, -104.3 , 0 );
setMoveKey( spep_4 -3 + 27, 1, 61.2, -104.3 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 61, -105.5 , 0 );
setMoveKey( spep_4 -3 + 29, 1, 61, -105.5 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 60.8, -106.5 , 0 );
setMoveKey( spep_4 -3 + 31, 1, 60.8, -106.5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 60.7, -107.3 , 0 );
setMoveKey( spep_4 -3 + 33, 1, 60.7, -107.3 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 60.5, -108 , 0 );
setMoveKey( spep_4 -3 + 35, 1, 60.5, -108 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 60.4, -108.6 , 0 );
setMoveKey( spep_4 -3 + 37, 1, 60.4, -108.6 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 60.3, -109 , 0 );
setMoveKey( spep_4 -3 + 39, 1, 60.3, -109 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 60.3, -109.2 , 0 );
setMoveKey( spep_4 -3 + 41, 1, 60.3, -109.2 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 60.3, -109.3 , 0 );
setMoveKey( spep_4 -3 + 43, 1, 60.3, -109.3 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 75.3, -145.3 , 0 );
setMoveKey( spep_4 -3 + 45, 1, 75.3, -145.3 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 75.3, -145.3 , 0 );

setScaleKey( spep_4 -2 + 2, 1, 18.62, 18.62 );
setScaleKey( spep_4 -3 + 4, 1, 9.32, 9.32 );
setScaleKey( spep_4 -3 + 5, 1, 9.32, 9.32 );
setScaleKey( spep_4 -3 + 6, 1, 3.74, 3.74 );
setScaleKey( spep_4 -3 + 7, 1, 3.74, 3.74 );
setScaleKey( spep_4 -3 + 8, 1, 1.88, 1.88 );
setScaleKey( spep_4 -3 + 9, 1, 1.88, 1.88 );
setScaleKey( spep_4 -3 + 10, 1, 1.85, 1.85 );
setScaleKey( spep_4 -3 + 11, 1, 1.85, 1.85 );
setScaleKey( spep_4 -3 + 12, 1, 1.82, 1.82 );
setScaleKey( spep_4 -3 + 13, 1, 1.82, 1.82 );
setScaleKey( spep_4 -3 + 14, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 15, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 16, 1, 1.78, 1.78 );
setScaleKey( spep_4 -3 + 17, 1, 1.78, 1.78 );
setScaleKey( spep_4 -3 + 18, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 19, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 20, 1, 1.74, 1.74 );
setScaleKey( spep_4 -3 + 21, 1, 1.74, 1.74 );
setScaleKey( spep_4 -3 + 22, 1, 1.72, 1.72 );
setScaleKey( spep_4 -3 + 23, 1, 1.72, 1.72 );
setScaleKey( spep_4 -3 + 24, 1, 1.7, 1.7 );
setScaleKey( spep_4 -3 + 25, 1, 1.7, 1.7 );
setScaleKey( spep_4 -3 + 26, 1, 1.69, 1.69 );
setScaleKey( spep_4 -3 + 27, 1, 1.69, 1.69 );
setScaleKey( spep_4 -3 + 28, 1, 1.67, 1.67 );
setScaleKey( spep_4 -3 + 29, 1, 1.67, 1.67 );
setScaleKey( spep_4 -3 + 30, 1, 1.66, 1.66 );
setScaleKey( spep_4 -3 + 31, 1, 1.66, 1.66 );
setScaleKey( spep_4 -3 + 32, 1, 1.65, 1.65 );
setScaleKey( spep_4 -3 + 33, 1, 1.65, 1.65 );
setScaleKey( spep_4 -3 + 34, 1, 1.65, 1.65 );
setScaleKey( spep_4 -3 + 35, 1, 1.65, 1.65 );
setScaleKey( spep_4 -3 + 36, 1, 1.64, 1.64 );
setScaleKey( spep_4 -3 + 37, 1, 1.64, 1.64 );
setScaleKey( spep_4 -3 + 39, 1, 1.64, 1.64 );
setScaleKey( spep_4 -3 + 40, 1, 1.63, 1.63 );
setScaleKey( spep_4 -3 + 41, 1, 1.63, 1.63 );
setScaleKey( spep_4 -3 + 43, 1, 1.63, 1.63 );
setScaleKey( spep_4 -3 + 44, 1, 1.7, 1.7 );
setScaleKey( spep_4 -3 + 45, 1, 1.7, 1.7 );
setScaleKey( spep_4 -3 + 46, 1, 1.7, 1.7 );

setRotateKey( spep_4 -2 + 2, 1, -2.7 );
setRotateKey( spep_4 -3 + 4, 1, -1.2 );
setRotateKey( spep_4 -3 + 5, 1, -1.2 );
setRotateKey( spep_4 -3 + 6, 1, -0.3 );
setRotateKey( spep_4 -3 + 7, 1, -0.3 );
setRotateKey( spep_4 -3 + 8, 1, 0 );
setRotateKey( spep_4 -3 + 9, 1, 0 );
setRotateKey( spep_4 -3 + 10, 1, 0.4 );
setRotateKey( spep_4 -3 + 11, 1, 0.4 );
setRotateKey( spep_4 -3 + 12, 1, 0.7 );
setRotateKey( spep_4 -3 + 13, 1, 0.7 );
setRotateKey( spep_4 -3 + 14, 1, 1 );
setRotateKey( spep_4 -3 + 15, 1, 1 );
setRotateKey( spep_4 -3 + 16, 1, 1.3 );
setRotateKey( spep_4 -3 + 17, 1, 1.3 );
setRotateKey( spep_4 -3 + 18, 1, 1.6 );
setRotateKey( spep_4 -3 + 19, 1, 1.6 );
setRotateKey( spep_4 -3 + 20, 1, 1.9 );
setRotateKey( spep_4 -3 + 21, 1, 1.9 );
setRotateKey( spep_4 -3 + 22, 1, 2.1 );
setRotateKey( spep_4 -3 + 23, 1, 2.1 );
setRotateKey( spep_4 -3 + 24, 1, 2.3 );
setRotateKey( spep_4 -3 + 25, 1, 2.3 );
setRotateKey( spep_4 -3 + 26, 1, 2.5 );
setRotateKey( spep_4 -3 + 27, 1, 2.5 );
setRotateKey( spep_4 -3 + 28, 1, 2.7 );
setRotateKey( spep_4 -3 + 29, 1, 2.7 );
setRotateKey( spep_4 -3 + 30, 1, 2.8 );
setRotateKey( spep_4 -3 + 31, 1, 2.8 );
setRotateKey( spep_4 -3 + 32, 1, 2.9 );
setRotateKey( spep_4 -3 + 33, 1, 2.9 );
setRotateKey( spep_4 -3 + 34, 1, 3 );
setRotateKey( spep_4 -3 + 35, 1, 3 );
setRotateKey( spep_4 -3 + 36, 1, 3.1 );
setRotateKey( spep_4 -3 + 37, 1, 3.1 );
setRotateKey( spep_4 -3 + 38, 1, 3.2 );
setRotateKey( spep_4 -3 + 39, 1, 3.2 );
setRotateKey( spep_4 -3 + 43, 1, 3.2 );
setRotateKey( spep_4 -3 + 44, 1, 85.2 );
setRotateKey( spep_4 -3 + 45, 1, 85.2 );
setRotateKey( spep_4 -3 + 46, 1, 85.2 );

-- ** 音 ** --
--爆発
SE022 = playSeVer2( spep_4 + 44, 1159, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_4 + 44, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 100 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_5 = spep_4 + 100;

------------------------------------------------------
-- 三人でビーム(118F)
------------------------------------------------------

-- ** エフェクト等 ** --
triplebeam_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --三人でビーム ef_005

setEffMoveKey( spep_5 + 0, triplebeam_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 118, triplebeam_f, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, triplebeam_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 118, triplebeam_f, 1.0, 1.0 );

setEffRotateKey( spep_5 + 0, triplebeam_f, 0 );
setEffRotateKey( spep_5 + 118, triplebeamh_f, 0 );

setEffAlphaKey( spep_5 + 0, triplebeam_f, 255 );
setEffAlphaKey( spep_5 + 118 - 2, triplebeam_f, 255 );
setEffAlphaKey( spep_5 + 118 - 1, triplebeam_f, 255 );
setEffAlphaKey( spep_5 + 118, triplebeam_f, 0 );

-- ** 音 ** --
--下から出てくる
SE024 = playSeVer2( spep_5 + 4, 1116, "",spep_5 + 60, 0, 28, -1);
SE025 = playSeVer2( spep_5 + 4, 1002, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 4, SE025, 79 );

--気弾発射１
SE026 = playSeVer2( spep_5 + 40, 1177, "",spep_5 + 160, 0, 28, -1);

--気弾発射２
SE027 = playSeVer2( spep_5 + 66, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 66, SE027, 145 );

--気弾発射３
SE028 = playSeVer2( spep_5 + 90, 1146, "",spep_5 + 200, 0, 34, -1);

--爆発
SE029 = playSeVer2( spep_5 + 90, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 118 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_6 = spep_5 + 118;

------------------------------------------------------
-- ビームが命中(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
beamhit_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --ビームが命中 ef_006_front
setEffMoveKey( spep_6 + 0, beamhit_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 98, beamhit_f, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, beamhit_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 98, beamhit_f, 1.0, 1.0 );

setEffRotateKey( spep_6 + 0, beamhit_f, 0 );
setEffRotateKey( spep_6 + 98, beamhit_f, 0 );

setEffAlphaKey( spep_6 + 0, beamhit_f, 255 );
setEffAlphaKey( spep_6 + 98 - 2, beamhit_f, 255 );
setEffAlphaKey( spep_6 + 98 - 1, beamhit_f, 255 );
setEffAlphaKey( spep_6 + 98, beamhit_f, 0 );

beamhit_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --ビームが命中 ef_006_back
setEffMoveKey( spep_6 + 0, beamhit_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 98, beamhit_b, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, beamhit_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 98, beamhit_b, 1.0, 1.0 );

setEffRotateKey( spep_6 + 0, beamhit_b, 0 );
setEffRotateKey( spep_6 + 98, beamhit_b, 0 );

setEffAlphaKey( spep_6 + 0, beamhit_b, 255 );
setEffAlphaKey( spep_6 + 98 - 2, beamhit_b, 255 );
setEffAlphaKey( spep_6 + 98 - 1, beamhit_b, 255 );
setEffAlphaKey( spep_6 + 98, beamhit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 -2 + 2, 1, 1 );
setDisp( spep_6 -3 + 12, 1, 0 );

changeAnime( spep_6 -2 + 2, 1, 108 );

setMoveKey( spep_6 -2 + 2, 1, 54.3, -410.9 , 0 );
setMoveKey( spep_6 -3 + 4, 1, 54.3, -410.9 , 0 );
setMoveKey( spep_6 -3 + 5, 1, 54.3, -410.9 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 57.3, -383.1 , 0 );
setMoveKey( spep_6 -3 + 7, 1, 57.3, -383.1 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 60.3, -355.4 , 0 );
setMoveKey( spep_6 -3 + 9, 1, 60.3, -355.4 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 63.3, -327.5 , 0 );
setMoveKey( spep_6 -3 + 11, 1, 63.3, -327.5 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 63.3, -327.5 , 0 );

setScaleKey( spep_6 -2 + 2, 1, 7.11, 7.11 );
setScaleKey( spep_6 -3 + 4, 1, 7.11, 7.11 );
setScaleKey( spep_6 -3 + 5, 1, 7.11, 7.11 );
setScaleKey( spep_6 -3 + 6, 1, 5.73, 5.73 );
setScaleKey( spep_6 -3 + 7, 1, 5.73, 5.73 );
setScaleKey( spep_6 -3 + 8, 1, 4.35, 4.35 );
setScaleKey( spep_6 -3 + 9, 1, 4.35, 4.35 );
setScaleKey( spep_6 -3 + 10, 1, 2.97, 2.97 );
setScaleKey( spep_6 -3 + 11, 1, 2.97, 2.97 );
setScaleKey( spep_6 -3 + 12, 1, 2.97, 2.97 );

setRotateKey( spep_6 -2 + 2, 1, 82.7 );
setRotateKey( spep_6 -3 + 12, 1, 82.7 );

-- ** 音 ** --
--爆発
SE030 = playSeVer2( spep_6 + 10, 1011, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_6 + 26, 1023, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_6 + 46, 1159, "", 0, 0, 0, -1);

--画面遷移
SE033 = playSeVer2( spep_6 + 96, 44, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 98 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_7 = spep_6 + 98;

------------------------------------------------------
-- ナッパ(274F)
------------------------------------------------------

-- ** エフェクト等 ** --
nappa_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --ナッパ　ef_007_front
setEffMoveKey( spep_7 + 0, nappa_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 274, nappa_f, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, nappa_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 274, nappa_f, 1.0, 1.0 );

setEffRotateKey( spep_7 + 0, nappa_f, 0 );
setEffRotateKey( spep_7 + 274, nappa_f, 0 );

setEffAlphaKey( spep_7 + 0, nappa_f, 255 );
setEffAlphaKey( spep_7 + 274 - 2, nappa_f, 255 );
setEffAlphaKey( spep_7 + 274 - 1, nappa_f, 255 );
setEffAlphaKey( spep_7 + 274, nappa_f, 0 );

nappa_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --ナッパ　ef_007_back
setEffMoveKey( spep_7 + 0, nappa_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 274, nappa_b, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, nappa_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 274, nappa_b, 1.0, 1.0 );

setEffRotateKey( spep_7 + 0, nappa_b, 0 );
setEffRotateKey( spep_7 + 274, nappa_b, 0 );

setEffAlphaKey( spep_7 + 0, nappa_b, 255 );
setEffAlphaKey( spep_7 + 274 - 2, nappa_b, 255 );
setEffAlphaKey( spep_7 + 274 - 1, nappa_b, 255 );
setEffAlphaKey( spep_7 + 274, nappa_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_7 -2 + 2, 1, 1 );
setDisp( spep_7 -3 + 29, 1, 0 );

changeAnime( spep_7 -2 + 2, 1, 106 );

setMoveKey( spep_7 -2 + 2, 1, -432.6, -611.4 , 0 );
setMoveKey( spep_7 -3 + 4, 1, -504.4, -657.8 , 0 );
setMoveKey( spep_7 -3 + 5, 1, -504.4, -657.8 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -576.9, -704.6 , 0 );
setMoveKey( spep_7 -3 + 7, 1, -576.9, -704.6 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -649.8, -751.7 , 0 );
setMoveKey( spep_7 -3 + 9, 1, -649.8, -751.7 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -722.7, -798.9 , 0 );
setMoveKey( spep_7 -3 + 11, 1, -722.7, -798.9 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -795.3, -845.8 , 0 );
setMoveKey( spep_7 -3 + 13, 1, -795.3, -845.8 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -867.1, -892.1 , 0 );
setMoveKey( spep_7 -3 + 15, 1, -867.1, -892.1 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -937.9, -937.8 , 0 );
setMoveKey( spep_7 -3 + 17, 1, -937.9, -937.8 , 0 );
setMoveKey( spep_7 -3 + 18, 1, -1007.2, -982.6 , 0 );
setMoveKey( spep_7 -3 + 19, 1, -1007.2, -982.6 , 0 );
setMoveKey( spep_7 -3 + 20, 1, -1074.7, -1026.3 , 0 );
setMoveKey( spep_7 -3 + 21, 1, -1074.7, -1026.3 , 0 );
setMoveKey( spep_7 -3 + 22, 1, -1140.3, -1068.6 , 0 );
setMoveKey( spep_7 -3 + 23, 1, -1140.3, -1068.6 , 0 );
setMoveKey( spep_7 -3 + 24, 1, -1203.8, -1109.6 , 0 );
setMoveKey( spep_7 -3 + 25, 1, -1203.8, -1109.6 , 0 );
setMoveKey( spep_7 -3 + 26, 1, -1264.8, -1149.1 , 0 );
setMoveKey( spep_7 -3 + 27, 1, -1264.8, -1149.1 , 0 );
setMoveKey( spep_7 -3 + 28, 1, -1323.4, -1186.9 , 0 );
setMoveKey( spep_7 -3 + 29, 1, -1323.4, -1186.9 , 0 );

setScaleKey( spep_7 -2 + 2, 1, 8.23, 8.23 );
setScaleKey( spep_7 -3 + 29, 1, 8.23, 8.23 );

setRotateKey( spep_7 -2 + 2, 1, -23.7 );
setRotateKey( spep_7 -3 + 29, 1, -23.7 );

-- ** 音 ** --
--ナッパ踏み出す
SE034 = playSeVer2( spep_7 + 80, 1377, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 80, SE034, 141 );
SE035 = playSeVer2( spep_7 + 84, 1192, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_7 + 88, 1108, "", 0, 0, 0, -1);

--指立てる
SE037 = playSeVer2( spep_7 + 150, 1003, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_7 + 154, 1189, "", 0, 0, 0, -1);

--気溢れる
SE039 = playSeVer2( spep_7 + 178, 1191, "",spep_7 + 320, 0, 52, -1);
SE040 = playSeVer2( spep_7 + 178, 1248, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_7 + 182, 1127, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_7 + 182, 1354, "", 0, 0, 0, -1);

--周囲爆発
SE043 = playSeVer2( spep_7 + 216, 1024, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_7 + 216, 1159, "", 0, 0, 0, -1);

--俯瞰爆発
SE045 = playSeVer2( spep_7 + 268, 1226, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 274 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_8 = spep_7 + 274;


------------------------------------------------------
-- フィニッシュ(182F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_8 + 0, SP_12, 0x100, -1, 0, 0, 0 );  --フィニッシュ ef_008

setEffMoveKey( spep_8 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 182, finish_f, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 182, finish_f, 1.0, 1.0 );

setEffRotateKey( spep_8 + 0, finish_f, 0 );
setEffRotateKey( spep_8 + 182, finish_f, 0 );

setEffAlphaKey( spep_8 + 0, finish_f, 255 );
setEffAlphaKey( spep_8 + 182, finish_f, 255 );


-- ** 音 ** --
--俯瞰爆発
SE046 = playSeVer2( spep_8 + 4, 1068, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_8 + 32, 1188, "", 0, 0, 0, -1);

--爆風
SE048 = playSeVer2( spep_8 + 72, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 72, SE048, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 182 + 2, 0, 0, 0, 0, 255); 


-- ** ダメージ表示 ** --
dealDamage( spep_8 + 62 );
endPhase( spep_8 + 172 );

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 冒頭(186F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --冒頭   ef_001

setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 186, first_f, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 186, first_f, -1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 186, first_f, 0 );

setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 186 - 2, first_f, 255 );
setEffAlphaKey( spep_0 + 186 - 1, first_f, 255 );
setEffAlphaKey( spep_0 + 186, first_f, 0 );

--//////////セリフカットインテンプレ
------------------------------------------------------
spep_x = spep_0 + 10;  --表示させたいフレーム−10の分を足す！

--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);
------------------------------------------------------

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--腕上げる
SE003 = playSeVer2( spep_0 + 118, 1003, "", 0, 0, 0, -1);

--集中線
SE004 = playSeVer2( spep_0 + 138, 20, "",spep_0 + 202, 0, 10, -1);
SE005 = playSeVer2( spep_0 + 138, 12, "",spep_0 + 202, 0, 10, -1);

--敵向かってくる
SE006 = playSeVer2( spep_0 + 146, 1117, "",spep_0 + 202, 0, 10, -1);
SE007 = playSeVer2( spep_0 + 146, 1116, "",spep_0 + 202, 0, 10, -1);
SE008 = playSeVer2( spep_0 + 146, 1314, "",spep_0 + 202, 0, 10, -1);
SE009 = playSeVer2( spep_0 + 146, 9, "",spep_0 + 202, 0, 10, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 186 + 2, 0, 0, 0, 0, 255); 

--黒フェード
entryFade( spep_0 + 0, 0, 2, 8, 0, 0, 0, 255 );  --black fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 186;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
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
SE999 = playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--ヤコン振りかぶる
SE011 = playSeVer2( spep_1 + 92, 1117, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- ヤコンの攻撃(72F)
------------------------------------------------------

-- ** エフェクト等 ** --
slash_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --ヤコンの攻撃 ef_002_front

setEffMoveKey( spep_2 + 0, slash_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 72, slash_f, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, slash_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 72, slash_f, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, slash_f, 0 );
setEffRotateKey( spep_2 + 72, slash_f, 0 );

setEffAlphaKey( spep_2 + 0, slash_f, 255 );
setEffAlphaKey( spep_2 + 72 - 2, slash_f, 255 );
setEffAlphaKey( spep_2 + 72 - 1, slash_f, 255 );
setEffAlphaKey( spep_2 + 72, slash_f, 0 );


slash_b = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --ヤコンの攻撃 ef_002_back
setEffMoveKey( spep_2 + 0, slash_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 72, slash_b, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, slash_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 72, slash_b, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, slash_b, 0 );
setEffRotateKey( spep_2 + 72, slash_b, 0 );

setEffAlphaKey( spep_2 + 0, slash_b, 255 );
setEffAlphaKey( spep_2 + 72 - 2, slash_b, 255 );
setEffAlphaKey( spep_2 + 72 - 1, slash_b, 255 );
setEffAlphaKey( spep_2 + 72, slash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -2 + 2, 1, 1 );

changeAnime( spep_2 -2 + 2, 1, 118 );

setMoveKey( spep_2 -2 + 2, 1, 682.4, 11.4 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 613.2, 2.1 , 0 );
setMoveKey( spep_2 -3 + 5, 1, 613.2, 2.1 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 548.2, -6.6 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 548.2, -6.6 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 491.1, -14.3 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 491.1, -14.3 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 443.4, -20.7 , 0 );
setMoveKey( spep_2 -3 + 11, 1, 443.4, -20.7 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 404.8, -25.9 , 0 );
setMoveKey( spep_2 -3 + 13, 1, 404.8, -25.9 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 374, -30 , 0 );
setMoveKey( spep_2 -3 + 15, 1, 374, -30 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 349.6, -33.3 , 0 );
setMoveKey( spep_2 -3 + 17, 1, 349.6, -33.3 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 330.3, -35.9 , 0 );
setMoveKey( spep_2 -3 + 19, 1, 330.3, -35.9 , 0 );

setScaleKey( spep_2 -2 + 2, 1, 5, 5 );
setScaleKey( spep_2 -3 + 4, 1, 4.62, 4.62 );
setScaleKey( spep_2 -3 + 5, 1, 4.62, 4.62 );
setScaleKey( spep_2 -3 + 6, 1, 4.26, 4.26 );
setScaleKey( spep_2 -3 + 7, 1, 4.26, 4.26 );
setScaleKey( spep_2 -3 + 8, 1, 3.95, 3.95 );
setScaleKey( spep_2 -3 + 9, 1, 3.95, 3.95 );
setScaleKey( spep_2 -3 + 10, 1, 3.68, 3.68 );
setScaleKey( spep_2 -3 + 11, 1, 3.68, 3.68 );
setScaleKey( spep_2 -3 + 12, 1, 3.47, 3.47 );
setScaleKey( spep_2 -3 + 13, 1, 3.47, 3.47 );
setScaleKey( spep_2 -3 + 14, 1, 3.3, 3.3 );
setScaleKey( spep_2 -3 + 15, 1, 3.3, 3.3 );
setScaleKey( spep_2 -3 + 16, 1, 3.17, 3.17 );
setScaleKey( spep_2 -3 + 17, 1, 3.17, 3.17 );
setScaleKey( spep_2 -3 + 18, 1, 3.06, 3.06 );
setScaleKey( spep_2 -3 + 19, 1, 3.06, 3.06 );

setRotateKey( spep_2 -2 + 2, 1, 0 );
setRotateKey( spep_2 -3 + 19, 1, 0 );

-- ** 音 ** --
--ヤコン振りかぶる
SE012 = playSeVer2( spep_2 + 4, 1004, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 72 + 2, 0, 0, 0, 0, 255); 

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 16; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE999, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 330.3, -35.9 , 0 );
    setMoveKey( SP_dodge + 1, 1, 315.1, -37.9 , 0 );
    setMoveKey( SP_dodge + 2, 1, 315.1, -37.9 , 0 );
    setMoveKey( SP_dodge + 3, 1, 303.2, -39.5 , 0 );
    setMoveKey( SP_dodge + 4, 1, 303.2, -39.5 , 0 );
    setMoveKey( SP_dodge + 5, 1, 294.1, -40.7 , 0 );
    setMoveKey( SP_dodge + 6, 1, 294.1, -40.7 , 0 );
    setMoveKey( SP_dodge + 7, 1, 287.1, -41.7 , 0 );
    setMoveKey( SP_dodge + 8, 1, 287.1, -41.7 , 0 );
    setMoveKey( SP_dodge + 9, 1, 282, -42.3 , 0 );
    setMoveKey( SP_dodge + 10, 1, 282, -42.3 , 0 );

    setScaleKey( SP_dodge + 0, 1, 3.06, 3.06 );
    setScaleKey( SP_dodge + 1, 1, 2.98, 2.98 );
    setScaleKey( SP_dodge + 2, 1, 2.98, 2.98 );
    setScaleKey( SP_dodge + 3, 1, 2.91, 2.91 );
    setScaleKey( SP_dodge + 4, 1, 2.91, 2.91 );
    setScaleKey( SP_dodge + 5, 1, 2.86, 2.86 );
    setScaleKey( SP_dodge + 6, 1, 2.86, 2.86 );
    setScaleKey( SP_dodge + 7, 1, 2.82, 2.82 );
    setScaleKey( SP_dodge + 8, 1, 2.82, 2.82 );
    setScaleKey( SP_dodge + 9, 1, 2.79, 2.79 );
    setScaleKey( SP_dodge + 10, 1, 2.79, 2.79 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 46, 1, 0 );

changeAnime( spep_2 -3 + 38, 1, 107 );

setMoveKey( spep_2 -3 + 20, 1, 315.1, -37.9 , 0 );
setMoveKey( spep_2 -3 + 21, 1, 315.1, -37.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 303.2, -39.5 , 0 );
setMoveKey( spep_2 -3 + 23, 1, 303.2, -39.5 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 294.1, -40.7 , 0 );
setMoveKey( spep_2 -3 + 25, 1, 294.1, -40.7 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 287.1, -41.7 , 0 );
setMoveKey( spep_2 -3 + 27, 1, 287.1, -41.7 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 282, -42.3 , 0 );
setMoveKey( spep_2 -3 + 29, 1, 282, -42.3 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 278.5, -42.8 , 0 );
setMoveKey( spep_2 -3 + 31, 1, 278.5, -42.8 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 276.3, -43.1 , 0 );
setMoveKey( spep_2 -3 + 33, 1, 276.3, -43.1 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 275.3, -43.2 , 0 );
setMoveKey( spep_2 -3 + 35, 1, 275.3, -43.2 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 272.5, -42 , 0 );
setMoveKey( spep_2 -3 + 37, 1, 272.5, -42 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 260.3, 15.1 , 0 );
setMoveKey( spep_2 -3 + 39, 1, 260.3, 15.1 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 308.5, 36.7 , 0 );
setMoveKey( spep_2 -3 + 41, 1, 308.5, 36.7 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 409.6, 55.5 , 0 );
setMoveKey( spep_2 -3 + 43, 1, 409.6, 55.5 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 857.5, 313.6 , 0 );
setMoveKey( spep_2 -3 + 45, 1, 857.5, 313.6 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 857.5, 313.6 , 0 );

setScaleKey( spep_2 -3 + 20, 1, 2.98, 2.98 );
setScaleKey( spep_2 -3 + 21, 1, 2.98, 2.98 );
setScaleKey( spep_2 -3 + 22, 1, 2.91, 2.91 );
setScaleKey( spep_2 -3 + 23, 1, 2.91, 2.91 );
setScaleKey( spep_2 -3 + 24, 1, 2.86, 2.86 );
setScaleKey( spep_2 -3 + 25, 1, 2.86, 2.86 );
setScaleKey( spep_2 -3 + 26, 1, 2.82, 2.82 );
setScaleKey( spep_2 -3 + 27, 1, 2.82, 2.82 );
setScaleKey( spep_2 -3 + 28, 1, 2.79, 2.79 );
setScaleKey( spep_2 -3 + 29, 1, 2.79, 2.79 );
setScaleKey( spep_2 -3 + 30, 1, 2.77, 2.77 );
setScaleKey( spep_2 -3 + 31, 1, 2.77, 2.77 );
setScaleKey( spep_2 -3 + 32, 1, 2.76, 2.76 );
setScaleKey( spep_2 -3 + 33, 1, 2.76, 2.76 );
setScaleKey( spep_2 -3 + 34, 1, 2.76, 2.76 );
setScaleKey( spep_2 -3 + 35, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 36, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 37, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 38, 1, 1.29, 1.29 );
setScaleKey( spep_2 -3 + 39, 1, 1.29, 1.29 );
setScaleKey( spep_2 -3 + 40, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 41, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 42, 1, 2.57, 2.57 );
setScaleKey( spep_2 -3 + 43, 1, 2.57, 2.57 );
setScaleKey( spep_2 -3 + 44, 1, 5.6, 5.6 );
setScaleKey( spep_2 -3 + 45, 1, 5.6, 5.6 );
setScaleKey( spep_2 -3 + 46, 1, 5.6, 5.6 );

setRotateKey( spep_2 -3 + 20, 1, 0 );
setRotateKey( spep_2 -3 + 46, 1, 0 );

setBlendColor( spep_2 -3 + 36, 1, 3, 0, 0, 0, 1.0);
setBlendColor( spep_2 -3 + 37, 1, 3, 0, 0, 0, 1.0);
setBlendColor( spep_2 -3 + 38, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--ヤコン殴る
SE013 = playSeVer2( spep_2 + 32, 1187, "", 0, 0, 0, -1);

--画面遷移
SE014 = playSeVer2( spep_2 + 42, 1072, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 72;

------------------------------------------------------
-- ダブルロケットパンチ(74F)
------------------------------------------------------

-- ** エフェクト等 ** --
rocketpunch_f = entryEffect( spep_3 + 0, SP_04r, 0x100, -1, 0, 0, 0 );  --ダブルロケットパンチ ef_003

setEffMoveKey( spep_3 + 0, rocketpunch_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 74, rocketpunch_f, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, rocketpunch_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 74, rocketpunch_f, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, rocketpunch_f, 0 );
setEffRotateKey( spep_3 + 74, rocketpunch_f, 0 );

setEffAlphaKey( spep_3 + 0, rocketpunch_f, 255 );
setEffAlphaKey( spep_3 + 74 - 2, rocketpunch_f, 255 );
setEffAlphaKey( spep_3 + 74 - 1, rocketpunch_f, 255 );
setEffAlphaKey( spep_3 + 74, rocketpunch_f, 0 );

-- ** 音 ** --
--集中線
SE015 = playSeVer2( spep_3 + 4, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 4, SE015, 79 );
SE016 = playSeVer2( spep_3 + 4, 22, "", 0, 0, 0, -1);

--構える
SE017 = playSeVer2( spep_3 + 26, 1012, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 30, 1003, "", 0, 0, 0, -1);

--ロケットパンチ発射
SE019 = playSeVer2( spep_3 + 48, 1027, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_3 + 48, 1193, "",spep_3 + 144, 0, 24, -1);
SE021 = playSeVer2( spep_3 + 48, 1137, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 48, SE021, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 74 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_4 = spep_3 + 74;

------------------------------------------------------
-- ロケットパンチ命中(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
punchhit_f = entryEffect( spep_4 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --ロケットパンチ命中 ef_004_front
setEffMoveKey( spep_4 + 0, punchhit_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, punchhit_f, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, punchhit_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, punchhit_f, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, punchhit_f, 0 );
setEffRotateKey( spep_4 + 100, punchhit_f, 0 );

setEffAlphaKey( spep_4 + 0, punchhit_f, 255 );
setEffAlphaKey( spep_4 + 100 - 2, punchhit_f, 255 );
setEffAlphaKey( spep_4 + 100 - 1, punchhit_f, 255 );
setEffAlphaKey( spep_4 + 100, punchhit_f, 0 );

punchhit_b = entryEffect( spep_4 + 0, SP_06r, 0x80, -1, 0, 0, 0 );  --ロケットパンチ命中 ef_004_back
setEffMoveKey( spep_4 + 0, punchhit_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, punchhit_b, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, punchhit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, punchhit_b, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, punchhit_b, 0 );
setEffRotateKey( spep_4 + 100, punchhit_b, 0 );

setEffAlphaKey( spep_4 + 0, punchhit_b, 255 );
setEffAlphaKey( spep_4 + 100 - 2, punchhit_b, 255 );
setEffAlphaKey( spep_4 + 100 - 1, punchhit_b, 255 );
setEffAlphaKey( spep_4 + 100, punchhit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -2 + 2, 1, 1 );
setDisp( spep_4 -3 + 46, 1, 0 );

changeAnime( spep_4 -2 + 2, 1, 105 );
changeAnime( spep_4 -3 + 44, 1, 108 );

setMoveKey( spep_4 -2 + 2, 1, -1.1, -9.8 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 52.9, -51.2 , 0 );
setMoveKey( spep_4 -3 + 5, 1, 52.9, -51.2 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 63.7, -78 , 0 );
setMoveKey( spep_4 -3 + 7, 1, 63.7, -78 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 63.6, -87.1 , 0 );
setMoveKey( spep_4 -3 + 9, 1, 63.6, -87.1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 63.4, -89.6 , 0 );
setMoveKey( spep_4 -3 + 11, 1, 63.4, -89.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 63.1, -92 , 0 );
setMoveKey( spep_4 -3 + 13, 1, 63.1, -92 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 62.8, -94.2 , 0 );
setMoveKey( spep_4 -3 + 15, 1, 62.8, -94.2 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 62.5, -96.3 , 0 );
setMoveKey( spep_4 -3 + 17, 1, 62.5, -96.3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 62.3, -98.2 , 0 );
setMoveKey( spep_4 -3 + 19, 1, 62.3, -98.2 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 62, -99.9 , 0 );
setMoveKey( spep_4 -3 + 21, 1, 62, -99.9 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 61.7, -101.6 , 0 );
setMoveKey( spep_4 -3 + 23, 1, 61.7, -101.6 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 61.5, -103 , 0 );
setMoveKey( spep_4 -3 + 25, 1, 61.5, -103 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 61.2, -104.3 , 0 );
setMoveKey( spep_4 -3 + 27, 1, 61.2, -104.3 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 61, -105.5 , 0 );
setMoveKey( spep_4 -3 + 29, 1, 61, -105.5 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 60.8, -106.5 , 0 );
setMoveKey( spep_4 -3 + 31, 1, 60.8, -106.5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 60.7, -107.3 , 0 );
setMoveKey( spep_4 -3 + 33, 1, 60.7, -107.3 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 60.5, -108 , 0 );
setMoveKey( spep_4 -3 + 35, 1, 60.5, -108 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 60.4, -108.6 , 0 );
setMoveKey( spep_4 -3 + 37, 1, 60.4, -108.6 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 60.3, -109 , 0 );
setMoveKey( spep_4 -3 + 39, 1, 60.3, -109 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 60.3, -109.2 , 0 );
setMoveKey( spep_4 -3 + 41, 1, 60.3, -109.2 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 60.3, -109.3 , 0 );
setMoveKey( spep_4 -3 + 43, 1, 60.3, -109.3 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 75.3, -145.3 , 0 );
setMoveKey( spep_4 -3 + 45, 1, 75.3, -145.3 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 75.3, -145.3 , 0 );

setScaleKey( spep_4 -2 + 2, 1, 18.62, 18.62 );
setScaleKey( spep_4 -3 + 4, 1, 9.32, 9.32 );
setScaleKey( spep_4 -3 + 5, 1, 9.32, 9.32 );
setScaleKey( spep_4 -3 + 6, 1, 3.74, 3.74 );
setScaleKey( spep_4 -3 + 7, 1, 3.74, 3.74 );
setScaleKey( spep_4 -3 + 8, 1, 1.88, 1.88 );
setScaleKey( spep_4 -3 + 9, 1, 1.88, 1.88 );
setScaleKey( spep_4 -3 + 10, 1, 1.85, 1.85 );
setScaleKey( spep_4 -3 + 11, 1, 1.85, 1.85 );
setScaleKey( spep_4 -3 + 12, 1, 1.82, 1.82 );
setScaleKey( spep_4 -3 + 13, 1, 1.82, 1.82 );
setScaleKey( spep_4 -3 + 14, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 15, 1, 1.8, 1.8 );
setScaleKey( spep_4 -3 + 16, 1, 1.78, 1.78 );
setScaleKey( spep_4 -3 + 17, 1, 1.78, 1.78 );
setScaleKey( spep_4 -3 + 18, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 19, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 20, 1, 1.74, 1.74 );
setScaleKey( spep_4 -3 + 21, 1, 1.74, 1.74 );
setScaleKey( spep_4 -3 + 22, 1, 1.72, 1.72 );
setScaleKey( spep_4 -3 + 23, 1, 1.72, 1.72 );
setScaleKey( spep_4 -3 + 24, 1, 1.7, 1.7 );
setScaleKey( spep_4 -3 + 25, 1, 1.7, 1.7 );
setScaleKey( spep_4 -3 + 26, 1, 1.69, 1.69 );
setScaleKey( spep_4 -3 + 27, 1, 1.69, 1.69 );
setScaleKey( spep_4 -3 + 28, 1, 1.67, 1.67 );
setScaleKey( spep_4 -3 + 29, 1, 1.67, 1.67 );
setScaleKey( spep_4 -3 + 30, 1, 1.66, 1.66 );
setScaleKey( spep_4 -3 + 31, 1, 1.66, 1.66 );
setScaleKey( spep_4 -3 + 32, 1, 1.65, 1.65 );
setScaleKey( spep_4 -3 + 33, 1, 1.65, 1.65 );
setScaleKey( spep_4 -3 + 34, 1, 1.65, 1.65 );
setScaleKey( spep_4 -3 + 35, 1, 1.65, 1.65 );
setScaleKey( spep_4 -3 + 36, 1, 1.64, 1.64 );
setScaleKey( spep_4 -3 + 37, 1, 1.64, 1.64 );
setScaleKey( spep_4 -3 + 39, 1, 1.64, 1.64 );
setScaleKey( spep_4 -3 + 40, 1, 1.63, 1.63 );
setScaleKey( spep_4 -3 + 41, 1, 1.63, 1.63 );
setScaleKey( spep_4 -3 + 43, 1, 1.63, 1.63 );
setScaleKey( spep_4 -3 + 44, 1, 1.7, 1.7 );
setScaleKey( spep_4 -3 + 45, 1, 1.7, 1.7 );
setScaleKey( spep_4 -3 + 46, 1, 1.7, 1.7 );

setRotateKey( spep_4 -2 + 2, 1, -2.7 );
setRotateKey( spep_4 -3 + 4, 1, -1.2 );
setRotateKey( spep_4 -3 + 5, 1, -1.2 );
setRotateKey( spep_4 -3 + 6, 1, -0.3 );
setRotateKey( spep_4 -3 + 7, 1, -0.3 );
setRotateKey( spep_4 -3 + 8, 1, 0 );
setRotateKey( spep_4 -3 + 9, 1, 0 );
setRotateKey( spep_4 -3 + 10, 1, 0.4 );
setRotateKey( spep_4 -3 + 11, 1, 0.4 );
setRotateKey( spep_4 -3 + 12, 1, 0.7 );
setRotateKey( spep_4 -3 + 13, 1, 0.7 );
setRotateKey( spep_4 -3 + 14, 1, 1 );
setRotateKey( spep_4 -3 + 15, 1, 1 );
setRotateKey( spep_4 -3 + 16, 1, 1.3 );
setRotateKey( spep_4 -3 + 17, 1, 1.3 );
setRotateKey( spep_4 -3 + 18, 1, 1.6 );
setRotateKey( spep_4 -3 + 19, 1, 1.6 );
setRotateKey( spep_4 -3 + 20, 1, 1.9 );
setRotateKey( spep_4 -3 + 21, 1, 1.9 );
setRotateKey( spep_4 -3 + 22, 1, 2.1 );
setRotateKey( spep_4 -3 + 23, 1, 2.1 );
setRotateKey( spep_4 -3 + 24, 1, 2.3 );
setRotateKey( spep_4 -3 + 25, 1, 2.3 );
setRotateKey( spep_4 -3 + 26, 1, 2.5 );
setRotateKey( spep_4 -3 + 27, 1, 2.5 );
setRotateKey( spep_4 -3 + 28, 1, 2.7 );
setRotateKey( spep_4 -3 + 29, 1, 2.7 );
setRotateKey( spep_4 -3 + 30, 1, 2.8 );
setRotateKey( spep_4 -3 + 31, 1, 2.8 );
setRotateKey( spep_4 -3 + 32, 1, 2.9 );
setRotateKey( spep_4 -3 + 33, 1, 2.9 );
setRotateKey( spep_4 -3 + 34, 1, 3 );
setRotateKey( spep_4 -3 + 35, 1, 3 );
setRotateKey( spep_4 -3 + 36, 1, 3.1 );
setRotateKey( spep_4 -3 + 37, 1, 3.1 );
setRotateKey( spep_4 -3 + 38, 1, 3.2 );
setRotateKey( spep_4 -3 + 39, 1, 3.2 );
setRotateKey( spep_4 -3 + 43, 1, 3.2 );
setRotateKey( spep_4 -3 + 44, 1, 85.2 );
setRotateKey( spep_4 -3 + 45, 1, 85.2 );
setRotateKey( spep_4 -3 + 46, 1, 85.2 );

-- ** 音 ** --
--爆発
SE022 = playSeVer2( spep_4 + 44, 1159, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_4 + 44, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 100 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_5 = spep_4 + 100;

------------------------------------------------------
-- 三人でビーム(118F)
------------------------------------------------------

-- ** エフェクト等 ** --
triplebeam_f = entryEffect( spep_5 + 0, SP_07r, 0x100, -1, 0, 0, 0 );  --三人でビーム ef_005

setEffMoveKey( spep_5 + 0, triplebeam_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 118, triplebeam_f, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, triplebeam_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 118, triplebeam_f, 1.0, 1.0 );

setEffRotateKey( spep_5 + 0, triplebeam_f, 0 );
setEffRotateKey( spep_5 + 118, triplebeamh_f, 0 );

setEffAlphaKey( spep_5 + 0, triplebeam_f, 255 );
setEffAlphaKey( spep_5 + 118 - 2, triplebeam_f, 255 );
setEffAlphaKey( spep_5 + 118 - 1, triplebeam_f, 255 );
setEffAlphaKey( spep_5 + 118, triplebeam_f, 0 );

-- ** 音 ** --
--下から出てくる
SE024 = playSeVer2( spep_5 + 4, 1116, "",spep_5 + 60, 0, 28, -1);
SE025 = playSeVer2( spep_5 + 4, 1002, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 4, SE025, 79 );

--気弾発射１
SE026 = playSeVer2( spep_5 + 40, 1177, "",spep_5 + 160, 0, 28, -1);

--気弾発射２
SE027 = playSeVer2( spep_5 + 66, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 66, SE027, 145 );

--気弾発射３
SE028 = playSeVer2( spep_5 + 90, 1146, "",spep_5 + 200, 0, 34, -1);

--爆発
SE029 = playSeVer2( spep_5 + 90, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 118 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_6 = spep_5 + 118;

------------------------------------------------------
-- ビームが命中(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
beamhit_f = entryEffect( spep_6 + 0, SP_08r, 0x100, -1, 0, 0, 0 );  --ビームが命中 ef_006_front
setEffMoveKey( spep_6 + 0, beamhit_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 98, beamhit_f, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, beamhit_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 98, beamhit_f, 1.0, 1.0 );

setEffRotateKey( spep_6 + 0, beamhit_f, 0 );
setEffRotateKey( spep_6 + 98, beamhit_f, 0 );

setEffAlphaKey( spep_6 + 0, beamhit_f, 255 );
setEffAlphaKey( spep_6 + 98 - 2, beamhit_f, 255 );
setEffAlphaKey( spep_6 + 98 - 1, beamhit_f, 255 );
setEffAlphaKey( spep_6 + 98, beamhit_f, 0 );

beamhit_b = entryEffect( spep_6 + 0, SP_09r, 0x80, -1, 0, 0, 0 );  --ビームが命中 ef_006_back
setEffMoveKey( spep_6 + 0, beamhit_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 98, beamhit_b, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, beamhit_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 98, beamhit_b, 1.0, 1.0 );

setEffRotateKey( spep_6 + 0, beamhit_b, 0 );
setEffRotateKey( spep_6 + 98, beamhit_b, 0 );

setEffAlphaKey( spep_6 + 0, beamhit_b, 255 );
setEffAlphaKey( spep_6 + 98 - 2, beamhit_b, 255 );
setEffAlphaKey( spep_6 + 98 - 1, beamhit_b, 255 );
setEffAlphaKey( spep_6 + 98, beamhit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 -2 + 2, 1, 1 );
setDisp( spep_6 -3 + 12, 1, 0 );

changeAnime( spep_6 -2 + 2, 1, 108 );

setMoveKey( spep_6 -2 + 2, 1, 54.3, -410.9 , 0 );
setMoveKey( spep_6 -3 + 4, 1, 54.3, -410.9 , 0 );
setMoveKey( spep_6 -3 + 5, 1, 54.3, -410.9 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 57.3, -383.1 , 0 );
setMoveKey( spep_6 -3 + 7, 1, 57.3, -383.1 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 60.3, -355.4 , 0 );
setMoveKey( spep_6 -3 + 9, 1, 60.3, -355.4 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 63.3, -327.5 , 0 );
setMoveKey( spep_6 -3 + 11, 1, 63.3, -327.5 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 63.3, -327.5 , 0 );

setScaleKey( spep_6 -2 + 2, 1, 7.11, 7.11 );
setScaleKey( spep_6 -3 + 4, 1, 7.11, 7.11 );
setScaleKey( spep_6 -3 + 5, 1, 7.11, 7.11 );
setScaleKey( spep_6 -3 + 6, 1, 5.73, 5.73 );
setScaleKey( spep_6 -3 + 7, 1, 5.73, 5.73 );
setScaleKey( spep_6 -3 + 8, 1, 4.35, 4.35 );
setScaleKey( spep_6 -3 + 9, 1, 4.35, 4.35 );
setScaleKey( spep_6 -3 + 10, 1, 2.97, 2.97 );
setScaleKey( spep_6 -3 + 11, 1, 2.97, 2.97 );
setScaleKey( spep_6 -3 + 12, 1, 2.97, 2.97 );

setRotateKey( spep_6 -2 + 2, 1, 82.7 );
setRotateKey( spep_6 -3 + 12, 1, 82.7 );

-- ** 音 ** --
--爆発
SE030 = playSeVer2( spep_6 + 10, 1011, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_6 + 26, 1023, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_6 + 46, 1159, "", 0, 0, 0, -1);

--画面遷移
SE033 = playSeVer2( spep_6 + 96, 44, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 98 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_7 = spep_6 + 98;

------------------------------------------------------
-- ナッパ(274F)
------------------------------------------------------

-- ** エフェクト等 ** --
nappa_f = entryEffect( spep_7 + 0, SP_10r, 0x100, -1, 0, 0, 0 );  --ナッパ　ef_007_front
setEffMoveKey( spep_7 + 0, nappa_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 274, nappa_f, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, nappa_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 274, nappa_f, 1.0, 1.0 );

setEffRotateKey( spep_7 + 0, nappa_f, 0 );
setEffRotateKey( spep_7 + 274, nappa_f, 0 );

setEffAlphaKey( spep_7 + 0, nappa_f, 255 );
setEffAlphaKey( spep_7 + 274 - 2, nappa_f, 255 );
setEffAlphaKey( spep_7 + 274 - 1, nappa_f, 255 );
setEffAlphaKey( spep_7 + 274, nappa_f, 0 );

nappa_b = entryEffect( spep_7 + 0, SP_11r, 0x80, -1, 0, 0, 0 );  --ナッパ　ef_007_back
setEffMoveKey( spep_7 + 0, nappa_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 274, nappa_b, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, nappa_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 274, nappa_b, 1.0, 1.0 );

setEffRotateKey( spep_7 + 0, nappa_b, 0 );
setEffRotateKey( spep_7 + 274, nappa_b, 0 );

setEffAlphaKey( spep_7 + 0, nappa_b, 255 );
setEffAlphaKey( spep_7 + 274 - 2, nappa_b, 255 );
setEffAlphaKey( spep_7 + 274 - 1, nappa_b, 255 );
setEffAlphaKey( spep_7 + 274, nappa_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_7 -2 + 2, 1, 1 );
setDisp( spep_7 -3 + 29, 1, 0 );

changeAnime( spep_7 -2 + 2, 1, 106 );

setMoveKey( spep_7 -2 + 2, 1, -432.6, -611.4 , 0 );
setMoveKey( spep_7 -3 + 4, 1, -504.4, -657.8 , 0 );
setMoveKey( spep_7 -3 + 5, 1, -504.4, -657.8 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -576.9, -704.6 , 0 );
setMoveKey( spep_7 -3 + 7, 1, -576.9, -704.6 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -649.8, -751.7 , 0 );
setMoveKey( spep_7 -3 + 9, 1, -649.8, -751.7 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -722.7, -798.9 , 0 );
setMoveKey( spep_7 -3 + 11, 1, -722.7, -798.9 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -795.3, -845.8 , 0 );
setMoveKey( spep_7 -3 + 13, 1, -795.3, -845.8 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -867.1, -892.1 , 0 );
setMoveKey( spep_7 -3 + 15, 1, -867.1, -892.1 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -937.9, -937.8 , 0 );
setMoveKey( spep_7 -3 + 17, 1, -937.9, -937.8 , 0 );
setMoveKey( spep_7 -3 + 18, 1, -1007.2, -982.6 , 0 );
setMoveKey( spep_7 -3 + 19, 1, -1007.2, -982.6 , 0 );
setMoveKey( spep_7 -3 + 20, 1, -1074.7, -1026.3 , 0 );
setMoveKey( spep_7 -3 + 21, 1, -1074.7, -1026.3 , 0 );
setMoveKey( spep_7 -3 + 22, 1, -1140.3, -1068.6 , 0 );
setMoveKey( spep_7 -3 + 23, 1, -1140.3, -1068.6 , 0 );
setMoveKey( spep_7 -3 + 24, 1, -1203.8, -1109.6 , 0 );
setMoveKey( spep_7 -3 + 25, 1, -1203.8, -1109.6 , 0 );
setMoveKey( spep_7 -3 + 26, 1, -1264.8, -1149.1 , 0 );
setMoveKey( spep_7 -3 + 27, 1, -1264.8, -1149.1 , 0 );
setMoveKey( spep_7 -3 + 28, 1, -1323.4, -1186.9 , 0 );
setMoveKey( spep_7 -3 + 29, 1, -1323.4, -1186.9 , 0 );

setScaleKey( spep_7 -2 + 2, 1, 8.23, 8.23 );
setScaleKey( spep_7 -3 + 29, 1, 8.23, 8.23 );

setRotateKey( spep_7 -2 + 2, 1, -23.7 );
setRotateKey( spep_7 -3 + 29, 1, -23.7 );

-- ** 音 ** --
--ナッパ踏み出す
SE034 = playSeVer2( spep_7 + 80, 1377, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 80, SE034, 141 );
SE035 = playSeVer2( spep_7 + 84, 1192, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_7 + 88, 1108, "", 0, 0, 0, -1);

--指立てる
SE037 = playSeVer2( spep_7 + 150, 1003, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_7 + 154, 1189, "", 0, 0, 0, -1);

--気溢れる
SE039 = playSeVer2( spep_7 + 178, 1191, "",spep_7 + 320, 0, 52, -1);
SE040 = playSeVer2( spep_7 + 178, 1248, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_7 + 182, 1127, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_7 + 182, 1354, "", 0, 0, 0, -1);

--周囲爆発
SE043 = playSeVer2( spep_7 + 216, 1024, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_7 + 216, 1159, "", 0, 0, 0, -1);

--俯瞰爆発
SE045 = playSeVer2( spep_7 + 268, 1226, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 274 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_8 = spep_7 + 274;


------------------------------------------------------
-- フィニッシュ(182F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_8 + 0, SP_12r, 0x100, -1, 0, 0, 0 );  --フィニッシュ ef_008

setEffMoveKey( spep_8 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 182, finish_f, 0, 0 , 0 );

setEffScaleKey( spep_8 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 182, finish_f, 1.0, 1.0 );

setEffRotateKey( spep_8 + 0, finish_f, 0 );
setEffRotateKey( spep_8 + 182, finish_f, 0 );

setEffAlphaKey( spep_8 + 0, finish_f, 255 );
setEffAlphaKey( spep_8 + 182, finish_f, 255 );


-- ** 音 ** --
--俯瞰爆発
SE046 = playSeVer2( spep_8 + 4, 1068, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_8 + 32, 1188, "", 0, 0, 0, -1);

--爆風
SE048 = playSeVer2( spep_8 + 72, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 72, SE048, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 182 + 2, 0, 0, 0, 0, 255); 


-- ** ダメージ表示 ** --
dealDamage( spep_8 + 62 );
endPhase( spep_8 + 172 );

end