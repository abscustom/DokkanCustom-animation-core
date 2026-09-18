--1028730:UR_超サイヤ人孫悟空_必殺技：龍閃撃
--sp_effect_a7_00062
--sp2548

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162441;	 --セリフカットイン	ef_001
SP_02 = 162443;	 --攻撃ラッシュ～殴り　前面	ef_002
SP_02b = 162445;	 --攻撃ラッシュ～殴り　背面	ef_003
SP_03 = 162446;	 --蹴り～木の前に瞬間移動　前面	ef_004
SP_03b = 162448;	 --蹴り～木の前に瞬間移動　背面	ef_005
SP_04 = 162450;	 --フィニッシュ　前面	ef_006
SP_04b = 162452;	 --フィニッシュ　背面	ef_007

--エフェクト(てき)
SP_01r = 162442;	 --セリフカットイン　敵側	ef_001_e
SP_02r = 162444;	 --攻撃ラッシュ～殴り　前面　敵側	ef_002_e
SP_03r = 162447;	 --蹴り～木の前に瞬間移動　前面　敵側	ef_004_e
SP_03br = 162449;	 --蹴り～木の前に瞬間移動　背面　敵側	ef_005_e
SP_04r = 162451;	 --フィニッシュ　前面　敵側	ef_006_e


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
-- changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
-- setDisp( 0, 1, 0);

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

-- setMoveKey(   0,   1,    0, -5000,   0 );
-- setMoveKey(   1,   1,    0, -5000,   0 );
-- setMoveKey(   2,   1,    0, -5000,   0 );
-- setMoveKey(   3,   1,    0, -5000,   0 );
-- setMoveKey(   4,   1,    0, -5000,   0 );
-- setMoveKey(   5,   1,    0, -5000,   0 );
-- setMoveKey(   6,   1,    0, -5000,   0 );
-- setScaleKey(  0,   1,  1.6, 1.6 );
-- setScaleKey(  1,   1,  1.6, 1.6 );
-- setScaleKey(  2,   1,  1.6, 1.6 );
-- setScaleKey(  3,   1,  1.6, 1.6 );
-- setScaleKey(  4,   1,  1.6, 1.6 );
-- setScaleKey(  5,   1,  1.6, 1.6 );
-- setScaleKey(  6,   1,  1.6, 1.6 );
-- setRotateKey( 0,   1,  0 );
-- setRotateKey( 1,   1,  0 );
-- setRotateKey( 2,   1,  0 );
-- setRotateKey( 3,   1,  0 );
-- setRotateKey( 4,   1,  0 );
-- setRotateKey( 5,   1,  0 );
-- setRotateKey( 6,   1,  0 );

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- セリフカットイン
-------------------------------------------------


MAX_FRAME_0 = 138;


-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -2, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -1, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 0);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 16;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
-- ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
-- setEffShake( spep_x + 16, ctgogo, 68, 10 );
-- setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
-- setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
-- setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
-- setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
-- setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
-- setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
-- setEffRotateKey( spep_x + 16, ctgogo, 0 );
-- setEffRotateKey( spep_x + 84, ctgogo, 0 );
-- setEffAlphaKey( spep_x + 16, ctgogo, 255 );
-- setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 10, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 43 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 196, -194.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 196, -194.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 205.7, -194.1 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 205.7, -194.1 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 232, -194.1 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 232, -194.1 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 283.1, -194.1 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 283.1, -194.1 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 367.3, -194.1 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 367.3, -194.1 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 493.1, -194.1 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 493.1, -194.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 655, -194.1 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 655, -194.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 780.8, -194.1 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 780.8, -194.1 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 865, -194.1 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 865, -194.1 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 916.1, -194.1 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 916.1, -194.1 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 942.4, -194.1 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 942.4, -194.1 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 952.1, -194.1 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 952.1, -194.1 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 953.5, -194.1 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 953.5, -194.1 , 0 );

