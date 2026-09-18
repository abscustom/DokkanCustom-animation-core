--1022380:超サイヤ人ゴッド孫悟空&超サイヤ人ゴッドベジータ_かめはめ波&ビッグ・バン・アタック
--sp_effect_b4_00211
--sp2284

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
SP_01= 158985;-- 冒頭～攻撃タメまで：手前
SP_03= 158987;-- 発射～爆発

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.85);


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
--冒頭～攻撃タメまで
------------------------------------------------------
--はじめの準備
spep_0=0;

setupMovie( 0, SP_01, 2, 1);

-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 766, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 766, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 766, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 766, tame_f, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +16;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 50, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  50,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  50,  515);

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

--SE
--構える
SE001 = playSeVer2( spep_0 + 0, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 84 );
SE002 = playSeVer2( spep_0 + 6, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 86 );

--気ダメ
SE003 = playSeVer2( spep_0 + 16, 1258, "",spep_0 + 118, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 65 );
SE004 = playSeVer2( spep_0 + 22, 1298, "", 0, 0, 0, -1);

--顔カットイン
SE005 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気ダメ
SE006 = playSeVer2( spep_0 + 24, 1035, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 24, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE007, 62 );
SE008 = playSeVer2( spep_0 + 28, 1181, "",spep_0 + 162, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 28, SE008, 279 );

--二人向かっていく
SE009 = playSeVer2( spep_0 + 102, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 102, 9, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 102, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 102, SE011, 50 );
setTimeStretch( SE011, 1.17, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 780, 0, 0, 0, 0, 255 );  --白　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    
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

--敵の動き
setDisp( spep_0-3 + 138, 1, 1);
setDisp( spep_0-1 + 244, 1, 0);

changeAnime( spep_0-3 + 138, 1, 104);
changeAnime( spep_0-3 + 176, 1, 107);
changeAnime( spep_0-3 + 224, 1, 106);

setMoveKey( spep_0-3 + 138, 1, 214.2, 325.1 , 0 );--104
setMoveKey( spep_0-3 + 140, 1, 212.9, 320.8 , 0 );
setMoveKey( spep_0-3 + 142, 1, 211.3, 315.4 , 0 );
setMoveKey( spep_0-3 + 144, 1, 209.3, 308.7 , 0 );
setMoveKey( spep_0-3 + 146, 1, 207, 300.7 , 0 );
setMoveKey( spep_0-3 + 148, 1, 204.3, 291.6 , 0 );
setMoveKey( spep_0-3 + 150, 1, 201.2, 281.2 , 0 );
setMoveKey( spep_0-3 + 152, 1, 197.8, 269.7 , 0 );
setMoveKey( spep_0-3 + 154, 1, 194, 256.9 , 0 );
setMoveKey( spep_0-3 + 156, 1, 189.9, 242.8 , 0 );
setMoveKey( spep_0-3 + 158, 1, 185.4, 227.6 , 0 );
setMoveKey( spep_0-3 + 160, 1, 180.5, 211.1 , 0 );
setMoveKey( spep_0-3 + 162, 1, 175.3, 193.4 , 0 );
setMoveKey( spep_0-3 + 164, 1, 169.7, 174.5 , 0 );
setMoveKey( spep_0-3 + 166, 1, 163.8, 154.4 , 0 );
setMoveKey( spep_0-3 + 168, 1, 157.5, 133 , 0 );
setMoveKey( spep_0-3 + 170, 1, 150.8, 110.4 , 0 );
setMoveKey( spep_0-3 + 172, 1, 143.8, 86.5 , 0 );
setMoveKey( spep_0-3 + 174, 1, 136.4, 61.4 , 0 );
setMoveKey( spep_0-3 + 175, 1, 136.4, 61.4 , 0 );
setMoveKey( spep_0-3 + 176, 1, -68.4, -96.8 , 0 );--107
setMoveKey( spep_0-3 + 178, 1, 3.9, -57.8 , 0 );
setMoveKey( spep_0-3 + 180, 1, -35.7, -18.8 , 0 );
setMoveKey( spep_0-3 + 182, 1, 12.6, -59.7 , 0 );
setMoveKey( spep_0-3 + 184, 1, 32.9, -116.7 , 0 );
setMoveKey( spep_0-3 + 186, 1, 21.3, -61.6 , 0 );
setMoveKey( spep_0-3 + 188, 1, -10.4, -86.6 , 0 );
setMoveKey( spep_0-3 + 190, 1, 29.9, -63.6 , 0 );
setMoveKey( spep_0-3 + 192, 1, 10.3, -28.5 , 0 );
setMoveKey( spep_0-3 + 194, 1, -395.1, -18.9 , 0 );
setMoveKey( spep_0-3 + 196, 1, -389.4, -18.8 , 0 );
setMoveKey( spep_0-3 + 198, 1, -383.8, -18.7 , 0 );
setMoveKey( spep_0-3 + 200, 1, -378.1, -18.6 , 0 );
setMoveKey( spep_0-3 + 202, 1, -372.5, -18.5 , 0 );
setMoveKey( spep_0-3 + 204, 1, -366.9, -18.3 , 0 );
setMoveKey( spep_0-3 + 206, 1, -361.2, -18.2 , 0 );
setMoveKey( spep_0-3 + 208, 1, -355.6, -18.1 , 0 );
setMoveKey( spep_0-3 + 210, 1, -349.9, -18 , 0 );
setMoveKey( spep_0-3 + 212, 1, -344.3, -17.9 , 0 );
setMoveKey( spep_0-3 + 214, 1, -338.6, -17.8 , 0 );
setMoveKey( spep_0-3 + 216, 1, -333, -17.7 , 0 );
setMoveKey( spep_0-3 + 218, 1, -327.4, -17.6 , 0 );
setMoveKey( spep_0-3 + 220, 1, -321.7, -17.5 , 0 );
setMoveKey( spep_0-3 + 222, 1, -316.1, -17.4 , 0 );
setMoveKey( spep_0-3 + 223, 1, -316.1, -17.4 , 0 );
setMoveKey( spep_0-3 + 224, 1, 103.4, -38.7 , 0 );--106
setMoveKey( spep_0-3 + 226, 1, 105.5, -37.6 , 0 );
setMoveKey( spep_0-3 + 228, 1, 107.6, -36.5 , 0 );
setMoveKey( spep_0-3 + 230, 1, 109.7, -35.3 , 0 );
setMoveKey( spep_0-3 + 232, 1, 111.7, -34.2 , 0 );
setMoveKey( spep_0-3 + 234, 1, 113.8, -33.1 , 0 );
setMoveKey( spep_0-3 + 236, 1, 115.9, -32 , 0 );
setMoveKey( spep_0-3 + 238, 1, 118, -30.8 , 0 );
setMoveKey( spep_0-3 + 240, 1, 120, -29.7 , 0 );
setMoveKey( spep_0-3 + 242, 1, 122.1, -28.6 , 0 );
setMoveKey( spep_0-1 + 244, 1, 124.2, -27.5 , 0 );

