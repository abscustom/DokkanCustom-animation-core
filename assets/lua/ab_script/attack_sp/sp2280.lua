--1022420:超サイヤ人4孫悟空&超サイヤ人4ベジータ_超必殺技：龍拳&ファイナルシャインアタック
--sp_effect_b4_00204
--sp2280

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

--エフェクト(味方)
SP_01 = 158690;--冒頭～ベジータ蹴り：手前 ef_001
SP_02 = 158691;--冒頭～ベジータ蹴り：奥 ef_002
SP_03 = 158692;--ファイナルシャイン～ラスト：手前 ef_003
SP_04 = 158693;--ファイナルシャイン～ラスト：奥 ef_004

--エフェクト(てき)
SP_01x = 158694;--冒頭～ベジータ蹴り：手前(敵) ef_001r
SP_02x = 158695;--冒頭～ベジータ蹴り：奥(敵) er_002r
SP_03x = 158696;--ファイナルシャイン～ラスト：手前(敵) ef_003r
SP_04x = 158697;--ファイナルシャイン～ラスト：奥(敵) ef_004r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.9);


setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--冒頭～ベジータ蹴り：手前
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
kick_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --冒頭～ベジータ蹴り：手前 ef_001
setEffMoveKey( spep_0 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 480, kick_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 480, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kick_f, 0 );
setEffRotateKey( spep_0 + 480, kick_f, 0 );
setEffAlphaKey( spep_0 + 0, kick_f, 255 );
setEffAlphaKey( spep_0 + 480, kick_f, 255 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --冒頭～ベジータ蹴り：奥 ef_002
setEffMoveKey( spep_0 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 480, kick_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 480, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kick_b, 0 );
setEffRotateKey( spep_0 + 480, kick_b, 0 );
setEffAlphaKey( spep_0 + 0, kick_b, 255 );
setEffAlphaKey( spep_0 + 480, kick_b, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 180, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  180,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  180,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

-- ** 音 ** --
--二人向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 160, 0, 26, -1);
SE003 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 120, 0, 54, -1);
SE004 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);

--顔カットイン
SE005 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--二人向かってくる
SE006 = playSeVer2( spep_0 + 64, 1019, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 476, 0, 0, 0, 0, 255 );  --黒 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 110 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE006, 0);

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
-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0+4-3 + 130, 1, 1);
setDisp( spep_0+4-1 + 180, 1, 0);

changeAnime( spep_0+4-3 + 130, 1, 104);
changeAnime( spep_0+4-3 + 160, 1, 106);

setMoveKey( spep_0+4-3 + 130, 1, -17.7, 1.7 , 0 );
setMoveKey( spep_0+4-3 + 138, 1, -17.7, 1.7 , 0 );
setMoveKey( spep_0+4-3 + 140, 1, -21.6, -0.5 , 0 );
setMoveKey( spep_0+4-3 + 142, 1, -29.3, -5.3 , 0 );
setMoveKey( spep_0+4-3 + 144, 1, -40.7, -12.5 , 0 );
setMoveKey( spep_0+4-3 + 146, 1, -56, -22.1 , 0 );
setMoveKey( spep_0+4-3 + 148, 1, -75, -34.2 , 0 );
setMoveKey( spep_0+4-3 + 150, 1, -77, -35.5 , 0 );
setMoveKey( spep_0+4-3 + 152, 1, -78.9, -37 , 0 );
setMoveKey( spep_0+4-3 + 154, 1, -81, -38.5 , 0 );
setMoveKey( spep_0+4-3 + 156, 1, -83, -40 , 0 );
setMoveKey( spep_0+4-3 + 158, 1, -85.1, -41.6 , 0 );
setMoveKey( spep_0+4-3 + 159, 1, -85.1, -41.6 , 0 );
setMoveKey( spep_0+4-3 + 160, 1, -85.6, -29.9 , 0 );
setMoveKey( spep_0+4-3 + 162, 1, -87.8, -31.5 , 0 );
setMoveKey( spep_0+4-3 + 164, 1, -89.9, -33.1 , 0 );
setMoveKey( spep_0+4-3 + 166, 1, -100.1, -51 , 0 );
setMoveKey( spep_0+4-3 + 168, 1, -92.1, -35 , 0 );
setMoveKey( spep_0+4-3 + 170, 1, -104.1, -23 , 0 );
setMoveKey( spep_0+4-3 + 172, 1, -92.1, -35 , 0 );
setMoveKey( spep_0+4-3 + 174, 1, -96.1, -47 , 0 );
setMoveKey( spep_0+4-3 + 176, 1, -92.1, -35 , 0 );
setMoveKey( spep_0+4-3 + 178, 1, -104.1, -39 , 0 );
setMoveKey( spep_0+4-1 + 180, 1, -92.1, -35 , 0 );

setScaleKey( spep_0+4-3 + 130, 1, 1.9, 1.9 );
setScaleKey( spep_0+4-3 + 159, 1, 1.9, 1.9 );
setScaleKey( spep_0+4-3 + 160, 1, 1.65, 1.65 );
setScaleKey( spep_0+4-1 + 180, 1, 1.65, 1.65 );

setRotateKey( spep_0+4-3 + 130, 1, -15.7 );
setRotateKey( spep_0+4-3 + 159, 1, -15.7 );
setRotateKey( spep_0+4-3 + 160, 1, -89.7 );
setRotateKey( spep_0+4-1 + 180, 1, -89.7 );

--敵の動き2
setDisp( spep_0+4-3 + 260, 1, 1);
setDisp( spep_0+4-1 + 298, 1, 0);

changeAnime( spep_0+4-3 + 260, 1, 106);
changeAnime( spep_0+4-3 + 264, 1, 108);

setMoveKey( spep_0+4-3 + 260, 1, 59.7, 55.9 , 0 );
setMoveKey( spep_0+4-3 + 263, 1, 62.7, 53.6 , 0 );
setMoveKey( spep_0+4-3 + 264, 1, 200.6, -48 , 0 );
setMoveKey( spep_0+4-3 + 266, 1, 195.5, -32 , 0 );
setMoveKey( spep_0+4-3 + 268, 1, 175.4, -40 , 0 );
setMoveKey( spep_0+4-3 + 270, 1, 180.1, -32 , 0 );
setMoveKey( spep_0+4-3 + 272, 1, 165.6, -23.9 , 0 );
setMoveKey( spep_0+4-3 + 274, 1, 168.1, -31.9 , 0 );
setMoveKey( spep_0+4-3 + 276, 1, 159.8, 173.2 , 0 );
setMoveKey( spep_0+4-3 + 278, 1, 148.6, 274.3 , 0 );
setMoveKey( spep_0+4-3 + 280, 1, 142.1, 282.8 , 0 );
setMoveKey( spep_0+4-3 + 282, 1, 151.4, 297.9 , 0 );
setMoveKey( spep_0+4-3 + 284, 1, 152.6, 307.8 , 0 );
setMoveKey( spep_0+4-3 + 286, 1, 153.6, 316.5 , 0 );
setMoveKey( spep_0+4-3 + 288, 1, 154.5, 323.6 , 0 );
setMoveKey( spep_0+4-3 + 290, 1, 155.2, 329.5 , 0 );
setMoveKey( spep_0+4-3 + 292, 1, 155.7, 334.2 , 0 );
setMoveKey( spep_0+4-3 + 294, 1, 156.1, 337.4 , 0 );
setMoveKey( spep_0+4-3 + 296, 1, 156.4, 339.4 , 0 );
setMoveKey( spep_0+4-1 + 298, 1, 156.4, 340 , 0 );

setScaleKey( spep_0+4-3 + 260, 1, 4.86, 4.86 );
setScaleKey( spep_0+4-3 + 263, 1, 10.6, 10.6 );
setScaleKey( spep_0+4-3 + 264, 1, 10.43, 10.43 );
setScaleKey( spep_0+4-3 + 266, 1, 9.96, 9.96 );
setScaleKey( spep_0+4-3 + 268, 1, 9.53, 9.53 );
setScaleKey( spep_0+4-3 + 270, 1, 9.14, 9.14 );
setScaleKey( spep_0+4-3 + 272, 1, 8.81, 8.81 );
setScaleKey( spep_0+4-3 + 274, 1, 8.52, 8.52 );
setScaleKey( spep_0+4-3 + 276, 1, 4.01, 4.01 );
setScaleKey( spep_0+4-3 + 278, 1, 0.8, 0.8 );
setScaleKey( spep_0+4-3 + 280, 1, 0.67, 0.67 );
setScaleKey( spep_0+4-3 + 282, 1, 0.55, 0.55 );
setScaleKey( spep_0+4-3 + 284, 1, 0.45, 0.45 );
setScaleKey( spep_0+4-3 + 286, 1, 0.36, 0.36 );
setScaleKey( spep_0+4-3 + 288, 1, 0.29, 0.29 );
setScaleKey( spep_0+4-3 + 290, 1, 0.22, 0.22 );
setScaleKey( spep_0+4-3 + 292, 1, 0.18, 0.18 );
setScaleKey( spep_0+4-3 + 294, 1, 0.14, 0.14 );
setScaleKey( spep_0+4-3 + 296, 1, 0.12, 0.12 );
setScaleKey( spep_0+4-1 + 298, 1, 0.12, 0.12 );

