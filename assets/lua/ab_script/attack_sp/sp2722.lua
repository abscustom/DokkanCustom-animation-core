--1028920:LR_孫悟空(少年期)&クリリン(少年期)&ブルマ(少女期)_超必殺技：友情アタック
--sp_effect_b1_00284
--sp2722

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162921;  --冒頭　敵に向かって駆け込む悟空たち	ef_001
SP_01b = 162922;  --冒頭の背景	ef_001b
SP_02 = 162925;  --蓮撃開始〜ラストまで	ef_002
SP_02b = 162926;  --蓮撃開始〜ラストまでの背景	ef_002b

--エフェクト(てき)
SP_01r = 162923;  --冒頭の敵側	ef_001r
SP_01br = 162924;  --冒頭敵側の背景	ef_001rb
SP_02r = 162927;  --連撃開始〜ラストまでの敵側	ef_002r
SP_02br = 162928;  --連撃開始〜ラストまで敵側の背景	ef_002rb


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭
-------------------------------------------------

MAX_FRAME_0 = 248;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 冒頭 敵に向かって駆け込む悟空たち(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 冒頭の背景(ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -30, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -30, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 96 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 158 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 96 + OFFSET_X, 1, 100 );

setMoveKey( spep_0 + 96 + OFFSET_X, 1, 0.6, 105.7 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 0.6, 105.7 , 0 );

setScaleKey( spep_0 + 96 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 0.44, 0.44 );

setRotateKey( spep_0 + 96 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, -21.5 );

-- ** 音 ** --
--指さす
SE002 = playSeVer2( spep_0 + 6, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 71 );
SE003 = playSeVer2( spep_0 + 6, 1189, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 34, 1189, "", 0, 0, 0, -1);

--二人走っていく
SE005 = playSeVer2( spep_0 + 88, 44, "", 0, 0, 0, 0.5);
SE006 = playSeVer2( spep_0 + 92, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 92, SE006, 158 );
SE007 = playSeVer2( spep_0 + 94, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 94, SE007, 158 );
stopSeIfDoubleSpeed( spep_0 + 94, SE007 );
SE008 = playSeVer2( spep_0 + 102, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 102, SE008, 158 );
SE009 = playSeVer2( spep_0 + 102, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 102, SE009, 158 );
SE010 = playSeVer2( spep_0 + 112, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 112, SE010, 158 );
SE011 = playSeVer2( spep_0 + 112, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 112, SE011, 158 );
stopSeIfDoubleSpeed( spep_0 + 112, SE011 );
SE012 = playSeVer2( spep_0 + 120, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 120, SE012, 158 );
SE013 = playSeVer2( spep_0 + 124, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 124, SE013, 158 );
SE014 = playSeVer2( spep_0 + 130, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 130, SE014, 158 );
SE015 = playSeVer2( spep_0 + 134, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 134, SE015, 158 );
stopSeIfDoubleSpeed( spep_0 + 134, SE015 );
SE016 = playSeVer2( spep_0 + 138, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 138, SE016, 158 );

--背景音
SE017 = playSeVer2( spep_0 + 144, 1264, "",spep_0 + 268, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 144, SE017, 71 );
SE018 = playSeVer2( spep_0 + 146, 1116, "",spep_0 + 266, 0, 20, -1);

--二人走る
SE019 = playSeVer2( spep_0 + 146, 1108, "", 0, 0, 0, 0.5);
SE020 = playSeVer2( spep_0 + 156, 1108, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 156, SE020 );
SE021 = playSeVer2( spep_0 + 168, 1108, "", 0, 0, 0, 0.5);
SE022 = playSeVer2( spep_0 + 178, 1108, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 178, SE022 );
SE023 = playSeVer2( spep_0 + 184, 1106, "", 0, 0, 0, 0.5);
SE024 = playSeVer2( spep_0 + 190, 1108, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 190, SE024 );
SE025 = playSeVer2( spep_0 + 192, 1106, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 192, SE025 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 200; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 12, SE025, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--二人走る
SE026 = playSeVer2( spep_0 + 202, 1108, "", 0, 0, 0, 0.5);
SE027 = playSeVer2( spep_0 + 202, 1106, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 202, SE027 );
SE028 = playSeVer2( spep_0 + 210, 1106, "", 0, 0, 0, 0.5);
SE029 = playSeVer2( spep_0 + 212, 1108, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 212, SE029 );
SE030 = playSeVer2( spep_0 + 220, 1106, "", 0, 0, 0, 0.5);
SE031 = playSeVer2( spep_0 + 224, 1108, "", 0, 0, 0, 0.5);
SE032 = playSeVer2( spep_0 + 228, 1106, "", 0, 0, 0, 0.5);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --248F


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);


-------------------------------------------------
-- 連撃開始〜ラストまで
-------------------------------------------------

MAX_FRAME_1 = 666;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 連撃開始〜ラストまで(ef_002)
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 連撃開始〜ラストまで敵側の背景(ef_002b)
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 36 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 + 10 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 0, 1, -11, 31.3 , 0 );
setMoveKey( spep_1 + 9 + OFFSET_X, 1, -11, 31.3 , 0 );
setMoveKey( spep_1 + 10 + OFFSET_X, 1, 61.3, -86.8 , 0 );
setMoveKey( spep_1 + 11 + OFFSET_X, 1, 61.3, -86.8 , 0 );
setMoveKey( spep_1 + 12 + OFFSET_X, 1, -5.7, -43.8 , 0 );
setMoveKey( spep_1 + 13 + OFFSET_X, 1, -5.7, -43.8 , 0 );
setMoveKey( spep_1 + 14 + OFFSET_X, 1, 46.4, -81.8 , 0 );
setMoveKey( spep_1 + 15 + OFFSET_X, 1, 46.4, -81.8 , 0 );
setMoveKey( spep_1 + 16 + OFFSET_X, 1, 25.3, -55.8 , 0 );
setMoveKey( spep_1 + 17 + OFFSET_X, 1, 25.3, -55.8 , 0 );
setMoveKey( spep_1 + 18 + OFFSET_X, 1, 32.3, -73.8 , 0 );
setMoveKey( spep_1 + 19 + OFFSET_X, 1, 32.3, -73.8 , 0 );
setMoveKey( spep_1 + 20 + OFFSET_X, 1, 27.3, -70.8 , 0 );
setMoveKey( spep_1 + 21 + OFFSET_X, 1, 27.3, -70.8 , 0 );
setMoveKey( spep_1 + 22 + OFFSET_X, 1, 31.3, -78.8 , 0 );
setMoveKey( spep_1 + 23 + OFFSET_X, 1, 31.3, -78.8 , 0 );
setMoveKey( spep_1 + 24 + OFFSET_X, 1, 29.3, -65.8 , 0 );
setMoveKey( spep_1 + 25 + OFFSET_X, 1, 29.3, -65.8 , 0 );
setMoveKey( spep_1 + 26 + OFFSET_X, 1, 30.3, -71.8 , 0 );
setMoveKey( spep_1 + 27 + OFFSET_X, 1, 30.3, -71.8 , 0 );
setMoveKey( spep_1 + 28 + OFFSET_X, 1, 28.3, -70.8 , 0 );
setMoveKey( spep_1 + 29 + OFFSET_X, 1, 28.3, -70.8 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_X, 1, 340.4, -130.8 , 0 );
setMoveKey( spep_1 + 31 + OFFSET_X, 1, 340.4, -130.8 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_X, 1, 494.4, -136.3 , 0 );
setMoveKey( spep_1 + 33 + OFFSET_X, 1, 494.4, -136.3 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_X, 1, 648.4, -141.8 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_X, 1, 648.4, -141.8 , 0 );

setScaleKey( spep_1 + 0, 1, 2.91, 2.91 );
setScaleKey( spep_1 + 36 + OFFSET_X, 1, 2.91, 2.91 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 9 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 10 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_1 + 29 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_1 + 30 + OFFSET_X, 1, -5 );
setRotateKey( spep_1 + 31 + OFFSET_X, 1, -5 );
setRotateKey( spep_1 + 32 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_1 + 33 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_1 + 34 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_1 + 36 + OFFSET_X, 1, 4.7 );