setScaleKey( spep_0-3 + 138, 1, 0.57, 0.57 );--104
setScaleKey( spep_0-3 + 140, 1, 0.61, 0.61 );
setScaleKey( spep_0-3 + 142, 1, 0.65, 0.65 );
setScaleKey( spep_0-3 + 144, 1, 0.71, 0.71 );
setScaleKey( spep_0-3 + 146, 1, 0.78, 0.78 );
setScaleKey( spep_0-3 + 148, 1, 0.85, 0.85 );
setScaleKey( spep_0-3 + 150, 1, 0.94, 0.94 );
setScaleKey( spep_0-3 + 152, 1, 1.04, 1.04 );
setScaleKey( spep_0-3 + 154, 1, 1.15, 1.15 );
setScaleKey( spep_0-3 + 156, 1, 1.27, 1.27 );
setScaleKey( spep_0-3 + 158, 1, 1.39, 1.39 );
setScaleKey( spep_0-3 + 160, 1, 1.53, 1.53 );
setScaleKey( spep_0-3 + 162, 1, 1.68, 1.68 );
setScaleKey( spep_0-3 + 164, 1, 1.84, 1.84 );
setScaleKey( spep_0-3 + 166, 1, 2.01, 2.01 );
setScaleKey( spep_0-3 + 168, 1, 2.19, 2.19 );
setScaleKey( spep_0-3 + 170, 1, 2.38, 2.38 );
setScaleKey( spep_0-3 + 172, 1, 2.59, 2.59 );
setScaleKey( spep_0-3 + 174, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 175, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 176, 1, 2.36, 2.36 );--107
setScaleKey( spep_0-3 + 192, 1, 2.36, 2.36 );
setScaleKey( spep_0-3 + 194, 1, 5.24, 5.24 );
setScaleKey( spep_0-3 + 196, 1, 5.23, 5.23 );
setScaleKey( spep_0-3 + 198, 1, 5.23, 5.22 );
setScaleKey( spep_0-3 + 200, 1, 5.22, 5.22 );
setScaleKey( spep_0-3 + 202, 1, 5.21, 5.21 );
setScaleKey( spep_0-3 + 204, 1, 5.21, 5.2 );
setScaleKey( spep_0-3 + 206, 1, 5.2, 5.19 );
setScaleKey( spep_0-3 + 208, 1, 5.2, 5.19 );
setScaleKey( spep_0-3 + 210, 1, 5.19, 5.18 );
setScaleKey( spep_0-3 + 212, 1, 5.18, 5.17 );
setScaleKey( spep_0-3 + 214, 1, 5.18, 5.16 );
setScaleKey( spep_0-3 + 216, 1, 5.17, 5.15 );
setScaleKey( spep_0-3 + 218, 1, 5.16, 5.15 );
setScaleKey( spep_0-3 + 220, 1, 5.16, 5.14 );
setScaleKey( spep_0-3 + 222, 1, 5.15, 5.13 );
setScaleKey( spep_0-3 + 223, 1, 5.15, 5.13 );
setScaleKey( spep_0-3 + 224, 1, 2.04, 2.04 );--106
setScaleKey( spep_0-1 + 244, 1, 2.04, 2.04 );

setRotateKey( spep_0-3 + 138, 1, -12.9 );--104
setRotateKey( spep_0-3 + 144, 1, -12.9 );
setRotateKey( spep_0-3 + 146, 1, -12.8 );
setRotateKey( spep_0-3 + 148, 1, -12.8 );
setRotateKey( spep_0-3 + 150, 1, -12.7 );
setRotateKey( spep_0-3 + 152, 1, -12.7 );
setRotateKey( spep_0-3 + 154, 1, -12.6 );
setRotateKey( spep_0-3 + 156, 1, -12.6 );
setRotateKey( spep_0-3 + 158, 1, -12.5 );
setRotateKey( spep_0-3 + 160, 1, -12.4 );
setRotateKey( spep_0-3 + 162, 1, -12.3 );
setRotateKey( spep_0-3 + 164, 1, -12.2 );
setRotateKey( spep_0-3 + 166, 1, -12.1 );
setRotateKey( spep_0-3 + 168, 1, -12 );
setRotateKey( spep_0-3 + 170, 1, -11.9 );
setRotateKey( spep_0-3 + 172, 1, -11.8 );
setRotateKey( spep_0-3 + 174, 1, -11.7 );
setRotateKey( spep_0-3 + 175, 1, -11.7 );
setRotateKey( spep_0-3 + 176, 1, -38 );--107
setRotateKey( spep_0-3 + 192, 1, -38 );
setRotateKey( spep_0-3 + 194, 1, -51 );
setRotateKey( spep_0-3 + 196, 1, -50.7 );
setRotateKey( spep_0-3 + 198, 1, -50.4 );
setRotateKey( spep_0-3 + 200, 1, -50 );
setRotateKey( spep_0-3 + 202, 1, -49.7 );
setRotateKey( spep_0-3 + 204, 1, -49.4 );
setRotateKey( spep_0-3 + 206, 1, -49.1 );
setRotateKey( spep_0-3 + 208, 1, -48.8 );
setRotateKey( spep_0-3 + 210, 1, -48.5 );
setRotateKey( spep_0-3 + 212, 1, -48.1 );
setRotateKey( spep_0-3 + 214, 1, -47.8 );
setRotateKey( spep_0-3 + 216, 1, -47.5 );
setRotateKey( spep_0-3 + 218, 1, -47.2 );
setRotateKey( spep_0-3 + 220, 1, -46.9 );
setRotateKey( spep_0-3 + 222, 1, -46.5 );
setRotateKey( spep_0-3 + 223, 1, -46.5 );
setRotateKey( spep_0-3 + 224, 1, -21.2 );--106
setRotateKey( spep_0-3 + 226, 1, -20.6 );
setRotateKey( spep_0-3 + 228, 1, -19.9 );
setRotateKey( spep_0-3 + 230, 1, -19.2 );
setRotateKey( spep_0-3 + 232, 1, -18.6 );
setRotateKey( spep_0-3 + 234, 1, -17.9 );
setRotateKey( spep_0-3 + 236, 1, -17.2 );
setRotateKey( spep_0-3 + 238, 1, -16.6 );
setRotateKey( spep_0-3 + 240, 1, -15.9 );
setRotateKey( spep_0-3 + 242, 1, -15.2 );
setRotateKey( spep_0-1 + 244, 1, -14.5 );

--敵の動き
setDisp( spep_0-3 + 306, 1, 1);
setDisp( spep_0-1 + 328, 1, 0);

changeAnime( spep_0-3 + 306, 1, 105);

setMoveKey( spep_0-3 + 306, 1, 1027.6, -1634.5 , 0 );
setMoveKey( spep_0-3 + 308, 1, 1007.2, -1604.3 , 0 );
setMoveKey( spep_0-3 + 310, 1, 977.9, -1561.2 , 0 );
setMoveKey( spep_0-3 + 312, 1, 939.9, -1505.2 , 0 );
setMoveKey( spep_0-3 + 314, 1, 893.1, -1436.2 , 0 );
setMoveKey( spep_0-3 + 316, 1, 837.4, -1354.3 , 0 );
setMoveKey( spep_0-3 + 318, 1, 773.1, -1259.5 , 0 );
setMoveKey( spep_0-3 + 320, 1, 699.9, -1151.7 , 0 );
setMoveKey( spep_0-3 + 322, 1, 617.9, -1031 , 0 );
setMoveKey( spep_0-3 + 324, 1, 527.1, -897.3 , 0 );
setMoveKey( spep_0-3 + 326, 1, 427.5, -750.6 , 0 );
setMoveKey( spep_0-1 + 328, 1, 319.1, -590.9 , 0 );

setScaleKey( spep_0-3 + 306, 1, 14.29, 14.29 );
setScaleKey( spep_0-3 + 308, 1, 14.18, 14.18 );
setScaleKey( spep_0-3 + 310, 1, 14.01, 14.01 );
setScaleKey( spep_0-3 + 312, 1, 13.79, 13.79 );
setScaleKey( spep_0-3 + 314, 1, 13.52, 13.52 );
setScaleKey( spep_0-3 + 316, 1, 13.21, 13.21 );
setScaleKey( spep_0-3 + 318, 1, 12.84, 12.84 );
setScaleKey( spep_0-3 + 320, 1, 12.42, 12.42 );
setScaleKey( spep_0-3 + 322, 1, 11.95, 11.95 );
setScaleKey( spep_0-3 + 324, 1, 11.43, 11.43 );
setScaleKey( spep_0-3 + 326, 1, 10.87, 10.87 );
setScaleKey( spep_0-1 + 328, 1, 10.25, 10.25 );

setRotateKey( spep_0-3 + 306, 1, -50.5 );
setRotateKey( spep_0-3 + 308, 1, -50.4 );
setRotateKey( spep_0-3 + 310, 1, -50.2 );
setRotateKey( spep_0-3 + 312, 1, -49.9 );
setRotateKey( spep_0-3 + 314, 1, -49.6 );
setRotateKey( spep_0-3 + 316, 1, -49.2 );
setRotateKey( spep_0-3 + 318, 1, -48.7 );
setRotateKey( spep_0-3 + 320, 1, -48.2 );
setRotateKey( spep_0-3 + 322, 1, -47.6 );
setRotateKey( spep_0-3 + 324, 1, -47 );
setRotateKey( spep_0-3 + 326, 1, -46.2 );
setRotateKey( spep_0-1 + 328, 1, -45.5 );

--敵の動き
setDisp( spep_0-3 + 362, 1, 1);
setDisp( spep_0-1 + 458, 1, 0);

changeAnime( spep_0-3 + 362, 1, 107);
changeAnime( spep_0-3 + 402, 1, 8);