setRotateKey( spep_0+4-3 + 260, 1, -23 );
setRotateKey( spep_0+4-3 + 263, 1, -23 );
setRotateKey( spep_0+4-3 + 264, 1, -6.8 );
setRotateKey( spep_0+4-3 + 266, 1, -6.5 );
setRotateKey( spep_0+4-3 + 268, 1, -6.3 );
setRotateKey( spep_0+4-3 + 270, 1, -6 );
setRotateKey( spep_0+4-3 + 272, 1, -5.8 );
setRotateKey( spep_0+4-3 + 274, 1, -5.7 );
setRotateKey( spep_0+4-3 + 276, 1, -13.5 );
setRotateKey( spep_0+4-3 + 278, 1, -20.8 );
setRotateKey( spep_0+4-3 + 280, 1, -21.1 );
setRotateKey( spep_0+4-3 + 282, 1, -21.3 );
setRotateKey( spep_0+4-3 + 284, 1, -21.5 );
setRotateKey( spep_0+4-3 + 286, 1, -21.7 );
setRotateKey( spep_0+4-3 + 288, 1, -21.9 );
setRotateKey( spep_0+4-3 + 290, 1, -22 );
setRotateKey( spep_0+4-3 + 292, 1, -22.1 );
setRotateKey( spep_0+4-3 + 294, 1, -22.2 );
setRotateKey( spep_0+4-1 + 298, 1, -22.2 );

--敵の動き3
setDisp( spep_0+4-3 + 354, 1, 1);
setDisp( spep_0+4-1 + 390, 1, 0);

changeAnime( spep_0+4-3 + 354, 1, 105);

setMoveKey( spep_0+4-3 + 354, 1, -6.2, -46.2 , 0 );
setMoveKey( spep_0+4-3 + 356, 1, 2.4, -37.1 , 0 );
setMoveKey( spep_0+4-3 + 358, 1, 10.7, -28.4 , 0 );
setMoveKey( spep_0+4-3 + 360, 1, 18.4, -20.2 , 0 );
setMoveKey( spep_0+4-3 + 362, 1, 25.8, -12.4 , 0 );
setMoveKey( spep_0+4-3 + 364, 1, 32.8, -5.1 , 0 );
setMoveKey( spep_0+4-3 + 366, 1, 39.3, 1.9 , 0 );
setMoveKey( spep_0+4-3 + 368, 1, 45.4, 8.3 , 0 );
setMoveKey( spep_0+4-3 + 370, 1, 51.1, 14.3 , 0 );
setMoveKey( spep_0+4-3 + 372, 1, 56.4, 19.9 , 0 );
setMoveKey( spep_0+4-3 + 374, 1, 61.3, 25.1 , 0 );
setMoveKey( spep_0+4-3 + 376, 1, 65.8, 29.8 , 0 );
setMoveKey( spep_0+4-3 + 378, 1, 189.4, -491.8 , 0 );
setMoveKey( spep_0+4-3 + 380, 1, 344.1, -1143.9 , 0 );
setMoveKey( spep_0+4-3 + 382, 1, 529.7, -1926.8 , 0 );
setMoveKey( spep_0+4-3 + 384, 1, 746.3, -2840.7 , 0 );
setMoveKey( spep_0+4-3 + 386, 1, 994, -3885.6 , 0 );
setMoveKey( spep_0+4-3 + 388, 1, 1272.8, -5061.9 , 0 );
setMoveKey( spep_0+4-1 + 390, 1, 1582.7, -6369.9 , 0 );

setScaleKey( spep_0+4-3 + 354, 1, 2.06, 2.1 );
setScaleKey( spep_0+4-3 + 356, 1, 2.01, 2.05 );
setScaleKey( spep_0+4-3 + 358, 1, 1.97, 2 );
setScaleKey( spep_0+4-3 + 360, 1, 1.92, 1.95 );
setScaleKey( spep_0+4-3 + 362, 1, 1.88, 1.91 );
setScaleKey( spep_0+4-3 + 364, 1, 1.85, 1.87 );
setScaleKey( spep_0+4-3 + 366, 1, 1.81, 1.83 );
setScaleKey( spep_0+4-3 + 368, 1, 1.78, 1.79 );
setScaleKey( spep_0+4-3 + 370, 1, 1.75, 1.76 );
setScaleKey( spep_0+4-3 + 372, 1, 1.72, 1.73 );
setScaleKey( spep_0+4-3 + 374, 1, 1.69, 1.7 );
setScaleKey( spep_0+4-3 + 376, 1, 1.67, 1.67 );
setScaleKey( spep_0+4-3 + 378, 1, 3.81, 3.81 );
setScaleKey( spep_0+4-3 + 380, 1, 6.48, 6.48 );
setScaleKey( spep_0+4-3 + 382, 1, 9.69, 9.69 );
setScaleKey( spep_0+4-3 + 384, 1, 13.44, 13.44 );
setScaleKey( spep_0+4-3 + 386, 1, 17.72, 17.72 );
setScaleKey( spep_0+4-3 + 388, 1, 22.53, 22.53 );
setScaleKey( spep_0+4-1 + 390, 1, 27.88, 27.88 );

setRotateKey( spep_0+4-3 + 354, 1, 15.6 );
setRotateKey( spep_0+4-3 + 364, 1, 15.6 );
setRotateKey( spep_0+4-3 + 366, 1, 15.5 );
setRotateKey( spep_0+4-1 + 390, 1, 15.5 );

--敵の動き4
setDisp( spep_0+4-3 + 424, 1, 1);
setDisp( spep_0+4-1 + 450, 1, 0);

changeAnime( spep_0+4-3 + 424, 1, 105);
changeAnime( spep_0+4-3 + 428, 1, 108);

setMoveKey( spep_0+4-3 + 424, 1, 12.7, -72.1 , 0 );
setMoveKey( spep_0+4-3 + 427, 1, 39.2, -45.8 , 0 );
setMoveKey( spep_0+4-3 + 428, 1, 44.8, -64.5 , 0 );
setMoveKey( spep_0+4-3 + 430, 1, 99.1, -122.8 , 0 );
setMoveKey( spep_0+4-3 + 432, 1, 160.9, -126.6 , 0 );
setMoveKey( spep_0+4-3 + 434, 1, 155.6, -115.6 , 0 );
setMoveKey( spep_0+4-3 + 436, 1, 182.3, -144.5 , 0 );
setMoveKey( spep_0+4-3 + 438, 1, 229.5, -190.9 , 0 );
setMoveKey( spep_0+4-3 + 440, 1, 294.3, -224.7 , 0 );
setMoveKey( spep_0+4-3 + 442, 1, 327.4, -263.6 , 0 );
setMoveKey( spep_0+4-3 + 444, 1, 358.6, -271.4 , 0 );
setMoveKey( spep_0+4-3 + 446, 1, 368.3, -275.3 , 0 );
setMoveKey( spep_0+4-3 + 448, 1, 392.8, -297 , 0 );
setMoveKey( spep_0+4-1 + 450, 1, 397.9, -301.3 , 0 );

setScaleKey( spep_0+4-3 + 424, 1, 2.54, 2.54 );
setScaleKey( spep_0+4-3 + 427, 1, 2.45, 2.45 );
setScaleKey( spep_0+4-3 + 428, 1, 4.73, 4.73 );
setScaleKey( spep_0+4-3 + 430, 1, 3.68, 3.68 );
setScaleKey( spep_0+4-3 + 432, 1, 2.63, 2.63 );
setScaleKey( spep_0+4-3 + 434, 1, 2.62, 2.62 );
setScaleKey( spep_0+4-3 + 436, 1, 2.6, 2.6 );
setScaleKey( spep_0+4-3 + 438, 1, 1.93, 1.93 );
setScaleKey( spep_0+4-3 + 440, 1, 1.32, 1.32 );
setScaleKey( spep_0+4-3 + 442, 1, 0.9, 0.9 );
setScaleKey( spep_0+4-3 + 444, 1, 0.58, 0.58 );
setScaleKey( spep_0+4-3 + 446, 1, 0.32, 0.32 );
setScaleKey( spep_0+4-3 + 448, 1, 0.17, 0.17 );
setScaleKey( spep_0+4-1 + 450, 1, 0.1, 0.1 );

setRotateKey( spep_0+4-3 + 424, 1, 19 );
setRotateKey( spep_0+4-3 + 427, 1, 17.5 );
setRotateKey( spep_0+4-3 + 428, 1, 28.5 );
setRotateKey( spep_0+4-1 + 450, 1, 28.5 );

-- ** 音 ** --
--ベジータアップ
SE007 = playSeVer2( spep_0+4 + 98, 1232, "", 0, 0, 0, -1);

--悟空アップ
SE008 = playSeVer2( spep_0+4 + 120, 1232, "", 0, 0, 0, -1);

--瞬間移動
SE009 = playSeVer2( spep_0+4 + 128, 1109, "", 0, 0, 0, -1);

--ベジータ気弾撃ち込む
SE010 = playSeVer2( spep_0+4 + 158, 1193, "",spep_0+4 + 208, 0, 22, -1);
SE011 = playSeVer2( spep_0+4 + 158, 1145, "",spep_0+4 + 242, 0, 52, -1);
SE012 = playSeVer2( spep_0+4 + 158, 1023, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0+4 + 158, 1011, "", 0, 0, 0, -1);

--煙から悟空現れる
SE014 = playSeVer2( spep_0+4 + 204, 1188, "",spep_0+4 + 270, 10, 38, -1);
setSeVolumeByWorkId( spep_0+4 + 204, SE014, 72 );
setStartTimeMs( SE014,  183 );
SE015 = playSeVer2( spep_0+4 + 200, 1116, "",spep_0+4 + 234, 0, 12, -1);