setScaleKey( spep_0 + 0, 1, 3, 3 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 5.28, 5.28 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 5.28, 5.28 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 5.91, 5.91 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 5.91, 5.91 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 5.95, 5.95 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 43 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 26, 1232, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 128; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
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
--瞬間移動
SE003 = playSeVer2( spep_0 + 124, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --138


-------------------------------------------------
-- 攻撃ラッシュ～殴り
-------------------------------------------------

MAX_FRAME_1 = 144;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 前面	ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -2, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -1, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 背面	ef_003
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -2, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -1, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 )

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 + 18 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 20 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 26 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 32 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 38 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 44 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 66 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 68 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 74 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 80 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 86 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 92 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 98 + OFFSET_X, 1, 108 ); 
changeAnime( spep_1 + 110 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 0, 1, 119.5, -105.9 , 0 );
setMoveKey( spep_1 + 19 + OFFSET_X, 1, 119.5, -105.9 , 0 );
setMoveKey( spep_1 + 20 + OFFSET_X, 1, 124.6, -114.4 , 0 );
setMoveKey( spep_1 + 21 + OFFSET_X, 1, 124.6, -114.4 , 0 );
setMoveKey( spep_1 + 22 + OFFSET_X, 1, 111, -104.2 , 0 );
setMoveKey( spep_1 + 23 + OFFSET_X, 1, 111, -104.2 , 0 );
setMoveKey( spep_1 + 24 + OFFSET_X, 1, 124.6, -109.3 , 0 );
setMoveKey( spep_1 + 25 + OFFSET_X, 1, 124.6, -109.3 , 0 );
setMoveKey( spep_1 + 26 + OFFSET_X, 1, 139.9, -140.2 , 0 );
setMoveKey( spep_1 + 29 + OFFSET_X, 1, 139.9, -140.2 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_X, 1, 136.5, -133.4 , 0 );
setMoveKey( spep_1 + 31 + OFFSET_X, 1, 136.5, -133.4 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_X, 1, 124.6, -114.4 , 0 );
setMoveKey( spep_1 + 33 + OFFSET_X, 1, 124.6, -114.4 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_X, 1, 111.3, -104.2 , 0 );
setMoveKey( spep_1 + 35 + OFFSET_X, 1, 111.3, -104.2 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_X, 1, 125.2, -109.3 , 0 );
setMoveKey( spep_1 + 37 + OFFSET_X, 1, 125.2, -109.3 , 0 );
setMoveKey( spep_1 + 38 + OFFSET_X, 1, 109.6, -125.1 , 0 );
setMoveKey( spep_1 + 39 + OFFSET_X, 1, 109.6, -125.1 , 0 );
setMoveKey( spep_1 + 40 + OFFSET_X, 1, 109.9, -125 , 0 );
setMoveKey( spep_1 + 41 + OFFSET_X, 1, 109.9, -125 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, 106.8, -118.2 , 0 );
setMoveKey( spep_1 + 43 + OFFSET_X, 1, 106.8, -118.2 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, 126.5, -114.4 , 0 );
setMoveKey( spep_1 + 45 + OFFSET_X, 1, 126.5, -114.4 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, 113.2, -104.1 , 0 );
setMoveKey( spep_1 + 47 + OFFSET_X, 1, 113.2, -104.1 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, 127.2, -109.2 , 0 );
setMoveKey( spep_1 + 49 + OFFSET_X, 1, 127.2, -109.2 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_X, 1, 122.4, -105.8 , 0 );
setMoveKey( spep_1 + 51 + OFFSET_X, 1, 122.4, -105.8 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, 122.7, -105.8 , 0 );
setMoveKey( spep_1 + 53 + OFFSET_X, 1, 122.7, -105.8 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_X, 1, 123, -105.8 , 0 );
setMoveKey( spep_1 + 55 + OFFSET_X, 1, 123, -105.8 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_X, 1, 123.3, -105.8 , 0 );
setMoveKey( spep_1 + 57 + OFFSET_X, 1, 123.3, -105.8 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, 123.7, -105.8 , 0 );
setMoveKey( spep_1 + 59 + OFFSET_X, 1, 123.7, -105.8 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, 124, -105.8 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_X, 1, 124, -105.8 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, 124.3, -105.8 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, 124.3, -105.8 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, 121.6, -99 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, 121.6, -99 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, 130.4, -114.3 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, 130.4, -114.3 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, 117.1, -104 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, 117.1, -104 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, 131, -109.1 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, 131, -109.1 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, 146.7, -140 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, 146.7, -140 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 147, -140 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, 147, -140 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 144, -133.2 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, 144, -133.2 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, 132.4, -114.3 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, 132.4, -114.3 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, 119.1, -104 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, 119.1, -104 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 133, -109.1 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 133, -109.1 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 117.3, -124.9 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 117.3, -124.9 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 117.7, -124.9 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 117.7, -124.9 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 114.6, -118.1 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 114.6, -118.1 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 134.3, -114.2 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 134.3, -114.2 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 121, -104 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 121, -104 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 134.9, -109.1 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 134.9, -109.1 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, -182.7, -19.6 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, -182.7, -19.6 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, -148.1, -20.3 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, -148.1, -20.3 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, -113.5, -21.1 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, -113.5, -21.1 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, -78.9, -21.9 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, -78.9, -21.9 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, -44.3, -22.6 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, -44.3, -22.6 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, -9.7, -23.4 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, -9.7, -23.4 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 46.9, -138.4 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 46.9, -138.4 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 61.7, -166.8 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 61.7, -166.8 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 44.4, -156.4 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 44.4, -156.4 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 65.1, -159.9 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 65.1, -159.9 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 47.9, -142.6 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 47.9, -142.6 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 61.7, -166.8 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 61.7, -166.8 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 44.4, -156.4 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 44.4, -156.4 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 65.1, -159.9 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 65.1, -159.9 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 47.9, -142.6 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 47.9, -142.6 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 61.7, -166.8 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 61.7, -166.8 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 44.4, -156.4 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 44.4, -156.4 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 65.1, -159.9 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 65.1, -159.9 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 54.8, -156.4 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 54.8, -156.4 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 47.9, -142.6 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 47.9, -142.6 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 44.4, -156.4 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 44.4, -156.4 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 65.1, -159.9 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 65.1, -159.9 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 54.8, -156.4 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 54.8, -156.4 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 47.9, -142.6 , 0 );

setScaleKey( spep_1 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 19 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 20 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 25 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 26 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 31 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 32 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 37 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 38 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 43 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 44 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 73 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 74 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 79 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 80 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 85 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 86 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 91 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 11.6, 11.6 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 11.6, 11.6 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 10.75, 10.75 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 10.75, 10.75 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 9.89, 9.89 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 9.89, 9.89 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 9.04, 9.04 );
setScaleKey( spep_1 + 105 + OFFSET_X, 1, 9.04, 9.04 );
setScaleKey( spep_1 + 106 + OFFSET_X, 1, 8.19, 8.19 );
setScaleKey( spep_1 + 107 + OFFSET_X, 1, 8.19, 8.19 );
setScaleKey( spep_1 + 108 + OFFSET_X, 1, 7.33, 7.33 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 7.33, 7.33 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 8.09, 8.09 );
setScaleKey( spep_1 + 144 + OFFSET_X, 1, 8.09, 8.09 );

setRotateKey( spep_1 + 0, 1, 20 );
setRotateKey( spep_1 + 19 + OFFSET_X, 1, 20 );
setRotateKey( spep_1 + 20 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_1 + 25 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_1 + 26 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_1 + 31 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_1 + 32 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_1 + 37 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_1 + 38 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_1 + 43 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_1 + 44 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_1 + 65 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_1 + 66 + OFFSET_X, 1, 20 );
setRotateKey( spep_1 + 67 + OFFSET_X, 1, 20 );
setRotateKey( spep_1 + 68 + OFFSET_X, 1, -48.3 );
setRotateKey( spep_1 + 73 + OFFSET_X, 1, -48.3 );
setRotateKey( spep_1 + 74 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_1 + 79 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_1 + 80 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_1 + 85 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_1 + 86 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 91 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 92 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_1 + 97 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_1 + 98 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 109 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 110 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_1 + 111 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_1 + 112 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 113 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 114 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 115 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 116 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 117 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 118 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 119 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 120 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 121 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 122 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 123 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 124 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 125 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 126 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 127 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 128 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 129 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 130 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 131 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 144 + OFFSET_X, 1, -29 );

