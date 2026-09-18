--4022201:LR_超ゴジータ_超必殺技：ソウルパニッシャー
--sp_effect_a2_00164
--sp2213

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
SP_01  = 157576; --前半 手前 ef_001
SP_02  = 157577; --前半 奥 ef_002
SP_03  = 157578; --後半 手前 ef_003
SP_04  = 157579; --後半 奥 ef_004
SP_05  = 157580; --KOループ ef_005
SP_06  = 157592; --KOループ_奥 ef_006

--エフェクト(敵)
SP_01x = 157590; --前半 手前 ef_001r
SP_02x = 157591; --前半 奥 ef_002r
SP_03x = 157578; --後半 手前 ef_003
SP_04x = 157579; --後半 奥 ef_004
SP_05x = 157580; --KOループ ef_005

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(0.8);


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
-- 前半
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 978, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 978, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 978, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 978, tame_f, 255 );
setEffAlphaKey( spep_0 + 979, tame_f, 0 );
setEffAlphaKey( spep_0 + 980, tame_f, 0 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 978, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 978, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 978, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 978, tame_b, 255 );
setEffAlphaKey( spep_0 + 979, tame_b, 0 );
setEffAlphaKey( spep_0 + 980, tame_b, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--環境音
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 13 );
stopSe( spep_0 + 108, SE001, 30 );

--顔カットイン
SE002 = playSe( spep_x + 12, 1018 );

--気が揺れる
SE003 = playSe( spep_0 + 94, 1284 );
setSeVolumeByWorkId( spep_0 + 94, SE003, 0 );
setSeVolumeByWorkId( spep_0 + 95, SE003, 30.1 );
setSeVolumeByWorkId( spep_0 + 96, SE003, 60.2 );
setSeVolumeByWorkId( spep_0 + 97, SE003, 90.3 );
setSeVolumeByWorkId( spep_0 + 98, SE003, 120 );
stopSe( spep_0 + 134, SE003, 52 );
setStartTimeMs( SE003,  283 );
setPitch( spep_0 + 94, SE003, -100 );
setTimeStretch( SE003, 0.93, 10, 1 );
SE004 = playSe( spep_0 + 94, 1027 );
SE005 = playSe( spep_0 + 94, 1060 );
setSeVolumeByWorkId( spep_0 + 94, SE005, 81 );
stopSe( spep_0 + 174, SE005, 12 );

--透明な拳が飛んでくる

SE006 = playSe( spep_0 + 142, 1290 );
setSeVolumeByWorkId( spep_0 + 142, SE006, 0 );
setSeVolumeByWorkId( spep_0 + 143, SE006, 50 );
setSeVolumeByWorkId( spep_0 + 144, SE006, 100 );
setStartTimeMs( SE006,  133 );
setPitch( spep_0 + 142, SE006, -1100 );
setTimeStretch( SE006, 0.27, 40, 5 );
stopSe( spep_0 + 172, SE006, 12 );
SE007 = playSe( spep_0 + 140, 1179 );
setSeVolumeByWorkId( spep_0 + 140, SE007, 101 );
stopSe( spep_0 + 186, SE007, 4 );
SE008 = playSe( spep_0 + 142, 1277 );
setSeVolumeByWorkId( spep_0 + 142, SE008, 244 );
stopSe( spep_0 + 172, SE008, 12 );
setPitch( spep_0 + 142, SE008, -500 );
setTimeStretch( SE008, 0.67, 40, 5 );
SE010 = playSe( spep_0 + 164, 1290 );
setSeVolumeByWorkId( spep_0 + 164, SE010, 0 );
setSeVolumeByWorkId( spep_0 + 165, SE010, 15 );
setSeVolumeByWorkId( spep_0 + 166, SE010, 50 );
setSeVolumeByWorkId( spep_0 + 167, SE010, 117 );
setSeVolumeByWorkId( spep_0 + 190,SE010,117);
setSeVolumeByWorkId( spep_0 + 191,SE010,129.3);
setSeVolumeByWorkId( spep_0 + 192,SE010,141.6);
--[[
setSeVolumeByWorkId( spep_0 + 193,SE010,153.9);
setSeVolumeByWorkId( spep_0 + 194,SE010,166.2);
setSeVolumeByWorkId( spep_0 + 195,SE010,178.5);
setSeVolumeByWorkId( spep_0 + 196,SE010,190.8);
setSeVolumeByWorkId( spep_0 + 197,SE010,203.1);
setSeVolumeByWorkId( spep_0 + 198,SE010,215.4);
setSeVolumeByWorkId( spep_0 + 199,SE010,227.7);
setSeVolumeByWorkId( spep_0 + 200,SE010,240);
setSeVolumeByWorkId( spep_0 + 201,SE010,252.3);
setSeVolumeByWorkId( spep_0 + 202,SE010,264.6);
setSeVolumeByWorkId( spep_0 + 203,SE010,276.9);
setSeVolumeByWorkId( spep_0 + 204,SE010,289.2);
setSeVolumeByWorkId( spep_0 + 205,SE010,301.5);
setSeVolumeByWorkId( spep_0 + 206,SE010,313.8);
setSeVolumeByWorkId( spep_0 + 207,SE010,326.1);
setSeVolumeByWorkId( spep_0 + 208,SE010,338.4);
setSeVolumeByWorkId( spep_0 + 209,SE010,350.7);
setSeVolumeByWorkId( spep_0 + 210,SE010,363);
setSeVolumeByWorkId( spep_0 + 211,SE010,375.3);
setSeVolumeByWorkId( spep_0 + 212,SE010,387.6);
setSeVolumeByWorkId( spep_0 + 213,SE010,399.9);
setSeVolumeByWorkId( spep_0 + 214,SE010,412.2);
setSeVolumeByWorkId( spep_0 + 215,SE010,424.5);
setSeVolumeByWorkId( spep_0 + 216,SE010,436.8);
setSeVolumeByWorkId( spep_0 + 217,SE010,449.1);
setSeVolumeByWorkId( spep_0 + 218,SE010,461.4);
setSeVolumeByWorkId( spep_0 + 219,SE010,473.7);
setSeVolumeByWorkId( spep_0 + 220,SE010,486);
setSeVolumeByWorkId( spep_0 + 221,SE010,498.3);
setSeVolumeByWorkId( spep_0 + 222,SE010,510.6);
setSeVolumeByWorkId( spep_0 + 223,SE010,522.9);
setSeVolumeByWorkId( spep_0 + 224,SE010,535.2);
setSeVolumeByWorkId( spep_0 + 225,SE010,547.5);
setSeVolumeByWorkId( spep_0 + 226,SE010,560);
]]
setStartTimeMs( SE010,  167 );
setPitch( spep_0 + 164, SE010, -1200 );
setTimeStretch( SE010, 0.76, 40, 5 );
SE011 = playSe( spep_0 + 166, 1277 );
setSeVolumeByWorkId( spep_0 + 166, SE011, 237 );
setSeVolumeByWorkId( spep_0 + 190,SE011,237);
setSeVolumeByWorkId( spep_0 + 191,SE011,245.97);
setSeVolumeByWorkId( spep_0 + 192,SE011,254.94);
setSeVolumeByWorkId( spep_0 + 193,SE011,263.91);
setSeVolumeByWorkId( spep_0 + 194,SE011,272.88);
setSeVolumeByWorkId( spep_0 + 195,SE011,281.85);
setSeVolumeByWorkId( spep_0 + 196,SE011,290.82);
setSeVolumeByWorkId( spep_0 + 197,SE011,299.79);
setSeVolumeByWorkId( spep_0 + 198,SE011,308.76);
setSeVolumeByWorkId( spep_0 + 199,SE011,317.73);
setSeVolumeByWorkId( spep_0 + 200,SE011,326.7);
setSeVolumeByWorkId( spep_0 + 201,SE011,335.67);
setSeVolumeByWorkId( spep_0 + 202,SE011,344.64);
setSeVolumeByWorkId( spep_0 + 203,SE011,353.61);
setSeVolumeByWorkId( spep_0 + 204,SE011,362.58);
setSeVolumeByWorkId( spep_0 + 205,SE011,371.55);
setSeVolumeByWorkId( spep_0 + 206,SE011,380.52);
setSeVolumeByWorkId( spep_0 + 207,SE011,389.49);
setSeVolumeByWorkId( spep_0 + 208,SE011,398.46);
setSeVolumeByWorkId( spep_0 + 209,SE011,407.43);
setSeVolumeByWorkId( spep_0 + 210,SE011,416.4);
setSeVolumeByWorkId( spep_0 + 211,SE011,425.37);
setSeVolumeByWorkId( spep_0 + 212,SE011,434.34);
setSeVolumeByWorkId( spep_0 + 213,SE011,443.31);
setSeVolumeByWorkId( spep_0 + 214,SE011,452.28);
setSeVolumeByWorkId( spep_0 + 215,SE011,461.25);
setSeVolumeByWorkId( spep_0 + 216,SE011,470.22);
setSeVolumeByWorkId( spep_0 + 217,SE011,479.19);
setSeVolumeByWorkId( spep_0 + 218,SE011,488.16);
setSeVolumeByWorkId( spep_0 + 219,SE011,497.13);
setSeVolumeByWorkId( spep_0 + 220,SE011,506.10);
setSeVolumeByWorkId( spep_0 + 221,SE011,515.07);
setSeVolumeByWorkId( spep_0 + 222,SE011,524.04);
setSeVolumeByWorkId( spep_0 + 223,SE011,533.01);
setSeVolumeByWorkId( spep_0 + 224,SE011,541.98);
setSeVolumeByWorkId( spep_0 + 225,SE011,550.95);
setSeVolumeByWorkId( spep_0 + 226,SE011,560);
setPitch( spep_0 + 166, SE011, -800 );
setTimeStretch( SE011, 0.57, 40, 5 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 980, 0,  0, 0, 0, 255 ); --くろ 背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 200; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );

    pauseAll( SP_dodge, 67 );

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

    endPhase( SP_dodge + 10 );

    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--文字エントリー
ctga = entryEffectLife( spep_0-3 + 256,  10005, 26, 0x100, -1, 0, -165.3, 139.9 );--ガッ

setEffMoveKey( spep_0-3 + 256, ctga, -165.3, 139.9 , 0 );
setEffMoveKey( spep_0-3 + 258, ctga, -190.9, 191.5 , 0 );
setEffMoveKey( spep_0-3 + 260, ctga, -187.5, 198.1 , 0 );
setEffMoveKey( spep_0-3 + 262, ctga, -192.6, 195 , 0 );
setEffMoveKey( spep_0-3 + 264, ctga, -188.2, 199.9 , 0 );
setEffMoveKey( spep_0-3 + 266, ctga, -191.4, 194.5 , 0 );
setEffMoveKey( spep_0-3 + 268, ctga, -191, 202.1 , 0 );
setEffMoveKey( spep_0-3 + 270, ctga, -193.2, 196.2 , 0 );
setEffMoveKey( spep_0-3 + 272, ctga, -189.6, 201.5 , 0 );
setEffMoveKey( spep_0-3 + 274, ctga, -194.6, 201 , 0 );
setEffMoveKey( spep_0-3 + 276, ctga, -193.8, 198.6 , 0 );
setEffMoveKey( spep_0-3 + 278, ctga, -191, 207.3 , 0 );
setEffMoveKey( spep_0-3 + 280, ctga, -197.2, 205.8 , 0 );
setEffMoveKey( spep_0-3 + 282, ctga, -198.4, 208.4 , 0 );

setEffScaleKey( spep_0-3 + 256, ctga, 1.46, 1.46 );
setEffScaleKey( spep_0-3 + 258, ctga, 1.94, 1.94 );
setEffScaleKey( spep_0-3 + 260, ctga, 1.95, 1.95 );
setEffScaleKey( spep_0-3 + 262, ctga, 1.95, 1.95 );
setEffScaleKey( spep_0-3 + 264, ctga, 1.96, 1.96 );
setEffScaleKey( spep_0-3 + 266, ctga, 1.97, 1.97 );
setEffScaleKey( spep_0-3 + 268, ctga, 1.98, 1.98 );
setEffScaleKey( spep_0-3 + 270, ctga, 1.98, 1.98 );
setEffScaleKey( spep_0-3 + 272, ctga, 1.99, 1.99 );
setEffScaleKey( spep_0-3 + 274, ctga, 2, 2 );
setEffScaleKey( spep_0-3 + 276, ctga, 2.01, 2.01 );
setEffScaleKey( spep_0-3 + 278, ctga, 2.03, 2.03 );
setEffScaleKey( spep_0-3 + 280, ctga, 2.06, 2.06 );
setEffScaleKey( spep_0-3 + 282, ctga, 2.08, 2.08 );

setEffRotateKey( spep_0-3 + 256, ctga, -24.9 );
setEffRotateKey( spep_0-3 + 282, ctga, -24.9 );

setEffAlphaKey( spep_0-3 + 256, ctga, 128 );
setEffAlphaKey( spep_0-3 + 258, ctga, 255 );
setEffAlphaKey( spep_0-3 + 276, ctga, 255 );
setEffAlphaKey( spep_0-3 + 278, ctga, 170 );
setEffAlphaKey( spep_0-3 + 280, ctga, 85 );
setEffAlphaKey( spep_0-3 + 282, ctga, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_0-3 + 260,  10020, 26, 0x100, -1, 0, 172, 323.5 );--バキッ

setEffMoveKey( spep_0-3 + 260, ctbaki, 172, 323.5 , 0 );
setEffMoveKey( spep_0-3 + 262, ctbaki, 187.5, 334.6 , 0 );
setEffMoveKey( spep_0-3 + 264, ctbaki, 193.3, 357.6 , 0 );
setEffMoveKey( spep_0-3 + 266, ctbaki, 195.5, 348.5 , 0 );
setEffMoveKey( spep_0-3 + 268, ctbaki, 190.6, 343.7 , 0 );
setEffMoveKey( spep_0-3 + 270, ctbaki, 196.7, 346.6 , 0 );
setEffMoveKey( spep_0-3 + 272, ctbaki, 191.7, 340.7 , 0 );
setEffMoveKey( spep_0-3 + 274, ctbaki, 208.2, 352.1 , 0 );
setEffMoveKey( spep_0-3 + 276, ctbaki, 189.1, 346.1 , 0 );
setEffMoveKey( spep_0-3 + 278, ctbaki, 198, 348.6 , 0 );
setEffMoveKey( spep_0-3 + 280, ctbaki, 188.3, 345.5 , 0 );
setEffMoveKey( spep_0-3 + 282, ctbaki, 192, 340.5 , 0 );
setEffMoveKey( spep_0-3 + 284, ctbaki, 185.1, 346.6 , 0 );
setEffMoveKey( spep_0-3 + 286, ctbaki, 180.5, 340.3 , 0 );

setEffScaleKey( spep_0-3 + 260, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_0-3 + 262, ctbaki, 1.82, 1.82 );
setEffScaleKey( spep_0-3 + 264, ctbaki, 1.95, 1.95 );
setEffScaleKey( spep_0-3 + 270, ctbaki, 1.95, 1.95 );
setEffScaleKey( spep_0-3 + 272, ctbaki, 1.96, 1.96 );
setEffScaleKey( spep_0-3 + 280, ctbaki, 1.96, 1.96 );
setEffScaleKey( spep_0-3 + 282, ctbaki, 1.9, 1.9 );
setEffScaleKey( spep_0-3 + 284, ctbaki, 1.83, 1.83 );
setEffScaleKey( spep_0-3 + 286, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_0-3 + 260, ctbaki, 36.7 );
setEffRotateKey( spep_0-3 + 286, ctbaki, 36.7 );

setEffAlphaKey( spep_0-3 + 260, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 280, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 282, ctbaki, 170 );
setEffAlphaKey( spep_0-3 + 284, ctbaki, 85 );
setEffAlphaKey( spep_0-3 + 286, ctbaki, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_0-3 + 364,  10019, 20, 0x100, -1, 0, -81.6, 296.3 );--ドンッ

setEffMoveKey( spep_0-3 + 364, ctdon, -81.6, 296.3 , 0 );
setEffMoveKey( spep_0-3 + 366, ctdon, -86.9, 360.1 , 0 );
setEffMoveKey( spep_0-3 + 368, ctdon, -84.1, 379.6 , 0 );
setEffMoveKey( spep_0-3 + 370, ctdon, -88.1, 382.4 , 0 );
setEffMoveKey( spep_0-3 + 372, ctdon, -85.9, 378.9 , 0 );
setEffMoveKey( spep_0-3 + 374, ctdon, -89, 387.2 , 0 );
setEffMoveKey( spep_0-3 + 376, ctdon, -87.6, 381.6 , 0 );
setEffMoveKey( spep_0-3 + 378, ctdon, -82.7, 386.8 , 0 );
setEffMoveKey( spep_0-3 + 380, ctdon, -90.2, 386.3 , 0 );
setEffMoveKey( spep_0-3 + 382, ctdon, -84, 391.3 , 0 );
setEffMoveKey( spep_0-3 + 384, ctdon, -84.1, 393.3 , 0 );

