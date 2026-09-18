--1024290:超サイヤ人孫悟空/超サイヤ人孫悟飯(少年期)_瞬間移動かめはめ波
--sp_effect_a1_00348
--sp2360

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
SP_01= 159646 ;-- 開始
SP_02= 159648 ;-- かめはめ波構え
SP_03= 159649 ;-- かめはめ波構え_背景
SP_04= 159652 ;-- かめはめ波構え
SP_05= 159653 ;-- かめはめ波構え_背景

--エフェクト(てき)
SP_01x= 159647 ;-- 開始 (敵)
SP_02x= 159650 ;-- かめはめ波構え (敵)
SP_03x= 159651 ;-- かめはめ波構え_背景 (敵)
SP_04x= 159654 ;-- かめはめ波構え (敵)
SP_05x= 159655 ;-- かめはめ波構え_背景 (敵)

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--開始
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, start, 0, 0, 0 );
setEffMoveKey( spep_0 + 186, start, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0 );
setEffScaleKey( spep_0 + 186, start, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + 186, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + 184, start, 255 );
setEffAlphaKey( spep_0 + 185, start, 255 );
setEffAlphaKey( spep_0 + 186, start, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-3 + 60, 1, 0 );
changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 164.9, -360 , 0 );
setMoveKey( spep_0-3 + 4, 1, 170.4, -360 , 0 );
setMoveKey( spep_0-3 + 5, 1, 170.4, -360 , 0 );
setMoveKey( spep_0-3 + 6, 1, 173.1, -360 , 0 );
setMoveKey( spep_0-3 + 7, 1, 173.1, -360 , 0 );
setMoveKey( spep_0-3 + 8, 1, 175.9, -360 , 0 );
setMoveKey( spep_0-3 + 9, 1, 175.9, -360 , 0 );
setMoveKey( spep_0-3 + 10, 1, 178.6, -360 , 0 );
setMoveKey( spep_0-3 + 12, 1, 181.4, -360 , 0 );
setMoveKey( spep_0-3 + 14, 1, 184.2, -360 , 0 );
setMoveKey( spep_0-3 + 16, 1, 186.9, -360 , 0 );
setMoveKey( spep_0-3 + 18, 1, 189.7, -360 , 0 );
setMoveKey( spep_0-3 + 20, 1, 192.4, -360 , 0 );
setMoveKey( spep_0-3 + 22, 1, 195.2, -360 , 0 );
setMoveKey( spep_0-3 + 24, 1, 197.9, -360 , 0 );
setMoveKey( spep_0-3 + 26, 1, 200.7, -360 , 0 );
setMoveKey( spep_0-3 + 28, 1, 203.5, -360 , 0 );
setMoveKey( spep_0-3 + 30, 1, 206.2, -360 , 0 );
setMoveKey( spep_0-3 + 32, 1, 209, -360 , 0 );
setMoveKey( spep_0-3 + 34, 1, 211.7, -360 , 0 );
setMoveKey( spep_0-3 + 36, 1, 214.5, -360 , 0 );
setMoveKey( spep_0-3 + 38, 1, 217.2, -360 , 0 );
setMoveKey( spep_0-3 + 40, 1, 220, -360 , 0 );
setMoveKey( spep_0-3 + 42, 1, 222.8, -360 , 0 );
setMoveKey( spep_0-3 + 44, 1, 225.5, -360 , 0 );
setMoveKey( spep_0-3 + 46, 1, 228.3, -360 , 0 );
setMoveKey( spep_0-3 + 48, 1, 231, -360 , 0 );
setMoveKey( spep_0-3 + 50, 1, 233.8, -360 , 0 );
setMoveKey( spep_0-3 + 52, 1, 236.5, -360 , 0 );
setMoveKey( spep_0-3 + 54, 1, 239.3, -360 , 0 );
setMoveKey( spep_0-3+ 56, 1, 239.3, -482.5 , 0 );
setMoveKey( spep_0-3 + 60, 1, 239.3, -645 , 0 );


setScaleKey( spep_0 + 0, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 1, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 2, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 3, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 4, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 5, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 6, 1, 3.6, 3.6 );
setScaleKey( spep_0-1 + 60, 1, 3.6, 3.6 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-1 + 60, 1, 0 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 460, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 60 );

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 32 );
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 32 );
SE005 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 32 );

--飛び上がる
SE006 = playSeVer2( spep_0 + 54, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 54, 1207, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 54, SE007, 71 );
SE008 = playSeVer2( spep_0 + 54, 1278, "",spep_0 + 164, 0, 46, -1);
SE009 = playSeVer2( spep_0 + 72, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE009, 112 );

--オーラ
SE010 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE010, 32 );

--空中静止
SE011 = playSeVer2( spep_0 + 130, 1004, "", 0, 0, 0, -1);

--オーラ
SE012 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE012, 32 );
SE013 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE013, 32 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 190, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1= spep_0 + 186;
------------------------------------------------------
--かめはめ波構え
------------------------------------------------------
tame_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 360, tame_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 360, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame_f, 0 );
setEffRotateKey( spep_1 + 360, tame_f, 0 );
setEffAlphaKey( spep_1 + 0, tame_f, 255 );
setEffAlphaKey( spep_1 + 360, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 360, tame_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 360, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame_b, 0 );
setEffRotateKey( spep_1 + 360, tame_b, 0 );
setEffAlphaKey( spep_1 + 0, tame_b, 255 );
setEffAlphaKey( spep_1 + 360, tame_b, 255 );

--顔カットインのタイミング指定
spep_x=spep_1 +56;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
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

--敵の動き
setDisp( spep_1-3 + 150, 1, 1 );
setDisp( spep_1-3 + 208, 1, 0 );
changeAnime( spep_1-3 + 150, 1, 118 );

