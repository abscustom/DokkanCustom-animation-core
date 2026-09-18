--1023620:LR_孫悟空(界王拳)_超必殺技：4倍界王拳かめはめ波
--sp_effect_a1_00339
--sp2333

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
SP_01  = 159165; --冒頭～着弾～構え：手前 ef_001
SP_02  = 159166; --冒頭～着弾～構え：奥 ef_002
SP_03  = 159167; --4倍だー～ラスト：手前 ef_003
SP_04  = 159168; --4倍だー～ラスト：奥 ef_004
SP_05  = 159169; --KO ef_005

--エフェクト(敵)
SP_01x = 159170; --冒頭～着弾～構え：手前(敵) ef_001r
SP_02x = 159171; --冒頭～着弾～構え：奥(敵) ef_002r
SP_03x = 159172; --4倍だー～ラスト：手前(敵) ef_003r
SP_04x = 159173; --4倍だー～ラスト：奥(敵) ef_004r
SP_05x = 159169; --KO ef_005

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
--[[
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
]]
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--冒頭～着弾～構え
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
beam_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --冒頭～着弾～構え：手前 ef_001
setEffMoveKey( spep_0 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 630, beam_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 630, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beam_f, 0 );
setEffRotateKey( spep_0 + 630, beam_f, 0 );
setEffAlphaKey( spep_0 + 0, beam_f, 255 );
setEffAlphaKey( spep_0 + 630, beam_f, 255 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --冒頭～着弾～構え：奥 ef_002
setEffMoveKey( spep_0 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 630, beam_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 630, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beam_b, 0 );
setEffRotateKey( spep_0 + 630, beam_b, 0 );
setEffAlphaKey( spep_0 + 0, beam_b, 255 );
setEffAlphaKey( spep_0 + 630, beam_b, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +200;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

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


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-1 + 118, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 86, 223.5 , 0 );
setMoveKey( spep_0 + 1, 1, 86, 223.5 , 0 );
setMoveKey( spep_0 + 2, 1, 86, 223.5 , 0 );
setMoveKey( spep_0-3 + 6, 1, 86, 223.5 , 0 );
setMoveKey( spep_0-3 + 7, 1, 86, 223.5 , 0 );
setMoveKey( spep_0-3 + 8, 1, 94, 237.7 , 0 );
setMoveKey( spep_0-3 + 9, 1, 94, 237.7 , 0 );
setMoveKey( spep_0-3 + 10, 1, 102, 251.9 , 0 );
setMoveKey( spep_0-3 + 12, 1, 110, 266.2 , 0 );
setMoveKey( spep_0-3 + 14, 1, 118, 280.4 , 0 );
setMoveKey( spep_0-3 + 16, 1, 126, 294.6 , 0 );
setMoveKey( spep_0-3 + 18, 1, 134, 308.8 , 0 );
setMoveKey( spep_0-3 + 20, 1, 142, 323.1 , 0 );
setMoveKey( spep_0-3 + 22, 1, 150, 337.3 , 0 );
setMoveKey( spep_0-3 + 24, 1, 158, 351.5 , 0 );
setMoveKey( spep_0-3 + 26, 1, 162.5, 359.1 , 0 );
setMoveKey( spep_0-3 + 28, 1, 167, 366.8 , 0 );
setMoveKey( spep_0-3 + 30, 1, 171.5, 374.4 , 0 );
setMoveKey( spep_0-3 + 32, 1, 176.1, 382.1 , 0 );

a=0;
b=0;

setMoveKey( spep_0-3 + 34, 1, 180.6, 389.7 , 0 );
setMoveKey( spep_0-3 + 36, 1, 185.1, 397.4 , 0 );
setMoveKey( spep_0-3 + 38, 1, 189.6, 405 , 0 );
setMoveKey( spep_0-3 + 40, 1, 190.7+a, 406.6+b , 0 );
setMoveKey( spep_0-3 + 42, 1, 191.7+a, 408.1+b , 0 );
setMoveKey( spep_0-3 + 44, 1, 192.8+a, 409.7+b , 0 );
setMoveKey( spep_0-3 + 46, 1, 193.8+a, 411.3+b , 0 );
setMoveKey( spep_0-3 + 48, 1, 194.9+a, 412.8+b , 0 );
setMoveKey( spep_0-3 + 50, 1, 195.9+a, 414.4+b , 0 );
setMoveKey( spep_0-3 + 52, 1, 197+a, 415.9+b , 0 );
setMoveKey( spep_0-3 + 54, 1, 198+a, 417.5+b , 0 );
setMoveKey( spep_0-3 + 88, 1, 198+a, 417.5+b , 0 );

setMoveKey( spep_0-3 + 90, 1, 194+a, 409.5+b , 0 );
setMoveKey( spep_0-3 + 92, 1, 198+a, 417.5+b , 0 );
setMoveKey( spep_0-3 + 94, 1, 194+a, 421.5+b , 0 );
setMoveKey( spep_0-3 + 96, 1, 198+a, 417.5+b , 0 );
setMoveKey( spep_0-3 + 98, 1, 194+a, 409.5+b , 0 );
setMoveKey( spep_0-3 + 100, 1, 198+a, 417.5+b , 0 );
setMoveKey( spep_0-3 + 102, 1, 190+a, 413.5+b , 0 );
setMoveKey( spep_0-3 + 104, 1, 198+a, 417.5+b , 0 );
setMoveKey( spep_0-3 + 106, 1, 194+a, 421.5+b , 0 );
setMoveKey( spep_0-3 + 108, 1, 198+a, 417.5+b , 0 );
setMoveKey( spep_0-3 + 110, 1, 194+a, 409.5+b , 0 );
setMoveKey( spep_0-3 + 112, 1, 198+a, 417.5+b , 0 );
setMoveKey( spep_0-3 + 114, 1, 190+a, 413.5+b , 0 );
setMoveKey( spep_0-3 + 116, 1, 198+a, 417.5+b , 0 );
setMoveKey( spep_0-1 + 118, 1, 194+a, 421.5+b , 0 );

setScaleKey( spep_0 + 0, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 1, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 2, 1, 0.7, 0.7 );
setScaleKey( spep_0-3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_0-3 + 7, 1, 0.7, 0.7 );
setScaleKey( spep_0-3 + 8, 1, 0.67, 0.67 );
setScaleKey( spep_0-3 + 9, 1, 0.67, 0.67 );
setScaleKey( spep_0-3 + 10, 1, 0.65, 0.65 );
setScaleKey( spep_0-3 + 12, 1, 0.62, 0.62 );
setScaleKey( spep_0-3 + 14, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 16, 1, 0.56, 0.56 );
setScaleKey( spep_0-3 + 18, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 20, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 22, 1, 0.48, 0.48 );
setScaleKey( spep_0-3 + 24, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 26, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 28, 1, 0.41, 0.41 );
setScaleKey( spep_0-3 + 30, 1, 0.38, 0.38 );
--setScaleKey( spep_0-3 + 32, 1, 0.36, 0.36 );

--setScaleKey( spep_0-3 + 34, 1, 0.33, 0.33 );
--setScaleKey( spep_0-3 + 36, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 42, 1, 0.33, 0.33 );
--setScaleKey( spep_0-3 + 40, 1, 0.28, 0.28 );
--setScaleKey( spep_0-3 + 42, 1, 0.26, 0.26 );
setScaleKey( spep_0-3 + 46, 1, 0.325, 0.325 );
--setScaleKey( spep_0-3 + 46, 1, 0.24, 0.24 );
--setScaleKey( spep_0-3 + 48, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 54, 1, 0.31, 0.31 );
--setScaleKey( spep_0-3 + 52, 1, 0.21, 0.21 );
--setScaleKey( spep_0-3 + 54, 1, 0.19, 0.19 );
setScaleKey( spep_0-1 + 118, 1, 0.31 ,0.31 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-1 + 118, 1, 0 );

--敵の動き2
setDisp( spep_0-3 + 290, 1, 1 );
setDisp( spep_0-1 + 368, 1, 0 );

changeAnime( spep_0-3 + 290, 1, 100 );

setMoveKey( spep_0-3 + 290, 1, -4.1, 350 , 0 );
setMoveKey( spep_0-3 + 326, 1, -4.1, 350 , 0 );
setMoveKey( spep_0-3 + 328, 1, -4.3, 374.1 , 0 );
setMoveKey( spep_0-3 + 330, 1, -8.3, 367.3 , 0 );
setMoveKey( spep_0-3 + 332, 1, -4.3, 376.6 , 0 );
setMoveKey( spep_0-3 + 334, 1, -8.3, 385.9 , 0 );
setMoveKey( spep_0-3 + 336, 1, -4.3, 379.1 , 0 );
setMoveKey( spep_0-3 + 338, 1, -8.3, 372.4 , 0 );
setMoveKey( spep_0-3 + 340, 1, -4.3, 381.7 , 0 );
setMoveKey( spep_0-3 + 342, 1, -12.3, 378.9 , 0 );
setMoveKey( spep_0-3 + 344, 1, -4.3, 384.2 , 0 );
setMoveKey( spep_0-3 + 346, 1, -8.3, 389.5 , 0 );
setMoveKey( spep_0-3 + 348, 1, -4.3, 386.8 , 0 );
setMoveKey( spep_0-3 + 350, 1, -8.3, 380 , 0 );
setMoveKey( spep_0-3 + 352, 1, -4.3, 389.3 , 0 );
setMoveKey( spep_0-3 + 354, 1, -8.3, 382.6 , 0 );
setMoveKey( spep_0-3 + 356, 1, -4.3, 391.8 , 0 );
setMoveKey( spep_0-3 + 358, 1, -12.3, 397.1 , 0 );
setMoveKey( spep_0-3 + 360, 1, -4.3, 394.4 , 0 );
setMoveKey( spep_0-3 + 362, 1, -8.3, 387.6 , 0 );
setMoveKey( spep_0-3 + 364, 1, -4.3, 396.9 , 0 );
setMoveKey( spep_0-3 + 366, 1, -12.4, 394.2 , 0 );
setMoveKey( spep_0-1 + 368, 1, -4.4, 399.4 , 0 );

setScaleKey( spep_0-3 + 290, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 328, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 330, 1, 0.26, 0.26 );
setScaleKey( spep_0-1 + 368, 1, 0.26, 0.26 );

setRotateKey( spep_0-3 + 290, 1, 0 );
setRotateKey( spep_0-1 + 368, 1, 0 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 6, 8, "", 0, 0, 0, -1);

--電撃走る
SE002 = playSeVer2( spep_0 + 38, 1147, "",spep_0 + 136, 0, 24, -1);

--気を溜める
SE003 = playSeVer2( spep_0 + 90, 1035, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 90, 1137, "", 0, 0, 0, -1);

--オーラ
SE005 = playSeVer2( spep_0 + 102, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE005, 63 );

--腕前に出す
SE006 = playSeVer2( spep_0 + 126, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 126, SE006, 151 );
SE007 = playSeVer2( spep_0 + 126, 1208, "", 0, 0, 0, -1);

--オーラ
SE008 = playSeVer2( spep_0 + 126, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 126, SE008, 63 );

--腕前に出す
SE009 = playSeVer2( spep_0 + 130, 1006, "", 0, 0, 0, -1);

--オーラ
SE010 = playSeVer2( spep_0 + 150, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE010, 63 );
SE011 = playSeVer2( spep_0 + 174, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 174, SE011, 63 );

--腕引き寄せる
SE012 = playSeVer2( spep_0 + 180, 1003, "", 0, 0, 0, -1);

--オーラ
SE013 = playSeVer2( spep_0 + 198, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE013, 63 );

--顔カットイン
SE014 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--オーラ
SE015 = playSeVer2( spep_0 + 222, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 222, SE015, 63 );
SE016 = playSeVer2( spep_0 + 246, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE016, 63 );
SE017 = playSeVer2( spep_0 + 270, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE017, 63 );
SE018 = playSeVer2( spep_0 + 294, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 294, SE018, 63 );

--気が爆発する
SE019 = playSeVer2( spep_0 + 320, 1023, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 320, 1168, "",spep_0 + 434, 0, 12, -1);

--オーラ
SE021 = playSeVer2( spep_0 + 318, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE021, 63 );

--気が爆発する
SE022 = playSeVer2( spep_0 + 324, 1017, "", 0, 0, 0, -1);

--オーラ
SE023 = playSeVer2( spep_0 + 342, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 342, SE023, 63 );
SE024 = playSeVer2( spep_0 + 366, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 366, SE024, 63 );

--悟空アップ
SE025 = playSeVer2( spep_0 + 368, 1258, "",spep_0 + 448, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 368, SE025, 84 );
SE026 = playSeVer2( spep_0 + 368, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 368, SE026, 82 );
SE027 = playSeVer2( spep_0 + 368, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 368, SE027, 86 );
SE028 = playSeVer2( spep_0 + 368, 1264, "",spep_0 + 448, 0, 24, -1);

--かめはめ波発射
SE033 = playSeVer2( spep_0 + 416, 1027, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 416, 1146, "", 0, 0, 0, 0.6);
SE035 = playSeVer2( spep_0 + 416, 1193, "",spep_0 + 554, 0, 20, -1);
SE036 = playSeVer2( spep_0 + 416, 1223, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 630, 0, 0, 0, 0, 255 );  --黒 背景


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 512; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE029, 0 );
    stopSe( SP_dodge - 12, SE030, 0 );
    stopSe( SP_dodge - 12, SE031, 0 );
    stopSe( SP_dodge - 12, SE032, 0 );
    stopSe( SP_dodge - 12, SE033, 0 );
    stopSe( SP_dodge - 12, SE034, 0 );
    stopSe( SP_dodge - 12, SE035, 0 );
    stopSe( SP_dodge - 12, SE036, 0 );

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
--敵の動き3
setDisp( spep_0-3 + 510, 1, 1 );
setDisp( spep_0-1 + 544, 1, 0 );