setMoveKey( spep_0-3 + 362, 1, -182.2, 217 , 0 );--107
setMoveKey( spep_0-3 + 364, 1, -181.9, 216.6 , 0 );
setMoveKey( spep_0-3 + 366, 1, -181, 215.5 , 0 );
setMoveKey( spep_0-3 + 368, 1, -179.6, 213.7 , 0 );
setMoveKey( spep_0-3 + 370, 1, -177.5, 211.1 , 0 );
setMoveKey( spep_0-3 + 372, 1, -174.9, 207.8 , 0 );
setMoveKey( spep_0-3 + 374, 1, -171.7, 203.8 , 0 );
setMoveKey( spep_0-3 + 376, 1, -168, 199 , 0 );
setMoveKey( spep_0-3 + 378, 1, -163.6, 193.6 , 0 );
setMoveKey( spep_0-3 + 380, 1, -158.8, 187.3 , 0 );
setMoveKey( spep_0-3 + 382, 1, -153.3, 180.4 , 0 );
setMoveKey( spep_0-3 + 384, 1, -147.3, 172.7 , 0 );
setMoveKey( spep_0-3 + 386, 1, -140.8, 164.3 , 0 );
setMoveKey( spep_0-3 + 388, 1, -133.7, 155.2 , 0 );
setMoveKey( spep_0-3 + 390, 1, -126.1, 145.4 , 0 );
setMoveKey( spep_0-3 + 392, 1, -117.9, 134.9 , 0 );
setMoveKey( spep_0-3 + 394, 1, -109.3, 123.6 , 0 );
setMoveKey( spep_0-3 + 396, 1, -100.1, 111.7 , 0 );
setMoveKey( spep_0-3 + 398, 1, -90.5, 99 , 0 );
setMoveKey( spep_0-3 + 400, 1, -80.4, 85.7 , 0 );
setMoveKey( spep_0-3 + 401, 1, -80.4, 85.7 , 0 );
setMoveKey( spep_0-3 + 402, 1, -227.9, -129.5 , 0 );--8
setMoveKey( spep_0-3 + 404, 1, -238.8, -147.6 , 0 );
setMoveKey( spep_0-3 + 406, 1, -233.7, -133.7 , 0 );
setMoveKey( spep_0-3 + 408, 1, -28.8, 70.1 , 0 );
setMoveKey( spep_0-3 + 410, 1, -24.8, -57.9 , 0 );
setMoveKey( spep_0-3 + 412, 1, -43.5, -83.4 , 0 );
setMoveKey( spep_0-3 + 414, 1, -38.2, -28.9 , 0 );
setMoveKey( spep_0-3 + 416, 1, -83.3, 2.1 , 0 );
setMoveKey( spep_0-3 + 418, 1, -93, 9.7 , 0 );
setMoveKey( spep_0-3 + 420, 1, -142.2, 14.8 , 0 );
setMoveKey( spep_0-3 + 422, 1, -149.7, 24.2 , 0 );
setMoveKey( spep_0-3 + 424, 1, -173.8, 14.2 , 0 );
setMoveKey( spep_0-3 + 426, 1, -165.8, 18.4 , 0 );
setMoveKey( spep_0-3 + 428, 1, -169.7, 14.9 , 0 );
setMoveKey( spep_0-3 + 430, 1, -173.3, 11.6 , 0 );
setMoveKey( spep_0-3 + 432, 1, -176.7, 8.5 , 0 );
setMoveKey( spep_0-3 + 434, 1, -179.9, 5.6 , 0 );
setMoveKey( spep_0-3 + 436, 1, -183, 3 , 0 );
setMoveKey( spep_0-3 + 438, 1, -185.8, 0.5 , 0 );
setMoveKey( spep_0-3 + 440, 1, -188.4, -1.8 , 0 );
setMoveKey( spep_0-3 + 442, 1, -190.7, -3.9 , 0 );
setMoveKey( spep_0-3 + 444, 1, -192.9, -5.8 , 0 );
setMoveKey( spep_0-3 + 446, 1, -194.9, -7.5 , 0 );
setMoveKey( spep_0-3 + 448, 1, -196.6, -9 , 0 );
setMoveKey( spep_0-3 + 450, 1, -198.2, -10.3 , 0 );
setMoveKey( spep_0-3 + 452, 1, -199.5, -11.4 , 0 );
setMoveKey( spep_0-3 + 454, 1, -200.6, -12.4 , 0 );
setMoveKey( spep_0-3 + 456, 1, -201.5, -13.2 , 0 );
setMoveKey( spep_0-1 + 458, 1, -202.3, -13.8 , 0 );

setScaleKey( spep_0-3 + 362, 1, 0.01, 0.01 );--107
setScaleKey( spep_0-3 + 364, 1, 0.01, 0.01 );
setScaleKey( spep_0-3 + 366, 1, 0.02, 0.02 );
setScaleKey( spep_0-3 + 368, 1, 0.03, 0.03 );
setScaleKey( spep_0-3 + 370, 1, 0.05, 0.05 );
setScaleKey( spep_0-3 + 372, 1, 0.06, 0.06 );
setScaleKey( spep_0-3 + 374, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 376, 1, 0.11, 0.11 );
setScaleKey( spep_0-3 + 378, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 380, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 382, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 384, 1, 0.26, 0.26 );
setScaleKey( spep_0-3 + 386, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 388, 1, 0.36, 0.36 );
setScaleKey( spep_0-3 + 390, 1, 0.42, 0.42 );
setScaleKey( spep_0-3 + 392, 1, 0.48, 0.48 );
setScaleKey( spep_0-3 + 394, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 396, 1, 0.62, 0.62 );
setScaleKey( spep_0-3 + 398, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 400, 1, 0.77, 0.77 );
setScaleKey( spep_0-3 + 401, 1, 0.77, 0.77 );
setScaleKey( spep_0-3 + 402, 1, 3.33, 3.33 );--8
setScaleKey( spep_0-3 + 406, 1, 3.33, 3.33 );
setScaleKey( spep_0-3 + 408, 1, 5.18, 5.18 );
setScaleKey( spep_0-3 + 414, 1, 5.18, 5.18 );
setScaleKey( spep_0-3 + 416, 1, 4.15, 4.15 );
setScaleKey( spep_0-3 + 418, 1, 3.23, 3.23 );
setScaleKey( spep_0-3 + 420, 1, 1.77, 1.77 );
setScaleKey( spep_0-3 + 422, 1, 1.22, 1.22 );
setScaleKey( spep_0-3 + 424, 1, 0.79, 0.79 );
setScaleKey( spep_0-3 + 426, 1, 0.72, 0.72 );
setScaleKey( spep_0-3 + 428, 1, 0.64, 0.64 );
setScaleKey( spep_0-3 + 430, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 432, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 434, 1, 0.44, 0.44 );
setScaleKey( spep_0-3 + 436, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 438, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 440, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 442, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 444, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 446, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 448, 1, 0.12, 0.12 );
setScaleKey( spep_0-3 + 450, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 452, 1, 0.07, 0.07 );
setScaleKey( spep_0-3 + 454, 1, 0.04, 0.04 );
setScaleKey( spep_0-3 + 456, 1, 0.03, 0.03 );
setScaleKey( spep_0-1 + 458, 1, 0.01, 0.01 );

setRotateKey( spep_0-3 + 362, 1, 53.6 );--107
setRotateKey( spep_0-3 + 364, 1, 53.7 );
setRotateKey( spep_0-3 + 366, 1, 53.8 );
setRotateKey( spep_0-3 + 368, 1, 53.9 );
setRotateKey( spep_0-3 + 370, 1, 54.1 );
setRotateKey( spep_0-3 + 372, 1, 54.4 );
setRotateKey( spep_0-3 + 374, 1, 54.7 );
setRotateKey( spep_0-3 + 376, 1, 55.1 );
setRotateKey( spep_0-3 + 378, 1, 55.5 );
setRotateKey( spep_0-3 + 380, 1, 56 );
setRotateKey( spep_0-3 + 382, 1, 56.5 );
setRotateKey( spep_0-3 + 384, 1, 57.1 );
setRotateKey( spep_0-3 + 386, 1, 57.8 );
setRotateKey( spep_0-3 + 388, 1, 58.5 );
setRotateKey( spep_0-3 + 390, 1, 59.3 );
setRotateKey( spep_0-3 + 392, 1, 60.1 );
setRotateKey( spep_0-3 + 394, 1, 61 );
setRotateKey( spep_0-3 + 396, 1, 62 );
setRotateKey( spep_0-3 + 398, 1, 63 );
setRotateKey( spep_0-3 + 400, 1, 64.1 );
setRotateKey( spep_0-3 + 401, 1, 64.1 );
setRotateKey( spep_0-3 + 402, 1, 0 );--8
setRotateKey( spep_0-1 + 458, 1, 0 );

