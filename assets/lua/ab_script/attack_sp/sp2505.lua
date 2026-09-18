--1025770:孫悟空(GT)＆超サイヤ人4ベジータ_悟空とベジータの二段攻撃
--sp_effect_b1_00238
--sp2505

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
SP_01 = 161431; --GT悟空と超4ベジータが真横に構え ef_001
SP_02 = 161433; --↑敵を挟んだ背景  ef_001_bg
SP_03 = 161434; --ベジータが気弾放ちながら上空へ、  ef_002
SP_04 = 161436; --↑敵を挟んだ背景  ef_002_bg
SP_05 = 161437; --悟空龍拳貫通フィニッシュ  ef_003
SP_06 = 161439; --↑敵を挟んだ背景  ef_003_bg

--敵側
SP_01r = 161432;    --↑上記敵側 ef_001_r
SP_02r = 161536;    --↑敵を挟んだ背景    ef_001_bg_r
SP_03r = 161435;    --↑上記敵側 ef_002_r
SP_05r = 161438;    --↑上記敵側 ef_003_r

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

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- GT悟空と超4ベジータが真横に構え(610F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --GT悟空と超4ベジータが真横に構え    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 610, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 610, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 610, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 610 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 610 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 610, first_f, 0 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --↑敵を挟んだ背景  ef_001_bg
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 610, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 610, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 610, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 610 -2, first_b, 255 );
setEffAlphaKey( spep_0 + 610 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 610, first_b, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--顔カットイン
SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 20, 1233, "", 0, 0, 0, -1);
setPitch( spep_0 + 20, SE003, -600 );
setTimeStretch( SE003, 0.6, 30, 4 );

--瞬間移動
SE004 = playSeVer2( spep_0 + 90, 1109, "", 0, 0, 0, -1);