-- 敵の動き2
setDisp( spep_1 + 116 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 184 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 116 + OFFSET_X, 1, 107 );
changeAnime( spep_1 + 136 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 156 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 116 + OFFSET_X, 1, 84.7, -66.1 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 84.7, -66.1 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 30, -5.1 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 30, -5.1 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 6.5, -83.3 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 6.5, -83.3 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 131.6, -33.2 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 131.6, -33.2 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 28.4, -36.4 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 28.4, -36.4 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 73.7, -70.8 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 73.7, -70.8 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 34.7, -36.4 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 34.7, -36.4 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 64.4, -53.6 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 64.4, -53.6 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 40.9, -59.8 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 40.9, -59.8 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 59.7, -56.7 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 59.7, -56.7 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, -333.9, -60.7 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, -333.9, -60.7 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, -296.4, -60.7 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, -296.4, -60.7 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, -258.9, -60.7 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, -258.9, -60.7 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, -221.4, -60.7 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, -221.4, -60.7 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, -183.9, -60.7 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, -183.9, -60.7 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, -146.4, -60.7 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, -146.4, -60.7 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, -108.9, -60.7 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, -108.9, -60.7 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, -71.4, -60.7 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, -71.4, -60.7 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, -33.9, -60.7 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, -33.9, -60.7 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 3.6, -60.7 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 3.6, -60.7 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, -128.3, -175.8 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, -128.3, -175.8 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, -67.4, -152.3 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, -67.4, -152.3 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, -131.5, -160.2 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, -131.5, -160.2 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, -62.7, -158.6 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, -62.7, -158.6 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, -131.5, -194.6 , 0 );
setMoveKey( spep_1 + 165 + OFFSET_X, 1, -131.5, -194.6 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, -59.6, -127.3 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_X, 1, -59.6, -127.3 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, -117.4, -175.8 , 0 );
setMoveKey( spep_1 + 169 + OFFSET_X, 1, -117.4, -175.8 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, -72.1, -160.1 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_X, 1, -72.1, -160.1 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, -106.4, -168 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_X, 1, -106.4, -168 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, -90.8, -163.3 , 0 );
setMoveKey( spep_1 + 175 + OFFSET_X, 1, -90.8, -163.3 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, -231.5, -190 , 0 );
setMoveKey( spep_1 + 177 + OFFSET_X, 1, -231.5, -190 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, -412.8, -276 , 0 );
setMoveKey( spep_1 + 179 + OFFSET_X, 1, -412.8, -276 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, -594.1, -362 , 0 );
setMoveKey( spep_1 + 181 + OFFSET_X, 1, -594.1, -362 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, -775.5, -448 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, -775.5, -448 , 0 );

setScaleKey( spep_1 + 116 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_1 + 135 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_1 + 136 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_1 + 155 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_1 + 156 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_1 + 184 + OFFSET_X, 1, 3.62, 3.62 );

setRotateKey( spep_1 + 116 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_1 + 135 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_1 + 136 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_1 + 137 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_1 + 138 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_1 + 139 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_1 + 140 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_1 + 141 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_1 + 142 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_1 + 143 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_1 + 144 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_1 + 145 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_1 + 146 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_1 + 147 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_1 + 148 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_1 + 149 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_1 + 150 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_1 + 151 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_1 + 152 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_1 + 153 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_1 + 154 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 155 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 156 + OFFSET_X, 1, -74.5 );
setRotateKey( spep_1 + 175 + OFFSET_X, 1, -74.5 );
setRotateKey( spep_1 + 176 + OFFSET_X, 1, -122.2 );
setRotateKey( spep_1 + 177 + OFFSET_X, 1, -122.2 );
setRotateKey( spep_1 + 178 + OFFSET_X, 1, -140.1 );
setRotateKey( spep_1 + 179 + OFFSET_X, 1, -140.1 );
setRotateKey( spep_1 + 180 + OFFSET_X, 1, -158.1 );
setRotateKey( spep_1 + 181 + OFFSET_X, 1, -158.1 );
setRotateKey( spep_1 + 182 + OFFSET_X, 1, -176 );
setRotateKey( spep_1 + 184 + OFFSET_X, 1, -176 );

-- 敵の動き3
setDisp( spep_1 + 206 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 328 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 224 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 290 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 206 + OFFSET_X, 1, 491.7, 56.4 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, 491.7, 56.4 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 430.1, 53.1 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, 430.1, 53.1 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 368.5, 49.7 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, 368.5, 49.7 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 306.9, 46.3 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, 306.9, 46.3 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 245.2, 43 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, 245.2, 43 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 183.6, 39.6 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 183.6, 39.6 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 122, 36.2 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, 122, 36.2 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, 60.4, 32.9 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, 60.4, 32.9 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, -1.2, 29.5 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, -1.2, 29.5 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, 64.8, 13.5 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, 64.8, 13.5 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 39.4, 13.5 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, 39.4, 13.5 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, 74.1, 13.5 , 0 );
setMoveKey( spep_1 + 229 + OFFSET_X, 1, 74.1, 13.5 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, 48.7, 13.5 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, 48.7, 13.5 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, 83.4, 13.5 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, 83.4, 13.5 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, 58.1, 13.5 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, 58.1, 13.5 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, 92.7, 13.5 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, 92.7, 13.5 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, 67.4, 13.5 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, 67.4, 13.5 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, 102, 13.5 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, 102, 13.5 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, 76.7, 13.5 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, 76.7, 13.5 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, 111.4, 13.5 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, 111.4, 13.5 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, 86, 13.5 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, 86, 13.5 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, 120.7, 13.5 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, 120.7, 13.5 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 95.3, 13.5 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, 95.3, 13.5 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 130, 13.5 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, 130, 13.5 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 104.7, 13.5 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, 104.7, 13.5 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 156.7, 13.5 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, 156.7, 13.5 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 158.1, 13.5 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, 158.1, 13.5 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, 159.5, 13.5 , 0 );
setMoveKey( spep_1 + 261 + OFFSET_X, 1, 159.5, 13.5 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, 160.7, 13.5 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, 160.7, 13.5 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, 161.7, 13.5 , 0 );
setMoveKey( spep_1 + 265 + OFFSET_X, 1, 161.7, 13.5 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, 162.5, 13.5 , 0 );
setMoveKey( spep_1 + 267 + OFFSET_X, 1, 162.5, 13.5 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, 163.2, 13.5 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, 163.2, 13.5 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, 163.7, 13.5 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X, 1, 163.7, 13.5 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, 164.1, 13.5 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X, 1, 164.1, 13.5 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, 164.4, 13.5 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, 164.4, 13.5 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, 164.6, 13.5 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, 164.6, 13.5 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, 164.7, 13.5 , 0 );
setMoveKey( spep_1 + 283 + OFFSET_X, 1, 164.7, 13.5 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, 164.8, 13.5 , 0 );
setMoveKey( spep_1 + 285 + OFFSET_X, 1, 164.8, 13.5 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, 155.3, 110.3 , 0 );
setMoveKey( spep_1 + 287 + OFFSET_X, 1, 155.3, 110.3 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, 146.5, 198.7 , 0 );
setMoveKey( spep_1 + 289 + OFFSET_X, 1, 146.5, 198.7 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X, 1, 142.9, 211.8 , 0 );
setMoveKey( spep_1 + 291 + OFFSET_X, 1, 142.9, 211.8 , 0 );
setMoveKey( spep_1 + 292 + OFFSET_X, 1, 143.4, 213.1 , 0 );
setMoveKey( spep_1 + 293 + OFFSET_X, 1, 143.4, 213.1 , 0 );
setMoveKey( spep_1 + 294 + OFFSET_X, 1, 144, 214.4 , 0 );
setMoveKey( spep_1 + 295 + OFFSET_X, 1, 144, 214.4 , 0 );
setMoveKey( spep_1 + 296 + OFFSET_X, 1, 144.5, 215.8 , 0 );
setMoveKey( spep_1 + 297 + OFFSET_X, 1, 144.5, 215.8 , 0 );
setMoveKey( spep_1 + 298 + OFFSET_X, 1, 145.1, 217.1 , 0 );
setMoveKey( spep_1 + 299 + OFFSET_X, 1, 145.1, 217.1 , 0 );
setMoveKey( spep_1 + 300 + OFFSET_X, 1, 145.7, 218.4 , 0 );
setMoveKey( spep_1 + 301 + OFFSET_X, 1, 145.7, 218.4 , 0 );
setMoveKey( spep_1 + 302 + OFFSET_X, 1, 146.2, 219.7 , 0 );
setMoveKey( spep_1 + 303 + OFFSET_X, 1, 146.2, 219.7 , 0 );
setMoveKey( spep_1 + 304 + OFFSET_X, 1, 146.8, 221 , 0 );
setMoveKey( spep_1 + 305 + OFFSET_X, 1, 146.8, 221 , 0 );
setMoveKey( spep_1 + 306 + OFFSET_X, 1, 147.3, 222.3 , 0 );
setMoveKey( spep_1 + 307 + OFFSET_X, 1, 147.3, 222.3 , 0 );
setMoveKey( spep_1 + 308 + OFFSET_X, 1, 147.9, 223.7 , 0 );
setMoveKey( spep_1 + 309 + OFFSET_X, 1, 147.9, 223.7 , 0 );
setMoveKey( spep_1 + 310 + OFFSET_X, 1, 149, 221.7 , 0 );
setMoveKey( spep_1 + 311 + OFFSET_X, 1, 149, 221.7 , 0 );
setMoveKey( spep_1 + 312 + OFFSET_X, 1, 150.1, 219.7 , 0 );
setMoveKey( spep_1 + 313 + OFFSET_X, 1, 150.1, 219.7 , 0 );
setMoveKey( spep_1 + 314 + OFFSET_X, 1, 151.3, 217.7 , 0 );
setMoveKey( spep_1 + 315 + OFFSET_X, 1, 151.3, 217.7 , 0 );
setMoveKey( spep_1 + 316 + OFFSET_X, 1, 152.4, 215.8 , 0 );
setMoveKey( spep_1 + 317 + OFFSET_X, 1, 152.4, 215.8 , 0 );
setMoveKey( spep_1 + 318 + OFFSET_X, 1, 153.5, 213.8 , 0 );
setMoveKey( spep_1 + 319 + OFFSET_X, 1, 153.5, 213.8 , 0 );
setMoveKey( spep_1 + 320 + OFFSET_X, 1, 154.6, 211.8 , 0 );
setMoveKey( spep_1 + 321 + OFFSET_X, 1, 154.6, 211.8 , 0 );
setMoveKey( spep_1 + 322 + OFFSET_X, 1, 155.8, 209.9 , 0 );
setMoveKey( spep_1 + 323 + OFFSET_X, 1, 155.8, 209.9 , 0 );
setMoveKey( spep_1 + 324 + OFFSET_X, 1, 156.9, 207.9 , 0 );
setMoveKey( spep_1 + 328 + OFFSET_X, 1, 156.9, 207.9 , 0 );