setMoveKey( spep_1-3 + 150, 1, 231, -569.7 , 0 );
setMoveKey( spep_1-3 + 152, 1, 231, -590.9 , 0 );
setMoveKey( spep_1-3 + 154, 1, 231, -612.1 , 0 );
setMoveKey( spep_1-3 + 156, 1, 231, -633.2 , 0 );
setMoveKey( spep_1-3 + 158, 1, 231, -654.4 , 0 );
setMoveKey( spep_1-3 + 160, 1, 231, -675.6 , 0 );
setMoveKey( spep_1-3 + 162, 1, 231, -696.8 , 0 );
setMoveKey( spep_1-3 + 164, 1, 231, -718 , 0 );
setMoveKey( spep_1-3 + 166, 1, 231, -739.1 , 0 );
setMoveKey( spep_1-3 + 168, 1, 231, -760.3 , 0 );
setMoveKey( spep_1-3 + 170, 1, 231, -781.5 , 0 );
setMoveKey( spep_1-3 + 172, 1, 231, -802.7 , 0 );
setMoveKey( spep_1-3 + 174, 1, 231, -823.9 , 0 );
setMoveKey( spep_1-3 + 176, 1, 231, -845 , 0 );
setMoveKey( spep_1-3 + 178, 1, 231, -866.2 , 0 );
setMoveKey( spep_1-3 + 180, 1, 231, -887.4 , 0 );
setMoveKey( spep_1-3 + 182, 1, 231, -908.6 , 0 );
setMoveKey( spep_1-3 + 184, 1, 231, -929.8 , 0 );
setMoveKey( spep_1-3 + 186, 1, 231, -950.9 , 0 );
setMoveKey( spep_1-3 + 188, 1, 231, -962.4 , 0 );
setMoveKey( spep_1-3 + 190, 1, 231, -973.8 , 0 );
setMoveKey( spep_1-3 + 192, 1, 231, -985.2 , 0 );
setMoveKey( spep_1-3 + 194, 1, 231, -996.7 , 0 );
setMoveKey( spep_1-3 + 196, 1, 231, -1008.1 , 0 );
setMoveKey( spep_1-3 + 198, 1, 231, -1019.5 , 0 );
setMoveKey( spep_1-3 + 200, 1, 231, -1031 , 0 );
setMoveKey( spep_1-3 + 202, 1, 231, -1042.4 , 0 );
setMoveKey( spep_1-3 + 204, 1, 231, -1053.8 , 0 );
setMoveKey( spep_1-3 + 206, 1, 231, -1065.3 , 0 );
setMoveKey( spep_1-3 + 208, 1, 231, -1076.7 , 0 );

setScaleKey( spep_1-3 + 150, 1, 3.6, 3.6 );
setScaleKey( spep_1-3 + 208, 1, 3.6, 3.6 );

setRotateKey( spep_1-3 + 150, 1, 0 );
setRotateKey( spep_1-3 + 208, 1, 0 );

--敵の動き
setDisp( spep_1-3 + 210, 1, 1 );

changeAnime( spep_1-3 + 210, 1, 117 );

setMoveKey( spep_1-3 + 210, 1, 224.8, -28.2 , 0 );
setMoveKey( spep_1-3 + 212, 1, 224, -27.4 , 0 );
setMoveKey( spep_1-3 + 214, 1, 223.2, -26.5 , 0 );
setMoveKey( spep_1-3 + 216, 1, 222.4, -25.7 , 0 );
setMoveKey( spep_1-3 + 218, 1, 221.6, -24.8 , 0 );
setMoveKey( spep_1-3 + 220, 1, 220.7, -24 , 0 );
setMoveKey( spep_1-3 + 222, 1, 219.9, -23.1 , 0 );
setMoveKey( spep_1-3 + 224, 1, 219.1, -22.3 , 0 );
setMoveKey( spep_1-3 + 226, 1, 218.3, -21.4 , 0 );
setMoveKey( spep_1-3 + 228, 1, 217.4, -20.6 , 0 );
setMoveKey( spep_1-3 + 230, 1, 216.6, -19.7 , 0 );
setMoveKey( spep_1-3 + 232, 1, 215.9, -18.9 , 0 );
setMoveKey( spep_1-3 + 234, 1, 215, -18 , 0 );
setMoveKey( spep_1-3 + 236, 1, 214.2, -17.2 , 0 );
setMoveKey( spep_1-3 + 238, 1, 213.4, -16.4 , 0 );
setMoveKey( spep_1-3 + 240, 1, 212.6, -15.5 , 0 );
setMoveKey( spep_1-3 + 242, 1, 211.7, -14.7 , 0 );
setMoveKey( spep_1-3 + 244, 1, 210.9, -13.8 , 0 );
setMoveKey( spep_1-3 + 246, 1, 210.1, -13 , 0 );
setMoveKey( spep_1-3 + 248, 1, 209.3, -12.1 , 0 );
setMoveKey( spep_1-3 + 250, 1, 208.5, -11.3 , 0 );
setMoveKey( spep_1-3 + 252, 1, 207.6, -10.4 , 0 );
setMoveKey( spep_1-3 + 254, 1, 206.9, -9.6 , 0 );
setMoveKey( spep_1-3 + 256, 1, 206, -8.7 , 0 );
setMoveKey( spep_1-3 + 258, 1, 205.2, -7.9 , 0 );
setMoveKey( spep_1-3 + 260, 1, 204.4, -7.1 , 0 );
setMoveKey( spep_1-3 + 262, 1, 203.6, -6.2 , 0 );
setMoveKey( spep_1-3 + 264, 1, 202.8, -5.4 , 0 );
setMoveKey( spep_1-3 + 266, 1, 201.9, -4.5 , 0 );
setMoveKey( spep_1-3 + 268, 1, 201.1, -3.7 , 0 );
setMoveKey( spep_1-3 + 269, 1, 201.1, -3.7 , 0 );