--敵の動き
setDisp( spep_0-3 + 568, 1, 1);
setDisp( spep_0-1 + 586, 1, 0);

changeAnime( spep_0-3 + 568, 1, 8);

setMoveKey( spep_0-3 + 568, 1, 553.9, 395.8 , 0 );
setMoveKey( spep_0-3 + 570, 1, 466.2, 328.2 , 0 );
setMoveKey( spep_0-3 + 572, 1, 348.8, 237.8 , 0 );
setMoveKey( spep_0-3 + 574, 1, 201.5, 124.4 , 0 );
setMoveKey( spep_0-3 + 576, 1, 24.4, -11.9 , 0 );
setMoveKey( spep_0-3 + 578, 1, -33.5, -56.8 , 0 );
setMoveKey( spep_0-3 + 580, 1, -91.3, -101.7 , 0 );
setMoveKey( spep_0-3 + 582, 1, -161.8, -170 , 0 );
setMoveKey( spep_0-3 + 584, 1, -157.8, -154 , 0 );
setMoveKey( spep_0-1 + 586, 1, -173.8, -142 , 0 );

setScaleKey( spep_0-3 + 568, 1, 1.05, 1.05 );
setScaleKey( spep_0-3 + 570, 1, 0.98, 0.98 );
setScaleKey( spep_0-3 + 572, 1, 0.9, 0.9 );
setScaleKey( spep_0-3 + 574, 1, 0.79, 0.79 );
setScaleKey( spep_0-3 + 576, 1, 0.65, 0.65 );
setScaleKey( spep_0-3 + 578, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 580, 1, 0.83, 0.83 );
setScaleKey( spep_0-1 + 586, 1, 0.83, 0.83 );

setRotateKey( spep_0-3 + 568, 1, 0 );
setRotateKey( spep_0-1 + 586, 1, 0 );

--SE
--べジータ殴る
SE012 = playSeVer2( spep_0 + 168, 1189, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 174, 1359, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 178, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 178, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 182, 1176, "",spep_0 + 262, 20, 18, -1);
setSeVolumeByWorkId( spep_0 + 182, SE016, 50 );
setStartTimeMs( SE016,  33 );
SE017 = playSeVer2( spep_0 + 184, 1010, "", 0, 10, 0, -1);
SE018 = playSeVer2( spep_0 + 188, 1330, "",spep_0 + 242, 0, 28, -1);
setPitch( spep_0 + 188, SE018, -400 );
setTimeStretch( SE018, 0.73, 30, 4 );

--敵吹き飛ぶ
SE019 = playSeVer2( spep_0 + 244, 1027, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 244, 1277, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 244, 1017, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 246, 1072, "", 0, 0, 0, -1);

--悟空振りかぶる
SE023 = playSeVer2( spep_0 + 290, 1116, "",spep_0 + 338, 0, 26, -1);

--悟空殴る
SE024 = playSeVer2( spep_0 + 328, 1004, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 336, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE025, 87 );
SE026 = playSeVer2( spep_0 + 336, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE026, 84 );

--瞬間移動
SE027 = playSeVer2( spep_0 + 370, 1109, "", 0, 0, 0, -1);

--ベジータ蹴り
SE028 = playSeVer2( spep_0 + 396, 1189, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 400, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE029, 88 );
SE030 = playSeVer2( spep_0 + 402, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 402, SE030, 87 );
SE031 = playSeVer2( spep_0 + 402, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 402, SE031, 78 );

--敵飛んでいく
SE032 = playSeVer2( spep_0 + 414, 1183, "",spep_0 + 504, 0, 46, -1);

--悟空構える
SE033 = playSeVer2( spep_0 + 458, 1176, "",spep_0 + 612, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 458, SE033, 67 );
SE034 = playSeVer2( spep_0 + 486, 1003, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 486, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 486, SE035, 150 );
SE036 = playSeVer2( spep_0 + 504, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 504, SE036, 168 );
setPitch( spep_0 + 504, SE036, 300 );
setTimeStretch( SE036, 1.2, 30, 4 );
SE037 = playSeVer2( spep_0 + 524, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 524, SE037, 81 );
SE038 = playSeVer2( spep_0 + 534, 1006, "", 0, 0, 0, -1);

--敵避ける
SE039 = playSeVer2( spep_0 + 560, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 560, SE039, 157 );
SE040 = playSeVer2( spep_0 + 560, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 560, SE040, 136 );
SE041 = playSeVer2( spep_0 + 560, 1277, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 578, 1159, "", spep_0 + 774, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 578, SE042, 71 );
SE043 = playSeVer2( spep_0 + 578, 1182, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 578, 44, "", 0, 0, 0, -1);

--ベジータ気弾溜め
SE046 = playSeVer2( spep_0 + 644, 1003, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 654, 1191, "",spep_0 + 774, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 654, SE047, 170 );
SE048 = playSeVer2( spep_0 + 654, 1296, "",spep_0 + 774, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 654, SE048, 115 );

--悟空気弾溜め
SE050 = playSeVer2( spep_0 + 694, 1209, "",spep_0 + 774, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 694, SE050, 72 );
SE045 = playSeVer2( spep_0 + 696, 1210, "",spep_0 + 774, 10, 8, -1);
setStartTimeMs( SE045,  1100 );

--白フェード
entryFade( spep_0 + 758, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+766;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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
--playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94; 
------------------------------------------------------
--発射～爆発
------------------------------------------------------

--SE
--ベジータ気弾発射前溜め
SE053 = playSeVer2( spep_2 + 0 -4, 1296, "",spep_2 + 44, 12, 14, -1);
setSeVolumeByWorkId( spep_2 + 0 -4, SE053, 116 );
setStartTimeMs( SE053,  600 );
SE052 = playSeVer2( spep_2 + 2 -4, 1191, "",spep_2 + 44, 12, 20, -1);
setSeVolumeByWorkId( spep_2 + 2, SE052, 176 );
setStartTimeMs( SE052,  967 );
SE054 = playSeVer2( spep_2 + 2 -6, 1176, "",spep_2 + 58, 10, 34, -1);

--ベジータ気弾発射
SE055 = playSeVer2( spep_2 + 18, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 18, SE055, 89 );
SE056 = playSeVer2( spep_2 + 18, 1213, "",spep_2 + 110, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 18, SE056, 79 );
SE057 = playSeVer2( spep_2 + 18, 1193, "",spep_2 + 110, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 18, SE057, 140 );

--悟空気弾発射前溜め
SE049 = playSeVer2( spep_2 + 62, 1210, "",spep_2 + 122, 14, 20, 0.6);
setSeVolumeByWorkId( spep_2 + 62, SE049, 120 );
setStartTimeMs( SE049,  4200 );

--悟空気弾発射
SE058 = playSeVer2( spep_2 + 94, 1133, "",spep_2 + 170, 0, 14, -1);
SE059 = playSeVer2( spep_2 + 94, 1284, "",spep_2 + 170, 0, 14, -1);
SE060 = playSeVer2( spep_2 + 94, 1213, "",spep_2 + 170, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 94, SE060, 73 );

--気弾飛んでいく
SE061 = playSeVer2( spep_2 + 130, 1202, "",spep_2 + 186, 0, 20, 0.6);
setSeVolumeByWorkId( spep_2 + 130, SE061, 200 );

--爆発
SE062 = playSeVer2( spep_2 + 158, 1159, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_2 + 158, 1068, "", 0, 0, 0, -1);

--ラスト爆発
SE064 = playSeVer2( spep_2 + 206, 1024, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_2 + 206, 1067, "", 0, 0, 0, -1);

--爆風
SE066 = playSeVer2( spep_2 + 206, 1044, "", 0, 80, 0, -1);
setSeVolumeByWorkId( spep_2 + 206, SE066, 239 );
SE067 = playSeVer2( spep_2 + 206, 1226, "", 0, 80, 0, -1);
setSeVolumeByWorkId( spep_2 + 206, SE067, 133 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 310, 0, 0, 0, 0, 255 );  --白　背景

--終わり
dealDamage(spep_2+206);
endPhase( spep_2 + 304 +20 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--冒頭～攻撃タメまで
------------------------------------------------------
--はじめの準備
spep_0=0;

setupMovie(0, SP_01, 2, 1)
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 766, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 766, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 766, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 766, tame_f, 255 );


--顔カットインのタイミング指定
spep_x=spep_0 +16;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 50, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  50,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  50,  515);

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