setScaleKey( spep_1 + 206 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_1 + 223 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_1 + 224 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 285 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 286 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 289 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 290 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_1 + 328 + OFFSET_X, 1, 1.63, 1.63 );

setRotateKey( spep_1 + 206 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_1 + 207 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_1 + 208 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_1 + 209 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_1 + 210 + OFFSET_X, 1, -46.2 );
setRotateKey( spep_1 + 211 + OFFSET_X, 1, -46.2 );
setRotateKey( spep_1 + 212 + OFFSET_X, 1, -51.6 );
setRotateKey( spep_1 + 213 + OFFSET_X, 1, -51.6 );
setRotateKey( spep_1 + 214 + OFFSET_X, 1, -57 );
setRotateKey( spep_1 + 215 + OFFSET_X, 1, -57 );
setRotateKey( spep_1 + 216 + OFFSET_X, 1, -62.5 );
setRotateKey( spep_1 + 217 + OFFSET_X, 1, -62.5 );
setRotateKey( spep_1 + 218 + OFFSET_X, 1, -67.9 );
setRotateKey( spep_1 + 219 + OFFSET_X, 1, -67.9 );
setRotateKey( spep_1 + 220 + OFFSET_X, 1, -73.3 );
setRotateKey( spep_1 + 221 + OFFSET_X, 1, -73.3 );
setRotateKey( spep_1 + 222 + OFFSET_X, 1, -78.8 );
setRotateKey( spep_1 + 223 + OFFSET_X, 1, -78.8 );
setRotateKey( spep_1 + 224 + OFFSET_X, 1, -17.9 );
setRotateKey( spep_1 + 257 + OFFSET_X, 1, -17.9 );
setRotateKey( spep_1 + 258 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_1 + 259 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_1 + 260 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_1 + 261 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_1 + 262 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_1 + 263 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_1 + 264 + OFFSET_X, 1, -22 );
setRotateKey( spep_1 + 265 + OFFSET_X, 1, -22 );
setRotateKey( spep_1 + 266 + OFFSET_X, 1, -22.7 );
setRotateKey( spep_1 + 267 + OFFSET_X, 1, -22.7 );
setRotateKey( spep_1 + 268 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_1 + 269 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_1 + 270 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_1 + 271 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_1 + 272 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_1 + 273 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_1 + 274 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_1 + 275 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_1 + 276 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_1 + 277 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_1 + 278 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_1 + 279 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_1 + 280 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_1 + 281 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_1 + 282 + OFFSET_X, 1, -25.9 );
setRotateKey( spep_1 + 283 + OFFSET_X, 1, -25.9 );
setRotateKey( spep_1 + 284 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_1 + 285 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_1 + 286 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 287 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 288 + OFFSET_X, 1, -31.2 );
setRotateKey( spep_1 + 289 + OFFSET_X, 1, -31.2 );
setRotateKey( spep_1 + 290 + OFFSET_X, 1, -50 );
setRotateKey( spep_1 + 291 + OFFSET_X, 1, -50 );
setRotateKey( spep_1 + 292 + OFFSET_X, 1, -48.4 );
setRotateKey( spep_1 + 293 + OFFSET_X, 1, -48.4 );
setRotateKey( spep_1 + 294 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_1 + 295 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_1 + 296 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_1 + 297 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_1 + 298 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_1 + 299 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_1 + 300 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_1 + 301 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_1 + 302 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 303 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 304 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_1 + 305 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_1 + 306 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_1 + 307 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_1 + 308 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_1 + 309 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_1 + 310 + OFFSET_X, 1, -34.4 );
setRotateKey( spep_1 + 311 + OFFSET_X, 1, -34.4 );
setRotateKey( spep_1 + 312 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_1 + 313 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_1 + 314 + OFFSET_X, 1, -30.9 );
setRotateKey( spep_1 + 315 + OFFSET_X, 1, -30.9 );
setRotateKey( spep_1 + 316 + OFFSET_X, 1, -29.1 );
setRotateKey( spep_1 + 317 + OFFSET_X, 1, -29.1 );
setRotateKey( spep_1 + 318 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_1 + 319 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_1 + 320 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_1 + 321 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_1 + 322 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_1 + 323 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_1 + 324 + OFFSET_X, 1, -22 );
setRotateKey( spep_1 + 328 + OFFSET_X, 1, -22 );

-- 敵の動き4
setDisp( spep_1 + 414 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 466 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 438 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 414 + OFFSET_X, 1, 42.2, -128.6 , 0 );
setMoveKey( spep_1 + 437 + OFFSET_X, 1, 42.2, -128.6 , 0 );
setMoveKey( spep_1 + 438 + OFFSET_X, 1, 259.9, -51.9 , 0 );
setMoveKey( spep_1 + 439 + OFFSET_X, 1, 259.9, -51.9 , 0 );
setMoveKey( spep_1 + 440 + OFFSET_X, 1, 193.9, -21.9 , 0 );
setMoveKey( spep_1 + 441 + OFFSET_X, 1, 193.9, -21.9 , 0 );
setMoveKey( spep_1 + 442 + OFFSET_X, 1, 242.9, -48.9 , 0 );
setMoveKey( spep_1 + 443 + OFFSET_X, 1, 242.9, -48.9 , 0 );
setMoveKey( spep_1 + 444 + OFFSET_X, 1, 205.9, -23.9 , 0 );
setMoveKey( spep_1 + 445 + OFFSET_X, 1, 205.9, -23.9 , 0 );
setMoveKey( spep_1 + 446 + OFFSET_X, 1, 255.9, -41.9 , 0 );
setMoveKey( spep_1 + 447 + OFFSET_X, 1, 255.9, -41.9 , 0 );
setMoveKey( spep_1 + 448 + OFFSET_X, 1, 213.9, -27.9 , 0 );
setMoveKey( spep_1 + 449 + OFFSET_X, 1, 213.9, -27.9 , 0 );
setMoveKey( spep_1 + 450 + OFFSET_X, 1, 241.9, -41.9 , 0 );
setMoveKey( spep_1 + 451 + OFFSET_X, 1, 241.9, -41.9 , 0 );
setMoveKey( spep_1 + 452 + OFFSET_X, 1, 227.9, -26.9 , 0 );
setMoveKey( spep_1 + 453 + OFFSET_X, 1, 227.9, -26.9 , 0 );
setMoveKey( spep_1 + 454 + OFFSET_X, 1, 237.9, -31.9 , 0 );
setMoveKey( spep_1 + 455 + OFFSET_X, 1, 237.9, -31.9 , 0 );
setMoveKey( spep_1 + 456 + OFFSET_X, 1, 229.9, -30.9 , 0 );
setMoveKey( spep_1 + 457 + OFFSET_X, 1, 229.9, -30.9 , 0 );
setMoveKey( spep_1 + 458 + OFFSET_X, 1, 232.9, -29.9 , 0 );
setMoveKey( spep_1 + 461 + OFFSET_X, 1, 232.9, -29.9 , 0 );
setMoveKey( spep_1 + 462 + OFFSET_X, 1, 532.9, -180 , 0 );
setMoveKey( spep_1 + 463 + OFFSET_X, 1, 532.9, -180 , 0 );
setMoveKey( spep_1 + 464 + OFFSET_X, 1, 832.9, -330.1 , 0 );
setMoveKey( spep_1 + 466 + OFFSET_X, 1, 832.9, -330.1 , 0 );

setScaleKey( spep_1 + 414 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_1 + 437 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_1 + 438 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 461 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 462 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 463 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 464 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_1 + 466 + OFFSET_X, 1, 2.79, 2.79 );

setRotateKey( spep_1 + 414 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_1 + 437 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_1 + 438 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_1 + 461 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_1 + 462 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_1 + 463 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_1 + 464 + OFFSET_X, 1, -5 );
setRotateKey( spep_1 + 466 + OFFSET_X, 1, -5 );

