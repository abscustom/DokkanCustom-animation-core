--4031600:LR_超サイヤ人トランクス(幼年期)&超サイヤ人孫悟天(幼年期)+超サイヤ人孫悟飯(青年期)_超必殺技：フルパワーエネルギーラッシュ
--sp_effect_b4_00394
--sp2905

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164016; --開幕〜カットイン ef_001
SP_02  = 164017; --トランクス接近〜爆発フィニッシュまで ef_002
SP_02b = 164018; --トランクス接近〜爆発フィニッシュまで ef_002b

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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;
setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- 開幕〜カットイン
-------------------------------------------------
MAX_FRAME_0 = 88;

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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
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
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1116, "",spep_0 + 106, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 71 );
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );
SE005 = playSeVer2( spep_0 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE005, 63 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 42; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE005, 0);
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
--飛んでくる
SE006 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE006, 63 );
SE007 = playSeVer2( spep_0 + 60, 1019, "",spep_0 + 104, 0, 14, -1);
SE008 = playSeVer2( spep_0 + 68, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE008, 63 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 88f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0)+2;


-- ** 音 ** --
--飛んでくる
SE010 = playSeVer2( spep_1 + 84, 1117, "", 0, 0, 0, -1);

--オーラ
SE011 = playSeVer2( spep_1 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE011, 63 );


-------------------------------------------------
-- トランクス接近〜爆発フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 864;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- トランクス接近〜爆発フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 6 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 190 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 6 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 20 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 52 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 62 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 80 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 6 + OFFSET_X, 1, 572.1, -1.1 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 572.1, -1.1 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 491.7, 0.8 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 491.7, 0.8 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 425.2, 2.4 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 425.2, 2.4 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 372.4, 3.6 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 372.4, 3.6 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 333.3, 4.6 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 333.3, 4.6 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 308.1, 5.2 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 308.1, 5.2 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 296.6, 5.5 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 296.6, 5.5 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 6.1, 108.4 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 6.1, 108.4 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 15.6, 98.9 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 15.6, 98.9 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -3.5, 118 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -3.5, 118 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -3.5, 98.9 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -3.5, 98.9 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 10.8, 120.9 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 10.8, 120.9 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -3.5, 114.3 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -3.5, 114.3 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -13.3, 124 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -13.3, 124 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -13.5, 105 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -13.5, 105 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -4.2, 114.7 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -4.2, 114.7 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -4.4, 114.9 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -4.4, 114.9 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -4.7, 115 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -4.7, 115 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -4.9, 115.1 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -4.9, 115.1 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -5.2, 115.3 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -5.2, 115.3 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -5.4, 115.4 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -5.4, 115.4 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 5.8, -99.3 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 5.8, -99.3 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -15.8, -87.7 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -15.8, -87.7 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -59.5, -253.7 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -59.5, -253.7 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -84.2, -381.6 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -84.2, -381.6 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -137.5, -538 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -137.5, -538 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -57.4, -370.3 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -57.4, -370.3 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -38, -291.3 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -38, -291.3 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -13.2, -204.8 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -13.2, -204.8 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -10.6, -191.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -10.6, -191.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -8.3, -179.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -8.3, -179.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -6, -168.8 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -6, -168.8 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -4, -158.5 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -4, -158.5 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -2.1, -149 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -2.1, -149 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -0.4, -140.4 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -0.4, -140.4 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 46.6, -99.5 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 46.6, -99.5 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 56.2, -109.1 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 56.2, -109.1 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 37.1, -90 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 37.1, -90 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 117.7, -17.9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 117.7, -17.9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 156.6, 23.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 156.6, 23.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 203.2, 180.7 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 203.2, 180.7 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 208.3, 234.3 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 208.3, 234.3 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 223.1, 259.3 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 223.1, 259.3 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 247.4, 312.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 247.4, 312.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 258.6, 332.6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 258.6, 332.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 268.3, 349.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 268.3, 349.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 276.7, 364.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 276.7, 364.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 280.2, 370.9 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 280.2, 370.9 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 283.4, 376.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 283.4, 376.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 286.3, 381.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 286.3, 381.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 288.8, 386 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 288.8, 386 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 291, 389.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 291, 389.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 292.9, 393.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 292.9, 393.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 294.4, 396 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 294.4, 396 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 295.7, 398.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 295.7, 398.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 296.6, 399.7 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 296.6, 399.7 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 297.1, 400.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 297.1, 400.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 237.6, 358.6 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 237.6, 358.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 241.4, 361.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 241.4, 361.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 244.8, 363.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 244.8, 363.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 247.8, 365.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 247.8, 365.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 250.3, 367.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 250.3, 367.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 252.4, 369.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 252.4, 369.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 254, 370.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 254, 370.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 254.2, 370.5 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 254.2, 370.5 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 254.4, 370.7 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 254.4, 370.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 254.6, 370.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 254.6, 370.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 257.7, 373.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 257.7, 373.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 251.9, 368 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 251.9, 368 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 258, 368.1 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 258, 368.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 252.2, 374.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 252.2, 374.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 255.3, 371.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 255.3, 371.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 255.4, 371.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 255.4, 371.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 255.5, 371.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 255.5, 371.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 255.6, 371.6 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 255.6, 371.6 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 255.7, 371.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 255.7, 371.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 255.8, 371.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 255.8, 371.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 255.9, 371.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 255.9, 371.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 256, 371.9 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 256, 371.9 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 256.1, 371.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 256.1, 371.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 256.1, 372 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 256.1, 372 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 256.2, 372 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 256.2, 372 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 256.3, 372.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 256.3, 372.1 , 0 );