setMoveKey( spep_1-3 + 270, 1, 137.4, 74.1 , 0 );
setMoveKey( spep_1-3 + 272, 1, 138, 74 , 0 );
setMoveKey( spep_1-3 + 280, 1, 138, 74 , 0 );
setMoveKey( spep_1-3 + 282, 1, 135.7, 73.5 , 0 );
setMoveKey( spep_1-3 + 284, 1, 136.9, 72.8 , 0 );
setMoveKey( spep_1-3 + 286, 1, 138, 72 , 0 );
setMoveKey( spep_1-3 + 288, 1, 139.2, 71.3 , 0 );
setMoveKey( spep_1-3 + 290, 1, 140.3, 70.5 , 0 );
setMoveKey( spep_1-3 + 292, 1, 141.5, 69.7 , 0 );
setMoveKey( spep_1-3 + 294, 1, 142.6, 69 , 0 );

setScaleKey( spep_1-3 + 210, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 220, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 221, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 222, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 269, 1, 0.28, 0.28 );

setScaleKey( spep_1-3 + 270, 1, 2.46, 2.46 );

setRotateKey( spep_1-3 + 210, 1, 0 );
setRotateKey( spep_1-3 + 269, 1, 0 );

setRotateKey( spep_1-3 + 270, 1, 14.8 );
setRotateKey( spep_1-3 + 272, 1, 15 );
setRotateKey( spep_1-3 + 280, 1, 15 );
setRotateKey( spep_1-3 + 282, 1, 14.6 );
setRotateKey( spep_1-3 + 300, 1, 14.6 );


--SE
--オーラ
SE014 = playSeVer2( spep_1 + 6, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 6, SE014, 56 );

--手合わせる
SE015 = playSeVer2( spep_1 + 22, 1233, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 28, 1189, "", 0, 0, 0, -1);

--オーラ
SE017 = playSeVer2( spep_1 + 30, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 30, SE017, 56 );

--手合わせる
SE018 = playSeVer2( spep_1 + 36, 1006, "", 0, 0, 0, -1);

--オーラ
SE019 = playSeVer2( spep_1 + 54, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 54, SE019, 56 );

--顔カットイン
SE020 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--腕引く
SE021 = playSeVer2( spep_1 + 64, 1007, "", 0, 0, 0, -1);

--オーラ
SE022 = playSeVer2( spep_1 + 78, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 78, SE022, 56 );
SE023 = playSeVer2( spep_1 + 102, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 102, SE023, 56 );
SE024 = playSeVer2( spep_1 + 126, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 126, SE024, 56 );

--画面遷移
SE025 = playSeVer2( spep_1 + 128, 1072, "", 0, 0, 0, -1);

--光る
SE026 = playSeVer2( spep_1 + 186, 1303, "",spep_1 + 270, 0, 56, -1);
setSeVolumeByWorkId( spep_1 + 186, SE026, 54 );

--オーラ
SE027 = playSeVer2( spep_1 + 208, 1036, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_1 + 232, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 232, SE028, 82 );

--瞬間移動
SE029 = playSeVer2( spep_1 + 246, 1109, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_1 + 278, 1109, "", 0, 0, 0, -1);

--オーラ
SE031 = playSeVer2( spep_1 + 278, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 278, SE031, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 400, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 300; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE029, 0 );
    stopSe( SP_dodge - 12, SE030, 0 );
    stopSe( SP_dodge - 12, SE031, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    --敵の固定
    setMoveKey( SP_dodge + 8, 1, 142.6, 69 , 0 );
    setMoveKey( SP_dodge + 9, 1, 142.6, 69 , 0 );

    setScaleKey( SP_dodge + 8, 1, 2.46, 2.46 );
    setScaleKey( SP_dodge + 9, 1, 2.46, 2.46 );

    setRotateKey( SP_dodge + 8, 1, 14.6 );
    setRotateKey( SP_dodge + 9, 1, 14.6 );
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_1-1 + 310, 1, 0 );

setMoveKey( spep_1-3 + 296, 1, 143.7, 68.2 , 0 );
setMoveKey( spep_1-3 + 298, 1, 144.9, 67.4 , 0 );
setMoveKey( spep_1-1 + 310, 1, 144.9, 67.4 , 0 );

setScaleKey( spep_1-1 + 310, 1, 2.46, 2.46 );

setRotateKey( spep_1-1 +310, 1, 14.6 );

--SE
--オーラ
SE032 = playSeVer2( spep_1 + 302, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 302, SE032, 79 );
SE033 = playSeVer2( spep_1 + 326, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 326, SE033, 79 );

--顔アップ力む
SE034 = playSeVer2( spep_1 + 304, 1330, "",spep_1 + 380, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 304, SE034, 77 );
setPitch( spep_1 + 304, SE034, -400 );
setTimeStretch( SE034, 0.73, 30, 4 );
SE035 = playSeVer2( spep_1 + 308, 1332, "", spep_1 + 380, 0, 20, -1);

--オーラ
SE036 = playSeVer2( spep_1 + 350, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 350, SE036, 79 );
--SE037 = playSeVer2( spep_1 + 374, 1036, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_1 + 374, SE037, 79 );