--悟空振りかぶる
SE016 = playSeVer2( spep_0+4 + 226, 1047, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0+4 + 226, SE016, 117 );
setPitch( spep_0+4 + 226, SE016, -400 );
setStartTimeMs( SE016,  0 );
setPitch( spep_0+4 + 210, SE016, -400 );
setTimeStretch( SE016, 0.73, 30, 4 );
SE017 = playSeVer2( spep_0+4 + 236, 1004, "", 0, 0, 0, -1);
setPitch( spep_0+4 + 236, SE017, -400 );
setTimeStretch( SE017, 0.73, 30, 4 );

--蹴り
SE018 = playSeVer2( spep_0+4 + 262, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+4 + 262, SE018, 90 );
SE019 = playSeVer2( spep_0+4 + 262, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+4 + 262, SE019, 91 );
SE020 = playSeVer2( spep_0+4 + 264, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+4 + 264, SE020, 77 );

--ベジータ気ダメ
SE021 = playSeVer2( spep_0+4 + 308, 1035, "", 0, 0, 0, -1);

--ベジータ飛んでいく
SE022 = playSeVer2( spep_0+4 + 330, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+4 + 330, SE022, 166 );
SE023 = playSeVer2( spep_0+4 + 330, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+4 + 330, SE023, 71 );

--ベジータ向かってくる
SE024 = playSeVer2( spep_0+4 + 380, 1258, "",spep_0+4 + 434, 6, 10, -1);
setSeVolumeByWorkId( spep_0+4 + 380, SE024, 60 );
setStartTimeMs( SE024,  133 );
SE025 = playSeVer2( spep_0+4 + 378, 1116, "",spep_0+4 + 420, 0, 18, -1);
setSeVolumeByWorkId( spep_0+4 + 378, SE025, 115 );
SE026 = playSeVer2( spep_0+4 + 378, 1278, "",spep_0+4 + 454, 0, 36, -1);
setSeVolumeByWorkId( spep_0+4 + 378, SE026, 79 );

--ベジータ蹴り
SE027 = playSeVer2( spep_0+4 + 416, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+4 + 416, SE027, 200 );
SE028 = playSeVer2( spep_0+4 + 422, 1123, "",spep_0+4 + 480, 0, 10, 0.7);
SE029 = playSeVer2( spep_0+4 + 422, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+4 + 422, SE029, 81 );

--白フェード
entryFade( spep_0 + 466, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+480;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
spep_2= spep_1 + 94;

------------------------------------------------------
--ファイナルシャイン～ラスト
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ファイナルシャイン～ラスト：手前 ef_003
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 638, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 638, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 638, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 638, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --ファイナルシャイン～ラスト：奥 ef_004
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 638, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 638, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 638, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 638, finish_b, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2-3 + 102, 1, 1);
setDisp( spep_2-1 + 132, 1, 0);

changeAnime( spep_2-3 + 102, 1, 108);

setMoveKey( spep_2-3 + 102, 1, 30.5, 68.3 , 0 );
setMoveKey( spep_2-3 + 103, 1, 30.5, 68.3 , 0 );
setMoveKey( spep_2-3 + 104, 1, 44.7, 76.9 , 0 );
setMoveKey( spep_2-3 + 105, 1, 44.7, 76.9 , 0 );
setMoveKey( spep_2-3 + 106, 1, 58.7, 85.6 , 0 );
setMoveKey( spep_2-3 + 107, 1, 58.7, 85.6 , 0 );
setMoveKey( spep_2-3 + 108, 1, 61.2, 86.8 , 0 );
setMoveKey( spep_2-3 + 109, 1, 61.2, 86.8 , 0 );
setMoveKey( spep_2-3 + 110, 1, 64.5, 88.5 , 0 );
setMoveKey( spep_2-3 + 111, 1, 64.5, 88.5 , 0 );
setMoveKey( spep_2-3 + 112, 1, 68.6, 90.6 , 0 );
setMoveKey( spep_2-3 + 113, 1, 68.6, 90.6 , 0 );
setMoveKey( spep_2-3 + 114, 1, 73.6, 93.1 , 0 );
setMoveKey( spep_2-3 + 115, 1, 73.6, 93.1 , 0 );
setMoveKey( spep_2-3 + 116, 1, 79.4, 96 , 0 );
setMoveKey( spep_2-3 + 117, 1, 79.4, 96 , 0 );
setMoveKey( spep_2-3 + 118, 1, 134.9, 121.7 , 0 );
setMoveKey( spep_2-3 + 119, 1, 134.9, 121.7 , 0 );
setMoveKey( spep_2-3 + 120, 1, 152, 129.7 , 0 );
setMoveKey( spep_2-3 + 121, 1, 152, 129.7 , 0 );
setMoveKey( spep_2-3 + 122, 1, 161, 133.9 , 0 );
setMoveKey( spep_2-3 + 123, 1, 161, 133.9 , 0 );
setMoveKey( spep_2-3 + 124, 1, 166, 136.3 , 0 );
setMoveKey( spep_2-3 + 125, 1, 166, 136.3 , 0 );
setMoveKey( spep_2-3 + 126, 1, 168.7, 137.5 , 0 );
setMoveKey( spep_2-3 + 127, 1, 168.7, 137.5 , 0 );
setMoveKey( spep_2-3 + 128, 1, 170, 138.1 , 0 );
setMoveKey( spep_2-3 + 129, 1, 170, 138.1 , 0 );
setMoveKey( spep_2-3 + 130, 1, 170.5, 138.4 , 0 );
setMoveKey( spep_2-1 + 132, 1, 170.6, 138.5 , 0 );

setScaleKey( spep_2-3 + 102, 1, 4.01, 4.01 );
setScaleKey( spep_2-3 + 103, 1, 4.01, 4.01 );
setScaleKey( spep_2-3 + 104, 1, 3.47, 3.47 );
setScaleKey( spep_2-3 + 105, 1, 3.47, 3.47 );
setScaleKey( spep_2-3 + 106, 1, 2.93, 2.93 );
setScaleKey( spep_2-3 + 107, 1, 2.93, 2.93 );
setScaleKey( spep_2-3 + 108, 1, 2.86, 2.86 );
setScaleKey( spep_2-3 + 107, 1, 2.86, 2.86 );
setScaleKey( spep_2-3 + 110, 1, 2.76, 2.76 );
setScaleKey( spep_2-3 + 111, 1, 2.76, 2.76 );
setScaleKey( spep_2-3 + 112, 1, 2.63, 2.63 );
setScaleKey( spep_2-3 + 113, 1, 2.63, 2.63 );
setScaleKey( spep_2-3 + 114, 1, 2.48, 2.48 );
setScaleKey( spep_2-3 + 115, 1, 2.48, 2.48 );
setScaleKey( spep_2-3 + 116, 1, 2.31, 2.31 );
setScaleKey( spep_2-3 + 117, 1, 2.31, 2.31 );
setScaleKey( spep_2-3 + 118, 1, 1, 1 );
setScaleKey( spep_2-3 + 119, 1, 1, 1 );
setScaleKey( spep_2-3 + 120, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 121, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 122, 1, 0.38, 0.38 );
setScaleKey( spep_2-3 + 123, 1, 0.38, 0.38 );
setScaleKey( spep_2-3 + 124, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 125, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 126, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 127, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 128, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 129, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 130, 1, 0.16, 0.16 );
setScaleKey( spep_2-1 + 132, 1, 0.16, 0.16 );

setRotateKey( spep_2-3 + 102, 1, 3.6 );
setRotateKey( spep_2-1 + 132, 1, 3.6 );

--敵の動き2
setDisp( spep_2-3 + 254, 1, 1);
setDisp( spep_2-1 + 334, 1, 0);

changeAnime( spep_2-3 + 254, 1, 108);