changeAnime( spep_0-3 + 510, 1, 104 );
changeAnime( spep_0-3 + 542, 1, 108 );

setMoveKey( spep_0-3 + 510, 1, 660.5, 780.5 , 0 );
setMoveKey( spep_0-3 + 512, 1, 649.1, 765.8 , 0 );
setMoveKey( spep_0-3 + 514, 1, 634, 746.2 , 0 );
setMoveKey( spep_0-3 + 516, 1, 615.2, 721.7 , 0 );
setMoveKey( spep_0-3 + 518, 1, 592.5, 692.3 , 0 );
setMoveKey( spep_0-3 + 520, 1, 566.1, 658.1 , 0 );
setMoveKey( spep_0-3 + 522, 1, 535.8, 618.9 , 0 );
setMoveKey( spep_0-3 + 524, 1, 501.9, 574.8 , 0 );
setMoveKey( spep_0-3 + 526, 1, 464.1, 525.8 , 0 );
setMoveKey( spep_0-3 + 528, 1, 422.5, 472 , 0 );
setMoveKey( spep_0-3 + 530, 1, 377.2, 413.2 , 0 );
setMoveKey( spep_0-3 + 532, 1, 328.1, 349.6 , 0 );
setMoveKey( spep_0-3 + 534, 1, 275.3, 281 , 0 );
setMoveKey( spep_0-3 + 536, 1, 218.6, 207.5 , 0 );
setMoveKey( spep_0-3 + 538, 1, 158.2, 129.2 , 0 );
setMoveKey( spep_0-3 + 540, 1, 94, 45.9 , 0 );
setMoveKey( spep_0-3 + 541, 1, 94, 45.9 , 0 );