--白フェード
entryFade( spep_1 +352 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 360;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
 
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
-- playSe( spep_2 + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 94;
------------------------------------------------------
--かめはめ波構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 560, tame_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 560, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame_f, 0 );
setEffRotateKey( spep_3 + 560, tame_f, 0 );
setEffAlphaKey( spep_3 + 0, tame_f, 255 );
setEffAlphaKey( spep_3 + 560, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 560, tame_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 560, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame_b, 0 );
setEffRotateKey( spep_3 + 560, tame_b, 0 );
setEffAlphaKey( spep_3 + 0, tame_b, 255 );
setEffAlphaKey( spep_3 + 560, tame_b, 255 );

--敵の動き
setDisp( spep_3-3 + 40, 1, 1 );
setDisp( spep_3-1 + 210, 1, 0 );

changeAnime( spep_3-3 + 40, 1, 117 );

setMoveKey( spep_3-3 + 40, 1, 160.5, 77.3 , 0 );
setMoveKey( spep_3-3 + 42, 1, 163, 77.3 , 0 );
setMoveKey( spep_3-3 + 44, 1, 160.5, 77.3 , 0 );
setMoveKey( spep_3-3 + 46, 1, 163, 77.3 , 0 );
setMoveKey( spep_3-3 + 48, 1, 158, 77.3 , 0 );
setMoveKey( spep_3-3 + 50, 1, 163, 77.3 , 0 );
setMoveKey( spep_3-3 + 52, 1, 155.8, 76.9 , 0 );
setMoveKey( spep_3-3 + 54, 1, 155.8, 51.9 , 0 );
setMoveKey( spep_3-3 + 56, 1, 155.8, 76.9 , 0 );
setMoveKey( spep_3-3 + 58, 1, 155.8, 26.9 , 0 );
setMoveKey( spep_3-3 + 60, 1, 155.8, 51.9 , 0 );
setMoveKey( spep_3-3 + 62, 1, 155.8, 76.9 , 0 );
setMoveKey( spep_3-3 + 64, 1, 155.8, 76.9 , 0 );
setMoveKey( spep_3-3 + 66, 1, 155.8, 26.9 , 0 );
setMoveKey( spep_3-3 + 68, 1, 155.8, 51.9 , 0 );
setMoveKey( spep_3-3 + 70, 1, 155.8, 26.9 , 0 );
setMoveKey( spep_3-3 + 72, 1, 155.8, 51.9 , 0 );
setMoveKey( spep_3-3 + 74, 1, 155.8, 26.9 , 0 );
setMoveKey( spep_3-3 + 76, 1, 155.8, 51.9 , 0 );
setMoveKey( spep_3-3 + 78, 1, 155.8, 26.9 , 0 );
setMoveKey( spep_3-3 + 80, 1, 155.8, 51.9 , 0 );
setMoveKey( spep_3-3 + 82, 1, 155.8, 26.9 , 0 );
setMoveKey( spep_3-3 + 84, 1, 155.8, 51.9 , 0 );
setMoveKey( spep_3-3 + 86, 1, 155.8, 51.9 , 0 );
setMoveKey( spep_3-3 + 88, 1, 155.8, 26.9 , 0 );
setMoveKey( spep_3-3 + 90, 1, 151.6, 24.2 , 0 );
setMoveKey( spep_3-3 + 92, 1, 150.3, 24.2 , 0 );
setMoveKey( spep_3-3 + 94, 1, 148.9, 24.2 , 0 );
setMoveKey( spep_3-3 + 96, 1, 147.5, 24.2 , 0 );
setMoveKey( spep_3-3 + 98, 1, 146.1, 24.2 , 0 );
setMoveKey( spep_3-3 + 100, 1, 144.8, 24.2 , 0 );
setMoveKey( spep_3-3 + 102, 1, 96.3, 24.2 , 0 );
setMoveKey( spep_3-3 + 104, 1, 47.8, 24.2 , 0 );
setMoveKey( spep_3-3 + 106, 1, -0.7, 24.2 , 0 );
setMoveKey( spep_3-3 + 108, 1, -49.2, 24.2 , 0 );
setMoveKey( spep_3-3 + 110, 1, -50.8, 24.2 , 0 );
setMoveKey( spep_3-3 + 112, 1, -52.4, 24.2 , 0 );
setMoveKey( spep_3-3 + 114, 1, -54, 24.2 , 0 );
setMoveKey( spep_3-3 + 116, 1, -55.6, 24.2 , 0 );
setMoveKey( spep_3-3 + 118, 1, -57.1, 24.2 , 0 );
setMoveKey( spep_3-3 + 120, 1, -58.7, 24.2 , 0 );
setMoveKey( spep_3-3 + 122, 1, -60.3, 24.2 , 0 );
setMoveKey( spep_3-3 + 124, 1, -61.9, 24.2 , 0 );
setMoveKey( spep_3-3 + 126, 1, -63.5, 24.2 , 0 );
setMoveKey( spep_3-3 + 128, 1, -65.1, 24.2 , 0 );
setMoveKey( spep_3-3 + 130, 1, -66.7, 24.2 , 0 );
setMoveKey( spep_3-3 + 132, 1, -68.2, 24.2 , 0 );
setMoveKey( spep_3-3 + 134, 1, -69.8, 24.2 , 0 );
setMoveKey( spep_3-3 + 136, 1, -71.4, 24.2 , 0 );
setMoveKey( spep_3-3 + 138, 1, -73, 24.2 , 0 );
setMoveKey( spep_3-3 + 140, 1, -74.6, 24.2 , 0 );
setMoveKey( spep_3-3 + 142, 1, -76.2, 24.2 , 0 );
setMoveKey( spep_3-3 + 144, 1, -42.8, 24.2 , 0 );
setMoveKey( spep_3-3 + 208, 1, -42.8, 24.2 , 0 );
setMoveKey( spep_3-1 + 210, 1, 155.8, 26.9 , 0 );

setScaleKey( spep_3-3 + 40, 1, 2.44, 2.44 );
setScaleKey( spep_3-3 + 88, 1, 2.44, 2.44 );
setScaleKey( spep_3-3 + 90, 1, 2.19, 2.19 );
setScaleKey( spep_3-3 + 208, 1, 2.19, 2.19 );
setScaleKey( spep_3-1 + 210, 1, 2.44, 2.44 );

setRotateKey( spep_3-3 + 40, 1, 15 );
setRotateKey( spep_3-3 + 50, 1, 15 );
setRotateKey( spep_3-3 + 52, 1, 14.6 );
setRotateKey( spep_3-1 + 210, 1, 14.6 );

--SE
--腕突き出す
SE039 = playSeVer2( spep_3 + 22, 1004, "", 0, 0, 0, -1);

--かめはめ波発射
SE040 = playSeVer2( spep_3 + 48, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 48, SE040, 79 );
SE041 = playSeVer2( spep_3 + 48, 1133, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_3 + 48, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 48, SE042, 89 );

--かめはめ波広がる
SE043 = playSeVer2( spep_3 + 88, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 88, SE043, 86 );
SE044 = playSeVer2( spep_3 + 88, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 88, SE044, 79 );

--爆発
SE045 = playSeVer2( spep_3 + 142, 1159, "", 0, 0, 0, -1);

--瓦礫音
SE046 = playSeVer2( spep_3 + 262, 1168, "", 0, 36, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 262, SE046, 71 );
setStartTimeMs( SE046,  1083 );

--終わり
dealDamage(spep_3 + 298);
endPhase( spep_3 + 400 ); 
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--開始
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, start, 0, 0, 0 );
setEffMoveKey( spep_0 + 186, start, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0 );
setEffScaleKey( spep_0 + 186, start, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + 186, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + 184, start, 255 );
setEffAlphaKey( spep_0 + 185, start, 255 );
setEffAlphaKey( spep_0 + 186, start, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-3 + 60, 1, 0 );
changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 164.9, -360 , 0 );
setMoveKey( spep_0-3 + 4, 1, 170.4, -360 , 0 );
setMoveKey( spep_0-3 + 5, 1, 170.4, -360 , 0 );
setMoveKey( spep_0-3 + 6, 1, 173.1, -360 , 0 );
setMoveKey( spep_0-3 + 7, 1, 173.1, -360 , 0 );
setMoveKey( spep_0-3 + 8, 1, 175.9, -360 , 0 );
setMoveKey( spep_0-3 + 9, 1, 175.9, -360 , 0 );
setMoveKey( spep_0-3 + 10, 1, 178.6, -360 , 0 );
setMoveKey( spep_0-3 + 12, 1, 181.4, -360 , 0 );
setMoveKey( spep_0-3 + 14, 1, 184.2, -360 , 0 );
setMoveKey( spep_0-3 + 16, 1, 186.9, -360 , 0 );
setMoveKey( spep_0-3 + 18, 1, 189.7, -360 , 0 );
setMoveKey( spep_0-3 + 20, 1, 192.4, -360 , 0 );
setMoveKey( spep_0-3 + 22, 1, 195.2, -360 , 0 );
setMoveKey( spep_0-3 + 24, 1, 197.9, -360 , 0 );
setMoveKey( spep_0-3 + 26, 1, 200.7, -360 , 0 );
setMoveKey( spep_0-3 + 28, 1, 203.5, -360 , 0 );
setMoveKey( spep_0-3 + 30, 1, 206.2, -360 , 0 );
setMoveKey( spep_0-3 + 32, 1, 209, -360 , 0 );
setMoveKey( spep_0-3 + 34, 1, 211.7, -360 , 0 );
setMoveKey( spep_0-3 + 36, 1, 214.5, -360 , 0 );
setMoveKey( spep_0-3 + 38, 1, 217.2, -360 , 0 );
setMoveKey( spep_0-3 + 40, 1, 220, -360 , 0 );
setMoveKey( spep_0-3 + 42, 1, 222.8, -360 , 0 );
setMoveKey( spep_0-3 + 44, 1, 225.5, -360 , 0 );
setMoveKey( spep_0-3 + 46, 1, 228.3, -360 , 0 );
setMoveKey( spep_0-3 + 48, 1, 231, -360 , 0 );
setMoveKey( spep_0-3 + 50, 1, 233.8, -360 , 0 );
setMoveKey( spep_0-3 + 52, 1, 236.5, -360 , 0 );
setMoveKey( spep_0-3 + 54, 1, 239.3, -360 , 0 );
setMoveKey( spep_0-3+ 56, 1, 239.3, -482.5 , 0 );
setMoveKey( spep_0-3 + 60, 1, 239.3, -645 , 0 );


