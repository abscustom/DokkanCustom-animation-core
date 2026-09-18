--1026270:SSR超サイヤ人ベジータ_スーパーダッシュ
--sp_effect_b1_00247

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
SP_01 = 161652; --冒頭突進 ef_001
SP_02 = 161653; --格闘：敵より前 ef_002
SP_03 = 161654; --格闘：敵より後ろ ef_003
SP_04 = 161655; --斜め蹴り：敵より前 ef_004
SP_05 = 161656; --斜め蹴り：敵より後ろ ef_005
SP_06 = 161657; --ラスト：敵より前 ef_006
SP_07 = 161658; --ラスト：敵より後ろ ef_007

--敵側
SP_02r = 161659; --格闘：敵より前：反転 ef_002_r
SP_04r = 161660; --斜め蹴り：敵より前：反転 ef_004_r
SP_06r = 161661; --ラスト：敵より前：反転 ef_006_r
SP_07r = 161662; --ラスト：敵より後ろ：反転 ef_007_r

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
-- 冒頭突進(147F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --冒頭突進 ef_001

setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 147, first_f, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 147, first_f, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 147, first_f, 0 );

setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 147 - 2, first_f, 255 );
setEffAlphaKey( spep_0 + 147 - 1, first_f, 255 );
setEffAlphaKey( spep_0 + 147, first_f, 0 );

-- ** 集中線 ** --
shuchusen0 = entryEffectLife( spep_0 + 26, 906, 121, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 26, shuchusen0, 121, 20 );
setEffMoveKey( spep_0 + 26, shuchusen0, 0, 0 , 0 );
setEffMoveKey( spep_0 + 147, shuchusen0, 0, 0 , 0 );
setEffScaleKey( spep_0 + 26, shuchusen0, 1.6, 1.6 );
setEffScaleKey( spep_0 + 147, shuchusen0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 26, shuchusen0, 0 );
setEffRotateKey( spep_0 + 147, shuchusen0, 0 );
setEffAlphaKey( spep_0 + 26, shuchusen0, 0 );
setEffAlphaKey( spep_0 + 27, shuchusen0, 255 );
setEffAlphaKey( spep_0 + 146, shuchusen0, 255 );
setEffAlphaKey( spep_0 + 147, shuchusen0, 0 );

--//////////顔カットイン、セリフカットインテンプレ
------------------------------------------------------
spep_x = spep_0 + 14;  --表示させたいフレーム−10の分を足す！
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
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

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);
------------------------------------------------------

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);

--構える
SE005 = playSeVer2( spep_0 + 42, 1233, "", 0, 0, 0, -1);

--向かってくる
SE010 = playSeVer2( spep_0 + 120, 1182, "",spep_0 + 230, 0, 12, -1);
SE011 = playSeVer2( spep_0 + 122, 9, "",spep_0 + 230, 0, 12, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 147 + 2, 0, 0, 0, 0, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 138; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE0000, 0);
    
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