setScaleKey( spep_2 + 6 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.15, 0.15 );

setRotateKey( spep_2 + 6 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_2 + 27 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_2 + 28 + OFFSET_X, 1, -36.6 );
setRotateKey( spep_2 + 29 + OFFSET_X, 1, -36.6 );
setRotateKey( spep_2 + 30 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 33 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 34 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 35 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 36 + OFFSET_X, 1, -28.6 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, -28.6 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, -28.3 );
setRotateKey( spep_2 + 39 + OFFSET_X, 1, -28.3 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, -28 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, -28 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, 103 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, 103 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 41.8 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 41.8 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 120.6 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 120.6 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 122.2 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 122.2 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 122.6 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 122.6 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 122.4 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 122.4 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 121.9 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 121.9 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 121.5 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 121.5 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 121.1 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 121.1 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 121 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 121 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 120.9 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 120.9 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 120.8 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 120.8 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 120.6 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 120.6 );


--敵の動き2
setDisp( spep_2 + 416 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 506 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 416 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 416 + OFFSET_X, 1, 122.9, 319.1 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 122.9, 319.1 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 122.9, 319.2 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 122.9, 319.2 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 122.9, 319.1 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 122.9, 319.1 , 0 );

setScaleKey( spep_2 + 416 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 467 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 487 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 488 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 506 + OFFSET_X, 1, 0.07, 0.07 );

setRotateKey( spep_2 + 416 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 506 + OFFSET_X, 1, 12.8 );