-- ** 音 ** --
--ラッシュ
SE004 = playSeVer2( spep_1 + 8, 1009, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 8, 1110, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 16, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 16, SE006, 83 );
SE007 = playSeVer2( spep_1 + 26, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 26, SE007, 80 );
SE008 = playSeVer2( spep_1 + 26, 1010, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 36, 1110, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 52, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 52, SE010, 89 );
SE011 = playSeVer2( spep_1 + 56, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 64, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 64, SE012, 87 );
SE013 = playSeVer2( spep_1 + 74, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 84, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 84, 1010, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 96, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 96, 1153, "", 0, 0, 0, -1);

--振りかぶる
SE018 = playSeVer2( spep_1 + 134, 1003, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + MAX_FRAME_1;  --144


-------------------------------------------------
-- 蹴り～木の前に瞬間移動
-------------------------------------------------

MAX_FRAME_2 = 136;

-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- 前面	ef_004
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, base_2f, 255);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- 背面	ef_005
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, base_2b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 34 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2 + 12 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 0, 1, 58.1, -42.4 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 58.1, -40.6 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 58.1, -40.6 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 58.1, -38.7 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 58.1, -38.7 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 58.1, -36.9 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 58.1, -36.9 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 58.1, -28.1 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 58.1, -28.1 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 58.1, -22.2 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 58.1, -22.2 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 81.6, 8.1 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 81.6, 8.1 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 254.2, -281.9 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 254.2, -281.9 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 359.1, -453.8 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 359.1, -453.8 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 436.8, -581.2 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 436.8, -581.2 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 497.3, -680.4 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 497.3, -680.4 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 545.4, -759.3 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 545.4, -759.3 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 583.8, -822.3 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 583.8, -822.3 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 614.4, -872.4 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 614.4, -872.4 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 638.4, -911.7 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 638.4, -911.7 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 656.7, -941.8 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 656.7, -941.8 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 670.2, -963.8 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 670.2, -963.8 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 679.2, -978.7 , 0 );

setScaleKey( spep_2 + 0, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 1.39, 1.38 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 1.39, 1.38 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 2, 1.99 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 2, 1.99 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 2.37, 2.36 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 2.37, 2.36 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 2.66, 2.65 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 2.66, 2.65 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 2.88, 2.87 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 2.88, 2.87 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 3.05, 3.04 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 3.05, 3.04 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 3.19, 3.18 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 3.19, 3.18 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 3.31, 3.3 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 3.31, 3.3 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 3.39, 3.38 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 3.39, 3.38 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 3.46, 3.45 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 3.46, 3.45 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 3.51, 3.5 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 3.51, 3.5 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 3.54, 3.53 );

setRotateKey( spep_2 + 0, 1, -31.3 );
setRotateKey( spep_2 + 11 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, 37 );
setRotateKey( spep_2 + 34 + OFFSET_X, 1, 37 );

-- 敵の動き2
setDisp( spep_2 + 50 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 136, 1, 0 );

changeAnime( spep_2 + 50 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 86 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 50 + OFFSET_X, 1, -241.6, -43.1 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -241.6, -43.1 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -241.5, -43.1 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -241.5, -43.1 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -240.7, -43.2 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -240.7, -43.2 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -238.6, -43.7 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -238.6, -43.7 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -234.5, -44.6 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -234.5, -44.6 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -227.7, -46.1 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -227.7, -46.1 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -217.5, -48.3 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -217.5, -48.3 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -203.3, -51.4 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -203.3, -51.4 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -184.5, -55.5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -184.5, -55.5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -160.2, -60.8 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -160.2, -60.8 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -129.9, -67.5 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -129.9, -67.5 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -92.8, -75.5 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -92.8, -75.5 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -48.3, -85.2 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -48.3, -85.2 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 4.3, -96.7 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 4.3, -96.7 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 65.9, -110 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 65.9, -110 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -87.2, 79.1 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -87.2, 79.1 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -32.6, 62.7 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -32.6, 62.7 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 34.5, 42.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 34.5, 42.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 31.2, 38.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 31.2, 38.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 42.6, 15 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 42.6, 15 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 48.2, 37 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 48.2, 37 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 30.5, 14.9 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 30.5, 14.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 38, 31.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 38, 31.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 35.8, 26.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 35.8, 26.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 38.3, 23.8 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 38.3, 23.8 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 37, 24.8 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 37, 24.8 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 39, 23.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 39, 23.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 37, 24.8 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 37, 24.8 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 39, 23.8 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 39, 23.8 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 37, 24.8 , 0 );
setMoveKey( spep_2 + 136, 1, 37, 24.8 , 0 );

setScaleKey( spep_2 + 50 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 136, 1, 1, 1 );

setRotateKey( spep_2 + 50 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -54.4 );
setRotateKey( spep_2 + 136, 1, -54.4 );

-- ** 音 ** --
--蹴り
SE019 = playSeVer2( spep_2 + 0, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 2, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE021 = playSeVer2( spep_2 + 30, 1121, "",spep_2 + 98, 0, 24, -1);
SE022 = playSeVer2( spep_2 + 30, 1183, "",spep_2 + 96, 0, 22, -1);

--木にヒット
SE023 = playSeVer2( spep_2 + 70, 1023, "",spep_2 + 152, 0, 14, -1);
SE024 = playSeVer2( spep_2 + 72, 1011, "",spep_2 + 152, 0, 14, -1);

--瞬間移動
SE025 = playSeVer2( spep_2 + 98, 1109, "",spep_2 + 152, 0, 14, -1);

-- ** 次の準備 ** --
spep_c = spep_2 + MAX_FRAME_2;  --136


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_3 = showCardCutin(spep_c, 0);

-- ** 音 ** --
--気を溜める
SE028 = playSeVer2( spep_c + 90, 1265, "",spep_3 + 120, 24, 10, 0.6);
setSeVolumeByWorkId( spep_c + 90, SE028, 72 );
setStartTimeMs( SE028,  233 );
SE029 = playSeVer2( spep_c + 84, 1305, "",spep_3 + 120, 0, 10, -1);


-------------------------------------------------
-- フィニッシュ
-------------------------------------------------

MAX_FRAME_3 = 368;

-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0); -- 前面	ef_006
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, base_3f, 255);

base_3b = entryEffect( spep_3 + 0, SP_04b, 0x80, -1, 0, 0, 0); -- 背面	ef_007
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, base_3b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_3 + 68 + OFFSET_X, 1, 1 );
setDisp( spep_3 + 110 + OFFSET_X, 1, 0 );

