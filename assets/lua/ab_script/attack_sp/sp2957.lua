--1032460:LR_スーパーガーリックJr._超必殺技：デスインパクト
--sp_effect_b4_00406
--sp2957

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164303; --セリフカットイン ef_001
SP_02  = 164304; --ラリアット〜エルボー〜気弾発射〜爆発 ef_002
SP_02b = 164305; --ラリアット〜エルボー〜気弾発射〜爆発 ef_002b

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

ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- セリフカットイン(ef_001)
-------------------------------------------------
MAX_FRAME_0 = 100;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- セリフカットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 118, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--顔カットイン
--SE002 = playSeVer2( spep_0 + 14, 1018, "", 0, 0, 0, -1);
--向かってくる
SE003 = playSeVer2( spep_0 + 48, 1004, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 66, 1182, "",spep_0 + 120, 0, 12, -1);
SE005 = playSeVer2( spep_0 + 66, 1117, "",spep_0 + 118, 0, 10, -1);
SE006 = playSeVer2( spep_0 + 82, 1116, "",spep_0 + 116, 0, 14, -1);
--カードカットイン
--SE007 = playSeVer2( spep_1 + 4, 1035, "", 0, 0, 0, -1);



-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 100

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--向かっていく
SE008 = playSeVer2( spep_1 + 92, 1452, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 92, SE008, 84 );
SE009 = playSeVer2( spep_1 + 92, 1278, "",spep_1 + 168, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 92, SE009, 54 );

-------------------------------------------------
-- ラリアット〜エルボー〜気弾発射〜爆発
-------------------------------------------------
MAX_FRAME_2 = 728;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ラリアット〜エルボー〜気弾発射〜爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ラリアット〜エルボー〜気弾発射〜爆発(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_2 + 0, 1, 1);
setDisp( spep_2 + 126 + OFFSET_X , 1, 0);

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 + 30 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 70 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 112 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 0, 1, 221.7, -89.9 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 221.7, -89.9 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 279.8, -55.8 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 279.8, -55.8 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 301.5, -70.2 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 301.5, -70.2 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 265.4, -27.9 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 265.4, -27.9 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 294.1, -32.4 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 294.1, -32.4 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 278.3, -57.3 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 278.3, -57.3 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 300.4, -73.9 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 300.4, -73.9 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 270.2, -14.3 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 270.2, -14.3 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 324.8, -59 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 324.8, -59 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 308.7, -41 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 308.7, -41 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 310.7, -53.8 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 310.7, -53.8 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 261.3, -80.8 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 261.3, -80.8 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 316, -36.3 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 316, -36.3 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 290.2, -72.5 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 290.2, -72.5 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 292.2, -43.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 292.2, -43.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 261.3, -80.8 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 261.3, -80.8 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 316, -36.3 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 316, -36.3 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 199.2, -52.3 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 199.2, -52.3 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 100.2, -52.3 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 100.2, -52.3 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 1.1, -52.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 1.1, -52.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -97.9, -52.3 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -97.9, -52.3 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -197, -52.3 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -197, -52.3 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -296.1, -52.3 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -296.1, -52.3 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -395.1, -52.3 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -395.1, -52.3 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -494.2, -52.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -494.2, -52.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -593.3, -52.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -593.3, -52.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -692.3, -52.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -692.3, -52.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -791.4, -52.2 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -791.4, -52.2 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 99.9, -48.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 99.9, -48.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 63.8, -80.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 63.8, -80.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 91, -59.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 91, -59.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 37.2, -112 , 0 );

setScaleKey( spep_2 + 0, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.85, 0.85 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -103.8 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -103.8 );

setBlendColor( spep_2 + 30 + OFFSET_X, 1, 0, 1, 1, 1, 0.75);
setBlendColor( spep_2 + 34 + OFFSET_X, 1, 0, 0, 0, 0, 0);

setBlendColor( spep_2 + 44 + OFFSET_X, 1, 0, 1, 1, 1, 0.75);
setBlendColor( spep_2 + 48 + OFFSET_X, 1, 0, 0, 0, 0, 0);

--敵の動き2
setDisp( spep_2 + 134 + OFFSET_X , 1, 1);
setDisp( spep_2 + 144 + OFFSET_X , 1, 0);