--SE
--構える
SE001 = playSeVer2( spep_0 + 0, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 84 );
SE002 = playSeVer2( spep_0 + 6, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 86 );

--気ダメ
SE003 = playSeVer2( spep_0 + 16, 1258, "",spep_0 + 118, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 65 );
SE004 = playSeVer2( spep_0 + 22, 1298, "", 0, 0, 0, -1);

--顔カットイン
--SE005 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気ダメ
SE006 = playSeVer2( spep_0 + 24, 1035, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 24, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE007, 62 );
SE008 = playSeVer2( spep_0 + 28, 1181, "",spep_0 + 162, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 28, SE008, 279 );

--二人向かっていく
SE009 = playSeVer2( spep_0 + 102, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 102, 9, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 102, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 102, SE011, 50 );
setTimeStretch( SE011, 1.17, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 780, 0, 0, 0, 0, 255 );  --白　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える
    
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    
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

--敵の動き
setDisp( spep_0-3 + 138, 1, 1);
setDisp( spep_0-1 + 244, 1, 0);

changeAnime( spep_0-3 + 138, 1,4 );
changeAnime( spep_0-3 + 176, 1,7 );
changeAnime( spep_0-3 + 224, 1,6 );

setMoveKey( spep_0-3 + 138, 1, -214.2, 325.1 , 0 );--104
setMoveKey( spep_0-3 + 140, 1, -212.9, 320.8 , 0 );
setMoveKey( spep_0-3 + 142, 1, -211.3, 315.4 , 0 );
setMoveKey( spep_0-3 + 144, 1, -209.3, 308.7 , 0 );
setMoveKey( spep_0-3 + 146, 1, -207, 300.7 , 0 );
setMoveKey( spep_0-3 + 148, 1, -204.3, 291.6 , 0 );
setMoveKey( spep_0-3 + 150, 1, -201.2, 281.2 , 0 );
setMoveKey( spep_0-3 + 152, 1, -197.8, 269.7 , 0 );
setMoveKey( spep_0-3 + 154, 1, -194, 256.9 , 0 );
setMoveKey( spep_0-3 + 156, 1, -189.9, 242.8 , 0 );
setMoveKey( spep_0-3 + 158, 1, -185.4, 227.6 , 0 );
setMoveKey( spep_0-3 + 160, 1, -180.5, 211.1 , 0 );
setMoveKey( spep_0-3 + 162, 1, -175.3, 193.4 , 0 );
setMoveKey( spep_0-3 + 164, 1, -169.7, 174.5 , 0 );
setMoveKey( spep_0-3 + 166, 1, -163.8, 154.4 , 0 );
setMoveKey( spep_0-3 + 168, 1, -157.5, 133 , 0 );
setMoveKey( spep_0-3 + 170, 1, -150.8, 110.4 , 0 );
setMoveKey( spep_0-3 + 172, 1, -143.8, 86.5 , 0 );
setMoveKey( spep_0-3 + 174, 1, -136.4, 61.4 , 0 );
setMoveKey( spep_0-3 + 175, 1, -136.4, 61.4 , 0 );
setMoveKey( spep_0-3 + 176, 1, 68.4, -96.8 , 0 );--107
setMoveKey( spep_0-3 + 178, 1, -3.9, -57.8 , 0 );
setMoveKey( spep_0-3 + 180, 1, 35.7, -18.8 , 0 );
setMoveKey( spep_0-3 + 182, 1, -12.6, -59.7 , 0 );
setMoveKey( spep_0-3 + 184, 1, -32.9, -116.7 , 0 );
setMoveKey( spep_0-3 + 186, 1, -21.3, -61.6 , 0 );
setMoveKey( spep_0-3 + 188, 1, 10.4, -86.6 , 0 );
setMoveKey( spep_0-3 + 190, 1, -29.9, -63.6 , 0 );
setMoveKey( spep_0-3 + 192, 1, -10.3, -28.5 , 0 );
setMoveKey( spep_0-3 + 194, 1, 395.1, -18.9 , 0 );
setMoveKey( spep_0-3 + 196, 1, 389.4, -18.8 , 0 );
setMoveKey( spep_0-3 + 198, 1, 383.8, -18.7 , 0 );
setMoveKey( spep_0-3 + 200, 1, 378.1, -18.6 , 0 );
setMoveKey( spep_0-3 + 202, 1, 372.5, -18.5 , 0 );
setMoveKey( spep_0-3 + 204, 1, 366.9, -18.3 , 0 );
setMoveKey( spep_0-3 + 206, 1, 361.2, -18.2 , 0 );
setMoveKey( spep_0-3 + 208, 1, 355.6, -18.1 , 0 );
setMoveKey( spep_0-3 + 210, 1, 349.9, -18 , 0 );
setMoveKey( spep_0-3 + 212, 1, 344.3, -17.9 , 0 );
setMoveKey( spep_0-3 + 214, 1, 338.6, -17.8 , 0 );
setMoveKey( spep_0-3 + 216, 1, 333, -17.7 , 0 );
setMoveKey( spep_0-3 + 218, 1, 327.4, -17.6 , 0 );
setMoveKey( spep_0-3 + 220, 1, 321.7, -17.5 , 0 );
setMoveKey( spep_0-3 + 222, 1, 316.1, -17.4 , 0 );
setMoveKey( spep_0-3 + 223, 1, 316.1, -17.4 , 0 );
setMoveKey( spep_0-3 + 224, 1, -103.4, -38.7 , 0 );--106
setMoveKey( spep_0-3 + 226, 1, -105.5, -37.6 , 0 );
setMoveKey( spep_0-3 + 228, 1, -107.6, -36.5 , 0 );
setMoveKey( spep_0-3 + 230, 1, -109.7, -35.3 , 0 );
setMoveKey( spep_0-3 + 232, 1, -111.7, -34.2 , 0 );
setMoveKey( spep_0-3 + 234, 1, -113.8, -33.1 , 0 );
setMoveKey( spep_0-3 + 236, 1, -115.9, -32 , 0 );
setMoveKey( spep_0-3 + 238, 1, -118, -30.8 , 0 );
setMoveKey( spep_0-3 + 240, 1, -120, -29.7 , 0 );
setMoveKey( spep_0-3 + 242, 1, -122.1, -28.6 , 0 );
setMoveKey( spep_0-1 + 244, 1, -124.2, -27.5 , 0 );

