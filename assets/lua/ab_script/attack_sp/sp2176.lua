--1021900:フリーザ(最終形態)&死人軍団_デスビーム
--sp_effect_a3_00078

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
SP_01	=	157190	;--	登場→屍人軍団復活
SP_02	=	157191	;--	屍人軍団手前に迫る→気弾ため
SP_03	=	157192	;--	デスビーム発射
SP_04	=	157193	;--	避けるジース→敵爆発
SP_05	=	157194	;--	避けるジース→敵爆発

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
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
-- 登場→屍人軍団復活
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
revival = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, revival, 0, 0, 0 );
setEffMoveKey( spep_0 + 286, revival, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, revival, 1.0, 1.0 );
setEffScaleKey( spep_0 + 286, revival, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, revival, 0 );
setEffRotateKey( spep_0 + 286, revival, 0 );
setEffAlphaKey( spep_0 + 0, revival, 255 );
setEffAlphaKey( spep_0 + 284, revival, 255 );
setEffAlphaKey( spep_0 + 285, revival, 255 );
setEffAlphaKey( spep_0 + 286, revival, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 10,  906, 92, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 10, shuchusen1, 92, 20 );
setEffMoveKey( spep_0-3 + 10, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 102, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 10, shuchusen1, 1.03, 1.31 );
setEffScaleKey( spep_0-3 + 102, shuchusen1, 1.03, 1.31 );

setEffRotateKey( spep_0-3 + 10, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 102, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 10, shuchusen1, 36 );
setEffAlphaKey( spep_0-3 + 12, shuchusen1, 73 );
setEffAlphaKey( spep_0-3 + 14, shuchusen1, 109 );
setEffAlphaKey( spep_0-3 + 16, shuchusen1, 146 );
setEffAlphaKey( spep_0-3 + 18, shuchusen1, 182 );
setEffAlphaKey( spep_0-3 + 20, shuchusen1, 219 );
setEffAlphaKey( spep_0-3 + 22, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 102, shuchusen1, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +18;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, -130, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  -130,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  -130,  515);

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
--入り
SE001 = playSe( spep_0 + 0, 1072 ,"",0.6);

--顔カットイン
SE002 = playSe( spep_x + 12, 1018 );

--崖上決め
SE003 = playSe( spep_0 + 32, 20 );
setSeVolumeByWorkId( spep_0 + 32, SE003, 74 );
SE004 = playSe( spep_0 + 32, 1033 );

--フリーザ手を上げる
SE005 = playSe( spep_0 + 148, 1003 );
setSeVolumeByWorkId( spep_0 + 148, SE005, 141 );