-- ** 音 ** --
--オーラ
SE012 = playSeVer2( spep_0 + 147, 1036, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 147;

------------------------------------------------------
-- 格闘(60F)
------------------------------------------------------

-- ** エフェクト等 ** --
grapple_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --格闘：敵より前 ef_002
setEffMoveKey( spep_1 + 0, grapple_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 60, grapple_f, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, grapple_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 60, grapple_f, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, grapple_f, 0 );
setEffRotateKey( spep_1 + 60, grapple_f, 0 );

setEffAlphaKey( spep_1 + 0, grapple_f, 255 );
setEffAlphaKey( spep_1 + 60 - 2, grapple_f, 255 );
setEffAlphaKey( spep_1 + 60 - 1, grapple_f, 255 );
setEffAlphaKey( spep_1 + 60, grapple_f, 0 );

grapple_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --格闘：敵より後ろ ef_003
setEffMoveKey( spep_1 + 0, grapple_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 60, grapple_b, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, grapple_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 60, grapple_b, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, grapple_b, 0 );
setEffRotateKey( spep_1 + 60, grapple_b, 0 );

setEffAlphaKey( spep_1 + 0, grapple_b, 255 );
setEffAlphaKey( spep_1 + 60 - 2, grapple_b, 255 );
setEffAlphaKey( spep_1 + 60 - 1, grapple_b, 255 );
setEffAlphaKey( spep_1 + 60, grapple_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -2 + 2, 1, 1 );
setDisp( spep_1 -3 + 63, 1, 0 );

changeAnime( spep_1 -2 + 2, 1, 104 );
changeAnime( spep_1 -3 + 20, 1, 106 );
changeAnime( spep_1 -3 + 38, 1, 108 );
changeAnime( spep_1 -3 + 52, 1, 106 );

setMoveKey( spep_1 -2 + 2, 1, -23.8, -24.4 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -12.8, -24.4 , 0 );
setMoveKey( spep_1 -3 + 5, 1, -12.8, -24.4 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -1.9, -24.4 , 0 );
setMoveKey( spep_1 -3 + 7, 1, -1.9, -24.4 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 9, -24.4 , 0 );
setMoveKey( spep_1 -3 + 9, 1, 9, -24.4 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 19.9, -24.4 , 0 );
setMoveKey( spep_1 -3 + 11, 1, 19.9, -24.4 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 30.9, -24.4 , 0 );
setMoveKey( spep_1 -3 + 13, 1, 30.9, -24.4 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 41.8, -24.4 , 0 );
setMoveKey( spep_1 -3 + 15, 1, 41.8, -24.4 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 52.7, -24.4 , 0 );
setMoveKey( spep_1 -3 + 17, 1, 52.7, -24.4 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 63.7, -24.4 , 0 );
setMoveKey( spep_1 -3 + 19, 1, 63.7, -24.4 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 141.1, -0.6 , 0 );
setMoveKey( spep_1 -3 + 21, 1, 141.1, -0.6 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 123.1, 13.8 , 0 );
setMoveKey( spep_1 -3 + 23, 1, 123.1, 13.8 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 118.7, 40.8 , 0 );
setMoveKey( spep_1 -3 + 25, 1, 118.7, 40.8 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 139, 22.6 , 0 );
setMoveKey( spep_1 -3 + 27, 1, 139, 22.6 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 116.3, 43 , 0 );
setMoveKey( spep_1 -3 + 29, 1, 116.3, 43 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 122.5, 40.5 , 0 );
setMoveKey( spep_1 -3 + 31, 1, 122.5, 40.5 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 118.8, 43.9 , 0 );
setMoveKey( spep_1 -3 + 33, 1, 118.8, 43.9 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 123.1, 44.3 , 0 );
setMoveKey( spep_1 -3 + 35, 1, 123.1, 44.3 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 128.3, 44.7 , 0 );
setMoveKey( spep_1 -3 + 37, 1, 128.3, 44.7 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 178.7, 14.6 , 0 );
setMoveKey( spep_1 -3 + 39, 1, 178.7, 14.6 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 188.2, -10.4 , 0 );
setMoveKey( spep_1 -3 + 41, 1, 188.2, -10.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 172.7, -15.3 , 0 );
setMoveKey( spep_1 -3 + 43, 1, 172.7, -15.3 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 176, -16.3 , 0 );
setMoveKey( spep_1 -3 + 45, 1, 176, -16.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 179.4, -17.2 , 0 );
setMoveKey( spep_1 -3 + 47, 1, 179.4, -17.2 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 182.8, -18.2 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 182.8, -18.2 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 187.8, -13.2 , 0 );
setMoveKey( spep_1 -3 + 51, 1, 187.8, -13.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 122.1, -28 , 0 );
setMoveKey( spep_1 -3 + 53, 1, 122.1, -28 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 128.7, 6.7 , 0 );
setMoveKey( spep_1 -3 + 55, 1, 128.7, 6.7 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 145.3, 31.6 , 0 );
setMoveKey( spep_1 -3 + 57, 1, 145.3, 31.6 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 146.8, 35.7 , 0 );
setMoveKey( spep_1 -3 + 59, 1, 146.8, 35.7 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 148.4, 39.8 , 0 );
setMoveKey( spep_1 -3 + 61, 1, 148.4, 39.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 149.9, 43.9 , 0 );
setMoveKey( spep_1 -3 + 63, 1, 149.9, 43.9 , 0 );

setScaleKey( spep_1 -2 + 2, 1, 2.06, 2.06 );
setScaleKey( spep_1 -3 + 18, 1, 2.06, 2.06 );
setScaleKey( spep_1 -3 + 19, 1, 2.06, 2.06 );
setScaleKey( spep_1 -3 + 37, 1, 2.06, 2.06 );
setScaleKey( spep_1 -3 + 38, 1, 2.18, 2.18 );
setScaleKey( spep_1 -3 + 39, 1, 2.18, 2.18 );
setScaleKey( spep_1 -3 + 51, 1, 2.18, 2.18 );
setScaleKey( spep_1 -3 + 52, 1, 2.06, 2.06 );
setScaleKey( spep_1 -3 + 53, 1, 2.06, 2.06 );
setScaleKey( spep_1 -3 + 63, 1, 2.06, 2.06 );

setRotateKey( spep_1 -2 + 2, 1, 0 );
setRotateKey( spep_1 -3 + 19, 1, 0 );
setRotateKey( spep_1 -3 + 20, 1, -49 );
setRotateKey( spep_1 -3 + 21, 1, -49 );
setRotateKey( spep_1 -3 + 22, 1, -45.6 );
setRotateKey( spep_1 -3 + 23, 1, -45.6 );
setRotateKey( spep_1 -3 + 24, 1, -42.3 );
setRotateKey( spep_1 -3 + 25, 1, -42.3 );
setRotateKey( spep_1 -3 + 26, 1, -38.9 );
setRotateKey( spep_1 -3 + 27, 1, -38.9 );
setRotateKey( spep_1 -3 + 37, 1, -38.9 );
setRotateKey( spep_1 -3 + 38, 1, -5.3 );
setRotateKey( spep_1 -3 + 39, 1, -5.3 );
setRotateKey( spep_1 -3 + 40, 1, -11.4 );
setRotateKey( spep_1 -3 + 41, 1, -11.4 );
setRotateKey( spep_1 -3 + 42, 1, -17.6 );
setRotateKey( spep_1 -3 + 43, 1, -17.6 );
setRotateKey( spep_1 -3 + 51, 1, -17.6 );
setRotateKey( spep_1 -3 + 52, 1, -41 );
setRotateKey( spep_1 -3 + 53, 1, -41 );
setRotateKey( spep_1 -3 + 54, 1, -37.5 );
setRotateKey( spep_1 -3 + 55, 1, -37.5 );
setRotateKey( spep_1 -3 + 56, 1, -34 );
setRotateKey( spep_1 -3 + 57, 1, -34 );
setRotateKey( spep_1 -3 + 63, 1, -34 );

-- ** 音 ** --
--ラッシュ
SE013 = playSeVer2( spep_1 + 16, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 20, 1187, "",spep_1 + 168, 0, 12, -1);
SE015 = playSeVer2( spep_1 + 40, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 54, 1110, "",spep_1 + 168, 0, 12, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 60 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_2 = spep_1 + 60;

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
-- 斜め蹴り(48F)
------------------------------------------------------

-- ** エフェクト等 ** --
kick_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --斜め蹴り：敵より前 ef_004
setEffMoveKey( spep_3 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 48, kick_f, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 48, kick_f, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 48, kick_f, 0 );

setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 48 - 2, kick_f, 255 );
setEffAlphaKey( spep_3 + 48 - 1, kick_f, 255 );
setEffAlphaKey( spep_3 + 48, kick_f, 0 );

kick_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --斜め蹴り：敵より後ろ ef_005
setEffMoveKey( spep_3 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 48, kick_b, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 48, kick_b, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 48, kick_b, 0 );

setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 48 - 2, kick_b, 255 );
setEffAlphaKey( spep_3 + 48 - 1, kick_b, 255 );
setEffAlphaKey( spep_3 + 48, kick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -2 + 2, 1, 1 );

changeAnime( spep_3 -2 + 2, 1, 106 );
changeAnime( spep_3 -3 + 12, 1, 108 );

