--1031040:UR_マゲッタ_必殺技：ボルケーノエクスプロージョン
--sp_effect_a7_00071
--sp2860

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163762;  --ef_001  沸騰〜セリフ〜発射
SP_01b = 163764;  --ef_001b 沸騰〜セリフ〜発射
SP_02  = 163765;  --ef_002  着弾〜爆発
SP_02b = 163767;  --ef_002b 着弾〜爆発

--エフェクト(敵)
SP_01r = 163763;  --ef_001r 沸騰〜セリフ〜発射
SP_02r = 163766;  --ef_002r 着弾〜爆発


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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
--[[
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
]]
ENABLE_AUTO_TIME_STRETCH(0.72);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;
setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- 沸騰〜セリフ〜発射
-------------------------------------------------
MAX_FRAME_0 = 486;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 沸騰〜セリフ〜発射(ef_001)
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
spep_x = spep_0 + 222;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 68 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 194.7, 209.7 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 194.7, 210.1 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 194.7, 210.1 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 194.7, 210.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 194.7, 210.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 194.7, 210.8 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 194.7, 210.8 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 194.7, 211.2 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 194.7, 211.2 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 194.7, 211.6 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 194.7, 211.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 194.7, 211.9 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 194.7, 211.9 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 194.7, 212.3 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 194.7, 212.3 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 194.7, 212.7 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 194.7, 212.7 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 194.7, 213.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 194.7, 213.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 194.7, 213.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 194.7, 213.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 194.7, 213.8 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 194.7, 213.8 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 194.7, 214.2 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 194.7, 214.2 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 194.7, 214.6 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 194.7, 214.6 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 194.7, 214.9 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 194.7, 214.9 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 194.7, 215.3 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 194.7, 215.3 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 194.7, 215.7 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 194.7, 215.7 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 194.7, 216.1 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 194.7, 216.1 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 194.7, 216.4 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 194.7, 216.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 194.7, 216.8 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 194.7, 216.8 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 194.7, 217.2 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 194.7, 217.2 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 194.6, 217.6 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 194.6, 217.6 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 194.6, 217.9 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 194.6, 217.9 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 194.6, 218.3 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 194.6, 218.3 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 194.6, 218.7 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 194.6, 218.7 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 194.6, 219 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 194.6, 219 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 194.6, 219.4 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 194.6, 219.4 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 194.6, 219.8 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 194.6, 219.8 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 194.6, 220.2 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 194.6, 220.2 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 194.6, 220.5 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 194.6, 220.5 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 194.6, 220.9 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 194.6, 220.9 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 194.6, 221.3 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 194.6, 221.3 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 194.6, 221.7 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 194.6, 221.7 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 194.6, 222 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 194.6, 222 , 0 );