setScaleKey( spep_0-3 + 138, 1, 0.57, 0.57 );--104
setScaleKey( spep_0-3 + 140, 1, 0.61, 0.61 );
setScaleKey( spep_0-3 + 142, 1, 0.65, 0.65 );
setScaleKey( spep_0-3 + 144, 1, 0.71, 0.71 );
setScaleKey( spep_0-3 + 146, 1, 0.78, 0.78 );
setScaleKey( spep_0-3 + 148, 1, 0.85, 0.85 );
setScaleKey( spep_0-3 + 150, 1, 0.94, 0.94 );
setScaleKey( spep_0-3 + 152, 1, 1.04, 1.04 );
setScaleKey( spep_0-3 + 154, 1, 1.15, 1.15 );
setScaleKey( spep_0-3 + 156, 1, 1.27, 1.27 );
setScaleKey( spep_0-3 + 158, 1, 1.39, 1.39 );
setScaleKey( spep_0-3 + 160, 1, 1.53, 1.53 );
setScaleKey( spep_0-3 + 162, 1, 1.68, 1.68 );
setScaleKey( spep_0-3 + 164, 1, 1.84, 1.84 );
setScaleKey( spep_0-3 + 166, 1, 2.01, 2.01 );
setScaleKey( spep_0-3 + 168, 1, 2.19, 2.19 );
setScaleKey( spep_0-3 + 170, 1, 2.38, 2.38 );
setScaleKey( spep_0-3 + 172, 1, 2.59, 2.59 );
setScaleKey( spep_0-3 + 174, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 175, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 176, 1, 2.36, 2.36 );--107
setScaleKey( spep_0-3 + 192, 1, 2.36, 2.36 );
setScaleKey( spep_0-3 + 194, 1, 5.24, 5.24 );
setScaleKey( spep_0-3 + 196, 1, 5.23, 5.23 );
setScaleKey( spep_0-3 + 198, 1, 5.23, 5.22 );
setScaleKey( spep_0-3 + 200, 1, 5.22, 5.22 );
setScaleKey( spep_0-3 + 202, 1, 5.21, 5.21 );
setScaleKey( spep_0-3 + 204, 1, 5.21, 5.2 );
setScaleKey( spep_0-3 + 206, 1, 5.2, 5.19 );
setScaleKey( spep_0-3 + 208, 1, 5.2, 5.19 );
setScaleKey( spep_0-3 + 210, 1, 5.19, 5.18 );
setScaleKey( spep_0-3 + 212, 1, 5.18, 5.17 );
setScaleKey( spep_0-3 + 214, 1, 5.18, 5.16 );
setScaleKey( spep_0-3 + 216, 1, 5.17, 5.15 );
setScaleKey( spep_0-3 + 218, 1, 5.16, 5.15 );
setScaleKey( spep_0-3 + 220, 1, 5.16, 5.14 );
setScaleKey( spep_0-3 + 222, 1, 5.15, 5.13 );
setScaleKey( spep_0-3 + 223, 1, 5.15, 5.13 );
setScaleKey( spep_0-3 + 224, 1, 2.04, 2.04 );--106
setScaleKey( spep_0-1 + 244, 1, 2.04, 2.04 );

setRotateKey( spep_0-3 + 138, 1, 12.9 );
setRotateKey( spep_0-3 + 144, 1, 12.9 );
setRotateKey( spep_0-3 + 146, 1, 12.8 );
setRotateKey( spep_0-3 + 148, 1, 12.8 );
setRotateKey( spep_0-3 + 150, 1, 12.7 );
setRotateKey( spep_0-3 + 152, 1, 12.7 );
setRotateKey( spep_0-3 + 154, 1, 12.6 );
setRotateKey( spep_0-3 + 156, 1, 12.6 );
setRotateKey( spep_0-3 + 158, 1, 12.5 );
setRotateKey( spep_0-3 + 160, 1, 12.4 );
setRotateKey( spep_0-3 + 162, 1, 12.3 );
setRotateKey( spep_0-3 + 164, 1, 12.2 );
setRotateKey( spep_0-3 + 166, 1, 12.1 );
setRotateKey( spep_0-3 + 168, 1, 12 );
setRotateKey( spep_0-3 + 170, 1, 11.9 );
setRotateKey( spep_0-3 + 172, 1, 11.8 );
setRotateKey( spep_0-3 + 174, 1, 11.7 );
setRotateKey( spep_0-3 + 175, 1, 11.7 );
setRotateKey( spep_0-3 + 176, 1, 38 );
setRotateKey( spep_0-3 + 192, 1, 38 );
setRotateKey( spep_0-3 + 194, 1, 51 );
setRotateKey( spep_0-3 + 196, 1, 50.7 );
setRotateKey( spep_0-3 + 198, 1, 50.4 );
setRotateKey( spep_0-3 + 200, 1, 50 );
setRotateKey( spep_0-3 + 202, 1, 49.7 );
setRotateKey( spep_0-3 + 204, 1, 49.4 );
setRotateKey( spep_0-3 + 206, 1, 49.1 );
setRotateKey( spep_0-3 + 208, 1, 48.8 );
setRotateKey( spep_0-3 + 210, 1, 48.5 );
setRotateKey( spep_0-3 + 212, 1, 48.1 );
setRotateKey( spep_0-3 + 214, 1, 47.8 );
setRotateKey( spep_0-3 + 216, 1, 47.5 );
setRotateKey( spep_0-3 + 218, 1, 47.2 );
setRotateKey( spep_0-3 + 220, 1, 46.9 );
setRotateKey( spep_0-3 + 222, 1, 46.5 );
setRotateKey( spep_0-3 + 223, 1, 46.5 );
setRotateKey( spep_0-3 + 224, 1, 21.2 );
setRotateKey( spep_0-3 + 226, 1, 20.6 );
setRotateKey( spep_0-3 + 228, 1, 19.9 );
setRotateKey( spep_0-3 + 230, 1, 19.2 );
setRotateKey( spep_0-3 + 232, 1, 18.6 );
setRotateKey( spep_0-3 + 234, 1, 17.9 );
setRotateKey( spep_0-3 + 236, 1, 17.2 );
setRotateKey( spep_0-3 + 238, 1, 16.6 );
setRotateKey( spep_0-3 + 240, 1, 15.9 );
setRotateKey( spep_0-3 + 242, 1, 15.2 );
setRotateKey( spep_0-1 + 244, 1, 14.5 );

--敵の動き
setDisp( spep_0-3 + 306, 1, 1);
setDisp( spep_0-1 + 328, 1, 0);

changeAnime( spep_0-3 + 306, 1,5 );

setMoveKey( spep_0-3 + 306, 1, -1027.6, -1634.5 , 0 );
setMoveKey( spep_0-3 + 308, 1, -1007.2, -1604.3 , 0 );
setMoveKey( spep_0-3 + 310, 1, -977.9, -1561.2 , 0 );
setMoveKey( spep_0-3 + 312, 1, -939.9, -1505.2 , 0 );
setMoveKey( spep_0-3 + 314, 1, -893.1, -1436.2 , 0 );
setMoveKey( spep_0-3 + 316, 1, -837.4, -1354.3 , 0 );
setMoveKey( spep_0-3 + 318, 1, -773.1, -1259.5 , 0 );
setMoveKey( spep_0-3 + 320, 1, -699.9, -1151.7 , 0 );
setMoveKey( spep_0-3 + 322, 1, -617.9, -1031 , 0 );
setMoveKey( spep_0-3 + 324, 1, -527.1, -897.3 , 0 );
setMoveKey( spep_0-3 + 326, 1, -427.5, -750.6 , 0 );
setMoveKey( spep_0-1 + 328, 1, -319.1, -590.9 , 0 );

setScaleKey( spep_0-3 + 306, 1, 14.29, 14.29 );
setScaleKey( spep_0-3 + 308, 1, 14.18, 14.18 );
setScaleKey( spep_0-3 + 310, 1, 14.01, 14.01 );
setScaleKey( spep_0-3 + 312, 1, 13.79, 13.79 );
setScaleKey( spep_0-3 + 314, 1, 13.52, 13.52 );
setScaleKey( spep_0-3 + 316, 1, 13.21, 13.21 );
setScaleKey( spep_0-3 + 318, 1, 12.84, 12.84 );
setScaleKey( spep_0-3 + 320, 1, 12.42, 12.42 );
setScaleKey( spep_0-3 + 322, 1, 11.95, 11.95 );
setScaleKey( spep_0-3 + 324, 1, 11.43, 11.43 );
setScaleKey( spep_0-3 + 326, 1, 10.87, 10.87 );
setScaleKey( spep_0-1 + 328, 1, 10.25, 10.25 );

setRotateKey( spep_0-3 + 306, 1, 50.5 );
setRotateKey( spep_0-3 + 308, 1, 50.4 );
setRotateKey( spep_0-3 + 310, 1, 50.2 );
setRotateKey( spep_0-3 + 312, 1, 49.9 );
setRotateKey( spep_0-3 + 314, 1, 49.6 );
setRotateKey( spep_0-3 + 316, 1, 49.2 );
setRotateKey( spep_0-3 + 318, 1, 48.7 );
setRotateKey( spep_0-3 + 320, 1, 48.2 );
setRotateKey( spep_0-3 + 322, 1, 47.6 );
setRotateKey( spep_0-3 + 324, 1, 47 );
setRotateKey( spep_0-3 + 326, 1, 46.2 );
setRotateKey( spep_0-1 + 328, 1, 45.5 );

--敵の動き
setDisp( spep_0-3 + 362, 1, 1);
setDisp( spep_0-1 + 458, 1, 0);

changeAnime( spep_0-3 + 362, 1,7 );
changeAnime( spep_0-3 + 402, 1,108 );