setEffScaleKey( spep_0-3 + 364, ctdon, 1.27, 1.27 );
setEffScaleKey( spep_0-3 + 366, ctdon, 1.85, 1.85 );
setEffScaleKey( spep_0-3 + 368, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_0-3 + 370, ctdon, 2.07, 2.07 );
setEffScaleKey( spep_0-3 + 372, ctdon, 2.1, 2.1 );
setEffScaleKey( spep_0-3 + 374, ctdon, 2.13, 2.13 );
setEffScaleKey( spep_0-3 + 376, ctdon, 2.16, 2.16 );
setEffScaleKey( spep_0-3 + 378, ctdon, 2.19, 2.19 );
setEffScaleKey( spep_0-3 + 380, ctdon, 2.24, 2.24 );
setEffScaleKey( spep_0-3 + 382, ctdon, 2.28, 2.28 );
setEffScaleKey( spep_0-3 + 384, ctdon, 2.33, 2.33 );

setEffRotateKey( spep_0-3 + 364, ctdon, 0 );
setEffRotateKey( spep_0-3 + 384, ctdon, 0 );

setEffAlphaKey( spep_0-3 + 364, ctdon, 255 );
setEffAlphaKey( spep_0-3 + 378, ctdon, 255 );
setEffAlphaKey( spep_0-3 + 380, ctdon, 170 );
setEffAlphaKey( spep_0-3 + 382, ctdon, 85 );
setEffAlphaKey( spep_0-3 + 384, ctdon, 0 );


--敵の動き1
setDisp( spep_0-3 + 232, 1, 1);
setDisp( spep_0-1 + 294, 1, 0);

changeAnime( spep_0-3 + 232, 1, 100);
changeAnime( spep_0-3 + 256, 1, 108);
changeAnime( spep_0-3 + 262, 1, 106);
changeAnime( spep_0-3 + 268, 1, 5);

setMoveKey( spep_0-3 + 232, 1, 0.1, -14.3 , 0 );
setMoveKey( spep_0-3 + 234, 1, 0, -6.6 , 0 );
setMoveKey( spep_0-3 + 236, 1, -0.1, -4.3 , 0 );
setMoveKey( spep_0-3 + 238, 1, -0.1, -2.8 , 0 );
setMoveKey( spep_0-3 + 240, 1, -0.1, -1.8 , 0 );
setMoveKey( spep_0-3 + 242, 1, -0.1, -1.2 , 0 );
setMoveKey( spep_0-3 + 244, 1, -0.1, -0.7 , 0 );
setMoveKey( spep_0-3 + 246, 1, -0.1, -0.3 , 0 );
setMoveKey( spep_0-3 + 248, 1, -0.1, -0.1 , 0 );
setMoveKey( spep_0-3 + 250, 1, -0.1, 0 , 0 );
setMoveKey( spep_0-3 + 252, 1, -0.1, 0.1 , 0 );
setMoveKey( spep_0-3 + 255, 1, -0.1, 0.1 , 0 );

setMoveKey( spep_0-3 + 256, 1, 15.3, 35.7 , 0 );
setMoveKey( spep_0-3 + 258, 1, 52.5, -4.8 , 0 );
setMoveKey( spep_0-3 + 260, 1, 57.5, 8.2 , 0 );
setMoveKey( spep_0-3 + 261, 1, 57.5, 8.2 , 0 );

setMoveKey( spep_0-3 + 262, 1, -24.7, 60.9 , 0 );
setMoveKey( spep_0-3 + 264, 1, -32.5, 46.9 , 0 );
setMoveKey( spep_0-3 + 266, 1, -54.8, 65.9 , 0 );
setMoveKey( spep_0-3 + 267, 1, -54.8, 65.9 , 0 );

setMoveKey( spep_0-3 + 268, 1, -8.6, 23.5 , 0 );
setMoveKey( spep_0-3 + 270, 1, -2, 29.4 , 0 );
setMoveKey( spep_0-3 + 272, 1, -9.1, 22.9 , 0 );
setMoveKey( spep_0-3 + 274, 1, -1.2, 29.8 , 0 );
setMoveKey( spep_0-3 + 276, 1, -2.5, 23.6 , 0 );
setMoveKey( spep_0-3 + 278, 1, -6.7, 26 , 0 );
setMoveKey( spep_0-3 + 280, 1, -2, 25.9 , 0 );
setMoveKey( spep_0-3 + 282, 1, -4.5, 24.9 , 0 );
setMoveKey( spep_0-3 + 284, 1, -2.8, 26.9 , 0 );
setMoveKey( spep_0-3 + 286, 1, -3.5, 24.7 , 0 );
setMoveKey( spep_0-3 + 288, 1, -3.7, 26.5 , 0 );
setMoveKey( spep_0-3 + 290, 1, -3.7, 25.1 , 0 );
setMoveKey( spep_0-3 + 292, 1, -3.7, 25.3 , 0 );
setMoveKey( spep_0-1 + 294, 1, -3.7, 25.5 , 0 );

setScaleKey( spep_0-3 + 232, 1, 3.54, 3.54 );
setScaleKey( spep_0-3 + 234, 1, 3.19, 3.19 );
setScaleKey( spep_0-3 + 236, 1, 3.08, 3.08 );
setScaleKey( spep_0-3 + 238, 1, 3.01, 3.01 );
setScaleKey( spep_0-3 + 240, 1, 2.97, 2.97 );
setScaleKey( spep_0-3 + 242, 1, 2.94, 2.94 );
setScaleKey( spep_0-3 + 244, 1, 2.91, 2.91 );
setScaleKey( spep_0-3 + 246, 1, 2.9, 2.9 );
setScaleKey( spep_0-3 + 248, 1, 2.89, 2.89 );
setScaleKey( spep_0-3 + 250, 1, 2.88, 2.88 );
setScaleKey( spep_0-3 + 255, 1, 2.88, 2.88 );

setScaleKey( spep_0-3 + 256, 1, 3.11, 3.11 );
setScaleKey( spep_0-3 + 258, 1, 2.82, 2.82 );
setScaleKey( spep_0-3 + 260, 1, 2.66, 2.66 );
setScaleKey( spep_0-3 + 261, 1, 2.66, 2.66 );

setScaleKey( spep_0-3 + 262, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 264, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 266, 1, 2.23, 2.23 );
setScaleKey( spep_0-3 + 267, 1, 2.23, 2.23 );

setScaleKey( spep_0-3 + 268, 1, 2.14, 2.14 );
setScaleKey( spep_0-3 + 270, 1, 2.07, 2.07 );
setScaleKey( spep_0-3 + 272, 1, 2.02, 2.02 );
setScaleKey( spep_0-3 + 274, 1, 1.96, 1.96 );
setScaleKey( spep_0-3 + 276, 1, 1.91, 1.91 );
setScaleKey( spep_0-3 + 278, 1, 1.87, 1.87 );
setScaleKey( spep_0-3 + 280, 1, 1.83, 1.83 );
setScaleKey( spep_0-3 + 282, 1, 1.8, 1.8 );
setScaleKey( spep_0-3 + 284, 1, 1.77, 1.77 );
setScaleKey( spep_0-3 + 286, 1, 1.74, 1.74 );
setScaleKey( spep_0-3 + 288, 1, 1.73, 1.73 );
setScaleKey( spep_0-3 + 290, 1, 1.71, 1.71 );
setScaleKey( spep_0-1 + 294, 1, 1.7, 1.7 );

setRotateKey( spep_0-3 + 232, 1, 0 );
setRotateKey( spep_0-3 + 261, 1, 0 );

setRotateKey( spep_0-3 + 262, 1, -44.9 );
setRotateKey( spep_0-3 + 267, 1, -44.9 );

setRotateKey( spep_0-3 + 268, 1, 0 );
setRotateKey( spep_0-1 + 294, 1, 0 );

--敵の動き2
setDisp( spep_0-3 + 360, 1, 1);
setDisp( spep_0-1 + 434, 1, 0);

changeAnime( spep_0-3 + 360, 1, 106);

b=60;

setMoveKey( spep_0-3 + 360, 1, -58.9, 2.9-b , 0 );
setMoveKey( spep_0-3 + 362, 1, -58.9, 2.9-b , 0 );
setMoveKey( spep_0-3 + 364, 1, -132.9, -39-b , 0 );
setMoveKey( spep_0-3 + 366, 1, -132.9, -39-b , 0 );
setMoveKey( spep_0-3 + 368, 1, -144.8, -33.1-b , 0 );
setMoveKey( spep_0-3 + 370, 1, -135.9, -41-b , 0 );
setMoveKey( spep_0-3 + 372, 1, -135.9, -36-b , 0 );
setMoveKey( spep_0-3 + 374, 1, -121.8, -36.1-b , 0 );
setMoveKey( spep_0-3 + 376, 1, -205.7, -25-b , 0 );
setMoveKey( spep_0-3 + 378, 1, -196.8, -24.2-b , 0 );
setMoveKey( spep_0-3 + 380, 1, -165.8, -21.5-b , 0 );
setMoveKey( spep_0-3 + 382, 1, -156.8, -22.8-b , 0 );
setMoveKey( spep_0-3 + 384, 1, -158, -19.2-b , 0 );
setMoveKey( spep_0-3 + 386, 1, -140.1, -20.6-b , 0 );
setMoveKey( spep_0-3 + 388, 1, -137.2, -18.1-b , 0 );
setMoveKey( spep_0-3 + 390, 1, -134.4, -16.6-b , 0 );
setMoveKey( spep_0-3 + 392, 1, -121.5, -19.2-b , 0 );
setMoveKey( spep_0-3 + 394, 1, -113.8, -17.9-b , 0 );
setMoveKey( spep_0-3 + 396, 1, -103, -17.6-b , 0 );
setMoveKey( spep_0-3 + 398, 1, -99.2, -18.4-b , 0 );
setMoveKey( spep_0-3 + 400, 1, -85.5, -18.2-b , 0 );
setMoveKey( spep_0-3 + 402, 1, -48.7, -17.1-b , 0 );
setMoveKey( spep_0-3 + 404, 1, -185.8, -40.1-b , 0 );
setMoveKey( spep_0-3 + 406, 1, -184.3, -40.6-b , 0 );
setMoveKey( spep_0-3 + 408, 1, -194.8, -41.1-b , 0 );
setMoveKey( spep_0-3 + 410, 1, -185.8, -43.1-b , 0 );
setMoveKey( spep_0-3 + 412, 1, -184.8, -41.1-b , 0 );
setMoveKey( spep_0-3 + 414, 1, -200.8, -42.1-b , 0 );
setMoveKey( spep_0-3 + 416, 1, -278.9, -62.1-b , 0 );
setMoveKey( spep_0-3 + 418, 1, -278.9, -62.1-b , 0 );
setMoveKey( spep_0-3 + 420, 1, -450.1, -53.8-b , 0 );
setMoveKey( spep_0-3 + 422, 1, -598.5, -46.6-b , 0 );
setMoveKey( spep_0-3 + 424, 1, -724.1, -68.5-b , 0 );
setMoveKey( spep_0-3 + 426, 1, -826.8, -86.4-b , 0 );
setMoveKey( spep_0-3 + 428, 1, -906.7, -100.3-b , 0 );
setMoveKey( spep_0-3 + 430, 1, -963.8, -110.3-b , 0 );
setMoveKey( spep_0-3 + 432, 1, -998, -116.2-b , 0 );
setMoveKey( spep_0-1 + 434, 1, -1009.4, -118.2-b , 0 );

setScaleKey( spep_0-3 + 360, 1, 2.52, 2.52 );
setScaleKey( spep_0-1 + 434, 1, 2.52, 2.52 );

setRotateKey( spep_0-3 + 360, 1, -44.9 );
setRotateKey( spep_0-3 + 362, 1, -44.9 );
setRotateKey( spep_0-3 + 364, 1, -66.7 );
setRotateKey( spep_0-3 + 366, 1, -66.7 );
setRotateKey( spep_0-3 + 368, 1, -67.4 );
setRotateKey( spep_0-3 + 370, 1, -66.7 );
setRotateKey( spep_0-3 + 372, 1, -66.7 );
setRotateKey( spep_0-3 + 374, 1, -67.4 );
setRotateKey( spep_0-3 + 376, 1, -75.1 );
setRotateKey( spep_0-3 + 378, 1, -75.9 );
setRotateKey( spep_0-3 + 380, 1, -76.6 );
setRotateKey( spep_0-3 + 382, 1, -77.3 );
setRotateKey( spep_0-3 + 384, 1, -77.9 );
setRotateKey( spep_0-3 + 386, 1, -78.4 );
setRotateKey( spep_0-3 + 388, 1, -78.9 );
setRotateKey( spep_0-3 + 390, 1, -79.4 );
setRotateKey( spep_0-3 + 392, 1, -79.8 );
setRotateKey( spep_0-3 + 394, 1, -80.1 );
setRotateKey( spep_0-3 + 396, 1, -80.4 );
setRotateKey( spep_0-3 + 398, 1, -80.6 );
setRotateKey( spep_0-3 + 400, 1, -80.8 );
setRotateKey( spep_0-3 + 402, 1, -80.9 );
setRotateKey( spep_0-3 + 404, 1, -90.3 );
setRotateKey( spep_0-3 + 406, 1, -90.3 );
setRotateKey( spep_0-3 + 408, 1, -91.3 );
setRotateKey( spep_0-3 + 410, 1, -90.3 );
setRotateKey( spep_0-3 + 412, 1, -90.3 );
setRotateKey( spep_0-3 + 414, 1, -91.3 );
setRotateKey( spep_0-3 + 416, 1, -96 );
setRotateKey( spep_0-3 + 418, 1, -96 );
setRotateKey( spep_0-3 + 420, 1, -100.4 );
setRotateKey( spep_0-3 + 422, 1, -104.3 );
setRotateKey( spep_0-3 + 424, 1, -107.5 );
setRotateKey( spep_0-3 + 426, 1, -110.2 );
setRotateKey( spep_0-3 + 428, 1, -112.3 );
setRotateKey( spep_0-3 + 430, 1, -113.7 );
setRotateKey( spep_0-3 + 432, 1, -114.6 );
setRotateKey( spep_0-3 + 434, 1, -114.9 );

--敵の動き3
setDisp( spep_0-3 + 524, 1, 1);
setDisp( spep_0-1 + 638, 1, 0);

changeAnime( spep_0-3 + 524, 1, 106);
changeAnime( spep_0-3 + 590, 1, 7);

c=-15;
f=40;
d=10;
g=2;

setMoveKey( spep_0-3 + 524, 1, -22.4+f, -59+g , 0 );
setMoveKey( spep_0-3 + 525, 1, -22.4+f, -59+g , 0 );
setMoveKey( spep_0-3 + 526, 1, -25.8+f, -59.3+g , 0 );
setMoveKey( spep_0-3 + 527, 1, -25.8+f, -59.3+g , 0 );
setMoveKey( spep_0-3 + 528, 1, -28.8+f, -59.6+g , 0 );
setMoveKey( spep_0-3 + 529, 1, -28.8+f, -59.6+g , 0 );
setMoveKey( spep_0-3 + 530, 1, -31.4+f, -59.9+g , 0 );
setMoveKey( spep_0-3 + 531, 1, -31.4+f, -59.9+g , 0 );
setMoveKey( spep_0-3 + 532, 1, -33.6+f, -60.2+g , 0 );
setMoveKey( spep_0-3 + 533, 1, -33.6+f, -60.2+g , 0 );
setMoveKey( spep_0-3 + 534, 1, -35.3+f, -60.5+g , 0 );
setMoveKey( spep_0-3 + 535, 1, -35.3+f, -60.5+g , 0 );
setMoveKey( spep_0-3 + 536, 1, -36.7+f, -60.7+g , 0 );
setMoveKey( spep_0-3 + 537, 1, -36.7+f, -60.7+g , 0 );
setMoveKey( spep_0-3 + 538, 1, -37.7+f, -60.8+g , 0 );
setMoveKey( spep_0-3 + 539, 1, -37.7+f, -60.8+g , 0 );
setMoveKey( spep_0-3 + 540, 1, -8.4+d, -43.7+c , 0 );
setMoveKey( spep_0-3 + 546, 1, -8.4+d, -43.7+c , 0 );
setMoveKey( spep_0-3 + 548, 1, -124.8+d, -46.4+c , 0 );
setMoveKey( spep_0-3 + 550, 1, -137.4+d, -44.6+c , 0 );
setMoveKey( spep_0-3 + 552, 1, -149.4+d, -43+c , 0 );
setMoveKey( spep_0-3 + 554, 1, -160.7+d, -41.6+c , 0 );
setMoveKey( spep_0-3 + 556, 1, -171.4+d, -40.2+c , 0 );
setMoveKey( spep_0-3 + 558, 1, -181.3+d, -39+c , 0 );
setMoveKey( spep_0-3 + 560, 1, -190.6+d, -37.9+c , 0 );
setMoveKey( spep_0-3 + 562, 1, -199.3+d, -36.9+c , 0 );
setMoveKey( spep_0-3 + 564, 1, -207.3+d, -35.9+c , 0 );
setMoveKey( spep_0-3 + 566, 1, -214.7+d, -35.1+c , 0 );
setMoveKey( spep_0-3 + 568, 1, -221.4+d, -34.4+c , 0 );
setMoveKey( spep_0-3 + 570, 1, -227.4+d, -33.7+c , 0 );
setMoveKey( spep_0-3 + 572, 1, -232.8+d, -33.1+c , 0 );
setMoveKey( spep_0-3 + 574, 1, -237.6+d, -32.6+c , 0 );
setMoveKey( spep_0-3 + 576, 1, -241.7+d, -32.2+c , 0 );
setMoveKey( spep_0-3 + 578, 1, -245.2+d, -31.8+c , 0 );
setMoveKey( spep_0-3 + 580, 1, -248.1+d, -31.5+c , 0 );
setMoveKey( spep_0-3 + 582, 1, -250.3+d, -31.3+c , 0 );
setMoveKey( spep_0-3 + 584, 1, -251.9+d, -31.2+c , 0 );
setMoveKey( spep_0-3 + 586, 1, -252.8+d, -31.1+c , 0 );
setMoveKey( spep_0-3 + 588, 1, -253.1+d, -31+c , 0 );
setMoveKey( spep_0-3 + 589, 1, -253.1+d, -31+c , 0 );