--悟空瞬間移動で向かってくる
SE005 = playSeVer2( spep_0 + 106, 1278, "",spep_0 + 198, 0, 16, -1);
SE006 = playSeVer2( spep_0 + 106, 1235, "",spep_0 + 142, 0, 10, 0.6);
setPitch( spep_0 + 106, SE006, 900 );
setTimeStretch( SE006, 1.6, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 610 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    
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
setDisp( spep_0 -1 + 172, 1, 1 );
setDisp( spep_0 -1 + 242, 1, 0 );
changeAnime( spep_0 -1 + 172, 1, 106 );
changeAnime( spep_0 -1 + 176, 1, 108 );

setMoveKey( spep_0 -1 + 172, 1, 177.1, -126.7 , 0 );
setMoveKey( spep_0 -1 + 173, 1, 177.1, -126.7 , 0 );
setMoveKey( spep_0 -1 + 174, 1, 176.3, -126.7 , 0 );
setMoveKey( spep_0 -1 + 175, 1, 176.3, -126.7 , 0 );

setMoveKey( spep_0 -1 + 176, 1, 297.3, -126.6 , 0 );
setMoveKey( spep_0 -1 + 177, 1, 297.3, -126.6 , 0 );
setMoveKey( spep_0 -1 + 178, 1, 307.4, -123.2 , 0 );
setMoveKey( spep_0 -1 + 179, 1, 307.4, -123.2 , 0 );
setMoveKey( spep_0 -1 + 180, 1, 258, -140.1 , 0 );
setMoveKey( spep_0 -1 + 181, 1, 258, -140.1 , 0 );
setMoveKey( spep_0 -1 + 182, 1, 263.9, -142.3 , 0 );
setMoveKey( spep_0 -1 + 183, 1, 263.9, -142.3 , 0 );
setMoveKey( spep_0 -1 + 184, 1, 267.4, -144.5 , 0 );
setMoveKey( spep_0 -1 + 185, 1, 267.4, -144.5 , 0 );
setMoveKey( spep_0 -1 + 186, 1, 307.6, -149.1 , 0 );
setMoveKey( spep_0 -1 + 187, 1, 307.6, -149.1 , 0 );
setMoveKey( spep_0 -1 + 188, 1, 315.5, -140.5 , 0 );
setMoveKey( spep_0 -1 + 189, 1, 315.5, -140.5 , 0 );
setMoveKey( spep_0 -1 + 190, 1, 290.2, -145.8 , 0 );
setMoveKey( spep_0 -1 + 191, 1, 290.2, -145.8 , 0 );
setMoveKey( spep_0 -1 + 192, 1, 292.2, -142.6 , 0 );
setMoveKey( spep_0 -1 + 193, 1, 292.2, -142.6 , 0 );
setMoveKey( spep_0 -1 + 194, 1, 281.9, -139.4 , 0 );
setMoveKey( spep_0 -1 + 195, 1, 281.9, -139.4 , 0 );
setMoveKey( spep_0 -1 + 196, 1, 322.9, -136.1 , 0 );
setMoveKey( spep_0 -1 + 197, 1, 322.9, -136.1 , 0 );
setMoveKey( spep_0 -1 + 198, 1, 323.9, -138.8 , 0 );
setMoveKey( spep_0 -1 + 199, 1, 323.9, -138.8 , 0 );
setMoveKey( spep_0 -1 + 200, 1, 285.6, -141.5 , 0 );
setMoveKey( spep_0 -1 + 201, 1, 285.6, -141.5 , 0 );
setMoveKey( spep_0 -1 + 202, 1, 286.9, -139.3 , 0 );
setMoveKey( spep_0 -1 + 203, 1, 286.9, -139.3 , 0 );
setMoveKey( spep_0 -1 + 204, 1, 285.7, -137 , 0 );
setMoveKey( spep_0 -1 + 205, 1, 285.7, -137 , 0 );
setMoveKey( spep_0 -1 + 206, 1, 333.5, -134.7 , 0 );
setMoveKey( spep_0 -1 + 207, 1, 333.5, -134.7 , 0 );
setMoveKey( spep_0 -1 + 208, 1, 337.4, -136.4 , 0 );
setMoveKey( spep_0 -1 + 209, 1, 337.4, -136.4 , 0 );
setMoveKey( spep_0 -1 + 210, 1, 307.2, -138.1 , 0 );
setMoveKey( spep_0 -1 + 211, 1, 307.2, -138.1 , 0 );
setMoveKey( spep_0 -1 + 212, 1, 308.5, -135.6 , 0 );
setMoveKey( spep_0 -1 + 213, 1, 308.5, -135.6 , 0 );
setMoveKey( spep_0 -1 + 214, 1, 309.1, -133.1 , 0 );
setMoveKey( spep_0 -1 + 215, 1, 309.1, -133.1 , 0 );
setMoveKey( spep_0 -1 + 216, 1, 331.2, -130.6 , 0 );
setMoveKey( spep_0 -1 + 217, 1, 331.2, -130.6 , 0 );
setMoveKey( spep_0 -1 + 218, 1, 339.3, -130.3 , 0 );
setMoveKey( spep_0 -1 + 219, 1, 339.3, -130.3 , 0 );
setMoveKey( spep_0 -1 + 220, 1, 303.8, -132.5 , 0 );
setMoveKey( spep_0 -1 + 221, 1, 303.8, -132.5 , 0 );
setMoveKey( spep_0 -1 + 222, 1, 303.9, -129.8 , 0 );
setMoveKey( spep_0 -1 + 223, 1, 303.9, -129.8 , 0 );
setMoveKey( spep_0 -1 + 224, 1, 306.5, -129.5 , 0 );
setMoveKey( spep_0 -1 + 225, 1, 306.5, -129.5 , 0 );
setMoveKey( spep_0 -1 + 226, 1, 317.9, -129.2 , 0 );
setMoveKey( spep_0 -1 + 227, 1, 317.9, -129.2 , 0 );
setMoveKey( spep_0 -1 + 228, 1, 322.8, -129 , 0 );
setMoveKey( spep_0 -1 + 229, 1, 322.8, -129 , 0 );
setMoveKey( spep_0 -1 + 230, 1, 298.1, -128.7 , 0 );
setMoveKey( spep_0 -1 + 231, 1, 298.1, -128.7 , 0 );
setMoveKey( spep_0 -1 + 232, 1, 295.9, -128.4 , 0 );
setMoveKey( spep_0 -1 + 233, 1, 295.9, -128.4 , 0 );
setMoveKey( spep_0 -1 + 234, 1, 296, -128.1 , 0 );
setMoveKey( spep_0 -1 + 235, 1, 296, -128.1 , 0 );
setMoveKey( spep_0 -1 + 236, 1, 322.7, -127.9 , 0 );
setMoveKey( spep_0 -1 + 237, 1, 322.7, -127.9 , 0 );
setMoveKey( spep_0 -1 + 238, 1, 333.1, -126.4 , 0 );
setMoveKey( spep_0 -1 + 239, 1, 333.1, -126.4 , 0 );
setMoveKey( spep_0 -1 + 240, 1, 319.3, -135.6 , 0 );
setMoveKey( spep_0 -1 + 242, 1, 319.3, -135.6 , 0 );

setScaleKey( spep_0 -1 + 172, 1, 6.99, 6.99 );
setScaleKey( spep_0 -1 + 175, 1, 6.99, 6.99 );
setScaleKey( spep_0 -1 + 176, 1, 7, 7 );
setScaleKey( spep_0 -1 + 242, 1, 7, 7 );

setRotateKey( spep_0 -1 + 172, 1, -57.9 );
setRotateKey( spep_0 -1 + 175, 1, -57.9 );
setRotateKey( spep_0 -1 + 176, 1, 6.3 );
setRotateKey( spep_0 -1 + 177, 1, 6.3 );
setRotateKey( spep_0 -1 + 178, 1, 4.3 );
setRotateKey( spep_0 -1 + 179, 1, 4.3 );
setRotateKey( spep_0 -1 + 180, 1, 5.6 );
setRotateKey( spep_0 -1 + 181, 1, 5.6 );
setRotateKey( spep_0 -1 + 182, 1, 6.9 );
setRotateKey( spep_0 -1 + 183, 1, 6.9 );
setRotateKey( spep_0 -1 + 184, 1, 8.2 );
setRotateKey( spep_0 -1 + 185, 1, 8.2 );
setRotateKey( spep_0 -1 + 186, 1, 9.5 );
setRotateKey( spep_0 -1 + 187, 1, 9.5 );
setRotateKey( spep_0 -1 + 188, 1, 4.4 );
setRotateKey( spep_0 -1 + 189, 1, 4.4 );
setRotateKey( spep_0 -1 + 190, 1, 7.5 );
setRotateKey( spep_0 -1 + 191, 1, 7.5 );
setRotateKey( spep_0 -1 + 192, 1, 5.6 );
setRotateKey( spep_0 -1 + 193, 1, 5.6 );
setRotateKey( spep_0 -1 + 194, 1, 3.7 );
setRotateKey( spep_0 -1 + 195, 1, 3.7 );
setRotateKey( spep_0 -1 + 196, 1, 1.8 );
setRotateKey( spep_0 -1 + 197, 1, 1.8 );
setRotateKey( spep_0 -1 + 198, 1, 3.4 );
setRotateKey( spep_0 -1 + 199, 1, 3.4 );
setRotateKey( spep_0 -1 + 200, 1, 4.9 );
setRotateKey( spep_0 -1 + 201, 1, 4.9 );
setRotateKey( spep_0 -1 + 202, 1, 3.6 );
setRotateKey( spep_0 -1 + 203, 1, 3.6 );
setRotateKey( spep_0 -1 + 204, 1, 2.3 );
setRotateKey( spep_0 -1 + 205, 1, 2.3 );
setRotateKey( spep_0 -1 + 206, 1, 1 );
setRotateKey( spep_0 -1 + 207, 1, 1 );
setRotateKey( spep_0 -1 + 208, 1, 2 );
setRotateKey( spep_0 -1 + 209, 1, 2 );
setRotateKey( spep_0 -1 + 210, 1, 2.9 );
setRotateKey( spep_0 -1 + 211, 1, 2.9 );
setRotateKey( spep_0 -1 + 212, 1, 1.5 );
setRotateKey( spep_0 -1 + 213, 1, 1.5 );
setRotateKey( spep_0 -1 + 214, 1, 0.1 );
setRotateKey( spep_0 -1 + 215, 1, 0.1 );
setRotateKey( spep_0 -1 + 216, 1, -1.3 );
setRotateKey( spep_0 -1 + 217, 1, -1.3 );
setRotateKey( spep_0 -1 + 218, 1, -1.4 );
setRotateKey( spep_0 -1 + 219, 1, -1.4 );
setRotateKey( spep_0 -1 + 220, 1, -1.6 );
setRotateKey( spep_0 -1 + 221, 1, -1.6 );
setRotateKey( spep_0 -1 + 222, 1, -1.7 );
setRotateKey( spep_0 -1 + 223, 1, -1.7 );
setRotateKey( spep_0 -1 + 224, 1, -1.8 );
setRotateKey( spep_0 -1 + 225, 1, -1.8 );
setRotateKey( spep_0 -1 + 226, 1, -2 );
setRotateKey( spep_0 -1 + 227, 1, -2 );
setRotateKey( spep_0 -1 + 228, 1, -2.1 );
setRotateKey( spep_0 -1 + 229, 1, -2.1 );
setRotateKey( spep_0 -1 + 230, 1, -2.3 );
setRotateKey( spep_0 -1 + 231, 1, -2.3 );
setRotateKey( spep_0 -1 + 232, 1, -2.4 );
setRotateKey( spep_0 -1 + 233, 1, -2.4 );
setRotateKey( spep_0 -1 + 234, 1, -2.6 );
setRotateKey( spep_0 -1 + 235, 1, -2.6 );
setRotateKey( spep_0 -1 + 236, 1, -2.7 );
setRotateKey( spep_0 -1 + 237, 1, -2.7 );
setRotateKey( spep_0 -1 + 238, 1, -3.6 );
setRotateKey( spep_0 -1 + 239, 1, -3.6 );
setRotateKey( spep_0 -1 + 240, 1, -0.5 );
setRotateKey( spep_0 -1 + 242, 1, -0.5 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -1 + 276, 1, 1 );
setDisp( spep_0 -1 + 394, 1, 0 );
changeAnime( spep_0 -1 + 276, 1, 107 );
changeAnime( spep_0 -1 + 296, 1, 106 );
changeAnime( spep_0 -1 + 374, 1, 5 );

setMoveKey( spep_0 -1 + 276, 1, -233.2, 8.9 , 0 );
setMoveKey( spep_0 -1 + 277, 1, -233.2, 8.9 , 0 );
setMoveKey( spep_0 -1 + 278, 1, -233.1, -16.6 , 0 );
setMoveKey( spep_0 -1 + 279, 1, -233.1, -16.6 , 0 );
setMoveKey( spep_0 -1 + 280, 1, -473.7, -46.3 , 0 );
setMoveKey( spep_0 -1 + 281, 1, -473.7, -46.3 , 0 );
setMoveKey( spep_0 -1 + 282, 1, -473.7, -20.8 , 0 );
setMoveKey( spep_0 -1 + 283, 1, -473.7, -20.8 , 0 );
setMoveKey( spep_0 -1 + 284, 1, -473.7, -46.3 , 0 );
setMoveKey( spep_0 -1 + 285, 1, -473.7, -46.3 , 0 );
setMoveKey( spep_0 -1 + 286, 1, -233.1, 8.9 , 0 );
setMoveKey( spep_0 -1 + 287, 1, -233.1, 8.9 , 0 );
setMoveKey( spep_0 -1 + 288, 1, -207.6, 8.9 , 0 );
setMoveKey( spep_0 -1 + 289, 1, -207.6, 8.9 , 0 );
setMoveKey( spep_0 -1 + 290, 1, -473.7, -46.3 , 0 );
setMoveKey( spep_0 -1 + 291, 1, -473.7, -46.3 , 0 );
setMoveKey( spep_0 -1 + 292, 1, -448.2, -46.3 , 0 );
setMoveKey( spep_0 -1 + 293, 1, -448.2, -46.3 , 0 );
setMoveKey( spep_0 -1 + 294, 1, -473.7, -46.3 , 0 );
setMoveKey( spep_0 -1 + 295, 1, -473.7, -46.3 , 0 );--
setMoveKey( spep_0 -1 + 296, 1, -35.2, -145.8 , 0 );
setMoveKey( spep_0 -1 + 297, 1, -35.2, -145.8 , 0 );
setMoveKey( spep_0 -1 + 298, 1, -9.6, -145.8 , 0 );
setMoveKey( spep_0 -1 + 299, 1, -9.6, -145.8 , 0 );
setMoveKey( spep_0 -1 + 300, 1, 92.6, -55 , 0 );
setMoveKey( spep_0 -1 + 301, 1, 92.6, -55 , 0 );
setMoveKey( spep_0 -1 + 302, 1, 67.1, -55 , 0 );
setMoveKey( spep_0 -1 + 303, 1, 67.1, -55 , 0 );
setMoveKey( spep_0 -1 + 304, 1, 92.6, -55 , 0 );
setMoveKey( spep_0 -1 + 305, 1, 92.6, -55 , 0 );
setMoveKey( spep_0 -1 + 306, 1, 92.6, -55 , 0 );
setMoveKey( spep_0 -1 + 307, 1, 92.6, -55 , 0 );
setMoveKey( spep_0 -1 + 308, 1, 108.5, -45.5 , 0 );
setMoveKey( spep_0 -1 + 315, 1, 108.5, -45.5 , 0 );
setMoveKey( spep_0 -1 + 316, 1, 142.1, -28.1 , 0 );
setMoveKey( spep_0 -1 + 323, 1, 142.1, -28.1 , 0 );
setMoveKey( spep_0 -1 + 324, 1, 151.7, -15.4 , 0 );
setMoveKey( spep_0 -1 + 329, 1, 151.7, -15.4 , 0 );--
setMoveKey( spep_0 -1 + 330, 1, 180, 36.1 , 0 );
setMoveKey( spep_0 -1 + 332, 1, 181.7, 38.6 , 0 );
setMoveKey( spep_0 -1 + 334, 1, 183.3, 41.2 , 0 );
setMoveKey( spep_0 -1 + 336, 1, 185, 43.7 , 0 );
setMoveKey( spep_0 -1 + 338, 1, 186.6, 46.2 , 0 );
setMoveKey( spep_0 -1 + 340, 1, 188.3, 48.8 , 0 );
setMoveKey( spep_0 -1 + 342, 1, 189.9, 51.3 , 0 );
setMoveKey( spep_0 -1 + 344, 1, 191.6, 53.8 , 0 );
setMoveKey( spep_0 -1 + 346, 1, 193.2, 56.3 , 0 );
setMoveKey( spep_0 -1 + 348, 1, 194.9, 58.8 , 0 );
setMoveKey( spep_0 -1 + 350, 1, 196.5, 61.3 , 0 );
setMoveKey( spep_0 -1 + 352, 1, 198.2, 63.8 , 0 );
setMoveKey( spep_0 -1 + 354, 1, 199.8, 66.3 , 0 );
setMoveKey( spep_0 -1 + 356, 1, 201.5, 68.8 , 0 );
setMoveKey( spep_0 -1 + 358, 1, 203.1, 71.3 , 0 );
setMoveKey( spep_0 -1 + 360, 1, 204.8, 73.8 , 0 );
setMoveKey( spep_0 -1 + 361, 1, 204.8, 73.8 , 0 );--
setMoveKey( spep_0 -1 + 362, 1, 9, -114.9 , 0 );
setMoveKey( spep_0 -1 + 364, 1, 12.5, -109.1 , 0 );
setMoveKey( spep_0 -1 + 366, 1, 16, -103.5 , 0 );
setMoveKey( spep_0 -1 + 373, 1, 16, -103.5 , 0 );--
setMoveKey( spep_0 -1 + 374, 1, 21.8, 124.8 , 0 );
setMoveKey( spep_0 -1 + 376, 1, 22.4, 135.2 , 0 );
setMoveKey( spep_0 -1 + 378, 1, 22.9, 145.6 , 0 );
setMoveKey( spep_0 -1 + 380, 1, 23.4, 156 , 0 );
setMoveKey( spep_0 -1 + 382, 1, 24, 166.4 , 0 );
setMoveKey( spep_0 -1 + 384, 1, 24.5, 176.8 , 0 );
setMoveKey( spep_0 -1 + 386, 1, 25.1, 187.2 , 0 );
setMoveKey( spep_0 -1 + 388, 1, 25.7, 197.6 , 0 );
setMoveKey( spep_0 -1 + 390, 1, 26.2, 208 , 0 );
setMoveKey( spep_0 -1 + 392, 1, 26.8, 218.4 , 0 );
setMoveKey( spep_0 -1 + 394, 1, 26.8, 218.4 , 0 );

setScaleKey( spep_0 -1 + 276, 1, 3.39, 3.39 );
setScaleKey( spep_0 -1 + 277, 1, 3.39, 3.39 );
setScaleKey( spep_0 -1 + 278, 1, 3.39, 3.39 );
setScaleKey( spep_0 -1 + 279, 1, 3.39, 3.39 );
setScaleKey( spep_0 -1 + 280, 1, 4.5, 4.5 );
setScaleKey( spep_0 -1 + 285, 1, 4.5, 4.5 );
setScaleKey( spep_0 -1 + 286, 1, 3.39, 3.39 );
setScaleKey( spep_0 -1 + 289, 1, 3.39, 3.39 );
setScaleKey( spep_0 -1 + 290, 1, 4.5, 4.5 );
setScaleKey( spep_0 -1 + 295, 1, 4.5, 4.5 );--
setScaleKey( spep_0 -1 + 296, 1, 4.4, 4.4 );
setScaleKey( spep_0 -1 + 299, 1, 4.4, 4.4 );
setScaleKey( spep_0 -1 + 300, 1, 3.2, 3.2 );
setScaleKey( spep_0 -1 + 307, 1, 3.2, 3.2 );
setScaleKey( spep_0 -1 + 308, 1, 3.06, 3.06 );
setScaleKey( spep_0 -1 + 315, 1, 3.06, 3.06 );
setScaleKey( spep_0 -1 + 316, 1, 2.8, 2.8 );
setScaleKey( spep_0 -1 + 323, 1, 2.8, 2.8 );
setScaleKey( spep_0 -1 + 324, 1, 2.7, 2.7 );
setScaleKey( spep_0 -1 + 329, 1, 2.7, 2.7 );--
setScaleKey( spep_0 -1 + 330, 1, 2.76, 2.76 );
setScaleKey( spep_0 -1 + 361, 1, 2.76, 2.76 );--
setScaleKey( spep_0 -1 + 362, 1, 4.5, 4.5 );
setScaleKey( spep_0 -1 + 366, 1, 4.5, 4.5 );
setScaleKey( spep_0 -1 + 373, 1, 4.5, 4.5 );--
setScaleKey( spep_0 -1 + 374, 1, 3.29, 3.29 );
setScaleKey( spep_0 -1 + 376, 1, 3.06, 3.06 );
setScaleKey( spep_0 -1 + 378, 1, 2.82, 2.82 );
setScaleKey( spep_0 -1 + 380, 1, 2.58, 2.58 );
setScaleKey( spep_0 -1 + 382, 1, 2.34, 2.34 );
setScaleKey( spep_0 -1 + 384, 1, 2.1, 2.1 );
setScaleKey( spep_0 -1 + 386, 1, 1.86, 1.86 );
setScaleKey( spep_0 -1 + 388, 1, 1.62, 1.62 );
setScaleKey( spep_0 -1 + 390, 1, 1.38, 1.38 );
setScaleKey( spep_0 -1 + 392, 1, 1.14, 1.14 );
setScaleKey( spep_0 -1 + 394, 1, 1.14, 1.14 );

setRotateKey( spep_0 -1 + 276, 1, -40.4 );
setRotateKey( spep_0 -1 + 279, 1, -40.4 );
setRotateKey( spep_0 -1 + 280, 1, -40.5 );
setRotateKey( spep_0 -1 + 285, 1, -40.5 );
setRotateKey( spep_0 -1 + 286, 1, -40.4 );
setRotateKey( spep_0 -1 + 289, 1, -40.4 );
setRotateKey( spep_0 -1 + 290, 1, -40.5 );
setRotateKey( spep_0 -1 + 295, 1, -40.5 );--
setRotateKey( spep_0 -1 + 296, 1, -27.7 );
setRotateKey( spep_0 -1 + 329, 1, -27.7 );--
setRotateKey( spep_0 -1 + 330, 1, -34.6 );
setRotateKey( spep_0 -1 + 332, 1, -34.4 );
setRotateKey( spep_0 -1 + 334, 1, -34.2 );
setRotateKey( spep_0 -1 + 336, 1, -34 );
setRotateKey( spep_0 -1 + 338, 1, -33.8 );
setRotateKey( spep_0 -1 + 340, 1, -33.7 );
setRotateKey( spep_0 -1 + 342, 1, -33.5 );
setRotateKey( spep_0 -1 + 344, 1, -33.3 );
setRotateKey( spep_0 -1 + 346, 1, -33.1 );
setRotateKey( spep_0 -1 + 348, 1, -32.9 );
setRotateKey( spep_0 -1 + 350, 1, -32.8 );
setRotateKey( spep_0 -1 + 352, 1, -32.6 );
setRotateKey( spep_0 -1 + 354, 1, -32.4 );
setRotateKey( spep_0 -1 + 356, 1, -32.2 );
setRotateKey( spep_0 -1 + 358, 1, -32 );
setRotateKey( spep_0 -1 + 360, 1, -31.8 );
setRotateKey( spep_0 -1 + 366, 1, -31.8 );
setRotateKey( spep_0 -1 + 373, 1, -31.8 );--
setRotateKey( spep_0 -1 + 374, 1, -1.1 );
setRotateKey( spep_0 -1 + 394, 1, -1.1 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -1 + 428, 1, 1 );
setDisp( spep_0 -1 + 566, 1, 0 );
changeAnime( spep_0 -1 + 428, 1, 106 );
changeAnime( spep_0 -1 + 442, 1, 108 );
changeAnime( spep_0 -1 + 500, 1, 106 );

setMoveKey( spep_0 -1 + 428, 1, -130.1, -194.8 , 0 );
setMoveKey( spep_0 -1 + 430, 1, -107.7, -159.7 , 0 );
setMoveKey( spep_0 -1 + 432, 1, -85.4, -124.6 , 0 );
setMoveKey( spep_0 -1 + 434, 1, -63.1, -89.6 , 0 );
setMoveKey( spep_0 -1 + 436, 1, -40.8, -54.5 , 0 );
setMoveKey( spep_0 -1 + 438, 1, -18.4, -19.4 , 0 );
setMoveKey( spep_0 -1 + 440, 1, 3.9, 15.7 , 0 );
setMoveKey( spep_0 -1 + 441, 1, 3.9, 15.7 , 0 );--
setMoveKey( spep_0 -1 + 442, 1, 48.7, 29.8 , 0 );
setMoveKey( spep_0 -1 + 443, 1, 48.7, 29.8 , 0 );
setMoveKey( spep_0 -1 + 444, 1, 37.2, 77.7 , 0 );
setMoveKey( spep_0 -1 + 445, 1, 37.2, 77.7 , 0 );
setMoveKey( spep_0 -1 + 446, 1, 57.7, 54.3 , 0 );
setMoveKey( spep_0 -1 + 447, 1, 57.7, 54.3 , 0 );
setMoveKey( spep_0 -1 + 448, 1, 57.7, 75.3 , 0 );
setMoveKey( spep_0 -1 + 449, 1, 57.7, 75.3 , 0 );
setMoveKey( spep_0 -1 + 450, 1, 34.7, 50.7 , 0 );
setMoveKey( spep_0 -1 + 451, 1, 34.7, 50.7 , 0 );
setMoveKey( spep_0 -1 + 452, 1, 55.7, 74.2 , 0 );
setMoveKey( spep_0 -1 + 453, 1, 55.7, 74.2 , 0 );
setMoveKey( spep_0 -1 + 454, 1, 38, 56.9 , 0 );
setMoveKey( spep_0 -1 + 455, 1, 38, 56.9 , 0 );
setMoveKey( spep_0 -1 + 456, 1, 62.9, 83.8 , 0 );
setMoveKey( spep_0 -1 + 457, 1, 62.9, 83.8 , 0 );
setMoveKey( spep_0 -1 + 458, 1, 66.7, 67.2 , 0 );
setMoveKey( spep_0 -1 + 460, 1, 71.8, 69.7 , 0 );
setMoveKey( spep_0 -1 + 462, 1, 76.5, 72.1 , 0 );
setMoveKey( spep_0 -1 + 464, 1, 80.3, 72.5 , 0 );
setMoveKey( spep_0 -1 + 466, 1, 84.8, 73.1 , 0 );
setMoveKey( spep_0 -1 + 468, 1, 87.7, 73.7 , 0 );
setMoveKey( spep_0 -1 + 470, 1, 91.6, 72.4 , 0 );
setMoveKey( spep_0 -1 + 472, 1, 99, 73.1 , 0 );
setMoveKey( spep_0 -1 + 474, 1, 102.1, 74.2 , 0 );
setMoveKey( spep_0 -1 + 476, 1, 105.1, 72.8 , 0 );
setMoveKey( spep_0 -1 + 478, 1, 91.5, 76.2 , 0 );
setMoveKey( spep_0 -1 + 480, 1, 78.6, 78.4 , 0 );
setMoveKey( spep_0 -1 + 482, 1, 69.2, 80.1 , 0 );
setMoveKey( spep_0 -1 + 484, 1, 52.8, 76.3 , 0 );
setMoveKey( spep_0 -1 + 486, 1, 36.5, 72.5 , 0 );
setMoveKey( spep_0 -1 + 488, 1, 20.1, 68.8 , 0 );
setMoveKey( spep_0 -1 + 490, 1, 3.7, 64.9 , 0 );
setMoveKey( spep_0 -1 + 492, 1, -12.6, 61.1 , 0 );
setMoveKey( spep_0 -1 + 494, 1, -28.9, 57.4 , 0 );
setMoveKey( spep_0 -1 + 499, 1, -28.9, 57.4 , 0 );--
setMoveKey( spep_0 -1 + 500, 1, -95.4, 48.4 , 0 );
setMoveKey( spep_0 -1 + 501, 1, -95.4, 48.4 , 0 );
setMoveKey( spep_0 -1 + 502, 1, -101.7, 38.9 , 0 );
setMoveKey( spep_0 -1 + 503, 1, -101.7, 38.9 , 0 );
setMoveKey( spep_0 -1 + 504, 1, -79.6, 57.8 , 0 );
setMoveKey( spep_0 -1 + 505, 1, -79.6, 57.8 , 0 );
setMoveKey( spep_0 -1 + 506, 1, -101.7, 38.9 , 0 );
setMoveKey( spep_0 -1 + 507, 1, -101.7, 38.9 , 0 );
setMoveKey( spep_0 -1 + 508, 1, -79.6, 57.8 , 0 );
setMoveKey( spep_0 -1 + 509, 1, -79.6, 57.8 , 0 );
setMoveKey( spep_0 -1 + 510, 1, -104.8, 38.9 , 0 );
setMoveKey( spep_0 -1 + 511, 1, -104.8, 38.9 , 0 );
setMoveKey( spep_0 -1 + 512, 1, -79.6, 54.7 , 0 );
setMoveKey( spep_0 -1 + 513, 1, -79.6, 54.7 , 0 );
setMoveKey( spep_0 -1 + 514, 1, -108, 35.8 , 0 );
setMoveKey( spep_0 -1 + 515, 1, -108, 35.8 , 0 );
setMoveKey( spep_0 -1 + 516, 1, -79.6, 57.8 , 0 );
setMoveKey( spep_0 -1 + 517, 1, -79.6, 57.8 , 0 );--
setMoveKey( spep_0 -1 + 518, 1, -57.3, -416.6 , 0 );
setMoveKey( spep_0 -1 + 520, 1, -56.6, -415.6 , 0 );
setMoveKey( spep_0 -1 + 522, 1, -55.9, -414.6 , 0 );
setMoveKey( spep_0 -1 + 524, 1, -55.2, -413.7 , 0 );
setMoveKey( spep_0 -1 + 526, 1, -54.6, -412.7 , 0 );
setMoveKey( spep_0 -1 + 528, 1, -53.9, -411.7 , 0 );
setMoveKey( spep_0 -1 + 530, 1, -53.2, -410.7 , 0 );
setMoveKey( spep_0 -1 + 532, 1, -52.5, -409.8 , 0 );
setMoveKey( spep_0 -1 + 534, 1, -51.9, -408.8 , 0 );
setMoveKey( spep_0 -1 + 536, 1, -51.2, -407.8 , 0 );
setMoveKey( spep_0 -1 + 538, 1, -50.5, -406.8 , 0 );
setMoveKey( spep_0 -1 + 540, 1, -49.8, -405.9 , 0 );
setMoveKey( spep_0 -1 + 542, 1, -49.2, -404.9 , 0 );
setMoveKey( spep_0 -1 + 544, 1, -48.5, -403.9 , 0 );
setMoveKey( spep_0 -1 + 546, 1, -47.8, -402.9 , 0 );
setMoveKey( spep_0 -1 + 548, 1, -47.1, -402 , 0 );
setMoveKey( spep_0 -1 + 550, 1, -46.5, -401 , 0 );
setMoveKey( spep_0 -1 + 552, 1, -45.8, -400 , 0 );
setMoveKey( spep_0 -1 + 554, 1, -45.1, -399 , 0 );
setMoveKey( spep_0 -1 + 556, 1, -44.4, -398.1 , 0 );
setMoveKey( spep_0 -1 + 558, 1, -43.8, -397.1 , 0 );
setMoveKey( spep_0 -1 + 560, 1, -43.1, -396.1 , 0 );
setMoveKey( spep_0 -1 + 562, 1, -42.4, -395.1 , 0 );
setMoveKey( spep_0 -1 + 564, 1, -41.7, -394.1 , 0 );
setMoveKey( spep_0 -1 + 566, 1, -41.7, -394.1 , 0 );

setScaleKey( spep_0 -1 + 428, 1, 2.5, 2.5 );
setScaleKey( spep_0 -1 + 441, 1, 2.5, 2.5 );--
setScaleKey( spep_0 -1 + 442, 1, 2.9, 2.9 );
setScaleKey( spep_0 -1 + 494, 1, 2.9, 2.9 );
setScaleKey( spep_0 -1 + 499, 1, 2.9, 2.9 );--
setScaleKey( spep_0 -1 + 500, 1, 2.5, 2.5 );
setScaleKey( spep_0 -1 + 517, 1, 2.5, 2.5 );--
setScaleKey( spep_0 -1 + 518, 1, 3.99, 3.99 );
setScaleKey( spep_0 -1 + 566, 1, 3.99, 3.99 );--

setRotateKey( spep_0 -1 + 428, 1, -31.6 );
setRotateKey( spep_0 -1 + 441, 1, -31.6 );--
setRotateKey( spep_0 -1 + 442, 1, 0 );
setRotateKey( spep_0 -1 + 448, 1, 0 );
setRotateKey( spep_0 -1 + 450, 1, 0.1 );
setRotateKey( spep_0 -1 + 451, 1, 0.1 );
setRotateKey( spep_0 -1 + 452, 1, 0.3 );
setRotateKey( spep_0 -1 + 453, 1, 0.3 );
setRotateKey( spep_0 -1 + 454, 1, 0.4 );
setRotateKey( spep_0 -1 + 455, 1, 0.4 );
setRotateKey( spep_0 -1 + 456, 1, 0.6 );
setRotateKey( spep_0 -1 + 457, 1, 0.6 );
setRotateKey( spep_0 -1 + 458, 1, 0.7 );
setRotateKey( spep_0 -1 + 460, 1, 0.9 );
setRotateKey( spep_0 -1 + 462, 1, 1 );
setRotateKey( spep_0 -1 + 464, 1, 1.1 );
setRotateKey( spep_0 -1 + 466, 1, 1.3 );
setRotateKey( spep_0 -1 + 468, 1, 1.4 );
setRotateKey( spep_0 -1 + 470, 1, 1.6 );
setRotateKey( spep_0 -1 + 472, 1, 1.7 );
setRotateKey( spep_0 -1 + 474, 1, 1.9 );
setRotateKey( spep_0 -1 + 476, 1, 2 );
setRotateKey( spep_0 -1 + 478, 1, 4 );
setRotateKey( spep_0 -1 + 480, 1, 4.8 );
setRotateKey( spep_0 -1 + 482, 1, 5.6 );
setRotateKey( spep_0 -1 + 484, 1, 6.4 );
setRotateKey( spep_0 -1 + 486, 1, 7.2 );
setRotateKey( spep_0 -1 + 488, 1, 8.1 );
setRotateKey( spep_0 -1 + 490, 1, 8.9 );
setRotateKey( spep_0 -1 + 492, 1, 9.7 );
setRotateKey( spep_0 -1 + 494, 1, 10.5 );
setRotateKey( spep_0 -1 + 499, 1, 10.5 );--
setRotateKey( spep_0 -1 + 500, 1, -44.4 );
setRotateKey( spep_0 -1 + 517, 1, -44.4 );--
setRotateKey( spep_0 -1 + 518, 1, -50 );
setRotateKey( spep_0 -1 + 566, 1, -50 );--

setDisp( spep_0 -1 + 570, 1, 1 );
setDisp( spep_0 -1 + 572, 1, 0 );
changeAnime( spep_0 -1 + 570, 1, 108 );

a=80;
b=360;
setMoveKey( spep_0 -1 + 570, 1, -41.7 +a, -394.1 -b , 0 );
setMoveKey( spep_0 -1 + 572, 1, -41.7 +a, -394.1 -b , 0 );

s=0;
setScaleKey( spep_0 -1 + 570, 1, 3.99 -s, 3.99 -s );--
setScaleKey( spep_0 -1 + 572, 1, 3.99 -s, 3.99 -s );--

setRotateKey( spep_0 -1 + 570, 1, 88 );--
setRotateKey( spep_0 -1 + 572, 1, 88 );--

-- ** 敵キャラクター ** --
setDisp( spep_0 -1 + 580, 1, 1 );
setDisp( spep_0 -1 + 610, 1, 0 );
changeAnime( spep_0 -1 + 580, 1, 107 );

setMoveKey( spep_0 -1 + 580, 1, -87.6, 169.8 , 0 );
setMoveKey( spep_0 -1 + 582, 1, -85.3, 165.4 , 0 );
setMoveKey( spep_0 -1 + 584, 1, -78.4, 152.2 , 0 );
setMoveKey( spep_0 -1 + 586, 1, -66.8, 130.2 , 0 );
setMoveKey( spep_0 -1 + 588, 1, -50.6, 99.5 , 0 );
setMoveKey( spep_0 -1 + 590, 1, -29.8, 59.9 , 0 );
setMoveKey( spep_0 -1 + 592, 1, -4.4, 11.6 , 0 );
setMoveKey( spep_0 -1 + 594, 1, 25.7, -45.5 , 0 );
setMoveKey( spep_0 -1 + 596, 1, 60.3, -111.5 , 0 );
setMoveKey( spep_0 -1 + 598, 1, 99.6, -186.2 , 0 );
setMoveKey( spep_0 -1 + 600, 1, 143.5, -269.7 , 0 );
setMoveKey( spep_0 -1 + 602, 1, 192.1, -362 , 0 );
setMoveKey( spep_0 -1 + 604, 1, 245.2, -463.1 , 0 );
setMoveKey( spep_0 -1 + 606, 1, 303, -572.9 , 0 );
setMoveKey( spep_0 -1 + 608, 1, 365.4, -691.6 , 0 );
setMoveKey( spep_0 -1 + 610, 1, 432.5, -819.1 , 0 );
--setMoveKey( spep_0 -1 + 611, 1, 432.5, -819.1 , 0 );

setScaleKey( spep_0 -1 + 580, 1, 0.22, 0.22 );
setScaleKey( spep_0 -1 + 582, 1, 0.23, 0.23 );
setScaleKey( spep_0 -1 + 584, 1, 0.27, 0.27 );
setScaleKey( spep_0 -1 + 586, 1, 0.33, 0.33 );
setScaleKey( spep_0 -1 + 588, 1, 0.42, 0.42 );
setScaleKey( spep_0 -1 + 590, 1, 0.53, 0.53 );
setScaleKey( spep_0 -1 + 592, 1, 0.66, 0.66 );
setScaleKey( spep_0 -1 + 594, 1, 0.82, 0.82 );
setScaleKey( spep_0 -1 + 596, 1, 1.01, 1.01 );
setScaleKey( spep_0 -1 + 598, 1, 1.22, 1.22 );
setScaleKey( spep_0 -1 + 600, 1, 1.45, 1.45 );
setScaleKey( spep_0 -1 + 602, 1, 1.71, 1.71 );
setScaleKey( spep_0 -1 + 604, 1, 2, 2 );
setScaleKey( spep_0 -1 + 606, 1, 2.3, 2.3 );
setScaleKey( spep_0 -1 + 608, 1, 2.64, 2.64 );
setScaleKey( spep_0 -1 + 610, 1, 3, 3 );
--setScaleKey( spep_0 -1 + 611, 1, 3, 3 );

setRotateKey( spep_0 -1 + 580, 1, 45.9 );
setRotateKey( spep_0 -1 + 610, 1, 45.9 );
--setRotateKey( spep_0 -1 + 611, 1, 45.9 );

-- ** 音 ** --
--悟空瞬間移動で向かってくる
SE007 = playSeVer2( spep_0 + 124, 1235, "",spep_0 + 160, 0, 8, 0.6);
setPitch( spep_0 + 124, SE007, 900 );
setTimeStretch( SE007, 1.6, 30, 4 );
SE008 = playSeVer2( spep_0 + 144, 1235, "",spep_0 + 184, 0, 12, 0.6);
setPitch( spep_0 + 144, SE008, 900 );
setTimeStretch( SE008, 1.6, 30, 4 );

--悟空ラッシュ
SE009 = playSeVer2( spep_0 + 168, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 168, 1110, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 180, 1000, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 186, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE012, 89 );
SE013 = playSeVer2( spep_0 + 196, 1010, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 196, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE014, 89 );
setPitch( spep_0 + 196, SE014, -200 );
setTimeStretch( SE014, 0.87, 30, 4 );
SE015 = playSeVer2( spep_0 + 204, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 206, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 216, 1010, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 226, 1110, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 234, 1004, "", 0, 0, 0, -1);

--ベジータパンチ
SE020 = playSeVer2( spep_0 + 268, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE020, 92 );
SE021 = playSeVer2( spep_0 + 268, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE021, 82 );
SE022 = playSeVer2( spep_0 + 268, 1359, "", 0, 0, 0, -1);

--ベジータ蹴り飛ばし
SE023 = playSeVer2( spep_0 + 342, 1116, "",spep_0 + 372, 0, 10, -1);
SE024 = playSeVer2( spep_0 + 358, 1153, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 358, 1120, "", 0, 0, 0, -1);

--悟空突っ込んでくる
SE026 = playSeVer2( spep_0 + 382, 1182, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 382, 9, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 382, 1117, "", 0, 0, 0, -1);

--悟空膝蹴り
SE029 = playSeVer2( spep_0 + 436, 1359, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 436, 1153, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 436, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE032 = playSeVer2( spep_0 + 472, 1109, "", 0, 0, 0, -1);

--ベジータ蹴り
SE033 = playSeVer2( spep_0 + 490, 1153, "",spep_0 + 524, 0, 16, -1);
SE034 = playSeVer2( spep_0 + 490, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 490, SE034, 81 );
SE035 = playSeVer2( spep_0 + 490, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 490, SE035, 84 );

--瞬間移動
SE036 = playSeVer2( spep_0 + 514, 1109, "", 0, 0, 0, -1);

--悟空宙返り
SE037 = playSeVer2( spep_0 + 536, 1004, "", 0, 0, 0, -1);

--悟空蹴り落とし
SE038 = playSeVer2( spep_0 + 554, 1123, "",spep_0 + 620, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 554, SE038, 91 );
SE039 = playSeVer2( spep_0 + 558, 1359, "",spep_0 + 594, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 558, SE039, 81 );
SE040 = playSeVer2( spep_0 + 566, 1110, "",spep_0 + 620, 0, 10, -1);
SE041 = playSeVer2( spep_0 + 572, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 572, SE041, 75 );

-- ** 次の準備 ** --
spep_c = spep_0 + 609;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
	print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_c, SE_05);
	speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_c, SE_05);
	speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_c + 0, SE_05 );