setMoveKey( spep_3 -2 + 2, 1, 83.4, 56.1 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 90.3, 59.2 , 0 );
setMoveKey( spep_3 -3 + 5, 1, 90.3, 59.2 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 97.1, 62.2 , 0 );
setMoveKey( spep_3 -3 + 7, 1, 97.1, 62.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 104, 65.3 , 0 );
setMoveKey( spep_3 -3 + 9, 1, 104, 65.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 110.8, 68.3 , 0 );
setMoveKey( spep_3 -3 + 11, 1, 110.8, 68.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 137, 82.5 , 0 );
setMoveKey( spep_3 -3 + 17, 1, 137, 82.5 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 279.4, 194.2 , 0 );
setMoveKey( spep_3 -3 + 19, 1, 279.4, 194.2 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 80.8, -30.9 , 0 );
setMoveKey( spep_3 -3 + 21, 1, 80.8, -30.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 212.2, 113.6 , 0 );
setMoveKey( spep_3 -3 + 23, 1, 212.2, 113.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 230.2, -33.6 , 0 );
setMoveKey( spep_3 -3 + 25, 1, 230.2, -33.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 56.2, 30.6 , 0 );
setMoveKey( spep_3 -3 + 27, 1, 56.2, 30.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 218.2, 113.6 , 0 );
setMoveKey( spep_3 -3 + 29, 1, 218.2, 113.6, 0 );
setMoveKey( spep_3 -3 + 30, 1, 250.2, -13.6 , 0 );
setMoveKey( spep_3 -3 + 31, 1, 250.2, -13.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 156.2, 113.6 , 0 );
setMoveKey( spep_3 -3 + 33, 1, 156.2, 113.6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 80.8, -3.9 , 0 );
setMoveKey( spep_3 -3 + 35, 1, 80.8, -3.9 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 216.2, 113.6 , 0 );
setMoveKey( spep_3 -3 + 37, 1, 216.2, 113.6 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 136.2, 83.6 , 0 );
setMoveKey( spep_3 -3 + 39, 1, 136.2, 83.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 136.2, 83.6 , 0 );
setMoveKey( spep_3 -3 + 41, 1, 136.2, 83.6 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 136.2, 83.6 , 0 );
setMoveKey( spep_3 -3 + 43, 1, 136.2, 83.6 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 136.2, 83.6 , 0 );
setMoveKey( spep_3 -3 + 45, 1, 136.2, 83.6 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 199.1, 109.3 , 0 );
setMoveKey( spep_3 -3 + 47, 1, 199.1, 109.3 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 261.2, 145.4 , 0 );
setMoveKey( spep_3 -3 + 49, 1, 261.2, 145.4 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 323.4, 181.5 , 0 );

setScaleKey( spep_3 -2 + 2, 1, 2.24, 2.24 );
setScaleKey( spep_3 -3 + 11, 1, 2.24, 2.24 );
setScaleKey( spep_3 -3 + 12, 1, 2.48, 2.48 );
setScaleKey( spep_3 -3 + 13, 1, 2.48, 2.48 );
setScaleKey( spep_3 -3 + 17, 1, 2.48, 2.48 );
setScaleKey( spep_3 -3 + 18, 1, 2.85, 2.85 );
setScaleKey( spep_3 -3 + 19, 1, 2.85, 2.85 );
setScaleKey( spep_3 -3 + 20, 1, 2.67, 2.67 );
setScaleKey( spep_3 -3 + 21, 1, 2.67, 2.67 );
setScaleKey( spep_3 -3 + 22, 1, 2.48, 2.48 );
setScaleKey( spep_3 -3 + 23, 1, 2.48, 2.48 );
setScaleKey( spep_3 -3 + 47, 1, 2.48, 2.48 );
setScaleKey( spep_3 -3 + 48, 1, 2.32, 2.32 );
setScaleKey( spep_3 -3 + 49, 1, 2.32, 2.32 );
setScaleKey( spep_3 -3 + 50, 1, 2.16, 2.16 );

setRotateKey( spep_3 -2 + 2, 1, -42 );
setRotateKey( spep_3 -3 + 4, 1, -41.3 );
setRotateKey( spep_3 -3 + 5, 1, -41.3 );
setRotateKey( spep_3 -3 + 6, 1, -40.6 );
setRotateKey( spep_3 -3 + 7, 1, -40.6 );
setRotateKey( spep_3 -3 + 8, 1, -39.8 );
setRotateKey( spep_3 -3 + 9, 1, -39.8 );
setRotateKey( spep_3 -3 + 10, 1, -39.1 );
setRotateKey( spep_3 -3 + 11, 1, -39.1 );
setRotateKey( spep_3 -3 + 12, 1, -1 );
setRotateKey( spep_3 -3 + 50, 1, -1 );