changeAnime( spep_3 + 68 + OFFSET_X, 1, 106 );

setMoveKey( spep_3 + 68 + OFFSET_X, 1, 151.8, -102 , 0 );
setMoveKey( spep_3 + 110 + OFFSET_X, 1, 151.8, -102 , 0 );

setScaleKey( spep_3 + 68 + OFFSET_X, 1, 9.98, 9.98 );
setScaleKey( spep_3 + 110 + OFFSET_X, 1, 9.98, 9.98 );

setRotateKey( spep_3 + 68 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_3 + 110 + OFFSET_X, 1, -50.4 );

-- 敵の動き2
setDisp( spep_3 + 220 + OFFSET_X, 1, 1);

changeAnime( spep_3 + 220 + OFFSET_X, 1, 106);

setMoveKey( spep_3 + 220 + OFFSET_X, 1, 135.4, -23.4 , 0 );
setMoveKey( spep_3 + 221 + OFFSET_X, 1, 135.4, -23.4 , 0 );
setMoveKey( spep_3 + 222 + OFFSET_X, 1, 134.9, -23.3 , 0 );
setMoveKey( spep_3 + 223 + OFFSET_X, 1, 134.9, -23.3 , 0 );
setMoveKey( spep_3 + 224 + OFFSET_X, 1, 133.4, -23.1 , 0 );
setMoveKey( spep_3 + 225 + OFFSET_X, 1, 133.4, -23.1 , 0 );
setMoveKey( spep_3 + 226 + OFFSET_X, 1, 131.1, -22.7 , 0 );
setMoveKey( spep_3 + 227 + OFFSET_X, 1, 131.1, -22.7 , 0 );
setMoveKey( spep_3 + 228 + OFFSET_X, 1, 128.4, -22.2 , 0 );
setMoveKey( spep_3 + 229 + OFFSET_X, 1, 128.4, -22.2 , 0 );
setMoveKey( spep_3 + 230 + OFFSET_X, 1, 125.3, -21.7 , 0 );
setMoveKey( spep_3 + 231 + OFFSET_X, 1, 125.3, -21.7 , 0 );
setMoveKey( spep_3 + 232 + OFFSET_X, 1, 122.1, -21.1 , 0 );
setMoveKey( spep_3 + 233 + OFFSET_X, 1, 122.1, -21.1 , 0 );
setMoveKey( spep_3 + 234 + OFFSET_X, 1, 118.8, -20.6 , 0 );
setMoveKey( spep_3 + 235 + OFFSET_X, 1, 118.8, -20.6 , 0 );
setMoveKey( spep_3 + 236 + OFFSET_X, 1, 115.6, -20 , 0 );
setMoveKey( spep_3 + 237 + OFFSET_X, 1, 115.6, -20 , 0 );
setMoveKey( spep_3 + 238 + OFFSET_X, 1, 112.6, -19.5 , 0 );
setMoveKey( spep_3 + 239 + OFFSET_X, 1, 112.6, -19.5 , 0 );
setMoveKey( spep_3 + 240 + OFFSET_X, 1, 109.9, -19 , 0 );
setMoveKey( spep_3 + 241 + OFFSET_X, 1, 109.9, -19 , 0 );
setMoveKey( spep_3 + 242 + OFFSET_X, 1, 107.6, -18.6 , 0 );
setMoveKey( spep_3 + 243 + OFFSET_X, 1, 107.6, -18.6 , 0 );
setMoveKey( spep_3 + 244 + OFFSET_X, 1, 105.8, -18.3 , 0 );
setMoveKey( spep_3 + 245 + OFFSET_X, 1, 105.8, -18.3 , 0 );
setMoveKey( spep_3 + 246 + OFFSET_X, 1, 104.6, -18.1 , 0 );
setMoveKey( spep_3 + 247 + OFFSET_X, 1, 104.6, -18.1 , 0 );
setMoveKey( spep_3 + 248 + OFFSET_X, 1, 104.2, -18 , 0 );
setMoveKey( spep_3 + 368, 1, 104.2, -18 , 0 );

setScaleKey( spep_3 + 220 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 221 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 222 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 223 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 224 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 225 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 226 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 227 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 228 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 229 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 230 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 231 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 232 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 233 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 234 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 235 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 236 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 237 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 238 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 239 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 240 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 241 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 242 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 243 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 244 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 245 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 246 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 368, 1, 1.2, 1.2 );

setRotateKey( spep_3 + 220 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_3 + 368 + 0, 1, -46.9 );

-- ** 音 ** --
--気を溜める
SE027 = playSeVer2( spep_3 + 20, 1287, "",spep_3 + 100, 12, 24, -1);
setSeVolumeByWorkId( spep_3 + 20 , SE027, 120 );
setStartTimeMs( SE027,  1000 );
SE030 = playSeVer2( spep_3 + 2, 1287, "",spep_3 + 80, 0, 10, -1);				
setSeVolumeByWorkId( spep_3 + 2 , SE030, 120 );

--手つき出す
SE031 = playSeVer2( spep_3 + 42, 1320, "",spep_3 + 120, 8, 10, 0.6);
setSeVolumeByWorkId( spep_3 + 42, SE031, 63 );
setStartTimeMs( SE031,  433 );
setPitch( spep_3 + 42, SE031, 600 );
setTimeStretch( SE031, 1.4, 30, 4 );

--敵ヒット
SE032 = playSeVer2( spep_3 + 102, 1278, "",spep_3 + 220, 6, 64, -1);
setSeVolumeByWorkId( spep_3 + 102 , SE032, 90 );
setStartTimeMs( SE032,  1367 );

--手つき出す
SE033 = playSeVer2( spep_3 + 38, 1221, "",spep_3 + 120, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 38, SE033, 174 );
setPitch( spep_3 + 38, SE033, 400 );
setTimeStretch( SE033, 1.27, 30, 4 );
SE034 = playSeVer2( spep_3 + 40, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 40, SE034, 69 );

--敵ヒット
SE035 = playSeVer2( spep_3 + 102, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 102, SE035, 75 );
SE036 = playSeVer2( spep_3 + 102, 1296, "",spep_3 + 240, 0, 92, -1);
SE037 = playSeVer2( spep_3 + 102, 1312, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_3 + 102, 1116, "",spep_3 + 150, 0, 16, -1);