setScaleKey( spep_0 + 0, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 1, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 2, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 3, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 4, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 5, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 6, 1, 3.6, 3.6 );
setScaleKey( spep_0-1 + 60, 1, 3.6, 3.6 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-1 + 60, 1, 0 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 460, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 60 );

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 32 );
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 32 );
SE005 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 32 );

--飛び上がる
SE006 = playSeVer2( spep_0 + 54, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 54, 1207, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 54, SE007, 71 );
SE008 = playSeVer2( spep_0 + 54, 1278, "",spep_0 + 164, 0, 46, -1);
SE009 = playSeVer2( spep_0 + 72, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE009, 112 );

--オーラ
SE010 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE010, 32 );

--空中静止
SE011 = playSeVer2( spep_0 + 130, 1004, "", 0, 0, 0, -1);

--オーラ
SE012 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE012, 32 );
SE013 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE013, 32 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 190, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1= spep_0 + 186;
------------------------------------------------------
--かめはめ波構え
------------------------------------------------------
tame_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 360, tame_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 360, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame_f, 0 );
setEffRotateKey( spep_1 + 360, tame_f, 0 );
setEffAlphaKey( spep_1 + 0, tame_f, 255 );
setEffAlphaKey( spep_1 + 360, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 360, tame_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 360, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame_b, 0 );
setEffRotateKey( spep_1 + 360, tame_b, 0 );
setEffAlphaKey( spep_1 + 0, tame_b, 255 );
setEffAlphaKey( spep_1 + 360, tame_b, 255 );

--顔カットインのタイミング指定
spep_x=spep_1 +56;

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

--敵の動き
setDisp( spep_1-3 + 150, 1, 1 );
setDisp( spep_1-3 + 208, 1, 0 );
changeAnime( spep_1-3 + 150, 1, 118 );