setMoveKey( spep_2-3 + 254, 1, -14, -464.5 , 0 );
setMoveKey( spep_2-3 + 256, 1, -3.3, -842.6 , 0 );
setMoveKey( spep_2-3 + 258, 1, -7.5, -706.7 , 0 );
setMoveKey( spep_2-3 + 260, 1, 10.2, -607.5 , 0 );
setMoveKey( spep_2-3 + 262, 1, 1.9, -505 , 0 );
setMoveKey( spep_2-3 + 264, 1, 15.5, -391.1 , 0 );
setMoveKey( spep_2-3 + 266, 1, 15.8, -401.3 , 0 );
setMoveKey( spep_2-3 + 268, 1, 19.8, -379.9 , 0 );
setMoveKey( spep_2-3 + 270, 1, 11.9, -366.7 , 0 );
setMoveKey( spep_2-3 + 272, 1, 19.9, -377.5 , 0 );
setMoveKey( spep_2-3 + 274, 1, 12, -388.4 , 0 );
setMoveKey( spep_2-3 + 276, 1, 20, -375.3 , 0 );
setMoveKey( spep_2-3 + 278, 1, 12, -366.4 , 0 );
setMoveKey( spep_2-3 + 280, 1, 20.1, -373.5 , 0 );
setMoveKey( spep_2-3 + 282, 1, 12.1, -384.7 , 0 );
setMoveKey( spep_2-3 + 284, 1, 20.1, -371.9 , 0 );
setMoveKey( spep_2-3 + 286, 1, 20.2, -371.3 , 0 );
setMoveKey( spep_2-3 + 288, 1, 20.2, -370.7 , 0 );
setMoveKey( spep_2-3 + 290, 1, 20.2, -370.2 , 0 );
setMoveKey( spep_2-3 + 292, 1, 20.2, -369.7 , 0 );
setMoveKey( spep_2-3 + 294, 1, 20.2, -369.4 , 0 );
setMoveKey( spep_2-3 + 296, 1, 20.2, -369.1 , 0 );
setMoveKey( spep_2-3 + 298, 1, 20.3, -368.9 , 0 );
setMoveKey( spep_2-3 + 300, 1, 20.3, -368.7 , 0 );
setMoveKey( spep_2-3 + 304, 1, 20.3, -368.7 , 0 );
setMoveKey( spep_2-3 + 306, 1, 27.5, -299.2 , 0 );
setMoveKey( spep_2-3 + 308, 1, 25.4, -313.6 , 0 );
setMoveKey( spep_2-3 + 310, 1, 23.6, -325.8 , 0 );
setMoveKey( spep_2-3 + 312, 1, 22.2, -335.8 , 0 );
setMoveKey( spep_2-3 + 314, 1, 17.1, -363.5 , 0 );
setMoveKey( spep_2-3 + 316, 1, 21, -347.1 , 0 );
setMoveKey( spep_2-3 + 318, 1, 4.9, -354.5 , 0 );
setMoveKey( spep_2-3 + 320, 1, 20.7, -353.7 , 0 );
setMoveKey( spep_2-3 + 322, 1, 12.7, -344.6 , 0 );
setMoveKey( spep_2-3 + 324, 1, 20.6, -359.2 , 0 );
setMoveKey( spep_2-3 + 326, 1, 16.5, -373.6 , 0 );
setMoveKey( spep_2-3 + 328, 1, 20.4, -363.8 , 0 );
setMoveKey( spep_2-3 + 330, 1, 8.3, -369.7 , 0 );
setMoveKey( spep_2-3 + 332, 1, 20.3, -367.3 , 0 );
setMoveKey( spep_2-1 + 334, 1, 16.3, -376.7 , 0 );

setScaleKey( spep_2-3 + 254, 1, 6.75, 6.75 );
setScaleKey( spep_2-3 + 256, 1, 12.12, 12.12 );
setScaleKey( spep_2-3 + 258, 1, 9.68, 9.68 );
setScaleKey( spep_2-3 + 260, 1, 7.51, 7.51 );
setScaleKey( spep_2-3 + 262, 1, 5.61, 5.61 );
setScaleKey( spep_2-3 + 264, 1, 3.97, 3.97 );
setScaleKey( spep_2-3 + 266, 1, 3.42, 3.42 );
setScaleKey( spep_2-3 + 268, 1, 3.31, 3.31 );
setScaleKey( spep_2-3 + 270, 1, 3.2, 3.2 );
setScaleKey( spep_2-3 + 272, 1, 3.1, 3.1 );
setScaleKey( spep_2-3 + 274, 1, 3.01, 3.01 );
setScaleKey( spep_2-3 + 276, 1, 2.93, 2.93 );
setScaleKey( spep_2-3 + 278, 1, 2.85, 2.85 );
setScaleKey( spep_2-3 + 280, 1, 2.77, 2.77 );
setScaleKey( spep_2-3 + 282, 1, 2.7, 2.7 );
setScaleKey( spep_2-3 + 284, 1, 2.64, 2.64 );
setScaleKey( spep_2-3 + 286, 1, 2.59, 2.59 );
setScaleKey( spep_2-3 + 288, 1, 2.54, 2.54 );
setScaleKey( spep_2-3 + 290, 1, 2.5, 2.5 );
setScaleKey( spep_2-3 + 292, 1, 2.46, 2.46 );
setScaleKey( spep_2-3 + 294, 1, 2.43, 2.43 );
setScaleKey( spep_2-3 + 296, 1, 2.4, 2.4 );
setScaleKey( spep_2-3 + 298, 1, 2.39, 2.39 );
setScaleKey( spep_2-3 + 300, 1, 2.37, 2.37 );
setScaleKey( spep_2-3 + 304, 1, 2.37, 2.37 );
setScaleKey( spep_2-3 + 306, 1, 3.22, 3.22 );
setScaleKey( spep_2-3 + 308, 1, 2.97, 2.97 );
setScaleKey( spep_2-3 + 310, 1, 2.77, 2.77 );
setScaleKey( spep_2-3 + 312, 1, 2.6, 2.6 );
setScaleKey( spep_2-3 + 314, 1, 2.47, 2.47 );
setScaleKey( spep_2-3 + 316, 1, 2.45, 2.45 );
setScaleKey( spep_2-3 + 318, 1, 2.44, 2.44 );
setScaleKey( spep_2-3 + 320, 1, 2.43, 2.43 );
setScaleKey( spep_2-3 + 322, 1, 2.42, 2.42 );
setScaleKey( spep_2-3 + 324, 1, 2.41, 2.41 );
setScaleKey( spep_2-3 + 326, 1, 2.4, 2.4 );
setScaleKey( spep_2-3 + 328, 1, 2.39, 2.39 );
setScaleKey( spep_2-3 + 330, 1, 2.38, 2.38 );
setScaleKey( spep_2-3 + 332, 1, 2.38, 2.38 );
setScaleKey( spep_2-1 + 334, 1, 2.37, 2.37 );

setRotateKey( spep_2-3 + 254, 1, 78.3 );
setRotateKey( spep_2-1 + 334, 1, 78.3 );

-- ** 音 ** --
--気弾溜め
SE031 = playSeVer2( spep_2 + 0, 1296, "",spep_2 + 62, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 0, SE031, 145 );
SE032 = playSeVer2( spep_2 + 0, 1191, "",spep_2 + 62, 0, 20, -1);
SE033 = playSeVer2( spep_2 + 0, 1253, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE033, 60 );
SE034 = playSeVer2( spep_2 + 0, 1265, "",spep_2 + 62, 0, 8, -1);

--気弾発射
SE035 = playSeVer2( spep_2 + 52, 1146, "",spep_2 + 184, 0, 46, -1);
SE036 = playSeVer2( spep_2 + 52, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE036, 66 );
SE037 = playSeVer2( spep_2 + 52, 1338, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE037, 151 );

--気弾飛んでいく
SE038 = playSeVer2( spep_2 + 100, 1021, "", 0, 0, 0, -1);

--気弾敵ヒット
SE039 = playSeVer2( spep_2 + 110, 1187, "",spep_2 + 158, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 110, SE039, 87 );
SE040 = playSeVer2( spep_2 + 110, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 110, SE040, 92 );

--ビル激突
SE041 = playSeVer2( spep_2 + 132, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE041, 65 );
SE042 = playSeVer2( spep_2 + 132, 1024, "",spep_2 + 216, 0, 38, -1);

--地面激突
SE043 = playSeVer2( spep_2 + 138, 1159, "",spep_2 + 290, 0, 74, -1);

--悟空飛んでくる
SE044 = playSeVer2( spep_2 + 164, 1116, "",spep_2 + 200, 0, 14, -1);
SE045 = playSeVer2( spep_2 + 164, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 164, SE045, 61 );

--悟空振りかぶる
SE046 = playSeVer2( spep_2 + 236, 1004, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 238, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 238, SE047, 148 );
setPitch( spep_2 + 238, SE047, -400 );
setTimeStretch( SE047, 0.73, 30, 4 );

--地面突く
SE048 = playSeVer2( spep_2 + 252, 1120, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 252, SE048, 88 );
SE049 = playSeVer2( spep_2 + 252, 1060, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 252, SE049, 90 );
setPitch( spep_2 + 252, SE049, -400 );
setTimeStretch( SE049, 0.73, 30, 4 );
SE050 = playSeVer2( spep_2 + 254, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 254, SE050, 80 );

--炎立ち上がる
SE051 = playSeVer2( spep_2 + 302, 1334, "",spep_2 + 364, 0, 26, -1);
SE052 = playSeVer2( spep_2 + 302, 1211, "",spep_2 + 466, 0, 26, -1);
SE053 = playSeVer2( spep_2 + 302, 1161, "",spep_2 + 464, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 302, SE053, 70 );
SE054 = playSeVer2( spep_2 + 302, 1027, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 302, 1320, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 302, SE055, 56 );
setPitch( spep_2 + 302, SE055, 700 );
setTimeStretch( SE055, 1.47, 30, 4 );
SE056 = playSeVer2( spep_2 + 302, 1024, "", 0, 0, 0, -1);

--炎から龍出る
SE057 = playSeVer2( spep_2 + 362, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 362, SE057, 60 );

--龍吠える
SE058 = playSeVer2( spep_2 + 428, 1066, "",spep_2 + 548, 0, 30, 0.5);
setSeVolumeByWorkId( spep_2 + 428, SE058, 135 );

--龍地面突っ込む
SE059 = playSeVer2( spep_2 + 504, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 504, SE059, 81 );
SE060 = playSeVer2( spep_2 + 504, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 504, SE060, 87 );

--ラスト爆発
SE061 = playSeVer2( spep_2 + 510, 1044, "", 0, 64, 0, -1);
SE062 = playSeVer2( spep_2 + 518, 1069, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 518, SE062, 70 );
SE063 = playSeVer2( spep_2 + 532, 1002, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_2 + 538, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 638, 0, 0, 0, 0, 255 );  --黒 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 510 );
endPhase( spep_2 + 628 );