--軍団上昇
SE006 = playSe( spep_0 + 148, 1116 );
setSeVolumeByWorkId( spep_0 + 148, SE006, 76 );
stopSe( spep_0 + 182, SE006, 38 );
SE007 = playSe( spep_0 + 150, 1044 );
setSeVolumeByWorkId( spep_0 + 150, SE007, 0 );
setSeVolumeByWorkId( spep_0 + 151, SE007, 2.5 );
setSeVolumeByWorkId( spep_0 + 152, SE007, 5 );
setSeVolumeByWorkId( spep_0 + 153, SE007, 7.5 );
setSeVolumeByWorkId( spep_0 + 154, SE007, 10 );
setSeVolumeByWorkId( spep_0 + 155, SE007, 12.5 );
setSeVolumeByWorkId( spep_0 + 156, SE007, 15 );
setSeVolumeByWorkId( spep_0 + 157, SE007, 17.5 );
setSeVolumeByWorkId( spep_0 + 158, SE007, 20 );
setSeVolumeByWorkId( spep_0 + 159, SE007, 22.5 );
setSeVolumeByWorkId( spep_0 + 160, SE007, 25 );
setSeVolumeByWorkId( spep_0 + 161, SE007, 27.5 );
setSeVolumeByWorkId( spep_0 + 162, SE007, 30 );
setSeVolumeByWorkId( spep_0 + 163, SE007, 32.5 );
setSeVolumeByWorkId( spep_0 + 164, SE007, 35 );
setSeVolumeByWorkId( spep_0 + 165, SE007, 37.5 );
setSeVolumeByWorkId( spep_0 + 166, SE007, 40 );
setSeVolumeByWorkId( spep_0 + 167, SE007, 42.5 );
setSeVolumeByWorkId( spep_0 + 168, SE007, 45 );
setSeVolumeByWorkId( spep_0 + 169, SE007, 47.5 );
setSeVolumeByWorkId( spep_0 + 170, SE007, 50 );
setSeVolumeByWorkId( spep_0 + 171, SE007, 52.5 );
setSeVolumeByWorkId( spep_0 + 172, SE007, 55 );
setSeVolumeByWorkId( spep_0 + 173, SE007, 57.5 );
setSeVolumeByWorkId( spep_0 + 174, SE007, 60 );
setSeVolumeByWorkId( spep_0 + 175, SE007, 62.5 );
setSeVolumeByWorkId( spep_0 + 176, SE007, 65 );
setSeVolumeByWorkId( spep_0 + 177, SE007, 67.5 );
setSeVolumeByWorkId( spep_0 + 178, SE007, 70 );
setSeVolumeByWorkId( spep_0 + 179, SE007, 72.5 );
setSeVolumeByWorkId( spep_0 + 180, SE007, 75 );
setSeVolumeByWorkId( spep_0 + 181, SE007, 77.5 );
setSeVolumeByWorkId( spep_0 + 182, SE007, 79 );
stopSe( spep_0 + 290, SE007, 22 );
SE008 = playSe( spep_0 + 150, 1278 );
setSeVolumeByWorkId( spep_0 + 150, SE008, 74 );
stopSe( spep_0 + 224, SE008, 26 );
SE009 = playSe( spep_0 + 150, 1314 );
setSeVolumeByWorkId( spep_0 + 150, SE009, 0 );
setSeVolumeByWorkId( spep_0 + 151, SE009, 1.7 );
setSeVolumeByWorkId( spep_0 + 152, SE009, 3.4 );
setSeVolumeByWorkId( spep_0 + 153, SE009, 5.1 );
setSeVolumeByWorkId( spep_0 + 154, SE009, 6.8 );
setSeVolumeByWorkId( spep_0 + 155, SE009, 8.5 );
setSeVolumeByWorkId( spep_0 + 156, SE009, 10.2 );
setSeVolumeByWorkId( spep_0 + 157, SE009, 11.9 );
setSeVolumeByWorkId( spep_0 + 158, SE009, 13.6 );
setSeVolumeByWorkId( spep_0 + 159, SE009, 15.3 );
setSeVolumeByWorkId( spep_0 + 160, SE009, 17 );
setSeVolumeByWorkId( spep_0 + 161, SE009, 18.7 );
setSeVolumeByWorkId( spep_0 + 162, SE009, 20.4 );
setSeVolumeByWorkId( spep_0 + 163, SE009, 22.1 );
setSeVolumeByWorkId( spep_0 + 164, SE009, 23.8 );
setSeVolumeByWorkId( spep_0 + 165, SE009, 25.5 );
setSeVolumeByWorkId( spep_0 + 166, SE009, 27.2 );
setSeVolumeByWorkId( spep_0 + 167, SE009, 28.9 );
setSeVolumeByWorkId( spep_0 + 168, SE009, 30.6 );
setSeVolumeByWorkId( spep_0 + 169, SE009, 32.3 );
setSeVolumeByWorkId( spep_0 + 170, SE009, 34 );
setSeVolumeByWorkId( spep_0 + 171, SE009, 35.7 );
setSeVolumeByWorkId( spep_0 + 172, SE009, 37.4 );
setSeVolumeByWorkId( spep_0 + 173, SE009, 39.1 );
setSeVolumeByWorkId( spep_0 + 174, SE009, 40.8 );
setSeVolumeByWorkId( spep_0 + 175, SE009, 42.5 );
setSeVolumeByWorkId( spep_0 + 176, SE009, 44.2 );
setSeVolumeByWorkId( spep_0 + 177, SE009, 45.9 );
setSeVolumeByWorkId( spep_0 + 178, SE009, 47.6 );
setSeVolumeByWorkId( spep_0 + 179, SE009, 49.3 );
setSeVolumeByWorkId( spep_0 + 180, SE009, 51 );
setSeVolumeByWorkId( spep_0 + 181, SE009, 52.7 );
setSeVolumeByWorkId( spep_0 + 182, SE009, 54.4 );
setSeVolumeByWorkId( spep_0 + 183, SE009, 56.1 );
setSeVolumeByWorkId( spep_0 + 184, SE009, 57.8 );
setSeVolumeByWorkId( spep_0 + 185, SE009, 59.5 );
setSeVolumeByWorkId( spep_0 + 186, SE009, 61.2 );
setSeVolumeByWorkId( spep_0 + 187, SE009, 62.9 );
setSeVolumeByWorkId( spep_0 + 188, SE009, 64.6 );
setSeVolumeByWorkId( spep_0 + 189, SE009, 66.3 );
setSeVolumeByWorkId( spep_0 + 190, SE009, 68 );
setSeVolumeByWorkId( spep_0 + 191, SE009, 69.7 );
setSeVolumeByWorkId( spep_0 + 192, SE009, 70 );
setPitch( spep_0 + 150, SE009, -400 );
setTimeStretch( SE009, 0.73, 10, 1 );
SE010 = playSe( spep_0 + 160, 1183 );
setSeVolumeByWorkId( spep_0 + 160, SE010, 70 );
SE011 = playSe( spep_0 + 170, 1116 );
setSeVolumeByWorkId( spep_0 + 170, SE011, 127 );
setPitch( spep_0 + 170, SE011, -400 );
setTimeStretch( SE011, 0.73, 10, 1 );
stopSe( spep_0 + 190, SE011, 24 );
SE012 = playSe( spep_0 + 192, 1116 );
setSeVolumeByWorkId( spep_0 + 192, SE012, 140 );
stopSe( spep_0 + 212, SE012, 28 );
SE013 = playSe( spep_0 + 214, 1004 );
setTimeStretch( SE013, 1.25, 10, 1 );
SE014 = playSe( spep_0 + 214, 1116 );
setSeVolumeByWorkId( spep_0 + 214, SE014, 135 );
setPitch( spep_0 + 214, SE014, -100 );
setTimeStretch( SE014, 0.93, 10, 1 );
stopSe( spep_0 + 236, SE014, 28 );
SE015 = playSe( spep_0 + 230, 1116 );
setSeVolumeByWorkId( spep_0 + 230, SE015, 116 );
setPitch( spep_0 + 230, SE015, -100 );
setTimeStretch( SE015, 0.93, 10, 1 );
stopSe( spep_0 + 252, SE015, 26 );
SE016 = playSe( spep_0 + 240, 1116 );
setSeVolumeByWorkId( spep_0 + 240, SE016, 117 );
setPitch( spep_0 + 240, SE016, 200 );
setTimeStretch( SE016, 1.13, 10, 1 );
stopSe( spep_0 + 262, SE016, 26 );
SE017 = playSe( spep_0 + 258, 8 );
setSeVolumeByWorkId( spep_0 + 258, SE017, 81 );


-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 230, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 278, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_1=spep_0+286;
------------------------------------------------------
-- 屍人軍団手前に迫る→気弾ため
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 130, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 130, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 130, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 128, tame, 255 );
setEffAlphaKey( spep_1 + 129, tame, 255 );
setEffAlphaKey( spep_1 + 130, tame, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 88,  906, 40, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 88, shuchusen2, 40, 20 );
setEffMoveKey( spep_1-3 + 88, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 128, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 88, shuchusen2, 1.03, 1.32 );
setEffScaleKey( spep_1-3 + 90, shuchusen2, 1.07, 1.36 );
setEffScaleKey( spep_1-3 + 92, shuchusen2, 1.1, 1.41 );
setEffScaleKey( spep_1-3 + 94, shuchusen2, 1.13, 1.45 );
setEffScaleKey( spep_1-3 + 96, shuchusen2, 1.17, 1.49 );
setEffScaleKey( spep_1-3 + 98, shuchusen2, 1.2, 1.53 );
setEffScaleKey( spep_1-3 + 128, shuchusen2, 1.2, 1.53 );

setEffRotateKey( spep_1-3 + 88, shuchusen2, 0 );
setEffRotateKey( spep_1-3 + 128, shuchusen2, 0 );