setMoveKey( spep_0-3 + 590, 1, -195, 240.9 , 0 );
setMoveKey( spep_0-3 + 592, 1, -203.5, 239.4 , 0 );
setMoveKey( spep_0-3 + 594, 1, -214.3, 237.4 , 0 );
setMoveKey( spep_0-3 + 596, 1, -227.4, 235.1 , 0 );
setMoveKey( spep_0-3 + 598, 1, -242.8, 232.3 , 0 );
setMoveKey( spep_0-3 + 600, 1, -260.6, 229 , 0 );
setMoveKey( spep_0-3 + 602, 1, -280.9, 225.4 , 0 );
setMoveKey( spep_0-3 + 604, 1, -303.6, 221.4 , 0 );
setMoveKey( spep_0-3 + 606, 1, -328.9, 216.9 , 0 );
setMoveKey( spep_0-3 + 608, 1, -356.8, 212.1 , 0 );
setMoveKey( spep_0-3 + 610, 1, -387.5, 206.8 , 0 );
setMoveKey( spep_0-3 + 612, 1, -421.1, 201 , 0 );
setMoveKey( spep_0-3 + 614, 1, -457.7, 194.9 , 0 );
setMoveKey( spep_0-3 + 616, 1, -497.6, 188.2 , 0 );
setMoveKey( spep_0-3 + 618, 1, -541.1, 181.2 , 0 );
setMoveKey( spep_0-3 + 620, 1, -588.4, 173.6 , 0 );
setMoveKey( spep_0-3 + 622, 1, -640, 165.5 , 0 );
setMoveKey( spep_0-3 + 624, 1, -696.5, 156.8 , 0 );
setMoveKey( spep_0-3 + 626, 1, -758.6, 147.5 , 0 );
setMoveKey( spep_0-3 + 628, 1, -827.4, 137.5 , 0 );
setMoveKey( spep_0-3 + 630, 1, -904.6, 126.6 , 0 );
setMoveKey( spep_0-3 + 632, 1, -992.5, 114.7 , 0 );
setMoveKey( spep_0-3 + 634, 1, -1095.7, 101.4 , 0 );
setMoveKey( spep_0-3 + 636, 1, -1223.5, 85.9 , 0 );
setMoveKey( spep_0-1 + 638, 1, -1405.8, 65.2 , 0 );

setScaleKey( spep_0-3 + 524, 1, 1.34, 1.34 );
setScaleKey( spep_0-3 + 589, 1, 1.34, 1.34 );

setScaleKey( spep_0-3 + 590, 1, 1.25, 1.25 );
setScaleKey( spep_0-3 + 592, 1, 1.27, 1.27 );
setScaleKey( spep_0-3 + 594, 1, 1.29, 1.29 );
setScaleKey( spep_0-3 + 596, 1, 1.31, 1.31 );
setScaleKey( spep_0-3 + 598, 1, 1.34, 1.34 );
setScaleKey( spep_0-3 + 600, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 602, 1, 1.41, 1.41 );
setScaleKey( spep_0-3 + 604, 1, 1.45, 1.45 );
setScaleKey( spep_0-3 + 606, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 608, 1, 1.55, 1.55 );
setScaleKey( spep_0-3 + 610, 1, 1.61, 1.61 );
setScaleKey( spep_0-3 + 612, 1, 1.67, 1.67 );
setScaleKey( spep_0-3 + 614, 1, 1.74, 1.74 );
setScaleKey( spep_0-3 + 616, 1, 1.82, 1.82 );
setScaleKey( spep_0-3 + 618, 1, 1.9, 1.9 );
setScaleKey( spep_0-3 + 620, 1, 1.99, 1.99 );
setScaleKey( spep_0-3 + 622, 1, 2.08, 2.08 );
setScaleKey( spep_0-3 + 624, 1, 2.19, 2.19 );
setScaleKey( spep_0-3 + 626, 1, 2.3, 2.3 );
setScaleKey( spep_0-3 + 628, 1, 2.43, 2.43 );
setScaleKey( spep_0-3 + 630, 1, 2.58, 2.58 );
setScaleKey( spep_0-3 + 632, 1, 2.74, 2.74 );
setScaleKey( spep_0-3 + 634, 1, 2.93, 2.93 );
setScaleKey( spep_0-3 + 636, 1, 3.17, 3.17 );
setScaleKey( spep_0-1 + 638, 1, 3.51, 3.51 );

setRotateKey( spep_0-3 + 524, 1, -75.7 );
setRotateKey( spep_0-3 + 526, 1, -77 );
setRotateKey( spep_0-3 + 528, 1, -78.1 );
setRotateKey( spep_0-3 + 530, 1, -79.1 );
setRotateKey( spep_0-3 + 532, 1, -79.9 );
setRotateKey( spep_0-3 + 534, 1, -80.6 );
setRotateKey( spep_0-3 + 536, 1, -81.1 );
setRotateKey( spep_0-3 + 538, 1, -81.5 );
setRotateKey( spep_0-3 + 540, 1, -80.9 );
setRotateKey( spep_0-3 + 546, 1, -80.9 );
setRotateKey( spep_0-3 + 548, 1, -79.4 );
setRotateKey( spep_0-3 + 550, 1, -80.5 );
setRotateKey( spep_0-3 + 552, 1, -81.7 );
setRotateKey( spep_0-3 + 554, 1, -82.7 );
setRotateKey( spep_0-3 + 556, 1, -83.7 );
setRotateKey( spep_0-3 + 558, 1, -84.6 );
setRotateKey( spep_0-3 + 560, 1, -85.5 );
setRotateKey( spep_0-3 + 562, 1, -86.3 );
setRotateKey( spep_0-3 + 564, 1, -87 );
setRotateKey( spep_0-3 + 566, 1, -87.7 );
setRotateKey( spep_0-3 + 568, 1, -88.3 );
setRotateKey( spep_0-3 + 570, 1, -88.9 );
setRotateKey( spep_0-3 + 572, 1, -89.4 );
setRotateKey( spep_0-3 + 574, 1, -89.9 );
setRotateKey( spep_0-3 + 576, 1, -90.3 );
setRotateKey( spep_0-3 + 578, 1, -90.6 );
setRotateKey( spep_0-3 + 580, 1, -90.8 );
setRotateKey( spep_0-3 + 582, 1, -91.1 );
setRotateKey( spep_0-3 + 584, 1, -91.2 );
setRotateKey( spep_0-3 + 589, 1, -91.3 );

setRotateKey( spep_0-3 + 590, 1, 46.9 );
setRotateKey( spep_0-3 + 592, 1, 46.8 );
setRotateKey( spep_0-3 + 594, 1, 46.8 );
setRotateKey( spep_0-3 + 596, 1, 46.7 );
setRotateKey( spep_0-3 + 598, 1, 46.5 );
setRotateKey( spep_0-3 + 600, 1, 46.4 );
setRotateKey( spep_0-3 + 602, 1, 46.2 );
setRotateKey( spep_0-3 + 604, 1, 46.1 );
setRotateKey( spep_0-3 + 606, 1, 45.9 );
setRotateKey( spep_0-3 + 608, 1, 45.6 );
setRotateKey( spep_0-3 + 610, 1, 45.4 );
setRotateKey( spep_0-3 + 612, 1, 45.1 );
setRotateKey( spep_0-3 + 614, 1, 44.8 );
setRotateKey( spep_0-3 + 616, 1, 44.5 );
setRotateKey( spep_0-3 + 618, 1, 44.2 );
setRotateKey( spep_0-3 + 620, 1, 43.8 );
setRotateKey( spep_0-3 + 622, 1, 43.4 );
setRotateKey( spep_0-3 + 624, 1, 43 );
setRotateKey( spep_0-3 + 626, 1, 42.5 );
setRotateKey( spep_0-3 + 628, 1, 41.9 );
setRotateKey( spep_0-3 + 630, 1, 41.3 );
setRotateKey( spep_0-3 + 632, 1, 40.6 );
setRotateKey( spep_0-3 + 634, 1, 39.8 );
setRotateKey( spep_0-3 + 636, 1, 38.8 );
setRotateKey( spep_0-1 + 638, 1, 37.3 );

-- ** 音 ** --
--ゴジータ近づいてくる
SE012 = playSe( spep_0 + 182, 1176 );
stopSe( spep_0 + 198, SE012, 14 );
SE013 = playSe( spep_0 + 182, 1158 );
stopSe( spep_0 + 216, SE013, 14 );
SE014 = playSe( spep_0 + 182, 1184 );
setSeVolumeByWorkId( spep_0 + 182, SE014, 79 );
stopSe( spep_0 + 230, SE014, 28 );
SE015 = playSe( spep_0 + 182, 1072 );
SE009 = playSe( spep_0 + 188, 17 );
setSeVolumeByWorkId( spep_0 + 188, SE009, 0 );
setSeVolumeByWorkId( spep_0 + 189, SE009, 10.3 );
setSeVolumeByWorkId( spep_0 + 190, SE009, 20.6 );
setSeVolumeByWorkId( spep_0 + 191, SE009, 30.9 );
setSeVolumeByWorkId( spep_0 + 192, SE009, 41.2 );
setSeVolumeByWorkId( spep_0 + 193, SE009, 51.5 );
setSeVolumeByWorkId( spep_0 + 194, SE009, 61.8 );
setSeVolumeByWorkId( spep_0 + 195, SE009, 72.1 );
setSeVolumeByWorkId( spep_0 + 196, SE009, 82 );
setStartTimeMs( SE009,  783 );
setTimeStretch( SE009, 1.11, 40, 5 );

--見えない拳初撃
SE016 = playSe( spep_0 + 250, 1189 ,"",0.9);
setSeVolumeByWorkId( spep_0 + 250, SE016, 135 );
SE017 = playSe( spep_0 + 254, 1009 ,"",0.9);
SE018 = playSe( spep_0 + 254, 1110 ,"",0.9);
setPitch( spep_0 + 254, SE018, 300 );
setTimeStretch( SE018, 1.2, 40, 5 );
SE019 = playSe( spep_0 + 254, 1169 ,"",0.9);
setSeVolumeByWorkId( spep_0 + 254, SE019, 88 );

--見えない拳連打
SE020 = playSe( spep_0-4 + 260, 1010 ,"",0.85);
SE021 = playSe( spep_0-4 + 260, 1190 ,"",0.85);
stopSe( spep_0-4 + 274, SE021, 10 );
SE022 = playSe( spep_0-4 + 272, 1190 ,"",0.85);
SE023 = playSe( spep_0-4 + 276, 1010 ,"",0.85);
SE024 = playSe( spep_0-4 + 276, 1190 ,"",0.85);
setSeVolumeByWorkId( spep_0-4 + 276, SE024, 89 );
SE025 = playSe( spep_0-4 + 280, 1010 ,"",0.85);
setSeVolumeByWorkId( spep_0-4 + 280, SE025, 87 );
SE026 = playSe( spep_0-4 + 282, 1187 ,"",0.85);
SE027 = playSe( spep_0-4 + 288, 1190 ,"",0.85);
setSeVolumeByWorkId( spep_0-4 + 288, SE027, 78 );
SE028 = playSe( spep_0-4 + 300, 1010 ,"",0.85);
setSeVolumeByWorkId( spep_0-4 + 300, SE028, 80 );
SE029 = playSe( spep_0-4 + 308, 1110 ,"",0.85);
setSeVolumeByWorkId( spep_0-4 + 308, SE029, 69 );

--膝蹴り
SE030 = playSe( spep_0 + 350, 1004 );
SE031 = playSe( spep_0 + 366, 1187 );
setSeVolumeByWorkId( spep_0 + 366, SE031, 77 );
SE032 = playSe( spep_0 + 366, 1011 );
setSeVolumeByWorkId( spep_0 + 366, SE032, 79 );
stopSe( spep_0 + 390, SE032, 30 );
SE033 = playSe( spep_0 + 366, 20 );
setSeVolumeByWorkId( spep_0 + 366, SE033, 82 );
stopSe( spep_0 + 388, SE033, 22 );
SE034 = playSe( spep_0 + 366, 1153 );
setSeVolumeByWorkId( spep_0 + 366, SE034, 77 );
stopSe( spep_0 + 394, SE034, 8 );

--膝蹴り２
SE035 = playSe( spep_0 + 402, 1187 );
setSeVolumeByWorkId( spep_0 + 402, SE035, 80 );
SE036 = playSe( spep_0 + 402, 1011 );
setSeVolumeByWorkId( spep_0 + 402, SE036, 81 );
stopSe( spep_0 + 426, SE036, 32 );
SE037 = playSe( spep_0 + 402, 20 );
setSeVolumeByWorkId( spep_0 + 402, SE037, 80 );
stopSe( spep_0 + 424, SE037, 22 );
SE038 = playSe( spep_0 + 402, 1153 );
setSeVolumeByWorkId( spep_0 + 402, SE038, 83 );
stopSe( spep_0 + 430, SE038, 8 );

--ゴジータ宙返り
SE039 = playSe( spep_0 + 436, 1335 );
SE040 = playSe( spep_0 + 436, 1334 );
setSeVolumeByWorkId( spep_0 + 436, SE040, 123 );
stopSe( spep_0 + 542, SE040, 8 );

--ゴジータ向かってくる
SE041 = playSe( spep_0 + 480, 1153 );
setSeVolumeByWorkId( spep_0 + 480, SE041, 0 );
setSeVolumeByWorkId( spep_0 + 481, SE041, 1 );
setSeVolumeByWorkId( spep_0 + 482, SE041, 2 );
setSeVolumeByWorkId( spep_0 + 483, SE041, 4 );
setSeVolumeByWorkId( spep_0 + 484, SE041, 6 );
setSeVolumeByWorkId( spep_0 + 485, SE041, 10 );
setSeVolumeByWorkId( spep_0 + 486, SE041, 14 );
setSeVolumeByWorkId( spep_0 + 487, SE041, 26.1 );
setSeVolumeByWorkId( spep_0 + 488, SE041, 30.4 );
setSeVolumeByWorkId( spep_0 + 489, SE041, 45.7 );
setSeVolumeByWorkId( spep_0 + 490, SE041, 63 );
setSeVolumeByWorkId( spep_0 + 491, SE041, 69.3 );
setSeVolumeByWorkId( spep_0 + 492, SE041, 75.6 );
setSeVolumeByWorkId( spep_0 + 493, SE041, 81.9 );
setSeVolumeByWorkId( spep_0 + 494, SE041, 88.2 );
setSeVolumeByWorkId( spep_0 + 495, SE041, 94.5 );
setSeVolumeByWorkId( spep_0 + 496, SE041, 100 );
setStartTimeMs( SE041,  40 );
SE042 = playSe( spep_0 + 498, 1170 );
setSeVolumeByWorkId( spep_0 + 498, SE042, 0 );
setSeVolumeByWorkId( spep_0 + 499, SE042, 10.4 );
setSeVolumeByWorkId( spep_0 + 500, SE042, 20.8 );
setSeVolumeByWorkId( spep_0 + 501, SE042, 31.2 );
setSeVolumeByWorkId( spep_0 + 502, SE042, 41.6 );
setSeVolumeByWorkId( spep_0 + 503, SE042, 52 );
setSeVolumeByWorkId( spep_0 + 504, SE042, 62.4 );
setSeVolumeByWorkId( spep_0 + 505, SE042, 72.8 );
setSeVolumeByWorkId( spep_0 + 506, SE042, 83.2 );
setSeVolumeByWorkId( spep_0 + 507, SE042, 93.6 );
setSeVolumeByWorkId( spep_0 + 508, SE042, 104 );
setSeVolumeByWorkId( spep_0 + 509, SE042, 114.4 );
setSeVolumeByWorkId( spep_0 + 510, SE042, 124 );
setStartTimeMs( SE042,  100 );