setBlendColor( spep_3 -3 + 12, 1, 3, 0, 0, 0, 1.0);
setBlendColor( spep_3 -3 + 13, 1, 3, 0, 0, 0, 1.0);
setBlendColor( spep_3 -3 + 18, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--蹴り飛ばす
SE019 = playSeVer2( spep_3 + 10, 1189, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_3 + 18, 1120, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_3 + 18, 1187, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 48 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_4 = spep_3 + 48;

------------------------------------------------------
-- ラスト(194F)
------------------------------------------------------

-- ** エフェクト等 ** --
last_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --ラスト：敵より前 ef_006
setEffMoveKey( spep_4 + 0, last_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 194, last_f, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, last_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 194, last_f, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, last_f, 0 );
setEffRotateKey( spep_4 + 194, last_f, 0 );

setEffAlphaKey( spep_4 + 0, last_f, 255 );
setEffAlphaKey( spep_4 + 194, last_f, 255 );

last_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --ラスト：敵より後ろ ef_007
setEffMoveKey( spep_4 + 0, last_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 194, last_b, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, last_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 194, last_b, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, last_b, 0 );
setEffRotateKey( spep_4 + 194, last_b, 0 );

setEffAlphaKey( spep_4 + 0, last_b, 255 );
setEffAlphaKey( spep_4 + 194, last_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 67, 1, 0 );

changeAnime( spep_4 -2 + 2, 1, 107 );

setMoveKey( spep_4 -2 + 2, 1, -165.8, 12.8 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -132.8, 15.6 , 0 );
setMoveKey( spep_4 -3 + 5, 1, -132.8, 15.6 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -114.2, 26.6 , 0 );
setMoveKey( spep_4 -3 + 7, 1, -114.2, 26.6 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -79.1, 21.2 , 0 );
setMoveKey( spep_4 -3 + 9, 1, -79.1, 21.2 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -60.5, 32.2 , 0 );
setMoveKey( spep_4 -3 + 11, 1, -60.5, 32.2, 0 );
setMoveKey( spep_4 -3 + 12, 1, -25.4, 26.7, 0 );
setMoveKey( spep_4 -3 + 13, 1, -25.4, 26.7, 0 );
setMoveKey( spep_4 -3 + 14, 1, -6.8, 37.8, 0 );
setMoveKey( spep_4 -3 + 15, 1, -6.8, 37.8, 0 );
setMoveKey( spep_4 -3 + 16, 1, 28.3, 32.3 , 0 );
setMoveKey( spep_4 -3 + 17, 1, 28.3, 32.3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 46.9, 43.4 , 0 );
setMoveKey( spep_4 -3 + 19, 1, 46.9, 43.4 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 82, 37.9 , 0 );
setMoveKey( spep_4 -3 + 21, 1, 82, 37.9 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 100.6, 49 , 0 );
setMoveKey( spep_4 -3 + 23, 1, 100.6, 49 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 135.6, 43.5 , 0 );
setMoveKey( spep_4 -3 + 25, 1, 135.6, 43.5 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 159.1, 56.8 , 0 );
setMoveKey( spep_4 -3 + 27, 1, 159.1, 56.8 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 199.1, 53.6 , 0 );
setMoveKey( spep_4 -3 + 29, 1, 199.1, 53.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 222.6, 66.8 , 0 );
setMoveKey( spep_4 -3 + 31, 1, 222.6, 66.8 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 262.6, 63.6 , 0 );
setMoveKey( spep_4 -3 + 33, 1, 262.6, 63.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 286.1, 76.8 , 0 );
setMoveKey( spep_4 -3 + 35, 1, 286.1, 76.8 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 326.1, 73.6 , 0 );
setMoveKey( spep_4 -3 + 37, 1, 326.1, 73.6 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 349.6, 86.8 , 0 );
setMoveKey( spep_4 -3 + 39, 1, 349.6, 86.8 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 389.6, 83.6 , 0 );
setMoveKey( spep_4 -3 + 41, 1, 389.6, 83.6 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 114.2, -60  , 0 );
setMoveKey( spep_4 -3 + 43, 1, 114.2, -60  , 0 );
setMoveKey( spep_4 -3 + 44, 1, 131.7, -60 , 0 );
setMoveKey( spep_4 -3 + 45, 1, 131.7, -60  , 0 );
setMoveKey( spep_4 -3 + 46, 1, 162.1, -51.8 , 0 );
setMoveKey( spep_4 -3 + 47, 1, 162.1, -51.8 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 187.9, -60 , 0 );
setMoveKey( spep_4 -3 + 49, 1, 187.9, -60 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 267.2, -51.8 , 0 );
setMoveKey( spep_4 -3 + 51, 1, 267.2, -51.8 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 285.6, -60 , 0 );
setMoveKey( spep_4 -3 + 53, 1, 285.6, -60 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 301.5, -51.8 , 0 );
setMoveKey( spep_4 -3 + 55, 1, 301.5, -51.8 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 315.9, -59.3 , 0 );
setMoveKey( spep_4 -3 + 57, 1, 315.9, -59.3 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 340.2, -51.8 , 0 );
setMoveKey( spep_4 -3 + 59, 1, 340.2, -51.8 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 362.5, -59.3 , 0 );
setMoveKey( spep_4 -3 + 61, 1, 362.5, -59.3 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 386.4, -51.8 , 0 );
setMoveKey( spep_4 -3 + 63, 1, 386.4, -51.8 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 406.7, -59.3 , 0 );
setMoveKey( spep_4 -3 + 65, 1, 406.7, -59.3 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 416.7, -51.8 , 0 );
setMoveKey( spep_4 -3 + 67, 1, 416.7, -51.8 , 0 );

setScaleKey( spep_4 -2 + 2, 1, 0.31, 0.31 );
setScaleKey( spep_4 -3 + 4, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 5, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 6, 1, 0.39, 0.39 );
setScaleKey( spep_4 -3 + 7, 1, 0.39, 0.39 );
setScaleKey( spep_4 -3 + 8, 1, 0.43, 0.43 );
setScaleKey( spep_4 -3 + 9, 1, 0.43, 0.43 );
setScaleKey( spep_4 -3 + 10, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 11, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 12, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 13, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 14, 1, 0.55, 0.55 );
setScaleKey( spep_4 -3 + 15, 1, 0.55, 0.55 );
setScaleKey( spep_4 -3 + 16, 1, 0.59, 0.59 );
setScaleKey( spep_4 -3 + 17, 1, 0.59, 0.59 );
setScaleKey( spep_4 -3 + 18, 1, 0.62, 0.62 );
setScaleKey( spep_4 -3 + 19, 1, 0.62, 0.62 );
setScaleKey( spep_4 -3 + 20, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 21, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 22, 1, 0.69, 0.69 );
setScaleKey( spep_4 -3 + 23, 1, 0.69, 0.69 );
setScaleKey( spep_4 -3 + 24, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 25, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 26, 1, 0.73, 0.73 );
setScaleKey( spep_4 -3 + 27, 1, 0.73, 0.73 );
setScaleKey( spep_4 -3 + 28, 1, 0.76, 0.76 );
setScaleKey( spep_4 -3 + 29, 1, 0.76, 0.76 );
setScaleKey( spep_4 -3 + 30, 1, 0.78, 0.78 );
setScaleKey( spep_4 -3 + 31, 1, 0.78, 0.78 );
setScaleKey( spep_4 -3 + 32, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 33, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 34, 1, 0.82, 0.82 );
setScaleKey( spep_4 -3 + 35, 1, 0.82, 0.82 );
setScaleKey( spep_4 -3 + 36, 1, 0.85, 0.85 );
setScaleKey( spep_4 -3 + 37, 1, 0.85, 0.85 );
setScaleKey( spep_4 -3 + 38, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 39, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 40, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 41, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 42, 1, 0.05, 0.05 );
setScaleKey( spep_4 -3 + 43, 1, 0.05, 0.05 );
setScaleKey( spep_4 -3 + 67, 1, 0.05, 0.05 );

setRotateKey( spep_4 -2 + 2, 1, 20 );
setRotateKey( spep_4 -3 + 45, 1, 20 );
setRotateKey( spep_4 -3 + 47, 1, 19.8 );
setRotateKey( spep_4 -3 + 67, 1, 19.8 );

-- ** 音 ** --
--地面ひきづって飛んでいく
SE022 = playSeVer2( spep_4 + 8, 1044, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_4 + 8, 1159, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_4 + 8, 1168, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_4 + 14, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 14, SE025, 81 );
SE026 = playSeVer2( spep_4 + 20, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 20, SE026, 79 );
SE027 = playSeVer2( spep_4 + 32, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 32, SE027, 63 );
SE028 = playSeVer2( spep_4 + 44, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 44, SE028, 47 );
SE029 = playSeVer2( spep_4 + 54, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 54, SE029, 45 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 194 + 2, 0, 0, 0, 0, 255); 

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 58 );
endPhase( spep_4 + 184 );

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 冒頭突進(147F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --冒頭突進 ef_001

setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 147, first_f, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 147, first_f, -1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_f, -0 );
setEffRotateKey( spep_0 + 147, first_f, -0 );

setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 147 - 2, first_f, 255 );
setEffAlphaKey( spep_0 + 147 - 1, first_f, 255 );
setEffAlphaKey( spep_0 + 147, first_f, 0 );