else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--冒頭～ベジータ蹴り：手前
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
kick_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  --冒頭～ベジータ蹴り：手前(敵) ef_001r
setEffMoveKey( spep_0 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 480, kick_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 480, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kick_f, 0 );
setEffRotateKey( spep_0 + 480, kick_f, 0 );
setEffAlphaKey( spep_0 + 0, kick_f, 0 );
setEffAlphaKey( spep_0 + 131, kick_f, 0 );
setEffAlphaKey( spep_0 + 132, kick_f, 255 );
setEffAlphaKey( spep_0 + 480, kick_f, 255 );

-- ** エフェクト等 ** --
kick_f2 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --冒頭～ベジータ蹴り：手前(敵) ef_001r
setEffMoveKey( spep_0 + 0, kick_f2, 0, 0, 0 );
setEffMoveKey( spep_0 + 132, kick_f2, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, kick_f2, -1.0, 1.0 );
setEffScaleKey( spep_0 + 132, kick_f2, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kick_f2, 0 );
setEffRotateKey( spep_0 + 132, kick_f2, 0 );
setEffAlphaKey( spep_0 + 0, kick_f2, 255 );
setEffAlphaKey( spep_0 + 131, kick_f2, 255 );
setEffAlphaKey( spep_0 + 132, kick_f2, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 );  --冒頭～ベジータ蹴り：奥(敵) er_002r
setEffMoveKey( spep_0 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 480, kick_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 480, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kick_b, 0 );
setEffRotateKey( spep_0 + 480, kick_b, 0 );
setEffAlphaKey( spep_0 + 0, kick_b, 255 );
setEffAlphaKey( spep_0 + 480, kick_b, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 180, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  180,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  180,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

-- ** 音 ** --
--二人向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 160, 0, 26, -1);
SE003 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 120, 0, 54, -1);
SE004 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);

--顔カットイン
SE005 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--二人向かってくる
SE006 = playSeVer2( spep_0 + 64, 1019, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 476, 0, 0, 0, 0, 255 );  --黒 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 110 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE006, 0);

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
-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0+4-3 + 130, 1, 1);
setDisp( spep_0+4-1 + 180, 1, 0);

changeAnime( spep_0+4-3 + 130, 1, 104);
changeAnime( spep_0+4-3 + 160, 1, 106);

setMoveKey( spep_0+4-3 + 130, 1, -17.7, 1.7 , 0 );
setMoveKey( spep_0+4-3 + 138, 1, -17.7, 1.7 , 0 );
setMoveKey( spep_0+4-3 + 140, 1, -21.6, -0.5 , 0 );
setMoveKey( spep_0+4-3 + 142, 1, -29.3, -5.3 , 0 );
setMoveKey( spep_0+4-3 + 144, 1, -40.7, -12.5 , 0 );
setMoveKey( spep_0+4-3 + 146, 1, -56, -22.1 , 0 );
setMoveKey( spep_0+4-3 + 148, 1, -75, -34.2 , 0 );
setMoveKey( spep_0+4-3 + 150, 1, -77, -35.5 , 0 );
setMoveKey( spep_0+4-3 + 152, 1, -78.9, -37 , 0 );
setMoveKey( spep_0+4-3 + 154, 1, -81, -38.5 , 0 );
setMoveKey( spep_0+4-3 + 156, 1, -83, -40 , 0 );
setMoveKey( spep_0+4-3 + 158, 1, -85.1, -41.6 , 0 );
setMoveKey( spep_0+4-3 + 159, 1, -85.1, -41.6 , 0 );
setMoveKey( spep_0+4-3 + 160, 1, -85.6, -29.9 , 0 );
setMoveKey( spep_0+4-3 + 162, 1, -87.8, -31.5 , 0 );
setMoveKey( spep_0+4-3 + 164, 1, -89.9, -33.1 , 0 );
setMoveKey( spep_0+4-3 + 166, 1, -100.1, -51 , 0 );
setMoveKey( spep_0+4-3 + 168, 1, -92.1, -35 , 0 );
setMoveKey( spep_0+4-3 + 170, 1, -104.1, -23 , 0 );
setMoveKey( spep_0+4-3 + 172, 1, -92.1, -35 , 0 );
setMoveKey( spep_0+4-3 + 174, 1, -96.1, -47 , 0 );
setMoveKey( spep_0+4-3 + 176, 1, -92.1, -35 , 0 );
setMoveKey( spep_0+4-3 + 178, 1, -104.1, -39 , 0 );
setMoveKey( spep_0+4-1 + 180, 1, -92.1, -35 , 0 );

setScaleKey( spep_0+4-3 + 130, 1, 1.9, 1.9 );
setScaleKey( spep_0+4-3 + 159, 1, 1.9, 1.9 );
setScaleKey( spep_0+4-3 + 160, 1, 1.65, 1.65 );
setScaleKey( spep_0+4-1 + 180, 1, 1.65, 1.65 );

setRotateKey( spep_0+4-3 + 130, 1, -15.7 );
setRotateKey( spep_0+4-3 + 159, 1, -15.7 );
setRotateKey( spep_0+4-3 + 160, 1, -89.7 );
setRotateKey( spep_0+4-1 + 180, 1, -89.7 );

--敵の動き2
setDisp( spep_0+4-3 + 260, 1, 1);
setDisp( spep_0+4-1 + 298, 1, 0);

changeAnime( spep_0+4-3 + 260, 1, 106);
changeAnime( spep_0+4-3 + 264, 1, 108);

setMoveKey( spep_0+4-3 + 260, 1, 59.7, 55.9 , 0 );
setMoveKey( spep_0+4-3 + 263, 1, 62.7, 53.6 , 0 );
setMoveKey( spep_0+4-3 + 264, 1, 200.6, -48 , 0 );
setMoveKey( spep_0+4-3 + 266, 1, 195.5, -32 , 0 );
setMoveKey( spep_0+4-3 + 268, 1, 175.4, -40 , 0 );
setMoveKey( spep_0+4-3 + 270, 1, 180.1, -32 , 0 );
setMoveKey( spep_0+4-3 + 272, 1, 165.6, -23.9 , 0 );
setMoveKey( spep_0+4-3 + 274, 1, 168.1, -31.9 , 0 );
setMoveKey( spep_0+4-3 + 276, 1, 159.8, 173.2 , 0 );
setMoveKey( spep_0+4-3 + 278, 1, 148.6, 274.3 , 0 );
setMoveKey( spep_0+4-3 + 280, 1, 142.1, 282.8 , 0 );
setMoveKey( spep_0+4-3 + 282, 1, 151.4, 297.9 , 0 );
setMoveKey( spep_0+4-3 + 284, 1, 152.6, 307.8 , 0 );
setMoveKey( spep_0+4-3 + 286, 1, 153.6, 316.5 , 0 );
setMoveKey( spep_0+4-3 + 288, 1, 154.5, 323.6 , 0 );
setMoveKey( spep_0+4-3 + 290, 1, 155.2, 329.5 , 0 );
setMoveKey( spep_0+4-3 + 292, 1, 155.7, 334.2 , 0 );
setMoveKey( spep_0+4-3 + 294, 1, 156.1, 337.4 , 0 );
setMoveKey( spep_0+4-3 + 296, 1, 156.4, 339.4 , 0 );
setMoveKey( spep_0+4-1 + 298, 1, 156.4, 340 , 0 );

setScaleKey( spep_0+4-3 + 260, 1, 4.86, 4.86 );
setScaleKey( spep_0+4-3 + 263, 1, 10.6, 10.6 );
setScaleKey( spep_0+4-3 + 264, 1, 10.43, 10.43 );
setScaleKey( spep_0+4-3 + 266, 1, 9.96, 9.96 );
setScaleKey( spep_0+4-3 + 268, 1, 9.53, 9.53 );
setScaleKey( spep_0+4-3 + 270, 1, 9.14, 9.14 );
setScaleKey( spep_0+4-3 + 272, 1, 8.81, 8.81 );
setScaleKey( spep_0+4-3 + 274, 1, 8.52, 8.52 );
setScaleKey( spep_0+4-3 + 276, 1, 4.01, 4.01 );
setScaleKey( spep_0+4-3 + 278, 1, 0.8, 0.8 );
setScaleKey( spep_0+4-3 + 280, 1, 0.67, 0.67 );
setScaleKey( spep_0+4-3 + 282, 1, 0.55, 0.55 );
setScaleKey( spep_0+4-3 + 284, 1, 0.45, 0.45 );
setScaleKey( spep_0+4-3 + 286, 1, 0.36, 0.36 );
setScaleKey( spep_0+4-3 + 288, 1, 0.29, 0.29 );
setScaleKey( spep_0+4-3 + 290, 1, 0.22, 0.22 );
setScaleKey( spep_0+4-3 + 292, 1, 0.18, 0.18 );
setScaleKey( spep_0+4-3 + 294, 1, 0.14, 0.14 );
setScaleKey( spep_0+4-3 + 296, 1, 0.12, 0.12 );
setScaleKey( spep_0+4-1 + 298, 1, 0.12, 0.12 );