setBlendColor( spep_2 + 416 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.6 );
setBlendColor( spep_2 + 506 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--敵の動き3
setDisp( spep_2 + 644 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 724 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 644 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 644 + OFFSET_X, 1, 136.7, -16.2 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, 136.7, -16.2 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, 137.2, -16.1 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, 137.2, -16.1 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, 137.7, -16 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, 137.7, -16 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, 138.3, -15.8 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, 138.3, -15.8 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, 138.8, -15.7 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, 138.8, -15.7 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, 139.3, -15.6 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, 139.3, -15.6 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, 139.7, -15.5 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, 139.7, -15.5 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, 140.2, -15.4 , 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, 140.2, -15.4 , 0 );
setMoveKey( spep_2 + 660 + OFFSET_X, 1, 140.7, -15.3 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, 140.7, -15.3 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, 141.1, -15.2 , 0 );
setMoveKey( spep_2 + 663 + OFFSET_X, 1, 141.1, -15.2 , 0 );
setMoveKey( spep_2 + 664 + OFFSET_X, 1, 141.6, -15.1 , 0 );
setMoveKey( spep_2 + 665 + OFFSET_X, 1, 141.6, -15.1 , 0 );
setMoveKey( spep_2 + 666 + OFFSET_X, 1, 142, -15 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, 142, -15 , 0 );
setMoveKey( spep_2 + 668 + OFFSET_X, 1, 142.4, -15 , 0 );
setMoveKey( spep_2 + 669 + OFFSET_X, 1, 142.4, -15 , 0 );
setMoveKey( spep_2 + 670 + OFFSET_X, 1, 142.8, -14.9 , 0 );
setMoveKey( spep_2 + 671 + OFFSET_X, 1, 142.8, -14.9 , 0 );
setMoveKey( spep_2 + 672 + OFFSET_X, 1, 143.2, -14.8 , 0 );
setMoveKey( spep_2 + 673 + OFFSET_X, 1, 143.2, -14.8 , 0 );
setMoveKey( spep_2 + 674 + OFFSET_X, 1, 143.5, -14.7 , 0 );
setMoveKey( spep_2 + 675 + OFFSET_X, 1, 143.5, -14.7 , 0 );
setMoveKey( spep_2 + 676 + OFFSET_X, 1, 143.9, -14.6 , 0 );
setMoveKey( spep_2 + 677 + OFFSET_X, 1, 143.9, -14.6 , 0 );
setMoveKey( spep_2 + 678 + OFFSET_X, 1, 144.2, -14.6 , 0 );
setMoveKey( spep_2 + 679 + OFFSET_X, 1, 144.2, -14.6 , 0 );
setMoveKey( spep_2 + 680 + OFFSET_X, 1, 144.6, -14.5 , 0 );
setMoveKey( spep_2 + 681 + OFFSET_X, 1, 144.6, -14.5 , 0 );
setMoveKey( spep_2 + 682 + OFFSET_X, 1, 144.9, -14.4 , 0 );
setMoveKey( spep_2 + 683 + OFFSET_X, 1, 144.9, -14.4 , 0 );
setMoveKey( spep_2 + 684 + OFFSET_X, 1, 145.2, -14.4 , 0 );
setMoveKey( spep_2 + 685 + OFFSET_X, 1, 145.2, -14.4 , 0 );
setMoveKey( spep_2 + 686 + OFFSET_X, 1, 145.5, -14.3 , 0 );
setMoveKey( spep_2 + 687 + OFFSET_X, 1, 145.5, -14.3 , 0 );
setMoveKey( spep_2 + 688 + OFFSET_X, 1, 145.7, -14.3 , 0 );
setMoveKey( spep_2 + 689 + OFFSET_X, 1, 145.7, -14.3 , 0 );
setMoveKey( spep_2 + 690 + OFFSET_X, 1, 146, -14.2 , 0 );
setMoveKey( spep_2 + 691 + OFFSET_X, 1, 146, -14.2 , 0 );
setMoveKey( spep_2 + 692 + OFFSET_X, 1, 146.3, -14.1 , 0 );
setMoveKey( spep_2 + 693 + OFFSET_X, 1, 146.3, -14.1 , 0 );
setMoveKey( spep_2 + 694 + OFFSET_X, 1, 146.5, -14.1 , 0 );
setMoveKey( spep_2 + 695 + OFFSET_X, 1, 146.5, -14.1 , 0 );
setMoveKey( spep_2 + 696 + OFFSET_X, 1, 146.7, -14.1 , 0 );
setMoveKey( spep_2 + 697 + OFFSET_X, 1, 146.7, -14.1 , 0 );
setMoveKey( spep_2 + 698 + OFFSET_X, 1, 146.9, -14 , 0 );
setMoveKey( spep_2 + 699 + OFFSET_X, 1, 146.9, -14 , 0 );
setMoveKey( spep_2 + 700 + OFFSET_X, 1, 147.1, -14 , 0 );
setMoveKey( spep_2 + 701 + OFFSET_X, 1, 147.1, -14 , 0 );
setMoveKey( spep_2 + 702 + OFFSET_X, 1, 147.3, -13.9 , 0 );
setMoveKey( spep_2 + 703 + OFFSET_X, 1, 147.3, -13.9 , 0 );
setMoveKey( spep_2 + 704 + OFFSET_X, 1, 147.5, -13.9 , 0 );
setMoveKey( spep_2 + 705 + OFFSET_X, 1, 147.5, -13.9 , 0 );
setMoveKey( spep_2 + 706 + OFFSET_X, 1, 147.7, -13.9 , 0 );
setMoveKey( spep_2 + 707 + OFFSET_X, 1, 147.7, -13.9 , 0 );
setMoveKey( spep_2 + 708 + OFFSET_X, 1, 147.8, -13.8 , 0 );
setMoveKey( spep_2 + 709 + OFFSET_X, 1, 147.8, -13.8 , 0 );
setMoveKey( spep_2 + 710 + OFFSET_X, 1, 147.9, -13.8 , 0 );
setMoveKey( spep_2 + 711 + OFFSET_X, 1, 147.9, -13.8 , 0 );
setMoveKey( spep_2 + 712 + OFFSET_X, 1, 148.1, -13.8 , 0 );
setMoveKey( spep_2 + 713 + OFFSET_X, 1, 148.1, -13.8 , 0 );
setMoveKey( spep_2 + 714 + OFFSET_X, 1, 148.2, -13.8 , 0 );
setMoveKey( spep_2 + 715 + OFFSET_X, 1, 148.2, -13.8 , 0 );
setMoveKey( spep_2 + 716 + OFFSET_X, 1, 148.3, -13.7 , 0 );
setMoveKey( spep_2 + 719 + OFFSET_X, 1, 148.3, -13.7 , 0 );
setMoveKey( spep_2 + 720 + OFFSET_X, 1, 148.4, -13.7 , 0 );
setMoveKey( spep_2 + 721 + OFFSET_X, 1, 148.4, -13.7 , 0 );
setMoveKey( spep_2 + 722 + OFFSET_X, 1, 148.5, -13.7 , 0 );
setMoveKey( spep_2 + 724 + OFFSET_X, 1, 148.5, -13.7 , 0 );

setScaleKey( spep_2 + 644 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 645 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 646 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 647 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 648 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 649 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 650 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 651 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 652 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 653 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 654 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 655 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 656 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 657 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 658 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 659 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 660 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 661 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 662 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 663 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 664 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 665 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 666 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 667 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 668 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 669 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 670 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 673 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 674 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 675 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 676 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 677 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 678 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 681 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 682 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 683 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 684 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 687 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 688 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 691 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 692 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 693 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 694 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 699 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 700 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 703 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 704 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 709 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 710 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 721 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 722 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 724 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_2 + 644 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 724 + OFFSET_X, 1, 44.4 );


-- ** 音 ** --
--トランクスパンチ
SE012 = playSeVer2( spep_2 + 8, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE012, 155 );

--オーラ
SE013 = playSeVer2( spep_2 + 14, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE013, 63 );

--トランクスパンチ
SE014 = playSeVer2( spep_2 + 14, 1010, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 14, 1110, "", 0, 0, 0, -1);

--悟天キック
SE016 = playSeVer2( spep_2 + 34, 1004, "", 0, 0, 0, -1);

--オーラ
SE017 = playSeVer2( spep_2 + 38, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 38, SE017, 63 );

--悟天キック
SE018 = playSeVer2( spep_2 + 46, 1009, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 46, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE019, 77 );
SE020 = playSeVer2( spep_2 + 46, 1110, "", 0, 0, 0, -1);

--オーラ
SE021 = playSeVer2( spep_2 + 62, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE021, 63 );

--トランクスキック
SE022 = playSeVer2( spep_2 + 68, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 68, SE022, 182 );
SE023 = playSeVer2( spep_2 + 74, 1187, "", 0, 0, 0, -1);

--オーラ
SE024 = playSeVer2( spep_2 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE024, 63 );

--敵飛んでいく
SE025 = playSeVer2( spep_2 + 86, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE025, 61 );
SE026 = playSeVer2( spep_2 + 86, 1121, "",spep_2 + 256, 0, 126, -1);
setSeVolumeByWorkId( spep_2 + 86, SE026, 72 );
SE027 = playSeVer2( spep_2 + 86, 1183, "",spep_2 + 244, 0, 110, -1);

--オーラ
SE028 = playSeVer2( spep_2 + 110, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 110, SE028, 63 );

--悟天気弾溜め
SE029 = playSeVer2( spep_2 + 200, 1210, "",spep_2 + 334, 14, 28, -1);
setStartTimeMs( SE029,  1100 );

--トランクス追う
SE030 = playSeVer2( spep_2 + 138, 1452, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 138, 1304, "", 0, 0, 0, -1);

--オーラ
SE032 = playSeVer2( spep_2 + 184, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 184, SE032, 63 );

--悟天気弾溜め
SE033 = playSeVer2( spep_2 + 202, 1209, "", 0, 0, 0, -1);

--オーラ
SE034 = playSeVer2( spep_2 + 208, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 208, SE034, 63 );
SE035 = playSeVer2( spep_2 + 232, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 232, SE035, 63 );
SE036 = playSeVer2( spep_2 + 256, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 256, SE036, 63 );
SE037 = playSeVer2( spep_2 + 280, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 280, SE037, 63 );

--悟天気弾発射
SE038 = playSeVer2( spep_2 + 302, 1133, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 302, 1146, "", 0, 0, 0, -1);

--気弾飛んでいく
SE040 = playSeVer2( spep_2 + 386, 1193, "",spep_2 + 678, 6, 186, -1);
setStartTimeMs( SE040,  1033 );
SE041 = playSeVer2( spep_2 + 332, 1215, "",spep_2 + 644, 0, 130, -1);
SE042 = playSeVer2( spep_2 + 370, 1390, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 370, SE042, 68 );

--オーラ
SE043 = playSeVer2( spep_2 + 410, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 410, SE043, 50 );
SE044 = playSeVer2( spep_2 + 434, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 434, SE044, 50 );
SE045 = playSeVer2( spep_2 + 458, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 458, SE045, 50 );

--気弾飛んでいく
SE046 = playSeVer2( spep_2 + 482, 1161, "",spep_2 + 720, 0, 140, -1);
setSeVolumeByWorkId( spep_2 + 482, SE046, 73 );

--オーラ
SE047 = playSeVer2( spep_2 + 482, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 482, SE047, 50 );

--トランクス避ける
SE048 = playSeVer2( spep_2 + 500, 1277, "", spep_2 + 590, 0, 10, 0.6);
SE049 = playSeVer2( spep_2 + 500, 37, "", 0, 0, 0, 0.6);
stopSeIfDoubleSpeed( spep_2 + 500, SE049 );
SE050 = playSeVer2( spep_2 + 500, 1004, "", 0, 0, 0, 0.6);

--オーラ
SE051 = playSeVer2( spep_2 + 506, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 506, SE051, 50 );
SE052 = playSeVer2( spep_2 + 530, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 530, SE052, 50 );
SE053 = playSeVer2( spep_2 + 554, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 554, SE053, 50 );

--トランクス気弾溜め
SE054 = playSeVer2( spep_2 + 562, 1296, "",spep_2 + 624, 0, 20, -1);
SE055 = playSeVer2( spep_2 + 562, 1204, "",spep_2 + 626, 0, 20, -1);

--オーラ
SE056 = playSeVer2( spep_2 + 578, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 578, SE056, 50 );
SE057 = playSeVer2( spep_2 + 602, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 602, SE057, 50 );

--トランクス気弾発射
SE058 = playSeVer2( spep_2 + 604, 1133, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 604, 1177, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 604, 1145, "", 0, 0, 0, -1);

--気弾飛んでいく２
SE061 = playSeVer2( spep_2 + 638, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 638, SE061, 211 );

--爆発
SE062 = playSeVer2( spep_2 + 718, 1159, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_2 + 754, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 724); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 864f -2f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;
setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- 開幕〜カットイン
-------------------------------------------------
MAX_FRAME_0 = 88;

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1116, "",spep_0 + 106, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 71 );
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );
SE005 = playSeVer2( spep_0 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE005, 63 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 42; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE005, 0);
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
--飛んでくる
SE006 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE006, 63 );
SE007 = playSeVer2( spep_0 + 60, 1019, "",spep_0 + 104, 0, 14, -1);
SE008 = playSeVer2( spep_0 + 68, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE008, 63 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 88f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0)+2;