--サマーソルト
SE043 = playSe( spep_0 + 538, 1003 );
SE044 = playSe( spep_0 + 542, 1187 );
setSeVolumeByWorkId( spep_0 + 542, SE044, 89 );
SE045 = playSe( spep_0 + 542, 1180 );
SE046 = playSe( spep_0 + 542, 1110 );

--回転して着地
SE047 = playSe( spep_0 + 588, 1117 );
stopSe( spep_0 + 618, SE047, 16 );
SE048 = playSe( spep_0 + 608, 1106 );
setSeVolumeByWorkId( spep_0 + 608, SE048, 172 );
SE049 = playSe( spep_0 + 622, 1108 );
setSeVolumeByWorkId( spep_0 + 622, SE049, 164 );

--振り向く
SE050 = playSe( spep_0 + 664, 1072 );
SE051 = playSe( spep_0 + 670, 44 );
setSeVolumeByWorkId( spep_0 + 670, SE051, 68 );
setTimeStretch( SE051, 1.25, 40, 5 );

--気弾手の上で作る
SE052 = playSe( spep_0 + 772, 1214 );
setSeVolumeByWorkId( spep_0 + 772, SE052, 155 );
stopSe( spep_0 + 880, SE052, 58 );
SE053 = playSe( spep_0 + 772, 1271 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 772, SE053, 62 );
setPitch( spep_0 + 772, SE053, 1000 );
setTimeStretch( SE053, 1.67, 40, 5 );
stopSe( spep_0 + 954, SE053, 6 );
SE054 = playSe( spep_0 + 786, 1203 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 786, SE054, 69 );
setPitch( spep_0 + 786, SE054, 200 );
setTimeStretch( SE054, 1.13, 40, 5 );
stopSe( spep_0 + 880, SE054, 40 );
SE055 = playSe( spep_0 + 786, 1275 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 786, SE055, 158 );
setPitch( spep_0 + 786, SE055, -600 );
setTimeStretch( SE055, 0.6, 40, 5 );

--気弾光る
SE056 = playSe( spep_0 + 916, 1289 ,"",0.7);
stopSe( spep_0 + 956, SE056, 22 );
SE057 = playSe( spep_0 + 928, 1290 ,"",0.7);
stopSe( spep_0 + 956, SE057, 8 );
SE058 = playSe( spep_0 + 928, 1277 ,"",0.7);
stopSe( spep_0 + 956, SE058, 8 );

--気弾握る
SE060 = playSe( spep_0 + 952, 1291 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 952, SE060, 72 );
stopSe( spep_0 + 964, SE060, 12 );
SE061 = playSe( spep_0 + 952, 1246 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 952, SE061, 150 );
setPitch( spep_0 + 952, SE061, -400 );
setTimeStretch( SE061, 0.73, 40, 5 );
SE062 = playSe( spep_0 + 952, 1061 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 952, SE062, 134 );
setPitch( spep_0 + 952, SE062, -500 );
setTimeStretch( SE062, 0.67, 40, 5 );
stopSe( spep_0 + 966, SE062, 10 );

--白フェード
entryFade( spep_0 + 970, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+978;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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
playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;

------------------------------------------------------
-- 後半
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 182, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 182, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 182, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 182, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 182, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 182, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 182, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 182, finish_b, 255 );

-- ** エフェクト等 ** --
KO_1 = entryEffect( spep_2 + 178, SP_05, 0x100, -1, 0, 0, 0 , 2000 );  --KO演出(ef_005)
setEffMoveKey( spep_2 + 178, KO_1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 476, KO_1, 0, 0 , 0 );
setEffScaleKey( spep_2 + 178, KO_1, 1.0 , 1.0 );
setEffScaleKey( spep_2 + 476, KO_1, 1.0 , 1.0 );
setEffRotateKey( spep_2 + 178, KO_1, 0 );
setEffRotateKey( spep_2 + 476, KO_1, 0 );
setEffAlphaKey( spep_2 + 178, KO_1, 255 );
setEffAlphaKey( spep_2 + 476, KO_1, 255 );

KO_2 = entryEffectLife( spep_2 + 178, SP_06, 54, 0x100, -1, 0, 0, 0, 1000 );  --KO演出(ef_006)
setEffMoveKey( spep_2 + 178, KO_2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 476, KO_2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 178, KO_2, 1.0 , 1.0 );
setEffScaleKey( spep_2 + 476, KO_2, 1.0 , 1.0 );
setEffRotateKey( spep_2 + 178, KO_2, 0 );
setEffRotateKey( spep_2 + 476, KO_2, 0 );
setEffAlphaKey( spep_2 + 178, KO_2, 255 );
setEffAlphaKey( spep_2 + 476, KO_2, 255 );

--敵の動き
setDisp( spep_2-3 + 60, 1, 1);
setDisp( spep_2-1 + 164, 1, 0);

changeAnime( spep_2-3 + 60, 1, 107);
changeAnime( spep_2-3 + 90, 1, 7);
changeAnime( spep_2-3 + 104, 1, 108);
changeAnime( spep_2-3 + 110, 1, 105);

setBlendColor( spep_2-3 + 90, 1, 3, 0.14, 0.35, 0.16, 0.45);
setBlendColor( spep_2 + 164, 1, 3, 0.14, 0.35, 0.16, 0.45);
setBlendColor( spep_2 + 165, 1, 3, 0.14, 0.35, 0.16, 0);

setMoveKey( spep_2-3 + 60, 1, 44, 948.5 , 0 );
setMoveKey( spep_2-3 + 62, 1, 0.2, 317.6 , 0 );
setMoveKey( spep_2-3 + 64, 1, -12.2, 139.1 , 0 );
setMoveKey( spep_2-3 + 66, 1, -16.6, 72.8 , 0 );
setMoveKey( spep_2-3 + 68, 1, -17.6, 70 , 0 );
setMoveKey( spep_2-3 + 70, 1, -18.6, 67.5 , 0 );
setMoveKey( spep_2-3 + 72, 1, -19.4, 65.3 , 0 );
setMoveKey( spep_2-3 + 74, 1, -20.1, 63.4 , 0 );
setMoveKey( spep_2-3 + 76, 1, -20.7, 61.8 , 0 );
setMoveKey( spep_2-3 + 78, 1, -21.2, 60.5 , 0 );
setMoveKey( spep_2-3 + 80, 1, -21.6, 59.4 , 0 );
setMoveKey( spep_2-3 + 82, 1, -21.8, 58.7 , 0 );
setMoveKey( spep_2-3 + 84, 1, -22, 58.3 , 0 );
setMoveKey( spep_2-3 + 86, 1, -22.1, 58.1 , 0 );
setMoveKey( spep_2-3 + 89, 1, -22.1, 58.1 , 0 );

setMoveKey( spep_2-3 + 90, 1, -88.1, -943.6 , 0 );
setMoveKey( spep_2-3 + 92, 1, -88.7, -902.1 , 0 );
setMoveKey( spep_2-3 + 94, 1, -89.2, -860.6 , 0 );
setMoveKey( spep_2-3 + 96, 1, -89.8, -819 , 0 );
setMoveKey( spep_2-3 + 98, 1, -90.4, -777.5 , 0 );
setMoveKey( spep_2-3 + 100, 1, -91, -736 , 0 );
setMoveKey( spep_2-3 + 102, 1, -91.6, -694.5 , 0 );
setMoveKey( spep_2-3 + 103, 1, -91.6, -694.5 , 0 );

setMoveKey( spep_2-3 + 104, 1, 63.2, -75.6 , 0 );
setMoveKey( spep_2-3 + 106, 1, 56.7, -30 , 0 );
setMoveKey( spep_2-3 + 108, 1, 54.6, -14.7 , 0 );
setMoveKey( spep_2-3 + 109, 1, 54.6, -14.7 , 0 );

a=-48;

setMoveKey( spep_2-3 + 110, 1, 55.6+a, -14.7 , 0 );
setMoveKey( spep_2-3 + 112, 1, 50.5+a, -14.7 , 0 );
setMoveKey( spep_2-3 + 114, 1, 48.6+a, -14.7 , 0 );
setMoveKey( spep_2-3 + 116, 1, 47.3+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 118, 1, 46.3+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 120, 1, 45.4+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 122, 1, 44.7+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 124, 1, 44+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 126, 1, 43.5+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 128, 1, 43+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 130, 1, 42.5+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 132, 1, 42.2+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 134, 1, 41.8+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 136, 1, 41.5+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 138, 1, 41.2+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 140, 1, 40.9+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 142, 1, 40.7+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 144, 1, 40.4+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 146, 1, 40.2+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 148, 1, 40+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 150, 1, 39.9+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 152, 1, 39.7+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 154, 1, 39.6+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 156, 1, 39.5+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 158, 1, 39.4+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 160, 1, 39.3+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 162, 1, 39.2+a, -14.5 , 0 );
setMoveKey( spep_2-1 + 164, 1, 39.1+a, -14.5 , 0 );

setScaleKey( spep_2-3 + 60, 1, 3.36, 3.36 );
setScaleKey( spep_2-3 + 62, 1, 1.97, 1.97 );
setScaleKey( spep_2-3 + 64, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 66, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 68, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 70, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 72, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 74, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 76, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 80, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 82, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 89, 1, 1.47, 1.47 );

setScaleKey( spep_2-3 + 90, 1, 4.87, 4.87 );
setScaleKey( spep_2-3 + 92, 1, 4.71, 4.71 );
setScaleKey( spep_2-3 + 94, 1, 4.54, 4.54 );
setScaleKey( spep_2-3 + 96, 1, 4.38, 4.38 );
setScaleKey( spep_2-3 + 98, 1, 4.21, 4.21 );
setScaleKey( spep_2-3 + 100, 1, 4.05, 4.05 );
setScaleKey( spep_2-3 + 102, 1, 3.88, 3.88 );
setScaleKey( spep_2-3 + 103, 1, 3.88, 3.88 );

setScaleKey( spep_2-3 + 104, 1, 5.88, 5.88 );
setScaleKey( spep_2-3 + 106, 1, 4.64, 4.64 );
setScaleKey( spep_2-3 + 108, 1, 4.23, 4.23 );
setScaleKey( spep_2-3 + 109, 1, 4.23, 4.23 );

setScaleKey( spep_2-3 + 110, 1, 2.72, 2.72 );
setScaleKey( spep_2-3 + 112, 1, 2.39, 2.39 );
setScaleKey( spep_2-3 + 114, 1, 2.28, 2.28 );
setScaleKey( spep_2-3 + 116, 1, 2.19, 2.19 );
setScaleKey( spep_2-3 + 118, 1, 2.13, 2.13 );
setScaleKey( spep_2-3 + 120, 1, 2.07, 2.07 );
setScaleKey( spep_2-3 + 122, 1, 2.03, 2.03 );
setScaleKey( spep_2-3 + 124, 1, 1.99, 1.99 );
setScaleKey( spep_2-3 + 126, 1, 1.95, 1.95 );
setScaleKey( spep_2-3 + 128, 1, 1.92, 1.92 );
setScaleKey( spep_2-3 + 130, 1, 1.89, 1.89 );
setScaleKey( spep_2-3 + 132, 1, 1.87, 1.87 );
setScaleKey( spep_2-3 + 134, 1, 1.85, 1.85 );
setScaleKey( spep_2-3 + 136, 1, 1.83, 1.83 );
setScaleKey( spep_2-3 + 138, 1, 1.81, 1.81 );
setScaleKey( spep_2-3 + 140, 1, 1.79, 1.79 );
setScaleKey( spep_2-3 + 142, 1, 1.77, 1.77 );
setScaleKey( spep_2-3 + 144, 1, 1.76, 1.76 );
setScaleKey( spep_2-3 + 146, 1, 1.75, 1.75 );
setScaleKey( spep_2-3 + 148, 1, 1.74, 1.74 );
setScaleKey( spep_2-3 + 150, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 152, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 154, 1, 1.71, 1.71 );
setScaleKey( spep_2-3 + 156, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 158, 1, 1.69, 1.69 );
setScaleKey( spep_2-3 + 160, 1, 1.69, 1.69 );
setScaleKey( spep_2-3 + 162, 1, 1.68, 1.68 );
setScaleKey( spep_2-1 + 164, 1, 1.67, 1.67 );

setRotateKey( spep_2-3 + 60, 1, 0 );
setRotateKey( spep_2-3 + 89, 1, 0 );

setRotateKey( spep_2-3 + 90, 1, 117.8 );
setRotateKey( spep_2-3 + 103, 1, 117.8 );

setRotateKey( spep_2-3 + 104, 1, 0 );
setRotateKey( spep_2-3 + 164, 1, 0 );

-- ** 音 ** --
--振りかぶる
SE064 = playSe( spep_2 + 2, 1277 );
setSeVolumeByWorkId( spep_2 + 2, SE064, 100 );
setPitch( spep_2 + 2, SE064, -200 );
setTimeStretch( SE064, 0.87, 40, 5 );
stopSe( spep_2 + 36, SE064, 13 );

--気弾投げる
SE065 = playSe( spep_2 + 28, 1117 );
SE066 = playSe( spep_2 + 28, 8 );
setSeVolumeByWorkId( spep_2 + 28, SE066, 120 );
setPitch( spep_2 + 28, SE066, 400 );
setTimeStretch( SE066, 1.27, 40, 5 );
SE067 = playSe( spep_2 + 28, 1178 );
setSeVolumeByWorkId( spep_2 + 28, SE067, 73 );
stopSe( spep_2 + 48, SE067, 12 );

--気弾ヒット
SE059 = playSe( spep_2 + 48, 1336 );
setSeVolumeByWorkId( spep_2 + 48, SE059, 0 );
setSeVolumeByWorkId( spep_2 + 49, SE059, 8.3 );
setSeVolumeByWorkId( spep_2 + 50, SE059, 16.6 );
setSeVolumeByWorkId( spep_2 + 51, SE059, 24.9 );
setSeVolumeByWorkId( spep_2 + 52, SE059, 33.2 );
setSeVolumeByWorkId( spep_2 + 53, SE059, 41.5 );
setSeVolumeByWorkId( spep_2 + 54, SE059, 49.8 );
setSeVolumeByWorkId( spep_2 + 55, SE059, 58.1 );
setSeVolumeByWorkId( spep_2 + 56, SE059, 66.4 );
setSeVolumeByWorkId( spep_2 + 57, SE059, 74.7 );
setSeVolumeByWorkId( spep_2 + 58, SE059, 83 );
setSeVolumeByWorkId( spep_2 + 59, SE059, 91.3 );
setSeVolumeByWorkId( spep_2 + 60, SE059, 100 );
setStartTimeMs( SE059,  3333 );
SE068 = playSe( spep_2 + 64, 1320 );
setSeVolumeByWorkId( spep_2 + 64, SE068, 0 );
setSeVolumeByWorkId( spep_2 + 65, SE068, 8.7 );
setSeVolumeByWorkId( spep_2 + 66, SE068, 17.4 );
setSeVolumeByWorkId( spep_2 + 67, SE068, 26.1 );
setSeVolumeByWorkId( spep_2 + 68, SE068, 34.8 );
setSeVolumeByWorkId( spep_2 + 69, SE068, 43.5 );
setSeVolumeByWorkId( spep_2 + 70, SE068, 52 );
setStartTimeMs( SE068,  567 );
SE069 = playSe( spep_2 + 62, 1273 );
setSeVolumeByWorkId( spep_2 + 62, SE069, 0 );
setSeVolumeByWorkId( spep_2 + 63, SE069, 50 );
setSeVolumeByWorkId( spep_2 + 64, SE069, 100 );
setStartTimeMs( SE069,  17 );
setPitch( spep_2 + 62, SE069, -400 );
setTimeStretch( SE069, 0.73, 40, 5 );
SE070 = playSe( spep_2 + 62, 1283 );
setPitch( spep_2 + 62, SE070, -200 );
setTimeStretch( SE070, 0.87, 40, 5 );
stopSe( spep_2 + 70, SE070, 4 );

--爆発
SE071 = playSe( spep_2 + 88, 1024 );
setSeVolumeByWorkId( spep_2 + 88, SE071, 65 );
SE072 = playSe( spep_2 + 88, 1188 );
setSeVolumeByWorkId( spep_2 + 88, SE072, 79 );
SE073 = playSe( spep_2 + 94, 1067 );