setMoveKey( spep_0-3 + 542, 1, 56.1, 14 , 0 );
setMoveKey( spep_0-1 + 544, 1, 56.1, 14 , 0 );

setScaleKey( spep_0-3 + 510, 1, 0.47, 0.47 );
setScaleKey( spep_0-3 + 512, 1, 0.48, 0.48 );
setScaleKey( spep_0-3 + 516, 1, 0.48, 0.48 );
setScaleKey( spep_0-3 + 518, 1, 0.49, 0.49 );
setScaleKey( spep_0-3 + 522, 1, 0.49, 0.49 );
setScaleKey( spep_0-3 + 524, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 526, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 528, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 530, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 532, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 534, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 536, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 538, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 540, 1, 0.56, 0.56 );
setScaleKey( spep_0-3 + 541, 1, 0.56, 0.56 );

setScaleKey( spep_0-3 + 542, 1, 0.69, 0.69 );
setScaleKey( spep_0-1 + 544, 1, 0.69, 0.69 );

setRotateKey( spep_0-3 + 510, 1, -27.2 );
setRotateKey( spep_0-3 + 540, 1, -27.2 );
setRotateKey( spep_0-3 + 541, 1, -27.2 );

setRotateKey( spep_0-3 + 542, 1, -45.2 );
setRotateKey( spep_0-1 + 544, 1, -45.2 );


--敵の動き4
setDisp( spep_0-3 + 552, 1, 1 );
setDisp( spep_0-1 + 554, 1, 0 );

changeAnime( spep_0-3 + 552, 1, 108 );

setMoveKey( spep_0-3 + 552, 1, 56.1, 14 , 0 );
setMoveKey( spep_0-3 + 554, 1, 56.1, 14 , 0 );

setScaleKey( spep_0-3 + 552, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 554, 1, 0.69, 0.69 );

setRotateKey( spep_0-3 + 552, 1, -45.2 );
setRotateKey( spep_0-3 + 554, 1, -45.2 );


--敵の動き5
setDisp( spep_0-3 + 562, 1, 1 );
setDisp( spep_0-1 + 564, 1, 0 );

changeAnime( spep_0-3 + 564, 1, 108 );

setMoveKey( spep_0-3 + 562, 1, 56.1, 14 , 0 );
setMoveKey( spep_0-1 + 564, 1, 56.1, 14 , 0 );

setScaleKey( spep_0-3 + 562, 1, 0.69, 0.69 );
setScaleKey( spep_0-1 + 564, 1, 0.69, 0.69 );

setRotateKey( spep_0-3 + 562, 1, -45.2 );
setRotateKey( spep_0-1 + 564, 1, -45.2 );


--敵の動き6
setDisp( spep_0-3 + 574, 1, 1 );
setDisp( spep_0-1 + 576, 1, 0 );

changeAnime( spep_0-3 + 574, 1, 108 );

setMoveKey( spep_0-3 + 574, 1, 56.1, 14 , 0 );
setMoveKey( spep_0-1 + 576, 1, 56.1, 14 , 0 );

setScaleKey( spep_0-3 + 574, 1, 0.69, 0.69 );
setScaleKey( spep_0-1 + 576, 1, 0.69, 0.69 );

setRotateKey( spep_0-3 + 574, 1, -45.2 );
setRotateKey( spep_0-1 + 576, 1, -45.2 );


-- ** 音 ** --
--気弾ヒット
SE037 = playSeVer2( spep_0 + 540, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 540, SE037, 145 );
SE038 = playSeVer2( spep_0 + 540, 1023, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 544, 1011, "", 0, 0, 0, -1);

--かめはめ波発射中
SE029 = playSeVer2( spep_0 + 580, 1161, "",spep_0 + 640, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 580, SE029, 133 );
SE030 = playSeVer2( spep_0 + 580, 1176, "",spep_0 + 640, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 580, SE030, 111 );
SE031 = playSeVer2( spep_0 + 580, 1226, "",spep_0 + 640, 0, 8, -1);
SE032 = playSeVer2( spep_0 + 580, 1211, "",spep_0 + 640, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 580, SE032, 562 );

--白フェード
entryFade( spep_0 +622 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+630;


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
--4倍だー～ラスト
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --4倍だー～ラスト：手前 ef_003
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 490, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 490, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 490, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 490, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --4倍だー～ラスト：奥 ef_004
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 490, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 490, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 490, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 490, finish_b, 255 );

-- ** エフェクト等 ** --
KO = entryEffect( spep_2 + 476, SP_05, 0x100, -1, 0, 0, 0 );  --KO ef_005
setEffMoveKey( spep_2 + 476, KO, 0, 0, 0 );
setEffMoveKey( spep_2 + 666, KO, 0, 0, 0 );
setEffScaleKey( spep_2 + 476, KO, 1.0, 1.0 );
setEffScaleKey( spep_2 + 666, KO, 1.0, 1.0 );
setEffRotateKey( spep_2 + 476, KO, 0 );
setEffRotateKey( spep_2 + 666, KO, 0 );
setEffAlphaKey( spep_2 + 476, KO, 255 );
setEffAlphaKey( spep_2 + 666, KO, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2-3 + 252, 1, 1 );
setDisp( spep_2-1 + 300, 1, 0 );

changeAnime( spep_2-3 + 252, 1, 108 );
changeAnime( spep_2-3 + 294, 1, 106 );

setMoveKey( spep_2-3 + 252, 1, 198.8, 299.4 , 0 );
setMoveKey( spep_2-3 + 254, 1, 183.1, 277.4 , 0 );
setMoveKey( spep_2-3 + 256, 1, 167.4, 255.3 , 0 );
setMoveKey( spep_2-3 + 258, 1, 151.7, 233.2 , 0 );
setMoveKey( spep_2-3 + 260, 1, 136.6, 206.5 , 0 );
setMoveKey( spep_2-3 + 262, 1, 136.6, 206.5 , 0 );
setMoveKey( spep_2-3 + 264, 1, 124, 184.1 , 0 );
setMoveKey( spep_2-3 + 266, 1, 124, 184.1 , 0 );
setMoveKey( spep_2-3 + 267, 1, 124, 184.1 , 0 );
setMoveKey( spep_2-3 + 268, 1, 22, 11.9 , 0 );
setMoveKey( spep_2-3 + 270, 1, 22, 11.9 , 0 );
setMoveKey( spep_2-3 + 272, 1, 20, 15.9 , 0 );
setMoveKey( spep_2-3 + 274, 1, -18, -12.1 , 0 );
setMoveKey( spep_2-3 + 278, 1, -18, -12.1 , 0 );
setMoveKey( spep_2-3 + 280, 1, -57.4, -84.3 , 0 );
setMoveKey( spep_2-3 + 282, 1, 413.9, 402.6 , 0 );
setMoveKey( spep_2-3 + 284, 1, 492.9, 866.6 , 0 );
setMoveKey( spep_2-3 + 286, 1, 492.9, 866.6 , 0 );
setMoveKey( spep_2-3 + 288, 1, 68.6, -594.4 , 0 );
setMoveKey( spep_2-3 + 290, 1, 68.6, -594.4 , 0 );
setMoveKey( spep_2-3 + 291, 1, 68.6, -594.4 , 0 );
setMoveKey( spep_2-3 + 292, 1, 21.8, 59.7 , 0 );
setMoveKey( spep_2-3 + 294, 1, 61.7, 38.9 , 0 );
setMoveKey( spep_2-3 + 296, 1, 154.8, 205 , 0 );
setMoveKey( spep_2-3 + 298, 1, 138.3, 248.4 , 0 );
setMoveKey( spep_2-1 + 300, 1, 293.5, 402.7 , 0 );