-- ** 音 ** --
--飛んでくる
SE010 = playSeVer2( spep_1 + 84, 1117, "", 0, 0, 0, -1);

--オーラ
SE011 = playSeVer2( spep_1 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE011, 63 );


-------------------------------------------------
-- トランクス接近〜爆発フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 864;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- トランクス接近〜爆発フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 6 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 190 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 6 + OFFSET_X, 1, 18 );
changeAnime( spep_2 + 20 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 52 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 62 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 80 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 6 + OFFSET_X, 1, -572.1, -1.1 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -572.1, -1.1 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -491.7, 0.8 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -491.7, 0.8 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -425.2, 2.4 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -425.2, 2.4 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -372.4, 3.6 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, -372.4, 3.6 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -333.3, 4.6 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -333.3, 4.6 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -308.1, 5.2 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -308.1, 5.2 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -296.6, 5.5 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -296.6, 5.5 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -6.1, 108.4 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -6.1, 108.4 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -15.6, 98.9 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -15.6, 98.9 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 3.5, 118 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 3.5, 118 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 3.5, 98.9 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 3.5, 98.9 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -10.8, 120.9 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -10.8, 120.9 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 3.5, 114.3 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 3.5, 114.3 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 13.3, 124 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 13.3, 124 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 13.5, 105 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 13.5, 105 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 4.2, 114.7 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 4.2, 114.7 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 4.4, 114.9 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 4.4, 114.9 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 4.7, 115 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 4.7, 115 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 4.9, 115.1 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 4.9, 115.1 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 5.2, 115.3 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 5.2, 115.3 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 5.4, 115.4 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 5.4, 115.4 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -5.8, -99.3 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -5.8, -99.3 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 15.8, -87.7 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 15.8, -87.7 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 59.5, -253.7 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 59.5, -253.7 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 84.2, -381.6 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 84.2, -381.6 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 137.5, -538 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 137.5, -538 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 57.4, -370.3 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 57.4, -370.3 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 38, -291.3 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 38, -291.3 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 13.2, -204.8 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 13.2, -204.8 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 10.6, -191.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 10.6, -191.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 8.3, -179.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 8.3, -179.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 6, -168.8 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 6, -168.8 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 4, -158.5 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 4, -158.5 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 2.1, -149 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 2.1, -149 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 0.4, -140.4 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 0.4, -140.4 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -46.6, -99.5 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -46.6, -99.5 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -56.2, -109.1 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -56.2, -109.1 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -37.1, -90 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -37.1, -90 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -117.7, -17.9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -117.7, -17.9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -156.6, 23.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -156.6, 23.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -203.2, 180.7 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -203.2, 180.7 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -208.3, 234.3 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -208.3, 234.3 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -223.1, 259.3 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -223.1, 259.3 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -247.4, 312.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -247.4, 312.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -258.6, 332.6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -258.6, 332.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -268.3, 349.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -268.3, 349.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -276.7, 364.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -276.7, 364.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -280.2, 370.9 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -280.2, 370.9 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -283.4, 376.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -283.4, 376.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -286.3, 381.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -286.3, 381.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -288.8, 386 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -288.8, 386 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -291, 389.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -291, 389.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -292.9, 393.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -292.9, 393.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -294.4, 396 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -294.4, 396 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -295.7, 398.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -295.7, 398.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -296.6, 399.7 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -296.6, 399.7 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -297.1, 400.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -297.1, 400.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -237.6, 358.6 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -237.6, 358.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -241.4, 361.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -241.4, 361.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -244.8, 363.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -244.8, 363.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -247.8, 365.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -247.8, 365.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -250.3, 367.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -250.3, 367.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -252.4, 369.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -252.4, 369.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -254, 370.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -254, 370.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -254.2, 370.5 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -254.2, 370.5 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -254.4, 370.7 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -254.4, 370.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -254.6, 370.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -254.6, 370.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -257.7, 373.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -257.7, 373.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -251.9, 368 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -251.9, 368 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -258, 368.1 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -258, 368.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -252.2, 374.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -252.2, 374.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -255.3, 371.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -255.3, 371.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -255.4, 371.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -255.4, 371.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -255.5, 371.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -255.5, 371.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -255.6, 371.6 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -255.6, 371.6 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -255.7, 371.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -255.7, 371.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -255.8, 371.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -255.8, 371.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -255.9, 371.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -255.9, 371.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -256, 371.9 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -256, 371.9 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -256.1, 371.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -256.1, 371.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -256.1, 372 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -256.1, 372 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -256.2, 372 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -256.2, 372 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -256.3, 372.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -256.3, 372.1 , 0 );