-- 敵の動き5
setDisp( spep_1 + 482 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 550 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 482 + OFFSET_X, 1, 5 );
changeAnime( spep_1 + 492 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 482 + OFFSET_X, 1, 149, -69.9 , 0 );
setMoveKey( spep_1 + 483 + OFFSET_X, 1, 149, -69.9 , 0 );
setMoveKey( spep_1 + 484 + OFFSET_X, 1, 141, -57 , 0 );
setMoveKey( spep_1 + 485 + OFFSET_X, 1, 141, -57 , 0 );
setMoveKey( spep_1 + 486 + OFFSET_X, 1, 78, 14.8 , 0 );
setMoveKey( spep_1 + 487 + OFFSET_X, 1, 78, 14.8 , 0 );
setMoveKey( spep_1 + 488 + OFFSET_X, 1, 40.2, 57.9 , 0 );
setMoveKey( spep_1 + 489 + OFFSET_X, 1, 40.2, 57.9 , 0 );
setMoveKey( spep_1 + 490 + OFFSET_X, 1, 27.6, 72.3 , 0 );
setMoveKey( spep_1 + 491 + OFFSET_X, 1, 27.6, 72.3 , 0 );
setMoveKey( spep_1 + 492 + OFFSET_X, 1, 92.2, 188.4 , 0 );
setMoveKey( spep_1 + 493 + OFFSET_X, 1, 92.2, 188.4 , 0 );
setMoveKey( spep_1 + 494 + OFFSET_X, 1, -10.5, 9.8 , 0 );
setMoveKey( spep_1 + 495 + OFFSET_X, 1, -10.5, 9.8 , 0 );
setMoveKey( spep_1 + 496 + OFFSET_X, 1, -17.8, 134.5 , 0 );
setMoveKey( spep_1 + 497 + OFFSET_X, 1, -17.8, 134.5 , 0 );
setMoveKey( spep_1 + 498 + OFFSET_X, 1, 81.5, 29.9 , 0 );
setMoveKey( spep_1 + 499 + OFFSET_X, 1, 81.5, 29.9 , 0 );
setMoveKey( spep_1 + 500 + OFFSET_X, 1, 71.8, 121.4 , 0 );
setMoveKey( spep_1 + 501 + OFFSET_X, 1, 71.8, 121.4 , 0 );
setMoveKey( spep_1 + 502 + OFFSET_X, 1, -3.9, 76.4 , 0 );
setMoveKey( spep_1 + 503 + OFFSET_X, 1, -3.9, 76.4 , 0 );
setMoveKey( spep_1 + 504 + OFFSET_X, 1, 63.5, 61 , 0 );
setMoveKey( spep_1 + 505 + OFFSET_X, 1, 63.5, 61 , 0 );
setMoveKey( spep_1 + 506 + OFFSET_X, 1, 51.7, 95.8 , 0 );
setMoveKey( spep_1 + 507 + OFFSET_X, 1, 51.7, 95.8 , 0 );
setMoveKey( spep_1 + 508 + OFFSET_X, 1, 21.6, 104.8 , 0 );
setMoveKey( spep_1 + 509 + OFFSET_X, 1, 21.6, 104.8 , 0 );
setMoveKey( spep_1 + 510 + OFFSET_X, 1, 37.6, 51.9 , 0 );
setMoveKey( spep_1 + 511 + OFFSET_X, 1, 37.6, 51.9 , 0 );
setMoveKey( spep_1 + 512 + OFFSET_X, 1, 51.2, 88.8 , 0 );
setMoveKey( spep_1 + 513 + OFFSET_X, 1, 51.2, 88.8 , 0 );
setMoveKey( spep_1 + 514 + OFFSET_X, 1, 21.6, 86.4 , 0 );
setMoveKey( spep_1 + 515 + OFFSET_X, 1, 21.6, 86.4 , 0 );
setMoveKey( spep_1 + 516 + OFFSET_X, 1, 34.4, 77.5 , 0 );
setMoveKey( spep_1 + 517 + OFFSET_X, 1, 34.4, 77.5 , 0 );
setMoveKey( spep_1 + 518 + OFFSET_X, 1, 38.4, 83.2 , 0 );
setMoveKey( spep_1 + 550 + OFFSET_X, 1, 38.4, 83.2 , 0 );

setScaleKey( spep_1 + 482 + OFFSET_X, 1, 12.69, 12.69 );
setScaleKey( spep_1 + 483 + OFFSET_X, 1, 12.69, 12.69 );
setScaleKey( spep_1 + 484 + OFFSET_X, 1, 8.9, 8.9 );
setScaleKey( spep_1 + 485 + OFFSET_X, 1, 8.9, 8.9 );
setScaleKey( spep_1 + 486 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_1 + 487 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_1 + 488 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_1 + 489 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_1 + 490 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 491 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 492 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 550 + OFFSET_X, 1, 1.14, 1.14 );

setRotateKey( spep_1 + 482 + OFFSET_X, 1, 20 );
setRotateKey( spep_1 + 491 + OFFSET_X, 1, 20 );
setRotateKey( spep_1 + 492 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_1 + 550 + OFFSET_X, 1, -5.1 );

-- ** 音 ** --
--悟空飛び込みパンチ
SE034 = playSeVer2( spep_1 + 0, 1189, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_1 + 2, 1009, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_1 + 2, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE036, 68 );
SE037 = playSeVer2( spep_1 + 4, 1110, "", 0, 0, 0, -1);

--悟空回転していく
SE038 = playSeVer2( spep_1 + 30, 1117, "",spep_1 + 94, 0, 44, -1);
SE039 = playSeVer2( spep_1 + 30, 1151, "", 0, 0, 0, -1);

--クリリン飛び上がる
SE040 = playSeVer2( spep_1 + 46, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 46, SE040, 63 );
SE041 = playSeVer2( spep_1 + 46, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 46, SE041, 75 );

--クリリンキック
SE042 = playSeVer2( spep_1 + 108, 1010, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_1 + 108, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 108, SE043, 65 );
SE044 = playSeVer2( spep_1 + 110, 1110, "", 0, 0, 0, -1);

--悟空背後から膝蹴り
SE045 = playSeVer2( spep_1 + 150, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 150, SE045, 74 );
SE046 = playSeVer2( spep_1 + 150, 1153, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_1 + 152, 1110, "", 0, 0, 0, -1);

--クリリンフレームイン
SE048 = playSeVer2( spep_1 + 194, 1048, "", 0, 0, 0, -1);

--悟空回転して着地
SE049 = playSeVer2( spep_1 + 230, 1119, "", 0, 8, 0, -1);
setStartTimeMs( SE049,  600 );

--クリリン連続パンチ
SE050 = playSeVer2( spep_1 + 216, 1110, "",spep_1 + 586, 0, 14, -1);

--悟空回転して着地
SE051 = playSeVer2( spep_1 + 220, 1117, "",spep_1 + 618, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 220, SE051, 73 );

--クリリン連続パンチ
SE052 = playSeVer2( spep_1 + 222, 1110, "",spep_1 + 592, 0, 14, -1);
SE053 = playSeVer2( spep_1 + 226, 1110, "",spep_1 + 596, 0, 12, -1);
SE054 = playSeVer2( spep_1 + 234, 1110, "",spep_1 + 604, 0, 12, -1);

--悟空回転して着地
SE055 = playSeVer2( spep_1 + 238, 1151, "", 0, 0, 0, -1);

--クリリン連続パンチ
SE056 = playSeVer2( spep_1 + 242, 1110, "",spep_1 + 612, 0, 14, -1);

--悟空回転して着地
SE057 = playSeVer2( spep_1 + 270, 1108, "", 0, 0, 0, -1);

--クリリンサマーソルト
SE058 = playSeVer2( spep_1 + 276, 1010, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_1 + 276, 1169, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 276, SE059, 81 );
SE060 = playSeVer2( spep_1 + 278, 1110, "", 0, 0, 0, -1);

--如意棒回転
SE061 = playSeVer2( spep_1 + 318, 1388, "",spep_1 + 424, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 318, SE061, 126 );
setPitch( spep_1 + 318, SE061, -600 );
setTimeStretch( SE061, 0.6, 30, 4 );
SE062 = playSeVer2( spep_1 + 318, 1151, "", 0, 0, 0, 0.5);
SE063 = playSeVer2( spep_1 + 324, 1151, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_1 + 324, SE063 );
SE064 = playSeVer2( spep_1 + 332, 1151, "", 0, 0, 0, 0.5);
SE065 = playSeVer2( spep_1 + 338, 1151, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_1 + 338, SE065 );
SE066 = playSeVer2( spep_1 + 346, 1151, "", 0, 0, 0, 0.5);
SE067 = playSeVer2( spep_1 + 354, 1151, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_1 + 354, SE067 );
SE068 = playSeVer2( spep_1 + 360, 1151, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_1 + 360, SE068 );
SE069 = playSeVer2( spep_1 + 368, 1151, "", 0, 0, 0, 0.5);
SE070 = playSeVer2( spep_1 + 376, 1151, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_1 + 376, SE070 );
SE071 = playSeVer2( spep_1 + 384, 1151, "", 0, 0, 0, 0.5);
SE072 = playSeVer2( spep_1 + 390, 1151, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_1 + 390, SE072 );
SE073 = playSeVer2( spep_1 + 398, 1151, "", 0, 0, 0, 0.5);

--如意棒で叩く
SE074 = playSeVer2( spep_1 + 408, 1004, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_1 + 430, 1120, "", 0, 0, 0, -1);
SE076 = playSeVer2( spep_1 + 430, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 430, SE076, 80 );

--敵飛んでいく
SE077 = playSeVer2( spep_1 + 456, 1121, "",spep_1 + 514, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 456, SE077, 77 );

--水しぶき
SE078 = playSeVer2( spep_1 + 456, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 456, SE078, 275 );
SE079 = playSeVer2( spep_1 + 472, 1166, "",spep_1 + 570, 0, 64, -1);