changeAnime( spep_2 + 134 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 134 + OFFSET_X, 1, 84.5, -454.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 84.5, -454.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 121.5, -558.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 121.5, -558.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 121.5, -690.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 121.5, -690.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 121.5, -821.5 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 121.5, -821.5 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 121.5, -952.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 121.5, -952.8 , 0 );

setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 2.18, 2.18 );

setRotateKey( spep_2 + 134 + OFFSET_X, 1, -114 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -114 );

--敵の動き3
setDisp( spep_2 + 172 + OFFSET_X , 1, 1);
setDisp( spep_2 + 188 + OFFSET_X , 1, 0);

changeAnime( spep_2 + 172 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 172 + OFFSET_X, 1, 302.4, -35.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 302.4, -35.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 62.9, -74.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 62.9, -74.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 29.4, -80.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 29.4, -80.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 13.8, -82.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 13.8, -82.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 4, -84.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 4, -84.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -3.3, -85.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -3.3, -85.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -9.3, -86.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -9.3, -86.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -14.5, -87.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -14.5, -87.4 , 0 );

setScaleKey( spep_2 + 172 + OFFSET_X, 1, 8.36, 8.36 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 8.36, 8.36 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.65, 0.65 );

setRotateKey( spep_2 + 172 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 0 );

-- ** 音 ** --


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 16; --エンドフェイズのフレーム数を置き換える

setBlendColor( spep_2 + 30 + OFFSET_X, 1, 0, 0, 0, 0, 0);

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);

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

--ラリアット
SE010 = playSeVer2( spep_2 + 32, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE010, 80 );
SE011 = playSeVer2( spep_2 + 32, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE011, 80 );
--敵飛んでいく
SE012 = playSeVer2( spep_2 + 42, 1304, "",spep_2 + 186, 0, 54, -1);
setPitch( spep_2 + 42, SE012, -400 );
setTimeStretch( SE012, 0.73, 30, 4 );
--加速する
SE013 = playSeVer2( spep_2 + 56, 1235, "", 0, 0, 0, -1);
--敵飛んでいく
SE014 = playSeVer2( spep_2 + 80, 1422, "",spep_2 + 146, 0, 20, -1);
setPitch( spep_2 + 80, SE014, -400 );
setTimeStretch( SE014, 0.73, 30, 4 );
--裏肘鉄
SE015 = playSeVer2( spep_2 + 124, 1190, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 124, 1187, "", 0, 0, 0, -1);
--敵飛んでいく
SE017 = playSeVer2( spep_2 + 134, 1121, "",spep_2 + 222, 0, 40, -1);
--壁激突
SE018 = playSeVer2( spep_2 + 186, 1159, "", 0, 0, 0, -1);
--振りかぶる
SE019 = playSeVer2( spep_2 + 240, 1116, "",spep_2 + 284, 0, 24, -1);
--気弾溜め
SE020 = playSeVer2( spep_2 + 260, 1243, "",spep_2 + 426, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 260, SE020, 83 );
SE021 = playSeVer2( spep_2 + 260, 1252, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 260, 48, "",spep_2 + 320, 0, 26, -1);
setPitch( spep_2 + 260, SE022, -600 );
setTimeStretch( SE022, 0.6, 30, 4 );
SE023 = playSeVer2( spep_2 + 260, 1475, "", 0, 0, 0, -1);
--気弾発射前前兆
SE024 = playSeVer2( spep_2 + 368, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 368, SE024, 63 );
SE025 = playSeVer2( spep_2 + 368, 1201, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 376, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 376, SE026, 200 );
setPitch( spep_2 + 376, SE026, 300 );
setTimeStretch( SE026, 1.2, 30, 4 );
--気弾発射
SE027 = playSeVer2( spep_2 + 406, 1027, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 406, 1430, "",spep_2 + 544, 0, 24, -1);
SE029 = playSeVer2( spep_2 + 406, 1177, "",spep_2 + 546, 0, 22, -1);
SE030 = playSeVer2( spep_2 + 406, 1121, "",spep_2 + 546, 0, 22, -1);
setPitch( spep_2 + 406, SE030, -300 );
setTimeStretch( SE030, 0.8, 30, 4 );
--気弾飛んでいく
SE031 = playSeVer2( spep_2 + 446, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 446, SE031, 243 );
--爆発
SE032 = playSeVer2( spep_2 + 522, 1159, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 566, 1067, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 582, 1024, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 518); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 728-2

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- セリフカットイン(ef_001)
-------------------------------------------------
MAX_FRAME_0 = 100;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- セリフカットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 118, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--顔カットイン
--SE002 = playSeVer2( spep_0 + 14, 1018, "", 0, 0, 0, -1);
--向かってくる
SE003 = playSeVer2( spep_0 + 48, 1004, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 66, 1182, "",spep_0 + 120, 0, 12, -1);
SE005 = playSeVer2( spep_0 + 66, 1117, "",spep_0 + 118, 0, 10, -1);
SE006 = playSeVer2( spep_0 + 82, 1116, "",spep_0 + 116, 0, 14, -1);
--カードカットイン
--SE007 = playSeVer2( spep_1 + 4, 1035, "", 0, 0, 0, -1);