setEffAlphaKey( spep_1-3 + 88, shuchusen2, 43 );
setEffAlphaKey( spep_1-3 + 90, shuchusen2, 85 );
setEffAlphaKey( spep_1-3 + 92, shuchusen2, 128 );
setEffAlphaKey( spep_1-3 + 94, shuchusen2, 170 );
setEffAlphaKey( spep_1-3 + 96, shuchusen2, 213 );
setEffAlphaKey( spep_1-3 + 98, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 128, shuchusen2, 255 );

--SE
--軍団上昇
stopSe( spep_1 + 4, SE009, 12 );

--軍団手前ダッシュ
SE018 = playSe( spep_1 + 0, 9 );
setSeVolumeByWorkId( spep_1 + 0, SE018, 89 );
SE019 = playSe( spep_1 + 0, 1182 );
SE020 = playSe( spep_1 + 0, 1314 );
stopSe( spep_1 + 108, SE020, 16 );
SE021 = playSe( spep_1 + 0, 1183 );
stopSe( spep_1 + 108, SE021, 16 );
SE022 = playSe( spep_1 + 10, 1167 );
setSeVolumeByWorkId( spep_1 + 10, SE022, 48 );
setTimeStretch( SE022, 1.33, 10, 1 );
SE023 = playSe( spep_1 + 18, 1004 );
setTimeStretch( SE023, 1.25, 10, 1 );
SE024 = playSe( spep_1 + 24, 1003 );
setSeVolumeByWorkId( spep_1 + 24, SE024, 158 );
setPitch( spep_1 + 24, SE024, -400 );
setTimeStretch( SE024, 0.73, 10, 1 );
SE025 = playSe( spep_1 + 24, 1116 );
setSeVolumeByWorkId( spep_1 + 24, SE025, 83 );
stopSe( spep_1 + 46, SE025, 14 );
SE026 = playSe( spep_1 + 32, 1003 );
setSeVolumeByWorkId( spep_1 + 32, SE026, 193 );
setPitch( spep_1 + 32, SE026, -400 );
setTimeStretch( SE026, 0.73, 10, 1 );
SE027 = playSe( spep_1 + 40, 1116 );
setSeVolumeByWorkId( spep_1 + 40, SE027, 85 );
stopSe( spep_1 + 66, SE027, 8 );
SE028 = playSe( spep_1 + 52, 1003 );
setSeVolumeByWorkId( spep_1 + 52, SE028, 140 );
setPitch( spep_1 + 52, SE028, -400 );
setTimeStretch( SE028, 0.73, 10, 1 );
SE029 = playSe( spep_1 + 60, 1116 );
setSeVolumeByWorkId( spep_1 + 60, SE029, 120 );
stopSe( spep_1 + 86, SE029, 8 );
SE030 = playSe( spep_1 + 66, 1003 );
setSeVolumeByWorkId( spep_1 + 66, SE030, 155 );
setPitch( spep_1 + 66, SE030, -400 );
setTimeStretch( SE030, 0.73, 10, 1 );

--フリーザズーム＆気弾溜め
SE031 = playSe( spep_1 + 70, 1072 );
setSeVolumeByWorkId( spep_1 + 70, SE031, 141 );

--軍団手前にダッシュ
SE032 = playSe( spep_1 + 82, 1004 );
setTimeStretch( SE032, 1.25, 10, 1 );

--フリーザズーム＆気弾溜め
SE033 = playSe( spep_1 + 84, 63 );
setSeVolumeByWorkId( spep_1 + 84, SE033, 141 );
SE034 = playSe( spep_1 + 84, 44 );
SE035 = playSe( spep_1 + 96, 1281 );


-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 130, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 122, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_2=spep_1+130;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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

--フリーザズーム＆気弾溜め
stopSe( spep_2 + 2, SE033, 12 );
stopSe( spep_2 + 6, SE035, 10 );
-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- デスビーム発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0,  beam, 0, 0, 0 );
setEffMoveKey( spep_3 + 60,  beam, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,  beam, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60,  beam, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,  beam, 0 );
setEffRotateKey( spep_3 + 60,  beam, 0 );
setEffAlphaKey( spep_3 + 0,  beam, 255 );
setEffAlphaKey( spep_3 + 60,  beam, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_3-3 + 30,  906, 28, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3-3 + 30, shuchusen3, 28, 20 );
setEffMoveKey( spep_3-3 + 30, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3-3 + 58, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3-3 + 30, shuchusen3, 1.15, 1.15 );
setEffScaleKey( spep_3-3 + 58, shuchusen3, 1.15, 1.15 );

setEffRotateKey( spep_3-3 + 30, shuchusen3, 0 );
setEffRotateKey( spep_3-3 + 58, shuchusen3, 0 );

setEffAlphaKey( spep_3-3 + 30, shuchusen3, 51 );
setEffAlphaKey( spep_3-3 + 32, shuchusen3, 102 );
setEffAlphaKey( spep_3-3 + 34, shuchusen3, 153 );
setEffAlphaKey( spep_3-3 + 36, shuchusen3, 204 );
setEffAlphaKey( spep_3-3 + 38, shuchusen3, 255 );
setEffAlphaKey( spep_3-3 + 58, shuchusen3, 255 );

--気弾発射
SE037 = playSe( spep_3 + 30, 1256 );
SE038 = playSe( spep_3 + 30, 1114 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 60, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 46; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE037, 0 );
    stopSe( SP_dodge - 12, SE038, 0 );
    
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



-- ** ホワイトフェード ** --
entryFade( spep_3 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 60;
------------------------------------------------------
-- 避けるジース→敵爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,  finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 230,  finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,  finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 230,  finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0,  finish_f, 0 );
setEffRotateKey( spep_4 + 230,  finish_f, 0 );
setEffAlphaKey( spep_4 + 0,  finish_f, 255 );
setEffAlphaKey( spep_4 + 230,  finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,  finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 230,  finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,  finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 230,  finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0,  finish_b, 0 );
setEffRotateKey( spep_4 + 230,  finish_b, 0 );
setEffAlphaKey( spep_4 + 0,  finish_b, 255 );
setEffAlphaKey( spep_4 + 230,  finish_b, 255 );

--集中線
shuchusen4=entryEffectLife( spep_4 + 0,  906, 78-3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 0, shuchusen4, 78-3, 20 );
setEffMoveKey( spep_4 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4-3 + 78, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen4, 1.15, 1.15 );
setEffScaleKey( spep_4-3 + 78, shuchusen4, 1.15, 1.15 );