setMoveKey( spep_1-3 + 150, 1, 231, -569.7 , 0 );
setMoveKey( spep_1-3 + 152, 1, 231, -590.9 , 0 );
setMoveKey( spep_1-3 + 154, 1, 231, -612.1 , 0 );
setMoveKey( spep_1-3 + 156, 1, 231, -633.2 , 0 );
setMoveKey( spep_1-3 + 158, 1, 231, -654.4 , 0 );
setMoveKey( spep_1-3 + 160, 1, 231, -675.6 , 0 );
setMoveKey( spep_1-3 + 162, 1, 231, -696.8 , 0 );
setMoveKey( spep_1-3 + 164, 1, 231, -718 , 0 );
setMoveKey( spep_1-3 + 166, 1, 231, -739.1 , 0 );
setMoveKey( spep_1-3 + 168, 1, 231, -760.3 , 0 );
setMoveKey( spep_1-3 + 170, 1, 231, -781.5 , 0 );
setMoveKey( spep_1-3 + 172, 1, 231, -802.7 , 0 );
setMoveKey( spep_1-3 + 174, 1, 231, -823.9 , 0 );
setMoveKey( spep_1-3 + 176, 1, 231, -845 , 0 );
setMoveKey( spep_1-3 + 178, 1, 231, -866.2 , 0 );
setMoveKey( spep_1-3 + 180, 1, 231, -887.4 , 0 );
setMoveKey( spep_1-3 + 182, 1, 231, -908.6 , 0 );
setMoveKey( spep_1-3 + 184, 1, 231, -929.8 , 0 );
setMoveKey( spep_1-3 + 186, 1, 231, -950.9 , 0 );
setMoveKey( spep_1-3 + 188, 1, 231, -962.4 , 0 );
setMoveKey( spep_1-3 + 190, 1, 231, -973.8 , 0 );
setMoveKey( spep_1-3 + 192, 1, 231, -985.2 , 0 );
setMoveKey( spep_1-3 + 194, 1, 231, -996.7 , 0 );
setMoveKey( spep_1-3 + 196, 1, 231, -1008.1 , 0 );
setMoveKey( spep_1-3 + 198, 1, 231, -1019.5 , 0 );
setMoveKey( spep_1-3 + 200, 1, 231, -1031 , 0 );
setMoveKey( spep_1-3 + 202, 1, 231, -1042.4 , 0 );
setMoveKey( spep_1-3 + 204, 1, 231, -1053.8 , 0 );
setMoveKey( spep_1-3 + 206, 1, 231, -1065.3 , 0 );
setMoveKey( spep_1-3 + 208, 1, 231, -1076.7 , 0 );

setScaleKey( spep_1-3 + 150, 1, 3.6, 3.6 );
setScaleKey( spep_1-3 + 208, 1, 3.6, 3.6 );

setRotateKey( spep_1-3 + 150, 1, 0 );
setRotateKey( spep_1-3 + 208, 1, 0 );

--敵の動き
setDisp( spep_1-3 + 210, 1, 1 );

changeAnime( spep_1-3 + 210, 1, 117 );

setMoveKey( spep_1-3 + 210, 1, 224.8, -28.2 , 0 );
setMoveKey( spep_1-3 + 212, 1, 224, -27.4 , 0 );
setMoveKey( spep_1-3 + 214, 1, 223.2, -26.5 , 0 );
setMoveKey( spep_1-3 + 216, 1, 222.4, -25.7 , 0 );
setMoveKey( spep_1-3 + 218, 1, 221.6, -24.8 , 0 );
setMoveKey( spep_1-3 + 220, 1, 220.7, -24 , 0 );
setMoveKey( spep_1-3 + 222, 1, 219.9, -23.1 , 0 );
setMoveKey( spep_1-3 + 224, 1, 219.1, -22.3 , 0 );
setMoveKey( spep_1-3 + 226, 1, 218.3, -21.4 , 0 );
setMoveKey( spep_1-3 + 228, 1, 217.4, -20.6 , 0 );
setMoveKey( spep_1-3 + 230, 1, 216.6, -19.7 , 0 );
setMoveKey( spep_1-3 + 232, 1, 215.9, -18.9 , 0 );
setMoveKey( spep_1-3 + 234, 1, 215, -18 , 0 );
setMoveKey( spep_1-3 + 236, 1, 214.2, -17.2 , 0 );
setMoveKey( spep_1-3 + 238, 1, 213.4, -16.4 , 0 );
setMoveKey( spep_1-3 + 240, 1, 212.6, -15.5 , 0 );
setMoveKey( spep_1-3 + 242, 1, 211.7, -14.7 , 0 );
setMoveKey( spep_1-3 + 244, 1, 210.9, -13.8 , 0 );
setMoveKey( spep_1-3 + 246, 1, 210.1, -13 , 0 );
setMoveKey( spep_1-3 + 248, 1, 209.3, -12.1 , 0 );
setMoveKey( spep_1-3 + 250, 1, 208.5, -11.3 , 0 );
setMoveKey( spep_1-3 + 252, 1, 207.6, -10.4 , 0 );
setMoveKey( spep_1-3 + 254, 1, 206.9, -9.6 , 0 );
setMoveKey( spep_1-3 + 256, 1, 206, -8.7 , 0 );
setMoveKey( spep_1-3 + 258, 1, 205.2, -7.9 , 0 );
setMoveKey( spep_1-3 + 260, 1, 204.4, -7.1 , 0 );
setMoveKey( spep_1-3 + 262, 1, 203.6, -6.2 , 0 );
setMoveKey( spep_1-3 + 264, 1, 202.8, -5.4 , 0 );
setMoveKey( spep_1-3 + 266, 1, 201.9, -4.5 , 0 );
setMoveKey( spep_1-3 + 268, 1, 201.1, -3.7 , 0 );
setMoveKey( spep_1-3 + 269, 1, 201.1, -3.7 , 0 );

setMoveKey( spep_1-3 + 270, 1, 137.4, 74.1 , 0 );
setMoveKey( spep_1-3 + 272, 1, 138, 74 , 0 );
setMoveKey( spep_1-3 + 280, 1, 138, 74 , 0 );
setMoveKey( spep_1-3 + 282, 1, 135.7, 73.5 , 0 );
setMoveKey( spep_1-3 + 284, 1, 136.9, 72.8 , 0 );
setMoveKey( spep_1-3 + 286, 1, 138, 72 , 0 );
setMoveKey( spep_1-3 + 288, 1, 139.2, 71.3 , 0 );
setMoveKey( spep_1-3 + 290, 1, 140.3, 70.5 , 0 );
setMoveKey( spep_1-3 + 292, 1, 141.5, 69.7 , 0 );
setMoveKey( spep_1-3 + 294, 1, 142.6, 69 , 0 );