setScaleKey( spep_2-3 + 252, 1, 0.31, 0.31 );
setScaleKey( spep_2-3 + 266, 1, 0.31, 0.31 );
setScaleKey( spep_2-3 + 267, 1, 0.31, 0.31 );
setScaleKey( spep_2-3 + 268, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 278, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 280, 1, 0.78, 0.78 );
setScaleKey( spep_2-3 + 282, 1, 1.31, 1.31 );
setScaleKey( spep_2-3 + 284, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 286, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 288, 1, 2.48, 2.48 );
setScaleKey( spep_2-3 + 290, 1, 2.48, 2.48 );
setScaleKey( spep_2-3 + 291, 1, 2.48, 2.48 );
setScaleKey( spep_2-3 + 292, 1, 0.82, 0.82 );
setScaleKey( spep_2-3 + 294, 1, 1.12, 1.12 );
setScaleKey( spep_2-3 + 296, 1, 0.94, 0.94 );
setScaleKey( spep_2-3 + 298, 1, 0.93, 0.93 );
setScaleKey( spep_2-1 + 300, 1, 0.93, 0.93 );

setRotateKey( spep_2-3 + 252, 1, -49.2 );
setRotateKey( spep_2-3 + 266, 1, -49.2 );
setRotateKey( spep_2-3 + 268, 1, -36.5 );
setRotateKey( spep_2-3 + 272, 1, -36.5 );
setRotateKey( spep_2-3 + 274, 1, -49.2 );
setRotateKey( spep_2-3 + 293, 1, -49.2 );
setRotateKey( spep_2-3 + 294, 1, -49.2 );
setRotateKey( spep_2-1 + 300, 1, -49.2 );

--敵の動き2
setDisp( spep_2-3 + 328, 1, 1 );
setDisp( spep_2-1 + 368, 1, 0 );

changeAnime( spep_2-3 + 328, 1, 106 );

setBlendColor(spep_2 + 324, 1, 3, 0, 0, 0, 0);
setBlendColor(spep_2-3 + 328, 1, 3, 0.4, 0.44, 0.93, 0.87);
setBlendColor(spep_2 + 368, 1, 3, 0.4, 0.44, 0.93, 0.87);
setBlendColor(spep_2 + 370, 1, 3, 0.4, 0.44, 0.93, 0);
setBlendColor(spep_2 + 372, 1, 3, 0, 0, 0, 0);

setMoveKey( spep_2-3 + 328, 1, -13.9, 23.9 , 0 );
setMoveKey( spep_2-3 + 330, 1, -7.5, 38.1 , 0 );
setMoveKey( spep_2-3 + 332, 1, -13.1, 52.3 , 0 );
setMoveKey( spep_2-3 + 334, 1, -2.7, 42.5 , 0 );
setMoveKey( spep_2-3 + 336, 1, -4.3, 32.7 , 0 );
setMoveKey( spep_2-3 + 338, 1, 2.1, 46.9 , 0 );
setMoveKey( spep_2-3 + 340, 1, -7.5, 61.1 , 0 );
setMoveKey( spep_2-3 + 342, 1, 6.9, 51.3 , 0 );
setMoveKey( spep_2-3 + 344, 1, 1.3, 37.5 , 0 );
setMoveKey( spep_2-3 + 346, 1, 11.7, 55.7 , 0 );
setMoveKey( spep_2-3 + 348, 1, 10.1, 49.9 , 0 );
setMoveKey( spep_2-3 + 350, 1, 16.5, 60.1 , 0 );
setMoveKey( spep_2-3 + 352, 1, 10.9, 54.3 , 0 );
setMoveKey( spep_2-3 + 354, 1, 21.3, 64.5 , 0 );
setMoveKey( spep_2-3 + 356, 1, 19.7, 62.7 , 0 );
setMoveKey( spep_2-3 + 358, 1, 26.1, 68.9 , 0 );
setMoveKey( spep_2-3 + 360, 1, 20.5, 67.1 , 0 );
setMoveKey( spep_2-3 + 362, 1, 30.9, 73.3 , 0 );
setMoveKey( spep_2-3 + 364, 1, 25.3, 71.5 , 0 );
setMoveKey( spep_2-3 + 366, 1, 35.7, 77.7 , 0 );
setMoveKey( spep_2-1 + 368, 1, 30.1, 75.9 , 0 );

setScaleKey( spep_2-3 + 328, 1, 2.07, 2.07 );
setScaleKey( spep_2-1 + 368, 1, 2.07, 2.07 );

setRotateKey( spep_2-3 + 328, 1, -15.5 );
setRotateKey( spep_2-1 + 368, 1, -15.5 );


-- ** 音 ** --
--かめはめ波発射中2
SE041 = playSeVer2( spep_2 + 0, 1161, "",spep_2 + 178, 0, 20, -1);
SE042 = playSeVer2( spep_2 + 0, 1176, "",spep_2 + 178, 0, 20, -1);
SE043 = playSeVer2( spep_2 + 0, 1226, "",spep_2 + 178, 0, 20, -1);
SE044 = playSeVer2( spep_2 + 0, 1211, "",spep_2 + 178, 0, 20, -1);

--岩持ち上がる
SE045 = playSeVer2( spep_2 + 106, 1168, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE045, 219 );
setStartTimeMs( SE045,  583 );
SE046 = playSeVer2( spep_2 + 100, 1168, "",spep_2 + 174, 0, 20, -1);

--4倍発射
SE047 = playSeVer2( spep_2 + 154, 1146, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 154, SE047, 89 );
SE048 = playSeVer2( spep_2 + 154, 1213, "",spep_2 + 436, 0, 66, -1);
setSeVolumeByWorkId( spep_2 + 154, SE048, 90 );
SE049 = playSeVer2( spep_2 + 154, 1284, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 154, SE049, 90 );

--気弾敵にヒット
SE050 = playSeVer2( spep_2 + 238, 1178, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 238, 1179, "", 0, 0, 0, -1);

--気弾で押し出す
SE052 = playSeVer2( spep_2 + 276, 1017, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 276, 1024, "", 0, 0, 0, 0.7);

--岩パラパラ落ちてくる
SE054 = playSeVer2( spep_2 + 446, 1168, "", 0, 8, 0, 0.5);
setStartTimeMs( SE054,  2183 );