setEffRotateKey( spep_4 + 0, shuchusen4, 0 );
setEffRotateKey( spep_4-3 + 78, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4-3 + 68, shuchusen4, 255 );
setEffAlphaKey( spep_4-3 + 70, shuchusen4, 204 );
setEffAlphaKey( spep_4-3 + 72, shuchusen4, 153 );
setEffAlphaKey( spep_4-3 + 74, shuchusen4, 102 );
setEffAlphaKey( spep_4-3 + 76, shuchusen4, 51 );
setEffAlphaKey( spep_4-3 + 78, shuchusen4, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 88, 1, 0 );

changeAnime( spep_4 + 0, 1, 100 );
changeAnime( spep_4-3 + 68, 1, 108 );
changeAnime( spep_4-3 + 72, 1, 105 );

setMoveKey( spep_4 + 0, 1, -0.4, 0.1 , 0 );
setMoveKey( spep_4-3 + 16, 1, -0.4, 0.1 , 0 );
setMoveKey( spep_4-3 + 18, 1, -0.3, 0.1 , 0 );
setMoveKey( spep_4-3 + 22, 1, -0.3, 0.1 , 0 );
setMoveKey( spep_4-3 + 24, 1, -0.3, 0 , 0 );
setMoveKey( spep_4-3 + 30, 1, -0.3, 0 , 0 );
setMoveKey( spep_4-3 + 32, 1, -0.2, 0 , 0 );
setMoveKey( spep_4-3 + 38, 1, -0.2, 0 , 0 );
setMoveKey( spep_4-3 + 40, 1, -0.1, 0 , 0 );
setMoveKey( spep_4-3 + 42, 1, -0.1, 0 , 0 );
setMoveKey( spep_4-3 + 44, 1, 0, 0 , 0 );
setMoveKey( spep_4-3 + 48, 1, 0, 0 , 0 );
setMoveKey( spep_4-3 + 50, 1, 0.1, 0 , 0 );
setMoveKey( spep_4-3 + 52, 1, 0.2, 0 , 0 );
setMoveKey( spep_4-3 + 56, 1, 0.2, 0 , 0 );
setMoveKey( spep_4-3 + 58, 1, 0.1, 0 , 0 );
setMoveKey( spep_4-3 + 71, 1, 0.1, 0 , 0 );
setMoveKey( spep_4-3 + 72, 1, 0, 0 , 0 );
setMoveKey( spep_4-3 + 88, 1, 0, 0 , 0 );

setScaleKey( spep_4 + 0, 1, 0.75, 0.75 );
setScaleKey( spep_4-3 + 4, 1, 0.75, 0.75 );
setScaleKey( spep_4-3 + 6, 1, 0.74, 0.74 );
setScaleKey( spep_4-3 + 12, 1, 0.74, 0.74 );
setScaleKey( spep_4-3 + 14, 1, 0.73, 0.73 );
setScaleKey( spep_4-3 + 16, 1, 0.73, 0.73 );
setScaleKey( spep_4-3 + 18, 1, 0.72, 0.72 );
setScaleKey( spep_4-3 + 20, 1, 0.72, 0.72 );
setScaleKey( spep_4-3 + 22, 1, 0.71, 0.71 );
setScaleKey( spep_4-3 + 24, 1, 0.7, 0.7 );
setScaleKey( spep_4-3 + 26, 1, 0.7, 0.7 );
setScaleKey( spep_4-3 + 28, 1, 0.69, 0.69 );
setScaleKey( spep_4-3 + 30, 1, 0.68, 0.68 );
setScaleKey( spep_4-3 + 32, 1, 0.66, 0.66 );
setScaleKey( spep_4-3 + 34, 1, 0.65, 0.65 );
setScaleKey( spep_4-3 + 36, 1, 0.63, 0.63 );
setScaleKey( spep_4-3 + 38, 1, 0.61, 0.61 );
setScaleKey( spep_4-3 + 40, 1, 0.59, 0.59 );
setScaleKey( spep_4-3 + 42, 1, 0.56, 0.56 );
setScaleKey( spep_4-3 + 44, 1, 0.54, 0.54 );
setScaleKey( spep_4-3 + 46, 1, 0.51, 0.51 );
setScaleKey( spep_4-3 + 48, 1, 0.47, 0.47 );
setScaleKey( spep_4-3 + 50, 1, 0.44, 0.44 );
setScaleKey( spep_4-3 + 52, 1, 0.4, 0.4 );
setScaleKey( spep_4-3 + 56, 1, 0.4, 0.4 );
setScaleKey( spep_4-3 + 58, 1, 0.41, 0.41 );
setScaleKey( spep_4-3 + 60, 1, 0.41, 0.41 );
setScaleKey( spep_4-3 + 62, 1, 0.42, 0.42 );
setScaleKey( spep_4-3 + 64, 1, 0.43, 0.43 );
setScaleKey( spep_4-3 + 67, 1, 0.44, 0.44 );
setScaleKey( spep_4-3 + 68, 1, 0.45, 0.45 );
setScaleKey( spep_4-3 + 71, 1, 0.46, 0.46 );
setScaleKey( spep_4-3 + 72, 1, 0.47, 0.47 );
setScaleKey( spep_4-3 + 74, 1, 0.48, 0.48 );
setScaleKey( spep_4-3 + 76, 1, 0.5, 0.5 );
setScaleKey( spep_4-3 + 88, 1, 0.5, 0.5 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 88, 1, 0 );

--SE
--ジース気付く
SE039 = playSe( spep_4 + 0, 48 );

--避ける
SE040 = playSe( spep_4 + 42, 1004 );
SE041 = playSe( spep_4 + 42, 1177 );
setSeVolumeByWorkId( spep_4 + 42, SE041, 84 );
stopSe( spep_4 + 66, SE041, 18 );
SE042 = playSe( spep_4 + 42, 1306 );
setSeVolumeByWorkId( spep_4 + 42, SE042, 90 );
stopSe( spep_4 + 66, SE042, 20 );