--連続気弾
SE043 = playSeVer2( spep_c + 96, 1021, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_c + 96, 1357, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_c + 96, SE044, 81 );
SE045 = playSeVer2( spep_c + 96, 1016, "",spep_c + 116, 0, 4, -1);


-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_c + 94;

------------------------------------------------------
-- ベジータが気弾放ちながら上空へ(258F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ベジータが気弾放ちながら上空へ、  ef_002
setEffMoveKey( spep_2 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 258, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 258, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_f, 0 );
setEffRotateKey( spep_2 + 258, shot_f, 0 );
setEffAlphaKey( spep_2 + 0, shot_f, 255 );
setEffAlphaKey( spep_2 + 258 -2, shot_f, 255 );
setEffAlphaKey( spep_2 + 258 -1, shot_f, 255 );
setEffAlphaKey( spep_2 + 258, shot_f, 0 );

shot_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --↑敵を挟んだ背景   ef_002_bg
setEffMoveKey( spep_2 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 258, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 258, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_b, 0 );
setEffRotateKey( spep_2 + 258, shot_b, 0 );
setEffAlphaKey( spep_2 + 0, shot_b, 255 );
setEffAlphaKey( spep_2 + 258 -2, shot_b, 255 );
setEffAlphaKey( spep_2 + 258 -1, shot_b, 255 );
setEffAlphaKey( spep_2 + 258, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 48, 1, 1 );
setDisp( spep_2 -1 + 76, 1, 0 );
changeAnime( spep_2 -1 + 48, 1, 5 );

setMoveKey( spep_2 -1 + 48, 1, 0.4, -13.8 , 0 );
setMoveKey( spep_2 -1 + 50, 1, 0.6, -19.1 , 0 );
setMoveKey( spep_2 -1 + 52, 1, 0.6, -24.1 , 0 );
setMoveKey( spep_2 -1 + 54, 1, 0.6, -28.7 , 0 );
setMoveKey( spep_2 -1 + 56, 1, 0.6, -33 , 0 );
setMoveKey( spep_2 -1 + 58, 1, 0.6, -37 , 0 );
setMoveKey( spep_2 -1 + 60, 1, 0.6, -40.5 , 0 );
setMoveKey( spep_2 -1 + 62, 1, 0.5, -43.7 , 0 );
setMoveKey( spep_2 -1 + 64, 1, 0.5, -46.6 , 0 );
setMoveKey( spep_2 -1 + 66, 1, 0.4, -49 , 0 );
setMoveKey( spep_2 -1 + 68, 1, 0.4, -51 , 0 );
setMoveKey( spep_2 -1 + 70, 1, 0.4, -52.7 , 0 );
setMoveKey( spep_2 -1 + 72, 1, 0.3, -53.9 , 0 );
setMoveKey( spep_2 -1 + 74, 1, 0.3, -54.8 , 0 );
setMoveKey( spep_2 -1 + 76, 1, 0.3, -54.8 , 0 );

setScaleKey( spep_2 -1 + 48, 1, 3, 3 );
setScaleKey( spep_2 -1 + 50, 1, 2.61, 2.61 );
setScaleKey( spep_2 -1 + 52, 1, 2.25, 2.25 );
setScaleKey( spep_2 -1 + 54, 1, 1.92, 1.92 );
setScaleKey( spep_2 -1 + 56, 1, 1.61, 1.61 );
setScaleKey( spep_2 -1 + 58, 1, 1.33, 1.33 );
setScaleKey( spep_2 -1 + 60, 1, 1.08, 1.08 );
setScaleKey( spep_2 -1 + 62, 1, 0.86, 0.86 );
setScaleKey( spep_2 -1 + 64, 1, 0.67, 0.67 );
setScaleKey( spep_2 -1 + 66, 1, 0.5, 0.5 );
setScaleKey( spep_2 -1 + 68, 1, 0.36, 0.36 );
setScaleKey( spep_2 -1 + 70, 1, 0.24, 0.24 );
setScaleKey( spep_2 -1 + 72, 1, 0.16, 0.16 );
setScaleKey( spep_2 -1 + 74, 1, 0.1, 0.1 );
setScaleKey( spep_2 -1 + 76, 1, 0.1, 0.1 );

setRotateKey( spep_2 -1 + 48, 1, -0.9 );
setRotateKey( spep_2 -1 + 50, 1, -0.8 );
setRotateKey( spep_2 -1 + 76, 1, -0.8 );

-- ** 音 ** --
--連続気弾
SE047 = playSeVer2( spep_2 + 10, 1016, "",spep_2 + 30, 0, 4, 0.6);
SE049 = playSeVer2( spep_2 + 18, 1016, "",spep_2 + 38, 0, 4, 0.6);
SE051 = playSeVer2( spep_2 + 24, 1016, "",spep_2 + 44, 0, 4, 0.6);
SE053 = playSeVer2( spep_2 + 32, 1016, "",spep_2 + 52, 0, 4, 0.6);
SE055 = playSeVer2( spep_2 + 40, 1016, "",spep_2 + 60, 0, 4, 0.6);
SE056 = playSeVer2( spep_2 + 48, 1016, "",spep_2 + 68, 0, 4, 0.6);
SE058 = playSeVer2( spep_2 + 54, 1016, "",spep_2 + 74, 0, 4, 0.6);
SE060 = playSeVer2( spep_2 + 62, 1016, "",spep_2 + 84, 0, 4, 0.6);
SE062 = playSeVer2( spep_2 + 70, 1016, "",spep_2 + 92, 0, 4, 0.6);
SE065 = playSeVer2( spep_2 + 78, 1016, "",spep_2 + 100, 0, 4, 0.6);
SE066 = playSeVer2( spep_2 + 86, 1016, "",spep_2 + 106, 0, 4, 0.6);
SE068 = playSeVer2( spep_2 + 94, 1016, "",spep_2 + 114, 0, 4, 0.6);
SE070 = playSeVer2( spep_2 + 102, 1016, "",spep_2 + 122, 0, 4, 0.6);
SE073 = playSeVer2( spep_2 + 110, 1016, "",spep_2 + 130, 0, 4, 0.6);
SE075 = playSeVer2( spep_2 + 116, 1016, "",spep_2 + 136, 0, 4, 0.6);
SE076 = playSeVer2( spep_2 + 122, 1016, "",spep_2 + 142, 0, 4, 0.6);
SE078 = playSeVer2( spep_2 + 130, 1016, "",spep_2 + 150, 0, 4, 0.6);
SE080 = playSeVer2( spep_2 + 138, 1016, "",spep_2 + 158, 0, 4, 0.6);
SE082 = playSeVer2( spep_2 + 146, 1016, "",spep_2 + 166, 0, 4, 0.6);
SE084 = playSeVer2( spep_2 + 152, 1016, "",spep_2 + 172, 0, 4, 0.6);
SE086 = playSeVer2( spep_2 + 156, 1109, "", 0, 0, 0, -1);
SE087 = playSeVer2( spep_2 + 162, 1016, "",spep_2 + 182, 0, 4, 0.6);
SE088 = playSeVer2( spep_2 + 168, 1016, "",spep_2 + 188, 0, 4, 0.6);
SE090 = playSeVer2( spep_2 + 176, 1016, "",spep_2 + 196, 0, 4, 0.6);
SE096 = playSeVer2( spep_2 + 184, 1016, "",spep_2 + 206, 0, 4, 0.6);
SE098 = playSeVer2( spep_2 + 192, 1016, "",spep_2 + 214, 0, 4, 0.6);
SE100 = playSeVer2( spep_2 + 200, 1016, "",spep_2 + 222, 0, 4, 0.6);
SE102 = playSeVer2( spep_2 + 208, 1016, "",spep_2 + 228, 0, 4, 0.6);
SE104 = playSeVer2( spep_2 + 216, 1016, "",spep_2 + 236, 0, 4, 0.6);
SE106 = playSeVer2( spep_2 + 224, 1016, "",spep_2 + 244, 0, 4, 0.6);
SE107 = playSeVer2( spep_2 + 232, 1016, "",spep_2 + 252, 0, 4, 0.6);
SE109 = playSeVer2( spep_2 + 238, 1016, "",spep_2 + 258, 0, 4, 0.6);
SE111 = playSeVer2( spep_2 + 246, 1016, "",spep_2 + 266, 0, 4, 0.6);
SE113 = playSeVer2( spep_2 + 252, 1016, "",spep_2 + 272, 0, 4, 0.6);

--連続気弾B
SE046 = playSeVer2( spep_2 + 6, 1403, "",spep_2 + 266, 0, 4, 0.6);
setSeVolumeByWorkId( spep_2 + 6, SE046, 140 );
--[[SE048 = playSeVer2( spep_2 + 16, 1358, "",spep_2 + 30, 0, 4, 0.6);
SE050 = playSeVer2( spep_2 + 22, 1358, "",spep_2 + 36, 0, 4, 0.6);
SE052 = playSeVer2( spep_2 + 30, 1358, "",spep_2 + 44, 0, 4, 0.6);
SE054 = playSeVer2( spep_2 + 38, 1358, "",spep_2 + 52, 0, 4, 0.6);
SE057 = playSeVer2( spep_2 + 48, 1358, "",spep_2 + 62, 0, 4, 0.6);
SE059 = playSeVer2( spep_2 + 58, 1358, "",spep_2 + 72, 0, 4, 0.6);
SE061 = playSeVer2( spep_2 + 68, 1358, "",spep_2 + 82, 0, 4, 0.6);
SE063 = playSeVer2( spep_2 + 76, 1358, "",spep_2 + 90, 0, 4, 0.6);
--SE067 = playSeVer2( spep_2 + 86, 1358, "",spep_2 + 106, 0, 4, -1);
SE069 = playSeVer2( spep_2 + 96, 1358, "",spep_2 + 110, 0, 4, 0.6);
SE072 = playSeVer2( spep_2 + 104, 1358, "",spep_2 + 118, 0, 4, 0.6);
SE074 = playSeVer2( spep_2 + 112, 1358, "",spep_2 + 128, 0, 4, 0.6);
SE077 = playSeVer2( spep_2 + 120, 1358, "",spep_2 + 138, 0, 4, 0.6);
--SE079 = playSeVer2( spep_2 + 130, 1358, "",spep_2 + 146, 0, 4, 0.6);
SE081 = playSeVer2( spep_2 + 138, 1358, "",spep_2 + 154, 0, 4, 0.6);
SE083 = playSeVer2( spep_2 + 146, 1358, "",spep_2 + 162, 0, 4, 0.6);
SE085 = playSeVer2( spep_2 + 154, 1358, "",spep_2 + 170, 0, 4, 0.6);
SE089 = playSeVer2( spep_2 + 162, 1358, "",spep_2 + 182, 0, 4, 0.6);
--SE091 = playSeVer2( spep_2 + 170, 1358, "",spep_2 + 192, 0, 4, 0.6);
SE092 = playSeVer2( spep_2 + 180, 1358, "",spep_2 + 198, 0, 4, 0.6);
SE099 = playSeVer2( spep_2 + 190, 1358, "",spep_2 + 208, 0, 4, 0.6);
SE101 = playSeVer2( spep_2 + 200, 1358, "",spep_2 + 216, 0, 4, 0.6);
SE103 = playSeVer2( spep_2 + 210, 1358, "",spep_2 + 224, 0, 4, 0.6);
SE105 = playSeVer2( spep_2 + 220, 1358, "",spep_2 + 236, 0, 4, 0.6);
SE108 = playSeVer2( spep_2 + 230, 1358, "",spep_2 + 246, 0, 4, 0.6);
SE110 = playSeVer2( spep_2 + 240, 1358, "",spep_2 + 254, 0, 4, 0.6);
SE112 = playSeVer2( spep_2 + 248, 1358, "",spep_2 + 260, 0, 4, 0.6);
SE114 = playSeVer2( spep_2 + 254, 1358, "",spep_2 + 266, 0, 4, 0.6);]]

--爆発
SE064 = playSeVer2( spep_2 + 78, 1024, "", 0, 0, 0, -1);
SE071 = playSeVer2( spep_2 + 104, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104, SE071, 66 );

--悟空突っ込んでくる
SE093 = playSeVer2( spep_2 + 184, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 184, SE093, 48 );
SE094 = playSeVer2( spep_2 + 184, 1117, "", 0, 0, 0, -1);
SE095 = playSeVer2( spep_2 + 184, 1183, "", 0, 0, 0, -1);
SE097 = playSeVer2( spep_2 + 190, 9, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 258 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 258-2;


------------------------------------------------------
-- 悟空龍拳貫通フィニッシュ(318F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --悟空龍拳貫通フィニッシュ    ef_003
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 318, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 318, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 318, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 318, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --↑敵を挟んだ背景 ef_003_bg
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 318, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 318, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 318, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 318, finish_b, 255 );

a = 1;
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 +a + 86, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3 +a + 16, 1, 108 );

setMoveKey( spep_3 + 0, 1, 146.1, -173.6 , 0 );
setMoveKey( spep_3 + 2, 1, 146.1, -173.6 , 0 );
setMoveKey( spep_3 +a + 2, 1, 92, -138.1 , 0 );
setMoveKey( spep_3 +a + 3, 1, 92, -138.1 , 0 );
setMoveKey( spep_3 +a + 4, 1, 92, -138.1 , 0 );
setMoveKey( spep_3 +a + 5, 1, 92, -138.1 , 0 );
setMoveKey( spep_3 +a + 6, 1, 21.1, -94.8 , 0 );
setMoveKey( spep_3 +a + 7, 1, 21.1, -94.8 , 0 );
setMoveKey( spep_3 +a + 8, 1, 8.6, -88.5 , 0 );
setMoveKey( spep_3 +a + 9, 1, 8.6, -88.5 , 0 );
setMoveKey( spep_3 +a + 10, 1, 8.6, -88.5 , 0 );
setMoveKey( spep_3 +a + 11, 1, 8.6, -88.5 , 0 );
setMoveKey( spep_3 +a + 12, 1, 5.3, -86.5 , 0 );
setMoveKey( spep_3 +a + 15, 1, 5.3, -86.5 , 0 );
setMoveKey( spep_3 +a + 16, 1, 15, -92.5 , 0 );
setMoveKey( spep_3 +a + 18, 1, 11.5, -90.5 , 0 );
setMoveKey( spep_3 +a + 20, 1, 8, -88.4 , 0 );
setMoveKey( spep_3 +a + 22, 1, 4.6, -86.3 , 0 );
setMoveKey( spep_3 +a + 24, 1, 1.1, -84.2 , 0 );
setMoveKey( spep_3 +a + 26, 1, -2.3, -82.1 , 0 );
setMoveKey( spep_3 +a + 28, 1, -5.8, -80 , 0 );
setMoveKey( spep_3 +a + 30, 1, -9.3, -77.9 , 0 );
setMoveKey( spep_3 +a + 32, 1, -12.8, -75.9 , 0 );
setMoveKey( spep_3 +a + 34, 1, -16.2, -73.8 , 0 );
setMoveKey( spep_3 +a + 36, 1, -19.7, -71.7 , 0 );
setMoveKey( spep_3 +a + 38, 1, -23.2, -69.6 , 0 );
setMoveKey( spep_3 +a + 40, 1, -26.7, -67.5 , 0 );
setMoveKey( spep_3 +a + 42, 1, -30.1, -65.4 , 0 );
setMoveKey( spep_3 +a + 44, 1, -33.6, -63.3 , 0 );
setMoveKey( spep_3 +a + 46, 1, -37.1, -61.3 , 0 );
setMoveKey( spep_3 +a + 48, 1, -40.6, -59.2 , 0 );
setMoveKey( spep_3 +a + 50, 1, -44, -57.1 , 0 );
setMoveKey( spep_3 +a + 52, 1, -47.5, -55 , 0 );
setMoveKey( spep_3 +a + 54, 1, -51, -52.9 , 0 );
setMoveKey( spep_3 +a + 56, 1, -54.5, -50.8 , 0 );
setMoveKey( spep_3 +a + 58, 1, -57.9, -48.8 , 0 );
setMoveKey( spep_3 +a + 60, 1, -61.4, -46.7 , 0 );
setMoveKey( spep_3 +a + 62, 1, -64.9, -44.6 , 0 );
setMoveKey( spep_3 +a + 64, 1, -68.4, -42.5 , 0 );
setMoveKey( spep_3 +a + 66, 1, -71.8, -40.4 , 0 );
setMoveKey( spep_3 +a + 68, 1, -75.3, -38.3 , 0 );
setMoveKey( spep_3 +a + 70, 1, -78.8, -36.2 , 0 );
setMoveKey( spep_3 +a + 72, 1, -82.3, -34.2 , 0 );
setMoveKey( spep_3 +a + 74, 1, -85.7, -32.1 , 0 );
setMoveKey( spep_3 +a + 76, 1, -89.2, -30 , 0 );
setMoveKey( spep_3 +a + 78, 1, -92.7, -27.9 , 0 );
setMoveKey( spep_3 +a + 80, 1, -96.2, -25.8 , 0 );
setMoveKey( spep_3 +a + 82, 1, -99.6, -23.7 , 0 );
setMoveKey( spep_3 +a + 84, 1, -103.1, -21.6 , 0 );
setMoveKey( spep_3 +a + 86, 1, -103.1, -21.6 , 0 );

setScaleKey( spep_3 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_3 +a + 15, 1, 1.7, 1.7 );
setScaleKey( spep_3 +a + 16, 1, 2, 2 );
setScaleKey( spep_3 +a + 86, 1, 2, 2 );

setRotateKey( spep_3 + 0, 1, -36.2 );
setRotateKey( spep_3 +a + 15, 1, -36.2 );
setRotateKey( spep_3 +a + 16, 1, 31.5 );
setRotateKey( spep_3 +a + 86, 1, 31.5 );

-- ** 音 ** --
--龍拳爆発
SE115 = playSeVer2( spep_3 + 0, 1153, "", 0, 0, 0, -1);
SE116 = playSeVer2( spep_3 + 0, 1027, "", 0, 0, 0, -1);
SE117 = playSeVer2( spep_3 + 0, 1321, "",spep_3 + 114, 0, 52, -1);
SE118 = playSeVer2( spep_3 + 0, 1066, "",spep_3 + 114, 0, 52, -1);
SE119 = playSeVer2( spep_3 + 0, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE119, 74 );
setPitch( spep_3 + 0, SE119, -800 );
setTimeStretch( SE119, 0.47, 30, 4 );
SE120 = playSeVer2( spep_3 + 4, 1180, "", 0, 0, 0, -1);

--ラスト爆発
SE121 = playSeVer2( spep_3 + 76, 1159, "", 0, 0, 0, -1);
SE122 = playSeVer2( spep_3 + 76, 1067, "", 0, 0, 0, -1);
SE123 = playSeVer2( spep_3 + 82, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 318 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_3 + 14 );
--entryFade( spep_3 +128 - 4, 2,  4, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_3 + 132 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- GT悟空と超4ベジータが真横に構え(610F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --GT悟空と超4ベジータが真横に構え    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 610, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 610, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 610, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 610 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 610 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 610, first_f, 0 );

first_b = entryEffect( spep_0 + 0, SP_02r, 0x80, -1, 0, 0, 0 );  --↑敵を挟んだ背景  ef_001_bg
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 610, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 610, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 610, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 610 -2, first_b, 255 );
setEffAlphaKey( spep_0 + 610 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 610, first_b, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--顔カットイン
--SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 20, 1233, "", 0, 0, 0, -1);
setPitch( spep_0 + 20, SE003, -600 );
setTimeStretch( SE003, 0.6, 30, 4 );

--瞬間移動
SE004 = playSeVer2( spep_0 + 90, 1109, "", 0, 0, 0, -1);

--悟空瞬間移動で向かってくる
SE005 = playSeVer2( spep_0 + 106, 1278, "",spep_0 + 198, 0, 16, -1);
SE006 = playSeVer2( spep_0 + 106, 1235, "",spep_0 + 142, 0, 10, 0.6);
setPitch( spep_0 + 106, SE006, 900 );
setTimeStretch( SE006, 1.6, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 610 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    
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
setDisp( spep_0 -1 + 172, 1, 1 );
setDisp( spep_0 -1 + 242, 1, 0 );
changeAnime( spep_0 -1 + 172, 1, 106 );
changeAnime( spep_0 -1 + 176, 1, 108 );

setMoveKey( spep_0 -1 + 172, 1, 177.1, -126.7 , 0 );
setMoveKey( spep_0 -1 + 173, 1, 177.1, -126.7 , 0 );
setMoveKey( spep_0 -1 + 174, 1, 176.3, -126.7 , 0 );
setMoveKey( spep_0 -1 + 175, 1, 176.3, -126.7 , 0 );

setMoveKey( spep_0 -1 + 176, 1, 297.3, -126.6 , 0 );
setMoveKey( spep_0 -1 + 177, 1, 297.3, -126.6 , 0 );
setMoveKey( spep_0 -1 + 178, 1, 307.4, -123.2 , 0 );
setMoveKey( spep_0 -1 + 179, 1, 307.4, -123.2 , 0 );
setMoveKey( spep_0 -1 + 180, 1, 258, -140.1 , 0 );
setMoveKey( spep_0 -1 + 181, 1, 258, -140.1 , 0 );
setMoveKey( spep_0 -1 + 182, 1, 263.9, -142.3 , 0 );
setMoveKey( spep_0 -1 + 183, 1, 263.9, -142.3 , 0 );
setMoveKey( spep_0 -1 + 184, 1, 267.4, -144.5 , 0 );
setMoveKey( spep_0 -1 + 185, 1, 267.4, -144.5 , 0 );
setMoveKey( spep_0 -1 + 186, 1, 307.6, -149.1 , 0 );
setMoveKey( spep_0 -1 + 187, 1, 307.6, -149.1 , 0 );
setMoveKey( spep_0 -1 + 188, 1, 315.5, -140.5 , 0 );
setMoveKey( spep_0 -1 + 189, 1, 315.5, -140.5 , 0 );
setMoveKey( spep_0 -1 + 190, 1, 290.2, -145.8 , 0 );
setMoveKey( spep_0 -1 + 191, 1, 290.2, -145.8 , 0 );
setMoveKey( spep_0 -1 + 192, 1, 292.2, -142.6 , 0 );
setMoveKey( spep_0 -1 + 193, 1, 292.2, -142.6 , 0 );
setMoveKey( spep_0 -1 + 194, 1, 281.9, -139.4 , 0 );
setMoveKey( spep_0 -1 + 195, 1, 281.9, -139.4 , 0 );
setMoveKey( spep_0 -1 + 196, 1, 322.9, -136.1 , 0 );
setMoveKey( spep_0 -1 + 197, 1, 322.9, -136.1 , 0 );
setMoveKey( spep_0 -1 + 198, 1, 323.9, -138.8 , 0 );
setMoveKey( spep_0 -1 + 199, 1, 323.9, -138.8 , 0 );
setMoveKey( spep_0 -1 + 200, 1, 285.6, -141.5 , 0 );
setMoveKey( spep_0 -1 + 201, 1, 285.6, -141.5 , 0 );
setMoveKey( spep_0 -1 + 202, 1, 286.9, -139.3 , 0 );
setMoveKey( spep_0 -1 + 203, 1, 286.9, -139.3 , 0 );
setMoveKey( spep_0 -1 + 204, 1, 285.7, -137 , 0 );
setMoveKey( spep_0 -1 + 205, 1, 285.7, -137 , 0 );
setMoveKey( spep_0 -1 + 206, 1, 333.5, -134.7 , 0 );
setMoveKey( spep_0 -1 + 207, 1, 333.5, -134.7 , 0 );
setMoveKey( spep_0 -1 + 208, 1, 337.4, -136.4 , 0 );
setMoveKey( spep_0 -1 + 209, 1, 337.4, -136.4 , 0 );
setMoveKey( spep_0 -1 + 210, 1, 307.2, -138.1 , 0 );
setMoveKey( spep_0 -1 + 211, 1, 307.2, -138.1 , 0 );
setMoveKey( spep_0 -1 + 212, 1, 308.5, -135.6 , 0 );
setMoveKey( spep_0 -1 + 213, 1, 308.5, -135.6 , 0 );
setMoveKey( spep_0 -1 + 214, 1, 309.1, -133.1 , 0 );
setMoveKey( spep_0 -1 + 215, 1, 309.1, -133.1 , 0 );
setMoveKey( spep_0 -1 + 216, 1, 331.2, -130.6 , 0 );
setMoveKey( spep_0 -1 + 217, 1, 331.2, -130.6 , 0 );
setMoveKey( spep_0 -1 + 218, 1, 339.3, -130.3 , 0 );
setMoveKey( spep_0 -1 + 219, 1, 339.3, -130.3 , 0 );
setMoveKey( spep_0 -1 + 220, 1, 303.8, -132.5 , 0 );
setMoveKey( spep_0 -1 + 221, 1, 303.8, -132.5 , 0 );
setMoveKey( spep_0 -1 + 222, 1, 303.9, -129.8 , 0 );
setMoveKey( spep_0 -1 + 223, 1, 303.9, -129.8 , 0 );
setMoveKey( spep_0 -1 + 224, 1, 306.5, -129.5 , 0 );
setMoveKey( spep_0 -1 + 225, 1, 306.5, -129.5 , 0 );
setMoveKey( spep_0 -1 + 226, 1, 317.9, -129.2 , 0 );
setMoveKey( spep_0 -1 + 227, 1, 317.9, -129.2 , 0 );
setMoveKey( spep_0 -1 + 228, 1, 322.8, -129 , 0 );
setMoveKey( spep_0 -1 + 229, 1, 322.8, -129 , 0 );
setMoveKey( spep_0 -1 + 230, 1, 298.1, -128.7 , 0 );
setMoveKey( spep_0 -1 + 231, 1, 298.1, -128.7 , 0 );
setMoveKey( spep_0 -1 + 232, 1, 295.9, -128.4 , 0 );
setMoveKey( spep_0 -1 + 233, 1, 295.9, -128.4 , 0 );
setMoveKey( spep_0 -1 + 234, 1, 296, -128.1 , 0 );
setMoveKey( spep_0 -1 + 235, 1, 296, -128.1 , 0 );
setMoveKey( spep_0 -1 + 236, 1, 322.7, -127.9 , 0 );
setMoveKey( spep_0 -1 + 237, 1, 322.7, -127.9 , 0 );
setMoveKey( spep_0 -1 + 238, 1, 333.1, -126.4 , 0 );
setMoveKey( spep_0 -1 + 239, 1, 333.1, -126.4 , 0 );
setMoveKey( spep_0 -1 + 240, 1, 319.3, -135.6 , 0 );
setMoveKey( spep_0 -1 + 242, 1, 319.3, -135.6 , 0 );

setScaleKey( spep_0 -1 + 172, 1, 6.99, 6.99 );
setScaleKey( spep_0 -1 + 175, 1, 6.99, 6.99 );
setScaleKey( spep_0 -1 + 176, 1, 7, 7 );
setScaleKey( spep_0 -1 + 242, 1, 7, 7 );

setRotateKey( spep_0 -1 + 172, 1, -57.9 );
setRotateKey( spep_0 -1 + 175, 1, -57.9 );
setRotateKey( spep_0 -1 + 176, 1, 6.3 );
setRotateKey( spep_0 -1 + 177, 1, 6.3 );
setRotateKey( spep_0 -1 + 178, 1, 4.3 );
setRotateKey( spep_0 -1 + 179, 1, 4.3 );
setRotateKey( spep_0 -1 + 180, 1, 5.6 );
setRotateKey( spep_0 -1 + 181, 1, 5.6 );
setRotateKey( spep_0 -1 + 182, 1, 6.9 );
setRotateKey( spep_0 -1 + 183, 1, 6.9 );
setRotateKey( spep_0 -1 + 184, 1, 8.2 );
setRotateKey( spep_0 -1 + 185, 1, 8.2 );
setRotateKey( spep_0 -1 + 186, 1, 9.5 );
setRotateKey( spep_0 -1 + 187, 1, 9.5 );
setRotateKey( spep_0 -1 + 188, 1, 4.4 );
setRotateKey( spep_0 -1 + 189, 1, 4.4 );
setRotateKey( spep_0 -1 + 190, 1, 7.5 );
setRotateKey( spep_0 -1 + 191, 1, 7.5 );
setRotateKey( spep_0 -1 + 192, 1, 5.6 );
setRotateKey( spep_0 -1 + 193, 1, 5.6 );
setRotateKey( spep_0 -1 + 194, 1, 3.7 );
setRotateKey( spep_0 -1 + 195, 1, 3.7 );
setRotateKey( spep_0 -1 + 196, 1, 1.8 );
setRotateKey( spep_0 -1 + 197, 1, 1.8 );
setRotateKey( spep_0 -1 + 198, 1, 3.4 );
setRotateKey( spep_0 -1 + 199, 1, 3.4 );
setRotateKey( spep_0 -1 + 200, 1, 4.9 );
setRotateKey( spep_0 -1 + 201, 1, 4.9 );
setRotateKey( spep_0 -1 + 202, 1, 3.6 );
setRotateKey( spep_0 -1 + 203, 1, 3.6 );
setRotateKey( spep_0 -1 + 204, 1, 2.3 );
setRotateKey( spep_0 -1 + 205, 1, 2.3 );
setRotateKey( spep_0 -1 + 206, 1, 1 );
setRotateKey( spep_0 -1 + 207, 1, 1 );
setRotateKey( spep_0 -1 + 208, 1, 2 );
setRotateKey( spep_0 -1 + 209, 1, 2 );
setRotateKey( spep_0 -1 + 210, 1, 2.9 );
setRotateKey( spep_0 -1 + 211, 1, 2.9 );
setRotateKey( spep_0 -1 + 212, 1, 1.5 );
setRotateKey( spep_0 -1 + 213, 1, 1.5 );
setRotateKey( spep_0 -1 + 214, 1, 0.1 );
setRotateKey( spep_0 -1 + 215, 1, 0.1 );
setRotateKey( spep_0 -1 + 216, 1, -1.3 );
setRotateKey( spep_0 -1 + 217, 1, -1.3 );
setRotateKey( spep_0 -1 + 218, 1, -1.4 );
setRotateKey( spep_0 -1 + 219, 1, -1.4 );
setRotateKey( spep_0 -1 + 220, 1, -1.6 );
setRotateKey( spep_0 -1 + 221, 1, -1.6 );
setRotateKey( spep_0 -1 + 222, 1, -1.7 );
setRotateKey( spep_0 -1 + 223, 1, -1.7 );
setRotateKey( spep_0 -1 + 224, 1, -1.8 );
setRotateKey( spep_0 -1 + 225, 1, -1.8 );
setRotateKey( spep_0 -1 + 226, 1, -2 );
setRotateKey( spep_0 -1 + 227, 1, -2 );
setRotateKey( spep_0 -1 + 228, 1, -2.1 );
setRotateKey( spep_0 -1 + 229, 1, -2.1 );
setRotateKey( spep_0 -1 + 230, 1, -2.3 );
setRotateKey( spep_0 -1 + 231, 1, -2.3 );
setRotateKey( spep_0 -1 + 232, 1, -2.4 );
setRotateKey( spep_0 -1 + 233, 1, -2.4 );
setRotateKey( spep_0 -1 + 234, 1, -2.6 );
setRotateKey( spep_0 -1 + 235, 1, -2.6 );
setRotateKey( spep_0 -1 + 236, 1, -2.7 );
setRotateKey( spep_0 -1 + 237, 1, -2.7 );
setRotateKey( spep_0 -1 + 238, 1, -3.6 );
setRotateKey( spep_0 -1 + 239, 1, -3.6 );
setRotateKey( spep_0 -1 + 240, 1, -0.5 );
setRotateKey( spep_0 -1 + 242, 1, -0.5 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -1 + 276, 1, 1 );
setDisp( spep_0 -1 + 394, 1, 0 );
changeAnime( spep_0 -1 + 276, 1, 107 );
changeAnime( spep_0 -1 + 296, 1, 106 );
changeAnime( spep_0 -1 + 374, 1, 5 );

setMoveKey( spep_0 -1 + 276, 1, -233.2, 8.9 , 0 );
setMoveKey( spep_0 -1 + 277, 1, -233.2, 8.9 , 0 );
setMoveKey( spep_0 -1 + 278, 1, -233.1, -16.6 , 0 );
setMoveKey( spep_0 -1 + 279, 1, -233.1, -16.6 , 0 );
setMoveKey( spep_0 -1 + 280, 1, -473.7, -46.3 , 0 );
setMoveKey( spep_0 -1 + 281, 1, -473.7, -46.3 , 0 );
setMoveKey( spep_0 -1 + 282, 1, -473.7, -20.8 , 0 );
setMoveKey( spep_0 -1 + 283, 1, -473.7, -20.8 , 0 );
setMoveKey( spep_0 -1 + 284, 1, -473.7, -46.3 , 0 );
setMoveKey( spep_0 -1 + 285, 1, -473.7, -46.3 , 0 );
setMoveKey( spep_0 -1 + 286, 1, -233.1, 8.9 , 0 );
setMoveKey( spep_0 -1 + 287, 1, -233.1, 8.9 , 0 );
setMoveKey( spep_0 -1 + 288, 1, -207.6, 8.9 , 0 );
setMoveKey( spep_0 -1 + 289, 1, -207.6, 8.9 , 0 );
setMoveKey( spep_0 -1 + 290, 1, -473.7, -46.3 , 0 );
setMoveKey( spep_0 -1 + 291, 1, -473.7, -46.3 , 0 );
setMoveKey( spep_0 -1 + 292, 1, -448.2, -46.3 , 0 );
setMoveKey( spep_0 -1 + 293, 1, -448.2, -46.3 , 0 );
setMoveKey( spep_0 -1 + 294, 1, -473.7, -46.3 , 0 );
setMoveKey( spep_0 -1 + 295, 1, -473.7, -46.3 , 0 );--
setMoveKey( spep_0 -1 + 296, 1, -35.2, -145.8 , 0 );
setMoveKey( spep_0 -1 + 297, 1, -35.2, -145.8 , 0 );
setMoveKey( spep_0 -1 + 298, 1, -9.6, -145.8 , 0 );
setMoveKey( spep_0 -1 + 299, 1, -9.6, -145.8 , 0 );
setMoveKey( spep_0 -1 + 300, 1, 92.6, -55 , 0 );
setMoveKey( spep_0 -1 + 301, 1, 92.6, -55 , 0 );
setMoveKey( spep_0 -1 + 302, 1, 67.1, -55 , 0 );
setMoveKey( spep_0 -1 + 303, 1, 67.1, -55 , 0 );
setMoveKey( spep_0 -1 + 304, 1, 92.6, -55 , 0 );
setMoveKey( spep_0 -1 + 305, 1, 92.6, -55 , 0 );
setMoveKey( spep_0 -1 + 306, 1, 92.6, -55 , 0 );
setMoveKey( spep_0 -1 + 307, 1, 92.6, -55 , 0 );
setMoveKey( spep_0 -1 + 308, 1, 108.5, -45.5 , 0 );
setMoveKey( spep_0 -1 + 315, 1, 108.5, -45.5 , 0 );
setMoveKey( spep_0 -1 + 316, 1, 142.1, -28.1 , 0 );
setMoveKey( spep_0 -1 + 323, 1, 142.1, -28.1 , 0 );
setMoveKey( spep_0 -1 + 324, 1, 151.7, -15.4 , 0 );
setMoveKey( spep_0 -1 + 329, 1, 151.7, -15.4 , 0 );--
setMoveKey( spep_0 -1 + 330, 1, 180, 36.1 , 0 );
setMoveKey( spep_0 -1 + 332, 1, 181.7, 38.6 , 0 );
setMoveKey( spep_0 -1 + 334, 1, 183.3, 41.2 , 0 );
setMoveKey( spep_0 -1 + 336, 1, 185, 43.7 , 0 );
setMoveKey( spep_0 -1 + 338, 1, 186.6, 46.2 , 0 );
setMoveKey( spep_0 -1 + 340, 1, 188.3, 48.8 , 0 );
setMoveKey( spep_0 -1 + 342, 1, 189.9, 51.3 , 0 );
setMoveKey( spep_0 -1 + 344, 1, 191.6, 53.8 , 0 );
setMoveKey( spep_0 -1 + 346, 1, 193.2, 56.3 , 0 );
setMoveKey( spep_0 -1 + 348, 1, 194.9, 58.8 , 0 );
setMoveKey( spep_0 -1 + 350, 1, 196.5, 61.3 , 0 );
setMoveKey( spep_0 -1 + 352, 1, 198.2, 63.8 , 0 );
setMoveKey( spep_0 -1 + 354, 1, 199.8, 66.3 , 0 );
setMoveKey( spep_0 -1 + 356, 1, 201.5, 68.8 , 0 );
setMoveKey( spep_0 -1 + 358, 1, 203.1, 71.3 , 0 );
setMoveKey( spep_0 -1 + 360, 1, 204.8, 73.8 , 0 );
setMoveKey( spep_0 -1 + 361, 1, 204.8, 73.8 , 0 );--
setMoveKey( spep_0 -1 + 362, 1, 9, -114.9 , 0 );
setMoveKey( spep_0 -1 + 364, 1, 12.5, -109.1 , 0 );
setMoveKey( spep_0 -1 + 366, 1, 16, -103.5 , 0 );
setMoveKey( spep_0 -1 + 373, 1, 16, -103.5 , 0 );--
setMoveKey( spep_0 -1 + 374, 1, 21.8, 124.8 , 0 );
setMoveKey( spep_0 -1 + 376, 1, 22.4, 135.2 , 0 );
setMoveKey( spep_0 -1 + 378, 1, 22.9, 145.6 , 0 );
setMoveKey( spep_0 -1 + 380, 1, 23.4, 156 , 0 );
setMoveKey( spep_0 -1 + 382, 1, 24, 166.4 , 0 );
setMoveKey( spep_0 -1 + 384, 1, 24.5, 176.8 , 0 );
setMoveKey( spep_0 -1 + 386, 1, 25.1, 187.2 , 0 );
setMoveKey( spep_0 -1 + 388, 1, 25.7, 197.6 , 0 );
setMoveKey( spep_0 -1 + 390, 1, 26.2, 208 , 0 );
setMoveKey( spep_0 -1 + 392, 1, 26.8, 218.4 , 0 );
setMoveKey( spep_0 -1 + 394, 1, 26.8, 218.4 , 0 );

setScaleKey( spep_0 -1 + 276, 1, 3.39, 3.39 );
setScaleKey( spep_0 -1 + 277, 1, 3.39, 3.39 );
setScaleKey( spep_0 -1 + 278, 1, 3.39, 3.39 );
setScaleKey( spep_0 -1 + 279, 1, 3.39, 3.39 );
setScaleKey( spep_0 -1 + 280, 1, 4.5, 4.5 );
setScaleKey( spep_0 -1 + 285, 1, 4.5, 4.5 );
setScaleKey( spep_0 -1 + 286, 1, 3.39, 3.39 );
setScaleKey( spep_0 -1 + 289, 1, 3.39, 3.39 );
setScaleKey( spep_0 -1 + 290, 1, 4.5, 4.5 );
setScaleKey( spep_0 -1 + 295, 1, 4.5, 4.5 );--
setScaleKey( spep_0 -1 + 296, 1, 4.4, 4.4 );
setScaleKey( spep_0 -1 + 299, 1, 4.4, 4.4 );
setScaleKey( spep_0 -1 + 300, 1, 3.2, 3.2 );
setScaleKey( spep_0 -1 + 307, 1, 3.2, 3.2 );
setScaleKey( spep_0 -1 + 308, 1, 3.06, 3.06 );
setScaleKey( spep_0 -1 + 315, 1, 3.06, 3.06 );
setScaleKey( spep_0 -1 + 316, 1, 2.8, 2.8 );
setScaleKey( spep_0 -1 + 323, 1, 2.8, 2.8 );
setScaleKey( spep_0 -1 + 324, 1, 2.7, 2.7 );
setScaleKey( spep_0 -1 + 329, 1, 2.7, 2.7 );--
setScaleKey( spep_0 -1 + 330, 1, 2.76, 2.76 );
setScaleKey( spep_0 -1 + 361, 1, 2.76, 2.76 );--
setScaleKey( spep_0 -1 + 362, 1, 4.5, 4.5 );
setScaleKey( spep_0 -1 + 366, 1, 4.5, 4.5 );
setScaleKey( spep_0 -1 + 373, 1, 4.5, 4.5 );--
setScaleKey( spep_0 -1 + 374, 1, 3.29, 3.29 );
setScaleKey( spep_0 -1 + 376, 1, 3.06, 3.06 );
setScaleKey( spep_0 -1 + 378, 1, 2.82, 2.82 );
setScaleKey( spep_0 -1 + 380, 1, 2.58, 2.58 );
setScaleKey( spep_0 -1 + 382, 1, 2.34, 2.34 );
setScaleKey( spep_0 -1 + 384, 1, 2.1, 2.1 );
setScaleKey( spep_0 -1 + 386, 1, 1.86, 1.86 );
setScaleKey( spep_0 -1 + 388, 1, 1.62, 1.62 );
setScaleKey( spep_0 -1 + 390, 1, 1.38, 1.38 );
setScaleKey( spep_0 -1 + 392, 1, 1.14, 1.14 );
setScaleKey( spep_0 -1 + 394, 1, 1.14, 1.14 );

setRotateKey( spep_0 -1 + 276, 1, -40.4 );
setRotateKey( spep_0 -1 + 279, 1, -40.4 );
setRotateKey( spep_0 -1 + 280, 1, -40.5 );
setRotateKey( spep_0 -1 + 285, 1, -40.5 );
setRotateKey( spep_0 -1 + 286, 1, -40.4 );
setRotateKey( spep_0 -1 + 289, 1, -40.4 );
setRotateKey( spep_0 -1 + 290, 1, -40.5 );
setRotateKey( spep_0 -1 + 295, 1, -40.5 );--
setRotateKey( spep_0 -1 + 296, 1, -27.7 );
setRotateKey( spep_0 -1 + 329, 1, -27.7 );--
setRotateKey( spep_0 -1 + 330, 1, -34.6 );
setRotateKey( spep_0 -1 + 332, 1, -34.4 );
setRotateKey( spep_0 -1 + 334, 1, -34.2 );
setRotateKey( spep_0 -1 + 336, 1, -34 );
setRotateKey( spep_0 -1 + 338, 1, -33.8 );
setRotateKey( spep_0 -1 + 340, 1, -33.7 );
setRotateKey( spep_0 -1 + 342, 1, -33.5 );
setRotateKey( spep_0 -1 + 344, 1, -33.3 );
setRotateKey( spep_0 -1 + 346, 1, -33.1 );
setRotateKey( spep_0 -1 + 348, 1, -32.9 );
setRotateKey( spep_0 -1 + 350, 1, -32.8 );
setRotateKey( spep_0 -1 + 352, 1, -32.6 );
setRotateKey( spep_0 -1 + 354, 1, -32.4 );
setRotateKey( spep_0 -1 + 356, 1, -32.2 );
setRotateKey( spep_0 -1 + 358, 1, -32 );
setRotateKey( spep_0 -1 + 360, 1, -31.8 );
setRotateKey( spep_0 -1 + 366, 1, -31.8 );
setRotateKey( spep_0 -1 + 373, 1, -31.8 );--
setRotateKey( spep_0 -1 + 374, 1, -1.1 );
setRotateKey( spep_0 -1 + 394, 1, -1.1 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -1 + 428, 1, 1 );
setDisp( spep_0 -1 + 566, 1, 0 );
changeAnime( spep_0 -1 + 428, 1, 106 );
changeAnime( spep_0 -1 + 442, 1, 108 );
changeAnime( spep_0 -1 + 500, 1, 106 );

setMoveKey( spep_0 -1 + 428, 1, -130.1, -194.8 , 0 );
setMoveKey( spep_0 -1 + 430, 1, -107.7, -159.7 , 0 );
setMoveKey( spep_0 -1 + 432, 1, -85.4, -124.6 , 0 );
setMoveKey( spep_0 -1 + 434, 1, -63.1, -89.6 , 0 );
setMoveKey( spep_0 -1 + 436, 1, -40.8, -54.5 , 0 );
setMoveKey( spep_0 -1 + 438, 1, -18.4, -19.4 , 0 );
setMoveKey( spep_0 -1 + 440, 1, 3.9, 15.7 , 0 );
setMoveKey( spep_0 -1 + 441, 1, 3.9, 15.7 , 0 );--
setMoveKey( spep_0 -1 + 442, 1, 48.7, 29.8 , 0 );
setMoveKey( spep_0 -1 + 443, 1, 48.7, 29.8 , 0 );
setMoveKey( spep_0 -1 + 444, 1, 37.2, 77.7 , 0 );
setMoveKey( spep_0 -1 + 445, 1, 37.2, 77.7 , 0 );
setMoveKey( spep_0 -1 + 446, 1, 57.7, 54.3 , 0 );
setMoveKey( spep_0 -1 + 447, 1, 57.7, 54.3 , 0 );
setMoveKey( spep_0 -1 + 448, 1, 57.7, 75.3 , 0 );
setMoveKey( spep_0 -1 + 449, 1, 57.7, 75.3 , 0 );
setMoveKey( spep_0 -1 + 450, 1, 34.7, 50.7 , 0 );
setMoveKey( spep_0 -1 + 451, 1, 34.7, 50.7 , 0 );
setMoveKey( spep_0 -1 + 452, 1, 55.7, 74.2 , 0 );
setMoveKey( spep_0 -1 + 453, 1, 55.7, 74.2 , 0 );
setMoveKey( spep_0 -1 + 454, 1, 38, 56.9 , 0 );
setMoveKey( spep_0 -1 + 455, 1, 38, 56.9 , 0 );
setMoveKey( spep_0 -1 + 456, 1, 62.9, 83.8 , 0 );
setMoveKey( spep_0 -1 + 457, 1, 62.9, 83.8 , 0 );
setMoveKey( spep_0 -1 + 458, 1, 66.7, 67.2 , 0 );
setMoveKey( spep_0 -1 + 460, 1, 71.8, 69.7 , 0 );
setMoveKey( spep_0 -1 + 462, 1, 76.5, 72.1 , 0 );
setMoveKey( spep_0 -1 + 464, 1, 80.3, 72.5 , 0 );
setMoveKey( spep_0 -1 + 466, 1, 84.8, 73.1 , 0 );
setMoveKey( spep_0 -1 + 468, 1, 87.7, 73.7 , 0 );
setMoveKey( spep_0 -1 + 470, 1, 91.6, 72.4 , 0 );
setMoveKey( spep_0 -1 + 472, 1, 99, 73.1 , 0 );
setMoveKey( spep_0 -1 + 474, 1, 102.1, 74.2 , 0 );
setMoveKey( spep_0 -1 + 476, 1, 105.1, 72.8 , 0 );
setMoveKey( spep_0 -1 + 478, 1, 91.5, 76.2 , 0 );
setMoveKey( spep_0 -1 + 480, 1, 78.6, 78.4 , 0 );
setMoveKey( spep_0 -1 + 482, 1, 69.2, 80.1 , 0 );
setMoveKey( spep_0 -1 + 484, 1, 52.8, 76.3 , 0 );
setMoveKey( spep_0 -1 + 486, 1, 36.5, 72.5 , 0 );
setMoveKey( spep_0 -1 + 488, 1, 20.1, 68.8 , 0 );
setMoveKey( spep_0 -1 + 490, 1, 3.7, 64.9 , 0 );
setMoveKey( spep_0 -1 + 492, 1, -12.6, 61.1 , 0 );
setMoveKey( spep_0 -1 + 494, 1, -28.9, 57.4 , 0 );
setMoveKey( spep_0 -1 + 499, 1, -28.9, 57.4 , 0 );--
setMoveKey( spep_0 -1 + 500, 1, -95.4, 48.4 , 0 );
setMoveKey( spep_0 -1 + 501, 1, -95.4, 48.4 , 0 );
setMoveKey( spep_0 -1 + 502, 1, -101.7, 38.9 , 0 );
setMoveKey( spep_0 -1 + 503, 1, -101.7, 38.9 , 0 );
setMoveKey( spep_0 -1 + 504, 1, -79.6, 57.8 , 0 );
setMoveKey( spep_0 -1 + 505, 1, -79.6, 57.8 , 0 );
setMoveKey( spep_0 -1 + 506, 1, -101.7, 38.9 , 0 );
setMoveKey( spep_0 -1 + 507, 1, -101.7, 38.9 , 0 );
setMoveKey( spep_0 -1 + 508, 1, -79.6, 57.8 , 0 );
setMoveKey( spep_0 -1 + 509, 1, -79.6, 57.8 , 0 );
setMoveKey( spep_0 -1 + 510, 1, -104.8, 38.9 , 0 );
setMoveKey( spep_0 -1 + 511, 1, -104.8, 38.9 , 0 );
setMoveKey( spep_0 -1 + 512, 1, -79.6, 54.7 , 0 );
setMoveKey( spep_0 -1 + 513, 1, -79.6, 54.7 , 0 );
setMoveKey( spep_0 -1 + 514, 1, -108, 35.8 , 0 );
setMoveKey( spep_0 -1 + 515, 1, -108, 35.8 , 0 );
setMoveKey( spep_0 -1 + 516, 1, -79.6, 57.8 , 0 );
setMoveKey( spep_0 -1 + 517, 1, -79.6, 57.8 , 0 );--
setMoveKey( spep_0 -1 + 518, 1, -57.3, -416.6 , 0 );
setMoveKey( spep_0 -1 + 520, 1, -56.6, -415.6 , 0 );
setMoveKey( spep_0 -1 + 522, 1, -55.9, -414.6 , 0 );
setMoveKey( spep_0 -1 + 524, 1, -55.2, -413.7 , 0 );
setMoveKey( spep_0 -1 + 526, 1, -54.6, -412.7 , 0 );
setMoveKey( spep_0 -1 + 528, 1, -53.9, -411.7 , 0 );
setMoveKey( spep_0 -1 + 530, 1, -53.2, -410.7 , 0 );
setMoveKey( spep_0 -1 + 532, 1, -52.5, -409.8 , 0 );
setMoveKey( spep_0 -1 + 534, 1, -51.9, -408.8 , 0 );
setMoveKey( spep_0 -1 + 536, 1, -51.2, -407.8 , 0 );
setMoveKey( spep_0 -1 + 538, 1, -50.5, -406.8 , 0 );
setMoveKey( spep_0 -1 + 540, 1, -49.8, -405.9 , 0 );
setMoveKey( spep_0 -1 + 542, 1, -49.2, -404.9 , 0 );
setMoveKey( spep_0 -1 + 544, 1, -48.5, -403.9 , 0 );
setMoveKey( spep_0 -1 + 546, 1, -47.8, -402.9 , 0 );
setMoveKey( spep_0 -1 + 548, 1, -47.1, -402 , 0 );
setMoveKey( spep_0 -1 + 550, 1, -46.5, -401 , 0 );
setMoveKey( spep_0 -1 + 552, 1, -45.8, -400 , 0 );
setMoveKey( spep_0 -1 + 554, 1, -45.1, -399 , 0 );
setMoveKey( spep_0 -1 + 556, 1, -44.4, -398.1 , 0 );
setMoveKey( spep_0 -1 + 558, 1, -43.8, -397.1 , 0 );
setMoveKey( spep_0 -1 + 560, 1, -43.1, -396.1 , 0 );
setMoveKey( spep_0 -1 + 562, 1, -42.4, -395.1 , 0 );
setMoveKey( spep_0 -1 + 564, 1, -41.7, -394.1 , 0 );
setMoveKey( spep_0 -1 + 566, 1, -41.7, -394.1 , 0 );

setScaleKey( spep_0 -1 + 428, 1, 2.5, 2.5 );
setScaleKey( spep_0 -1 + 441, 1, 2.5, 2.5 );--
setScaleKey( spep_0 -1 + 442, 1, 2.9, 2.9 );
setScaleKey( spep_0 -1 + 494, 1, 2.9, 2.9 );
setScaleKey( spep_0 -1 + 499, 1, 2.9, 2.9 );--
setScaleKey( spep_0 -1 + 500, 1, 2.5, 2.5 );
setScaleKey( spep_0 -1 + 517, 1, 2.5, 2.5 );--
setScaleKey( spep_0 -1 + 518, 1, 3.99, 3.99 );
setScaleKey( spep_0 -1 + 566, 1, 3.99, 3.99 );--

setRotateKey( spep_0 -1 + 428, 1, -31.6 );
setRotateKey( spep_0 -1 + 441, 1, -31.6 );--
setRotateKey( spep_0 -1 + 442, 1, 0 );
setRotateKey( spep_0 -1 + 448, 1, 0 );
setRotateKey( spep_0 -1 + 450, 1, 0.1 );
setRotateKey( spep_0 -1 + 451, 1, 0.1 );
setRotateKey( spep_0 -1 + 452, 1, 0.3 );
setRotateKey( spep_0 -1 + 453, 1, 0.3 );
setRotateKey( spep_0 -1 + 454, 1, 0.4 );
setRotateKey( spep_0 -1 + 455, 1, 0.4 );
setRotateKey( spep_0 -1 + 456, 1, 0.6 );
setRotateKey( spep_0 -1 + 457, 1, 0.6 );
setRotateKey( spep_0 -1 + 458, 1, 0.7 );
setRotateKey( spep_0 -1 + 460, 1, 0.9 );
setRotateKey( spep_0 -1 + 462, 1, 1 );
setRotateKey( spep_0 -1 + 464, 1, 1.1 );
setRotateKey( spep_0 -1 + 466, 1, 1.3 );
setRotateKey( spep_0 -1 + 468, 1, 1.4 );
setRotateKey( spep_0 -1 + 470, 1, 1.6 );
setRotateKey( spep_0 -1 + 472, 1, 1.7 );
setRotateKey( spep_0 -1 + 474, 1, 1.9 );
setRotateKey( spep_0 -1 + 476, 1, 2 );
setRotateKey( spep_0 -1 + 478, 1, 4 );
setRotateKey( spep_0 -1 + 480, 1, 4.8 );
setRotateKey( spep_0 -1 + 482, 1, 5.6 );
setRotateKey( spep_0 -1 + 484, 1, 6.4 );
setRotateKey( spep_0 -1 + 486, 1, 7.2 );
setRotateKey( spep_0 -1 + 488, 1, 8.1 );
setRotateKey( spep_0 -1 + 490, 1, 8.9 );
setRotateKey( spep_0 -1 + 492, 1, 9.7 );
setRotateKey( spep_0 -1 + 494, 1, 10.5 );
setRotateKey( spep_0 -1 + 499, 1, 10.5 );--
setRotateKey( spep_0 -1 + 500, 1, -44.4 );
setRotateKey( spep_0 -1 + 517, 1, -44.4 );--
setRotateKey( spep_0 -1 + 518, 1, -50 );
setRotateKey( spep_0 -1 + 566, 1, -50 );--

setDisp( spep_0 -1 + 570, 1, 1 );
setDisp( spep_0 -1 + 572, 1, 0 );
changeAnime( spep_0 -1 + 570, 1, 108 );

a=80;
b=360;
setMoveKey( spep_0 -1 + 570, 1, -41.7 +a, -394.1 -b , 0 );
setMoveKey( spep_0 -1 + 572, 1, -41.7 +a, -394.1 -b , 0 );

s=0;
setScaleKey( spep_0 -1 + 570, 1, 3.99 -s, 3.99 -s );--
setScaleKey( spep_0 -1 + 572, 1, 3.99 -s, 3.99 -s );--

setRotateKey( spep_0 -1 + 570, 1, 88 );--
setRotateKey( spep_0 -1 + 572, 1, 88 );--

-- ** 敵キャラクター ** --
setDisp( spep_0 -1 + 580, 1, 1 );
setDisp( spep_0 -1 + 610, 1, 0 );
changeAnime( spep_0 -1 + 580, 1, 107 );

setMoveKey( spep_0 -1 + 580, 1, -87.6, 169.8 , 0 );
setMoveKey( spep_0 -1 + 582, 1, -85.3, 165.4 , 0 );
setMoveKey( spep_0 -1 + 584, 1, -78.4, 152.2 , 0 );
setMoveKey( spep_0 -1 + 586, 1, -66.8, 130.2 , 0 );
setMoveKey( spep_0 -1 + 588, 1, -50.6, 99.5 , 0 );
setMoveKey( spep_0 -1 + 590, 1, -29.8, 59.9 , 0 );
setMoveKey( spep_0 -1 + 592, 1, -4.4, 11.6 , 0 );
setMoveKey( spep_0 -1 + 594, 1, 25.7, -45.5 , 0 );
setMoveKey( spep_0 -1 + 596, 1, 60.3, -111.5 , 0 );
setMoveKey( spep_0 -1 + 598, 1, 99.6, -186.2 , 0 );
setMoveKey( spep_0 -1 + 600, 1, 143.5, -269.7 , 0 );
setMoveKey( spep_0 -1 + 602, 1, 192.1, -362 , 0 );
setMoveKey( spep_0 -1 + 604, 1, 245.2, -463.1 , 0 );
setMoveKey( spep_0 -1 + 606, 1, 303, -572.9 , 0 );
setMoveKey( spep_0 -1 + 608, 1, 365.4, -691.6 , 0 );
setMoveKey( spep_0 -1 + 610, 1, 432.5, -819.1 , 0 );
--setMoveKey( spep_0 -1 + 611, 1, 432.5, -819.1 , 0 );

setScaleKey( spep_0 -1 + 580, 1, 0.22, 0.22 );
setScaleKey( spep_0 -1 + 582, 1, 0.23, 0.23 );
setScaleKey( spep_0 -1 + 584, 1, 0.27, 0.27 );
setScaleKey( spep_0 -1 + 586, 1, 0.33, 0.33 );
setScaleKey( spep_0 -1 + 588, 1, 0.42, 0.42 );
setScaleKey( spep_0 -1 + 590, 1, 0.53, 0.53 );
setScaleKey( spep_0 -1 + 592, 1, 0.66, 0.66 );
setScaleKey( spep_0 -1 + 594, 1, 0.82, 0.82 );
setScaleKey( spep_0 -1 + 596, 1, 1.01, 1.01 );
setScaleKey( spep_0 -1 + 598, 1, 1.22, 1.22 );
setScaleKey( spep_0 -1 + 600, 1, 1.45, 1.45 );
setScaleKey( spep_0 -1 + 602, 1, 1.71, 1.71 );
setScaleKey( spep_0 -1 + 604, 1, 2, 2 );
setScaleKey( spep_0 -1 + 606, 1, 2.3, 2.3 );
setScaleKey( spep_0 -1 + 608, 1, 2.64, 2.64 );
setScaleKey( spep_0 -1 + 610, 1, 3, 3 );
--setScaleKey( spep_0 -1 + 611, 1, 3, 3 );

setRotateKey( spep_0 -1 + 580, 1, 45.9 );
setRotateKey( spep_0 -1 + 610, 1, 45.9 );
--setRotateKey( spep_0 -1 + 611, 1, 45.9 );

-- ** 音 ** --
--悟空瞬間移動で向かってくる
SE007 = playSeVer2( spep_0 + 124, 1235, "",spep_0 + 160, 0, 8, 0.6);
setPitch( spep_0 + 124, SE007, 900 );
setTimeStretch( SE007, 1.6, 30, 4 );
SE008 = playSeVer2( spep_0 + 144, 1235, "",spep_0 + 184, 0, 12, 0.6);
setPitch( spep_0 + 144, SE008, 900 );
setTimeStretch( SE008, 1.6, 30, 4 );

--悟空ラッシュ
SE009 = playSeVer2( spep_0 + 168, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 168, 1110, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 180, 1000, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 186, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE012, 89 );
SE013 = playSeVer2( spep_0 + 196, 1010, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 196, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE014, 89 );
setPitch( spep_0 + 196, SE014, -200 );
setTimeStretch( SE014, 0.87, 30, 4 );
SE015 = playSeVer2( spep_0 + 204, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 206, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 216, 1010, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 226, 1110, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 234, 1004, "", 0, 0, 0, -1);

--ベジータパンチ
SE020 = playSeVer2( spep_0 + 268, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE020, 92 );
SE021 = playSeVer2( spep_0 + 268, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE021, 82 );
SE022 = playSeVer2( spep_0 + 268, 1359, "", 0, 0, 0, -1);

--ベジータ蹴り飛ばし
SE023 = playSeVer2( spep_0 + 342, 1116, "",spep_0 + 372, 0, 10, -1);
SE024 = playSeVer2( spep_0 + 358, 1153, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 358, 1120, "", 0, 0, 0, -1);

--悟空突っ込んでくる
SE026 = playSeVer2( spep_0 + 382, 1182, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 382, 9, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 382, 1117, "", 0, 0, 0, -1);

--悟空膝蹴り
SE029 = playSeVer2( spep_0 + 436, 1359, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 436, 1153, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 436, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE032 = playSeVer2( spep_0 + 472, 1109, "", 0, 0, 0, -1);

--ベジータ蹴り
SE033 = playSeVer2( spep_0 + 490, 1153, "",spep_0 + 524, 0, 16, -1);
SE034 = playSeVer2( spep_0 + 490, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 490, SE034, 81 );
SE035 = playSeVer2( spep_0 + 490, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 490, SE035, 84 );

--瞬間移動
SE036 = playSeVer2( spep_0 + 514, 1109, "", 0, 0, 0, -1);

--悟空宙返り
SE037 = playSeVer2( spep_0 + 536, 1004, "", 0, 0, 0, -1);

--悟空蹴り落とし
SE038 = playSeVer2( spep_0 + 554, 1123, "",spep_0 + 620, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 554, SE038, 91 );
SE039 = playSeVer2( spep_0 + 558, 1359, "",spep_0 + 594, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 558, SE039, 81 );
SE040 = playSeVer2( spep_0 + 566, 1110, "",spep_0 + 620, 0, 10, -1);
SE041 = playSeVer2( spep_0 + 572, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 572, SE041, 75 );

-- ** 次の準備 ** --
spep_c = spep_0 + 609;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_c + 0, SE_05 );

--連続気弾
SE043 = playSeVer2( spep_c + 96, 1021, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_c + 96, 1357, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_c + 96, SE044, 81 );
SE045 = playSeVer2( spep_c + 96, 1016, "",spep_c + 116, 0, 4, -1);

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_c + 94;

------------------------------------------------------
-- ベジータが気弾放ちながら上空へ(258F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --ベジータが気弾放ちながら上空へ、  ef_002
setEffMoveKey( spep_2 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 258, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 258, shot_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_f, 0 );
setEffRotateKey( spep_2 + 258, shot_f, 0 );
setEffAlphaKey( spep_2 + 0, shot_f, 255 );
setEffAlphaKey( spep_2 + 258 -2, shot_f, 255 );
setEffAlphaKey( spep_2 + 258 -1, shot_f, 255 );
setEffAlphaKey( spep_2 + 258, shot_f, 0 );

shot_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --↑敵を挟んだ背景   ef_002_bg
setEffMoveKey( spep_2 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 258, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 258, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_b, 0 );
setEffRotateKey( spep_2 + 258, shot_b, 0 );
setEffAlphaKey( spep_2 + 0, shot_b, 255 );
setEffAlphaKey( spep_2 + 258 -2, shot_b, 255 );
setEffAlphaKey( spep_2 + 258 -1, shot_b, 255 );
setEffAlphaKey( spep_2 + 258, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -1 + 48, 1, 1 );
setDisp( spep_2 -1 + 76, 1, 0 );
changeAnime( spep_2 -1 + 48, 1, 5 );

setMoveKey( spep_2 -1 + 48, 1, 0.4, -13.8 , 0 );
setMoveKey( spep_2 -1 + 50, 1, 0.6, -19.1 , 0 );
setMoveKey( spep_2 -1 + 52, 1, 0.6, -24.1 , 0 );
setMoveKey( spep_2 -1 + 54, 1, 0.6, -28.7 , 0 );
setMoveKey( spep_2 -1 + 56, 1, 0.6, -33 , 0 );
setMoveKey( spep_2 -1 + 58, 1, 0.6, -37 , 0 );
setMoveKey( spep_2 -1 + 60, 1, 0.6, -40.5 , 0 );
setMoveKey( spep_2 -1 + 62, 1, 0.5, -43.7 , 0 );
setMoveKey( spep_2 -1 + 64, 1, 0.5, -46.6 , 0 );
setMoveKey( spep_2 -1 + 66, 1, 0.4, -49 , 0 );
setMoveKey( spep_2 -1 + 68, 1, 0.4, -51 , 0 );
setMoveKey( spep_2 -1 + 70, 1, 0.4, -52.7 , 0 );
setMoveKey( spep_2 -1 + 72, 1, 0.3, -53.9 , 0 );
setMoveKey( spep_2 -1 + 74, 1, 0.3, -54.8 , 0 );
setMoveKey( spep_2 -1 + 76, 1, 0.3, -54.8 , 0 );

setScaleKey( spep_2 -1 + 48, 1, 3, 3 );
setScaleKey( spep_2 -1 + 50, 1, 2.61, 2.61 );
setScaleKey( spep_2 -1 + 52, 1, 2.25, 2.25 );
setScaleKey( spep_2 -1 + 54, 1, 1.92, 1.92 );
setScaleKey( spep_2 -1 + 56, 1, 1.61, 1.61 );
setScaleKey( spep_2 -1 + 58, 1, 1.33, 1.33 );
setScaleKey( spep_2 -1 + 60, 1, 1.08, 1.08 );
setScaleKey( spep_2 -1 + 62, 1, 0.86, 0.86 );
setScaleKey( spep_2 -1 + 64, 1, 0.67, 0.67 );
setScaleKey( spep_2 -1 + 66, 1, 0.5, 0.5 );
setScaleKey( spep_2 -1 + 68, 1, 0.36, 0.36 );
setScaleKey( spep_2 -1 + 70, 1, 0.24, 0.24 );
setScaleKey( spep_2 -1 + 72, 1, 0.16, 0.16 );
setScaleKey( spep_2 -1 + 74, 1, 0.1, 0.1 );
setScaleKey( spep_2 -1 + 76, 1, 0.1, 0.1 );

setRotateKey( spep_2 -1 + 48, 1, -0.9 );
setRotateKey( spep_2 -1 + 50, 1, -0.8 );
setRotateKey( spep_2 -1 + 76, 1, -0.8 );

-- ** 音 ** --
--連続気弾
SE047 = playSeVer2( spep_2 + 10, 1016, "",spep_2 + 30, 0, 4, 0.6);
SE049 = playSeVer2( spep_2 + 18, 1016, "",spep_2 + 38, 0, 4, 0.6);
SE051 = playSeVer2( spep_2 + 24, 1016, "",spep_2 + 44, 0, 4, 0.6);
SE053 = playSeVer2( spep_2 + 32, 1016, "",spep_2 + 52, 0, 4, 0.6);
SE055 = playSeVer2( spep_2 + 40, 1016, "",spep_2 + 60, 0, 4, 0.6);
SE056 = playSeVer2( spep_2 + 48, 1016, "",spep_2 + 68, 0, 4, 0.6);
SE058 = playSeVer2( spep_2 + 54, 1016, "",spep_2 + 74, 0, 4, 0.6);
SE060 = playSeVer2( spep_2 + 62, 1016, "",spep_2 + 84, 0, 4, 0.6);
SE062 = playSeVer2( spep_2 + 70, 1016, "",spep_2 + 92, 0, 4, 0.6);
SE065 = playSeVer2( spep_2 + 78, 1016, "",spep_2 + 100, 0, 4, 0.6);
SE066 = playSeVer2( spep_2 + 86, 1016, "",spep_2 + 106, 0, 4, 0.6);
SE068 = playSeVer2( spep_2 + 94, 1016, "",spep_2 + 114, 0, 4, 0.6);
SE070 = playSeVer2( spep_2 + 102, 1016, "",spep_2 + 122, 0, 4, 0.6);
SE073 = playSeVer2( spep_2 + 110, 1016, "",spep_2 + 130, 0, 4, 0.6);
SE075 = playSeVer2( spep_2 + 116, 1016, "",spep_2 + 136, 0, 4, 0.6);
SE076 = playSeVer2( spep_2 + 122, 1016, "",spep_2 + 142, 0, 4, 0.6);
SE078 = playSeVer2( spep_2 + 130, 1016, "",spep_2 + 150, 0, 4, 0.6);
SE080 = playSeVer2( spep_2 + 138, 1016, "",spep_2 + 158, 0, 4, 0.6);
SE082 = playSeVer2( spep_2 + 146, 1016, "",spep_2 + 166, 0, 4, 0.6);
SE084 = playSeVer2( spep_2 + 152, 1016, "",spep_2 + 172, 0, 4, 0.6);
SE086 = playSeVer2( spep_2 + 156, 1109, "", 0, 0, 0, -1);
SE087 = playSeVer2( spep_2 + 162, 1016, "",spep_2 + 182, 0, 4, 0.6);
SE088 = playSeVer2( spep_2 + 168, 1016, "",spep_2 + 188, 0, 4, 0.6);
SE090 = playSeVer2( spep_2 + 176, 1016, "",spep_2 + 196, 0, 4, 0.6);
SE096 = playSeVer2( spep_2 + 184, 1016, "",spep_2 + 206, 0, 4, 0.6);
SE098 = playSeVer2( spep_2 + 192, 1016, "",spep_2 + 214, 0, 4, 0.6);
SE100 = playSeVer2( spep_2 + 200, 1016, "",spep_2 + 222, 0, 4, 0.6);
SE102 = playSeVer2( spep_2 + 208, 1016, "",spep_2 + 228, 0, 4, 0.6);
SE104 = playSeVer2( spep_2 + 216, 1016, "",spep_2 + 236, 0, 4, 0.6);
SE106 = playSeVer2( spep_2 + 224, 1016, "",spep_2 + 244, 0, 4, 0.6);
SE107 = playSeVer2( spep_2 + 232, 1016, "",spep_2 + 252, 0, 4, 0.6);
SE109 = playSeVer2( spep_2 + 238, 1016, "",spep_2 + 258, 0, 4, 0.6);
SE111 = playSeVer2( spep_2 + 246, 1016, "",spep_2 + 266, 0, 4, 0.6);
SE113 = playSeVer2( spep_2 + 252, 1016, "",spep_2 + 272, 0, 4, 0.6);

--連続気弾B
SE046 = playSeVer2( spep_2 + 6, 1403, "",spep_2 + 266, 0, 4, 0.6);
setSeVolumeByWorkId( spep_2 + 6, SE046, 140 );
--[[SE048 = playSeVer2( spep_2 + 16, 1358, "",spep_2 + 30, 0, 4, 0.6);
SE050 = playSeVer2( spep_2 + 22, 1358, "",spep_2 + 36, 0, 4, 0.6);
SE052 = playSeVer2( spep_2 + 30, 1358, "",spep_2 + 44, 0, 4, 0.6);
SE054 = playSeVer2( spep_2 + 38, 1358, "",spep_2 + 52, 0, 4, 0.6);
SE057 = playSeVer2( spep_2 + 48, 1358, "",spep_2 + 62, 0, 4, 0.6);
SE059 = playSeVer2( spep_2 + 58, 1358, "",spep_2 + 72, 0, 4, 0.6);
SE061 = playSeVer2( spep_2 + 68, 1358, "",spep_2 + 82, 0, 4, 0.6);
SE063 = playSeVer2( spep_2 + 76, 1358, "",spep_2 + 90, 0, 4, 0.6);
--SE067 = playSeVer2( spep_2 + 86, 1358, "",spep_2 + 106, 0, 4, -1);
SE069 = playSeVer2( spep_2 + 96, 1358, "",spep_2 + 110, 0, 4, 0.6);
SE072 = playSeVer2( spep_2 + 104, 1358, "",spep_2 + 118, 0, 4, 0.6);
SE074 = playSeVer2( spep_2 + 112, 1358, "",spep_2 + 128, 0, 4, 0.6);
SE077 = playSeVer2( spep_2 + 120, 1358, "",spep_2 + 138, 0, 4, 0.6);
--SE079 = playSeVer2( spep_2 + 130, 1358, "",spep_2 + 146, 0, 4, 0.6);
SE081 = playSeVer2( spep_2 + 138, 1358, "",spep_2 + 154, 0, 4, 0.6);
SE083 = playSeVer2( spep_2 + 146, 1358, "",spep_2 + 162, 0, 4, 0.6);
SE085 = playSeVer2( spep_2 + 154, 1358, "",spep_2 + 170, 0, 4, 0.6);
SE089 = playSeVer2( spep_2 + 162, 1358, "",spep_2 + 182, 0, 4, 0.6);
--SE091 = playSeVer2( spep_2 + 170, 1358, "",spep_2 + 192, 0, 4, 0.6);
SE092 = playSeVer2( spep_2 + 180, 1358, "",spep_2 + 198, 0, 4, 0.6);
SE099 = playSeVer2( spep_2 + 190, 1358, "",spep_2 + 208, 0, 4, 0.6);
SE101 = playSeVer2( spep_2 + 200, 1358, "",spep_2 + 216, 0, 4, 0.6);
SE103 = playSeVer2( spep_2 + 210, 1358, "",spep_2 + 224, 0, 4, 0.6);
SE105 = playSeVer2( spep_2 + 220, 1358, "",spep_2 + 236, 0, 4, 0.6);
SE108 = playSeVer2( spep_2 + 230, 1358, "",spep_2 + 246, 0, 4, 0.6);
SE110 = playSeVer2( spep_2 + 240, 1358, "",spep_2 + 254, 0, 4, 0.6);
SE112 = playSeVer2( spep_2 + 248, 1358, "",spep_2 + 260, 0, 4, 0.6);
SE114 = playSeVer2( spep_2 + 254, 1358, "",spep_2 + 266, 0, 4, 0.6);]]

--爆発
SE064 = playSeVer2( spep_2 + 78, 1024, "", 0, 0, 0, -1);
SE071 = playSeVer2( spep_2 + 104, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104, SE071, 66 );

--悟空突っ込んでくる
SE093 = playSeVer2( spep_2 + 184, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 184, SE093, 48 );
SE094 = playSeVer2( spep_2 + 184, 1117, "", 0, 0, 0, -1);
SE095 = playSeVer2( spep_2 + 184, 1183, "", 0, 0, 0, -1);
SE097 = playSeVer2( spep_2 + 190, 9, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 258 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 258-2;


------------------------------------------------------
-- 悟空龍拳貫通フィニッシュ(318F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --悟空龍拳貫通フィニッシュ    ef_003
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 318, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 318, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 318, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 318, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --↑敵を挟んだ背景 ef_003_bg
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 318, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 318, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 318, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 318, finish_b, 255 );

a = 1;
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 +a + 86, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3 +a + 16, 1, 108 );

setMoveKey( spep_3 + 0, 1, 146.1, -173.6 , 0 );
setMoveKey( spep_3 + 2, 1, 146.1, -173.6 , 0 );
setMoveKey( spep_3 +a + 2, 1, 92, -138.1 , 0 );
setMoveKey( spep_3 +a + 3, 1, 92, -138.1 , 0 );
setMoveKey( spep_3 +a + 4, 1, 92, -138.1 , 0 );
setMoveKey( spep_3 +a + 5, 1, 92, -138.1 , 0 );
setMoveKey( spep_3 +a + 6, 1, 21.1, -94.8 , 0 );
setMoveKey( spep_3 +a + 7, 1, 21.1, -94.8 , 0 );
setMoveKey( spep_3 +a + 8, 1, 8.6, -88.5 , 0 );
setMoveKey( spep_3 +a + 9, 1, 8.6, -88.5 , 0 );
setMoveKey( spep_3 +a + 10, 1, 8.6, -88.5 , 0 );
setMoveKey( spep_3 +a + 11, 1, 8.6, -88.5 , 0 );
setMoveKey( spep_3 +a + 12, 1, 5.3, -86.5 , 0 );
setMoveKey( spep_3 +a + 15, 1, 5.3, -86.5 , 0 );
setMoveKey( spep_3 +a + 16, 1, 15, -92.5 , 0 );
setMoveKey( spep_3 +a + 18, 1, 11.5, -90.5 , 0 );
setMoveKey( spep_3 +a + 20, 1, 8, -88.4 , 0 );
setMoveKey( spep_3 +a + 22, 1, 4.6, -86.3 , 0 );
setMoveKey( spep_3 +a + 24, 1, 1.1, -84.2 , 0 );
setMoveKey( spep_3 +a + 26, 1, -2.3, -82.1 , 0 );
setMoveKey( spep_3 +a + 28, 1, -5.8, -80 , 0 );
setMoveKey( spep_3 +a + 30, 1, -9.3, -77.9 , 0 );
setMoveKey( spep_3 +a + 32, 1, -12.8, -75.9 , 0 );
setMoveKey( spep_3 +a + 34, 1, -16.2, -73.8 , 0 );
setMoveKey( spep_3 +a + 36, 1, -19.7, -71.7 , 0 );
setMoveKey( spep_3 +a + 38, 1, -23.2, -69.6 , 0 );
setMoveKey( spep_3 +a + 40, 1, -26.7, -67.5 , 0 );
setMoveKey( spep_3 +a + 42, 1, -30.1, -65.4 , 0 );
setMoveKey( spep_3 +a + 44, 1, -33.6, -63.3 , 0 );
setMoveKey( spep_3 +a + 46, 1, -37.1, -61.3 , 0 );
setMoveKey( spep_3 +a + 48, 1, -40.6, -59.2 , 0 );
setMoveKey( spep_3 +a + 50, 1, -44, -57.1 , 0 );
setMoveKey( spep_3 +a + 52, 1, -47.5, -55 , 0 );
setMoveKey( spep_3 +a + 54, 1, -51, -52.9 , 0 );
setMoveKey( spep_3 +a + 56, 1, -54.5, -50.8 , 0 );
setMoveKey( spep_3 +a + 58, 1, -57.9, -48.8 , 0 );
setMoveKey( spep_3 +a + 60, 1, -61.4, -46.7 , 0 );
setMoveKey( spep_3 +a + 62, 1, -64.9, -44.6 , 0 );
setMoveKey( spep_3 +a + 64, 1, -68.4, -42.5 , 0 );
setMoveKey( spep_3 +a + 66, 1, -71.8, -40.4 , 0 );
setMoveKey( spep_3 +a + 68, 1, -75.3, -38.3 , 0 );
setMoveKey( spep_3 +a + 70, 1, -78.8, -36.2 , 0 );
setMoveKey( spep_3 +a + 72, 1, -82.3, -34.2 , 0 );
setMoveKey( spep_3 +a + 74, 1, -85.7, -32.1 , 0 );
setMoveKey( spep_3 +a + 76, 1, -89.2, -30 , 0 );
setMoveKey( spep_3 +a + 78, 1, -92.7, -27.9 , 0 );
setMoveKey( spep_3 +a + 80, 1, -96.2, -25.8 , 0 );
setMoveKey( spep_3 +a + 82, 1, -99.6, -23.7 , 0 );
setMoveKey( spep_3 +a + 84, 1, -103.1, -21.6 , 0 );
setMoveKey( spep_3 +a + 86, 1, -103.1, -21.6 , 0 );

setScaleKey( spep_3 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_3 +a + 15, 1, 1.7, 1.7 );
setScaleKey( spep_3 +a + 16, 1, 2, 2 );
setScaleKey( spep_3 +a + 86, 1, 2, 2 );

setRotateKey( spep_3 + 0, 1, -36.2 );
setRotateKey( spep_3 +a + 15, 1, -36.2 );
setRotateKey( spep_3 +a + 16, 1, 31.5 );
setRotateKey( spep_3 +a + 86, 1, 31.5 );

-- ** 音 ** --
--龍拳爆発
SE115 = playSeVer2( spep_3 + 0, 1153, "", 0, 0, 0, -1);
SE116 = playSeVer2( spep_3 + 0, 1027, "", 0, 0, 0, -1);
SE117 = playSeVer2( spep_3 + 0, 1321, "",spep_3 + 114, 0, 52, -1);
SE118 = playSeVer2( spep_3 + 0, 1066, "",spep_3 + 114, 0, 52, -1);
SE119 = playSeVer2( spep_3 + 0, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE119, 74 );
setPitch( spep_3 + 0, SE119, -800 );
setTimeStretch( SE119, 0.47, 30, 4 );
SE120 = playSeVer2( spep_3 + 4, 1180, "", 0, 0, 0, -1);

--ラスト爆発
SE121 = playSeVer2( spep_3 + 76, 1159, "", 0, 0, 0, -1);
SE122 = playSeVer2( spep_3 + 76, 1067, "", 0, 0, 0, -1);
SE123 = playSeVer2( spep_3 + 82, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 318 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
--hideKoScreen();
dealDamage( spep_3 + 14 );
--entryFade( spep_3 +128 - 4, 2,  4, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_3 + 132 );


end