--壁激突
SE080 = playSeVer2( spep_1 + 490, 1159, "",spep_1 + 574, 0, 40, -1);

--画面遷移
SE081 = playSeVer2( spep_1 + 532, 8, "", 0, 0, 0, -1);

--構える
SE082 = playSeVer2( spep_1 + 548, 1233, "", 0, 0, 0, -1);
SE083 = playSeVer2( spep_1 + 560, 1006, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 560); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 666F-4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭
-------------------------------------------------

MAX_FRAME_0 = 248;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 冒頭の敵側(ef_001r)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 冒頭敵側の背景(ef_001rb)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -30, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -30, 515.5 , 0 );
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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 96 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 158 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 96 + OFFSET_X, 1, 100 );

setMoveKey( spep_0 + 96 + OFFSET_X, 1, 0.6, 105.7 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 0.6, 105.7 , 0 );

setScaleKey( spep_0 + 96 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 0.44, 0.44 );

setRotateKey( spep_0 + 96 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, -21.5 );

-- ** 音 ** --
--指さす
SE002 = playSeVer2( spep_0 + 6, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 71 );
SE003 = playSeVer2( spep_0 + 6, 1189, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 34, 1189, "", 0, 0, 0, -1);

--二人走っていく
SE005 = playSeVer2( spep_0 + 88, 44, "", 0, 0, 0, 0.5);
SE006 = playSeVer2( spep_0 + 92, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 92, SE006, 158 );
SE007 = playSeVer2( spep_0 + 94, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 94, SE007, 158 );
stopSeIfDoubleSpeed( spep_0 + 94, SE007 );
SE008 = playSeVer2( spep_0 + 102, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 102, SE008, 158 );
SE009 = playSeVer2( spep_0 + 102, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 102, SE009, 158 );
SE010 = playSeVer2( spep_0 + 112, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 112, SE010, 158 );
SE011 = playSeVer2( spep_0 + 112, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 112, SE011, 158 );
stopSeIfDoubleSpeed( spep_0 + 112, SE011 );
SE012 = playSeVer2( spep_0 + 120, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 120, SE012, 158 );
SE013 = playSeVer2( spep_0 + 124, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 124, SE013, 158 );
SE014 = playSeVer2( spep_0 + 130, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 130, SE014, 158 );
SE015 = playSeVer2( spep_0 + 134, 1108, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 134, SE015, 158 );
stopSeIfDoubleSpeed( spep_0 + 134, SE015 );
SE016 = playSeVer2( spep_0 + 138, 1106, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 138, SE016, 158 );

--背景音
SE017 = playSeVer2( spep_0 + 144, 1264, "",spep_0 + 268, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 144, SE017, 71 );
SE018 = playSeVer2( spep_0 + 146, 1116, "",spep_0 + 266, 0, 20, -1);

--二人走る
SE019 = playSeVer2( spep_0 + 146, 1108, "", 0, 0, 0, 0.5);
SE020 = playSeVer2( spep_0 + 156, 1108, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 156, SE020 );
SE021 = playSeVer2( spep_0 + 168, 1108, "", 0, 0, 0, 0.5);
SE022 = playSeVer2( spep_0 + 178, 1108, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 178, SE022 );
SE023 = playSeVer2( spep_0 + 184, 1106, "", 0, 0, 0, 0.5);
SE024 = playSeVer2( spep_0 + 190, 1108, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 190, SE024 );
SE025 = playSeVer2( spep_0 + 192, 1106, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 192, SE025 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 200; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 12, SE025, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--二人走る
SE026 = playSeVer2( spep_0 + 202, 1108, "", 0, 0, 0, 0.5);
SE027 = playSeVer2( spep_0 + 202, 1106, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 202, SE027 );
SE028 = playSeVer2( spep_0 + 210, 1106, "", 0, 0, 0, 0.5);
SE029 = playSeVer2( spep_0 + 212, 1108, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 212, SE029 );
SE030 = playSeVer2( spep_0 + 220, 1106, "", 0, 0, 0, 0.5);
SE031 = playSeVer2( spep_0 + 224, 1108, "", 0, 0, 0, 0.5);
SE032 = playSeVer2( spep_0 + 228, 1106, "", 0, 0, 0, 0.5);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --248F


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);


-------------------------------------------------
-- 連撃開始〜ラストまで
-------------------------------------------------

MAX_FRAME_1 = 666;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 連撃開始〜ラストまでの敵側(ef_002r)
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 連撃開始〜ラストまで敵側の背景(ef_002rb)
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 36 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 + 10 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 0, 1, -11, 31.3 , 0 );
setMoveKey( spep_1 + 9 + OFFSET_X, 1, -11, 31.3 , 0 );
setMoveKey( spep_1 + 10 + OFFSET_X, 1, 61.3, -86.8 , 0 );
setMoveKey( spep_1 + 11 + OFFSET_X, 1, 61.3, -86.8 , 0 );
setMoveKey( spep_1 + 12 + OFFSET_X, 1, -5.7, -43.8 , 0 );
setMoveKey( spep_1 + 13 + OFFSET_X, 1, -5.7, -43.8 , 0 );
setMoveKey( spep_1 + 14 + OFFSET_X, 1, 46.4, -81.8 , 0 );
setMoveKey( spep_1 + 15 + OFFSET_X, 1, 46.4, -81.8 , 0 );
setMoveKey( spep_1 + 16 + OFFSET_X, 1, 25.3, -55.8 , 0 );
setMoveKey( spep_1 + 17 + OFFSET_X, 1, 25.3, -55.8 , 0 );
setMoveKey( spep_1 + 18 + OFFSET_X, 1, 32.3, -73.8 , 0 );
setMoveKey( spep_1 + 19 + OFFSET_X, 1, 32.3, -73.8 , 0 );
setMoveKey( spep_1 + 20 + OFFSET_X, 1, 27.3, -70.8 , 0 );
setMoveKey( spep_1 + 21 + OFFSET_X, 1, 27.3, -70.8 , 0 );
setMoveKey( spep_1 + 22 + OFFSET_X, 1, 31.3, -78.8 , 0 );
setMoveKey( spep_1 + 23 + OFFSET_X, 1, 31.3, -78.8 , 0 );
setMoveKey( spep_1 + 24 + OFFSET_X, 1, 29.3, -65.8 , 0 );
setMoveKey( spep_1 + 25 + OFFSET_X, 1, 29.3, -65.8 , 0 );
setMoveKey( spep_1 + 26 + OFFSET_X, 1, 30.3, -71.8 , 0 );
setMoveKey( spep_1 + 27 + OFFSET_X, 1, 30.3, -71.8 , 0 );
setMoveKey( spep_1 + 28 + OFFSET_X, 1, 28.3, -70.8 , 0 );
setMoveKey( spep_1 + 29 + OFFSET_X, 1, 28.3, -70.8 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_X, 1, 340.4, -130.8 , 0 );
setMoveKey( spep_1 + 31 + OFFSET_X, 1, 340.4, -130.8 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_X, 1, 494.4, -136.3 , 0 );
setMoveKey( spep_1 + 33 + OFFSET_X, 1, 494.4, -136.3 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_X, 1, 648.4, -141.8 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_X, 1, 648.4, -141.8 , 0 );

setScaleKey( spep_1 + 0, 1, 2.91, 2.91 );
setScaleKey( spep_1 + 36 + OFFSET_X, 1, 2.91, 2.91 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 9 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 10 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_1 + 29 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_1 + 30 + OFFSET_X, 1, -5 );
setRotateKey( spep_1 + 31 + OFFSET_X, 1, -5 );
setRotateKey( spep_1 + 32 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_1 + 33 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_1 + 34 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_1 + 36 + OFFSET_X, 1, 4.7 );

-- 敵の動き2
setDisp( spep_1 + 116 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 184 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 116 + OFFSET_X, 1, 107 );
changeAnime( spep_1 + 136 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 156 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 116 + OFFSET_X, 1, 84.7, -66.1 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 84.7, -66.1 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 30, -5.1 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 30, -5.1 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 6.5, -83.3 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 6.5, -83.3 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 131.6, -33.2 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 131.6, -33.2 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 28.4, -36.4 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 28.4, -36.4 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 73.7, -70.8 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 73.7, -70.8 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 34.7, -36.4 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 34.7, -36.4 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 64.4, -53.6 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 64.4, -53.6 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 40.9, -59.8 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 40.9, -59.8 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 59.7, -56.7 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 59.7, -56.7 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, -333.9, -60.7 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, -333.9, -60.7 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, -296.4, -60.7 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, -296.4, -60.7 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, -258.9, -60.7 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, -258.9, -60.7 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, -221.4, -60.7 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, -221.4, -60.7 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, -183.9, -60.7 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, -183.9, -60.7 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, -146.4, -60.7 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, -146.4, -60.7 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, -108.9, -60.7 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, -108.9, -60.7 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, -71.4, -60.7 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, -71.4, -60.7 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, -33.9, -60.7 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, -33.9, -60.7 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 3.6, -60.7 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 3.6, -60.7 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, -128.3, -175.8 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, -128.3, -175.8 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, -67.4, -152.3 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, -67.4, -152.3 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, -131.5, -160.2 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, -131.5, -160.2 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, -62.7, -158.6 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, -62.7, -158.6 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, -131.5, -194.6 , 0 );
setMoveKey( spep_1 + 165 + OFFSET_X, 1, -131.5, -194.6 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, -59.6, -127.3 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_X, 1, -59.6, -127.3 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, -117.4, -175.8 , 0 );
setMoveKey( spep_1 + 169 + OFFSET_X, 1, -117.4, -175.8 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, -72.1, -160.1 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_X, 1, -72.1, -160.1 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, -106.4, -168 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_X, 1, -106.4, -168 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, -90.8, -163.3 , 0 );
setMoveKey( spep_1 + 175 + OFFSET_X, 1, -90.8, -163.3 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, -231.5, -190 , 0 );
setMoveKey( spep_1 + 177 + OFFSET_X, 1, -231.5, -190 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, -412.8, -276 , 0 );
setMoveKey( spep_1 + 179 + OFFSET_X, 1, -412.8, -276 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, -594.1, -362 , 0 );
setMoveKey( spep_1 + 181 + OFFSET_X, 1, -594.1, -362 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, -775.5, -448 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, -775.5, -448 , 0 );