--地響き
SE039 = playSeVer2( spep_3 + 158, 1226, "",spep_3 + 270, 0, 42, -1);
setSeVolumeByWorkId( spep_3 + 158 , SE026, 70 );

--画面遷移
SE040 = playSeVer2( spep_3 + 196, 8, "", 0, 0, 0, -1);

--りんご落ちる
SE041 = playSeVer2( spep_3 + 256, 1118, "",spep_3 + 308, 0, 18, -1);
setSeVolumeByWorkId( spep_3 + 256, SE041, 72 );

--りんごキャッチ
SE042 = playSeVer2( spep_3 + 286, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 286, SE042, 174 );
SE043 = playSeVer2( spep_3 + 288, 1013, "",spep_3 + 306, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 288, SE043, 50 );

--りんご地面落ちる
SE044 = playSeVer2( spep_3 + 298, 1111, "",spep_3 + 354, 0, 6, 0.5);
setSeVolumeByWorkId( spep_3 + 298, SE044, 69 );

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 260); -- ダメージ表示フレーム
endPhase( spep_3 + MAX_FRAME_3 -4); -- 終了フレーム 368-4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- セリフカットイン
-------------------------------------------------


MAX_FRAME_0 = 138;


-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- ef_001_e
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -2, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -1, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 0);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 16;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
-- ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
-- setEffShake( spep_x + 16, ctgogo, 68, 10 );
-- setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
-- setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
-- setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
-- setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
-- setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
-- setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
-- setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
-- setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
-- setEffRotateKey( spep_x + 16, ctgogo, 0 );
-- setEffRotateKey( spep_x + 84, ctgogo, 0 );
-- setEffAlphaKey( spep_x + 16, ctgogo, 255 );
-- setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 10, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 43 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 196, -194.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 196, -194.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 205.7, -194.1 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 205.7, -194.1 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 232, -194.1 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 232, -194.1 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 283.1, -194.1 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 283.1, -194.1 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 367.3, -194.1 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 367.3, -194.1 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 493.1, -194.1 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 493.1, -194.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 655, -194.1 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 655, -194.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 780.8, -194.1 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 780.8, -194.1 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 865, -194.1 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 865, -194.1 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 916.1, -194.1 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 916.1, -194.1 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 942.4, -194.1 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 942.4, -194.1 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 952.1, -194.1 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 952.1, -194.1 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 953.5, -194.1 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 953.5, -194.1 , 0 );

setScaleKey( spep_0 + 0, 1, 3, 3 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 5.28, 5.28 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 5.28, 5.28 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 5.91, 5.91 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 5.91, 5.91 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 5.95, 5.95 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 43 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 26, 1232, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 128; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
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
--瞬間移動
SE003 = playSeVer2( spep_0 + 124, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --138


-------------------------------------------------
-- 攻撃ラッシュ～殴り
-------------------------------------------------

MAX_FRAME_1 = 144;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 前面	ef_002_e
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -2, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -1, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 背面	ef_003
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -2, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -1, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 )

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 + 18 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 20 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 26 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 32 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 38 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 44 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 66 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 68 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 74 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 80 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 86 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 92 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 98 + OFFSET_X, 1, 108 ); 
changeAnime( spep_1 + 110 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 0, 1, 119.5, -105.9 , 0 );
setMoveKey( spep_1 + 19 + OFFSET_X, 1, 119.5, -105.9 , 0 );
setMoveKey( spep_1 + 20 + OFFSET_X, 1, 124.6, -114.4 , 0 );
setMoveKey( spep_1 + 21 + OFFSET_X, 1, 124.6, -114.4 , 0 );
setMoveKey( spep_1 + 22 + OFFSET_X, 1, 111, -104.2 , 0 );
setMoveKey( spep_1 + 23 + OFFSET_X, 1, 111, -104.2 , 0 );
setMoveKey( spep_1 + 24 + OFFSET_X, 1, 124.6, -109.3 , 0 );
setMoveKey( spep_1 + 25 + OFFSET_X, 1, 124.6, -109.3 , 0 );
setMoveKey( spep_1 + 26 + OFFSET_X, 1, 139.9, -140.2 , 0 );
setMoveKey( spep_1 + 29 + OFFSET_X, 1, 139.9, -140.2 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_X, 1, 136.5, -133.4 , 0 );
setMoveKey( spep_1 + 31 + OFFSET_X, 1, 136.5, -133.4 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_X, 1, 124.6, -114.4 , 0 );
setMoveKey( spep_1 + 33 + OFFSET_X, 1, 124.6, -114.4 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_X, 1, 111.3, -104.2 , 0 );
setMoveKey( spep_1 + 35 + OFFSET_X, 1, 111.3, -104.2 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_X, 1, 125.2, -109.3 , 0 );
setMoveKey( spep_1 + 37 + OFFSET_X, 1, 125.2, -109.3 , 0 );
setMoveKey( spep_1 + 38 + OFFSET_X, 1, 109.6, -125.1 , 0 );
setMoveKey( spep_1 + 39 + OFFSET_X, 1, 109.6, -125.1 , 0 );
setMoveKey( spep_1 + 40 + OFFSET_X, 1, 109.9, -125 , 0 );
setMoveKey( spep_1 + 41 + OFFSET_X, 1, 109.9, -125 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, 106.8, -118.2 , 0 );
setMoveKey( spep_1 + 43 + OFFSET_X, 1, 106.8, -118.2 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, 126.5, -114.4 , 0 );
setMoveKey( spep_1 + 45 + OFFSET_X, 1, 126.5, -114.4 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, 113.2, -104.1 , 0 );
setMoveKey( spep_1 + 47 + OFFSET_X, 1, 113.2, -104.1 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, 127.2, -109.2 , 0 );
setMoveKey( spep_1 + 49 + OFFSET_X, 1, 127.2, -109.2 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_X, 1, 122.4, -105.8 , 0 );
setMoveKey( spep_1 + 51 + OFFSET_X, 1, 122.4, -105.8 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, 122.7, -105.8 , 0 );
setMoveKey( spep_1 + 53 + OFFSET_X, 1, 122.7, -105.8 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_X, 1, 123, -105.8 , 0 );
setMoveKey( spep_1 + 55 + OFFSET_X, 1, 123, -105.8 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_X, 1, 123.3, -105.8 , 0 );
setMoveKey( spep_1 + 57 + OFFSET_X, 1, 123.3, -105.8 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, 123.7, -105.8 , 0 );
setMoveKey( spep_1 + 59 + OFFSET_X, 1, 123.7, -105.8 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, 124, -105.8 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_X, 1, 124, -105.8 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, 124.3, -105.8 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, 124.3, -105.8 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, 121.6, -99 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, 121.6, -99 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, 130.4, -114.3 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, 130.4, -114.3 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, 117.1, -104 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, 117.1, -104 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, 131, -109.1 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, 131, -109.1 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, 146.7, -140 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, 146.7, -140 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 147, -140 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, 147, -140 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 144, -133.2 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, 144, -133.2 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, 132.4, -114.3 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, 132.4, -114.3 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, 119.1, -104 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, 119.1, -104 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 133, -109.1 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 133, -109.1 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 117.3, -124.9 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 117.3, -124.9 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 117.7, -124.9 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 117.7, -124.9 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 114.6, -118.1 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 114.6, -118.1 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 134.3, -114.2 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 134.3, -114.2 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 121, -104 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 121, -104 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 134.9, -109.1 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 134.9, -109.1 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, -182.7, -19.6 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, -182.7, -19.6 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, -148.1, -20.3 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, -148.1, -20.3 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, -113.5, -21.1 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, -113.5, -21.1 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, -78.9, -21.9 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, -78.9, -21.9 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, -44.3, -22.6 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, -44.3, -22.6 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, -9.7, -23.4 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, -9.7, -23.4 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 46.9, -138.4 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 46.9, -138.4 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 61.7, -166.8 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 61.7, -166.8 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 44.4, -156.4 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 44.4, -156.4 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 65.1, -159.9 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 65.1, -159.9 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 47.9, -142.6 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 47.9, -142.6 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 61.7, -166.8 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 61.7, -166.8 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 44.4, -156.4 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 44.4, -156.4 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 65.1, -159.9 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 65.1, -159.9 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 47.9, -142.6 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 47.9, -142.6 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 61.7, -166.8 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 61.7, -166.8 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 44.4, -156.4 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 44.4, -156.4 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 65.1, -159.9 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 65.1, -159.9 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 54.8, -156.4 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 54.8, -156.4 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 47.9, -142.6 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 47.9, -142.6 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 44.4, -156.4 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 44.4, -156.4 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 65.1, -159.9 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 65.1, -159.9 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 54.8, -156.4 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 54.8, -156.4 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 47.9, -142.6 , 0 );

