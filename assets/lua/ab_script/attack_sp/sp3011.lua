--1033590:LR_超サイヤ人ゴッドベジータ(超極悪化)_超必殺技：ダークバーストキャノン
--sp_effect_a1_00535
--sp3011

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164485; --カットイン ef_001
SP_02  = 164486; --カード明け ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.72);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

else
    mirror = -1;

    --SP_01  = SP_01r; --敵側エフェクトがある場合のみ

end

------------------------------------------------------------------------------------------------------------
-- 共通演出
------------------------------------------------------------------------------------------------------------

setupMovie(0, SP_01, 0, 1);

spep_0 = 0;

-------------------------------------------------
-- カットイン
-------------------------------------------------
MAX_FRAME_0 = 126;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 40; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

ctgogo_x = 0; -- 演出によって白目にかからないように調整

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, ctgogo_x * mirror, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0 * mirror, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09 * mirror, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39 * mirror, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69 * mirror, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
--気弾溜め
SE002 = playSeVer2( spep_0 + 8, 1360, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE002, 138 );
setPitch( spep_0 + 8, SE002, -700 );
setTimeStretch( SE002, 0.53, 30, 4 );
SE003 = playSeVer2( spep_0 + 16, 1255, "",spep_0 + 150, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 76 );
SE004 = playSeVer2( spep_0 + 16, 1513, "",spep_0 + 148, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 16, SE004, 50 );
SE005 = playSeVer2( spep_0 + 18, 49, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 36, 1116, "",spep_0 + 80, 0, 20, -1);
SE007 = playSeVer2( spep_0 + 40, 49, "", 0, 0, 0, -1);
--顔カットイン
--SE008 = playSeVer2( spep_0 + 50, 1018, "", 0, 0, 0, -1);
--気弾溜め
SE009 = playSeVer2( spep_0 + 60, 49, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 80, 49, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 102, 49, "", 0, 0, 0, -1);
--カードカットイン
--SE012 = playSeVer2( spep_1 + 6, 1035, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 126

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前気弾溜め
SE013 = playSeVer2( spep_1 + 86, 1255, "",spep_2 + 76, 6, 26, -1);
setStartTimeMs( SE013, 967 );
SE014 = playSeVer2( spep_1 + 88, 1513, "",spep_2 + 70, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 88, SE014, 50 );
SE015 = playSeVer2( spep_1 + 90, 49, "", 0, 0, 0, -1);

-------------------------------------------------
-- カード明け
-------------------------------------------------
MAX_FRAME_2 = 338;

-- ** エフェクト等 ** --
--finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード明け(ef_002)
--setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
--setEffMoveKey( spep_2 + MAX_FRAME_2 - 178, finish_f, 0, 0 , 0);
--setEffScaleKey( spep_2 + 0, finish_f, 1.0 * mirror, 1.0);
--setEffScaleKey( spep_2 + MAX_FRAME_2 - 178, finish_f, 1.0 * mirror, 1.0);
--setEffRotateKey( spep_2 + 0, finish_f, 0);
--setEffRotateKey( spep_2 + MAX_FRAME_2 - 178, finish_f, 0);
--setEffAlphaKey( spep_2 + 0, finish_f, 255);
--setEffAlphaKey( spep_2 + MAX_FRAME_2 - 179, finish_f, 255);
--setEffAlphaKey( spep_2 + MAX_FRAME_2 - 178, finish_f, 0);

finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード明け(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 36 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 118 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_2 + 36 + OFFSET_X, 1, 117 );
changeAnimeBySide( spep_2 + 90 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 36 + OFFSET_X, 1, 684 * mirror, 26 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 684 * mirror, 26 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 654.4 * mirror, 20.1 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 654.4 * mirror, 20.1 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 609 * mirror, 29.7 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 609 * mirror, 29.7 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 589 * mirror, 35.2 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 589 * mirror, 35.2 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 551 * mirror, 12.9 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 551 * mirror, 12.9 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 520.9 * mirror, 29.3 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 520.9 * mirror, 29.3 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 505.1 * mirror, 28.9 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 505.1 * mirror, 28.9 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 478.6 * mirror, 26 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 478.6 * mirror, 26 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 457.1 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 457.1 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 419.9 * mirror, 25.9 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 419.9 * mirror, 25.9 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 398.4 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 398.4 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 361.2 * mirror, 25.9 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 361.2 * mirror, 25.9 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 339.7 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 339.7 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 302.6 * mirror, 25.9 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 302.6 * mirror, 25.9 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 281 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 281 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 243.9 * mirror, 25.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 243.9 * mirror, 25.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 222.3 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 222.3 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 185.2 * mirror, 25.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 185.2 * mirror, 25.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 163.7 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 163.7 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 155.9 * mirror, 25.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 155.9 * mirror, 25.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 163.7 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 163.7 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 155.9 * mirror, 25.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 155.9 * mirror, 25.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 163.7 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 163.7 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 155.9 * mirror, 25.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 155.9 * mirror, 25.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 163.7 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 163.7 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 155.9 * mirror, 25.9 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 155.9 * mirror, 25.9 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 163.7 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 163.7 * mirror, 16.2 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 5 * mirror, -1.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 5 * mirror, -1.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 12.8 * mirror, -11.6 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 12.8 * mirror, -11.6 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 5 * mirror, -1.8 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 5 * mirror, -1.8 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 12.8 * mirror, -11.6 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 12.8 * mirror, -11.6 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 5 * mirror, -1.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 5 * mirror, -1.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 12.8 * mirror, -11.6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 12.8 * mirror, -11.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 5 * mirror, -1.8 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 5 * mirror, -1.8 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 12.8 * mirror, -11.6 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 12.8 * mirror, -11.6 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 5 * mirror, -1.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 5 * mirror, -1.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 12.8 * mirror, -11.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 12.8 * mirror, -11.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 5 * mirror, -1.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 5 * mirror, -1.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 12.8 * mirror, -11.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 12.8 * mirror, -11.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 5 * mirror, -1.8 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 5 * mirror, -1.8 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 12.8 * mirror, -11.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 12.8 * mirror, -11.6 , 0 );

adjust_scale = 0.4;

setScaleKey( spep_2 + 36 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.49 * adjust_scale, 1.49 * adjust_scale );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.49 * adjust_scale, 1.49 * adjust_scale );