setRotateKey( spep_0+4-3 + 260, 1, -23 );
setRotateKey( spep_0+4-3 + 263, 1, -23 );
setRotateKey( spep_0+4-3 + 264, 1, -6.8 );
setRotateKey( spep_0+4-3 + 266, 1, -6.5 );
setRotateKey( spep_0+4-3 + 268, 1, -6.3 );
setRotateKey( spep_0+4-3 + 270, 1, -6 );
setRotateKey( spep_0+4-3 + 272, 1, -5.8 );
setRotateKey( spep_0+4-3 + 274, 1, -5.7 );
setRotateKey( spep_0+4-3 + 276, 1, -13.5 );
setRotateKey( spep_0+4-3 + 278, 1, -20.8 );
setRotateKey( spep_0+4-3 + 280, 1, -21.1 );
setRotateKey( spep_0+4-3 + 282, 1, -21.3 );
setRotateKey( spep_0+4-3 + 284, 1, -21.5 );
setRotateKey( spep_0+4-3 + 286, 1, -21.7 );
setRotateKey( spep_0+4-3 + 288, 1, -21.9 );
setRotateKey( spep_0+4-3 + 290, 1, -22 );
setRotateKey( spep_0+4-3 + 292, 1, -22.1 );
setRotateKey( spep_0+4-3 + 294, 1, -22.2 );
setRotateKey( spep_0+4-1 + 298, 1, -22.2 );

--敵の動き3
setDisp( spep_0+4-3 + 354, 1, 1);
setDisp( spep_0+4-1 + 390, 1, 0);

changeAnime( spep_0+4-3 + 354, 1, 105);

setMoveKey( spep_0+4-3 + 354, 1, -6.2, -46.2 , 0 );
setMoveKey( spep_0+4-3 + 356, 1, 2.4, -37.1 , 0 );
setMoveKey( spep_0+4-3 + 358, 1, 10.7, -28.4 , 0 );
setMoveKey( spep_0+4-3 + 360, 1, 18.4, -20.2 , 0 );
setMoveKey( spep_0+4-3 + 362, 1, 25.8, -12.4 , 0 );
setMoveKey( spep_0+4-3 + 364, 1, 32.8, -5.1 , 0 );
setMoveKey( spep_0+4-3 + 366, 1, 39.3, 1.9 , 0 );
setMoveKey( spep_0+4-3 + 368, 1, 45.4, 8.3 , 0 );
setMoveKey( spep_0+4-3 + 370, 1, 51.1, 14.3 , 0 );
setMoveKey( spep_0+4-3 + 372, 1, 56.4, 19.9 , 0 );
setMoveKey( spep_0+4-3 + 374, 1, 61.3, 25.1 , 0 );
setMoveKey( spep_0+4-3 + 376, 1, 65.8, 29.8 , 0 );
setMoveKey( spep_0+4-3 + 378, 1, 189.4, -491.8 , 0 );
setMoveKey( spep_0+4-3 + 380, 1, 344.1, -1143.9 , 0 );
setMoveKey( spep_0+4-3 + 382, 1, 529.7, -1926.8 , 0 );
setMoveKey( spep_0+4-3 + 384, 1, 746.3, -2840.7 , 0 );
setMoveKey( spep_0+4-3 + 386, 1, 994, -3885.6 , 0 );
setMoveKey( spep_0+4-3 + 388, 1, 1272.8, -5061.9 , 0 );
setMoveKey( spep_0+4-1 + 390, 1, 1582.7, -6369.9 , 0 );

setScaleKey( spep_0+4-3 + 354, 1, 2.06, 2.1 );
setScaleKey( spep_0+4-3 + 356, 1, 2.01, 2.05 );
setScaleKey( spep_0+4-3 + 358, 1, 1.97, 2 );
setScaleKey( spep_0+4-3 + 360, 1, 1.92, 1.95 );
setScaleKey( spep_0+4-3 + 362, 1, 1.88, 1.91 );
setScaleKey( spep_0+4-3 + 364, 1, 1.85, 1.87 );
setScaleKey( spep_0+4-3 + 366, 1, 1.81, 1.83 );
setScaleKey( spep_0+4-3 + 368, 1, 1.78, 1.79 );
setScaleKey( spep_0+4-3 + 370, 1, 1.75, 1.76 );
setScaleKey( spep_0+4-3 + 372, 1, 1.72, 1.73 );
setScaleKey( spep_0+4-3 + 374, 1, 1.69, 1.7 );
setScaleKey( spep_0+4-3 + 376, 1, 1.67, 1.67 );
setScaleKey( spep_0+4-3 + 378, 1, 3.81, 3.81 );
setScaleKey( spep_0+4-3 + 380, 1, 6.48, 6.48 );
setScaleKey( spep_0+4-3 + 382, 1, 9.69, 9.69 );
setScaleKey( spep_0+4-3 + 384, 1, 13.44, 13.44 );
setScaleKey( spep_0+4-3 + 386, 1, 17.72, 17.72 );
setScaleKey( spep_0+4-3 + 388, 1, 22.53, 22.53 );
setScaleKey( spep_0+4-1 + 390, 1, 27.88, 27.88 );

setRotateKey( spep_0+4-3 + 354, 1, 15.6 );
setRotateKey( spep_0+4-3 + 364, 1, 15.6 );
setRotateKey( spep_0+4-3 + 366, 1, 15.5 );
setRotateKey( spep_0+4-1 + 390, 1, 15.5 );

--敵の動き4
setDisp( spep_0+4-3 + 424, 1, 1);
setDisp( spep_0+4-1 + 450, 1, 0);

changeAnime( spep_0+4-3 + 424, 1, 105);
changeAnime( spep_0+4-3 + 428, 1, 108);

setMoveKey( spep_0+4-3 + 424, 1, 12.7, -72.1 , 0 );
setMoveKey( spep_0+4-3 + 427, 1, 39.2, -45.8 , 0 );
setMoveKey( spep_0+4-3 + 428, 1, 44.8, -64.5 , 0 );
setMoveKey( spep_0+4-3 + 430, 1, 99.1, -122.8 , 0 );
setMoveKey( spep_0+4-3 + 432, 1, 160.9, -126.6 , 0 );
setMoveKey( spep_0+4-3 + 434, 1, 155.6, -115.6 , 0 );
setMoveKey( spep_0+4-3 + 436, 1, 182.3, -144.5 , 0 );
setMoveKey( spep_0+4-3 + 438, 1, 229.5, -190.9 , 0 );
setMoveKey( spep_0+4-3 + 440, 1, 294.3, -224.7 , 0 );
setMoveKey( spep_0+4-3 + 442, 1, 327.4, -263.6 , 0 );
setMoveKey( spep_0+4-3 + 444, 1, 358.6, -271.4 , 0 );
setMoveKey( spep_0+4-3 + 446, 1, 368.3, -275.3 , 0 );
setMoveKey( spep_0+4-3 + 448, 1, 392.8, -297 , 0 );
setMoveKey( spep_0+4-1 + 450, 1, 397.9, -301.3 , 0 );

setScaleKey( spep_0+4-3 + 424, 1, 2.54, 2.54 );
setScaleKey( spep_0+4-3 + 427, 1, 2.45, 2.45 );
setScaleKey( spep_0+4-3 + 428, 1, 4.73, 4.73 );
setScaleKey( spep_0+4-3 + 430, 1, 3.68, 3.68 );
setScaleKey( spep_0+4-3 + 432, 1, 2.63, 2.63 );
setScaleKey( spep_0+4-3 + 434, 1, 2.62, 2.62 );
setScaleKey( spep_0+4-3 + 436, 1, 2.6, 2.6 );
setScaleKey( spep_0+4-3 + 438, 1, 1.93, 1.93 );
setScaleKey( spep_0+4-3 + 440, 1, 1.32, 1.32 );
setScaleKey( spep_0+4-3 + 442, 1, 0.9, 0.9 );
setScaleKey( spep_0+4-3 + 444, 1, 0.58, 0.58 );
setScaleKey( spep_0+4-3 + 446, 1, 0.32, 0.32 );
setScaleKey( spep_0+4-3 + 448, 1, 0.17, 0.17 );
setScaleKey( spep_0+4-1 + 450, 1, 0.1, 0.1 );

setRotateKey( spep_0+4-3 + 424, 1, 19 );
setRotateKey( spep_0+4-3 + 427, 1, 17.5 );
setRotateKey( spep_0+4-3 + 428, 1, 28.5 );
setRotateKey( spep_0+4-1 + 450, 1, 28.5 );

-- ** 音 ** --
--ベジータアップ
SE007 = playSeVer2( spep_0+4 + 98, 1232, "", 0, 0, 0, -1);

--悟空アップ
SE008 = playSeVer2( spep_0+4 + 120, 1232, "", 0, 0, 0, -1);

--瞬間移動
SE009 = playSeVer2( spep_0+4 + 128, 1109, "", 0, 0, 0, -1);

--ベジータ気弾撃ち込む
SE010 = playSeVer2( spep_0+4 + 158, 1193, "",spep_0+4 + 208, 0, 22, -1);
SE011 = playSeVer2( spep_0+4 + 158, 1145, "",spep_0+4 + 242, 0, 52, -1);
SE012 = playSeVer2( spep_0+4 + 158, 1023, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0+4 + 158, 1011, "", 0, 0, 0, -1);

--煙から悟空現れる
SE014 = playSeVer2( spep_0+4 + 204, 1188, "",spep_0+4 + 270, 10, 38, -1);
setSeVolumeByWorkId( spep_0+4 + 204, SE014, 72 );
setStartTimeMs( SE014,  183 );
SE015 = playSeVer2( spep_0+4 + 200, 1116, "",spep_0+4 + 234, 0, 12, -1);