setScaleKey( spep_0 + 0, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 0.54, 0.54 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 68 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 512, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--炎包まれる
SE003 = playSeVer2( spep_0 + 50, 1229, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE003, 120 );
SE004 = playSeVer2( spep_0 + 56, 1226, "",spep_0 + 288, 0, 126, -1);
setSeVolumeByWorkId( spep_0 + 56, SE004, 61 );
SE005 = playSeVer2( spep_0 + 66, 1268, "",spep_0 + 254, 0, 88, -1);
SE006 = playSeVer2( spep_0 + 76, 1267, "",spep_0 + 266, 0, 92, -1);

--炎吹き出す
SE007 = playSeVer2( spep_0 + 100, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 100, SE007, 72 );
SE008 = playSeVer2( spep_0 + 110, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE008, 85 );

--環境音2
SE041 = playSeVer2( spep_0 + 200, 1269, "",spep_0 + 512, 10, 22, -1);
setSeVolumeByWorkId( spep_0 + 200, SE041, 25 );

--頭カタカタ動く
SE009 = playSeVer2( spep_0 + 158, 1222, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE009, 78 );
SE010 = playSeVer2( spep_0 + 162, 1220, "",spep_0 + 172, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 162, SE010, 94 );
SE011 = playSeVer2( spep_0 + 170, 1218, "",spep_0 + 208, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 170, SE011, 130 );
SE012 = playSeVer2( spep_0 + 174, 1220, "",spep_0 + 196, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 174, SE012, 79 );
setPitch( spep_0 + 174, SE012, -200 );
setTimeStretch( SE012, 0.87, 30, 4 );
SE013 = playSeVer2( spep_0 + 184, 1220, "",spep_0 + 206, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 184, SE013, 83 );
SE014 = playSeVer2( spep_0 + 194, 1218, "",spep_0 + 234, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 194, SE014, 123 );
SE015 = playSeVer2( spep_0 + 202, 1220, "",spep_0 + 224, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 202, SE015, 73 );
setPitch( spep_0 + 202, SE015, 100 );
setTimeStretch( SE015, 1.07, 30, 4 );
SE016 = playSeVer2( spep_0 + 214, 1220, "",spep_0 + 234, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 214, SE016, 82 );
SE018 = playSeVer2( spep_0 + 222, 1218, "",spep_0 + 260, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 222, SE018, 126 );
SE019 = playSeVer2( spep_0 + 224, 1220, "",spep_0 + 246, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 224, SE019, 71 );
setPitch( spep_0 + 224, SE019, -200 );
setTimeStretch( SE019, 0.87, 30, 4 );
SE020 = playSeVer2( spep_0 + 236, 1220, "",spep_0 + 264, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 236, SE020, 86 );
SE021 = playSeVer2( spep_0 + 246, 1218, "",spep_0 + 296, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 246, SE021, 120 );
SE022 = playSeVer2( spep_0 + 254, 1220, "",spep_0 + 286, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 254, SE022, 87 );
setPitch( spep_0 + 254, SE022, 100 );
setTimeStretch( SE022, 1.07, 30, 4 );

--湯気吹き出す
SE023 = playSeVer2( spep_0 + 292, 1258, "",spep_0 + 422, 0, 70, -1);
setSeVolumeByWorkId( spep_0 + 292, SE023, 42 );
SE024 = playSeVer2( spep_0 + 300, 1247, "",spep_0 + 384, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 300, SE024, 69 );
setPitch( spep_0 + 300, SE024, -600 );
setTimeStretch( SE024, 0.6, 30, 4 );

--口開く
SE025 = playSeVer2( spep_0 + 348, 91, "",spep_0 + 400, 0, 16, -1);
SE026 = playSeVer2( spep_0 + 378, 92, "",spep_0 + 424, 0, 20, -1);

--火炎出す
SE027 = playSeVer2( spep_0 + 430, 1258, "",spep_0 + 514, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 430, SE027, 71 );
SE028 = playSeVer2( spep_0 + 436, 1423, "",spep_0 + 512, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 436, SE028, 91 );
SE029 = playSeVer2( spep_0 + 436, 1424, "",spep_0 + 516, 0, 24, -1);
SE030 = playSeVer2( spep_0 + 436, 1268, "",spep_0 + 516, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 436, SE030, 133 );

-- ** 白フェード ** --
entryFade( spep_0 + 484, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --484f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 着弾〜爆発
-------------------------------------------------
MAX_FRAME_2 = 200;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 着弾〜爆発(ef_002)
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
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 44 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 102 )
changeAnime( spep_2 + 24 + OFFSET_X, 1, 107 )

setMoveKey( spep_2 + 0, 1, 193.7, -83.9 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 193.6, -84.6 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 193.6, -84.6 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 193.5, -85.4 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 193.5, -85.4 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 193.4, -86.1 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 193.4, -86.1 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 193.3, -86.9 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 193.3, -86.9 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 193.2, -87.6 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 193.2, -87.6 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 193.1, -88.3 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 193.1, -88.3 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 192.9, -89.1 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 192.9, -89.1 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 192.8, -89.8 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 192.8, -89.8 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 192.7, -90.6 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 192.7, -90.6 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 195.7, -87.9 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 195.7, -87.9 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 205.7, -87.9 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 205.7, -87.9 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 238.1, -23.8 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 238.1, -23.8 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 337.2, -55.5 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 337.2, -55.5 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 436.3, -87.2 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 436.3, -87.2 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 535.4, -118.9 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 535.4, -118.9 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 634.5, -150.5 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 634.5, -150.5 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 733.6, -182.2 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 733.6, -182.2 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 832.7, -213.9 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 832.7, -213.9 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 931.7, -245.6 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 931.7, -245.6 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 1030.8, -277.3 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 1030.8, -277.3 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 1129.9, -308.9 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 1129.9, -308.9 , 0 );

setScaleKey( spep_2 + 0, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 2.6, 2.6 );

setRotateKey( spep_2 + 0, 1, -5 );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 23 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 24 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, 24 );