--終わり
hideKoScreen();
dealDamage( spep_2 +88 -12 );
endPhase( spep_2 + 180 );

else

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 前半
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 978, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 978, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 978, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 978, tame_f, 255 );
setEffAlphaKey( spep_0 + 979, tame_f, 0 );
setEffAlphaKey( spep_0 + 980, tame_f, 0 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 978, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 978, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 978, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 978, tame_b, 255 );
setEffAlphaKey( spep_0 + 979, tame_b, 0 );
setEffAlphaKey( spep_0 + 980, tame_b, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--環境音
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 13 );
stopSe( spep_0 + 108, SE001, 30 );

--顔カットイン
SE002 = playSe( spep_x + 12, 1018 );

--気が揺れる
SE003 = playSe( spep_0 + 94, 1284 );
setSeVolumeByWorkId( spep_0 + 94, SE003, 0 );
setSeVolumeByWorkId( spep_0 + 95, SE003, 30.1 );
setSeVolumeByWorkId( spep_0 + 96, SE003, 60.2 );
setSeVolumeByWorkId( spep_0 + 97, SE003, 90.3 );
setSeVolumeByWorkId( spep_0 + 98, SE003, 120 );
stopSe( spep_0 + 134, SE003, 52 );
setStartTimeMs( SE003,  283 );
setPitch( spep_0 + 94, SE003, -100 );
setTimeStretch( SE003, 0.93, 10, 1 );
SE004 = playSe( spep_0 + 94, 1027 );
SE005 = playSe( spep_0 + 94, 1060 );
setSeVolumeByWorkId( spep_0 + 94, SE005, 81 );
stopSe( spep_0 + 174, SE005, 12 );

--透明な拳が飛んでくる
SE006 = playSe( spep_0 + 142, 1290 );
setSeVolumeByWorkId( spep_0 + 142, SE006, 0 );
setSeVolumeByWorkId( spep_0 + 143, SE006, 50 );
setSeVolumeByWorkId( spep_0 + 144, SE006, 100 );
setStartTimeMs( SE006,  133 );
setPitch( spep_0 + 142, SE006, -1100 );
setTimeStretch( SE006, 0.27, 40, 5 );
stopSe( spep_0 + 172, SE006, 12 );
SE007 = playSe( spep_0 + 140, 1179 );
setSeVolumeByWorkId( spep_0 + 140, SE007, 101 );
stopSe( spep_0 + 186, SE007, 4 );
SE008 = playSe( spep_0 + 142, 1277 );
setSeVolumeByWorkId( spep_0 + 142, SE008, 244 );
stopSe( spep_0 + 172, SE008, 12 );
setPitch( spep_0 + 142, SE008, -500 );
setTimeStretch( SE008, 0.67, 40, 5 );
SE010 = playSe( spep_0 + 164, 1290 );
setSeVolumeByWorkId( spep_0 + 164, SE010, 0 );
setSeVolumeByWorkId( spep_0 + 165, SE010, 15 );
setSeVolumeByWorkId( spep_0 + 166, SE010, 50 );
setSeVolumeByWorkId( spep_0 + 167, SE010, 117 );
setSeVolumeByWorkId( spep_0 + 190,SE010,117);
setSeVolumeByWorkId( spep_0 + 191,SE010,129.3);
setSeVolumeByWorkId( spep_0 + 192,SE010,141.6);
--[[
setSeVolumeByWorkId( spep_0 + 193,SE010,153.9);
setSeVolumeByWorkId( spep_0 + 194,SE010,166.2);
setSeVolumeByWorkId( spep_0 + 195,SE010,178.5);
setSeVolumeByWorkId( spep_0 + 196,SE010,190.8);
setSeVolumeByWorkId( spep_0 + 197,SE010,203.1);
setSeVolumeByWorkId( spep_0 + 198,SE010,215.4);
setSeVolumeByWorkId( spep_0 + 199,SE010,227.7);
setSeVolumeByWorkId( spep_0 + 200,SE010,240);
setSeVolumeByWorkId( spep_0 + 201,SE010,252.3);
setSeVolumeByWorkId( spep_0 + 202,SE010,264.6);
setSeVolumeByWorkId( spep_0 + 203,SE010,276.9);
setSeVolumeByWorkId( spep_0 + 204,SE010,289.2);
setSeVolumeByWorkId( spep_0 + 205,SE010,301.5);
setSeVolumeByWorkId( spep_0 + 206,SE010,313.8);
setSeVolumeByWorkId( spep_0 + 207,SE010,326.1);
setSeVolumeByWorkId( spep_0 + 208,SE010,338.4);
setSeVolumeByWorkId( spep_0 + 209,SE010,350.7);
setSeVolumeByWorkId( spep_0 + 210,SE010,363);
setSeVolumeByWorkId( spep_0 + 211,SE010,375.3);
setSeVolumeByWorkId( spep_0 + 212,SE010,387.6);
setSeVolumeByWorkId( spep_0 + 213,SE010,399.9);
setSeVolumeByWorkId( spep_0 + 214,SE010,412.2);
setSeVolumeByWorkId( spep_0 + 215,SE010,424.5);
setSeVolumeByWorkId( spep_0 + 216,SE010,436.8);
setSeVolumeByWorkId( spep_0 + 217,SE010,449.1);
setSeVolumeByWorkId( spep_0 + 218,SE010,461.4);
setSeVolumeByWorkId( spep_0 + 219,SE010,473.7);
setSeVolumeByWorkId( spep_0 + 220,SE010,486);
setSeVolumeByWorkId( spep_0 + 221,SE010,498.3);
setSeVolumeByWorkId( spep_0 + 222,SE010,510.6);
setSeVolumeByWorkId( spep_0 + 223,SE010,522.9);
setSeVolumeByWorkId( spep_0 + 224,SE010,535.2);
setSeVolumeByWorkId( spep_0 + 225,SE010,547.5);
setSeVolumeByWorkId( spep_0 + 226,SE010,560);
]]
setStartTimeMs( SE010,  167 );
setPitch( spep_0 + 164, SE010, -1200 );
setTimeStretch( SE010, 0.76, 40, 5 );
SE011 = playSe( spep_0 + 166, 1277 );
setSeVolumeByWorkId( spep_0 + 166, SE011, 237 );
setSeVolumeByWorkId( spep_0 + 190,SE011,237);
setSeVolumeByWorkId( spep_0 + 191,SE011,245.97);
setSeVolumeByWorkId( spep_0 + 192,SE011,254.94);
setSeVolumeByWorkId( spep_0 + 193,SE011,263.91);
setSeVolumeByWorkId( spep_0 + 194,SE011,272.88);
setSeVolumeByWorkId( spep_0 + 195,SE011,281.85);
setSeVolumeByWorkId( spep_0 + 196,SE011,290.82);
setSeVolumeByWorkId( spep_0 + 197,SE011,299.79);
setSeVolumeByWorkId( spep_0 + 198,SE011,308.76);
setSeVolumeByWorkId( spep_0 + 199,SE011,317.73);
setSeVolumeByWorkId( spep_0 + 200,SE011,326.7);
setSeVolumeByWorkId( spep_0 + 201,SE011,335.67);
setSeVolumeByWorkId( spep_0 + 202,SE011,344.64);
setSeVolumeByWorkId( spep_0 + 203,SE011,353.61);
setSeVolumeByWorkId( spep_0 + 204,SE011,362.58);
setSeVolumeByWorkId( spep_0 + 205,SE011,371.55);
setSeVolumeByWorkId( spep_0 + 206,SE011,380.52);
setSeVolumeByWorkId( spep_0 + 207,SE011,389.49);
setSeVolumeByWorkId( spep_0 + 208,SE011,398.46);
setSeVolumeByWorkId( spep_0 + 209,SE011,407.43);
setSeVolumeByWorkId( spep_0 + 210,SE011,416.4);
setSeVolumeByWorkId( spep_0 + 211,SE011,425.37);
setSeVolumeByWorkId( spep_0 + 212,SE011,434.34);
setSeVolumeByWorkId( spep_0 + 213,SE011,443.31);
setSeVolumeByWorkId( spep_0 + 214,SE011,452.28);
setSeVolumeByWorkId( spep_0 + 215,SE011,461.25);
setSeVolumeByWorkId( spep_0 + 216,SE011,470.22);
setSeVolumeByWorkId( spep_0 + 217,SE011,479.19);
setSeVolumeByWorkId( spep_0 + 218,SE011,488.16);
setSeVolumeByWorkId( spep_0 + 219,SE011,497.13);
setSeVolumeByWorkId( spep_0 + 220,SE011,506.10);
setSeVolumeByWorkId( spep_0 + 221,SE011,515.07);
setSeVolumeByWorkId( spep_0 + 222,SE011,524.04);
setSeVolumeByWorkId( spep_0 + 223,SE011,533.01);
setSeVolumeByWorkId( spep_0 + 224,SE011,541.98);
setSeVolumeByWorkId( spep_0 + 225,SE011,550.95);
setSeVolumeByWorkId( spep_0 + 226,SE011,560);
setPitch( spep_0 + 166, SE011, -800 );
setTimeStretch( SE011, 0.57, 40, 5 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 980, 0,  0, 0, 0, 255 ); --くろ 背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 200; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );

    pauseAll( SP_dodge, 67 );

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

    endPhase( SP_dodge + 10 );

    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--文字エントリー
ctga = entryEffectLife( spep_0-3 + 256,  10005, 26, 0x100, -1, 0, -165.3, 139.9 );--ガッ

setEffMoveKey( spep_0-3 + 256, ctga, -165.3, 139.9 , 0 );
setEffMoveKey( spep_0-3 + 258, ctga, -190.9, 191.5 , 0 );
setEffMoveKey( spep_0-3 + 260, ctga, -187.5, 198.1 , 0 );
setEffMoveKey( spep_0-3 + 262, ctga, -192.6, 195 , 0 );
setEffMoveKey( spep_0-3 + 264, ctga, -188.2, 199.9 , 0 );
setEffMoveKey( spep_0-3 + 266, ctga, -191.4, 194.5 , 0 );
setEffMoveKey( spep_0-3 + 268, ctga, -191, 202.1 , 0 );
setEffMoveKey( spep_0-3 + 270, ctga, -193.2, 196.2 , 0 );
setEffMoveKey( spep_0-3 + 272, ctga, -189.6, 201.5 , 0 );
setEffMoveKey( spep_0-3 + 274, ctga, -194.6, 201 , 0 );
setEffMoveKey( spep_0-3 + 276, ctga, -193.8, 198.6 , 0 );
setEffMoveKey( spep_0-3 + 278, ctga, -191, 207.3 , 0 );
setEffMoveKey( spep_0-3 + 280, ctga, -197.2, 205.8 , 0 );
setEffMoveKey( spep_0-3 + 282, ctga, -198.4, 208.4 , 0 );

setEffScaleKey( spep_0-3 + 256, ctga, 1.46, 1.46 );
setEffScaleKey( spep_0-3 + 258, ctga, 1.94, 1.94 );
setEffScaleKey( spep_0-3 + 260, ctga, 1.95, 1.95 );
setEffScaleKey( spep_0-3 + 262, ctga, 1.95, 1.95 );
setEffScaleKey( spep_0-3 + 264, ctga, 1.96, 1.96 );
setEffScaleKey( spep_0-3 + 266, ctga, 1.97, 1.97 );
setEffScaleKey( spep_0-3 + 268, ctga, 1.98, 1.98 );
setEffScaleKey( spep_0-3 + 270, ctga, 1.98, 1.98 );
setEffScaleKey( spep_0-3 + 272, ctga, 1.99, 1.99 );
setEffScaleKey( spep_0-3 + 274, ctga, 2, 2 );
setEffScaleKey( spep_0-3 + 276, ctga, 2.01, 2.01 );
setEffScaleKey( spep_0-3 + 278, ctga, 2.03, 2.03 );
setEffScaleKey( spep_0-3 + 280, ctga, 2.06, 2.06 );
setEffScaleKey( spep_0-3 + 282, ctga, 2.08, 2.08 );

setEffRotateKey( spep_0-3 + 256, ctga, -24.9 );
setEffRotateKey( spep_0-3 + 282, ctga, -24.9 );

setEffAlphaKey( spep_0-3 + 256, ctga, 128 );
setEffAlphaKey( spep_0-3 + 258, ctga, 255 );
setEffAlphaKey( spep_0-3 + 276, ctga, 255 );
setEffAlphaKey( spep_0-3 + 278, ctga, 170 );
setEffAlphaKey( spep_0-3 + 280, ctga, 85 );
setEffAlphaKey( spep_0-3 + 282, ctga, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_0-3 + 260,  10020, 26, 0x100, -1, 0, 172, 323.5 );--バキッ

setEffMoveKey( spep_0-3 + 260, ctbaki, 172, 323.5 , 0 );
setEffMoveKey( spep_0-3 + 262, ctbaki, 187.5, 334.6 , 0 );
setEffMoveKey( spep_0-3 + 264, ctbaki, 193.3, 357.6 , 0 );
setEffMoveKey( spep_0-3 + 266, ctbaki, 195.5, 348.5 , 0 );
setEffMoveKey( spep_0-3 + 268, ctbaki, 190.6, 343.7 , 0 );
setEffMoveKey( spep_0-3 + 270, ctbaki, 196.7, 346.6 , 0 );
setEffMoveKey( spep_0-3 + 272, ctbaki, 191.7, 340.7 , 0 );
setEffMoveKey( spep_0-3 + 274, ctbaki, 208.2, 352.1 , 0 );
setEffMoveKey( spep_0-3 + 276, ctbaki, 189.1, 346.1 , 0 );
setEffMoveKey( spep_0-3 + 278, ctbaki, 198, 348.6 , 0 );
setEffMoveKey( spep_0-3 + 280, ctbaki, 188.3, 345.5 , 0 );
setEffMoveKey( spep_0-3 + 282, ctbaki, 192, 340.5 , 0 );
setEffMoveKey( spep_0-3 + 284, ctbaki, 185.1, 346.6 , 0 );
setEffMoveKey( spep_0-3 + 286, ctbaki, 180.5, 340.3 , 0 );

setEffScaleKey( spep_0-3 + 260, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_0-3 + 262, ctbaki, 1.82, 1.82 );
setEffScaleKey( spep_0-3 + 264, ctbaki, 1.95, 1.95 );
setEffScaleKey( spep_0-3 + 270, ctbaki, 1.95, 1.95 );
setEffScaleKey( spep_0-3 + 272, ctbaki, 1.96, 1.96 );
setEffScaleKey( spep_0-3 + 280, ctbaki, 1.96, 1.96 );
setEffScaleKey( spep_0-3 + 282, ctbaki, 1.9, 1.9 );
setEffScaleKey( spep_0-3 + 284, ctbaki, 1.83, 1.83 );
setEffScaleKey( spep_0-3 + 286, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_0-3 + 260, ctbaki, 36.7 );
setEffRotateKey( spep_0-3 + 286, ctbaki, 36.7 );

setEffAlphaKey( spep_0-3 + 260, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 280, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 282, ctbaki, 170 );
setEffAlphaKey( spep_0-3 + 284, ctbaki, 85 );
setEffAlphaKey( spep_0-3 + 286, ctbaki, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_0-3 + 364,  10019, 20, 0x100, -1, 0, -81.6, 296.3 );--ドンッ

setEffMoveKey( spep_0-3 + 364, ctdon, -81.6, 296.3 , 0 );
setEffMoveKey( spep_0-3 + 366, ctdon, -86.9, 360.1 , 0 );
setEffMoveKey( spep_0-3 + 368, ctdon, -84.1, 379.6 , 0 );
setEffMoveKey( spep_0-3 + 370, ctdon, -88.1, 382.4 , 0 );
setEffMoveKey( spep_0-3 + 372, ctdon, -85.9, 378.9 , 0 );
setEffMoveKey( spep_0-3 + 374, ctdon, -89, 387.2 , 0 );
setEffMoveKey( spep_0-3 + 376, ctdon, -87.6, 381.6 , 0 );
setEffMoveKey( spep_0-3 + 378, ctdon, -82.7, 386.8 , 0 );
setEffMoveKey( spep_0-3 + 380, ctdon, -90.2, 386.3 , 0 );
setEffMoveKey( spep_0-3 + 382, ctdon, -84, 391.3 , 0 );
setEffMoveKey( spep_0-3 + 384, ctdon, -84.1, 393.3 , 0 );