-- ** 集中線 ** --
shuchusen0 = entryEffectLife( spep_0 + 26, 906, 121, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 26, shuchusen0, 121, 20 );
setEffMoveKey( spep_0 + 26, shuchusen0, 0, 0 , 0 );
setEffMoveKey( spep_0 + 147, shuchusen0, 0, 0 , 0 );
setEffScaleKey( spep_0 + 26, shuchusen0, 1.6, 1.6 );
setEffScaleKey( spep_0 + 147, shuchusen0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 26, shuchusen0, 0 );
setEffRotateKey( spep_0 + 147, shuchusen0, 0 );
setEffAlphaKey( spep_0 + 26, shuchusen0, 0 );
setEffAlphaKey( spep_0 + 27, shuchusen0, 255 );
setEffAlphaKey( spep_0 + 146, shuchusen0, 255 );
setEffAlphaKey( spep_0 + 147, shuchusen0, 0 );

--//////////顔カットイン、セリフカットインテンプレ
------------------------------------------------------
spep_x = spep_0 + 14;  --表示させたいフレーム−10の分を足す！
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 135, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 135, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 135, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, -0 );
setEffRotateKey( spep_x + 84, ctgogo, -0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);
------------------------------------------------------

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);

--構える
SE005 = playSeVer2( spep_0 + 42, 1233, "", 0, 0, 0, -1);

--向かってくる
SE010 = playSeVer2( spep_0 + 120, 1182, "",spep_0 + 230, 0, 12, -1);
SE011 = playSeVer2( spep_0 + 122, 9, "",spep_0 + 230, 0, 12, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 147 + 2, 0, 0, 0, 0, 255);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 138; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE0000, 0);
    
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