setScaleKey( spep_1-3 + 210, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 220, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 221, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 222, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 269, 1, 0.28, 0.28 );

setScaleKey( spep_1-3 + 270, 1, 2.46, 2.46 );

setRotateKey( spep_1-3 + 210, 1, 0 );
setRotateKey( spep_1-3 + 269, 1, 0 );

setRotateKey( spep_1-3 + 270, 1, 14.8 );
setRotateKey( spep_1-3 + 272, 1, 15 );
setRotateKey( spep_1-3 + 280, 1, 15 );
setRotateKey( spep_1-3 + 282, 1, 14.6 );
setRotateKey( spep_1-3 + 300, 1, 14.6 );


--SE
--オーラ
SE014 = playSeVer2( spep_1 + 6, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 6, SE014, 56 );

--手合わせる
SE015 = playSeVer2( spep_1 + 22, 1233, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 28, 1189, "", 0, 0, 0, -1);

--オーラ
SE017 = playSeVer2( spep_1 + 30, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 30, SE017, 56 );

--手合わせる
SE018 = playSeVer2( spep_1 + 36, 1006, "", 0, 0, 0, -1);

--オーラ
SE019 = playSeVer2( spep_1 + 54, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 54, SE019, 56 );

--顔カットイン
SE020 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--腕引く
SE021 = playSeVer2( spep_1 + 64, 1007, "", 0, 0, 0, -1);

--オーラ
SE022 = playSeVer2( spep_1 + 78, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 78, SE022, 56 );
SE023 = playSeVer2( spep_1 + 102, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 102, SE023, 56 );
SE024 = playSeVer2( spep_1 + 126, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 126, SE024, 56 );

--画面遷移
SE025 = playSeVer2( spep_1 + 128, 1072, "", 0, 0, 0, -1);

--光る
SE026 = playSeVer2( spep_1 + 186, 1303, "",spep_1 + 270, 0, 56, -1);
setSeVolumeByWorkId( spep_1 + 186, SE026, 54 );

--オーラ
SE027 = playSeVer2( spep_1 + 208, 1036, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_1 + 232, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 232, SE028, 82 );

--瞬間移動
SE029 = playSeVer2( spep_1 + 246, 1109, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_1 + 278, 1109, "", 0, 0, 0, -1);

--オーラ
SE031 = playSeVer2( spep_1 + 278, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 278, SE031, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 400, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 300; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE029, 0 );
    stopSe( SP_dodge - 12, SE030, 0 );
    stopSe( SP_dodge - 12, SE031, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    --敵の固定
    setMoveKey( SP_dodge + 8, 1, 142.6, 69 , 0 );
    setMoveKey( SP_dodge + 9, 1, 142.6, 69 , 0 );

    setScaleKey( SP_dodge + 8, 1, 2.46, 2.46 );
    setScaleKey( SP_dodge + 9, 1, 2.46, 2.46 );

    setRotateKey( SP_dodge + 8, 1, 14.6 );
    setRotateKey( SP_dodge + 9, 1, 14.6 );
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_1-1 + 310, 1, 0 );

setMoveKey( spep_1-3 + 296, 1, 143.7, 68.2 , 0 );
setMoveKey( spep_1-3 + 298, 1, 144.9, 67.4 , 0 );
setMoveKey( spep_1-1 + 310, 1, 144.9, 67.4 , 0 );

setScaleKey( spep_1-1 + 310, 1, 2.46, 2.46 );

setRotateKey( spep_1-1 +310, 1, 14.6 );

--SE
--オーラ
SE032 = playSeVer2( spep_1 + 302, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 302, SE032, 79 );
SE033 = playSeVer2( spep_1 + 326, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 326, SE033, 79 );

--顔アップ力む
SE034 = playSeVer2( spep_1 + 304, 1330, "",spep_1 + 380, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 304, SE034, 77 );
setPitch( spep_1 + 304, SE034, -400 );
setTimeStretch( SE034, 0.73, 30, 4 );
SE035 = playSeVer2( spep_1 + 308, 1332, "", spep_1 + 380, 0, 20, -1);

--オーラ
SE036 = playSeVer2( spep_1 + 350, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 350, SE036, 79 );
--SE037 = playSeVer2( spep_1 + 374, 1036, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_1 + 374, SE037, 79 );

--白フェード
entryFade( spep_1 +352 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 360;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 94;
------------------------------------------------------
--かめはめ波構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 560, tame_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 560, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame_f, 0 );
setEffRotateKey( spep_3 + 560, tame_f, 0 );
setEffAlphaKey( spep_3 + 0, tame_f, 255 );
setEffAlphaKey( spep_3 + 560, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 560, tame_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 560, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame_b, 0 );
setEffRotateKey( spep_3 + 560, tame_b, 0 );
setEffAlphaKey( spep_3 + 0, tame_b, 255 );
setEffAlphaKey( spep_3 + 560, tame_b, 255 );

--敵の動き
setDisp( spep_3-3 + 40, 1, 1 );
setDisp( spep_3-1 + 210, 1, 0 );

changeAnime( spep_3-3 + 40, 1, 117 );