--気弾に飲み込まれる
SE055 = playSeVer2( spep_2 + 326, 1211, "",spep_2 + 418, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 326, SE055, 562 );
SE056 = playSeVer2( spep_2 + 342, 1258, "",spep_2 + 410, 12, 38, -1);
setStartTimeMs( SE056,  100 );

--終わり
hideKoScreen();
entryFade( spep_2 +470, 2,  8, 2, 0, 0, 0, 255);             -- black fade
dealDamage(spep_2+372);
endPhase( spep_2 + 480 );

else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--冒頭～着弾～構え
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
beam_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  --冒頭～着弾～構え：手前(敵) ef_001r
setEffMoveKey( spep_0 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 630, beam_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 630, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beam_f, 0 );
setEffRotateKey( spep_0 + 630, beam_f, 0 );
setEffAlphaKey( spep_0 + 0, beam_f, 255 );
setEffAlphaKey( spep_0 + 630, beam_f, 255 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 );  --冒頭～着弾～構え：奥(敵) ef_002r
setEffMoveKey( spep_0 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 630, beam_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 630, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, beam_b, 0 );
setEffRotateKey( spep_0 + 630, beam_b, 0 );
setEffAlphaKey( spep_0 + 0, beam_b, 255 );
setEffAlphaKey( spep_0 + 630, beam_b, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +200;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

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


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-1 + 118, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 86, 223.5 , 0 );
setMoveKey( spep_0 + 1, 1, 86, 223.5 , 0 );
setMoveKey( spep_0 + 2, 1, 86, 223.5 , 0 );
setMoveKey( spep_0-3 + 6, 1, 86, 223.5 , 0 );
setMoveKey( spep_0-3 + 7, 1, 86, 223.5 , 0 );
setMoveKey( spep_0-3 + 8, 1, 94, 237.7 , 0 );
setMoveKey( spep_0-3 + 9, 1, 94, 237.7 , 0 );
setMoveKey( spep_0-3 + 10, 1, 102, 251.9 , 0 );
setMoveKey( spep_0-3 + 12, 1, 110, 266.2 , 0 );
setMoveKey( spep_0-3 + 14, 1, 118, 280.4 , 0 );
setMoveKey( spep_0-3 + 16, 1, 126, 294.6 , 0 );
setMoveKey( spep_0-3 + 18, 1, 134, 308.8 , 0 );
setMoveKey( spep_0-3 + 20, 1, 142, 323.1 , 0 );
setMoveKey( spep_0-3 + 22, 1, 150, 337.3 , 0 );
setMoveKey( spep_0-3 + 24, 1, 158, 351.5 , 0 );
setMoveKey( spep_0-3 + 26, 1, 162.5, 359.1 , 0 );
setMoveKey( spep_0-3 + 28, 1, 167, 366.8 , 0 );
setMoveKey( spep_0-3 + 30, 1, 171.5, 374.4 , 0 );
setMoveKey( spep_0-3 + 32, 1, 176.1, 382.1 , 0 );

a=0;
b=0;

setMoveKey( spep_0-3 + 34, 1, 180.6, 389.7 , 0 );
setMoveKey( spep_0-3 + 36, 1, 185.1, 397.4 , 0 );
setMoveKey( spep_0-3 + 38, 1, 189.6, 405 , 0 );
setMoveKey( spep_0-3 + 40, 1, 190.7+a, 406.6+b , 0 );
setMoveKey( spep_0-3 + 42, 1, 191.7+a, 408.1+b , 0 );
setMoveKey( spep_0-3 + 44, 1, 192.8+a, 409.7+b , 0 );
setMoveKey( spep_0-3 + 46, 1, 193.8+a, 411.3+b , 0 );
setMoveKey( spep_0-3 + 48, 1, 194.9+a, 412.8+b , 0 );
setMoveKey( spep_0-3 + 50, 1, 195.9+a, 414.4+b , 0 );
setMoveKey( spep_0-3 + 52, 1, 197+a, 415.9+b , 0 );
setMoveKey( spep_0-3 + 54, 1, 198+a, 417.5+b , 0 );
setMoveKey( spep_0-3 + 88, 1, 198+a, 417.5+b , 0 );

setMoveKey( spep_0-3 + 90, 1, 194+a, 409.5+b , 0 );
setMoveKey( spep_0-3 + 92, 1, 198+a, 417.5+b , 0 );
setMoveKey( spep_0-3 + 94, 1, 194+a, 421.5+b , 0 );
setMoveKey( spep_0-3 + 96, 1, 198+a, 417.5+b , 0 );
setMoveKey( spep_0-3 + 98, 1, 194+a, 409.5+b , 0 );
setMoveKey( spep_0-3 + 100, 1, 198+a, 417.5+b , 0 );
setMoveKey( spep_0-3 + 102, 1, 190+a, 413.5+b , 0 );
setMoveKey( spep_0-3 + 104, 1, 198+a, 417.5+b , 0 );
setMoveKey( spep_0-3 + 106, 1, 194+a, 421.5+b , 0 );
setMoveKey( spep_0-3 + 108, 1, 198+a, 417.5+b , 0 );
setMoveKey( spep_0-3 + 110, 1, 194+a, 409.5+b , 0 );
setMoveKey( spep_0-3 + 112, 1, 198+a, 417.5+b , 0 );
setMoveKey( spep_0-3 + 114, 1, 190+a, 413.5+b , 0 );
setMoveKey( spep_0-3 + 116, 1, 198+a, 417.5+b , 0 );
setMoveKey( spep_0-1 + 118, 1, 194+a, 421.5+b , 0 );

setScaleKey( spep_0 + 0, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 1, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 2, 1, 0.7, 0.7 );
setScaleKey( spep_0-3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_0-3 + 7, 1, 0.7, 0.7 );
setScaleKey( spep_0-3 + 8, 1, 0.67, 0.67 );
setScaleKey( spep_0-3 + 9, 1, 0.67, 0.67 );
setScaleKey( spep_0-3 + 10, 1, 0.65, 0.65 );
setScaleKey( spep_0-3 + 12, 1, 0.62, 0.62 );
setScaleKey( spep_0-3 + 14, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 16, 1, 0.56, 0.56 );
setScaleKey( spep_0-3 + 18, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 20, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 22, 1, 0.48, 0.48 );
setScaleKey( spep_0-3 + 24, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 26, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 28, 1, 0.41, 0.41 );
setScaleKey( spep_0-3 + 30, 1, 0.38, 0.38 );
--setScaleKey( spep_0-3 + 32, 1, 0.36, 0.36 );

--setScaleKey( spep_0-3 + 34, 1, 0.33, 0.33 );
--setScaleKey( spep_0-3 + 36, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 42, 1, 0.33, 0.33 );
--setScaleKey( spep_0-3 + 40, 1, 0.28, 0.28 );
--setScaleKey( spep_0-3 + 42, 1, 0.26, 0.26 );
setScaleKey( spep_0-3 + 46, 1, 0.325, 0.325 );
--setScaleKey( spep_0-3 + 46, 1, 0.24, 0.24 );
--setScaleKey( spep_0-3 + 48, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 54, 1, 0.31, 0.31 );
--setScaleKey( spep_0-3 + 52, 1, 0.21, 0.21 );
--setScaleKey( spep_0-3 + 54, 1, 0.19, 0.19 );
setScaleKey( spep_0-1 + 118, 1, 0.31 ,0.31 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-1 + 118, 1, 0 );