--気弾ヒット
SE043 = playSe( spep_4 + 60, 1023 );
setSeVolumeByWorkId( spep_4 + 60, SE043, 82 );
SE044 = playSe( spep_4 + 66, 1011 );
SE045 = playSe( spep_4 + 70, 1024 );
setSeVolumeByWorkId( spep_4 + 70, SE045, 88 );
SE046 = playSe( spep_4 + 78, 1017 );
setSeVolumeByWorkId( spep_4 + 78, SE046, 88 );
SE047 = playSe( spep_4 + 86, 1162 );
setSeVolumeByWorkId( spep_4 + 86, SE047, 67 );


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 96 );
endPhase( spep_4 + 220 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 登場→屍人軍団復活
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
revival = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, revival, 0, 0, 0 );
setEffMoveKey( spep_0 + 286, revival, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, revival, -1.0, 1.0 );
setEffScaleKey( spep_0 + 286, revival, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, revival, 0 );
setEffRotateKey( spep_0 + 286, revival, 0 );
setEffAlphaKey( spep_0 + 0, revival, 255 );
setEffAlphaKey( spep_0 + 284, revival, 255 );
setEffAlphaKey( spep_0 + 285, revival, 255 );
setEffAlphaKey( spep_0 + 286, revival, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 10,  906, 92, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 10, shuchusen1, 92, 20 );
setEffMoveKey( spep_0-3 + 10, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 102, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 10, shuchusen1, 1.03, 1.31 );
setEffScaleKey( spep_0-3 + 102, shuchusen1, 1.03, 1.31 );

setEffRotateKey( spep_0-3 + 10, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 102, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 10, shuchusen1, 36 );
setEffAlphaKey( spep_0-3 + 12, shuchusen1, 73 );
setEffAlphaKey( spep_0-3 + 14, shuchusen1, 109 );
setEffAlphaKey( spep_0-3 + 16, shuchusen1, 146 );
setEffAlphaKey( spep_0-3 + 18, shuchusen1, 182 );
setEffAlphaKey( spep_0-3 + 20, shuchusen1, 219 );
setEffAlphaKey( spep_0-3 + 22, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 102, shuchusen1, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +18;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, -130, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  -130,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  -130,  515);

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
--入り
SE001 = playSe( spep_0 + 0, 1072 ,"",0.6);

--顔カットイン
SE002 = playSe( spep_x + 12, 1018 );

--崖上決め
SE003 = playSe( spep_0 + 32, 20 );
setSeVolumeByWorkId( spep_0 + 32, SE003, 74 );
SE004 = playSe( spep_0 + 32, 1033 );

--フリーザ手を上げる
SE005 = playSe( spep_0 + 148, 1003 );
setSeVolumeByWorkId( spep_0 + 148, SE005, 141 );