setEffScaleKey( spep_0-3 + 364, ctdon, 1.27, 1.27 );
setEffScaleKey( spep_0-3 + 366, ctdon, 1.85, 1.85 );
setEffScaleKey( spep_0-3 + 368, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_0-3 + 370, ctdon, 2.07, 2.07 );
setEffScaleKey( spep_0-3 + 372, ctdon, 2.1, 2.1 );
setEffScaleKey( spep_0-3 + 374, ctdon, 2.13, 2.13 );
setEffScaleKey( spep_0-3 + 376, ctdon, 2.16, 2.16 );
setEffScaleKey( spep_0-3 + 378, ctdon, 2.19, 2.19 );
setEffScaleKey( spep_0-3 + 380, ctdon, 2.24, 2.24 );
setEffScaleKey( spep_0-3 + 382, ctdon, 2.28, 2.28 );
setEffScaleKey( spep_0-3 + 384, ctdon, 2.33, 2.33 );

setEffRotateKey( spep_0-3 + 364, ctdon, 0 );
setEffRotateKey( spep_0-3 + 384, ctdon, 0 );

setEffAlphaKey( spep_0-3 + 364, ctdon, 255 );
setEffAlphaKey( spep_0-3 + 378, ctdon, 255 );
setEffAlphaKey( spep_0-3 + 380, ctdon, 170 );
setEffAlphaKey( spep_0-3 + 382, ctdon, 85 );
setEffAlphaKey( spep_0-3 + 384, ctdon, 0 );


--敵の動き1
setDisp( spep_0-3 + 232, 1, 1);
setDisp( spep_0-1 + 294, 1, 0);

changeAnime( spep_0-3 + 232, 1, 100);
changeAnime( spep_0-3 + 256, 1, 108);
changeAnime( spep_0-3 + 262, 1, 106);
changeAnime( spep_0-3 + 268, 1, 5);

setMoveKey( spep_0-3 + 232, 1, 0.1, -14.3 , 0 );
setMoveKey( spep_0-3 + 234, 1, 0, -6.6 , 0 );
setMoveKey( spep_0-3 + 236, 1, -0.1, -4.3 , 0 );
setMoveKey( spep_0-3 + 238, 1, -0.1, -2.8 , 0 );
setMoveKey( spep_0-3 + 240, 1, -0.1, -1.8 , 0 );
setMoveKey( spep_0-3 + 242, 1, -0.1, -1.2 , 0 );
setMoveKey( spep_0-3 + 244, 1, -0.1, -0.7 , 0 );
setMoveKey( spep_0-3 + 246, 1, -0.1, -0.3 , 0 );
setMoveKey( spep_0-3 + 248, 1, -0.1, -0.1 , 0 );
setMoveKey( spep_0-3 + 250, 1, -0.1, 0 , 0 );
setMoveKey( spep_0-3 + 252, 1, -0.1, 0.1 , 0 );
setMoveKey( spep_0-3 + 255, 1, -0.1, 0.1 , 0 );

setMoveKey( spep_0-3 + 256, 1, 15.3, 35.7 , 0 );
setMoveKey( spep_0-3 + 258, 1, 52.5, -4.8 , 0 );
setMoveKey( spep_0-3 + 260, 1, 57.5, 8.2 , 0 );
setMoveKey( spep_0-3 + 261, 1, 57.5, 8.2 , 0 );

setMoveKey( spep_0-3 + 262, 1, -24.7, 60.9 , 0 );
setMoveKey( spep_0-3 + 264, 1, -32.5, 46.9 , 0 );
setMoveKey( spep_0-3 + 266, 1, -54.8, 65.9 , 0 );
setMoveKey( spep_0-3 + 267, 1, -54.8, 65.9 , 0 );

setMoveKey( spep_0-3 + 268, 1, -8.6, 23.5 , 0 );
setMoveKey( spep_0-3 + 270, 1, -2, 29.4 , 0 );
setMoveKey( spep_0-3 + 272, 1, -9.1, 22.9 , 0 );
setMoveKey( spep_0-3 + 274, 1, -1.2, 29.8 , 0 );
setMoveKey( spep_0-3 + 276, 1, -2.5, 23.6 , 0 );
setMoveKey( spep_0-3 + 278, 1, -6.7, 26 , 0 );
setMoveKey( spep_0-3 + 280, 1, -2, 25.9 , 0 );
setMoveKey( spep_0-3 + 282, 1, -4.5, 24.9 , 0 );
setMoveKey( spep_0-3 + 284, 1, -2.8, 26.9 , 0 );
setMoveKey( spep_0-3 + 286, 1, -3.5, 24.7 , 0 );
setMoveKey( spep_0-3 + 288, 1, -3.7, 26.5 , 0 );
setMoveKey( spep_0-3 + 290, 1, -3.7, 25.1 , 0 );
setMoveKey( spep_0-3 + 292, 1, -3.7, 25.3 , 0 );
setMoveKey( spep_0-1 + 294, 1, -3.7, 25.5 , 0 );

setScaleKey( spep_0-3 + 232, 1, 3.54, 3.54 );
setScaleKey( spep_0-3 + 234, 1, 3.19, 3.19 );
setScaleKey( spep_0-3 + 236, 1, 3.08, 3.08 );
setScaleKey( spep_0-3 + 238, 1, 3.01, 3.01 );
setScaleKey( spep_0-3 + 240, 1, 2.97, 2.97 );
setScaleKey( spep_0-3 + 242, 1, 2.94, 2.94 );
setScaleKey( spep_0-3 + 244, 1, 2.91, 2.91 );
setScaleKey( spep_0-3 + 246, 1, 2.9, 2.9 );
setScaleKey( spep_0-3 + 248, 1, 2.89, 2.89 );
setScaleKey( spep_0-3 + 250, 1, 2.88, 2.88 );
setScaleKey( spep_0-3 + 255, 1, 2.88, 2.88 );

setScaleKey( spep_0-3 + 256, 1, 3.11, 3.11 );
setScaleKey( spep_0-3 + 258, 1, 2.82, 2.82 );
setScaleKey( spep_0-3 + 260, 1, 2.66, 2.66 );
setScaleKey( spep_0-3 + 261, 1, 2.66, 2.66 );

setScaleKey( spep_0-3 + 262, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 264, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 266, 1, 2.23, 2.23 );
setScaleKey( spep_0-3 + 267, 1, 2.23, 2.23 );

setScaleKey( spep_0-3 + 268, 1, 2.14, 2.14 );
setScaleKey( spep_0-3 + 270, 1, 2.07, 2.07 );
setScaleKey( spep_0-3 + 272, 1, 2.02, 2.02 );
setScaleKey( spep_0-3 + 274, 1, 1.96, 1.96 );
setScaleKey( spep_0-3 + 276, 1, 1.91, 1.91 );
setScaleKey( spep_0-3 + 278, 1, 1.87, 1.87 );
setScaleKey( spep_0-3 + 280, 1, 1.83, 1.83 );
setScaleKey( spep_0-3 + 282, 1, 1.8, 1.8 );
setScaleKey( spep_0-3 + 284, 1, 1.77, 1.77 );
setScaleKey( spep_0-3 + 286, 1, 1.74, 1.74 );
setScaleKey( spep_0-3 + 288, 1, 1.73, 1.73 );
setScaleKey( spep_0-3 + 290, 1, 1.71, 1.71 );
setScaleKey( spep_0-1 + 294, 1, 1.7, 1.7 );

setRotateKey( spep_0-3 + 232, 1, 0 );
setRotateKey( spep_0-3 + 261, 1, 0 );

setRotateKey( spep_0-3 + 262, 1, -44.9 );
setRotateKey( spep_0-3 + 267, 1, -44.9 );

setRotateKey( spep_0-3 + 268, 1, 0 );
setRotateKey( spep_0-1 + 294, 1, 0 );

--敵の動き2
setDisp( spep_0-3 + 360, 1, 1);
setDisp( spep_0-1 + 434, 1, 0);

changeAnime( spep_0-3 + 360, 1, 106);

b=60;

setMoveKey( spep_0-3 + 360, 1, -58.9, 2.9-b , 0 );
setMoveKey( spep_0-3 + 362, 1, -58.9, 2.9-b , 0 );
setMoveKey( spep_0-3 + 364, 1, -132.9, -39-b , 0 );
setMoveKey( spep_0-3 + 366, 1, -132.9, -39-b , 0 );
setMoveKey( spep_0-3 + 368, 1, -144.8, -33.1-b , 0 );
setMoveKey( spep_0-3 + 370, 1, -135.9, -41-b , 0 );
setMoveKey( spep_0-3 + 372, 1, -135.9, -36-b , 0 );
setMoveKey( spep_0-3 + 374, 1, -121.8, -36.1-b , 0 );
setMoveKey( spep_0-3 + 376, 1, -205.7, -25-b , 0 );
setMoveKey( spep_0-3 + 378, 1, -196.8, -24.2-b , 0 );
setMoveKey( spep_0-3 + 380, 1, -165.8, -21.5-b , 0 );
setMoveKey( spep_0-3 + 382, 1, -156.8, -22.8-b , 0 );
setMoveKey( spep_0-3 + 384, 1, -158, -19.2-b , 0 );
setMoveKey( spep_0-3 + 386, 1, -140.1, -20.6-b , 0 );
setMoveKey( spep_0-3 + 388, 1, -137.2, -18.1-b , 0 );
setMoveKey( spep_0-3 + 390, 1, -134.4, -16.6-b , 0 );
setMoveKey( spep_0-3 + 392, 1, -121.5, -19.2-b , 0 );
setMoveKey( spep_0-3 + 394, 1, -113.8, -17.9-b , 0 );
setMoveKey( spep_0-3 + 396, 1, -103, -17.6-b , 0 );
setMoveKey( spep_0-3 + 398, 1, -99.2, -18.4-b , 0 );
setMoveKey( spep_0-3 + 400, 1, -85.5, -18.2-b , 0 );
setMoveKey( spep_0-3 + 402, 1, -48.7, -17.1-b , 0 );
setMoveKey( spep_0-3 + 404, 1, -185.8, -40.1-b , 0 );
setMoveKey( spep_0-3 + 406, 1, -184.3, -40.6-b , 0 );
setMoveKey( spep_0-3 + 408, 1, -194.8, -41.1-b , 0 );
setMoveKey( spep_0-3 + 410, 1, -185.8, -43.1-b , 0 );
setMoveKey( spep_0-3 + 412, 1, -184.8, -41.1-b , 0 );
setMoveKey( spep_0-3 + 414, 1, -200.8, -42.1-b , 0 );
setMoveKey( spep_0-3 + 416, 1, -278.9, -62.1-b , 0 );
setMoveKey( spep_0-3 + 418, 1, -278.9, -62.1-b , 0 );
setMoveKey( spep_0-3 + 420, 1, -450.1, -53.8-b , 0 );
setMoveKey( spep_0-3 + 422, 1, -598.5, -46.6-b , 0 );
setMoveKey( spep_0-3 + 424, 1, -724.1, -68.5-b , 0 );
setMoveKey( spep_0-3 + 426, 1, -826.8, -86.4-b , 0 );
setMoveKey( spep_0-3 + 428, 1, -906.7, -100.3-b , 0 );
setMoveKey( spep_0-3 + 430, 1, -963.8, -110.3-b , 0 );
setMoveKey( spep_0-3 + 432, 1, -998, -116.2-b , 0 );
setMoveKey( spep_0-1 + 434, 1, -1009.4, -118.2-b , 0 );

setScaleKey( spep_0-3 + 360, 1, 2.52, 2.52 );
setScaleKey( spep_0-1 + 434, 1, 2.52, 2.52 );

setScaleKey( spep_0-3 + 360, 1, 2.5, 2.5 );
setScaleKey( spep_0-1 + 434, 1, 2.5, 2.5 );

setRotateKey( spep_0-3 + 360, 1, -44.9 );
setRotateKey( spep_0-3 + 362, 1, -44.9 );
setRotateKey( spep_0-3 + 364, 1, -66.7 );
setRotateKey( spep_0-3 + 366, 1, -66.7 );
setRotateKey( spep_0-3 + 368, 1, -67.4 );
setRotateKey( spep_0-3 + 370, 1, -66.7 );
setRotateKey( spep_0-3 + 372, 1, -66.7 );
setRotateKey( spep_0-3 + 374, 1, -67.4 );
setRotateKey( spep_0-3 + 376, 1, -75.1 );
setRotateKey( spep_0-3 + 378, 1, -75.9 );
setRotateKey( spep_0-3 + 380, 1, -76.6 );
setRotateKey( spep_0-3 + 382, 1, -77.3 );
setRotateKey( spep_0-3 + 384, 1, -77.9 );
setRotateKey( spep_0-3 + 386, 1, -78.4 );
setRotateKey( spep_0-3 + 388, 1, -78.9 );
setRotateKey( spep_0-3 + 390, 1, -79.4 );
setRotateKey( spep_0-3 + 392, 1, -79.8 );
setRotateKey( spep_0-3 + 394, 1, -80.1 );
setRotateKey( spep_0-3 + 396, 1, -80.4 );
setRotateKey( spep_0-3 + 398, 1, -80.6 );
setRotateKey( spep_0-3 + 400, 1, -80.8 );
setRotateKey( spep_0-3 + 402, 1, -80.9 );
setRotateKey( spep_0-3 + 404, 1, -90.3 );
setRotateKey( spep_0-3 + 406, 1, -90.3 );
setRotateKey( spep_0-3 + 408, 1, -91.3 );
setRotateKey( spep_0-3 + 410, 1, -90.3 );
setRotateKey( spep_0-3 + 412, 1, -90.3 );
setRotateKey( spep_0-3 + 414, 1, -91.3 );
setRotateKey( spep_0-3 + 416, 1, -96 );
setRotateKey( spep_0-3 + 418, 1, -96 );
setRotateKey( spep_0-3 + 420, 1, -100.4 );
setRotateKey( spep_0-3 + 422, 1, -104.3 );
setRotateKey( spep_0-3 + 424, 1, -107.5 );
setRotateKey( spep_0-3 + 426, 1, -110.2 );
setRotateKey( spep_0-3 + 428, 1, -112.3 );
setRotateKey( spep_0-3 + 430, 1, -113.7 );
setRotateKey( spep_0-3 + 432, 1, -114.6 );
setRotateKey( spep_0-3 + 434, 1, -114.9 );

--敵の動き3
setDisp( spep_0-3 + 524, 1, 1);
setDisp( spep_0-1 + 638, 1, 0);

changeAnime( spep_0-3 + 524, 1, 106);
changeAnime( spep_0-3 + 590, 1, 7);

c=-15;
f=40;
d=10;
g=2;

setMoveKey( spep_0-3 + 524, 1, -22.4+f, -59+g , 0 );
setMoveKey( spep_0-3 + 525, 1, -22.4+f, -59+g , 0 );
setMoveKey( spep_0-3 + 526, 1, -25.8+f, -59.3+g , 0 );
setMoveKey( spep_0-3 + 527, 1, -25.8+f, -59.3+g , 0 );
setMoveKey( spep_0-3 + 528, 1, -28.8+f, -59.6+g , 0 );
setMoveKey( spep_0-3 + 529, 1, -28.8+f, -59.6+g , 0 );
setMoveKey( spep_0-3 + 530, 1, -31.4+f, -59.9+g , 0 );
setMoveKey( spep_0-3 + 531, 1, -31.4+f, -59.9+g , 0 );
setMoveKey( spep_0-3 + 532, 1, -33.6+f, -60.2+g , 0 );
setMoveKey( spep_0-3 + 533, 1, -33.6+f, -60.2+g , 0 );
setMoveKey( spep_0-3 + 534, 1, -35.3+f, -60.5+g , 0 );
setMoveKey( spep_0-3 + 535, 1, -35.3+f, -60.5+g , 0 );
setMoveKey( spep_0-3 + 536, 1, -36.7+f, -60.7+g , 0 );
setMoveKey( spep_0-3 + 537, 1, -36.7+f, -60.7+g , 0 );
setMoveKey( spep_0-3 + 538, 1, -37.7+f, -60.8+g , 0 );
setMoveKey( spep_0-3 + 539, 1, -37.7+f, -60.8+g , 0 );
setMoveKey( spep_0-3 + 540, 1, -8.4+d, -43.7+c , 0 );
setMoveKey( spep_0-3 + 546, 1, -8.4+d, -43.7+c , 0 );
setMoveKey( spep_0-3 + 548, 1, -124.8+d, -46.4+c , 0 );
setMoveKey( spep_0-3 + 550, 1, -137.4+d, -44.6+c , 0 );
setMoveKey( spep_0-3 + 552, 1, -149.4+d, -43+c , 0 );
setMoveKey( spep_0-3 + 554, 1, -160.7+d, -41.6+c , 0 );
setMoveKey( spep_0-3 + 556, 1, -171.4+d, -40.2+c , 0 );
setMoveKey( spep_0-3 + 558, 1, -181.3+d, -39+c , 0 );
setMoveKey( spep_0-3 + 560, 1, -190.6+d, -37.9+c , 0 );
setMoveKey( spep_0-3 + 562, 1, -199.3+d, -36.9+c , 0 );
setMoveKey( spep_0-3 + 564, 1, -207.3+d, -35.9+c , 0 );
setMoveKey( spep_0-3 + 566, 1, -214.7+d, -35.1+c , 0 );
setMoveKey( spep_0-3 + 568, 1, -221.4+d, -34.4+c , 0 );
setMoveKey( spep_0-3 + 570, 1, -227.4+d, -33.7+c , 0 );
setMoveKey( spep_0-3 + 572, 1, -232.8+d, -33.1+c , 0 );
setMoveKey( spep_0-3 + 574, 1, -237.6+d, -32.6+c , 0 );
setMoveKey( spep_0-3 + 576, 1, -241.7+d, -32.2+c , 0 );
setMoveKey( spep_0-3 + 578, 1, -245.2+d, -31.8+c , 0 );
setMoveKey( spep_0-3 + 580, 1, -248.1+d, -31.5+c , 0 );
setMoveKey( spep_0-3 + 582, 1, -250.3+d, -31.3+c , 0 );
setMoveKey( spep_0-3 + 584, 1, -251.9+d, -31.2+c , 0 );
setMoveKey( spep_0-3 + 586, 1, -252.8+d, -31.1+c , 0 );
setMoveKey( spep_0-3 + 588, 1, -253.1+d, -31+c , 0 );
setMoveKey( spep_0-3 + 589, 1, -253.1+d, -31+c , 0 );