setRotateKey( spep_2 + 36 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 0 * mirror );

setBlendColor( spep_2 + 106 + OFFSET_X, 1, 3, 1.0, 0.6, 1.0, 0.1);
setBlendColor( spep_2 + 108 + OFFSET_X, 1, 3, 1.0, 0.6, 1.0, 0.2);
setBlendColor( spep_2 + 110 + OFFSET_X, 1, 3, 1.0, 0.6, 1.0, 0.3);
setBlendColor( spep_2 + 112 + OFFSET_X, 1, 3, 1.0, 0.6, 1.0, 0.4);
setBlendColor( spep_2 + 114 + OFFSET_X, 1, 3, 1.0, 0.6, 1.0, 0.5);
setBlendColor( spep_2 + 116 + OFFSET_X, 1, 3, 1.0, 0.6, 1.0, 0.6);

--敵の動き2
setDisp( spep_2 + 126 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 132 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_2 + 126 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_2 + 132 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 126 + OFFSET_X, 1, 113.8 * mirror, 46.7 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 113.8 * mirror, 46.7 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 231.9 * mirror, 45 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 231.9 * mirror, 45 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 221.8 * mirror, 44.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 221.8 * mirror, 44.7 , 0 );

setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.49 * adjust_scale, 1.49 * adjust_scale );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.49 * adjust_scale, 1.49 * adjust_scale );

setRotateKey( spep_2 + 126 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 0 * mirror );

setBlendColor( spep_2 + 126 + OFFSET_X, 1, 3, 1.0, 0.6, 1.0, 0.6);
setBlendColor( spep_2 + 128 + OFFSET_X, 1, 3, 1.0, 0.6, 1.0, 0.5);
setBlendColor( spep_2 + 130 + OFFSET_X, 1, 3, 0, 6, 0, 0);

-- ** 音 ** --
--発射前気弾溜め
SE016 = playSeVer2( spep_2 + 18, 49, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 38, 49, "", 0, 0, 0, -1);
--気弾発射
SE018 = playSeVer2( spep_2 + 34, 1027, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 34, 1193, "",spep_2 + 162, 0, 62, -1);
SE020 = playSeVer2( spep_2 + 34, 1022, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 64; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);

--stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--敵ヒットして気弾飛んでいく
SE021 = playSeVer2( spep_2 + 116, 1024, "",spep_2 + 198, 0, 44, -1);
SE022 = playSeVer2( spep_2 + 116, 1343, "",spep_2 + 280, 0, 52, -1);
SE023 = playSeVer2( spep_2 + 146, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 146, SE023, 186 );
--爆発
SE024 = playSeVer2( spep_2 + 204, 1069, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 222, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 216); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 - 2); -- 338