--敵の動き2
setDisp( spep_0-3 + 290, 1, 1 );
setDisp( spep_0-1 + 368, 1, 0 );

changeAnime( spep_0-3 + 290, 1, 100 );

setMoveKey( spep_0-3 + 290, 1, -4.1, 350 , 0 );
setMoveKey( spep_0-3 + 326, 1, -4.1, 350 , 0 );
setMoveKey( spep_0-3 + 328, 1, -4.3, 374.1 , 0 );
setMoveKey( spep_0-3 + 330, 1, -8.3, 367.3 , 0 );
setMoveKey( spep_0-3 + 332, 1, -4.3, 376.6 , 0 );
setMoveKey( spep_0-3 + 334, 1, -8.3, 385.9 , 0 );
setMoveKey( spep_0-3 + 336, 1, -4.3, 379.1 , 0 );
setMoveKey( spep_0-3 + 338, 1, -8.3, 372.4 , 0 );
setMoveKey( spep_0-3 + 340, 1, -4.3, 381.7 , 0 );
setMoveKey( spep_0-3 + 342, 1, -12.3, 378.9 , 0 );
setMoveKey( spep_0-3 + 344, 1, -4.3, 384.2 , 0 );
setMoveKey( spep_0-3 + 346, 1, -8.3, 389.5 , 0 );
setMoveKey( spep_0-3 + 348, 1, -4.3, 386.8 , 0 );
setMoveKey( spep_0-3 + 350, 1, -8.3, 380 , 0 );
setMoveKey( spep_0-3 + 352, 1, -4.3, 389.3 , 0 );
setMoveKey( spep_0-3 + 354, 1, -8.3, 382.6 , 0 );
setMoveKey( spep_0-3 + 356, 1, -4.3, 391.8 , 0 );
setMoveKey( spep_0-3 + 358, 1, -12.3, 397.1 , 0 );
setMoveKey( spep_0-3 + 360, 1, -4.3, 394.4 , 0 );
setMoveKey( spep_0-3 + 362, 1, -8.3, 387.6 , 0 );
setMoveKey( spep_0-3 + 364, 1, -4.3, 396.9 , 0 );
setMoveKey( spep_0-3 + 366, 1, -12.4, 394.2 , 0 );
setMoveKey( spep_0-1 + 368, 1, -4.4, 399.4 , 0 );

setScaleKey( spep_0-3 + 290, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 328, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 330, 1, 0.26, 0.26 );
setScaleKey( spep_0-1 + 368, 1, 0.26, 0.26 );

setRotateKey( spep_0-3 + 290, 1, 0 );
setRotateKey( spep_0-1 + 368, 1, 0 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 6, 8, "", 0, 0, 0, -1);

--電撃走る
SE002 = playSeVer2( spep_0 + 38, 1147, "",spep_0 + 136, 0, 24, -1);

--気を溜める
SE003 = playSeVer2( spep_0 + 90, 1035, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 90, 1137, "", 0, 0, 0, -1);

--オーラ
SE005 = playSeVer2( spep_0 + 102, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE005, 63 );

--腕前に出す
SE006 = playSeVer2( spep_0 + 126, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 126, SE006, 151 );
SE007 = playSeVer2( spep_0 + 126, 1208, "", 0, 0, 0, -1);

--オーラ
SE008 = playSeVer2( spep_0 + 126, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 126, SE008, 63 );

--腕前に出す
SE009 = playSeVer2( spep_0 + 130, 1006, "", 0, 0, 0, -1);

--オーラ
SE010 = playSeVer2( spep_0 + 150, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE010, 63 );
SE011 = playSeVer2( spep_0 + 174, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 174, SE011, 63 );

--腕引き寄せる
SE012 = playSeVer2( spep_0 + 180, 1003, "", 0, 0, 0, -1);

--オーラ
SE013 = playSeVer2( spep_0 + 198, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE013, 63 );

--顔カットイン
SE014 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--オーラ
SE015 = playSeVer2( spep_0 + 222, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 222, SE015, 63 );
SE016 = playSeVer2( spep_0 + 246, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE016, 63 );
SE017 = playSeVer2( spep_0 + 270, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE017, 63 );
SE018 = playSeVer2( spep_0 + 294, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 294, SE018, 63 );

--気が爆発する
SE019 = playSeVer2( spep_0 + 320, 1023, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 320, 1168, "",spep_0 + 434, 0, 12, -1);

--オーラ
SE021 = playSeVer2( spep_0 + 318, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE021, 63 );

--気が爆発する
SE022 = playSeVer2( spep_0 + 324, 1017, "", 0, 0, 0, -1);

--オーラ
SE023 = playSeVer2( spep_0 + 342, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 342, SE023, 63 );
SE024 = playSeVer2( spep_0 + 366, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 366, SE024, 63 );

--悟空アップ
SE025 = playSeVer2( spep_0 + 368, 1258, "",spep_0 + 448, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 368, SE025, 84 );
SE026 = playSeVer2( spep_0 + 368, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 368, SE026, 82 );
SE027 = playSeVer2( spep_0 + 368, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 368, SE027, 86 );
SE028 = playSeVer2( spep_0 + 368, 1264, "",spep_0 + 448, 0, 24, -1);

--かめはめ波発射
SE033 = playSeVer2( spep_0 + 416, 1027, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 416, 1146, "", 0, 0, 0, 0.6);
SE035 = playSeVer2( spep_0 + 416, 1193, "",spep_0 + 554, 0, 20, -1);
SE036 = playSeVer2( spep_0 + 416, 1223, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 630, 0, 0, 0, 0, 255 );  --黒 背景


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 512; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE029, 0 );
    stopSe( SP_dodge - 12, SE030, 0 );
    stopSe( SP_dodge - 12, SE031, 0 );
    stopSe( SP_dodge - 12, SE032, 0 );
    stopSe( SP_dodge - 12, SE033, 0 );
    stopSe( SP_dodge - 12, SE034, 0 );
    stopSe( SP_dodge - 12, SE035, 0 );
    stopSe( SP_dodge - 12, SE036, 0 );

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
--敵の動き3
setDisp( spep_0-3 + 510, 1, 1 );
setDisp( spep_0-1 + 544, 1, 0 );

changeAnime( spep_0-3 + 510, 1, 104 );
changeAnime( spep_0-3 + 542, 1, 108 );

setMoveKey( spep_0-3 + 510, 1, 660.5, 780.5 , 0 );
setMoveKey( spep_0-3 + 512, 1, 649.1, 765.8 , 0 );
setMoveKey( spep_0-3 + 514, 1, 634, 746.2 , 0 );
setMoveKey( spep_0-3 + 516, 1, 615.2, 721.7 , 0 );
setMoveKey( spep_0-3 + 518, 1, 592.5, 692.3 , 0 );
setMoveKey( spep_0-3 + 520, 1, 566.1, 658.1 , 0 );
setMoveKey( spep_0-3 + 522, 1, 535.8, 618.9 , 0 );
setMoveKey( spep_0-3 + 524, 1, 501.9, 574.8 , 0 );
setMoveKey( spep_0-3 + 526, 1, 464.1, 525.8 , 0 );
setMoveKey( spep_0-3 + 528, 1, 422.5, 472 , 0 );
setMoveKey( spep_0-3 + 530, 1, 377.2, 413.2 , 0 );
setMoveKey( spep_0-3 + 532, 1, 328.1, 349.6 , 0 );
setMoveKey( spep_0-3 + 534, 1, 275.3, 281 , 0 );
setMoveKey( spep_0-3 + 536, 1, 218.6, 207.5 , 0 );
setMoveKey( spep_0-3 + 538, 1, 158.2, 129.2 , 0 );
setMoveKey( spep_0-3 + 540, 1, 94, 45.9 , 0 );
setMoveKey( spep_0-3 + 541, 1, 94, 45.9 , 0 );