setScaleKey( spep_1 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 19 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 20 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 25 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 26 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 31 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 32 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 37 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 38 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 43 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 44 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 73 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 74 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 79 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 80 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 85 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 86 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 91 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 11.6, 11.6 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 11.6, 11.6 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 10.75, 10.75 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 10.75, 10.75 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 9.89, 9.89 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 9.89, 9.89 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 9.04, 9.04 );
setScaleKey( spep_1 + 105 + OFFSET_X, 1, 9.04, 9.04 );
setScaleKey( spep_1 + 106 + OFFSET_X, 1, 8.19, 8.19 );
setScaleKey( spep_1 + 107 + OFFSET_X, 1, 8.19, 8.19 );
setScaleKey( spep_1 + 108 + OFFSET_X, 1, 7.33, 7.33 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 7.33, 7.33 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 8.09, 8.09 );
setScaleKey( spep_1 + 144 + OFFSET_X, 1, 8.09, 8.09 );

setRotateKey( spep_1 + 0, 1, 20 );
setRotateKey( spep_1 + 19 + OFFSET_X, 1, 20 );
setRotateKey( spep_1 + 20 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_1 + 25 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_1 + 26 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_1 + 31 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_1 + 32 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_1 + 37 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_1 + 38 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_1 + 43 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_1 + 44 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_1 + 65 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_1 + 66 + OFFSET_X, 1, 20 );
setRotateKey( spep_1 + 67 + OFFSET_X, 1, 20 );
setRotateKey( spep_1 + 68 + OFFSET_X, 1, -48.3 );
setRotateKey( spep_1 + 73 + OFFSET_X, 1, -48.3 );
setRotateKey( spep_1 + 74 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_1 + 79 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_1 + 80 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_1 + 85 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_1 + 86 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 91 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 92 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_1 + 97 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_1 + 98 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 109 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 110 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_1 + 111 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_1 + 112 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 113 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 114 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 115 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 116 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 117 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 118 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 119 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 120 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 121 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 122 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 123 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 124 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 125 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 126 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 127 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 128 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 129 + OFFSET_X, 1, -29 );
setRotateKey( spep_1 + 130 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 131 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_1 + 144 + OFFSET_X, 1, -29 );

-- ** 音 ** --
--ラッシュ
SE004 = playSeVer2( spep_1 + 8, 1009, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 8, 1110, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 16, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 16, SE006, 83 );
SE007 = playSeVer2( spep_1 + 26, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 26, SE007, 80 );
SE008 = playSeVer2( spep_1 + 26, 1010, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 36, 1110, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 52, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 52, SE010, 89 );
SE011 = playSeVer2( spep_1 + 56, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 64, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 64, SE012, 87 );
SE013 = playSeVer2( spep_1 + 74, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 84, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 84, 1010, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 96, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 96, 1153, "", 0, 0, 0, -1);

--振りかぶる
SE018 = playSeVer2( spep_1 + 134, 1003, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + MAX_FRAME_1;  --144


-------------------------------------------------
-- 蹴り～木の前に瞬間移動
-------------------------------------------------

MAX_FRAME_2 = 136;

-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0); -- 前面	ef_004_e
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, base_2f, 255);

base_2b = entryEffect( spep_2 + 0, SP_03br, 0x80, -1, 0, 0, 0); -- 背面	ef_005_e
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, base_2b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 34 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2 + 12 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 0, 1, 58.1, -42.4 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 58.1, -40.6 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 58.1, -40.6 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 58.1, -38.7 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 58.1, -38.7 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 58.1, -36.9 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 58.1, -36.9 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 58.1, -28.1 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 58.1, -28.1 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 58.1, -22.2 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 58.1, -22.2 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 81.6, 8.1 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 81.6, 8.1 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 254.2, -281.9 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 254.2, -281.9 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 359.1, -453.8 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 359.1, -453.8 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 436.8, -581.2 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 436.8, -581.2 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 497.3, -680.4 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 497.3, -680.4 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 545.4, -759.3 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 545.4, -759.3 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 583.8, -822.3 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 583.8, -822.3 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 614.4, -872.4 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 614.4, -872.4 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 638.4, -911.7 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 638.4, -911.7 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 656.7, -941.8 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 656.7, -941.8 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 670.2, -963.8 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 670.2, -963.8 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 679.2, -978.7 , 0 );