--敵の動き2
setDisp( spep_2 + 70 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 98 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 70 + OFFSET_X, 1, 105 )

setMoveKey( spep_2 + 70 + OFFSET_X, 1, -379.2, -493.6 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -379.2, -493.6 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -299.2, -401.1 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -299.2, -401.1 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -227.6, -318.5 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -227.6, -318.5 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -164.4, -245.5 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -164.4, -245.5 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -109.7, -182.3 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -109.7, -182.3 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -63.3, -128.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -63.3, -128.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -25.4, -85 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -25.4, -85 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 4.1, -51 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 4.1, -51 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 25.1, -26.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 25.1, -26.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 37.8, -12.1 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 37.8, -12.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 42, -7.2 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 42, -7.2 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 24.9, 5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 24.9, 5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 42, -7.2 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 42, -7.2 , 0 );

setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 70 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 22.3 );


-- ** 音 ** --
--火炎出す２
SE032 = playSeVer2( spep_2 + 0, 1027, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 0, 1423, "",spep_2 + 184, 0, 80, -1);
SE034 = playSeVer2( spep_2 + 0, 1424, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 0, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE035, 74 );
SE036 = playSeVer2( spep_2 + 0, 1268, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE036, 130 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 14; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
stopSe( SP_dodge - 12, SE034, 0);
stopSe( SP_dodge - 12, SE035, 0);
stopSe( SP_dodge - 12, SE036, 0);
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
--爆発
SE037 = playSeVer2( spep_2 + 92, 1159, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 104, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 96 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム  200f -4


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;
setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- 沸騰〜セリフ〜発射
-------------------------------------------------
MAX_FRAME_0 = 486;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 沸騰〜セリフ〜発射(ef_001r)
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
spep_x = spep_0 + 222;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 68 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 0 );

setMoveKey( spep_0 + 0, 1, -194.7, 209.7 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -194.7, 210.1 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -194.7, 210.1 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -194.7, 210.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -194.7, 210.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -194.7, 210.8 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -194.7, 210.8 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -194.7, 211.2 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -194.7, 211.2 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -194.7, 211.6 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -194.7, 211.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -194.7, 211.9 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -194.7, 211.9 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -194.7, 212.3 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -194.7, 212.3 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -194.7, 212.7 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -194.7, 212.7 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -194.7, 213.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -194.7, 213.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -194.7, 213.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -194.7, 213.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -194.7, 213.8 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -194.7, 213.8 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -194.7, 214.2 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -194.7, 214.2 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -194.7, 214.6 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -194.7, 214.6 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -194.7, 214.9 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -194.7, 214.9 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -194.7, 215.3 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -194.7, 215.3 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -194.7, 215.7 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -194.7, 215.7 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -194.7, 216.1 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -194.7, 216.1 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -194.7, 216.4 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -194.7, 216.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -194.7, 216.8 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -194.7, 216.8 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -194.7, 217.2 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -194.7, 217.2 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -194.6, 217.6 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -194.6, 217.6 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -194.6, 217.9 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -194.6, 217.9 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -194.6, 218.3 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -194.6, 218.3 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -194.6, 218.7 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -194.6, 218.7 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -194.6, 219 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -194.6, 219 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -194.6, 219.4 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -194.6, 219.4 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -194.6, 219.8 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -194.6, 219.8 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -194.6, 220.2 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -194.6, 220.2 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -194.6, 220.5 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -194.6, 220.5 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -194.6, 220.9 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -194.6, 220.9 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -194.6, 221.3 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -194.6, 221.3 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -194.6, 221.7 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -194.6, 221.7 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -194.6, 222 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -194.6, 222 , 0 );

setScaleKey( spep_0 + 0, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 0.54, 0.54 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 68 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 512, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--炎包まれる
SE003 = playSeVer2( spep_0 + 50, 1229, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE003, 120 );
SE004 = playSeVer2( spep_0 + 56, 1226, "",spep_0 + 288, 0, 126, -1);
setSeVolumeByWorkId( spep_0 + 56, SE004, 61 );
SE005 = playSeVer2( spep_0 + 66, 1268, "",spep_0 + 254, 0, 88, -1);
SE006 = playSeVer2( spep_0 + 76, 1267, "",spep_0 + 266, 0, 92, -1);

--炎吹き出す
SE007 = playSeVer2( spep_0 + 100, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 100, SE007, 72 );
SE008 = playSeVer2( spep_0 + 110, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE008, 85 );

--環境音2
SE041 = playSeVer2( spep_0 + 200, 1269, "",spep_0 + 512, 10, 22, -1);
setSeVolumeByWorkId( spep_0 + 200, SE041, 25 );

--頭カタカタ動く
SE009 = playSeVer2( spep_0 + 158, 1222, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE009, 78 );
SE010 = playSeVer2( spep_0 + 162, 1220, "",spep_0 + 172, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 162, SE010, 94 );
SE011 = playSeVer2( spep_0 + 170, 1218, "",spep_0 + 208, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 170, SE011, 130 );
SE012 = playSeVer2( spep_0 + 174, 1220, "",spep_0 + 196, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 174, SE012, 79 );
setPitch( spep_0 + 174, SE012, -200 );
setTimeStretch( SE012, 0.87, 30, 4 );
SE013 = playSeVer2( spep_0 + 184, 1220, "",spep_0 + 206, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 184, SE013, 83 );
SE014 = playSeVer2( spep_0 + 194, 1218, "",spep_0 + 234, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 194, SE014, 123 );
SE015 = playSeVer2( spep_0 + 202, 1220, "",spep_0 + 224, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 202, SE015, 73 );
setPitch( spep_0 + 202, SE015, 100 );
setTimeStretch( SE015, 1.07, 30, 4 );
SE016 = playSeVer2( spep_0 + 214, 1220, "",spep_0 + 234, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 214, SE016, 82 );
SE018 = playSeVer2( spep_0 + 222, 1218, "",spep_0 + 260, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 222, SE018, 126 );
SE019 = playSeVer2( spep_0 + 224, 1220, "",spep_0 + 246, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 224, SE019, 71 );
setPitch( spep_0 + 224, SE019, -200 );
setTimeStretch( SE019, 0.87, 30, 4 );
SE020 = playSeVer2( spep_0 + 236, 1220, "",spep_0 + 264, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 236, SE020, 86 );
SE021 = playSeVer2( spep_0 + 246, 1218, "",spep_0 + 296, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 246, SE021, 120 );
SE022 = playSeVer2( spep_0 + 254, 1220, "",spep_0 + 286, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 254, SE022, 87 );
setPitch( spep_0 + 254, SE022, 100 );
setTimeStretch( SE022, 1.07, 30, 4 );

--湯気吹き出す
SE023 = playSeVer2( spep_0 + 292, 1258, "",spep_0 + 422, 0, 70, -1);
setSeVolumeByWorkId( spep_0 + 292, SE023, 42 );
SE024 = playSeVer2( spep_0 + 300, 1247, "",spep_0 + 384, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 300, SE024, 69 );
setPitch( spep_0 + 300, SE024, -600 );
setTimeStretch( SE024, 0.6, 30, 4 );

--口開く
SE025 = playSeVer2( spep_0 + 348, 91, "",spep_0 + 400, 0, 16, -1);
SE026 = playSeVer2( spep_0 + 378, 92, "",spep_0 + 424, 0, 20, -1);

--火炎出す
SE027 = playSeVer2( spep_0 + 430, 1258, "",spep_0 + 514, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 430, SE027, 71 );
SE028 = playSeVer2( spep_0 + 436, 1423, "",spep_0 + 512, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 436, SE028, 91 );
SE029 = playSeVer2( spep_0 + 436, 1424, "",spep_0 + 516, 0, 24, -1);
SE030 = playSeVer2( spep_0 + 436, 1268, "",spep_0 + 516, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 436, SE030, 133 );

-- ** 白フェード ** --
entryFade( spep_0 + 484, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --484f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 着弾〜爆発
-------------------------------------------------
MAX_FRAME_2 = 200;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 着弾〜爆発(ef_002r)
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
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 44 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, NaN );
changeAnime( spep_2 + 24 + OFFSET_X, 1, NaN );

setMoveKey( spep_2 + 0, 1, -193.7, -83.9 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, -193.6, -84.6 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, -193.6, -84.6 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -193.5, -85.4 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, -193.5, -85.4 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, -193.4, -86.1 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -193.4, -86.1 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -193.3, -86.9 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -193.3, -86.9 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -193.2, -87.6 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -193.2, -87.6 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -193.1, -88.3 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, -193.1, -88.3 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -192.9, -89.1 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -192.9, -89.1 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -192.8, -89.8 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -192.8, -89.8 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -192.7, -90.6 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -192.7, -90.6 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -195.7, -87.9 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -195.7, -87.9 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -205.7, -87.9 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -205.7, -87.9 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -238.1, -23.8 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -238.1, -23.8 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -337.2, -55.5 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -337.2, -55.5 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -436.3, -87.2 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -436.3, -87.2 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -535.4, -118.9 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -535.4, -118.9 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -634.5, -150.5 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -634.5, -150.5 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -733.6, -182.2 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -733.6, -182.2 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -832.7, -213.9 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -832.7, -213.9 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -931.7, -245.6 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -931.7, -245.6 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -1030.8, -277.3 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -1030.8, -277.3 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -1129.9, -308.9 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -1129.9, -308.9 , 0 );

setScaleKey( spep_2 + 0, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 2.6, 2.6 );

setRotateKey( spep_2 + 0, 1, 5 );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 23 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 24 + OFFSET_X, 1, -24 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -24 );

--敵の動き2
setDisp( spep_2 + 70 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 98 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 70 + OFFSET_X, 1, NaN );

setMoveKey( spep_2 + 70 + OFFSET_X, 1, 379.2, -493.6 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 379.2, -493.6 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 299.2, -401.1 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 299.2, -401.1 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 227.6, -318.5 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 227.6, -318.5 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 164.4, -245.5 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 164.4, -245.5 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 109.7, -182.3 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 109.7, -182.3 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 63.3, -128.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 63.3, -128.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 25.4, -85 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 25.4, -85 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -4.1, -51 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -4.1, -51 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -25.1, -26.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -25.1, -26.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -37.8, -12.1 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -37.8, -12.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -42, -7.2 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -42, -7.2 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -24.9, 5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -24.9, 5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -42, -7.2 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -42, -7.2 , 0 );

setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_2 + 70 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -22.3 );

-- ** 音 ** --
--火炎出す２
SE032 = playSeVer2( spep_2 + 0, 1027, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 0, 1423, "",spep_2 + 184, 0, 80, -1);
SE034 = playSeVer2( spep_2 + 0, 1424, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 0, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE035, 74 );
SE036 = playSeVer2( spep_2 + 0, 1268, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE036, 130 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 14; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
stopSe( SP_dodge - 12, SE034, 0);
stopSe( SP_dodge - 12, SE035, 0);
stopSe( SP_dodge - 12, SE036, 0);
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
--爆発
SE037 = playSeVer2( spep_2 + 92, 1159, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 104, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 96 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム  200f -4


end