-- ** 音 ** --
--オーラ
SE012 = playSeVer2( spep_0 + 147, 1036, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 147;

------------------------------------------------------
-- 格闘(60F)
------------------------------------------------------

-- ** エフェクト等 ** --
grapple_f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --格闘：敵より前：反転 ef_002_r
setEffMoveKey( spep_1 + 0, grapple_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 60, grapple_f, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, grapple_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 60, grapple_f, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, grapple_f, 0 );
setEffRotateKey( spep_1 + 60, grapple_f, 0 );

setEffAlphaKey( spep_1 + 0, grapple_f, 255 );
setEffAlphaKey( spep_1 + 60 - 2, grapple_f, 255 );
setEffAlphaKey( spep_1 + 60 - 1, grapple_f, 255 );
setEffAlphaKey( spep_1 + 60, grapple_f, 0 );

grapple_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --格闘：敵より後ろ ef_003
setEffMoveKey( spep_1 + 0, grapple_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 60, grapple_b, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, grapple_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 60, grapple_b, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, grapple_b, 0 );
setEffRotateKey( spep_1 + 60, grapple_b, 0 );

setEffAlphaKey( spep_1 + 0, grapple_b, 255 );
setEffAlphaKey( spep_1 + 60 - 2, grapple_b, 255 );
setEffAlphaKey( spep_1 + 60 - 1, grapple_b, 255 );
setEffAlphaKey( spep_1 + 60, grapple_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -2 + 2, 1, 1 );
setDisp( spep_1 -3 + 63, 1, 0 );

changeAnime( spep_1 -2 + 2, 1, 104 );
changeAnime( spep_1 -3 + 20, 1, 106 );
changeAnime( spep_1 -3 + 38, 1, 108 );
changeAnime( spep_1 -3 + 52, 1, 106 );

setMoveKey( spep_1 -2 + 2, 1, -23.8, -24.4 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -12.8, -24.4 , 0 );
setMoveKey( spep_1 -3 + 5, 1, -12.8, -24.4 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -1.9, -24.4 , 0 );
setMoveKey( spep_1 -3 + 7, 1, -1.9, -24.4 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 9, -24.4 , 0 );
setMoveKey( spep_1 -3 + 9, 1, 9, -24.4 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 19.9, -24.4 , 0 );
setMoveKey( spep_1 -3 + 11, 1, 19.9, -24.4 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 30.9, -24.4 , 0 );
setMoveKey( spep_1 -3 + 13, 1, 30.9, -24.4 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 41.8, -24.4 , 0 );
setMoveKey( spep_1 -3 + 15, 1, 41.8, -24.4 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 52.7, -24.4 , 0 );
setMoveKey( spep_1 -3 + 17, 1, 52.7, -24.4 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 63.7, -24.4 , 0 );
setMoveKey( spep_1 -3 + 19, 1, 63.7, -24.4 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 141.1, -0.6 , 0 );
setMoveKey( spep_1 -3 + 21, 1, 141.1, -0.6 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 123.1, 13.8 , 0 );
setMoveKey( spep_1 -3 + 23, 1, 123.1, 13.8 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 118.7, 40.8 , 0 );
setMoveKey( spep_1 -3 + 25, 1, 118.7, 40.8 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 139, 22.6 , 0 );
setMoveKey( spep_1 -3 + 27, 1, 139, 22.6 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 116.3, 43 , 0 );
setMoveKey( spep_1 -3 + 29, 1, 116.3, 43 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 122.5, 40.5 , 0 );
setMoveKey( spep_1 -3 + 31, 1, 122.5, 40.5 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 118.8, 43.9 , 0 );
setMoveKey( spep_1 -3 + 33, 1, 118.8, 43.9 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 123.1, 44.3 , 0 );
setMoveKey( spep_1 -3 + 35, 1, 123.1, 44.3 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 128.3, 44.7 , 0 );
setMoveKey( spep_1 -3 + 37, 1, 128.3, 44.7 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 178.7, 14.6 , 0 );
setMoveKey( spep_1 -3 + 39, 1, 178.7, 14.6 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 188.2, -10.4 , 0 );
setMoveKey( spep_1 -3 + 41, 1, 188.2, -10.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 172.7, -15.3 , 0 );
setMoveKey( spep_1 -3 + 43, 1, 172.7, -15.3 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 176, -16.3 , 0 );
setMoveKey( spep_1 -3 + 45, 1, 176, -16.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 179.4, -17.2 , 0 );
setMoveKey( spep_1 -3 + 47, 1, 179.4, -17.2 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 182.8, -18.2 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 182.8, -18.2 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 187.8, -13.2 , 0 );
setMoveKey( spep_1 -3 + 51, 1, 187.8, -13.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 122.1, -28 , 0 );
setMoveKey( spep_1 -3 + 53, 1, 122.1, -28 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 128.7, 6.7 , 0 );
setMoveKey( spep_1 -3 + 55, 1, 128.7, 6.7 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 145.3, 31.6 , 0 );
setMoveKey( spep_1 -3 + 57, 1, 145.3, 31.6 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 146.8, 35.7 , 0 );
setMoveKey( spep_1 -3 + 59, 1, 146.8, 35.7 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 148.4, 39.8 , 0 );
setMoveKey( spep_1 -3 + 61, 1, 148.4, 39.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 149.9, 43.9 , 0 );
setMoveKey( spep_1 -3 + 63, 1, 149.9, 43.9 , 0 );

setScaleKey( spep_1 -2 + 2, 1, 2.06, 2.06 );
setScaleKey( spep_1 -3 + 18, 1, 2.06, 2.06 );
setScaleKey( spep_1 -3 + 19, 1, 2.06, 2.06 );
setScaleKey( spep_1 -3 + 37, 1, 2.06, 2.06 );
setScaleKey( spep_1 -3 + 38, 1, 2.18, 2.18 );
setScaleKey( spep_1 -3 + 39, 1, 2.18, 2.18 );
setScaleKey( spep_1 -3 + 51, 1, 2.18, 2.18 );
setScaleKey( spep_1 -3 + 52, 1, 2.06, 2.06 );
setScaleKey( spep_1 -3 + 53, 1, 2.06, 2.06 );
setScaleKey( spep_1 -3 + 63, 1, 2.06, 2.06 );

setRotateKey( spep_1 -2 + 2, 1, 0 );
setRotateKey( spep_1 -3 + 19, 1, 0 );
setRotateKey( spep_1 -3 + 20, 1, -49 );
setRotateKey( spep_1 -3 + 21, 1, -49 );
setRotateKey( spep_1 -3 + 22, 1, -45.6 );
setRotateKey( spep_1 -3 + 23, 1, -45.6 );
setRotateKey( spep_1 -3 + 24, 1, -42.3 );
setRotateKey( spep_1 -3 + 25, 1, -42.3 );
setRotateKey( spep_1 -3 + 26, 1, -38.9 );
setRotateKey( spep_1 -3 + 27, 1, -38.9 );
setRotateKey( spep_1 -3 + 37, 1, -38.9 );
setRotateKey( spep_1 -3 + 38, 1, -5.3 );
setRotateKey( spep_1 -3 + 39, 1, -5.3 );
setRotateKey( spep_1 -3 + 40, 1, -11.4 );
setRotateKey( spep_1 -3 + 41, 1, -11.4 );
setRotateKey( spep_1 -3 + 42, 1, -17.6 );
setRotateKey( spep_1 -3 + 43, 1, -17.6 );
setRotateKey( spep_1 -3 + 51, 1, -17.6 );
setRotateKey( spep_1 -3 + 52, 1, -41 );
setRotateKey( spep_1 -3 + 53, 1, -41 );
setRotateKey( spep_1 -3 + 54, 1, -37.5 );
setRotateKey( spep_1 -3 + 55, 1, -37.5 );
setRotateKey( spep_1 -3 + 56, 1, -34 );
setRotateKey( spep_1 -3 + 57, 1, -34 );
setRotateKey( spep_1 -3 + 63, 1, -34 );

-- ** 音 ** --
--ラッシュ
SE013 = playSeVer2( spep_1 + 16, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 20, 1187, "",spep_1 + 168, 0, 12, -1);
SE015 = playSeVer2( spep_1 + 40, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 54, 1110, "",spep_1 + 168, 0, 12, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 60 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_2 = spep_1 + 60;

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
-- 斜め蹴り(48F)
------------------------------------------------------

-- ** エフェクト等 ** --
kick_f = entryEffect( spep_3 + 0, SP_04r, 0x100, -1, 0, 0, 0 );  --斜め蹴り：敵より前：反転 ef_004_r
setEffMoveKey( spep_3 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 48, kick_f, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 48, kick_f, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 48, kick_f, 0 );

setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 48 - 2, kick_f, 255 );
setEffAlphaKey( spep_3 + 48 - 1, kick_f, 255 );
setEffAlphaKey( spep_3 + 48, kick_f, 0 );

kick_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --斜め蹴り：敵より後ろ ef_005
setEffMoveKey( spep_3 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 48, kick_b, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 48, kick_b, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 48, kick_b, 0 );

setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 48 - 2, kick_b, 255 );
setEffAlphaKey( spep_3 + 48 - 1, kick_b, 255 );
setEffAlphaKey( spep_3 + 48, kick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -2 + 2, 1, 1 );

changeAnime( spep_3 -2 + 2, 1, 106 );
changeAnime( spep_3 -3 + 12, 1, 108 );