setMoveKey( spep_0-3 + 590, 1, -195, 240.9 , 0 );
setMoveKey( spep_0-3 + 592, 1, -203.5, 239.4 , 0 );
setMoveKey( spep_0-3 + 594, 1, -214.3, 237.4 , 0 );
setMoveKey( spep_0-3 + 596, 1, -227.4, 235.1 , 0 );
setMoveKey( spep_0-3 + 598, 1, -242.8, 232.3 , 0 );
setMoveKey( spep_0-3 + 600, 1, -260.6, 229 , 0 );
setMoveKey( spep_0-3 + 602, 1, -280.9, 225.4 , 0 );
setMoveKey( spep_0-3 + 604, 1, -303.6, 221.4 , 0 );
setMoveKey( spep_0-3 + 606, 1, -328.9, 216.9 , 0 );
setMoveKey( spep_0-3 + 608, 1, -356.8, 212.1 , 0 );
setMoveKey( spep_0-3 + 610, 1, -387.5, 206.8 , 0 );
setMoveKey( spep_0-3 + 612, 1, -421.1, 201 , 0 );
setMoveKey( spep_0-3 + 614, 1, -457.7, 194.9 , 0 );
setMoveKey( spep_0-3 + 616, 1, -497.6, 188.2 , 0 );
setMoveKey( spep_0-3 + 618, 1, -541.1, 181.2 , 0 );
setMoveKey( spep_0-3 + 620, 1, -588.4, 173.6 , 0 );
setMoveKey( spep_0-3 + 622, 1, -640, 165.5 , 0 );
setMoveKey( spep_0-3 + 624, 1, -696.5, 156.8 , 0 );
setMoveKey( spep_0-3 + 626, 1, -758.6, 147.5 , 0 );
setMoveKey( spep_0-3 + 628, 1, -827.4, 137.5 , 0 );
setMoveKey( spep_0-3 + 630, 1, -904.6, 126.6 , 0 );
setMoveKey( spep_0-3 + 632, 1, -992.5, 114.7 , 0 );
setMoveKey( spep_0-3 + 634, 1, -1095.7, 101.4 , 0 );
setMoveKey( spep_0-3 + 636, 1, -1223.5, 85.9 , 0 );
setMoveKey( spep_0-1 + 638, 1, -1405.8, 65.2 , 0 );

setScaleKey( spep_0-3 + 524, 1, 1.34, 1.34 );
setScaleKey( spep_0-3 + 589, 1, 1.34, 1.34 );

setScaleKey( spep_0-3 + 590, 1, 1.25, 1.25 );
setScaleKey( spep_0-3 + 592, 1, 1.27, 1.27 );
setScaleKey( spep_0-3 + 594, 1, 1.29, 1.29 );
setScaleKey( spep_0-3 + 596, 1, 1.31, 1.31 );
setScaleKey( spep_0-3 + 598, 1, 1.34, 1.34 );
setScaleKey( spep_0-3 + 600, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 602, 1, 1.41, 1.41 );
setScaleKey( spep_0-3 + 604, 1, 1.45, 1.45 );
setScaleKey( spep_0-3 + 606, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 608, 1, 1.55, 1.55 );
setScaleKey( spep_0-3 + 610, 1, 1.61, 1.61 );
setScaleKey( spep_0-3 + 612, 1, 1.67, 1.67 );
setScaleKey( spep_0-3 + 614, 1, 1.74, 1.74 );
setScaleKey( spep_0-3 + 616, 1, 1.82, 1.82 );
setScaleKey( spep_0-3 + 618, 1, 1.9, 1.9 );
setScaleKey( spep_0-3 + 620, 1, 1.99, 1.99 );
setScaleKey( spep_0-3 + 622, 1, 2.08, 2.08 );
setScaleKey( spep_0-3 + 624, 1, 2.19, 2.19 );
setScaleKey( spep_0-3 + 626, 1, 2.3, 2.3 );
setScaleKey( spep_0-3 + 628, 1, 2.43, 2.43 );
setScaleKey( spep_0-3 + 630, 1, 2.58, 2.58 );
setScaleKey( spep_0-3 + 632, 1, 2.74, 2.74 );
setScaleKey( spep_0-3 + 634, 1, 2.93, 2.93 );
setScaleKey( spep_0-3 + 636, 1, 3.17, 3.17 );
setScaleKey( spep_0-1 + 638, 1, 3.51, 3.51 );

setRotateKey( spep_0-3 + 524, 1, -75.7 );
setRotateKey( spep_0-3 + 526, 1, -77 );
setRotateKey( spep_0-3 + 528, 1, -78.1 );
setRotateKey( spep_0-3 + 530, 1, -79.1 );
setRotateKey( spep_0-3 + 532, 1, -79.9 );
setRotateKey( spep_0-3 + 534, 1, -80.6 );
setRotateKey( spep_0-3 + 536, 1, -81.1 );
setRotateKey( spep_0-3 + 538, 1, -81.5 );
setRotateKey( spep_0-3 + 540, 1, -80.9 );
setRotateKey( spep_0-3 + 546, 1, -80.9 );
setRotateKey( spep_0-3 + 548, 1, -79.4 );
setRotateKey( spep_0-3 + 550, 1, -80.5 );
setRotateKey( spep_0-3 + 552, 1, -81.7 );
setRotateKey( spep_0-3 + 554, 1, -82.7 );
setRotateKey( spep_0-3 + 556, 1, -83.7 );
setRotateKey( spep_0-3 + 558, 1, -84.6 );
setRotateKey( spep_0-3 + 560, 1, -85.5 );
setRotateKey( spep_0-3 + 562, 1, -86.3 );
setRotateKey( spep_0-3 + 564, 1, -87 );
setRotateKey( spep_0-3 + 566, 1, -87.7 );
setRotateKey( spep_0-3 + 568, 1, -88.3 );
setRotateKey( spep_0-3 + 570, 1, -88.9 );
setRotateKey( spep_0-3 + 572, 1, -89.4 );
setRotateKey( spep_0-3 + 574, 1, -89.9 );
setRotateKey( spep_0-3 + 576, 1, -90.3 );
setRotateKey( spep_0-3 + 578, 1, -90.6 );
setRotateKey( spep_0-3 + 580, 1, -90.8 );
setRotateKey( spep_0-3 + 582, 1, -91.1 );
setRotateKey( spep_0-3 + 584, 1, -91.2 );
setRotateKey( spep_0-3 + 589, 1, -91.3 );

setRotateKey( spep_0-3 + 590, 1, 46.9 );
setRotateKey( spep_0-3 + 592, 1, 46.8 );
setRotateKey( spep_0-3 + 594, 1, 46.8 );
setRotateKey( spep_0-3 + 596, 1, 46.7 );
setRotateKey( spep_0-3 + 598, 1, 46.5 );
setRotateKey( spep_0-3 + 600, 1, 46.4 );
setRotateKey( spep_0-3 + 602, 1, 46.2 );
setRotateKey( spep_0-3 + 604, 1, 46.1 );
setRotateKey( spep_0-3 + 606, 1, 45.9 );
setRotateKey( spep_0-3 + 608, 1, 45.6 );
setRotateKey( spep_0-3 + 610, 1, 45.4 );
setRotateKey( spep_0-3 + 612, 1, 45.1 );
setRotateKey( spep_0-3 + 614, 1, 44.8 );
setRotateKey( spep_0-3 + 616, 1, 44.5 );
setRotateKey( spep_0-3 + 618, 1, 44.2 );
setRotateKey( spep_0-3 + 620, 1, 43.8 );
setRotateKey( spep_0-3 + 622, 1, 43.4 );
setRotateKey( spep_0-3 + 624, 1, 43 );
setRotateKey( spep_0-3 + 626, 1, 42.5 );
setRotateKey( spep_0-3 + 628, 1, 41.9 );
setRotateKey( spep_0-3 + 630, 1, 41.3 );
setRotateKey( spep_0-3 + 632, 1, 40.6 );
setRotateKey( spep_0-3 + 634, 1, 39.8 );
setRotateKey( spep_0-3 + 636, 1, 38.8 );
setRotateKey( spep_0-1 + 638, 1, 37.3 );

-- ** 音 ** --
--ゴジータ近づいてくる
SE012 = playSe( spep_0 + 182, 1176 );
stopSe( spep_0 + 198, SE012, 14 );
SE013 = playSe( spep_0 + 182, 1158 );
stopSe( spep_0 + 216, SE013, 14 );
SE014 = playSe( spep_0 + 182, 1184 );
setSeVolumeByWorkId( spep_0 + 182, SE014, 79 );
stopSe( spep_0 + 230, SE014, 28 );
SE015 = playSe( spep_0 + 182, 1072 );
SE009 = playSe( spep_0 + 188, 17 );
setSeVolumeByWorkId( spep_0 + 188, SE009, 0 );
setSeVolumeByWorkId( spep_0 + 189, SE009, 10.3 );
setSeVolumeByWorkId( spep_0 + 190, SE009, 20.6 );
setSeVolumeByWorkId( spep_0 + 191, SE009, 30.9 );
setSeVolumeByWorkId( spep_0 + 192, SE009, 41.2 );
setSeVolumeByWorkId( spep_0 + 193, SE009, 51.5 );
setSeVolumeByWorkId( spep_0 + 194, SE009, 61.8 );
setSeVolumeByWorkId( spep_0 + 195, SE009, 72.1 );
setSeVolumeByWorkId( spep_0 + 196, SE009, 82 );
setStartTimeMs( SE009,  783 );
setTimeStretch( SE009, 1.11, 40, 5 );

--見えない拳初撃
SE016 = playSe( spep_0 + 250, 1189 ,"",0.9);
setSeVolumeByWorkId( spep_0 + 250, SE016, 135 );
SE017 = playSe( spep_0 + 254, 1009 ,"",0.9);
SE018 = playSe( spep_0 + 254, 1110 ,"",0.9);
setPitch( spep_0 + 254, SE018, 300 );
setTimeStretch( SE018, 1.2, 40, 5 );
SE019 = playSe( spep_0 + 254, 1169 ,"",0.9);
setSeVolumeByWorkId( spep_0 + 254, SE019, 88 );

--見えない拳連打
SE020 = playSe( spep_0-4 + 260, 1010 ,"",0.85);
SE021 = playSe( spep_0-4 + 260, 1190 ,"",0.85);
stopSe( spep_0-4 + 274, SE021, 10 );
SE022 = playSe( spep_0-4 + 272, 1190 ,"",0.85);
SE023 = playSe( spep_0-4 + 276, 1010 ,"",0.85);
SE024 = playSe( spep_0-4 + 276, 1190 ,"",0.85);
setSeVolumeByWorkId( spep_0-4 + 276, SE024, 89 );
SE025 = playSe( spep_0-4 + 280, 1010 ,"",0.85);
setSeVolumeByWorkId( spep_0-4 + 280, SE025, 87 );
SE026 = playSe( spep_0-4 + 282, 1187 ,"",0.85);
SE027 = playSe( spep_0-4 + 288, 1190 ,"",0.85);
setSeVolumeByWorkId( spep_0-4 + 288, SE027, 78 );
SE028 = playSe( spep_0-4 + 300, 1010 ,"",0.85);
setSeVolumeByWorkId( spep_0-4 + 300, SE028, 80 );
SE029 = playSe( spep_0-4 + 308, 1110 ,"",0.85);
setSeVolumeByWorkId( spep_0-4 + 308, SE029, 69 );

--膝蹴り
SE030 = playSe( spep_0 + 350, 1004 );
SE031 = playSe( spep_0 + 366, 1187 );
setSeVolumeByWorkId( spep_0 + 366, SE031, 77 );
SE032 = playSe( spep_0 + 366, 1011 );
setSeVolumeByWorkId( spep_0 + 366, SE032, 79 );
stopSe( spep_0 + 390, SE032, 30 );
SE033 = playSe( spep_0 + 366, 20 );
setSeVolumeByWorkId( spep_0 + 366, SE033, 82 );
stopSe( spep_0 + 388, SE033, 22 );
SE034 = playSe( spep_0 + 366, 1153 );
setSeVolumeByWorkId( spep_0 + 366, SE034, 77 );
stopSe( spep_0 + 394, SE034, 8 );

--膝蹴り２
SE035 = playSe( spep_0 + 402, 1187 );
setSeVolumeByWorkId( spep_0 + 402, SE035, 80 );
SE036 = playSe( spep_0 + 402, 1011 );
setSeVolumeByWorkId( spep_0 + 402, SE036, 81 );
stopSe( spep_0 + 426, SE036, 32 );
SE037 = playSe( spep_0 + 402, 20 );
setSeVolumeByWorkId( spep_0 + 402, SE037, 80 );
stopSe( spep_0 + 424, SE037, 22 );
SE038 = playSe( spep_0 + 402, 1153 );
setSeVolumeByWorkId( spep_0 + 402, SE038, 83 );
stopSe( spep_0 + 430, SE038, 8 );

--ゴジータ宙返り
SE039 = playSe( spep_0 + 436, 1335 );
SE040 = playSe( spep_0 + 436, 1334 );
setSeVolumeByWorkId( spep_0 + 436, SE040, 123 );
stopSe( spep_0 + 542, SE040, 8 );

--ゴジータ向かってくる
SE041 = playSe( spep_0 + 480, 1153 );
setSeVolumeByWorkId( spep_0 + 480, SE041, 0 );
setSeVolumeByWorkId( spep_0 + 481, SE041, 1 );
setSeVolumeByWorkId( spep_0 + 482, SE041, 2 );
setSeVolumeByWorkId( spep_0 + 483, SE041, 4 );
setSeVolumeByWorkId( spep_0 + 484, SE041, 6 );
setSeVolumeByWorkId( spep_0 + 485, SE041, 10 );
setSeVolumeByWorkId( spep_0 + 486, SE041, 14 );
setSeVolumeByWorkId( spep_0 + 487, SE041, 26.1 );
setSeVolumeByWorkId( spep_0 + 488, SE041, 30.4 );
setSeVolumeByWorkId( spep_0 + 489, SE041, 45.7 );
setSeVolumeByWorkId( spep_0 + 490, SE041, 63 );
setSeVolumeByWorkId( spep_0 + 491, SE041, 69.3 );
setSeVolumeByWorkId( spep_0 + 492, SE041, 75.6 );
setSeVolumeByWorkId( spep_0 + 493, SE041, 81.9 );
setSeVolumeByWorkId( spep_0 + 494, SE041, 88.2 );
setSeVolumeByWorkId( spep_0 + 495, SE041, 94.5 );
setSeVolumeByWorkId( spep_0 + 496, SE041, 100 );
setStartTimeMs( SE041,  40 );
SE042 = playSe( spep_0 + 498, 1170 );
setSeVolumeByWorkId( spep_0 + 498, SE042, 0 );
setSeVolumeByWorkId( spep_0 + 499, SE042, 10.4 );
setSeVolumeByWorkId( spep_0 + 500, SE042, 20.8 );
setSeVolumeByWorkId( spep_0 + 501, SE042, 31.2 );
setSeVolumeByWorkId( spep_0 + 502, SE042, 41.6 );
setSeVolumeByWorkId( spep_0 + 503, SE042, 52 );
setSeVolumeByWorkId( spep_0 + 504, SE042, 62.4 );
setSeVolumeByWorkId( spep_0 + 505, SE042, 72.8 );
setSeVolumeByWorkId( spep_0 + 506, SE042, 83.2 );
setSeVolumeByWorkId( spep_0 + 507, SE042, 93.6 );
setSeVolumeByWorkId( spep_0 + 508, SE042, 104 );
setSeVolumeByWorkId( spep_0 + 509, SE042, 114.4 );
setSeVolumeByWorkId( spep_0 + 510, SE042, 124 );
setStartTimeMs( SE042,  100 );

