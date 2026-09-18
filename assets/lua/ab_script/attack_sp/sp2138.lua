--1021260:破壊神ビルス_破壊神の怒り_sp2138
--sp_effect_a9_00076

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
SP_01 = 156855;  --あくびをするビルス   ef_001
SP_02 = 156856;  --セリフカットイン    ef_002
SP_03 = 156857;  --気弾を溜める  ef_003
SP_04 = 156859;  --気弾が敵に向かって飛んでいく  ef_004_front
SP_05 = 156860;  --気弾が敵に向かって飛んでいく  ef_004_back
SP_06 = 156863;  --敵に気弾がヒットしフィニッシュ ef_005_front
SP_07 = 156864;  --敵に気弾がヒットしフィニッシュ ef_005_back

--敵側
SP_03r = 156858;  --気弾を溜める  ef_003_r
SP_04r = 156861;  --気弾が敵に向かって飛んでいく  ef_004_r_front
SP_05r = 156862;  --気弾が敵に向かって飛んでいく  ef_004_r_back

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
-- あくびをするビルス(56F)
------------------------------------------------------
spep_0 = 0;

first_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --あくびをするビルス   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 56, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 55, first_f, 255 );
setEffAlphaKey( spep_0 + 56, first_f, 0 );

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 14, 1072,"",0.6 );
setTimeStretch( SE001, 1.6, 30, 6 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;


------------------------------------------------------
-- セリフカットイン(96F)
------------------------------------------------------
yawn = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --あくびをするビルス   ef_001
setEffMoveKey( spep_1 + 0, yawn, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, yawn, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, yawn, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, yawn, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, yawn, 0 );
setEffRotateKey( spep_1 + 96, yawn, 0 );
setEffAlphaKey( spep_1 + 0, yawn, 255 );
setEffAlphaKey( spep_1 + 96, yawn, 255 );

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
--入り
SE002 = playSe( spep_1 + 4, 1042 );
setPitch( spep_1 + 4, SE002, -400 );
setTimeStretch( SE002, 0.73, 10, 1 );

--入り
SE003 = playSe( spep_1 + 8, 20 );
setSeVolumeByWorkId( spep_1 + 8, SE003, 79 );

--顔カットイン
SE000 = playSe( spep_1 + 12, 1018 );

-- ** 黒背景 ** --
--entryFadeBg( spep_1 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_1 + 78, 16, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

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
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 気弾を溜める(116F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --気弾を溜める  ef_003
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 116, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 116, tame, 255 );

-- ** 音 ** --
--腕あげる
SE005 = playSe( spep_3 + 24, 1003 );
setPitch( spep_3 + 24, SE005, -400 );
setTimeStretch( SE005, 0.73, 10, 1 );

--気弾溜め
SE006 = playSe( spep_3 + 44, 1200,"",0.6 );
setSeVolumeByWorkId( spep_3 + 44, SE006, 178 );
stopSe( spep_3 +116 + 36, SE006, 16 );

--気弾溜め
SE007 = playSe( spep_3 + 48, 1271 );
stopSe( spep_3 +116 + 34, SE007, 24 );

--気弾溜め
SE008 = playSe( spep_3 + 48, 1240 );
stopSe( spep_3 +116 + 4, SE008, 18 );

--気弾溜め
SE009 = playSe( spep_3 + 52, 1239 );
setSeVolumeByWorkId( spep_3 + 52, SE009, 83 );
stopSe( spep_3 +116 + 36, SE009, 14 );
setPitch( spep_3 + 52, SE009, -300 );
setTimeStretch( SE009, 0.8, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 116;


------------------------------------------------------
-- 敵に迫る(104F)
------------------------------------------------------
-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_4 + 0, SP_04, 58, 0x100, -1, 0, 0, 0 );  --気弾が敵に向かって飛んでいく  ef_004_front
setEffMoveKey( spep_4 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 58, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 58, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot_f, 0 );
setEffRotateKey( spep_4 + 58, shot_f, 0 );
setEffAlphaKey( spep_4 + 0, shot_f, 255 );
setEffAlphaKey( spep_4 + 58 -1, shot_f, 255 );
setEffAlphaKey( spep_4 + 58, shot_f, 0 );

shot_b = entryEffectLife( spep_4 + 0, SP_05, 58, 0x80, -1, 0, 0, 0 );  --気弾が敵に向かって飛んでいく  ef_004_back
setEffMoveKey( spep_4 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 58, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 58, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot_b, 0 );
setEffRotateKey( spep_4 + 58, shot_b, 0 );
setEffAlphaKey( spep_4 + 0, shot_b, 255 );
setEffAlphaKey( spep_4 + 58 -1, shot_b, 255 );
setEffAlphaKey( spep_4 + 58, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 118 );

a1=240;
b1=20;
setMoveKey( spep_4 + 0, 1, 466.4 -a1, -58.4 +b1 , 0 );
setMoveKey( spep_4 + 1, 1, 468.1 -a1, -58.3 +b1 , 0 );
setMoveKey( spep_4 + 2, 1, 469.7 -a1, -58.2 +b1 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 471.4 -a1, -58.1 +b1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 473.1 -a1, -58 +b1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 474.8 -a1, -57.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 476.4 -a1, -57.7 +b1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 478.1 -a1, -57.6 +b1 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 479.8 -a1, -57.5 +b1 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 481.4 -a1, -57.4 +b1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 483.1 -a1, -57.3 +b1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 484.8 -a1, -79.2 +b1 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 486.4 -a1, -57.1 +b1 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 488.1 -a1, -41 +b1 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 489.8 -a1, -56.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 481.4 -a1, -42.8 +b1 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 493.1 -a1, -56.7 +b1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 494.8 -a1, -56.6 +b1 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 496.4 -a1, -56.5 +b1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 498.1 -a1, -56.3 +b1 , 0 );

setScaleKey( spep_4 + 0, 1, 1.612, 1.612 );
setScaleKey( spep_4 + 1, 1, 1.615, 1.615 );
setScaleKey( spep_4 + 2, 1, 1.618, 1.618 );
setScaleKey( spep_4 -3 + 6, 1, 1.621, 1.621 );
setScaleKey( spep_4 -3 + 8, 1, 1.627, 1.627 );
setScaleKey( spep_4 -3 + 10, 1, 1.633, 1.633 );
setScaleKey( spep_4 -3 + 12, 1, 1.639, 1.639 );
setScaleKey( spep_4 -3 + 14, 1, 1.645, 1.645 );
setScaleKey( spep_4 -3 + 16, 1, 1.651, 1.651 );
setScaleKey( spep_4 -3 + 18, 1, 1.657, 1.657 );
setScaleKey( spep_4 -3 + 20, 1, 1.663, 1.663 );
setScaleKey( spep_4 -3 + 22, 1, 1.669, 1.669 );
setScaleKey( spep_4 -3 + 24, 1, 1.675, 1.675 );
setScaleKey( spep_4 -3 + 26, 1, 1.681, 1.681 );
setScaleKey( spep_4 -3 + 28, 1, 1.687, 1.687 );
setScaleKey( spep_4 -3 + 30, 1, 1.693, 1.693 );
setScaleKey( spep_4 -3 + 32, 1, 1.699, 1.699 );
setScaleKey( spep_4 -3 + 34, 1, 1.705, 1.705 );
setScaleKey( spep_4 -3 + 36, 1, 1.711, 1.711 );
setScaleKey( spep_4 -3 + 38, 1, 1.717, 1.717 );

setRotateKey( spep_4 + 0, 1, 0 );

-- ** 音 ** --
--気弾発射
SE010 = playSe( spep_4 + 20, 1027 );
setSeVolumeByWorkId( spep_4 + 20, SE010, 75 );

--気弾発射
SE011 = playSe( spep_4 + 20, 1177 );
setSeVolumeByWorkId( spep_4 + 20, SE011, 63 );
stopSe( spep_4 + 62, SE011, 46 );

--気弾発射
SE012 = playSe( spep_4 + 20, 1145 );
setSeVolumeByWorkId( spep_4 + 20, SE012, 79 );
stopSe( spep_4 + 62, SE012, 46 );

-- ** 黒背景 ** --
--entryFadeBg( spep_4 + 0, 0, 58 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 36 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 498.1 -a1, -56.3 +b1 , 0 );
    setMoveKey( SP_dodge + 2, 1, 499.8 -a1, -56.2 +b1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 501.4 -a1, -56.1 +b1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 503.1 -a1, -56 +b1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 504.8 -a1, -55.9 +b1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 506.5 -a1, -55.8 +b1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.717, 1.717 );
    setScaleKey( SP_dodge + 2, 1, 1.723, 1.723 );
    setScaleKey( SP_dodge + 4, 1, 1.729, 1.729 );
    setScaleKey( SP_dodge + 6, 1, 1.735, 1.735 );
    setScaleKey( SP_dodge + 8, 1, 1.741, 1.741 );
    setScaleKey( SP_dodge + 10, 1, 1.747, 1.747 );

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
setDisp( spep_4 + 58, 1, 0 );


setMoveKey( spep_4 -3 + 40, 1, 499.8 -a1, -56.2 +b1 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 501.4 -a1, -56.1 +b1 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 503.1 -a1, -56 +b1 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 504.8 -a1, -55.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 506.5 -a1, -55.8 +b1 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 508.1 -a1, -55.7 +b1 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 509.8 -a1, -55.6 +b1 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 511.5 -a1, -55.5 +b1 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 513.2 -a1, -55.4 +b1 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 514.8 -a1, -55.3 +b1 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 516.5 -a1, -55.2 +b1 , 0 );
setMoveKey( spep_4 -3 + 61, 1, 516.5 -a1, -55.2 +b1 , 0 );

setScaleKey( spep_4 -3 + 40, 1, 1.723, 1.723 );
setScaleKey( spep_4 -3 + 42, 1, 1.729, 1.729 );
setScaleKey( spep_4 -3 + 44, 1, 1.735, 1.735 );
setScaleKey( spep_4 -3 + 46, 1, 1.741, 1.741 );
setScaleKey( spep_4 -3 + 48, 1, 1.747, 1.747 );
setScaleKey( spep_4 -3 + 50, 1, 1.753, 1.753 );
setScaleKey( spep_4 -3 + 52, 1, 1.759, 1.759 );
setScaleKey( spep_4 -3 + 54, 1, 1.765, 1.765 );
setScaleKey( spep_4 -3 + 56, 1, 1.771, 1.771 );
setScaleKey( spep_4 -3 + 58, 1, 1.777, 1.777 );
setScaleKey( spep_4 -3 + 60, 1, 1.783, 1.783 );
setScaleKey( spep_4 -3 + 61, 1, 1.783, 1.783 );

setRotateKey( spep_4 -3 + 61, 1, 0 );

-- ** 音 ** --
--気弾ヒット
SE013 = playSe( spep_4 + 54, 1023 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 58;


------------------------------------------------------
-- 敵に気弾がヒットしフィニッシュ(176F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --敵に気弾がヒットしフィニッシュ ef_005_front
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 176, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 176, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 176, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 176, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --敵に気弾がヒットしフィニッシュ ef_005_back
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 176, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 176, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 176, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 176, finish_b, 255 );

-- ** 音 ** --
--爆発
SE014 = playSe( spep_5 + 44, 1159 );

-- ** 黒背景 ** --
--entryFadeBg( spep_5 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 66 );
endPhase( spep_5 + 166 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- あくびをするビルス(56F)
------------------------------------------------------
spep_0 = 0;

first_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --あくびをするビルス   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 56, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 56, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 55, first_f, 255 );
setEffAlphaKey( spep_0 + 56, first_f, 0 );

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 14, 1072,"",0.6 );
setTimeStretch( SE001, 1.6, 30, 6 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;


------------------------------------------------------
-- セリフカットイン(96F)
------------------------------------------------------
yawn = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --あくびをするビルス   ef_001
setEffMoveKey( spep_1 + 0, yawn, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, yawn, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, yawn, -1.0, 1.0 );
setEffScaleKey( spep_1 + 96, yawn, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, yawn, 0 );
setEffRotateKey( spep_1 + 96, yawn, 0 );
setEffAlphaKey( spep_1 + 0, yawn, 255 );
setEffAlphaKey( spep_1 + 96, yawn, 255 );

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
--入り
SE002 = playSe( spep_1 + 4, 1042 );
setPitch( spep_1 + 4, SE002, -400 );
setTimeStretch( SE002, 0.73, 10, 1 );

--入り
SE003 = playSe( spep_1 + 8, 20 );
setSeVolumeByWorkId( spep_1 + 8, SE003, 79 );

--顔カットイン
SE000 = playSe( spep_1 + 12, 1018 );

-- ** 黒背景 ** --
--entryFadeBg( spep_1 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_1 + 78, 16, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

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
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 気弾を溜める(116F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --気弾を溜める  ef_003
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 116, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 116, tame, 255 );

-- ** 音 ** --
--腕あげる
SE005 = playSe( spep_3 + 24, 1003 );
setPitch( spep_3 + 24, SE005, -400 );
setTimeStretch( SE005, 0.73, 10, 1 );

--気弾溜め
SE006 = playSe( spep_3 + 44, 1200,"",0.6 );
setSeVolumeByWorkId( spep_3 + 44, SE006, 178 );
stopSe( spep_3 +116 + 36, SE006, 16 );

--気弾溜め
SE007 = playSe( spep_3 + 48, 1271 );
stopSe( spep_3 +116 + 34, SE007, 24 );

--気弾溜め
SE008 = playSe( spep_3 + 48, 1240 );
stopSe( spep_3 +116 + 4, SE008, 18 );

--気弾溜め
SE009 = playSe( spep_3 + 52, 1239 );
setSeVolumeByWorkId( spep_3 + 52, SE009, 83 );
stopSe( spep_3 +116 + 36, SE009, 14 );
setPitch( spep_3 + 52, SE009, -300 );
setTimeStretch( SE009, 0.8, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 116;


------------------------------------------------------
-- 敵に迫る(104F)
------------------------------------------------------
-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_4 + 0, SP_04r, 58, 0x100, -1, 0, 0, 0 );  --気弾が敵に向かって飛んでいく  ef_004_front
setEffMoveKey( spep_4 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 58, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 58, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot_f, 0 );
setEffRotateKey( spep_4 + 58, shot_f, 0 );
setEffAlphaKey( spep_4 + 0, shot_f, 255 );
setEffAlphaKey( spep_4 + 58 -1, shot_f, 255 );
setEffAlphaKey( spep_4 + 58, shot_f, 0 );

shot_b = entryEffectLife( spep_4 + 0, SP_05r, 58, 0x80, -1, 0, 0, 0 );  --気弾が敵に向かって飛んでいく  ef_004_back
setEffMoveKey( spep_4 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 58, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 58, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot_b, 0 );
setEffRotateKey( spep_4 + 58, shot_b, 0 );
setEffAlphaKey( spep_4 + 0, shot_b, 255 );
setEffAlphaKey( spep_4 + 58 -1, shot_b, 255 );
setEffAlphaKey( spep_4 + 58, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 118 );

a1=240;
b1=20;
setMoveKey( spep_4 + 0, 1, 466.4 -a1, -58.4 +b1 , 0 );
setMoveKey( spep_4 + 1, 1, 468.1 -a1, -58.3 +b1 , 0 );
setMoveKey( spep_4 + 2, 1, 469.7 -a1, -58.2 +b1 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 471.4 -a1, -58.1 +b1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 473.1 -a1, -58 +b1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 474.8 -a1, -57.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 476.4 -a1, -57.7 +b1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 478.1 -a1, -57.6 +b1 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 479.8 -a1, -57.5 +b1 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 481.4 -a1, -57.4 +b1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 483.1 -a1, -57.3 +b1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 484.8 -a1, -79.2 +b1 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 486.4 -a1, -57.1 +b1 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 488.1 -a1, -41 +b1 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 489.8 -a1, -56.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 481.4 -a1, -42.8 +b1 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 493.1 -a1, -56.7 +b1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 494.8 -a1, -56.6 +b1 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 496.4 -a1, -56.5 +b1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 498.1 -a1, -56.3 +b1 , 0 );

setScaleKey( spep_4 + 0, 1, 1.612, 1.612 );
setScaleKey( spep_4 + 1, 1, 1.615, 1.615 );
setScaleKey( spep_4 + 2, 1, 1.618, 1.618 );
setScaleKey( spep_4 -3 + 6, 1, 1.621, 1.621 );
setScaleKey( spep_4 -3 + 8, 1, 1.627, 1.627 );
setScaleKey( spep_4 -3 + 10, 1, 1.633, 1.633 );
setScaleKey( spep_4 -3 + 12, 1, 1.639, 1.639 );
setScaleKey( spep_4 -3 + 14, 1, 1.645, 1.645 );
setScaleKey( spep_4 -3 + 16, 1, 1.651, 1.651 );
setScaleKey( spep_4 -3 + 18, 1, 1.657, 1.657 );
setScaleKey( spep_4 -3 + 20, 1, 1.663, 1.663 );
setScaleKey( spep_4 -3 + 22, 1, 1.669, 1.669 );
setScaleKey( spep_4 -3 + 24, 1, 1.675, 1.675 );
setScaleKey( spep_4 -3 + 26, 1, 1.681, 1.681 );
setScaleKey( spep_4 -3 + 28, 1, 1.687, 1.687 );
setScaleKey( spep_4 -3 + 30, 1, 1.693, 1.693 );
setScaleKey( spep_4 -3 + 32, 1, 1.699, 1.699 );
setScaleKey( spep_4 -3 + 34, 1, 1.705, 1.705 );
setScaleKey( spep_4 -3 + 36, 1, 1.711, 1.711 );
setScaleKey( spep_4 -3 + 38, 1, 1.717, 1.717 );

setRotateKey( spep_4 + 0, 1, 0 );

-- ** 音 ** --
--気弾発射
SE010 = playSe( spep_4 + 20, 1027 );
setSeVolumeByWorkId( spep_4 + 20, SE010, 75 );

--気弾発射
SE011 = playSe( spep_4 + 20, 1177 );
setSeVolumeByWorkId( spep_4 + 20, SE011, 63 );
stopSe( spep_4 + 62, SE011, 46 );

--気弾発射
SE012 = playSe( spep_4 + 20, 1145 );
setSeVolumeByWorkId( spep_4 + 20, SE012, 79 );
stopSe( spep_4 + 62, SE012, 46 );

-- ** 黒背景 ** --
--entryFadeBg( spep_4 + 0, 0, 58 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 36 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 498.1 -a1, -56.3 +b1 , 0 );
    setMoveKey( SP_dodge + 2, 1, 499.8 -a1, -56.2 +b1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 501.4 -a1, -56.1 +b1 , 0 );
    setMoveKey( SP_dodge + 6, 1, 503.1 -a1, -56 +b1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 504.8 -a1, -55.9 +b1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 506.5 -a1, -55.8 +b1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.717, 1.717 );
    setScaleKey( SP_dodge + 2, 1, 1.723, 1.723 );
    setScaleKey( SP_dodge + 4, 1, 1.729, 1.729 );
    setScaleKey( SP_dodge + 6, 1, 1.735, 1.735 );
    setScaleKey( SP_dodge + 8, 1, 1.741, 1.741 );
    setScaleKey( SP_dodge + 10, 1, 1.747, 1.747 );

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
setDisp( spep_4 + 58, 1, 0 );


setMoveKey( spep_4 -3 + 40, 1, 499.8 -a1, -56.2 +b1 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 501.4 -a1, -56.1 +b1 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 503.1 -a1, -56 +b1 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 504.8 -a1, -55.9 +b1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 506.5 -a1, -55.8 +b1 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 508.1 -a1, -55.7 +b1 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 509.8 -a1, -55.6 +b1 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 511.5 -a1, -55.5 +b1 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 513.2 -a1, -55.4 +b1 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 514.8 -a1, -55.3 +b1 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 516.5 -a1, -55.2 +b1 , 0 );
setMoveKey( spep_4 -3 + 61, 1, 516.5 -a1, -55.2 +b1 , 0 );

setScaleKey( spep_4 -3 + 40, 1, 1.723, 1.723 );
setScaleKey( spep_4 -3 + 42, 1, 1.729, 1.729 );
setScaleKey( spep_4 -3 + 44, 1, 1.735, 1.735 );
setScaleKey( spep_4 -3 + 46, 1, 1.741, 1.741 );
setScaleKey( spep_4 -3 + 48, 1, 1.747, 1.747 );
setScaleKey( spep_4 -3 + 50, 1, 1.753, 1.753 );
setScaleKey( spep_4 -3 + 52, 1, 1.759, 1.759 );
setScaleKey( spep_4 -3 + 54, 1, 1.765, 1.765 );
setScaleKey( spep_4 -3 + 56, 1, 1.771, 1.771 );
setScaleKey( spep_4 -3 + 58, 1, 1.777, 1.777 );
setScaleKey( spep_4 -3 + 60, 1, 1.783, 1.783 );
setScaleKey( spep_4 -3 + 61, 1, 1.783, 1.783 );

setRotateKey( spep_4 -3 + 61, 1, 0 );

-- ** 音 ** --
--気弾ヒット
SE013 = playSe( spep_4 + 54, 1023 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 58;


------------------------------------------------------
-- 敵に気弾がヒットしフィニッシュ(176F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --敵に気弾がヒットしフィニッシュ ef_005_front
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 176, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 176, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 176, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 176, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --敵に気弾がヒットしフィニッシュ ef_005_back
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 176, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 176, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 176, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 176, finish_b, 255 );

-- ** 音 ** --
--爆発
SE014 = playSe( spep_5 + 44, 1159 );

-- ** 黒背景 ** --
--entryFadeBg( spep_5 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 66 );
endPhase( spep_5 + 166 );

end