setMoveKey( spep_0-3 + 542, 1, 56.1, 14 , 0 );
setMoveKey( spep_0-1 + 544, 1, 56.1, 14 , 0 );

setScaleKey( spep_0-3 + 510, 1, 0.47, 0.47 );
setScaleKey( spep_0-3 + 512, 1, 0.48, 0.48 );
setScaleKey( spep_0-3 + 516, 1, 0.48, 0.48 );
setScaleKey( spep_0-3 + 518, 1, 0.49, 0.49 );
setScaleKey( spep_0-3 + 522, 1, 0.49, 0.49 );
setScaleKey( spep_0-3 + 524, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 526, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 528, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 530, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 532, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 534, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 536, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 538, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 540, 1, 0.56, 0.56 );
setScaleKey( spep_0-3 + 541, 1, 0.56, 0.56 );

setScaleKey( spep_0-3 + 542, 1, 0.69, 0.69 );
setScaleKey( spep_0-1 + 544, 1, 0.69, 0.69 );

setRotateKey( spep_0-3 + 510, 1, -27.2 );
setRotateKey( spep_0-3 + 540, 1, -27.2 );
setRotateKey( spep_0-3 + 541, 1, -27.2 );

setRotateKey( spep_0-3 + 542, 1, -45.2 );
setRotateKey( spep_0-1 + 544, 1, -45.2 );


--敵の動き4
setDisp( spep_0-3 + 552, 1, 1 );
setDisp( spep_0-1 + 554, 1, 0 );

changeAnime( spep_0-3 + 552, 1, 108 );

setMoveKey( spep_0-3 + 552, 1, 56.1, 14 , 0 );
setMoveKey( spep_0-3 + 554, 1, 56.1, 14 , 0 );

setScaleKey( spep_0-3 + 552, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 554, 1, 0.69, 0.69 );

setRotateKey( spep_0-3 + 552, 1, -45.2 );
setRotateKey( spep_0-3 + 554, 1, -45.2 );


--敵の動き5
setDisp( spep_0-3 + 562, 1, 1 );
setDisp( spep_0-1 + 564, 1, 0 );

changeAnime( spep_0-3 + 564, 1, 108 );

setMoveKey( spep_0-3 + 562, 1, 56.1, 14 , 0 );
setMoveKey( spep_0-1 + 564, 1, 56.1, 14 , 0 );

setScaleKey( spep_0-3 + 562, 1, 0.69, 0.69 );
setScaleKey( spep_0-1 + 564, 1, 0.69, 0.69 );

setRotateKey( spep_0-3 + 562, 1, -45.2 );
setRotateKey( spep_0-1 + 564, 1, -45.2 );


--敵の動き6
setDisp( spep_0-3 + 574, 1, 1 );
setDisp( spep_0-1 + 576, 1, 0 );

changeAnime( spep_0-3 + 574, 1, 108 );

setMoveKey( spep_0-3 + 574, 1, 56.1, 14 , 0 );
setMoveKey( spep_0-1 + 576, 1, 56.1, 14 , 0 );

setScaleKey( spep_0-3 + 574, 1, 0.69, 0.69 );
setScaleKey( spep_0-1 + 576, 1, 0.69, 0.69 );

setRotateKey( spep_0-3 + 574, 1, -45.2 );
setRotateKey( spep_0-1 + 576, 1, -45.2 );


-- ** 音 ** --
--気弾ヒット
SE037 = playSeVer2( spep_0 + 540, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 540, SE037, 145 );
SE038 = playSeVer2( spep_0 + 540, 1023, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 544, 1011, "", 0, 0, 0, -1);

--かめはめ波発射中
SE029 = playSeVer2( spep_0 + 580, 1161, "",spep_0 + 640, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 580, SE029, 133 );
SE030 = playSeVer2( spep_0 + 580, 1176, "",spep_0 + 640, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 580, SE030, 111 );
SE031 = playSeVer2( spep_0 + 580, 1226, "",spep_0 + 640, 0, 8, -1);
SE032 = playSeVer2( spep_0 + 580, 1211, "",spep_0 + 640, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 580, SE032, 562 );

--白フェード
entryFade( spep_0 +622 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+630;


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
--4倍だー～ラスト
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 );  --4倍だー～ラスト：手前(敵) ef_003r
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 490, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 490, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 490, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 490, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 );  --4倍だー～ラスト：奥(敵) ef_004r
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 490, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 490, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 490, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 490, finish_b, 255 );

-- ** エフェクト等 ** --
KO = entryEffect( spep_2 + 476, SP_05x, 0x100, -1, 0, 0, 0 );  --KO ef_005
setEffMoveKey( spep_2 + 476, KO, 0, 0, 0 );
setEffMoveKey( spep_2 + 666, KO, 0, 0, 0 );
setEffScaleKey( spep_2 + 476, KO, -1.0, 1.0 );
setEffScaleKey( spep_2 + 666, KO, -1.0, 1.0 );
setEffRotateKey( spep_2 + 476, KO, 0 );
setEffRotateKey( spep_2 + 666, KO, 0 );
setEffAlphaKey( spep_2 + 476, KO, 255 );
setEffAlphaKey( spep_2 + 666, KO, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2-3 + 252, 1, 1 );
setDisp( spep_2-1 + 300, 1, 0 );

changeAnime( spep_2-3 + 252, 1, 108 );
changeAnime( spep_2-3 + 294, 1, 106 );

setMoveKey( spep_2-3 + 252, 1, 198.8, 299.4 , 0 );
setMoveKey( spep_2-3 + 254, 1, 183.1, 277.4 , 0 );
setMoveKey( spep_2-3 + 256, 1, 167.4, 255.3 , 0 );
setMoveKey( spep_2-3 + 258, 1, 151.7, 233.2 , 0 );
setMoveKey( spep_2-3 + 260, 1, 136.6, 206.5 , 0 );
setMoveKey( spep_2-3 + 262, 1, 136.6, 206.5 , 0 );
setMoveKey( spep_2-3 + 264, 1, 124, 184.1 , 0 );
setMoveKey( spep_2-3 + 266, 1, 124, 184.1 , 0 );
setMoveKey( spep_2-3 + 267, 1, 124, 184.1 , 0 );
setMoveKey( spep_2-3 + 268, 1, 22, 11.9 , 0 );
setMoveKey( spep_2-3 + 270, 1, 22, 11.9 , 0 );
setMoveKey( spep_2-3 + 272, 1, 20, 15.9 , 0 );
setMoveKey( spep_2-3 + 274, 1, -18, -12.1 , 0 );
setMoveKey( spep_2-3 + 278, 1, -18, -12.1 , 0 );
setMoveKey( spep_2-3 + 280, 1, -57.4, -84.3 , 0 );
setMoveKey( spep_2-3 + 282, 1, 413.9, 402.6 , 0 );
setMoveKey( spep_2-3 + 284, 1, 492.9, 866.6 , 0 );
setMoveKey( spep_2-3 + 286, 1, 492.9, 866.6 , 0 );
setMoveKey( spep_2-3 + 288, 1, 68.6, -594.4 , 0 );
setMoveKey( spep_2-3 + 290, 1, 68.6, -594.4 , 0 );
setMoveKey( spep_2-3 + 291, 1, 68.6, -594.4 , 0 );
setMoveKey( spep_2-3 + 292, 1, 21.8, 59.7 , 0 );
setMoveKey( spep_2-3 + 294, 1, 61.7, 38.9 , 0 );
setMoveKey( spep_2-3 + 296, 1, 154.8, 205 , 0 );
setMoveKey( spep_2-3 + 298, 1, 138.3, 248.4 , 0 );
setMoveKey( spep_2-1 + 300, 1, 293.5, 402.7 , 0 );