setMoveKey( spep_3 -2 + 2, 1, 83.4, 56.1 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 90.3, 59.2 , 0 );
setMoveKey( spep_3 -3 + 5, 1, 90.3, 59.2 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 97.1, 62.2 , 0 );
setMoveKey( spep_3 -3 + 7, 1, 97.1, 62.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 104, 65.3 , 0 );
setMoveKey( spep_3 -3 + 9, 1, 104, 65.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 110.8, 68.3 , 0 );
setMoveKey( spep_3 -3 + 11, 1, 110.8, 68.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 137, 82.5 , 0 );
setMoveKey( spep_3 -3 + 17, 1, 137, 82.5 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 279.4, 194.2 , 0 );
setMoveKey( spep_3 -3 + 19, 1, 279.4, 194.2 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 80.8, -30.9 , 0 );
setMoveKey( spep_3 -3 + 21, 1, 80.8, -30.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 212.2, 113.6 , 0 );
setMoveKey( spep_3 -3 + 23, 1, 212.2, 113.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 230.2, -33.6 , 0 );
setMoveKey( spep_3 -3 + 25, 1, 230.2, -33.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 56.2, 30.6 , 0 );
setMoveKey( spep_3 -3 + 27, 1, 56.2, 30.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 218.2, 113.6 , 0 );
setMoveKey( spep_3 -3 + 29, 1, 218.2, 113.6, 0 );
setMoveKey( spep_3 -3 + 30, 1, 250.2, -13.6 , 0 );
setMoveKey( spep_3 -3 + 31, 1, 250.2, -13.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 156.2, 113.6 , 0 );
setMoveKey( spep_3 -3 + 33, 1, 156.2, 113.6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 80.8, -3.9 , 0 );
setMoveKey( spep_3 -3 + 35, 1, 80.8, -3.9 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 216.2, 113.6 , 0 );
setMoveKey( spep_3 -3 + 37, 1, 216.2, 113.6 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 136.2, 83.6 , 0 );
setMoveKey( spep_3 -3 + 39, 1, 136.2, 83.6 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 136.2, 83.6 , 0 );
setMoveKey( spep_3 -3 + 41, 1, 136.2, 83.6 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 136.2, 83.6 , 0 );
setMoveKey( spep_3 -3 + 43, 1, 136.2, 83.6 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 136.2, 83.6 , 0 );
setMoveKey( spep_3 -3 + 45, 1, 136.2, 83.6 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 199.1, 109.3 , 0 );
setMoveKey( spep_3 -3 + 47, 1, 199.1, 109.3 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 261.2, 145.4 , 0 );
setMoveKey( spep_3 -3 + 49, 1, 261.2, 145.4 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 323.4, 181.5 , 0 );

setScaleKey( spep_3 -2 + 2, 1, 2.24, 2.24 );
setScaleKey( spep_3 -3 + 11, 1, 2.24, 2.24 );
setScaleKey( spep_3 -3 + 12, 1, 2.48, 2.48 );
setScaleKey( spep_3 -3 + 13, 1, 2.48, 2.48 );
setScaleKey( spep_3 -3 + 17, 1, 2.48, 2.48 );
setScaleKey( spep_3 -3 + 18, 1, 2.85, 2.85 );
setScaleKey( spep_3 -3 + 19, 1, 2.85, 2.85 );
setScaleKey( spep_3 -3 + 20, 1, 2.67, 2.67 );
setScaleKey( spep_3 -3 + 21, 1, 2.67, 2.67 );
setScaleKey( spep_3 -3 + 22, 1, 2.48, 2.48 );
setScaleKey( spep_3 -3 + 23, 1, 2.48, 2.48 );
setScaleKey( spep_3 -3 + 47, 1, 2.48, 2.48 );
setScaleKey( spep_3 -3 + 48, 1, 2.32, 2.32 );
setScaleKey( spep_3 -3 + 49, 1, 2.32, 2.32 );
setScaleKey( spep_3 -3 + 50, 1, 2.16, 2.16 );

setRotateKey( spep_3 -2 + 2, 1, -42 );
setRotateKey( spep_3 -3 + 4, 1, -41.3 );
setRotateKey( spep_3 -3 + 5, 1, -41.3 );
setRotateKey( spep_3 -3 + 6, 1, -40.6 );
setRotateKey( spep_3 -3 + 7, 1, -40.6 );
setRotateKey( spep_3 -3 + 8, 1, -39.8 );
setRotateKey( spep_3 -3 + 9, 1, -39.8 );
setRotateKey( spep_3 -3 + 10, 1, -39.1 );
setRotateKey( spep_3 -3 + 11, 1, -39.1 );
setRotateKey( spep_3 -3 + 12, 1, -1 );
setRotateKey( spep_3 -3 + 50, 1, -1 );