-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 100

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--向かっていく
SE008 = playSeVer2( spep_1 + 92, 1452, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 92, SE008, 84 );
SE009 = playSeVer2( spep_1 + 92, 1278, "",spep_1 + 168, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 92, SE009, 54 );

-------------------------------------------------
-- ラリアット〜エルボー〜気弾発射〜爆発
-------------------------------------------------
MAX_FRAME_2 = 728;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ラリアット〜エルボー〜気弾発射〜爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ラリアット〜エルボー〜気弾発射〜爆発(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_2 + 0, 1, 1);
setDisp( spep_2 + 126 + OFFSET_X , 1, 0);

changeAnime( spep_2 + 0, 1, 4 );
changeAnime( spep_2 + 30 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 70 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 112 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 0, 1, -221.7, -89.9 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -221.7, -89.9 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -279.8, -55.8 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -279.8, -55.8 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -301.5, -70.2 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -301.5, -70.2 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -265.4, -27.9 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -265.4, -27.9 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -294.1, -32.4 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -294.1, -32.4 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -278.3, -57.3 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -278.3, -57.3 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -300.4, -73.9 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -300.4, -73.9 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -270.2, -14.3 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -270.2, -14.3 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -324.8, -59 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -324.8, -59 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -308.7, -41 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -308.7, -41 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -310.7, -53.8 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -310.7, -53.8 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -261.3, -80.8 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -261.3, -80.8 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -316, -36.3 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -316, -36.3 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -290.2, -72.5 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -290.2, -72.5 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -292.2, -43.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -292.2, -43.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -261.3, -80.8 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -261.3, -80.8 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -316, -36.3 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -316, -36.3 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -199.2, -52.3 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -199.2, -52.3 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -100.2, -52.3 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -100.2, -52.3 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -1.1, -52.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -1.1, -52.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 97.9, -52.3 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 97.9, -52.3 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 197, -52.3 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 197, -52.3 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 296.1, -52.3 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 296.1, -52.3 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 395.1, -52.3 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 395.1, -52.3 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 494.2, -52.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 494.2, -52.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 593.3, -52.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 593.3, -52.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 692.3, -52.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 692.3, -52.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 791.4, -52.2 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 791.4, -52.2 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -99.9, -48.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -99.9, -48.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -63.8, -80.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -63.8, -80.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -91, -59.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -91, -59.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -37.2, -112 , 0 );

setScaleKey( spep_2 + 0, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.85, 0.85 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 103.8 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 103.8 );

setBlendColor( spep_2 + 30 + OFFSET_X, 1, 0, 1, 1, 1, 0.75);
setBlendColor( spep_2 + 34 + OFFSET_X, 1, 0, 0, 0, 0, 0);

setBlendColor( spep_2 + 44 + OFFSET_X, 1, 0, 1, 1, 1, 0.75);
setBlendColor( spep_2 + 48 + OFFSET_X, 1, 0, 0, 0, 0, 0);

--敵の動き2
setDisp( spep_2 + 134 + OFFSET_X , 1, 1);
setDisp( spep_2 + 144 + OFFSET_X , 1, 0);

changeAnime( spep_2 + 134 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 134 + OFFSET_X, 1, -84.5, -454.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -84.5, -454.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -121.5, -558.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -121.5, -558.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -121.5, -690.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -121.5, -690.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -121.5, -821.5 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -121.5, -821.5 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -121.5, -952.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -121.5, -952.8 , 0 );

setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 2.18, 2.18 );

setRotateKey( spep_2 + 134 + OFFSET_X, 1, 114 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 114 );

--敵の動き3
setDisp( spep_2 + 172 + OFFSET_X , 1, 1);
setDisp( spep_2 + 188 + OFFSET_X , 1, 0);

changeAnime( spep_2 + 172 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 172 + OFFSET_X, 1, -302.4, -35.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -302.4, -35.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -62.9, -74.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -62.9, -74.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -29.4, -80.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -29.4, -80.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -13.8, -82.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -13.8, -82.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -4, -84.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -4, -84.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 3.3, -85.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 3.3, -85.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 9.3, -86.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 9.3, -86.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 14.5, -87.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 14.5, -87.4 , 0 );

setScaleKey( spep_2 + 172 + OFFSET_X, 1, 8.36, 8.36 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 8.36, 8.36 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.65, 0.65 );

setRotateKey( spep_2 + 172 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 0 );

-- ** 音 ** --


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 16; --エンドフェイズのフレーム数を置き換える

setBlendColor( spep_2 + 30 + OFFSET_X, 1, 0, 0, 0, 0, 0);

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);

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

--ラリアット
SE010 = playSeVer2( spep_2 + 32, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE010, 80 );
SE011 = playSeVer2( spep_2 + 32, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE011, 80 );
--敵飛んでいく
SE012 = playSeVer2( spep_2 + 42, 1304, "",spep_2 + 186, 0, 54, -1);
setPitch( spep_2 + 42, SE012, -400 );
setTimeStretch( SE012, 0.73, 30, 4 );
--加速する
SE013 = playSeVer2( spep_2 + 56, 1235, "", 0, 0, 0, -1);
--敵飛んでいく
SE014 = playSeVer2( spep_2 + 80, 1422, "",spep_2 + 146, 0, 20, -1);
setPitch( spep_2 + 80, SE014, -400 );
setTimeStretch( SE014, 0.73, 30, 4 );
--裏肘鉄
SE015 = playSeVer2( spep_2 + 124, 1190, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 124, 1187, "", 0, 0, 0, -1);
--敵飛んでいく
SE017 = playSeVer2( spep_2 + 134, 1121, "",spep_2 + 222, 0, 40, -1);
--壁激突
SE018 = playSeVer2( spep_2 + 186, 1159, "", 0, 0, 0, -1);
--振りかぶる
SE019 = playSeVer2( spep_2 + 240, 1116, "",spep_2 + 284, 0, 24, -1);
--気弾溜め
SE020 = playSeVer2( spep_2 + 260, 1243, "",spep_2 + 426, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 260, SE020, 83 );
SE021 = playSeVer2( spep_2 + 260, 1252, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 260, 48, "",spep_2 + 320, 0, 26, -1);
setPitch( spep_2 + 260, SE022, -600 );
setTimeStretch( SE022, 0.6, 30, 4 );
SE023 = playSeVer2( spep_2 + 260, 1475, "", 0, 0, 0, -1);
--気弾発射前前兆
SE024 = playSeVer2( spep_2 + 368, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 368, SE024, 63 );
SE025 = playSeVer2( spep_2 + 368, 1201, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 376, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 376, SE026, 200 );
setPitch( spep_2 + 376, SE026, 300 );
setTimeStretch( SE026, 1.2, 30, 4 );
--気弾発射
SE027 = playSeVer2( spep_2 + 406, 1027, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 406, 1430, "",spep_2 + 544, 0, 24, -1);
SE029 = playSeVer2( spep_2 + 406, 1177, "",spep_2 + 546, 0, 22, -1);
SE030 = playSeVer2( spep_2 + 406, 1121, "",spep_2 + 546, 0, 22, -1);
setPitch( spep_2 + 406, SE030, -300 );
setTimeStretch( SE030, 0.8, 30, 4 );
--気弾飛んでいく
SE031 = playSeVer2( spep_2 + 446, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 446, SE031, 243 );
--爆発
SE032 = playSeVer2( spep_2 + 522, 1159, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 566, 1067, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 582, 1024, "", 0, 0, 0, -1);



-- ** ダメージ表示 ** --
dealDamage( spep_2 + 518); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 728-2


end