setScaleKey( spep_2 + 0, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 1.39, 1.38 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 1.39, 1.38 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 2, 1.99 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 2, 1.99 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 2.37, 2.36 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 2.37, 2.36 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 2.66, 2.65 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 2.66, 2.65 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 2.88, 2.87 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 2.88, 2.87 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 3.05, 3.04 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 3.05, 3.04 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 3.19, 3.18 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 3.19, 3.18 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 3.31, 3.3 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 3.31, 3.3 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 3.39, 3.38 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 3.39, 3.38 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 3.46, 3.45 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 3.46, 3.45 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 3.51, 3.5 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 3.51, 3.5 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 3.54, 3.53 );

setRotateKey( spep_2 + 0, 1, -31.3 );
setRotateKey( spep_2 + 11 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, 37 );
setRotateKey( spep_2 + 34 + OFFSET_X, 1, 37 );

-- 敵の動き2
setDisp( spep_2 + 50 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 136, 1, 0 );

changeAnime( spep_2 + 50 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 86 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 50 + OFFSET_X, 1, -241.6, -43.1 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -241.6, -43.1 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -241.5, -43.1 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -241.5, -43.1 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -240.7, -43.2 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -240.7, -43.2 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -238.6, -43.7 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -238.6, -43.7 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -234.5, -44.6 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -234.5, -44.6 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -227.7, -46.1 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -227.7, -46.1 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -217.5, -48.3 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -217.5, -48.3 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -203.3, -51.4 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -203.3, -51.4 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -184.5, -55.5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -184.5, -55.5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -160.2, -60.8 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -160.2, -60.8 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -129.9, -67.5 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -129.9, -67.5 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -92.8, -75.5 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -92.8, -75.5 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -48.3, -85.2 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -48.3, -85.2 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 4.3, -96.7 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 4.3, -96.7 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 65.9, -110 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 65.9, -110 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -87.2, 79.1 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -87.2, 79.1 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -32.6, 62.7 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -32.6, 62.7 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 34.5, 42.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 34.5, 42.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 31.2, 38.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 31.2, 38.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 42.6, 15 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 42.6, 15 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 48.2, 37 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 48.2, 37 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 30.5, 14.9 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 30.5, 14.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 38, 31.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 38, 31.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 35.8, 26.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 35.8, 26.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 38.3, 23.8 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 38.3, 23.8 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 37, 24.8 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 37, 24.8 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 39, 23.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 39, 23.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 37, 24.8 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 37, 24.8 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 39, 23.8 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 39, 23.8 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 37, 24.8 , 0 );
setMoveKey( spep_2 + 136, 1, 37, 24.8 , 0 );

setScaleKey( spep_2 + 50 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 136, 1, 1, 1 );

setRotateKey( spep_2 + 50 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -54.4 );
setRotateKey( spep_2 + 136, 1, -54.4 );

-- ** 音 ** --
--蹴り
SE019 = playSeVer2( spep_2 + 0, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 2, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE021 = playSeVer2( spep_2 + 30, 1121, "",spep_2 + 98, 0, 24, -1);
SE022 = playSeVer2( spep_2 + 30, 1183, "",spep_2 + 96, 0, 22, -1);

--木にヒット
SE023 = playSeVer2( spep_2 + 70, 1023, "",spep_2 + 152, 0, 14, -1);
SE024 = playSeVer2( spep_2 + 72, 1011, "",spep_2 + 152, 0, 14, -1);

--瞬間移動
SE025 = playSeVer2( spep_2 + 98, 1109, "",spep_2 + 152, 0, 14, -1);

-- ** 次の準備 ** --
spep_c = spep_2 + MAX_FRAME_2;  --136


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_3 = showCardCutin(spep_c, 0);

-- ** 音 ** --
--気を溜める
SE028 = playSeVer2( spep_c + 90, 1265, "",spep_3 + 120, 24, 10, 0.6);
setSeVolumeByWorkId( spep_c + 90, SE028, 72 );
setStartTimeMs( SE028,  233 );
SE029 = playSeVer2( spep_c + 84, 1305, "",spep_3 + 120, 0, 10, -1);


-------------------------------------------------
-- フィニッシュ
-------------------------------------------------

MAX_FRAME_3 = 368;

-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_04r, 0x100, -1, 0, 0, 0); -- 前面	ef_006_e
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, -1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, base_3f, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, base_3f, 255);

base_3b = entryEffect( spep_3 + 0, SP_04b, 0x80, -1, 0, 0, 0); -- 背面	ef_007
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, base_3b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_3 + 68 + OFFSET_X, 1, 1 );
setDisp( spep_3 + 110 + OFFSET_X, 1, 0 );

changeAnime( spep_3 + 68 + OFFSET_X, 1, 106 );

setMoveKey( spep_3 + 68 + OFFSET_X, 1, 151.8, -102 , 0 );
setMoveKey( spep_3 + 110 + OFFSET_X, 1, 151.8, -102 , 0 );

setScaleKey( spep_3 + 68 + OFFSET_X, 1, 9.98, 9.98 );
setScaleKey( spep_3 + 110 + OFFSET_X, 1, 9.98, 9.98 );

setRotateKey( spep_3 + 68 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_3 + 110 + OFFSET_X, 1, -50.4 );

-- 敵の動き2
setDisp( spep_3 + 220 + OFFSET_X, 1, 1);

changeAnime( spep_3 + 220 + OFFSET_X, 1, 106);