--軍団上昇
SE006 = playSe( spep_0 + 148, 1116 );
setSeVolumeByWorkId( spep_0 + 148, SE006, 76 );
stopSe( spep_0 + 182, SE006, 38 );
SE007 = playSe( spep_0 + 150, 1044 );
setSeVolumeByWorkId( spep_0 + 150, SE007, 0 );
setSeVolumeByWorkId( spep_0 + 151, SE007, 2.5 );
setSeVolumeByWorkId( spep_0 + 152, SE007, 5 );
setSeVolumeByWorkId( spep_0 + 153, SE007, 7.5 );
setSeVolumeByWorkId( spep_0 + 154, SE007, 10 );
setSeVolumeByWorkId( spep_0 + 155, SE007, 12.5 );
setSeVolumeByWorkId( spep_0 + 156, SE007, 15 );
setSeVolumeByWorkId( spep_0 + 157, SE007, 17.5 );
setSeVolumeByWorkId( spep_0 + 158, SE007, 20 );
setSeVolumeByWorkId( spep_0 + 159, SE007, 22.5 );
setSeVolumeByWorkId( spep_0 + 160, SE007, 25 );
setSeVolumeByWorkId( spep_0 + 161, SE007, 27.5 );
setSeVolumeByWorkId( spep_0 + 162, SE007, 30 );
setSeVolumeByWorkId( spep_0 + 163, SE007, 32.5 );
setSeVolumeByWorkId( spep_0 + 164, SE007, 35 );
setSeVolumeByWorkId( spep_0 + 165, SE007, 37.5 );
setSeVolumeByWorkId( spep_0 + 166, SE007, 40 );
setSeVolumeByWorkId( spep_0 + 167, SE007, 42.5 );
setSeVolumeByWorkId( spep_0 + 168, SE007, 45 );
setSeVolumeByWorkId( spep_0 + 169, SE007, 47.5 );
setSeVolumeByWorkId( spep_0 + 170, SE007, 50 );
setSeVolumeByWorkId( spep_0 + 171, SE007, 52.5 );
setSeVolumeByWorkId( spep_0 + 172, SE007, 55 );
setSeVolumeByWorkId( spep_0 + 173, SE007, 57.5 );
setSeVolumeByWorkId( spep_0 + 174, SE007, 60 );
setSeVolumeByWorkId( spep_0 + 175, SE007, 62.5 );
setSeVolumeByWorkId( spep_0 + 176, SE007, 65 );
setSeVolumeByWorkId( spep_0 + 177, SE007, 67.5 );
setSeVolumeByWorkId( spep_0 + 178, SE007, 70 );
setSeVolumeByWorkId( spep_0 + 179, SE007, 72.5 );
setSeVolumeByWorkId( spep_0 + 180, SE007, 75 );
setSeVolumeByWorkId( spep_0 + 181, SE007, 77.5 );
setSeVolumeByWorkId( spep_0 + 182, SE007, 79 );
stopSe( spep_0 + 290, SE007, 22 );
SE008 = playSe( spep_0 + 150, 1278 );
setSeVolumeByWorkId( spep_0 + 150, SE008, 74 );
stopSe( spep_0 + 224, SE008, 26 );
SE009 = playSe( spep_0 + 150, 1314 );
setSeVolumeByWorkId( spep_0 + 150, SE009, 0 );
setSeVolumeByWorkId( spep_0 + 151, SE009, 1.7 );
setSeVolumeByWorkId( spep_0 + 152, SE009, 3.4 );
setSeVolumeByWorkId( spep_0 + 153, SE009, 5.1 );
setSeVolumeByWorkId( spep_0 + 154, SE009, 6.8 );
setSeVolumeByWorkId( spep_0 + 155, SE009, 8.5 );
setSeVolumeByWorkId( spep_0 + 156, SE009, 10.2 );
setSeVolumeByWorkId( spep_0 + 157, SE009, 11.9 );
setSeVolumeByWorkId( spep_0 + 158, SE009, 13.6 );
setSeVolumeByWorkId( spep_0 + 159, SE009, 15.3 );
setSeVolumeByWorkId( spep_0 + 160, SE009, 17 );
setSeVolumeByWorkId( spep_0 + 161, SE009, 18.7 );
setSeVolumeByWorkId( spep_0 + 162, SE009, 20.4 );
setSeVolumeByWorkId( spep_0 + 163, SE009, 22.1 );
setSeVolumeByWorkId( spep_0 + 164, SE009, 23.8 );
setSeVolumeByWorkId( spep_0 + 165, SE009, 25.5 );
setSeVolumeByWorkId( spep_0 + 166, SE009, 27.2 );
setSeVolumeByWorkId( spep_0 + 167, SE009, 28.9 );
setSeVolumeByWorkId( spep_0 + 168, SE009, 30.6 );
setSeVolumeByWorkId( spep_0 + 169, SE009, 32.3 );
setSeVolumeByWorkId( spep_0 + 170, SE009, 34 );
setSeVolumeByWorkId( spep_0 + 171, SE009, 35.7 );
setSeVolumeByWorkId( spep_0 + 172, SE009, 37.4 );
setSeVolumeByWorkId( spep_0 + 173, SE009, 39.1 );
setSeVolumeByWorkId( spep_0 + 174, SE009, 40.8 );
setSeVolumeByWorkId( spep_0 + 175, SE009, 42.5 );
setSeVolumeByWorkId( spep_0 + 176, SE009, 44.2 );
setSeVolumeByWorkId( spep_0 + 177, SE009, 45.9 );
setSeVolumeByWorkId( spep_0 + 178, SE009, 47.6 );
setSeVolumeByWorkId( spep_0 + 179, SE009, 49.3 );
setSeVolumeByWorkId( spep_0 + 180, SE009, 51 );
setSeVolumeByWorkId( spep_0 + 181, SE009, 52.7 );
setSeVolumeByWorkId( spep_0 + 182, SE009, 54.4 );
setSeVolumeByWorkId( spep_0 + 183, SE009, 56.1 );
setSeVolumeByWorkId( spep_0 + 184, SE009, 57.8 );
setSeVolumeByWorkId( spep_0 + 185, SE009, 59.5 );
setSeVolumeByWorkId( spep_0 + 186, SE009, 61.2 );
setSeVolumeByWorkId( spep_0 + 187, SE009, 62.9 );
setSeVolumeByWorkId( spep_0 + 188, SE009, 64.6 );
setSeVolumeByWorkId( spep_0 + 189, SE009, 66.3 );
setSeVolumeByWorkId( spep_0 + 190, SE009, 68 );
setSeVolumeByWorkId( spep_0 + 191, SE009, 69.7 );
setSeVolumeByWorkId( spep_0 + 192, SE009, 70 );
setPitch( spep_0 + 150, SE009, -400 );
setTimeStretch( SE009, 0.73, 10, 1 );
SE010 = playSe( spep_0 + 160, 1183 );
setSeVolumeByWorkId( spep_0 + 160, SE010, 70 );
SE011 = playSe( spep_0 + 170, 1116 );
setSeVolumeByWorkId( spep_0 + 170, SE011, 127 );
setPitch( spep_0 + 170, SE011, -400 );
setTimeStretch( SE011, 0.73, 10, 1 );
stopSe( spep_0 + 190, SE011, 24 );
SE012 = playSe( spep_0 + 192, 1116 );
setSeVolumeByWorkId( spep_0 + 192, SE012, 140 );
stopSe( spep_0 + 212, SE012, 28 );
SE013 = playSe( spep_0 + 214, 1004 );
setTimeStretch( SE013, 1.25, 10, 1 );
SE014 = playSe( spep_0 + 214, 1116 );
setSeVolumeByWorkId( spep_0 + 214, SE014, 135 );
setPitch( spep_0 + 214, SE014, -100 );
setTimeStretch( SE014, 0.93, 10, 1 );
stopSe( spep_0 + 236, SE014, 28 );
SE015 = playSe( spep_0 + 230, 1116 );
setSeVolumeByWorkId( spep_0 + 230, SE015, 116 );
setPitch( spep_0 + 230, SE015, -100 );
setTimeStretch( SE015, 0.93, 10, 1 );
stopSe( spep_0 + 252, SE015, 26 );
SE016 = playSe( spep_0 + 240, 1116 );
setSeVolumeByWorkId( spep_0 + 240, SE016, 117 );
setPitch( spep_0 + 240, SE016, 200 );
setTimeStretch( SE016, 1.13, 10, 1 );
stopSe( spep_0 + 262, SE016, 26 );
SE017 = playSe( spep_0 + 258, 8 );
setSeVolumeByWorkId( spep_0 + 258, SE017, 81 );


-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 230, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 278, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_1=spep_0+286;
------------------------------------------------------
-- 屍人軍団手前に迫る→気弾ため
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 130, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_1 + 130, tame, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 130, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 128, tame, 255 );
setEffAlphaKey( spep_1 + 129, tame, 255 );
setEffAlphaKey( spep_1 + 130, tame, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 88,  906, 40, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 88, shuchusen2, 40, 20 );
setEffMoveKey( spep_1-3 + 88, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 128, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 88, shuchusen2, 1.03, 1.32 );
setEffScaleKey( spep_1-3 + 90, shuchusen2, 1.07, 1.36 );
setEffScaleKey( spep_1-3 + 92, shuchusen2, 1.1, 1.41 );
setEffScaleKey( spep_1-3 + 94, shuchusen2, 1.13, 1.45 );
setEffScaleKey( spep_1-3 + 96, shuchusen2, 1.17, 1.49 );
setEffScaleKey( spep_1-3 + 98, shuchusen2, 1.2, 1.53 );
setEffScaleKey( spep_1-3 + 128, shuchusen2, 1.2, 1.53 );

setEffRotateKey( spep_1-3 + 88, shuchusen2, 0 );
setEffRotateKey( spep_1-3 + 128, shuchusen2, 0 );

setEffAlphaKey( spep_1-3 + 88, shuchusen2, 43 );
setEffAlphaKey( spep_1-3 + 90, shuchusen2, 85 );
setEffAlphaKey( spep_1-3 + 92, shuchusen2, 128 );
setEffAlphaKey( spep_1-3 + 94, shuchusen2, 170 );
setEffAlphaKey( spep_1-3 + 96, shuchusen2, 213 );
setEffAlphaKey( spep_1-3 + 98, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 128, shuchusen2, 255 );