setScaleKey( spep_2-3 + 252, 1, 0.31, 0.31 );
setScaleKey( spep_2-3 + 266, 1, 0.31, 0.31 );
setScaleKey( spep_2-3 + 267, 1, 0.31, 0.31 );
setScaleKey( spep_2-3 + 268, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 278, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 280, 1, 0.78, 0.78 );
setScaleKey( spep_2-3 + 282, 1, 1.31, 1.31 );
setScaleKey( spep_2-3 + 284, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 286, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 288, 1, 2.48, 2.48 );
setScaleKey( spep_2-3 + 290, 1, 2.48, 2.48 );
setScaleKey( spep_2-3 + 291, 1, 2.48, 2.48 );
setScaleKey( spep_2-3 + 292, 1, 0.82, 0.82 );
setScaleKey( spep_2-3 + 294, 1, 1.12, 1.12 );
setScaleKey( spep_2-3 + 296, 1, 0.94, 0.94 );
setScaleKey( spep_2-3 + 298, 1, 0.93, 0.93 );
setScaleKey( spep_2-1 + 300, 1, 0.93, 0.93 );

setRotateKey( spep_2-3 + 252, 1, -49.2 );
setRotateKey( spep_2-3 + 266, 1, -49.2 );
setRotateKey( spep_2-3 + 268, 1, -36.5 );
setRotateKey( spep_2-3 + 272, 1, -36.5 );
setRotateKey( spep_2-3 + 274, 1, -49.2 );
setRotateKey( spep_2-3 + 293, 1, -49.2 );
setRotateKey( spep_2-3 + 294, 1, -49.2 );
setRotateKey( spep_2-1 + 300, 1, -49.2 );

--敵の動き2
setDisp( spep_2-3 + 328, 1, 1 );
setDisp( spep_2-1 + 368, 1, 0 );

changeAnime( spep_2-3 + 328, 1, 106 );

setBlendColor(spep_2 + 324, 1, 3, 0, 0, 0, 0);
setBlendColor(spep_2-3 + 328, 1, 3, 0.4, 0.44, 0.93, 0.87);
setBlendColor(spep_2 + 368, 1, 3, 0.4, 0.44, 0.93, 0.87);
setBlendColor(spep_2 + 370, 1, 3, 0.4, 0.44, 0.93, 0);
setBlendColor(spep_2 + 372, 1, 3, 0, 0, 0, 0);

setMoveKey( spep_2-3 + 328, 1, -13.9, 23.9 , 0 );
setMoveKey( spep_2-3 + 330, 1, -7.5, 38.1 , 0 );
setMoveKey( spep_2-3 + 332, 1, -13.1, 52.3 , 0 );
setMoveKey( spep_2-3 + 334, 1, -2.7, 42.5 , 0 );
setMoveKey( spep_2-3 + 336, 1, -4.3, 32.7 , 0 );
setMoveKey( spep_2-3 + 338, 1, 2.1, 46.9 , 0 );
setMoveKey( spep_2-3 + 340, 1, -7.5, 61.1 , 0 );
setMoveKey( spep_2-3 + 342, 1, 6.9, 51.3 , 0 );
setMoveKey( spep_2-3 + 344, 1, 1.3, 37.5 , 0 );
setMoveKey( spep_2-3 + 346, 1, 11.7, 55.7 , 0 );
setMoveKey( spep_2-3 + 348, 1, 10.1, 49.9 , 0 );
setMoveKey( spep_2-3 + 350, 1, 16.5, 60.1 , 0 );
setMoveKey( spep_2-3 + 352, 1, 10.9, 54.3 , 0 );
setMoveKey( spep_2-3 + 354, 1, 21.3, 64.5 , 0 );
setMoveKey( spep_2-3 + 356, 1, 19.7, 62.7 , 0 );
setMoveKey( spep_2-3 + 358, 1, 26.1, 68.9 , 0 );
setMoveKey( spep_2-3 + 360, 1, 20.5, 67.1 , 0 );
setMoveKey( spep_2-3 + 362, 1, 30.9, 73.3 , 0 );
setMoveKey( spep_2-3 + 364, 1, 25.3, 71.5 , 0 );
setMoveKey( spep_2-3 + 366, 1, 35.7, 77.7 , 0 );
setMoveKey( spep_2-1 + 368, 1, 30.1, 75.9 , 0 );

setScaleKey( spep_2-3 + 328, 1, 2.07, 2.07 );
setScaleKey( spep_2-1 + 368, 1, 2.07, 2.07 );

setRotateKey( spep_2-3 + 328, 1, -15.5 );
setRotateKey( spep_2-1 + 368, 1, -15.5 );


-- ** 音 ** --
--かめはめ波発射中2
SE041 = playSeVer2( spep_2 + 0, 1161, "",spep_2 + 178, 0, 20, -1);
SE042 = playSeVer2( spep_2 + 0, 1176, "",spep_2 + 178, 0, 20, -1);
SE043 = playSeVer2( spep_2 + 0, 1226, "",spep_2 + 178, 0, 20, -1);
SE044 = playSeVer2( spep_2 + 0, 1211, "",spep_2 + 178, 0, 20, -1);

--岩持ち上がる
SE045 = playSeVer2( spep_2 + 106, 1168, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE045, 219 );
setStartTimeMs( SE045,  583 );
SE046 = playSeVer2( spep_2 + 100, 1168, "",spep_2 + 174, 0, 20, -1);

--4倍発射
SE047 = playSeVer2( spep_2 + 154, 1146, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 154, SE047, 89 );
SE048 = playSeVer2( spep_2 + 154, 1213, "",spep_2 + 436, 0, 66, -1);
setSeVolumeByWorkId( spep_2 + 154, SE048, 90 );
SE049 = playSeVer2( spep_2 + 154, 1284, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 154, SE049, 90 );

--気弾敵にヒット
SE050 = playSeVer2( spep_2 + 238, 1178, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 238, 1179, "", 0, 0, 0, -1);

--気弾で押し出す
SE052 = playSeVer2( spep_2 + 276, 1017, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 276, 1024, "", 0, 0, 0, 0.7);

--岩パラパラ落ちてくる
SE054 = playSeVer2( spep_2 + 446, 1168, "", 0, 8, 0, 0.5);
setStartTimeMs( SE054,  2183 );

--気弾に飲み込まれる
SE055 = playSeVer2( spep_2 + 326, 1211, "",spep_2 + 418, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 326, SE055, 562 );
SE056 = playSeVer2( spep_2 + 342, 1258, "",spep_2 + 410, 12, 38, -1);
setStartTimeMs( SE056,  100 );

--終わり
hideKoScreen();
entryFade( spep_2 +470, 2,  8, 2, 0, 0, 0, 255);             -- black fade
dealDamage(spep_2+372);
endPhase( spep_2 + 480 );

end