setMoveKey( spep_3 + 220 + OFFSET_X, 1, 135.4, -23.4 , 0 );
setMoveKey( spep_3 + 221 + OFFSET_X, 1, 135.4, -23.4 , 0 );
setMoveKey( spep_3 + 222 + OFFSET_X, 1, 134.9, -23.3 , 0 );
setMoveKey( spep_3 + 223 + OFFSET_X, 1, 134.9, -23.3 , 0 );
setMoveKey( spep_3 + 224 + OFFSET_X, 1, 133.4, -23.1 , 0 );
setMoveKey( spep_3 + 225 + OFFSET_X, 1, 133.4, -23.1 , 0 );
setMoveKey( spep_3 + 226 + OFFSET_X, 1, 131.1, -22.7 , 0 );
setMoveKey( spep_3 + 227 + OFFSET_X, 1, 131.1, -22.7 , 0 );
setMoveKey( spep_3 + 228 + OFFSET_X, 1, 128.4, -22.2 , 0 );
setMoveKey( spep_3 + 229 + OFFSET_X, 1, 128.4, -22.2 , 0 );
setMoveKey( spep_3 + 230 + OFFSET_X, 1, 125.3, -21.7 , 0 );
setMoveKey( spep_3 + 231 + OFFSET_X, 1, 125.3, -21.7 , 0 );
setMoveKey( spep_3 + 232 + OFFSET_X, 1, 122.1, -21.1 , 0 );
setMoveKey( spep_3 + 233 + OFFSET_X, 1, 122.1, -21.1 , 0 );
setMoveKey( spep_3 + 234 + OFFSET_X, 1, 118.8, -20.6 , 0 );
setMoveKey( spep_3 + 235 + OFFSET_X, 1, 118.8, -20.6 , 0 );
setMoveKey( spep_3 + 236 + OFFSET_X, 1, 115.6, -20 , 0 );
setMoveKey( spep_3 + 237 + OFFSET_X, 1, 115.6, -20 , 0 );
setMoveKey( spep_3 + 238 + OFFSET_X, 1, 112.6, -19.5 , 0 );
setMoveKey( spep_3 + 239 + OFFSET_X, 1, 112.6, -19.5 , 0 );
setMoveKey( spep_3 + 240 + OFFSET_X, 1, 109.9, -19 , 0 );
setMoveKey( spep_3 + 241 + OFFSET_X, 1, 109.9, -19 , 0 );
setMoveKey( spep_3 + 242 + OFFSET_X, 1, 107.6, -18.6 , 0 );
setMoveKey( spep_3 + 243 + OFFSET_X, 1, 107.6, -18.6 , 0 );
setMoveKey( spep_3 + 244 + OFFSET_X, 1, 105.8, -18.3 , 0 );
setMoveKey( spep_3 + 245 + OFFSET_X, 1, 105.8, -18.3 , 0 );
setMoveKey( spep_3 + 246 + OFFSET_X, 1, 104.6, -18.1 , 0 );
setMoveKey( spep_3 + 247 + OFFSET_X, 1, 104.6, -18.1 , 0 );
setMoveKey( spep_3 + 248 + OFFSET_X, 1, 104.2, -18 , 0 );
setMoveKey( spep_3 + 368, 1, 104.2, -18 , 0 );

setScaleKey( spep_3 + 220 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 221 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 222 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 223 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 224 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 225 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 226 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 227 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 228 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 229 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 230 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 231 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 232 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 233 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 234 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 235 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 236 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 237 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 238 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 239 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 240 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 241 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 242 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 243 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 244 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 245 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 246 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 368, 1, 1.2, 1.2 );

setRotateKey( spep_3 + 220 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_3 + 368 + 0, 1, -46.9 );

-- ** 音 ** --
--気を溜める
SE027 = playSeVer2( spep_3 + 20, 1287, "",spep_3 + 100, 12, 24, -1);
setSeVolumeByWorkId( spep_3 + 20 , SE027, 120 );
setStartTimeMs( SE027,  1000 );
SE030 = playSeVer2( spep_3 + 2, 1287, "",spep_3 + 80, 0, 10, -1);				
setSeVolumeByWorkId( spep_3 + 2 , SE030, 120 );

--手つき出す
SE031 = playSeVer2( spep_3 + 42, 1320, "",spep_3 + 120, 8, 10, 0.6);
setSeVolumeByWorkId( spep_3 + 42, SE031, 63 );
setStartTimeMs( SE031,  433 );
setPitch( spep_3 + 42, SE031, 600 );
setTimeStretch( SE031, 1.4, 30, 4 );

--敵ヒット
SE032 = playSeVer2( spep_3 + 102, 1278, "",spep_3 + 220, 6, 64, -1);
setSeVolumeByWorkId( spep_3 + 102 , SE032, 90 );
setStartTimeMs( SE032,  1367 );

--手つき出す
SE033 = playSeVer2( spep_3 + 38, 1221, "",spep_3 + 120, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 38, SE033, 174 );
setPitch( spep_3 + 38, SE033, 400 );
setTimeStretch( SE033, 1.27, 30, 4 );
SE034 = playSeVer2( spep_3 + 40, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 40, SE034, 69 );

--敵ヒット
SE035 = playSeVer2( spep_3 + 102, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 102, SE035, 75 );
SE036 = playSeVer2( spep_3 + 102, 1296, "",spep_3 + 240, 0, 92, -1);
SE037 = playSeVer2( spep_3 + 102, 1312, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_3 + 102, 1116, "",spep_3 + 150, 0, 16, -1);

--地響き
SE039 = playSeVer2( spep_3 + 158, 1226, "",spep_3 + 270, 0, 42, -1);
setSeVolumeByWorkId( spep_3 + 158 , SE026, 70 );

--画面遷移
SE040 = playSeVer2( spep_3 + 196, 8, "", 0, 0, 0, -1);

--りんご落ちる
SE041 = playSeVer2( spep_3 + 256, 1118, "",spep_3 + 308, 0, 18, -1);
setSeVolumeByWorkId( spep_3 + 256, SE041, 72 );

--りんごキャッチ
SE042 = playSeVer2( spep_3 + 286, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 286, SE042, 174 );
SE043 = playSeVer2( spep_3 + 288, 1013, "",spep_3 + 306, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 288, SE043, 50 );

--りんご地面落ちる
SE044 = playSeVer2( spep_3 + 298, 1111, "",spep_3 + 354, 0, 6, 0.5);
setSeVolumeByWorkId( spep_3 + 298, SE044, 69 );

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 260); -- ダメージ表示フレーム
endPhase( spep_3 + MAX_FRAME_3 -4); -- 終了フレーム 368-4

end