--悟空振りかぶる
SE016 = playSeVer2( spep_0+4 + 226, 1047, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0+4 + 226, SE016, 117 );
setPitch( spep_0+4 + 226, SE016, -400 );
setStartTimeMs( SE016,  0 );
setPitch( spep_0+4 + 210, SE016, -400 );
setTimeStretch( SE016, 0.73, 30, 4 );
SE017 = playSeVer2( spep_0+4 + 236, 1004, "", 0, 0, 0, -1);
setPitch( spep_0+4 + 236, SE017, -400 );
setTimeStretch( SE017, 0.73, 30, 4 );

--蹴り
SE018 = playSeVer2( spep_0+4 + 262, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+4 + 262, SE018, 90 );
SE019 = playSeVer2( spep_0+4 + 262, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+4 + 262, SE019, 91 );
SE020 = playSeVer2( spep_0+4 + 264, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+4 + 264, SE020, 77 );

--ベジータ気ダメ
SE021 = playSeVer2( spep_0+4 + 308, 1035, "", 0, 0, 0, -1);

--ベジータ飛んでいく
SE022 = playSeVer2( spep_0+4 + 330, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+4 + 330, SE022, 166 );
SE023 = playSeVer2( spep_0+4 + 330, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+4 + 330, SE023, 71 );

--ベジータ向かってくる
SE024 = playSeVer2( spep_0+4 + 380, 1258, "",spep_0+4 + 434, 6, 10, -1);
setSeVolumeByWorkId( spep_0+4 + 380, SE024, 60 );
setStartTimeMs( SE024,  133 );
SE025 = playSeVer2( spep_0+4 + 378, 1116, "",spep_0+4 + 420, 0, 18, -1);
setSeVolumeByWorkId( spep_0+4 + 378, SE025, 115 );
SE026 = playSeVer2( spep_0+4 + 378, 1278, "",spep_0+4 + 454, 0, 36, -1);
setSeVolumeByWorkId( spep_0+4 + 378, SE026, 79 );

--ベジータ蹴り
SE027 = playSeVer2( spep_0+4 + 416, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+4 + 416, SE027, 200 );
SE028 = playSeVer2( spep_0+4 + 422, 1123, "",spep_0+4 + 480, 0, 10, 0.7);
SE029 = playSeVer2( spep_0+4 + 422, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+4 + 422, SE029, 81 );

--白フェード
entryFade( spep_0 + 466, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+480;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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
spep_2= spep_1 + 94;

------------------------------------------------------
--ファイナルシャイン～ラスト
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 );  --ファイナルシャイン～ラスト：手前(敵) ef_003r
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 638, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 638, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 638, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 638, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 );  --ファイナルシャイン～ラスト：奥(敵) ef_004r
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 638, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 638, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 638, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 638, finish_b, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2-3 + 102, 1, 1);
setDisp( spep_2-1 + 132, 1, 0);

changeAnime( spep_2-3 + 102, 1, 108);

setMoveKey( spep_2-3 + 102, 1, 30.5, 68.3 , 0 );
setMoveKey( spep_2-3 + 103, 1, 30.5, 68.3 , 0 );
setMoveKey( spep_2-3 + 104, 1, 44.7, 76.9 , 0 );
setMoveKey( spep_2-3 + 105, 1, 44.7, 76.9 , 0 );
setMoveKey( spep_2-3 + 106, 1, 58.7, 85.6 , 0 );
setMoveKey( spep_2-3 + 107, 1, 58.7, 85.6 , 0 );
setMoveKey( spep_2-3 + 108, 1, 61.2, 86.8 , 0 );
setMoveKey( spep_2-3 + 109, 1, 61.2, 86.8 , 0 );
setMoveKey( spep_2-3 + 110, 1, 64.5, 88.5 , 0 );
setMoveKey( spep_2-3 + 111, 1, 64.5, 88.5 , 0 );
setMoveKey( spep_2-3 + 112, 1, 68.6, 90.6 , 0 );
setMoveKey( spep_2-3 + 113, 1, 68.6, 90.6 , 0 );
setMoveKey( spep_2-3 + 114, 1, 73.6, 93.1 , 0 );
setMoveKey( spep_2-3 + 115, 1, 73.6, 93.1 , 0 );
setMoveKey( spep_2-3 + 116, 1, 79.4, 96 , 0 );
setMoveKey( spep_2-3 + 117, 1, 79.4, 96 , 0 );
setMoveKey( spep_2-3 + 118, 1, 134.9, 121.7 , 0 );
setMoveKey( spep_2-3 + 119, 1, 134.9, 121.7 , 0 );
setMoveKey( spep_2-3 + 120, 1, 152, 129.7 , 0 );
setMoveKey( spep_2-3 + 121, 1, 152, 129.7 , 0 );
setMoveKey( spep_2-3 + 122, 1, 161, 133.9 , 0 );
setMoveKey( spep_2-3 + 123, 1, 161, 133.9 , 0 );
setMoveKey( spep_2-3 + 124, 1, 166, 136.3 , 0 );
setMoveKey( spep_2-3 + 125, 1, 166, 136.3 , 0 );
setMoveKey( spep_2-3 + 126, 1, 168.7, 137.5 , 0 );
setMoveKey( spep_2-3 + 127, 1, 168.7, 137.5 , 0 );
setMoveKey( spep_2-3 + 128, 1, 170, 138.1 , 0 );
setMoveKey( spep_2-3 + 129, 1, 170, 138.1 , 0 );
setMoveKey( spep_2-3 + 130, 1, 170.5, 138.4 , 0 );
setMoveKey( spep_2-1 + 132, 1, 170.6, 138.5 , 0 );

setScaleKey( spep_2-3 + 102, 1, 4.01, 4.01 );
setScaleKey( spep_2-3 + 103, 1, 4.01, 4.01 );
setScaleKey( spep_2-3 + 104, 1, 3.47, 3.47 );
setScaleKey( spep_2-3 + 105, 1, 3.47, 3.47 );
setScaleKey( spep_2-3 + 106, 1, 2.93, 2.93 );
setScaleKey( spep_2-3 + 107, 1, 2.93, 2.93 );
setScaleKey( spep_2-3 + 108, 1, 2.86, 2.86 );
setScaleKey( spep_2-3 + 107, 1, 2.86, 2.86 );
setScaleKey( spep_2-3 + 110, 1, 2.76, 2.76 );
setScaleKey( spep_2-3 + 111, 1, 2.76, 2.76 );
setScaleKey( spep_2-3 + 112, 1, 2.63, 2.63 );
setScaleKey( spep_2-3 + 113, 1, 2.63, 2.63 );
setScaleKey( spep_2-3 + 114, 1, 2.48, 2.48 );
setScaleKey( spep_2-3 + 115, 1, 2.48, 2.48 );
setScaleKey( spep_2-3 + 116, 1, 2.31, 2.31 );
setScaleKey( spep_2-3 + 117, 1, 2.31, 2.31 );
setScaleKey( spep_2-3 + 118, 1, 1, 1 );
setScaleKey( spep_2-3 + 119, 1, 1, 1 );
setScaleKey( spep_2-3 + 120, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 121, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 122, 1, 0.38, 0.38 );
setScaleKey( spep_2-3 + 123, 1, 0.38, 0.38 );
setScaleKey( spep_2-3 + 124, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 125, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 126, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 127, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 128, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 129, 1, 0.17, 0.17 );
setScaleKey( spep_2-3 + 130, 1, 0.16, 0.16 );
setScaleKey( spep_2-1 + 132, 1, 0.16, 0.16 );

setRotateKey( spep_2-3 + 102, 1, 3.6 );
setRotateKey( spep_2-1 + 132, 1, 3.6 );

--敵の動き2
setDisp( spep_2-3 + 254, 1, 1);
setDisp( spep_2-1 + 334, 1, 0);

changeAnime( spep_2-3 + 254, 1, 108);