--SE
--軍団上昇
stopSe( spep_1 + 4, SE009, 12 );

--軍団手前ダッシュ
SE018 = playSe( spep_1 + 0, 9 );
setSeVolumeByWorkId( spep_1 + 0, SE018, 89 );
SE019 = playSe( spep_1 + 0, 1182 );
SE020 = playSe( spep_1 + 0, 1314 );
stopSe( spep_1 + 108, SE020, 16 );
SE021 = playSe( spep_1 + 0, 1183 );
stopSe( spep_1 + 108, SE021, 16 );
SE022 = playSe( spep_1 + 10, 1167 );
setSeVolumeByWorkId( spep_1 + 10, SE022, 48 );
setTimeStretch( SE022, 1.33, 10, 1 );
SE023 = playSe( spep_1 + 18, 1004 );
setTimeStretch( SE023, 1.25, 10, 1 );
SE024 = playSe( spep_1 + 24, 1003 );
setSeVolumeByWorkId( spep_1 + 24, SE024, 158 );
setPitch( spep_1 + 24, SE024, -400 );
setTimeStretch( SE024, 0.73, 10, 1 );
SE025 = playSe( spep_1 + 24, 1116 );
setSeVolumeByWorkId( spep_1 + 24, SE025, 83 );
stopSe( spep_1 + 46, SE025, 14 );
SE026 = playSe( spep_1 + 32, 1003 );
setSeVolumeByWorkId( spep_1 + 32, SE026, 193 );
setPitch( spep_1 + 32, SE026, -400 );
setTimeStretch( SE026, 0.73, 10, 1 );
SE027 = playSe( spep_1 + 40, 1116 );
setSeVolumeByWorkId( spep_1 + 40, SE027, 85 );
stopSe( spep_1 + 66, SE027, 8 );
SE028 = playSe( spep_1 + 52, 1003 );
setSeVolumeByWorkId( spep_1 + 52, SE028, 140 );
setPitch( spep_1 + 52, SE028, -400 );
setTimeStretch( SE028, 0.73, 10, 1 );
SE029 = playSe( spep_1 + 60, 1116 );
setSeVolumeByWorkId( spep_1 + 60, SE029, 120 );
stopSe( spep_1 + 86, SE029, 8 );
SE030 = playSe( spep_1 + 66, 1003 );
setSeVolumeByWorkId( spep_1 + 66, SE030, 155 );
setPitch( spep_1 + 66, SE030, -400 );
setTimeStretch( SE030, 0.73, 10, 1 );

--フリーザズーム＆気弾溜め
SE031 = playSe( spep_1 + 70, 1072 );
setSeVolumeByWorkId( spep_1 + 70, SE031, 141 );

--軍団手前にダッシュ
SE032 = playSe( spep_1 + 82, 1004 );
setTimeStretch( SE032, 1.25, 10, 1 );

--フリーザズーム＆気弾溜め
SE033 = playSe( spep_1 + 84, 63 );
setSeVolumeByWorkId( spep_1 + 84, SE033, 141 );
SE034 = playSe( spep_1 + 84, 44 );
SE035 = playSe( spep_1 + 96, 1281 );


-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 130, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 122, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

--次の準備
spep_2=spep_1+130;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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

--フリーザズーム＆気弾溜め
stopSe( spep_2 + 2, SE033, 12 );
stopSe( spep_2 + 6, SE035, 10 );
-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- デスビーム発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0,  beam, 0, 0, 0 );
setEffMoveKey( spep_3 + 60,  beam, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,  beam, -1.0, 1.0 );
setEffScaleKey( spep_3 + 60,  beam, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0,  beam, 0 );
setEffRotateKey( spep_3 + 60,  beam, 0 );
setEffAlphaKey( spep_3 + 0,  beam, 255 );
setEffAlphaKey( spep_3 + 60,  beam, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_3-3 + 30,  906, 28, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3-3 + 30, shuchusen3, 28, 20 );
setEffMoveKey( spep_3-3 + 30, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3-3 + 58, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3-3 + 30, shuchusen3, 1.15, 1.15 );
setEffScaleKey( spep_3-3 + 58, shuchusen3, 1.15, 1.15 );

setEffRotateKey( spep_3-3 + 30, shuchusen3, 0 );
setEffRotateKey( spep_3-3 + 58, shuchusen3, 0 );

setEffAlphaKey( spep_3-3 + 30, shuchusen3, 51 );
setEffAlphaKey( spep_3-3 + 32, shuchusen3, 102 );
setEffAlphaKey( spep_3-3 + 34, shuchusen3, 153 );
setEffAlphaKey( spep_3-3 + 36, shuchusen3, 204 );
setEffAlphaKey( spep_3-3 + 38, shuchusen3, 255 );
setEffAlphaKey( spep_3-3 + 58, shuchusen3, 255 );

--気弾発射
SE037 = playSe( spep_3 + 30, 1256 );
SE038 = playSe( spep_3 + 30, 1114 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 60, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 46; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE037, 0 );
    stopSe( SP_dodge - 12, SE038, 0 );
    
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



-- ** ホワイトフェード ** --
entryFade( spep_3 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 60;
------------------------------------------------------
-- 避けるジース→敵爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,  finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 230,  finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,  finish_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 230,  finish_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0,  finish_f, 0 );
setEffRotateKey( spep_4 + 230,  finish_f, 0 );
setEffAlphaKey( spep_4 + 0,  finish_f, 255 );
setEffAlphaKey( spep_4 + 230,  finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,  finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 230,  finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,  finish_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 230,  finish_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0,  finish_b, 0 );
setEffRotateKey( spep_4 + 230,  finish_b, 0 );
setEffAlphaKey( spep_4 + 0,  finish_b, 255 );
setEffAlphaKey( spep_4 + 230,  finish_b, 255 );

--集中線
shuchusen4=entryEffectLife( spep_4 + 0,  906, 78-3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 0, shuchusen4, 78-3, 20 );
setEffMoveKey( spep_4 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4-3 + 78, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen4, 1.15, 1.15 );
setEffScaleKey( spep_4-3 + 78, shuchusen4, 1.15, 1.15 );