--サマーソルト
SE043 = playSe( spep_0 + 538, 1003 );
SE044 = playSe( spep_0 + 542, 1187 );
setSeVolumeByWorkId( spep_0 + 542, SE044, 89 );
SE045 = playSe( spep_0 + 542, 1180 );
SE046 = playSe( spep_0 + 542, 1110 );

--回転して着地
SE047 = playSe( spep_0 + 588, 1117 );
stopSe( spep_0 + 618, SE047, 16 );
SE048 = playSe( spep_0 + 608, 1106 );
setSeVolumeByWorkId( spep_0 + 608, SE048, 172 );
SE049 = playSe( spep_0 + 622, 1108 );
setSeVolumeByWorkId( spep_0 + 622, SE049, 164 );

--振り向く
SE050 = playSe( spep_0 + 664, 1072 );
SE051 = playSe( spep_0 + 670, 44 );
setSeVolumeByWorkId( spep_0 + 670, SE051, 68 );
setTimeStretch( SE051, 1.25, 40, 5 );

--気弾手の上で作る
SE052 = playSe( spep_0 + 772, 1214 );
setSeVolumeByWorkId( spep_0 + 772, SE052, 155 );
stopSe( spep_0 + 880, SE052, 58 );
SE053 = playSe( spep_0 + 772, 1271 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 772, SE053, 62 );
setPitch( spep_0 + 772, SE053, 1000 );
setTimeStretch( SE053, 1.67, 40, 5 );
stopSe( spep_0 + 954, SE053, 6 );
SE054 = playSe( spep_0 + 786, 1203 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 786, SE054, 69 );
setPitch( spep_0 + 786, SE054, 200 );
setTimeStretch( SE054, 1.13, 40, 5 );
stopSe( spep_0 + 880, SE054, 40 );
SE055 = playSe( spep_0 + 786, 1275 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 786, SE055, 158 );
setPitch( spep_0 + 786, SE055, -600 );
setTimeStretch( SE055, 0.6, 40, 5 );

--気弾光る
SE056 = playSe( spep_0 + 916, 1289 ,"",0.7);
stopSe( spep_0 + 956, SE056, 22 );
SE057 = playSe( spep_0 + 928, 1290 ,"",0.7);
stopSe( spep_0 + 956, SE057, 8 );
SE058 = playSe( spep_0 + 928, 1277 ,"",0.7);
stopSe( spep_0 + 956, SE058, 8 );

--気弾握る
SE060 = playSe( spep_0 + 952, 1291 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 952, SE060, 72 );
stopSe( spep_0 + 964, SE060, 12 );
SE061 = playSe( spep_0 + 952, 1246 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 952, SE061, 150 );
setPitch( spep_0 + 952, SE061, -400 );
setTimeStretch( SE061, 0.73, 40, 5 );
SE062 = playSe( spep_0 + 952, 1061 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 952, SE062, 134 );
setPitch( spep_0 + 952, SE062, -500 );
setTimeStretch( SE062, 0.67, 40, 5 );
stopSe( spep_0 + 966, SE062, 10 );

--白フェード
entryFade( spep_0 + 970, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


--次の準備
spep_1=spep_0+978;

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
-- 後半
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 180, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 180, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 180, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 180, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 180, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 180, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 180, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 180, finish_b, 255 );

-- ** エフェクト等 ** --
KO_1 = entryEffect( spep_2 + 178, SP_05x, 0x100, -1, 0, 0, 0 , 2000 );  --KO演出(ef_005)
setEffMoveKey( spep_2 + 178, KO_1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 476, KO_1, 0, 0 , 0 );
setEffScaleKey( spep_2 + 178, KO_1, -1.0 , 1.0 );
setEffScaleKey( spep_2 + 476, KO_1, -1.0 , 1.0 );
setEffRotateKey( spep_2 + 178, KO_1, 0 );
setEffRotateKey( spep_2 + 476, KO_1, 0 );
setEffAlphaKey( spep_2 + 178, KO_1, 255 );
setEffAlphaKey( spep_2 + 476, KO_1, 255 );

KO_2 = entryEffectLife( spep_2 + 178, SP_06, 54, 0x100, -1, 0, 0, 0, 1000 );  --KO演出(ef_006)
setEffMoveKey( spep_2 + 178, KO_2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 476, KO_2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 178, KO_2, -1.0 , 1.0 );
setEffScaleKey( spep_2 + 476, KO_2, -1.0 , 1.0 );
setEffRotateKey( spep_2 + 178, KO_2, 0 );
setEffRotateKey( spep_2 + 476, KO_2, 0 );
setEffAlphaKey( spep_2 + 178, KO_2, 255 );
setEffAlphaKey( spep_2 + 476, KO_2, 255 );

--敵の動き
setDisp( spep_2-3 + 60, 1, 1);
setDisp( spep_2-1 + 164, 1, 0);

changeAnime( spep_2-3 + 60, 1, 107);
changeAnime( spep_2-3 + 90, 1, 7);
changeAnime( spep_2-3 + 104, 1, 108);
changeAnime( spep_2-3 + 110, 1, 105);

setBlendColor( spep_2-3 + 90, 1, 3, 0.14, 0.35, 0.16, 0.45);
setBlendColor( spep_2 + 164, 1, 3, 0.14, 0.35, 0.16, 0.45);
setBlendColor( spep_2 + 165, 1, 3, 0.14, 0.35, 0.16, 0);

setMoveKey( spep_2-3 + 60, 1, 44, 948.5 , 0 );
setMoveKey( spep_2-3 + 62, 1, 0.2, 317.6 , 0 );
setMoveKey( spep_2-3 + 64, 1, -12.2, 139.1 , 0 );
setMoveKey( spep_2-3 + 66, 1, -16.6, 72.8 , 0 );
setMoveKey( spep_2-3 + 68, 1, -17.6, 70 , 0 );
setMoveKey( spep_2-3 + 70, 1, -18.6, 67.5 , 0 );
setMoveKey( spep_2-3 + 72, 1, -19.4, 65.3 , 0 );
setMoveKey( spep_2-3 + 74, 1, -20.1, 63.4 , 0 );
setMoveKey( spep_2-3 + 76, 1, -20.7, 61.8 , 0 );
setMoveKey( spep_2-3 + 78, 1, -21.2, 60.5 , 0 );
setMoveKey( spep_2-3 + 80, 1, -21.6, 59.4 , 0 );
setMoveKey( spep_2-3 + 82, 1, -21.8, 58.7 , 0 );
setMoveKey( spep_2-3 + 84, 1, -22, 58.3 , 0 );
setMoveKey( spep_2-3 + 86, 1, -22.1, 58.1 , 0 );
setMoveKey( spep_2-3 + 89, 1, -22.1, 58.1 , 0 );

setMoveKey( spep_2-3 + 90, 1, -88.1, -943.6 , 0 );
setMoveKey( spep_2-3 + 92, 1, -88.7, -902.1 , 0 );
setMoveKey( spep_2-3 + 94, 1, -89.2, -860.6 , 0 );
setMoveKey( spep_2-3 + 96, 1, -89.8, -819 , 0 );
setMoveKey( spep_2-3 + 98, 1, -90.4, -777.5 , 0 );
setMoveKey( spep_2-3 + 100, 1, -91, -736 , 0 );
setMoveKey( spep_2-3 + 102, 1, -91.6, -694.5 , 0 );
setMoveKey( spep_2-3 + 103, 1, -91.6, -694.5 , 0 );

setMoveKey( spep_2-3 + 104, 1, 63.2, -75.6 , 0 );
setMoveKey( spep_2-3 + 106, 1, 56.7, -30 , 0 );
setMoveKey( spep_2-3 + 108, 1, 54.6, -14.7 , 0 );
setMoveKey( spep_2-3 + 109, 1, 54.6, -14.7 , 0 );

a=-48;

setMoveKey( spep_2-3 + 110, 1, 55.6+a, -14.7 , 0 );
setMoveKey( spep_2-3 + 112, 1, 50.5+a, -14.7 , 0 );
setMoveKey( spep_2-3 + 114, 1, 48.6+a, -14.7 , 0 );
setMoveKey( spep_2-3 + 116, 1, 47.3+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 118, 1, 46.3+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 120, 1, 45.4+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 122, 1, 44.7+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 124, 1, 44+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 126, 1, 43.5+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 128, 1, 43+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 130, 1, 42.5+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 132, 1, 42.2+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 134, 1, 41.8+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 136, 1, 41.5+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 138, 1, 41.2+a, -14.6 , 0 );
setMoveKey( spep_2-3 + 140, 1, 40.9+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 142, 1, 40.7+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 144, 1, 40.4+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 146, 1, 40.2+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 148, 1, 40+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 150, 1, 39.9+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 152, 1, 39.7+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 154, 1, 39.6+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 156, 1, 39.5+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 158, 1, 39.4+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 160, 1, 39.3+a, -14.5 , 0 );
setMoveKey( spep_2-3 + 162, 1, 39.2+a, -14.5 , 0 );
setMoveKey( spep_2-1 + 164, 1, 39.1+a, -14.5 , 0 );

setScaleKey( spep_2-3 + 60, 1, 3.36, 3.36 );
setScaleKey( spep_2-3 + 62, 1, 1.97, 1.97 );
setScaleKey( spep_2-3 + 64, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 66, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 68, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 70, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 72, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 74, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 76, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 80, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 82, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 89, 1, 1.47, 1.47 );

setScaleKey( spep_2-3 + 90, 1, 4.87, 4.87 );
setScaleKey( spep_2-3 + 92, 1, 4.71, 4.71 );
setScaleKey( spep_2-3 + 94, 1, 4.54, 4.54 );
setScaleKey( spep_2-3 + 96, 1, 4.38, 4.38 );
setScaleKey( spep_2-3 + 98, 1, 4.21, 4.21 );
setScaleKey( spep_2-3 + 100, 1, 4.05, 4.05 );
setScaleKey( spep_2-3 + 102, 1, 3.88, 3.88 );
setScaleKey( spep_2-3 + 103, 1, 3.88, 3.88 );

setScaleKey( spep_2-3 + 104, 1, 5.88, 5.88 );
setScaleKey( spep_2-3 + 106, 1, 4.64, 4.64 );
setScaleKey( spep_2-3 + 108, 1, 4.23, 4.23 );
setScaleKey( spep_2-3 + 109, 1, 4.23, 4.23 );

setScaleKey( spep_2-3 + 110, 1, 2.72, 2.72 );
setScaleKey( spep_2-3 + 112, 1, 2.39, 2.39 );
setScaleKey( spep_2-3 + 114, 1, 2.28, 2.28 );
setScaleKey( spep_2-3 + 116, 1, 2.19, 2.19 );
setScaleKey( spep_2-3 + 118, 1, 2.13, 2.13 );
setScaleKey( spep_2-3 + 120, 1, 2.07, 2.07 );
setScaleKey( spep_2-3 + 122, 1, 2.03, 2.03 );
setScaleKey( spep_2-3 + 124, 1, 1.99, 1.99 );
setScaleKey( spep_2-3 + 126, 1, 1.95, 1.95 );
setScaleKey( spep_2-3 + 128, 1, 1.92, 1.92 );
setScaleKey( spep_2-3 + 130, 1, 1.89, 1.89 );
setScaleKey( spep_2-3 + 132, 1, 1.87, 1.87 );
setScaleKey( spep_2-3 + 134, 1, 1.85, 1.85 );
setScaleKey( spep_2-3 + 136, 1, 1.83, 1.83 );
setScaleKey( spep_2-3 + 138, 1, 1.81, 1.81 );
setScaleKey( spep_2-3 + 140, 1, 1.79, 1.79 );
setScaleKey( spep_2-3 + 142, 1, 1.77, 1.77 );
setScaleKey( spep_2-3 + 144, 1, 1.76, 1.76 );
setScaleKey( spep_2-3 + 146, 1, 1.75, 1.75 );
setScaleKey( spep_2-3 + 148, 1, 1.74, 1.74 );
setScaleKey( spep_2-3 + 150, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 152, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 154, 1, 1.71, 1.71 );
setScaleKey( spep_2-3 + 156, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 158, 1, 1.69, 1.69 );
setScaleKey( spep_2-3 + 160, 1, 1.69, 1.69 );
setScaleKey( spep_2-3 + 162, 1, 1.68, 1.68 );
setScaleKey( spep_2-1 + 164, 1, 1.67, 1.67 );

setRotateKey( spep_2-3 + 60, 1, 0 );
setRotateKey( spep_2-3 + 89, 1, 0 );

setRotateKey( spep_2-3 + 90, 1, 117.8 );
setRotateKey( spep_2-3 + 103, 1, 117.8 );

setRotateKey( spep_2-3 + 104, 1, 0 );
setRotateKey( spep_2-3 + 164, 1, 0 );

-- ** 音 ** --
--振りかぶる
SE064 = playSe( spep_2 + 2, 1277 );
setSeVolumeByWorkId( spep_2 + 2, SE064, 100 );
setPitch( spep_2 + 2, SE064, -200 );
setTimeStretch( SE064, 0.87, 40, 5 );
stopSe( spep_2 + 36, SE064, 13 );

--気弾投げる
SE065 = playSe( spep_2 + 28, 1117 );
SE066 = playSe( spep_2 + 28, 8 );
setSeVolumeByWorkId( spep_2 + 28, SE066, 120 );
setPitch( spep_2 + 28, SE066, 400 );
setTimeStretch( SE066, 1.27, 40, 5 );
SE067 = playSe( spep_2 + 28, 1178 );
setSeVolumeByWorkId( spep_2 + 28, SE067, 73 );
stopSe( spep_2 + 48, SE067, 12 );

--気弾ヒット
SE059 = playSe( spep_2 + 48, 1336 );
setSeVolumeByWorkId( spep_2 + 48, SE059, 0 );
setSeVolumeByWorkId( spep_2 + 49, SE059, 8.3 );
setSeVolumeByWorkId( spep_2 + 50, SE059, 16.6 );
setSeVolumeByWorkId( spep_2 + 51, SE059, 24.9 );
setSeVolumeByWorkId( spep_2 + 52, SE059, 33.2 );
setSeVolumeByWorkId( spep_2 + 53, SE059, 41.5 );
setSeVolumeByWorkId( spep_2 + 54, SE059, 49.8 );
setSeVolumeByWorkId( spep_2 + 55, SE059, 58.1 );
setSeVolumeByWorkId( spep_2 + 56, SE059, 66.4 );
setSeVolumeByWorkId( spep_2 + 57, SE059, 74.7 );
setSeVolumeByWorkId( spep_2 + 58, SE059, 83 );
setSeVolumeByWorkId( spep_2 + 59, SE059, 91.3 );
setSeVolumeByWorkId( spep_2 + 60, SE059, 100 );
setStartTimeMs( SE059,  3333 );
SE068 = playSe( spep_2 + 64, 1320 );
setSeVolumeByWorkId( spep_2 + 64, SE068, 0 );
setSeVolumeByWorkId( spep_2 + 65, SE068, 8.7 );
setSeVolumeByWorkId( spep_2 + 66, SE068, 17.4 );
setSeVolumeByWorkId( spep_2 + 67, SE068, 26.1 );
setSeVolumeByWorkId( spep_2 + 68, SE068, 34.8 );
setSeVolumeByWorkId( spep_2 + 69, SE068, 43.5 );
setSeVolumeByWorkId( spep_2 + 70, SE068, 52 );
setStartTimeMs( SE068,  567 );
SE069 = playSe( spep_2 + 62, 1273 );
setSeVolumeByWorkId( spep_2 + 62, SE069, 0 );
setSeVolumeByWorkId( spep_2 + 63, SE069, 50 );
setSeVolumeByWorkId( spep_2 + 64, SE069, 100 );
setStartTimeMs( SE069,  17 );
setPitch( spep_2 + 62, SE069, -400 );
setTimeStretch( SE069, 0.73, 40, 5 );
SE070 = playSe( spep_2 + 62, 1283 );
setPitch( spep_2 + 62, SE070, -200 );
setTimeStretch( SE070, 0.87, 40, 5 );
stopSe( spep_2 + 70, SE070, 4 );

--爆発
SE071 = playSe( spep_2 + 88, 1024 );
setSeVolumeByWorkId( spep_2 + 88, SE071, 65 );
SE072 = playSe( spep_2 + 88, 1188 );
setSeVolumeByWorkId( spep_2 + 88, SE072, 79 );
SE073 = playSe( spep_2 + 94, 1067 );

--終わり
hideKoScreen();
dealDamage( spep_2 +88 -12 );
endPhase( spep_2 + 180 );

end