setScaleKey( spep_1 + 116 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_1 + 135 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_1 + 136 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_1 + 155 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_1 + 156 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_1 + 184 + OFFSET_X, 1, 3.62, 3.62 );

setRotateKey( spep_1 + 116 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_1 + 135 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_1 + 136 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_1 + 137 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_1 + 138 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_1 + 139 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_1 + 140 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_1 + 141 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_1 + 142 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_1 + 143 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_1 + 144 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_1 + 145 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_1 + 146 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_1 + 147 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_1 + 148 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_1 + 149 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_1 + 150 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_1 + 151 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_1 + 152 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_1 + 153 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_1 + 154 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 155 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 156 + OFFSET_X, 1, -74.5 );
setRotateKey( spep_1 + 175 + OFFSET_X, 1, -74.5 );
setRotateKey( spep_1 + 176 + OFFSET_X, 1, -122.2 );
setRotateKey( spep_1 + 177 + OFFSET_X, 1, -122.2 );
setRotateKey( spep_1 + 178 + OFFSET_X, 1, -140.1 );
setRotateKey( spep_1 + 179 + OFFSET_X, 1, -140.1 );
setRotateKey( spep_1 + 180 + OFFSET_X, 1, -158.1 );
setRotateKey( spep_1 + 181 + OFFSET_X, 1, -158.1 );
setRotateKey( spep_1 + 182 + OFFSET_X, 1, -176 );
setRotateKey( spep_1 + 184 + OFFSET_X, 1, -176 );

-- 敵の動き3
setDisp( spep_1 + 206 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 328 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 224 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 290 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 206 + OFFSET_X, 1, 491.7, 56.4 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, 491.7, 56.4 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 430.1, 53.1 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, 430.1, 53.1 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 368.5, 49.7 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, 368.5, 49.7 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 306.9, 46.3 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, 306.9, 46.3 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 245.2, 43 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, 245.2, 43 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 183.6, 39.6 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 183.6, 39.6 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 122, 36.2 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, 122, 36.2 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, 60.4, 32.9 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, 60.4, 32.9 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, -1.2, 29.5 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, -1.2, 29.5 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, 64.8, 13.5 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, 64.8, 13.5 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 39.4, 13.5 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, 39.4, 13.5 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, 74.1, 13.5 , 0 );
setMoveKey( spep_1 + 229 + OFFSET_X, 1, 74.1, 13.5 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, 48.7, 13.5 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, 48.7, 13.5 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, 83.4, 13.5 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, 83.4, 13.5 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, 58.1, 13.5 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, 58.1, 13.5 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, 92.7, 13.5 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, 92.7, 13.5 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, 67.4, 13.5 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, 67.4, 13.5 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, 102, 13.5 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, 102, 13.5 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, 76.7, 13.5 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, 76.7, 13.5 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, 111.4, 13.5 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, 111.4, 13.5 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, 86, 13.5 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, 86, 13.5 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, 120.7, 13.5 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, 120.7, 13.5 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 95.3, 13.5 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, 95.3, 13.5 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 130, 13.5 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, 130, 13.5 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 104.7, 13.5 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, 104.7, 13.5 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 156.7, 13.5 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, 156.7, 13.5 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 158.1, 13.5 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, 158.1, 13.5 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, 159.5, 13.5 , 0 );
setMoveKey( spep_1 + 261 + OFFSET_X, 1, 159.5, 13.5 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, 160.7, 13.5 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, 160.7, 13.5 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, 161.7, 13.5 , 0 );
setMoveKey( spep_1 + 265 + OFFSET_X, 1, 161.7, 13.5 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, 162.5, 13.5 , 0 );
setMoveKey( spep_1 + 267 + OFFSET_X, 1, 162.5, 13.5 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, 163.2, 13.5 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, 163.2, 13.5 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, 163.7, 13.5 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X, 1, 163.7, 13.5 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, 164.1, 13.5 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X, 1, 164.1, 13.5 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, 164.4, 13.5 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, 164.4, 13.5 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, 164.6, 13.5 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, 164.6, 13.5 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, 164.7, 13.5 , 0 );
setMoveKey( spep_1 + 283 + OFFSET_X, 1, 164.7, 13.5 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, 164.8, 13.5 , 0 );
setMoveKey( spep_1 + 285 + OFFSET_X, 1, 164.8, 13.5 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, 155.3, 110.3 , 0 );
setMoveKey( spep_1 + 287 + OFFSET_X, 1, 155.3, 110.3 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, 146.5, 198.7 , 0 );
setMoveKey( spep_1 + 289 + OFFSET_X, 1, 146.5, 198.7 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X, 1, 142.9, 211.8 , 0 );
setMoveKey( spep_1 + 291 + OFFSET_X, 1, 142.9, 211.8 , 0 );
setMoveKey( spep_1 + 292 + OFFSET_X, 1, 143.4, 213.1 , 0 );
setMoveKey( spep_1 + 293 + OFFSET_X, 1, 143.4, 213.1 , 0 );
setMoveKey( spep_1 + 294 + OFFSET_X, 1, 144, 214.4 , 0 );
setMoveKey( spep_1 + 295 + OFFSET_X, 1, 144, 214.4 , 0 );
setMoveKey( spep_1 + 296 + OFFSET_X, 1, 144.5, 215.8 , 0 );
setMoveKey( spep_1 + 297 + OFFSET_X, 1, 144.5, 215.8 , 0 );
setMoveKey( spep_1 + 298 + OFFSET_X, 1, 145.1, 217.1 , 0 );
setMoveKey( spep_1 + 299 + OFFSET_X, 1, 145.1, 217.1 , 0 );
setMoveKey( spep_1 + 300 + OFFSET_X, 1, 145.7, 218.4 , 0 );
setMoveKey( spep_1 + 301 + OFFSET_X, 1, 145.7, 218.4 , 0 );
setMoveKey( spep_1 + 302 + OFFSET_X, 1, 146.2, 219.7 , 0 );
setMoveKey( spep_1 + 303 + OFFSET_X, 1, 146.2, 219.7 , 0 );
setMoveKey( spep_1 + 304 + OFFSET_X, 1, 146.8, 221 , 0 );
setMoveKey( spep_1 + 305 + OFFSET_X, 1, 146.8, 221 , 0 );
setMoveKey( spep_1 + 306 + OFFSET_X, 1, 147.3, 222.3 , 0 );
setMoveKey( spep_1 + 307 + OFFSET_X, 1, 147.3, 222.3 , 0 );
setMoveKey( spep_1 + 308 + OFFSET_X, 1, 147.9, 223.7 , 0 );
setMoveKey( spep_1 + 309 + OFFSET_X, 1, 147.9, 223.7 , 0 );
setMoveKey( spep_1 + 310 + OFFSET_X, 1, 149, 221.7 , 0 );
setMoveKey( spep_1 + 311 + OFFSET_X, 1, 149, 221.7 , 0 );
setMoveKey( spep_1 + 312 + OFFSET_X, 1, 150.1, 219.7 , 0 );
setMoveKey( spep_1 + 313 + OFFSET_X, 1, 150.1, 219.7 , 0 );
setMoveKey( spep_1 + 314 + OFFSET_X, 1, 151.3, 217.7 , 0 );
setMoveKey( spep_1 + 315 + OFFSET_X, 1, 151.3, 217.7 , 0 );
setMoveKey( spep_1 + 316 + OFFSET_X, 1, 152.4, 215.8 , 0 );
setMoveKey( spep_1 + 317 + OFFSET_X, 1, 152.4, 215.8 , 0 );
setMoveKey( spep_1 + 318 + OFFSET_X, 1, 153.5, 213.8 , 0 );
setMoveKey( spep_1 + 319 + OFFSET_X, 1, 153.5, 213.8 , 0 );
setMoveKey( spep_1 + 320 + OFFSET_X, 1, 154.6, 211.8 , 0 );
setMoveKey( spep_1 + 321 + OFFSET_X, 1, 154.6, 211.8 , 0 );
setMoveKey( spep_1 + 322 + OFFSET_X, 1, 155.8, 209.9 , 0 );
setMoveKey( spep_1 + 323 + OFFSET_X, 1, 155.8, 209.9 , 0 );
setMoveKey( spep_1 + 324 + OFFSET_X, 1, 156.9, 207.9 , 0 );
setMoveKey( spep_1 + 328 + OFFSET_X, 1, 156.9, 207.9 , 0 );