setMoveKey( spep_0-3 + 362, 1, 182.2, 217 , 0 );--107
setMoveKey( spep_0-3 + 364, 1, 181.9, 216.6 , 0 );
setMoveKey( spep_0-3 + 366, 1, 181, 215.5 , 0 );
setMoveKey( spep_0-3 + 368, 1, 179.6, 213.7 , 0 );
setMoveKey( spep_0-3 + 370, 1, 177.5, 211.1 , 0 );
setMoveKey( spep_0-3 + 372, 1, 174.9, 207.8 , 0 );
setMoveKey( spep_0-3 + 374, 1, 171.7, 203.8 , 0 );
setMoveKey( spep_0-3 + 376, 1, 168, 199 , 0 );
setMoveKey( spep_0-3 + 378, 1, 163.6, 193.6 , 0 );
setMoveKey( spep_0-3 + 380, 1, 158.8, 187.3 , 0 );
setMoveKey( spep_0-3 + 382, 1, 153.3, 180.4 , 0 );
setMoveKey( spep_0-3 + 384, 1, 147.3, 172.7 , 0 );
setMoveKey( spep_0-3 + 386, 1, 140.8, 164.3 , 0 );
setMoveKey( spep_0-3 + 388, 1, 133.7, 155.2 , 0 );
setMoveKey( spep_0-3 + 390, 1, 126.1, 145.4 , 0 );
setMoveKey( spep_0-3 + 392, 1, 117.9, 134.9 , 0 );
setMoveKey( spep_0-3 + 394, 1, 109.3, 123.6 , 0 );
setMoveKey( spep_0-3 + 396, 1, 100.1, 111.7 , 0 );
setMoveKey( spep_0-3 + 398, 1, 90.5, 99 , 0 );
setMoveKey( spep_0-3 + 400, 1, 80.4, 85.7 , 0 );
setMoveKey( spep_0-3 + 401, 1, 80.4, 85.7 , 0 );
setMoveKey( spep_0-3 + 402, 1, 227.9, -129.5 , 0 );--8
setMoveKey( spep_0-3 + 404, 1, 238.8, -147.6 , 0 );
setMoveKey( spep_0-3 + 406, 1, 233.7, -133.7 , 0 );
setMoveKey( spep_0-3 + 408, 1, 28.8, 70.1 , 0 );
setMoveKey( spep_0-3 + 410, 1, 24.8, -57.9 , 0 );
setMoveKey( spep_0-3 + 412, 1, 43.5, -83.4 , 0 );
setMoveKey( spep_0-3 + 414, 1, 38.2, -28.9 , 0 );
setMoveKey( spep_0-3 + 416, 1, 83.3, 2.1 , 0 );
setMoveKey( spep_0-3 + 418, 1, 93, 9.7 , 0 );
setMoveKey( spep_0-3 + 420, 1, 142.2, 14.8 , 0 );
setMoveKey( spep_0-3 + 422, 1, 149.7, 24.2 , 0 );
setMoveKey( spep_0-3 + 424, 1, 173.8, 14.2 , 0 );
setMoveKey( spep_0-3 + 426, 1, 165.8, 18.4 , 0 );
setMoveKey( spep_0-3 + 428, 1, 169.7, 14.9 , 0 );
setMoveKey( spep_0-3 + 430, 1, 173.3, 11.6 , 0 );
setMoveKey( spep_0-3 + 432, 1, 176.7, 8.5 , 0 );
setMoveKey( spep_0-3 + 434, 1, 179.9, 5.6 , 0 );
setMoveKey( spep_0-3 + 436, 1, 183, 3 , 0 );
setMoveKey( spep_0-3 + 438, 1, 185.8, 0.5 , 0 );
setMoveKey( spep_0-3 + 440, 1, 188.4, -1.8 , 0 );
setMoveKey( spep_0-3 + 442, 1, 190.7, -3.9 , 0 );
setMoveKey( spep_0-3 + 444, 1, 192.9, -5.8 , 0 );
setMoveKey( spep_0-3 + 446, 1, 194.9, -7.5 , 0 );
setMoveKey( spep_0-3 + 448, 1, 196.6, -9 , 0 );
setMoveKey( spep_0-3 + 450, 1, 198.2, -10.3 , 0 );
setMoveKey( spep_0-3 + 452, 1, 199.5, -11.4 , 0 );
setMoveKey( spep_0-3 + 454, 1, 200.6, -12.4 , 0 );
setMoveKey( spep_0-3 + 456, 1, 201.5, -13.2 , 0 );
setMoveKey( spep_0-1 + 458, 1, 202.3, -13.8 , 0 );

setScaleKey( spep_0-3 + 362, 1, 0.01, 0.01 );--107
setScaleKey( spep_0-3 + 364, 1, 0.01, 0.01 );
setScaleKey( spep_0-3 + 366, 1, 0.02, 0.02 );
setScaleKey( spep_0-3 + 368, 1, 0.03, 0.03 );
setScaleKey( spep_0-3 + 370, 1, 0.05, 0.05 );
setScaleKey( spep_0-3 + 372, 1, 0.06, 0.06 );
setScaleKey( spep_0-3 + 374, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 376, 1, 0.11, 0.11 );
setScaleKey( spep_0-3 + 378, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 380, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 382, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 384, 1, 0.26, 0.26 );
setScaleKey( spep_0-3 + 386, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 388, 1, 0.36, 0.36 );
setScaleKey( spep_0-3 + 390, 1, 0.42, 0.42 );
setScaleKey( spep_0-3 + 392, 1, 0.48, 0.48 );
setScaleKey( spep_0-3 + 394, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 396, 1, 0.62, 0.62 );
setScaleKey( spep_0-3 + 398, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 400, 1, 0.77, 0.77 );
setScaleKey( spep_0-3 + 401, 1, 0.77, 0.77 );
setScaleKey( spep_0-3 + 402, 1, 3.33, 3.33 );--8
setScaleKey( spep_0-3 + 406, 1, 3.33, 3.33 );
setScaleKey( spep_0-3 + 408, 1, 5.18, 5.18 );
setScaleKey( spep_0-3 + 414, 1, 5.18, 5.18 );
setScaleKey( spep_0-3 + 416, 1, 4.15, 4.15 );
setScaleKey( spep_0-3 + 418, 1, 3.23, 3.23 );
setScaleKey( spep_0-3 + 420, 1, 1.77, 1.77 );
setScaleKey( spep_0-3 + 422, 1, 1.22, 1.22 );
setScaleKey( spep_0-3 + 424, 1, 0.79, 0.79 );
setScaleKey( spep_0-3 + 426, 1, 0.72, 0.72 );
setScaleKey( spep_0-3 + 428, 1, 0.64, 0.64 );
setScaleKey( spep_0-3 + 430, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 432, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 434, 1, 0.44, 0.44 );
setScaleKey( spep_0-3 + 436, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 438, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 440, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 442, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 444, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 446, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 448, 1, 0.12, 0.12 );
setScaleKey( spep_0-3 + 450, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 452, 1, 0.07, 0.07 );
setScaleKey( spep_0-3 + 454, 1, 0.04, 0.04 );
setScaleKey( spep_0-3 + 456, 1, 0.03, 0.03 );
setScaleKey( spep_0-1 + 458, 1, 0.01, 0.01 );

setRotateKey( spep_0-3 + 362, 1, -53.6 );
setRotateKey( spep_0-3 + 364, 1, -53.7 );
setRotateKey( spep_0-3 + 366, 1, -53.8 );
setRotateKey( spep_0-3 + 368, 1, -53.9 );
setRotateKey( spep_0-3 + 370, 1, -54.1 );
setRotateKey( spep_0-3 + 372, 1, -54.4 );
setRotateKey( spep_0-3 + 374, 1, -54.7 );
setRotateKey( spep_0-3 + 376, 1, -55.1 );
setRotateKey( spep_0-3 + 378, 1, -55.5 );
setRotateKey( spep_0-3 + 380, 1, -56 );
setRotateKey( spep_0-3 + 382, 1, -56.5 );
setRotateKey( spep_0-3 + 384, 1, -57.1 );
setRotateKey( spep_0-3 + 386, 1, -57.8 );
setRotateKey( spep_0-3 + 388, 1, -58.5 );
setRotateKey( spep_0-3 + 390, 1, -59.3 );
setRotateKey( spep_0-3 + 392, 1, -60.1 );
setRotateKey( spep_0-3 + 394, 1, -61 );
setRotateKey( spep_0-3 + 396, 1, -62 );
setRotateKey( spep_0-3 + 398, 1, -63 );
setRotateKey( spep_0-3 + 400, 1, -64.1 );
setRotateKey( spep_0-3 + 401, 1, -64.1 );
setRotateKey( spep_0-3 + 402, 1, 0 );--8
setRotateKey( spep_0-1 + 458, 1, 0 );