setScaleKey( spep_2 + 6 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.15, 0.15 );

setRotateKey( spep_2 + 6 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, 43.5 );
setRotateKey( spep_2 + 27 + OFFSET_X, 1, 43.5 );
setRotateKey( spep_2 + 28 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_2 + 29 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_2 + 30 + OFFSET_X, 1, 29.6 );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, 29.6 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 33 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 34 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 35 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 36 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_2 + 39 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, 28 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, 28 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, 27.7 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, 27.7 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, 27.3 );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, 27.3 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, 27 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, 27 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, -103 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -103 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -120.6 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -120.6 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -122.2 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -122.2 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -122.6 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -122.6 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -122.4 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -122.4 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -121.9 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -121.5 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -121.5 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -121.1 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -121.1 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -121 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -121 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -120.9 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -120.9 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -120.8 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -120.8 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -120.7 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -120.7 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -120.6 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -120.6 );


--敵の動き2
setDisp( spep_2 + 416 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 506 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 416 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 416 + OFFSET_X, 1, -122.9, 319.1 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -122.9, 319.1 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -122.9, 319.2 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -122.9, 319.2 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -122.9, 319.1 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, -122.9, 319.1 , 0 );

setScaleKey( spep_2 + 416 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 467 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 487 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 488 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 506 + OFFSET_X, 1, 0.07, 0.07 );