setMoveKey( spep_3-3 + 40, 1, 160.5, 77.3 , 0 );
setMoveKey( spep_3-3 + 42, 1, 163, 77.3 , 0 );
setMoveKey( spep_3-3 + 44, 1, 160.5, 77.3 , 0 );
setMoveKey( spep_3-3 + 46, 1, 163, 77.3 , 0 );
setMoveKey( spep_3-3 + 48, 1, 158, 77.3 , 0 );
setMoveKey( spep_3-3 + 50, 1, 163, 77.3 , 0 );
setMoveKey( spep_3-3 + 52, 1, 155.8, 76.9 , 0 );
setMoveKey( spep_3-3 + 54, 1, 155.8, 51.9 , 0 );
setMoveKey( spep_3-3 + 56, 1, 155.8, 76.9 , 0 );
setMoveKey( spep_3-3 + 58, 1, 155.8, 26.9 , 0 );
setMoveKey( spep_3-3 + 60, 1, 155.8, 51.9 , 0 );
setMoveKey( spep_3-3 + 62, 1, 155.8, 76.9 , 0 );
setMoveKey( spep_3-3 + 64, 1, 155.8, 76.9 , 0 );
setMoveKey( spep_3-3 + 66, 1, 155.8, 26.9 , 0 );
setMoveKey( spep_3-3 + 68, 1, 155.8, 51.9 , 0 );
setMoveKey( spep_3-3 + 70, 1, 155.8, 26.9 , 0 );
setMoveKey( spep_3-3 + 72, 1, 155.8, 51.9 , 0 );
setMoveKey( spep_3-3 + 74, 1, 155.8, 26.9 , 0 );
setMoveKey( spep_3-3 + 76, 1, 155.8, 51.9 , 0 );
setMoveKey( spep_3-3 + 78, 1, 155.8, 26.9 , 0 );
setMoveKey( spep_3-3 + 80, 1, 155.8, 51.9 , 0 );
setMoveKey( spep_3-3 + 82, 1, 155.8, 26.9 , 0 );
setMoveKey( spep_3-3 + 84, 1, 155.8, 51.9 , 0 );
setMoveKey( spep_3-3 + 86, 1, 155.8, 51.9 , 0 );
setMoveKey( spep_3-3 + 88, 1, 155.8, 26.9 , 0 );
setMoveKey( spep_3-3 + 90, 1, 151.6, 24.2 , 0 );
setMoveKey( spep_3-3 + 92, 1, 150.3, 24.2 , 0 );
setMoveKey( spep_3-3 + 94, 1, 148.9, 24.2 , 0 );
setMoveKey( spep_3-3 + 96, 1, 147.5, 24.2 , 0 );
setMoveKey( spep_3-3 + 98, 1, 146.1, 24.2 , 0 );
setMoveKey( spep_3-3 + 100, 1, 144.8, 24.2 , 0 );
setMoveKey( spep_3-3 + 102, 1, 96.3, 24.2 , 0 );
setMoveKey( spep_3-3 + 104, 1, 47.8, 24.2 , 0 );
setMoveKey( spep_3-3 + 106, 1, -0.7, 24.2 , 0 );
setMoveKey( spep_3-3 + 108, 1, -49.2, 24.2 , 0 );
setMoveKey( spep_3-3 + 110, 1, -50.8, 24.2 , 0 );
setMoveKey( spep_3-3 + 112, 1, -52.4, 24.2 , 0 );
setMoveKey( spep_3-3 + 114, 1, -54, 24.2 , 0 );
setMoveKey( spep_3-3 + 116, 1, -55.6, 24.2 , 0 );
setMoveKey( spep_3-3 + 118, 1, -57.1, 24.2 , 0 );
setMoveKey( spep_3-3 + 120, 1, -58.7, 24.2 , 0 );
setMoveKey( spep_3-3 + 122, 1, -60.3, 24.2 , 0 );
setMoveKey( spep_3-3 + 124, 1, -61.9, 24.2 , 0 );
setMoveKey( spep_3-3 + 126, 1, -63.5, 24.2 , 0 );
setMoveKey( spep_3-3 + 128, 1, -65.1, 24.2 , 0 );
setMoveKey( spep_3-3 + 130, 1, -66.7, 24.2 , 0 );
setMoveKey( spep_3-3 + 132, 1, -68.2, 24.2 , 0 );
setMoveKey( spep_3-3 + 134, 1, -69.8, 24.2 , 0 );
setMoveKey( spep_3-3 + 136, 1, -71.4, 24.2 , 0 );
setMoveKey( spep_3-3 + 138, 1, -73, 24.2 , 0 );
setMoveKey( spep_3-3 + 140, 1, -74.6, 24.2 , 0 );
setMoveKey( spep_3-3 + 142, 1, -76.2, 24.2 , 0 );
setMoveKey( spep_3-3 + 144, 1, -42.8, 24.2 , 0 );
setMoveKey( spep_3-3 + 208, 1, -42.8, 24.2 , 0 );
setMoveKey( spep_3-1 + 210, 1, 155.8, 26.9 , 0 );

setScaleKey( spep_3-3 + 40, 1, 2.44, 2.44 );
setScaleKey( spep_3-3 + 88, 1, 2.44, 2.44 );
setScaleKey( spep_3-3 + 90, 1, 2.19, 2.19 );
setScaleKey( spep_3-3 + 208, 1, 2.19, 2.19 );
setScaleKey( spep_3-1 + 210, 1, 2.44, 2.44 );

setRotateKey( spep_3-3 + 40, 1, 15 );
setRotateKey( spep_3-3 + 50, 1, 15 );
setRotateKey( spep_3-3 + 52, 1, 14.6 );
setRotateKey( spep_3-1 + 210, 1, 14.6 );

--SE
--腕突き出す
SE039 = playSeVer2( spep_3 + 22, 1004, "", 0, 0, 0, -1);

--かめはめ波発射
SE040 = playSeVer2( spep_3 + 48, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 48, SE040, 79 );
SE041 = playSeVer2( spep_3 + 48, 1133, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_3 + 48, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 48, SE042, 89 );

--かめはめ波広がる
SE043 = playSeVer2( spep_3 + 88, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 88, SE043, 86 );
SE044 = playSeVer2( spep_3 + 88, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 88, SE044, 79 );

--爆発
SE045 = playSeVer2( spep_3 + 142, 1159, "", 0, 0, 0, -1);

--瓦礫音
SE046 = playSeVer2( spep_3 + 262, 1168, "", 0, 36, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 262, SE046, 71 );
setStartTimeMs( SE046,  1083 );

--終わり
dealDamage(spep_3 + 298);
endPhase( spep_3 + 400 ); 
end