setBlendColor( spep_3 -3 + 12, 1, 3, 0, 0, 0, 1.0);
setBlendColor( spep_3 -3 + 13, 1, 3, 0, 0, 0, 1.0);
setBlendColor( spep_3 -3 + 18, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--蹴り飛ばす
SE019 = playSeVer2( spep_3 + 10, 1189, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_3 + 18, 1120, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_3 + 18, 1187, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 48 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_4 = spep_3 + 48;

------------------------------------------------------
-- ラスト(194F)
------------------------------------------------------

-- ** エフェクト等 ** --
last_f = entryEffect( spep_4 + 0, SP_06r, 0x100, -1, 0, 0, 0 );  --ラスト：敵より前 ef_006_r
setEffMoveKey( spep_4 + 0, last_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 194, last_f, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, last_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 194, last_f, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, last_f, 0 );
setEffRotateKey( spep_4 + 194, last_f, 0 );

setEffAlphaKey( spep_4 + 0, last_f, 255 );
setEffAlphaKey( spep_4 + 194, last_f, 255 );

last_b = entryEffect( spep_4 + 0, SP_07r, 0x80, -1, 0, 0, 0 );  --ラスト：敵より後ろ ef_007_r
setEffMoveKey( spep_4 + 0, last_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 194, last_b, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, last_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 194, last_b, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, last_b, 0 );
setEffRotateKey( spep_4 + 194, last_b, 0 );

setEffAlphaKey( spep_4 + 0, last_b, 255 );
setEffAlphaKey( spep_4 + 194, last_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 67, 1, 0 );

changeAnime( spep_4 -2 + 2, 1, 107 );

setMoveKey( spep_4 -2 + 2, 1, -165.8, 12.8 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -132.8, 15.6 , 0 );
setMoveKey( spep_4 -3 + 5, 1, -132.8, 15.6 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -114.2, 26.6 , 0 );
setMoveKey( spep_4 -3 + 7, 1, -114.2, 26.6 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -79.1, 21.2 , 0 );
setMoveKey( spep_4 -3 + 9, 1, -79.1, 21.2 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -60.5, 32.2 , 0 );
setMoveKey( spep_4 -3 + 11, 1, -60.5, 32.2, 0 );
setMoveKey( spep_4 -3 + 12, 1, -25.4, 26.7, 0 );
setMoveKey( spep_4 -3 + 13, 1, -25.4, 26.7, 0 );
setMoveKey( spep_4 -3 + 14, 1, -6.8, 37.8, 0 );
setMoveKey( spep_4 -3 + 15, 1, -6.8, 37.8, 0 );
setMoveKey( spep_4 -3 + 16, 1, 28.3, 32.3 , 0 );
setMoveKey( spep_4 -3 + 17, 1, 28.3, 32.3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 46.9, 43.4 , 0 );
setMoveKey( spep_4 -3 + 19, 1, 46.9, 43.4 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 82, 37.9 , 0 );
setMoveKey( spep_4 -3 + 21, 1, 82, 37.9 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 100.6, 49 , 0 );
setMoveKey( spep_4 -3 + 23, 1, 100.6, 49 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 135.6, 43.5 , 0 );
setMoveKey( spep_4 -3 + 25, 1, 135.6, 43.5 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 159.1, 56.8 , 0 );
setMoveKey( spep_4 -3 + 27, 1, 159.1, 56.8 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 199.1, 53.6 , 0 );
setMoveKey( spep_4 -3 + 29, 1, 199.1, 53.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 222.6, 66.8 , 0 );
setMoveKey( spep_4 -3 + 31, 1, 222.6, 66.8 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 262.6, 63.6 , 0 );
setMoveKey( spep_4 -3 + 33, 1, 262.6, 63.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 286.1, 76.8 , 0 );
setMoveKey( spep_4 -3 + 35, 1, 286.1, 76.8 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 326.1, 73.6 , 0 );
setMoveKey( spep_4 -3 + 37, 1, 326.1, 73.6 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 349.6, 86.8 , 0 );
setMoveKey( spep_4 -3 + 39, 1, 349.6, 86.8 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 389.6, 83.6 , 0 );
setMoveKey( spep_4 -3 + 41, 1, 389.6, 83.6 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 114.2, -60  , 0 );
setMoveKey( spep_4 -3 + 43, 1, 114.2, -60  , 0 );
setMoveKey( spep_4 -3 + 44, 1, 131.7, -60 , 0 );
setMoveKey( spep_4 -3 + 45, 1, 131.7, -60  , 0 );
setMoveKey( spep_4 -3 + 46, 1, 162.1, -51.8 , 0 );
setMoveKey( spep_4 -3 + 47, 1, 162.1, -51.8 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 187.9, -60 , 0 );
setMoveKey( spep_4 -3 + 49, 1, 187.9, -60 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 267.2, -51.8 , 0 );
setMoveKey( spep_4 -3 + 51, 1, 267.2, -51.8 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 285.6, -60 , 0 );
setMoveKey( spep_4 -3 + 53, 1, 285.6, -60 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 301.5, -51.8 , 0 );
setMoveKey( spep_4 -3 + 55, 1, 301.5, -51.8 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 315.9, -59.3 , 0 );
setMoveKey( spep_4 -3 + 57, 1, 315.9, -59.3 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 340.2, -51.8 , 0 );
setMoveKey( spep_4 -3 + 59, 1, 340.2, -51.8 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 362.5, -59.3 , 0 );
setMoveKey( spep_4 -3 + 61, 1, 362.5, -59.3 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 386.4, -51.8 , 0 );
setMoveKey( spep_4 -3 + 63, 1, 386.4, -51.8 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 406.7, -59.3 , 0 );
setMoveKey( spep_4 -3 + 65, 1, 406.7, -59.3 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 416.7, -51.8 , 0 );
setMoveKey( spep_4 -3 + 67, 1, 416.7, -51.8 , 0 );

setScaleKey( spep_4 -2 + 2, 1, 0.31, 0.31 );
setScaleKey( spep_4 -3 + 4, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 5, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 6, 1, 0.39, 0.39 );
setScaleKey( spep_4 -3 + 7, 1, 0.39, 0.39 );
setScaleKey( spep_4 -3 + 8, 1, 0.43, 0.43 );
setScaleKey( spep_4 -3 + 9, 1, 0.43, 0.43 );
setScaleKey( spep_4 -3 + 10, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 11, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 12, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 13, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 14, 1, 0.55, 0.55 );
setScaleKey( spep_4 -3 + 15, 1, 0.55, 0.55 );
setScaleKey( spep_4 -3 + 16, 1, 0.59, 0.59 );
setScaleKey( spep_4 -3 + 17, 1, 0.59, 0.59 );
setScaleKey( spep_4 -3 + 18, 1, 0.62, 0.62 );
setScaleKey( spep_4 -3 + 19, 1, 0.62, 0.62 );
setScaleKey( spep_4 -3 + 20, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 21, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 22, 1, 0.69, 0.69 );
setScaleKey( spep_4 -3 + 23, 1, 0.69, 0.69 );
setScaleKey( spep_4 -3 + 24, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 25, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 26, 1, 0.73, 0.73 );
setScaleKey( spep_4 -3 + 27, 1, 0.73, 0.73 );
setScaleKey( spep_4 -3 + 28, 1, 0.76, 0.76 );
setScaleKey( spep_4 -3 + 29, 1, 0.76, 0.76 );
setScaleKey( spep_4 -3 + 30, 1, 0.78, 0.78 );
setScaleKey( spep_4 -3 + 31, 1, 0.78, 0.78 );
setScaleKey( spep_4 -3 + 32, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 33, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 34, 1, 0.82, 0.82 );
setScaleKey( spep_4 -3 + 35, 1, 0.82, 0.82 );
setScaleKey( spep_4 -3 + 36, 1, 0.85, 0.85 );
setScaleKey( spep_4 -3 + 37, 1, 0.85, 0.85 );
setScaleKey( spep_4 -3 + 38, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 39, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 40, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 41, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 42, 1, 0.05, 0.05 );
setScaleKey( spep_4 -3 + 43, 1, 0.05, 0.05 );
setScaleKey( spep_4 -3 + 67, 1, 0.05, 0.05 );

setRotateKey( spep_4 -2 + 2, 1, 20 );
setRotateKey( spep_4 -3 + 45, 1, 20 );
setRotateKey( spep_4 -3 + 47, 1, 19.8 );
setRotateKey( spep_4 -3 + 67, 1, 19.8 );

-- ** 音 ** --
--地面ひきづって飛んでいく
SE022 = playSeVer2( spep_4 + 8, 1044, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_4 + 8, 1159, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_4 + 8, 1168, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_4 + 14, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 14, SE025, 81 );
SE026 = playSeVer2( spep_4 + 20, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 20, SE026, 79 );
SE027 = playSeVer2( spep_4 + 32, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 32, SE027, 63 );
SE028 = playSeVer2( spep_4 + 44, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 44, SE028, 47 );
SE029 = playSeVer2( spep_4 + 54, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 54, SE029, 45 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 194 + 2, 0, 0, 0, 0, 255); 

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 58 );
endPhase( spep_4 + 184 );

end