setRotateKey( spep_2 + 416 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_2 + 506 + OFFSET_X, 1, -12.8 );

setBlendColor( spep_2 + 416 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.6 );
setBlendColor( spep_2 + 506 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--敵の動き3
setDisp( spep_2 + 644 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 724 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 644 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 644 + OFFSET_X, 1, -136.7, -16.2 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, -136.7, -16.2 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, -137.2, -16.1 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, -137.2, -16.1 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, -137.7, -16 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, -137.7, -16 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, -138.3, -15.8 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, -138.3, -15.8 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, -138.8, -15.7 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, -138.8, -15.7 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, -139.3, -15.6 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, -139.3, -15.6 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, -139.7, -15.5 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, -139.7, -15.5 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, -140.2, -15.4 , 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, -140.2, -15.4 , 0 );
setMoveKey( spep_2 + 660 + OFFSET_X, 1, -140.7, -15.3 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, -140.7, -15.3 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, -141.1, -15.2 , 0 );
setMoveKey( spep_2 + 663 + OFFSET_X, 1, -141.1, -15.2 , 0 );
setMoveKey( spep_2 + 664 + OFFSET_X, 1, -141.6, -15.1 , 0 );
setMoveKey( spep_2 + 665 + OFFSET_X, 1, -141.6, -15.1 , 0 );
setMoveKey( spep_2 + 666 + OFFSET_X, 1, -142, -15 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, -142, -15 , 0 );
setMoveKey( spep_2 + 668 + OFFSET_X, 1, -142.4, -15 , 0 );
setMoveKey( spep_2 + 669 + OFFSET_X, 1, -142.4, -15 , 0 );
setMoveKey( spep_2 + 670 + OFFSET_X, 1, -142.8, -14.9 , 0 );
setMoveKey( spep_2 + 671 + OFFSET_X, 1, -142.8, -14.9 , 0 );
setMoveKey( spep_2 + 672 + OFFSET_X, 1, -143.2, -14.8 , 0 );
setMoveKey( spep_2 + 673 + OFFSET_X, 1, -143.2, -14.8 , 0 );
setMoveKey( spep_2 + 674 + OFFSET_X, 1, -143.5, -14.7 , 0 );
setMoveKey( spep_2 + 675 + OFFSET_X, 1, -143.5, -14.7 , 0 );
setMoveKey( spep_2 + 676 + OFFSET_X, 1, -143.9, -14.6 , 0 );
setMoveKey( spep_2 + 677 + OFFSET_X, 1, -143.9, -14.6 , 0 );
setMoveKey( spep_2 + 678 + OFFSET_X, 1, -144.2, -14.6 , 0 );
setMoveKey( spep_2 + 679 + OFFSET_X, 1, -144.2, -14.6 , 0 );
setMoveKey( spep_2 + 680 + OFFSET_X, 1, -144.6, -14.5 , 0 );
setMoveKey( spep_2 + 681 + OFFSET_X, 1, -144.6, -14.5 , 0 );
setMoveKey( spep_2 + 682 + OFFSET_X, 1, -144.9, -14.4 , 0 );
setMoveKey( spep_2 + 683 + OFFSET_X, 1, -144.9, -14.4 , 0 );
setMoveKey( spep_2 + 684 + OFFSET_X, 1, -145.2, -14.4 , 0 );
setMoveKey( spep_2 + 685 + OFFSET_X, 1, -145.2, -14.4 , 0 );
setMoveKey( spep_2 + 686 + OFFSET_X, 1, -145.5, -14.3 , 0 );
setMoveKey( spep_2 + 687 + OFFSET_X, 1, -145.5, -14.3 , 0 );
setMoveKey( spep_2 + 688 + OFFSET_X, 1, -145.7, -14.3 , 0 );
setMoveKey( spep_2 + 689 + OFFSET_X, 1, -145.7, -14.3 , 0 );
setMoveKey( spep_2 + 690 + OFFSET_X, 1, -146, -14.2 , 0 );
setMoveKey( spep_2 + 691 + OFFSET_X, 1, -146, -14.2 , 0 );
setMoveKey( spep_2 + 692 + OFFSET_X, 1, -146.3, -14.1 , 0 );
setMoveKey( spep_2 + 693 + OFFSET_X, 1, -146.3, -14.1 , 0 );
setMoveKey( spep_2 + 694 + OFFSET_X, 1, -146.5, -14.1 , 0 );
setMoveKey( spep_2 + 695 + OFFSET_X, 1, -146.5, -14.1 , 0 );
setMoveKey( spep_2 + 696 + OFFSET_X, 1, -146.7, -14.1 , 0 );
setMoveKey( spep_2 + 697 + OFFSET_X, 1, -146.7, -14.1 , 0 );
setMoveKey( spep_2 + 698 + OFFSET_X, 1, -146.9, -14 , 0 );
setMoveKey( spep_2 + 699 + OFFSET_X, 1, -146.9, -14 , 0 );
setMoveKey( spep_2 + 700 + OFFSET_X, 1, -147.1, -14 , 0 );
setMoveKey( spep_2 + 701 + OFFSET_X, 1, -147.1, -14 , 0 );
setMoveKey( spep_2 + 702 + OFFSET_X, 1, -147.3, -13.9 , 0 );
setMoveKey( spep_2 + 703 + OFFSET_X, 1, -147.3, -13.9 , 0 );
setMoveKey( spep_2 + 704 + OFFSET_X, 1, -147.5, -13.9 , 0 );
setMoveKey( spep_2 + 705 + OFFSET_X, 1, -147.5, -13.9 , 0 );
setMoveKey( spep_2 + 706 + OFFSET_X, 1, -147.7, -13.9 , 0 );
setMoveKey( spep_2 + 707 + OFFSET_X, 1, -147.7, -13.9 , 0 );
setMoveKey( spep_2 + 708 + OFFSET_X, 1, -147.8, -13.8 , 0 );
setMoveKey( spep_2 + 709 + OFFSET_X, 1, -147.8, -13.8 , 0 );
setMoveKey( spep_2 + 710 + OFFSET_X, 1, -147.9, -13.8 , 0 );
setMoveKey( spep_2 + 711 + OFFSET_X, 1, -147.9, -13.8 , 0 );
setMoveKey( spep_2 + 712 + OFFSET_X, 1, -148.1, -13.8 , 0 );
setMoveKey( spep_2 + 713 + OFFSET_X, 1, -148.1, -13.8 , 0 );
setMoveKey( spep_2 + 714 + OFFSET_X, 1, -148.2, -13.8 , 0 );
setMoveKey( spep_2 + 715 + OFFSET_X, 1, -148.2, -13.8 , 0 );
setMoveKey( spep_2 + 716 + OFFSET_X, 1, -148.3, -13.7 , 0 );
setMoveKey( spep_2 + 719 + OFFSET_X, 1, -148.3, -13.7 , 0 );
setMoveKey( spep_2 + 720 + OFFSET_X, 1, -148.4, -13.7 , 0 );
setMoveKey( spep_2 + 721 + OFFSET_X, 1, -148.4, -13.7 , 0 );
setMoveKey( spep_2 + 722 + OFFSET_X, 1, -148.5, -13.7 , 0 );
setMoveKey( spep_2 + 724 + OFFSET_X, 1, -148.5, -13.7 , 0 );

setScaleKey( spep_2 + 644 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 645 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 646 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 647 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 648 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 649 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 650 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 651 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 652 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 653 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 654 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 655 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 656 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 657 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 658 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 659 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 660 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 661 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 662 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 663 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 664 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 665 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 666 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 667 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 668 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 669 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 670 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 673 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 674 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 675 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 676 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 677 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 678 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 681 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 682 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 683 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 684 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 687 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 688 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 691 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 692 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 693 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 694 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 699 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 700 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 703 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 704 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 709 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 710 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 721 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 722 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 724 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_2 + 644 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 724 + OFFSET_X, 1, -44.4 );


-- ** 音 ** --
--トランクスパンチ
SE012 = playSeVer2( spep_2 + 8, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE012, 155 );

--オーラ
SE013 = playSeVer2( spep_2 + 14, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE013, 63 );

--トランクスパンチ
SE014 = playSeVer2( spep_2 + 14, 1010, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 14, 1110, "", 0, 0, 0, -1);

--悟天キック
SE016 = playSeVer2( spep_2 + 34, 1004, "", 0, 0, 0, -1);

--オーラ
SE017 = playSeVer2( spep_2 + 38, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 38, SE017, 63 );

--悟天キック
SE018 = playSeVer2( spep_2 + 46, 1009, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 46, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE019, 77 );
SE020 = playSeVer2( spep_2 + 46, 1110, "", 0, 0, 0, -1);

--オーラ
SE021 = playSeVer2( spep_2 + 62, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE021, 63 );

--トランクスキック
SE022 = playSeVer2( spep_2 + 68, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 68, SE022, 182 );
SE023 = playSeVer2( spep_2 + 74, 1187, "", 0, 0, 0, -1);

--オーラ
SE024 = playSeVer2( spep_2 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE024, 63 );

--敵飛んでいく
SE025 = playSeVer2( spep_2 + 86, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE025, 61 );
SE026 = playSeVer2( spep_2 + 86, 1121, "",spep_2 + 256, 0, 126, -1);
setSeVolumeByWorkId( spep_2 + 86, SE026, 72 );
SE027 = playSeVer2( spep_2 + 86, 1183, "",spep_2 + 244, 0, 110, -1);

--オーラ
SE028 = playSeVer2( spep_2 + 110, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 110, SE028, 63 );

--悟天気弾溜め
SE029 = playSeVer2( spep_2 + 200, 1210, "",spep_2 + 334, 14, 28, -1);
setStartTimeMs( SE029,  1100 );

--トランクス追う
SE030 = playSeVer2( spep_2 + 138, 1452, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 138, 1304, "", 0, 0, 0, -1);

--オーラ
SE032 = playSeVer2( spep_2 + 184, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 184, SE032, 63 );

--悟天気弾溜め
SE033 = playSeVer2( spep_2 + 202, 1209, "", 0, 0, 0, -1);

--オーラ
SE034 = playSeVer2( spep_2 + 208, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 208, SE034, 63 );
SE035 = playSeVer2( spep_2 + 232, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 232, SE035, 63 );
SE036 = playSeVer2( spep_2 + 256, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 256, SE036, 63 );
SE037 = playSeVer2( spep_2 + 280, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 280, SE037, 63 );

--悟天気弾発射
SE038 = playSeVer2( spep_2 + 302, 1133, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 302, 1146, "", 0, 0, 0, -1);

--気弾飛んでいく
SE040 = playSeVer2( spep_2 + 386, 1193, "",spep_2 + 678, 6, 186, -1);
setStartTimeMs( SE040,  1033 );
SE041 = playSeVer2( spep_2 + 332, 1215, "",spep_2 + 644, 0, 130, -1);
SE042 = playSeVer2( spep_2 + 370, 1390, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 370, SE042, 68 );

--オーラ
SE043 = playSeVer2( spep_2 + 410, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 410, SE043, 50 );
SE044 = playSeVer2( spep_2 + 434, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 434, SE044, 50 );
SE045 = playSeVer2( spep_2 + 458, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 458, SE045, 50 );

--気弾飛んでいく
SE046 = playSeVer2( spep_2 + 482, 1161, "",spep_2 + 720, 0, 140, -1);
setSeVolumeByWorkId( spep_2 + 482, SE046, 73 );

--オーラ
SE047 = playSeVer2( spep_2 + 482, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 482, SE047, 50 );

--トランクス避ける
SE048 = playSeVer2( spep_2 + 500, 1277, "", spep_2 + 590, 0, 10, 0.6);
SE049 = playSeVer2( spep_2 + 500, 37, "", 0, 0, 0, 0.6);
stopSeIfDoubleSpeed( spep_2 + 500, SE049 );
SE050 = playSeVer2( spep_2 + 500, 1004, "", 0, 0, 0, 0.6);

--オーラ
SE051 = playSeVer2( spep_2 + 506, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 506, SE051, 50 );
SE052 = playSeVer2( spep_2 + 530, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 530, SE052, 50 );
SE053 = playSeVer2( spep_2 + 554, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 554, SE053, 50 );

--トランクス気弾溜め
SE054 = playSeVer2( spep_2 + 562, 1296, "",spep_2 + 624, 0, 20, -1);
SE055 = playSeVer2( spep_2 + 562, 1204, "",spep_2 + 626, 0, 20, -1);

--オーラ
SE056 = playSeVer2( spep_2 + 578, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 578, SE056, 50 );
SE057 = playSeVer2( spep_2 + 602, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 602, SE057, 50 );

--トランクス気弾発射
SE058 = playSeVer2( spep_2 + 604, 1133, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 604, 1177, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 604, 1145, "", 0, 0, 0, -1);

--気弾飛んでいく２
SE061 = playSeVer2( spep_2 + 638, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 638, SE061, 211 );

--爆発
SE062 = playSeVer2( spep_2 + 718, 1159, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_2 + 754, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 724); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 864f -2f

end