--敵の動き
setDisp( spep_0-3 + 568, 1, 1);
setDisp( spep_0-1 + 586, 1, 0);

changeAnime( spep_0-3 + 568, 1,108 );

setMoveKey( spep_0-3 + 568, 1, -553.9, 395.8 , 0 );
setMoveKey( spep_0-3 + 570, 1, -466.2, 328.2 , 0 );
setMoveKey( spep_0-3 + 572, 1, -348.8, 237.8 , 0 );
setMoveKey( spep_0-3 + 574, 1, -201.5, 124.4 , 0 );
setMoveKey( spep_0-3 + 576, 1, -24.4, -11.9 , 0 );
setMoveKey( spep_0-3 + 578, 1, 33.5, -56.8 , 0 );
setMoveKey( spep_0-3 + 580, 1, 91.3, -101.7 , 0 );
setMoveKey( spep_0-3 + 582, 1, 161.8, -170 , 0 );
setMoveKey( spep_0-3 + 584, 1, 157.8, -154 , 0 );
setMoveKey( spep_0-1 + 586, 1, 173.8, -142 , 0 );

setScaleKey( spep_0-3 + 568, 1, 1.05, 1.05 );
setScaleKey( spep_0-3 + 570, 1, 0.98, 0.98 );
setScaleKey( spep_0-3 + 572, 1, 0.9, 0.9 );
setScaleKey( spep_0-3 + 574, 1, 0.79, 0.79 );
setScaleKey( spep_0-3 + 576, 1, 0.65, 0.65 );
setScaleKey( spep_0-3 + 578, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 580, 1, 0.83, 0.83 );
setScaleKey( spep_0-1 + 586, 1, 0.83, 0.83 );

setRotateKey( spep_0-3 + 568, 1, 0 );
setRotateKey( spep_0-1 + 586, 1, 0 );

--SE
--べジータ殴る
SE012 = playSeVer2( spep_0 + 168, 1189, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 174, 1359, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 178, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 178, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 182, 1176, "",spep_0 + 262, 20, 18, -1);
setSeVolumeByWorkId( spep_0 + 182, SE016, 50 );
setStartTimeMs( SE016,  33 );
SE017 = playSeVer2( spep_0 + 184, 1010, "", 0, 10, 0, -1);
SE018 = playSeVer2( spep_0 + 188, 1330, "",spep_0 + 242, 0, 28, -1);
setPitch( spep_0 + 188, SE018, -400 );
setTimeStretch( SE018, 0.73, 30, 4 );

--敵吹き飛ぶ
SE019 = playSeVer2( spep_0 + 244, 1027, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 244, 1277, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 244, 1017, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 246, 1072, "", 0, 0, 0, -1);

--悟空振りかぶる
SE023 = playSeVer2( spep_0 + 290, 1116, "",spep_0 + 338, 0, 26, -1);

--悟空殴る
SE024 = playSeVer2( spep_0 + 328, 1004, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 336, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE025, 87 );
SE026 = playSeVer2( spep_0 + 336, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE026, 84 );

--瞬間移動
SE027 = playSeVer2( spep_0 + 370, 1109, "", 0, 0, 0, -1);

--ベジータ蹴り
SE028 = playSeVer2( spep_0 + 396, 1189, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 400, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE029, 88 );
SE030 = playSeVer2( spep_0 + 402, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 402, SE030, 87 );
SE031 = playSeVer2( spep_0 + 402, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 402, SE031, 78 );

--敵飛んでいく
SE032 = playSeVer2( spep_0 + 414, 1183, "",spep_0 + 504, 0, 46, -1);

--悟空構える
SE033 = playSeVer2( spep_0 + 458, 1176, "",spep_0 + 612, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 458, SE033, 67 );
SE034 = playSeVer2( spep_0 + 486, 1003, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 486, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 486, SE035, 150 );
SE036 = playSeVer2( spep_0 + 504, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 504, SE036, 168 );
setPitch( spep_0 + 504, SE036, 300 );
setTimeStretch( SE036, 1.2, 30, 4 );
SE037 = playSeVer2( spep_0 + 524, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 524, SE037, 81 );
SE038 = playSeVer2( spep_0 + 534, 1006, "", 0, 0, 0, -1);

--敵避ける
SE039 = playSeVer2( spep_0 + 560, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 560, SE039, 157 );
SE040 = playSeVer2( spep_0 + 560, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 560, SE040, 136 );
SE041 = playSeVer2( spep_0 + 560, 1277, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 578, 1159, "", spep_0 + 774, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 578, SE042, 71 );
SE043 = playSeVer2( spep_0 + 578, 1182, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 578, 44, "", 0, 0, 0, -1);

--ベジータ気弾溜め
SE046 = playSeVer2( spep_0 + 644, 1003, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 654, 1191, "",spep_0 + 774, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 654, SE047, 170 );
SE048 = playSeVer2( spep_0 + 654, 1296, "",spep_0 + 774, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 654, SE048, 115 );

--悟空気弾溜め
SE050 = playSeVer2( spep_0 + 694, 1209, "",spep_0 + 774, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 694, SE050, 72 );
SE045 = playSeVer2( spep_0 + 696, 1210, "",spep_0 + 774, 10, 8, -1);
setStartTimeMs( SE045,  1100 );

--白フェード
entryFade( spep_0 + 758, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+766;
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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94; 
------------------------------------------------------
--発射～爆発
------------------------------------------------------


--SE
--ベジータ気弾発射前溜め
SE053 = playSeVer2( spep_2 + 0 -4, 1296, "",spep_2 + 44, 12, 14, -1);
setSeVolumeByWorkId( spep_2 + 0 -4, SE053, 116 );
setStartTimeMs( SE053,  600 );
SE052 = playSeVer2( spep_2 + 2 -4, 1191, "",spep_2 + 44, 12, 20, -1);
setSeVolumeByWorkId( spep_2 + 2, SE052, 176 );
setStartTimeMs( SE052,  967 );
SE054 = playSeVer2( spep_2 + 2 -6, 1176, "",spep_2 + 58, 10, 34, -1);

--ベジータ気弾発射
SE055 = playSeVer2( spep_2 + 18, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 18, SE055, 89 );
SE056 = playSeVer2( spep_2 + 18, 1213, "",spep_2 + 110, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 18, SE056, 79 );
SE057 = playSeVer2( spep_2 + 18, 1193, "",spep_2 + 110, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 18, SE057, 140 );

--悟空気弾発射前溜め
SE049 = playSeVer2( spep_2 + 62, 1210, "",spep_2 + 122, 14, 20, 0.6);
setSeVolumeByWorkId( spep_2 + 62, SE049, 120 );
setStartTimeMs( SE049,  4200 );

--悟空気弾発射
SE058 = playSeVer2( spep_2 + 94, 1133, "",spep_2 + 170, 0, 14, -1);
SE059 = playSeVer2( spep_2 + 94, 1284, "",spep_2 + 170, 0, 14, -1);
SE060 = playSeVer2( spep_2 + 94, 1213, "",spep_2 + 170, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 94, SE060, 73 );

--気弾飛んでいく
SE061 = playSeVer2( spep_2 + 130, 1202, "",spep_2 + 186, 0, 20, 0.6);
setSeVolumeByWorkId( spep_2 + 130, SE061, 200 );

--爆発
SE062 = playSeVer2( spep_2 + 158, 1159, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_2 + 158, 1068, "", 0, 0, 0, -1);

--ラスト爆発
SE064 = playSeVer2( spep_2 + 206, 1024, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_2 + 206, 1067, "", 0, 0, 0, -1);

--爆風
SE066 = playSeVer2( spep_2 + 206, 1044, "", 0, 80, 0, -1);
setSeVolumeByWorkId( spep_2 + 206, SE066, 239 );
SE067 = playSeVer2( spep_2 + 206, 1226, "", 0, 80, 0, -1);
setSeVolumeByWorkId( spep_2 + 206, SE067, 133 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 310, 0, 0, 0, 0, 255 );  --白　背景

--終わり
dealDamage(spep_2+206);
endPhase( spep_2 + 304 +20 );
end