setMoveKey( spep_2-3 + 254, 1, -14, -464.5 , 0 );
setMoveKey( spep_2-3 + 256, 1, -3.3, -842.6 , 0 );
setMoveKey( spep_2-3 + 258, 1, -7.5, -706.7 , 0 );
setMoveKey( spep_2-3 + 260, 1, 10.2, -607.5 , 0 );
setMoveKey( spep_2-3 + 262, 1, 1.9, -505 , 0 );
setMoveKey( spep_2-3 + 264, 1, 15.5, -391.1 , 0 );
setMoveKey( spep_2-3 + 266, 1, 15.8, -401.3 , 0 );
setMoveKey( spep_2-3 + 268, 1, 19.8, -379.9 , 0 );
setMoveKey( spep_2-3 + 270, 1, 11.9, -366.7 , 0 );
setMoveKey( spep_2-3 + 272, 1, 19.9, -377.5 , 0 );
setMoveKey( spep_2-3 + 274, 1, 12, -388.4 , 0 );
setMoveKey( spep_2-3 + 276, 1, 20, -375.3 , 0 );
setMoveKey( spep_2-3 + 278, 1, 12, -366.4 , 0 );
setMoveKey( spep_2-3 + 280, 1, 20.1, -373.5 , 0 );
setMoveKey( spep_2-3 + 282, 1, 12.1, -384.7 , 0 );
setMoveKey( spep_2-3 + 284, 1, 20.1, -371.9 , 0 );
setMoveKey( spep_2-3 + 286, 1, 20.2, -371.3 , 0 );
setMoveKey( spep_2-3 + 288, 1, 20.2, -370.7 , 0 );
setMoveKey( spep_2-3 + 290, 1, 20.2, -370.2 , 0 );
setMoveKey( spep_2-3 + 292, 1, 20.2, -369.7 , 0 );
setMoveKey( spep_2-3 + 294, 1, 20.2, -369.4 , 0 );
setMoveKey( spep_2-3 + 296, 1, 20.2, -369.1 , 0 );
setMoveKey( spep_2-3 + 298, 1, 20.3, -368.9 , 0 );
setMoveKey( spep_2-3 + 300, 1, 20.3, -368.7 , 0 );
setMoveKey( spep_2-3 + 304, 1, 20.3, -368.7 , 0 );
setMoveKey( spep_2-3 + 306, 1, 27.5, -299.2 , 0 );
setMoveKey( spep_2-3 + 308, 1, 25.4, -313.6 , 0 );
setMoveKey( spep_2-3 + 310, 1, 23.6, -325.8 , 0 );
setMoveKey( spep_2-3 + 312, 1, 22.2, -335.8 , 0 );
setMoveKey( spep_2-3 + 314, 1, 17.1, -363.5 , 0 );
setMoveKey( spep_2-3 + 316, 1, 21, -347.1 , 0 );
setMoveKey( spep_2-3 + 318, 1, 4.9, -354.5 , 0 );
setMoveKey( spep_2-3 + 320, 1, 20.7, -353.7 , 0 );
setMoveKey( spep_2-3 + 322, 1, 12.7, -344.6 , 0 );
setMoveKey( spep_2-3 + 324, 1, 20.6, -359.2 , 0 );
setMoveKey( spep_2-3 + 326, 1, 16.5, -373.6 , 0 );
setMoveKey( spep_2-3 + 328, 1, 20.4, -363.8 , 0 );
setMoveKey( spep_2-3 + 330, 1, 8.3, -369.7 , 0 );
setMoveKey( spep_2-3 + 332, 1, 20.3, -367.3 , 0 );
setMoveKey( spep_2-1 + 334, 1, 16.3, -376.7 , 0 );

setScaleKey( spep_2-3 + 254, 1, 6.75, 6.75 );
setScaleKey( spep_2-3 + 256, 1, 12.12, 12.12 );
setScaleKey( spep_2-3 + 258, 1, 9.68, 9.68 );
setScaleKey( spep_2-3 + 260, 1, 7.51, 7.51 );
setScaleKey( spep_2-3 + 262, 1, 5.61, 5.61 );
setScaleKey( spep_2-3 + 264, 1, 3.97, 3.97 );
setScaleKey( spep_2-3 + 266, 1, 3.42, 3.42 );
setScaleKey( spep_2-3 + 268, 1, 3.31, 3.31 );
setScaleKey( spep_2-3 + 270, 1, 3.2, 3.2 );
setScaleKey( spep_2-3 + 272, 1, 3.1, 3.1 );
setScaleKey( spep_2-3 + 274, 1, 3.01, 3.01 );
setScaleKey( spep_2-3 + 276, 1, 2.93, 2.93 );
setScaleKey( spep_2-3 + 278, 1, 2.85, 2.85 );
setScaleKey( spep_2-3 + 280, 1, 2.77, 2.77 );
setScaleKey( spep_2-3 + 282, 1, 2.7, 2.7 );
setScaleKey( spep_2-3 + 284, 1, 2.64, 2.64 );
setScaleKey( spep_2-3 + 286, 1, 2.59, 2.59 );
setScaleKey( spep_2-3 + 288, 1, 2.54, 2.54 );
setScaleKey( spep_2-3 + 290, 1, 2.5, 2.5 );
setScaleKey( spep_2-3 + 292, 1, 2.46, 2.46 );
setScaleKey( spep_2-3 + 294, 1, 2.43, 2.43 );
setScaleKey( spep_2-3 + 296, 1, 2.4, 2.4 );
setScaleKey( spep_2-3 + 298, 1, 2.39, 2.39 );
setScaleKey( spep_2-3 + 300, 1, 2.37, 2.37 );
setScaleKey( spep_2-3 + 304, 1, 2.37, 2.37 );
setScaleKey( spep_2-3 + 306, 1, 3.22, 3.22 );
setScaleKey( spep_2-3 + 308, 1, 2.97, 2.97 );
setScaleKey( spep_2-3 + 310, 1, 2.77, 2.77 );
setScaleKey( spep_2-3 + 312, 1, 2.6, 2.6 );
setScaleKey( spep_2-3 + 314, 1, 2.47, 2.47 );
setScaleKey( spep_2-3 + 316, 1, 2.45, 2.45 );
setScaleKey( spep_2-3 + 318, 1, 2.44, 2.44 );
setScaleKey( spep_2-3 + 320, 1, 2.43, 2.43 );
setScaleKey( spep_2-3 + 322, 1, 2.42, 2.42 );
setScaleKey( spep_2-3 + 324, 1, 2.41, 2.41 );
setScaleKey( spep_2-3 + 326, 1, 2.4, 2.4 );
setScaleKey( spep_2-3 + 328, 1, 2.39, 2.39 );
setScaleKey( spep_2-3 + 330, 1, 2.38, 2.38 );
setScaleKey( spep_2-3 + 332, 1, 2.38, 2.38 );
setScaleKey( spep_2-1 + 334, 1, 2.37, 2.37 );

setRotateKey( spep_2-3 + 254, 1, 78.3 );
setRotateKey( spep_2-1 + 334, 1, 78.3 );

-- ** 音 ** --
--気弾溜め
SE031 = playSeVer2( spep_2 + 0, 1296, "",spep_2 + 62, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 0, SE031, 145 );
SE032 = playSeVer2( spep_2 + 0, 1191, "",spep_2 + 62, 0, 20, -1);
SE033 = playSeVer2( spep_2 + 0, 1253, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE033, 60 );
SE034 = playSeVer2( spep_2 + 0, 1265, "",spep_2 + 62, 0, 8, -1);

--気弾発射
SE035 = playSeVer2( spep_2 + 52, 1146, "",spep_2 + 184, 0, 46, -1);
SE036 = playSeVer2( spep_2 + 52, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE036, 66 );
SE037 = playSeVer2( spep_2 + 52, 1338, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE037, 151 );

--気弾飛んでいく
SE038 = playSeVer2( spep_2 + 100, 1021, "", 0, 0, 0, -1);

--気弾敵ヒット
SE039 = playSeVer2( spep_2 + 110, 1187, "",spep_2 + 158, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 110, SE039, 87 );
SE040 = playSeVer2( spep_2 + 110, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 110, SE040, 92 );

--ビル激突
SE041 = playSeVer2( spep_2 + 132, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE041, 65 );
SE042 = playSeVer2( spep_2 + 132, 1024, "",spep_2 + 216, 0, 38, -1);

--地面激突
SE043 = playSeVer2( spep_2 + 138, 1159, "",spep_2 + 290, 0, 74, -1);

--悟空飛んでくる
SE044 = playSeVer2( spep_2 + 164, 1116, "",spep_2 + 200, 0, 14, -1);
SE045 = playSeVer2( spep_2 + 164, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 164, SE045, 61 );

--悟空振りかぶる
SE046 = playSeVer2( spep_2 + 236, 1004, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 238, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 238, SE047, 148 );
setPitch( spep_2 + 238, SE047, -400 );
setTimeStretch( SE047, 0.73, 30, 4 );

--地面突く
SE048 = playSeVer2( spep_2 + 252, 1120, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 252, SE048, 88 );
SE049 = playSeVer2( spep_2 + 252, 1060, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 252, SE049, 90 );
setPitch( spep_2 + 252, SE049, -400 );
setTimeStretch( SE049, 0.73, 30, 4 );
SE050 = playSeVer2( spep_2 + 254, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 254, SE050, 80 );

--炎立ち上がる
SE051 = playSeVer2( spep_2 + 302, 1334, "",spep_2 + 364, 0, 26, -1);
SE052 = playSeVer2( spep_2 + 302, 1211, "",spep_2 + 466, 0, 26, -1);
SE053 = playSeVer2( spep_2 + 302, 1161, "",spep_2 + 464, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 302, SE053, 70 );
SE054 = playSeVer2( spep_2 + 302, 1027, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 302, 1320, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 302, SE055, 56 );
setPitch( spep_2 + 302, SE055, 700 );
setTimeStretch( SE055, 1.47, 30, 4 );
SE056 = playSeVer2( spep_2 + 302, 1024, "", 0, 0, 0, -1);

--炎から龍出る
SE057 = playSeVer2( spep_2 + 362, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 362, SE057, 60 );

--龍吠える
SE058 = playSeVer2( spep_2 + 428, 1066, "",spep_2 + 548, 0, 30, 0.5);
setSeVolumeByWorkId( spep_2 + 428, SE058, 135 );

--龍地面突っ込む
SE059 = playSeVer2( spep_2 + 504, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 504, SE059, 81 );
SE060 = playSeVer2( spep_2 + 504, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 504, SE060, 87 );

--ラスト爆発
SE061 = playSeVer2( spep_2 + 510, 1044, "", 0, 64, 0, -1);
SE062 = playSeVer2( spep_2 + 518, 1069, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 518, SE062, 70 );
SE063 = playSeVer2( spep_2 + 532, 1002, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_2 + 538, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 638, 0, 0, 0, 0, 255 );  --黒 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 510 );
endPhase( spep_2 + 628 );

end