setScaleKey( spep_1 + 206 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_1 + 223 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_1 + 224 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 285 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 286 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 289 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 290 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_1 + 328 + OFFSET_X, 1, 1.63, 1.63 );

setRotateKey( spep_1 + 206 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_1 + 207 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_1 + 208 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_1 + 209 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_1 + 210 + OFFSET_X, 1, -46.2 );
setRotateKey( spep_1 + 211 + OFFSET_X, 1, -46.2 );
setRotateKey( spep_1 + 212 + OFFSET_X, 1, -51.6 );
setRotateKey( spep_1 + 213 + OFFSET_X, 1, -51.6 );
setRotateKey( spep_1 + 214 + OFFSET_X, 1, -57 );
setRotateKey( spep_1 + 215 + OFFSET_X, 1, -57 );
setRotateKey( spep_1 + 216 + OFFSET_X, 1, -62.5 );
setRotateKey( spep_1 + 217 + OFFSET_X, 1, -62.5 );
setRotateKey( spep_1 + 218 + OFFSET_X, 1, -67.9 );
setRotateKey( spep_1 + 219 + OFFSET_X, 1, -67.9 );
setRotateKey( spep_1 + 220 + OFFSET_X, 1, -73.3 );
setRotateKey( spep_1 + 221 + OFFSET_X, 1, -73.3 );
setRotateKey( spep_1 + 222 + OFFSET_X, 1, -78.8 );
setRotateKey( spep_1 + 223 + OFFSET_X, 1, -78.8 );
setRotateKey( spep_1 + 224 + OFFSET_X, 1, -17.9 );
setRotateKey( spep_1 + 257 + OFFSET_X, 1, -17.9 );
setRotateKey( spep_1 + 258 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_1 + 259 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_1 + 260 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_1 + 261 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_1 + 262 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_1 + 263 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_1 + 264 + OFFSET_X, 1, -22 );
setRotateKey( spep_1 + 265 + OFFSET_X, 1, -22 );
setRotateKey( spep_1 + 266 + OFFSET_X, 1, -22.7 );
setRotateKey( spep_1 + 267 + OFFSET_X, 1, -22.7 );
setRotateKey( spep_1 + 268 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_1 + 269 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_1 + 270 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_1 + 271 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_1 + 272 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_1 + 273 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_1 + 274 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_1 + 275 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_1 + 276 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_1 + 277 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_1 + 278 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_1 + 279 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_1 + 280 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_1 + 281 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_1 + 282 + OFFSET_X, 1, -25.9 );
setRotateKey( spep_1 + 283 + OFFSET_X, 1, -25.9 );
setRotateKey( spep_1 + 284 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_1 + 285 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_1 + 286 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 287 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 288 + OFFSET_X, 1, -31.2 );
setRotateKey( spep_1 + 289 + OFFSET_X, 1, -31.2 );
setRotateKey( spep_1 + 290 + OFFSET_X, 1, -50 );
setRotateKey( spep_1 + 291 + OFFSET_X, 1, -50 );
setRotateKey( spep_1 + 292 + OFFSET_X, 1, -48.4 );
setRotateKey( spep_1 + 293 + OFFSET_X, 1, -48.4 );
setRotateKey( spep_1 + 294 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_1 + 295 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_1 + 296 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_1 + 297 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_1 + 298 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_1 + 299 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_1 + 300 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_1 + 301 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_1 + 302 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 303 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 304 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_1 + 305 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_1 + 306 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_1 + 307 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_1 + 308 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_1 + 309 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_1 + 310 + OFFSET_X, 1, -34.4 );
setRotateKey( spep_1 + 311 + OFFSET_X, 1, -34.4 );
setRotateKey( spep_1 + 312 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_1 + 313 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_1 + 314 + OFFSET_X, 1, -30.9 );
setRotateKey( spep_1 + 315 + OFFSET_X, 1, -30.9 );
setRotateKey( spep_1 + 316 + OFFSET_X, 1, -29.1 );
setRotateKey( spep_1 + 317 + OFFSET_X, 1, -29.1 );
setRotateKey( spep_1 + 318 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_1 + 319 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_1 + 320 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_1 + 321 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_1 + 322 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_1 + 323 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_1 + 324 + OFFSET_X, 1, -22 );
setRotateKey( spep_1 + 328 + OFFSET_X, 1, -22 );

-- 敵の動き4
setDisp( spep_1 + 414 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 466 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 438 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 414 + OFFSET_X, 1, 42.2, -128.6 , 0 );
setMoveKey( spep_1 + 437 + OFFSET_X, 1, 42.2, -128.6 , 0 );
setMoveKey( spep_1 + 438 + OFFSET_X, 1, 259.9, -51.9 , 0 );
setMoveKey( spep_1 + 439 + OFFSET_X, 1, 259.9, -51.9 , 0 );
setMoveKey( spep_1 + 440 + OFFSET_X, 1, 193.9, -21.9 , 0 );
setMoveKey( spep_1 + 441 + OFFSET_X, 1, 193.9, -21.9 , 0 );
setMoveKey( spep_1 + 442 + OFFSET_X, 1, 242.9, -48.9 , 0 );
setMoveKey( spep_1 + 443 + OFFSET_X, 1, 242.9, -48.9 , 0 );
setMoveKey( spep_1 + 444 + OFFSET_X, 1, 205.9, -23.9 , 0 );
setMoveKey( spep_1 + 445 + OFFSET_X, 1, 205.9, -23.9 , 0 );
setMoveKey( spep_1 + 446 + OFFSET_X, 1, 255.9, -41.9 , 0 );
setMoveKey( spep_1 + 447 + OFFSET_X, 1, 255.9, -41.9 , 0 );
setMoveKey( spep_1 + 448 + OFFSET_X, 1, 213.9, -27.9 , 0 );
setMoveKey( spep_1 + 449 + OFFSET_X, 1, 213.9, -27.9 , 0 );
setMoveKey( spep_1 + 450 + OFFSET_X, 1, 241.9, -41.9 , 0 );
setMoveKey( spep_1 + 451 + OFFSET_X, 1, 241.9, -41.9 , 0 );
setMoveKey( spep_1 + 452 + OFFSET_X, 1, 227.9, -26.9 , 0 );
setMoveKey( spep_1 + 453 + OFFSET_X, 1, 227.9, -26.9 , 0 );
setMoveKey( spep_1 + 454 + OFFSET_X, 1, 237.9, -31.9 , 0 );
setMoveKey( spep_1 + 455 + OFFSET_X, 1, 237.9, -31.9 , 0 );
setMoveKey( spep_1 + 456 + OFFSET_X, 1, 229.9, -30.9 , 0 );
setMoveKey( spep_1 + 457 + OFFSET_X, 1, 229.9, -30.9 , 0 );
setMoveKey( spep_1 + 458 + OFFSET_X, 1, 232.9, -29.9 , 0 );
setMoveKey( spep_1 + 461 + OFFSET_X, 1, 232.9, -29.9 , 0 );
setMoveKey( spep_1 + 462 + OFFSET_X, 1, 532.9, -180 , 0 );
setMoveKey( spep_1 + 463 + OFFSET_X, 1, 532.9, -180 , 0 );
setMoveKey( spep_1 + 464 + OFFSET_X, 1, 832.9, -330.1 , 0 );
setMoveKey( spep_1 + 466 + OFFSET_X, 1, 832.9, -330.1 , 0 );

setScaleKey( spep_1 + 414 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_1 + 437 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_1 + 438 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 461 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 462 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 463 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 464 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_1 + 466 + OFFSET_X, 1, 2.79, 2.79 );

setRotateKey( spep_1 + 414 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_1 + 437 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_1 + 438 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_1 + 461 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_1 + 462 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_1 + 463 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_1 + 464 + OFFSET_X, 1, -5 );
setRotateKey( spep_1 + 466 + OFFSET_X, 1, -5 );