setEffRotateKey( spep_4 + 0, shuchusen4, 0 );
setEffRotateKey( spep_4-3 + 78, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4-3 + 68, shuchusen4, 255 );
setEffAlphaKey( spep_4-3 + 70, shuchusen4, 204 );
setEffAlphaKey( spep_4-3 + 72, shuchusen4, 153 );
setEffAlphaKey( spep_4-3 + 74, shuchusen4, 102 );
setEffAlphaKey( spep_4-3 + 76, shuchusen4, 51 );
setEffAlphaKey( spep_4-3 + 78, shuchusen4, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 88, 1, 0 );

changeAnime( spep_4 + 0, 1, 100 );
changeAnime( spep_4-3 + 68, 1, 108 );
changeAnime( spep_4-3 + 72, 1, 105 );

setMoveKey( spep_4 + 0, 1, -0.4, 0.1 , 0 );
setMoveKey( spep_4-3 + 16, 1, -0.4, 0.1 , 0 );
setMoveKey( spep_4-3 + 18, 1, -0.3, 0.1 , 0 );
setMoveKey( spep_4-3 + 22, 1, -0.3, 0.1 , 0 );
setMoveKey( spep_4-3 + 24, 1, -0.3, 0 , 0 );
setMoveKey( spep_4-3 + 30, 1, -0.3, 0 , 0 );
setMoveKey( spep_4-3 + 32, 1, -0.2, 0 , 0 );
setMoveKey( spep_4-3 + 38, 1, -0.2, 0 , 0 );
setMoveKey( spep_4-3 + 40, 1, -0.1, 0 , 0 );
setMoveKey( spep_4-3 + 42, 1, -0.1, 0 , 0 );
setMoveKey( spep_4-3 + 44, 1, 0, 0 , 0 );
setMoveKey( spep_4-3 + 48, 1, 0, 0 , 0 );
setMoveKey( spep_4-3 + 50, 1, 0.1, 0 , 0 );
setMoveKey( spep_4-3 + 52, 1, 0.2, 0 , 0 );
setMoveKey( spep_4-3 + 56, 1, 0.2, 0 , 0 );
setMoveKey( spep_4-3 + 58, 1, 0.1, 0 , 0 );
setMoveKey( spep_4-3 + 71, 1, 0.1, 0 , 0 );
setMoveKey( spep_4-3 + 72, 1, 0, 0 , 0 );
setMoveKey( spep_4-3 + 88, 1, 0, 0 , 0 );

setScaleKey( spep_4 + 0, 1, 0.75, 0.75 );
setScaleKey( spep_4-3 + 4, 1, 0.75, 0.75 );
setScaleKey( spep_4-3 + 6, 1, 0.74, 0.74 );
setScaleKey( spep_4-3 + 12, 1, 0.74, 0.74 );
setScaleKey( spep_4-3 + 14, 1, 0.73, 0.73 );
setScaleKey( spep_4-3 + 16, 1, 0.73, 0.73 );
setScaleKey( spep_4-3 + 18, 1, 0.72, 0.72 );
setScaleKey( spep_4-3 + 20, 1, 0.72, 0.72 );
setScaleKey( spep_4-3 + 22, 1, 0.71, 0.71 );
setScaleKey( spep_4-3 + 24, 1, 0.7, 0.7 );
setScaleKey( spep_4-3 + 26, 1, 0.7, 0.7 );
setScaleKey( spep_4-3 + 28, 1, 0.69, 0.69 );
setScaleKey( spep_4-3 + 30, 1, 0.68, 0.68 );
setScaleKey( spep_4-3 + 32, 1, 0.66, 0.66 );
setScaleKey( spep_4-3 + 34, 1, 0.65, 0.65 );
setScaleKey( spep_4-3 + 36, 1, 0.63, 0.63 );
setScaleKey( spep_4-3 + 38, 1, 0.61, 0.61 );
setScaleKey( spep_4-3 + 40, 1, 0.59, 0.59 );
setScaleKey( spep_4-3 + 42, 1, 0.56, 0.56 );
setScaleKey( spep_4-3 + 44, 1, 0.54, 0.54 );
setScaleKey( spep_4-3 + 46, 1, 0.51, 0.51 );
setScaleKey( spep_4-3 + 48, 1, 0.47, 0.47 );
setScaleKey( spep_4-3 + 50, 1, 0.44, 0.44 );
setScaleKey( spep_4-3 + 52, 1, 0.4, 0.4 );
setScaleKey( spep_4-3 + 56, 1, 0.4, 0.4 );
setScaleKey( spep_4-3 + 58, 1, 0.41, 0.41 );
setScaleKey( spep_4-3 + 60, 1, 0.41, 0.41 );
setScaleKey( spep_4-3 + 62, 1, 0.42, 0.42 );
setScaleKey( spep_4-3 + 64, 1, 0.43, 0.43 );
setScaleKey( spep_4-3 + 67, 1, 0.44, 0.44 );
setScaleKey( spep_4-3 + 68, 1, 0.45, 0.45 );
setScaleKey( spep_4-3 + 71, 1, 0.46, 0.46 );
setScaleKey( spep_4-3 + 72, 1, 0.47, 0.47 );
setScaleKey( spep_4-3 + 74, 1, 0.48, 0.48 );
setScaleKey( spep_4-3 + 76, 1, 0.5, 0.5 );
setScaleKey( spep_4-3 + 88, 1, 0.5, 0.5 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 88, 1, 0 );

--SE
--ジース気付く
SE039 = playSe( spep_4 + 0, 48 );

--避ける
SE040 = playSe( spep_4 + 42, 1004 );
SE041 = playSe( spep_4 + 42, 1177 );
setSeVolumeByWorkId( spep_4 + 42, SE041, 84 );
stopSe( spep_4 + 66, SE041, 18 );
SE042 = playSe( spep_4 + 42, 1306 );
setSeVolumeByWorkId( spep_4 + 42, SE042, 90 );
stopSe( spep_4 + 66, SE042, 20 );

--気弾ヒット
SE043 = playSe( spep_4 + 60, 1023 );
setSeVolumeByWorkId( spep_4 + 60, SE043, 82 );
SE044 = playSe( spep_4 + 66, 1011 );
SE045 = playSe( spep_4 + 70, 1024 );
setSeVolumeByWorkId( spep_4 + 70, SE045, 88 );
SE046 = playSe( spep_4 + 78, 1017 );
setSeVolumeByWorkId( spep_4 + 78, SE046, 88 );
SE047 = playSe( spep_4 + 86, 1162 );
setSeVolumeByWorkId( spep_4 + 86, SE047, 67 );


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 96 );
endPhase( spep_4 + 220 );
end