-- 敵の動き5
setDisp( spep_1 + 482 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 550 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 482 + OFFSET_X, 1, 5 );
changeAnime( spep_1 + 492 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 482 + OFFSET_X, 1, 149, -69.9 , 0 );
setMoveKey( spep_1 + 483 + OFFSET_X, 1, 149, -69.9 , 0 );
setMoveKey( spep_1 + 484 + OFFSET_X, 1, 141, -57 , 0 );
setMoveKey( spep_1 + 485 + OFFSET_X, 1, 141, -57 , 0 );
setMoveKey( spep_1 + 486 + OFFSET_X, 1, 78, 14.8 , 0 );
setMoveKey( spep_1 + 487 + OFFSET_X, 1, 78, 14.8 , 0 );
setMoveKey( spep_1 + 488 + OFFSET_X, 1, 40.2, 57.9 , 0 );
setMoveKey( spep_1 + 489 + OFFSET_X, 1, 40.2, 57.9 , 0 );
setMoveKey( spep_1 + 490 + OFFSET_X, 1, 27.6, 72.3 , 0 );
setMoveKey( spep_1 + 491 + OFFSET_X, 1, 27.6, 72.3 , 0 );
setMoveKey( spep_1 + 492 + OFFSET_X, 1, 92.2, 188.4 , 0 );
setMoveKey( spep_1 + 493 + OFFSET_X, 1, 92.2, 188.4 , 0 );
setMoveKey( spep_1 + 494 + OFFSET_X, 1, -10.5, 9.8 , 0 );
setMoveKey( spep_1 + 495 + OFFSET_X, 1, -10.5, 9.8 , 0 );
setMoveKey( spep_1 + 496 + OFFSET_X, 1, -17.8, 134.5 , 0 );
setMoveKey( spep_1 + 497 + OFFSET_X, 1, -17.8, 134.5 , 0 );
setMoveKey( spep_1 + 498 + OFFSET_X, 1, 81.5, 29.9 , 0 );
setMoveKey( spep_1 + 499 + OFFSET_X, 1, 81.5, 29.9 , 0 );
setMoveKey( spep_1 + 500 + OFFSET_X, 1, 71.8, 121.4 , 0 );
setMoveKey( spep_1 + 501 + OFFSET_X, 1, 71.8, 121.4 , 0 );
setMoveKey( spep_1 + 502 + OFFSET_X, 1, -3.9, 76.4 , 0 );
setMoveKey( spep_1 + 503 + OFFSET_X, 1, -3.9, 76.4 , 0 );
setMoveKey( spep_1 + 504 + OFFSET_X, 1, 63.5, 61 , 0 );
setMoveKey( spep_1 + 505 + OFFSET_X, 1, 63.5, 61 , 0 );
setMoveKey( spep_1 + 506 + OFFSET_X, 1, 51.7, 95.8 , 0 );
setMoveKey( spep_1 + 507 + OFFSET_X, 1, 51.7, 95.8 , 0 );
setMoveKey( spep_1 + 508 + OFFSET_X, 1, 21.6, 104.8 , 0 );
setMoveKey( spep_1 + 509 + OFFSET_X, 1, 21.6, 104.8 , 0 );
setMoveKey( spep_1 + 510 + OFFSET_X, 1, 37.6, 51.9 , 0 );
setMoveKey( spep_1 + 511 + OFFSET_X, 1, 37.6, 51.9 , 0 );
setMoveKey( spep_1 + 512 + OFFSET_X, 1, 51.2, 88.8 , 0 );
setMoveKey( spep_1 + 513 + OFFSET_X, 1, 51.2, 88.8 , 0 );
setMoveKey( spep_1 + 514 + OFFSET_X, 1, 21.6, 86.4 , 0 );
setMoveKey( spep_1 + 515 + OFFSET_X, 1, 21.6, 86.4 , 0 );
setMoveKey( spep_1 + 516 + OFFSET_X, 1, 34.4, 77.5 , 0 );
setMoveKey( spep_1 + 517 + OFFSET_X, 1, 34.4, 77.5 , 0 );
setMoveKey( spep_1 + 518 + OFFSET_X, 1, 38.4, 83.2 , 0 );
setMoveKey( spep_1 + 550 + OFFSET_X, 1, 38.4, 83.2 , 0 );

setScaleKey( spep_1 + 482 + OFFSET_X, 1, 12.69, 12.69 );
setScaleKey( spep_1 + 483 + OFFSET_X, 1, 12.69, 12.69 );
setScaleKey( spep_1 + 484 + OFFSET_X, 1, 8.9, 8.9 );
setScaleKey( spep_1 + 485 + OFFSET_X, 1, 8.9, 8.9 );
setScaleKey( spep_1 + 486 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_1 + 487 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_1 + 488 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_1 + 489 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_1 + 490 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 491 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_1 + 492 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 550 + OFFSET_X, 1, 1.14, 1.14 );

setRotateKey( spep_1 + 482 + OFFSET_X, 1, 20 );
setRotateKey( spep_1 + 491 + OFFSET_X, 1, 20 );
setRotateKey( spep_1 + 492 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_1 + 550 + OFFSET_X, 1, -5.1 );

-- ** 音 ** --
--悟空飛び込みパンチ
SE034 = playSeVer2( spep_1 + 0, 1189, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_1 + 2, 1009, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_1 + 2, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE036, 68 );
SE037 = playSeVer2( spep_1 + 4, 1110, "", 0, 0, 0, -1);

--悟空回転していく
SE038 = playSeVer2( spep_1 + 30, 1117, "",spep_1 + 94, 0, 44, -1);
SE039 = playSeVer2( spep_1 + 30, 1151, "", 0, 0, 0, -1);

--クリリン飛び上がる
SE040 = playSeVer2( spep_1 + 46, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 46, SE040, 63 );
SE041 = playSeVer2( spep_1 + 46, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 46, SE041, 75 );

--クリリンキック
SE042 = playSeVer2( spep_1 + 108, 1010, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_1 + 108, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 108, SE043, 65 );
SE044 = playSeVer2( spep_1 + 110, 1110, "", 0, 0, 0, -1);

--悟空背後から膝蹴り
SE045 = playSeVer2( spep_1 + 150, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 150, SE045, 74 );
SE046 = playSeVer2( spep_1 + 150, 1153, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_1 + 152, 1110, "", 0, 0, 0, -1);

--クリリンフレームイン
SE048 = playSeVer2( spep_1 + 194, 1048, "", 0, 0, 0, -1);

--悟空回転して着地
SE049 = playSeVer2( spep_1 + 230, 1119, "", 0, 8, 0, -1);
setStartTimeMs( SE049,  600 );

--クリリン連続パンチ
SE050 = playSeVer2( spep_1 + 216, 1110, "",spep_1 + 586, 0, 14, -1);

--悟空回転して着地
SE051 = playSeVer2( spep_1 + 220, 1117, "",spep_1 + 618, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 220, SE051, 73 );

--クリリン連続パンチ
SE052 = playSeVer2( spep_1 + 222, 1110, "",spep_1 + 592, 0, 14, -1);
SE053 = playSeVer2( spep_1 + 226, 1110, "",spep_1 + 596, 0, 12, -1);
SE054 = playSeVer2( spep_1 + 234, 1110, "",spep_1 + 604, 0, 12, -1);

--悟空回転して着地
SE055 = playSeVer2( spep_1 + 238, 1151, "", 0, 0, 0, -1);

--クリリン連続パンチ
SE056 = playSeVer2( spep_1 + 242, 1110, "",spep_1 + 612, 0, 14, -1);

--悟空回転して着地
SE057 = playSeVer2( spep_1 + 270, 1108, "", 0, 0, 0, -1);

--クリリンサマーソルト
SE058 = playSeVer2( spep_1 + 276, 1010, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_1 + 276, 1169, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 276, SE059, 81 );
SE060 = playSeVer2( spep_1 + 278, 1110, "", 0, 0, 0, -1);

--如意棒回転
SE061 = playSeVer2( spep_1 + 318, 1388, "",spep_1 + 424, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 318, SE061, 126 );
setPitch( spep_1 + 318, SE061, -600 );
setTimeStretch( SE061, 0.6, 30, 4 );
SE062 = playSeVer2( spep_1 + 318, 1151, "", 0, 0, 0, 0.5);
SE063 = playSeVer2( spep_1 + 324, 1151, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_1 + 324, SE063 );
SE064 = playSeVer2( spep_1 + 332, 1151, "", 0, 0, 0, 0.5);
SE065 = playSeVer2( spep_1 + 338, 1151, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_1 + 338, SE065 );
SE066 = playSeVer2( spep_1 + 346, 1151, "", 0, 0, 0, 0.5);
SE067 = playSeVer2( spep_1 + 354, 1151, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_1 + 354, SE067 );
SE068 = playSeVer2( spep_1 + 360, 1151, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_1 + 360, SE068 );
SE069 = playSeVer2( spep_1 + 368, 1151, "", 0, 0, 0, 0.5);
SE070 = playSeVer2( spep_1 + 376, 1151, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_1 + 376, SE070 );
SE071 = playSeVer2( spep_1 + 384, 1151, "", 0, 0, 0, 0.5);
SE072 = playSeVer2( spep_1 + 390, 1151, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_1 + 390, SE072 );
SE073 = playSeVer2( spep_1 + 398, 1151, "", 0, 0, 0, 0.5);

--如意棒で叩く
SE074 = playSeVer2( spep_1 + 408, 1004, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_1 + 430, 1120, "", 0, 0, 0, -1);
SE076 = playSeVer2( spep_1 + 430, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 430, SE076, 80 );

--敵飛んでいく
SE077 = playSeVer2( spep_1 + 456, 1121, "",spep_1 + 514, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 456, SE077, 77 );

--水しぶき
SE078 = playSeVer2( spep_1 + 456, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 456, SE078, 275 );
SE079 = playSeVer2( spep_1 + 472, 1166, "",spep_1 + 570, 0, 64, -1);

--壁激突
SE080 = playSeVer2( spep_1 + 490, 1159, "",spep_1 + 574, 0, 40, -1);

--画面遷移
SE081 = playSeVer2( spep_1 + 532, 8, "", 0, 0, 0, -1);

--構える
SE082 = playSeVer2( spep_1 + 548, 1233, "", 0, 0, 0, -1);
SE083 = playSeVer2( spep_1 + 560, 1006, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 560); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 666F-4

end
