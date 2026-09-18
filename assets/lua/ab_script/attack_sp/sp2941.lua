--4032310:LR_ジャイアントゴマー_超必殺技：ジャイアントコラープス
--sp_effect_a7_00075
--sp2941

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164285; --開始〜顔アップ ef_001
SP_01b = 164286; --開始〜顔アップ ef_001b
SP_02  = 164287; --目玉アップ〜衝撃波〜フィニッシュ ef_002
SP_02b = 164288; --目玉アップ〜衝撃波〜フィニッシュ ef_002b

--エフェクト(敵)
SP_02r  = 164289; --目玉アップ〜衝撃波〜フィニッシュ ef_002r


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


ENABLE_AUTO_TIME_STRETCH(0.7);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始〜顔アップ
-------------------------------------------------
MAX_FRAME_0 = 156;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始〜顔アップ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開始〜顔アップ(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


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
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 92 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 256.1, -196.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 256.4, -196.7 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 256.4, -196.7 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 256.5, -196.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 256.5, -196.9 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 256.8, -197.1 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 256.8, -197.1 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 257.1, -197.3 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 257.1, -197.3 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 257.5, -197.6 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 257.5, -197.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 257.8, -197.9 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 257.8, -197.9 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 258.2, -198.2 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 258.2, -198.2 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 258.7, -198.6 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 258.7, -198.6 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 259.2, -199 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 259.2, -199 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 259.7, -199.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 259.7, -199.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 260.2, -199.9 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 260.2, -199.9 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 260.8, -200.4 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 260.8, -200.4 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 261.4, -200.9 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 261.4, -200.9 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 262.1, -201.5 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 262.1, -201.5 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 262.8, -202.1 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 262.8, -202.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 263.5, -202.7 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 263.5, -202.7 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 264.3, -203.3 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 264.3, -203.3 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 265.1, -204 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 265.1, -204 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 266, -204.8 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 266, -204.8 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 266.8, -205.5 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 266.8, -205.5 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 267.7, -206.3 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 267.7, -206.3 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 268.7, -207.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 268.7, -207.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 269.7, -207.9 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 269.7, -207.9 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 270.5, -208.7 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 270.5, -208.7 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 271.4, -209.4 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 271.4, -209.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 272.3, -210.2 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 272.3, -210.2 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 273.1, -210.9 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 273.1, -210.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 273.9, -211.5 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 273.9, -211.5 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 274.6, -212.2 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 274.6, -212.2 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 275.4, -212.7 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 275.4, -212.7 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 276, -213.3 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 276, -213.3 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 276.6, -213.8 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 276.6, -213.8 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 277.3, -214.4 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 277.3, -214.4 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 277.8, -214.8 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 277.8, -214.8 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 278.3, -215.3 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 278.3, -215.3 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 278.8, -215.7 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 278.8, -215.7 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 279.3, -216.1 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 279.3, -216.1 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 279.7, -216.5 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 279.7, -216.5 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 280.1, -216.7 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 280.1, -216.7 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 280.5, -217 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 280.5, -217 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 280.8, -217.3 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 280.8, -217.3 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 281, -217.5 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 281, -217.5 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 281.3, -217.7 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 281.3, -217.7 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 281.5, -217.9 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 281.5, -217.9 , 0 );

setScaleKey( spep_0 + 0, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 1.65, 1.65 );

setRotateKey( spep_0 + 0, 1, 10 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, 10 );

setBlendColor( spep_0 + 0, 1, 2, 0.27, 0.0, 0.45, 0.4);
setBlendColor( spep_0 + 92 + OFFSET_X, 1, 2, 0, 0, 0, 0);


-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 182, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--顔カットイン
--SE003 = playSeVer2( spep_0 + 14, 1018, "", 0, 0, 0, -1);
--目玉光る
SE004 = playSeVer2( spep_0 + 116, 1460, "",spep_0 + 184, 12, 18, -1);
setStartTimeMs( SE004, 567 );
--画面遷移
SE005 = playSeVer2( spep_0 + 90, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE005, 76 );
--目玉光る
SE006 = playSeVer2( spep_0 + 116, 1307, "",spep_0 + 182, 0, 14, -1);
SE007 = playSeVer2( spep_0 + 126, 1221, "",spep_0 + 180, 0, 14, -1);
setPitch( spep_0 + 126, SE007, -700 );
setTimeStretch( SE007, 0.53, 30, 4 );
--カードカットイン
--SE008 = playSeVer2( spep_1 + 6, 1035, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 158  

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 目玉アップ〜衝撃波〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 570;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 目玉アップ〜衝撃波〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 目玉アップ〜衝撃波〜フィニッシュ(ef_002b)
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

setDisp( spep_2 + 262 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 400 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 262 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 262 + OFFSET_X, 1, 71.8, -107.5 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 71.8, -107.5 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 31.8, -87.5 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 31.8, -87.5 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 52.3, -107.7 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 52.3, -107.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 52.6, -107.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 52.6, -107.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -12.7, 35.9 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -12.7, 35.9 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -26.4, 53.8 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -26.4, 53.8 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -11.7, 69.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -11.7, 69.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -13.4, 67.5 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -13.4, 67.5 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -50.8, 68.9 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -50.8, 68.9 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -44.5, 60.7 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -44.5, 60.7 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -64.3, 58.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -64.3, 58.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -77.8, 77.6 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -77.8, 77.6 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -77.4, 77.3 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -77.4, 77.3 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -73, 73 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -73, 73 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -68.6, 78.7 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -68.6, 78.7 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -93, 71.6 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -93, 71.6 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -88.6, 77.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -88.6, 77.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -88.3, 77 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -88.3, 77 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -86, 72.7 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -86, 72.7 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -101.7, 80.2 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -101.7, 80.2 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -97.4, 77.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -97.4, 77.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -95.1, 81.5 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -95.1, 81.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -107.6, 84 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -107.6, 84 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -107.3, 83.7 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -107.3, 83.7 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -107.1, 87.3 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -107.1, 87.3 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -104.9, 85 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -104.9, 85 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -117.4, 89.3 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -117.4, 89.3 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -119.2, 84.9 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -119.2, 84.9 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -118.9, 84.6 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -118.9, 84.6 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -116.6, 90.2 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -116.6, 90.2 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -125.5, 92.7 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -125.5, 92.7 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -127.2, 96.3 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -127.2, 96.3 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -124.9, 91.8 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -124.9, 91.8 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -124.6, 91.5 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -124.6, 91.5 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -127.5, 94.8 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -127.5, 94.8 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -127.1, 90.3 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -127.1, 90.3 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -128.8, 93.9 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -128.8, 93.9 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -131.6, 94.1 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -131.6, 94.1 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -131.2, 93.7 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -131.2, 93.7 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -134.9, 95.3 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -134.9, 95.3 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -132.4, 92.9 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -132.4, 92.9 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -133.4, 93.6 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -133.4, 93.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -135, 91.3 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -135, 91.3 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -134.6, 90.9 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -134.6, 90.9 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -134.2, 94.6 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -134.2, 94.6 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -136.2, 95.2 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -136.2, 95.2 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -133.7, 102.9 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -133.7, 102.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -137.3, 100.3 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -137.3, 100.3 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -136.8, 99.9 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -136.8, 99.9 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -137.3, 98.6 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -137.3, 98.6 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -138.8, 94.1 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -138.8, 94.1 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -124.3, 85.7 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -124.3, 85.7 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -124.3, 71.5 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -124.3, 71.5 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -126.2, 76.5 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -126.2, 76.5 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -132.1, 82.7 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -132.1, 82.7 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -139.8, 72.8 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -139.8, 72.8 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -125.3, 87.1 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -125.3, 87.1 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -124.3, 80.4 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -124.3, 80.4 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -124.3, 80.6 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -124.3, 80.6 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -126.3, 86.7 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -126.3, 86.7 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -126.2, 86.7 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -126.2, 86.7 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -106.2, 92.7 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -106.2, 92.7 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -127, 72.4 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -127, 72.4 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -126.9, 73 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -126.9, 73 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -126.8, 73.6 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -126.8, 73.6 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -148.7, 66.3 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -148.7, 66.3 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -173.4, 87.2 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -173.4, 87.2 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -158.7, 69.2 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -158.7, 69.2 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -166.7, 69.2 , 0 );

setScaleKey( spep_2 + 262 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 0.16, 0.16 );

setRotateKey( spep_2 + 262 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, -79 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, -79 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -95 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, -95 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -239 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -239 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -262 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -262 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -286.8 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -286.8 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -291 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -291 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -335 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, -335 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -338 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -338 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -369 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -369 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -407 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -407 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -439 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, -439 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, -453 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, -453 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, -477 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, -477 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, -491 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, -491 );

setBlendColor( spep_2 + 262 + OFFSET_X, 1, 3, 1.0, 0.62, 0.97, 0.2);
setBlendColor( spep_2 + 400 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --

--目玉うごめく後半
SE009 = playSeVer2( spep_2 + 64, 1437, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE009, 71 );
setStartTimeMs( SE009, 2233 );
setPitch( spep_2 + 64, SE009, -1200 );
setTimeStretch( SE009, 0.2, 30, 4 );
--目玉うごめく
SE010 = playSeVer2( spep_2 + 2, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE010, 126 );
setPitch( spep_2 + 2, SE010, 200 );
setTimeStretch( SE010, 1.13, 30, 4 );
SE011 = playSeVer2( spep_2 + 2, 1306, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE011, 63 );
setPitch( spep_2 + 2, SE011, -1200 );
setTimeStretch( SE011, 0.2, 30, 4 );
SE012 = playSeVer2( spep_2 + 2, 1306, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE012, 71 );
SE013 = playSeVer2( spep_2 + 2, 231, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 2, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE014, 56 );
--目玉うごめく後半
SE015 = playSeVer2( spep_2 + 78, 1513, "",spep_2 + 192, 0, 46, -1);
setSeVolumeByWorkId( spep_2 + 78, SE015, 122 );
--光あふれる
SE016 = playSeVer2( spep_2 + 142, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 142, SE016, 120 );
setPitch( spep_2 + 142, SE016, -400 );
setTimeStretch( SE016, 0.73, 30, 4 );
SE017 = playSeVer2( spep_2 + 142, 1172, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 142, SE017, 63 );
setPitch( spep_2 + 142, SE017, -200 );
setTimeStretch( SE017, 0.87, 30, 4 );
--爆発する
SE018 = playSeVer2( spep_2 + 184, 1173, "",spep_2 + 304, 0, 58, -1);
SE019 = playSeVer2( spep_2 + 184, 1159, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 184, 1258, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 200; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
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

--敵吹き飛ぶ
SE021 = playSeVer2( spep_2 + 262, 1427, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 264, 1027, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 276, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 276, SE023, 65 );
--地響き
SE024 = playSeVer2( spep_2 + 302, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 302, SE024, 68 );
--ラスト爆発
SE025 = playSeVer2( spep_2 + 394, 1067, "", 0, 0, 0, -1);
--地響き
SE026 = playSeVer2( spep_2 + 394, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 394, SE026, 56 );
--目光る
SE027 = playSeVer2( spep_2 + 414, 1495, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 414, SE027, 25 );
--画面遷移
SE028 = playSeVer2( spep_2 + 444, 8, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 452); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 570-2

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始〜顔アップ
-------------------------------------------------
MAX_FRAME_0 = 156;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始〜顔アップ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開始〜顔アップ(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


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
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 92 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 18 );

setMoveKey( spep_0 + 0, 1, -256.1, -196.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -256.4, -196.7 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -256.4, -196.7 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -256.5, -196.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -256.5, -196.9 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -256.8, -197.1 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -256.8, -197.1 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -257.1, -197.3 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -257.1, -197.3 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -257.5, -197.6 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -257.5, -197.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -257.8, -197.9 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -257.8, -197.9 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -258.2, -198.2 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -258.2, -198.2 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -258.7, -198.6 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -258.7, -198.6 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -259.2, -199 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -259.2, -199 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -259.7, -199.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -259.7, -199.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -260.2, -199.9 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -260.2, -199.9 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -260.8, -200.4 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -260.8, -200.4 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -261.4, -200.9 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -261.4, -200.9 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -262.1, -201.5 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -262.1, -201.5 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -262.8, -202.1 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -262.8, -202.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -263.5, -202.7 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -263.5, -202.7 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -264.3, -203.3 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -264.3, -203.3 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -265.1, -204 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -265.1, -204 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -266, -204.8 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -266, -204.8 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -266.8, -205.5 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -266.8, -205.5 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -267.7, -206.3 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -267.7, -206.3 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -268.7, -207.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -268.7, -207.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -269.7, -207.9 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -269.7, -207.9 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -270.5, -208.7 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -270.5, -208.7 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -271.4, -209.4 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -271.4, -209.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -272.3, -210.2 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -272.3, -210.2 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -273.1, -210.9 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -273.1, -210.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -273.9, -211.5 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -273.9, -211.5 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -274.6, -212.2 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -274.6, -212.2 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -275.4, -212.7 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -275.4, -212.7 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -276, -213.3 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -276, -213.3 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -276.6, -213.8 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -276.6, -213.8 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -277.3, -214.4 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -277.3, -214.4 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -277.8, -214.8 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -277.8, -214.8 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -278.3, -215.3 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -278.3, -215.3 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -278.8, -215.7 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -278.8, -215.7 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -279.3, -216.1 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -279.3, -216.1 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -279.7, -216.5 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -279.7, -216.5 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -280.1, -216.7 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -280.1, -216.7 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -280.5, -217 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -280.5, -217 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -280.8, -217.3 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -280.8, -217.3 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -281, -217.5 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -281, -217.5 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -281.3, -217.7 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -281.3, -217.7 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -281.5, -217.9 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -281.5, -217.9 , 0 );

setScaleKey( spep_0 + 0, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 1.65, 1.65 );

setRotateKey( spep_0 + 0, 1, -10 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, -10 );

setBlendColor( spep_0 + 0, 1, 2, 0.27, 0.0, 0.45, 0.4);
setBlendColor( spep_0 + 92 + OFFSET_X, 1, 2, 0, 0, 0, 0);


-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 182, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--顔カットイン
--SE003 = playSeVer2( spep_0 + 14, 1018, "", 0, 0, 0, -1);
--目玉光る
SE004 = playSeVer2( spep_0 + 116, 1460, "",spep_0 + 184, 12, 18, -1);
setStartTimeMs( SE004, 567 );
--画面遷移
SE005 = playSeVer2( spep_0 + 90, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE005, 76 );
--目玉光る
SE006 = playSeVer2( spep_0 + 116, 1307, "",spep_0 + 182, 0, 14, -1);
SE007 = playSeVer2( spep_0 + 126, 1221, "",spep_0 + 180, 0, 14, -1);
setPitch( spep_0 + 126, SE007, -700 );
setTimeStretch( SE007, 0.53, 30, 4 );
--カードカットイン
--SE008 = playSeVer2( spep_1 + 6, 1035, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 158  

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 目玉アップ〜衝撃波〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 570;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 目玉アップ〜衝撃波〜フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 目玉アップ〜衝撃波〜フィニッシュ(ef_002b)
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

setDisp( spep_2 + 262 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 400 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 262 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 262 + OFFSET_X, 1, 71.8, -107.5 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 71.8, -107.5 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 31.8, -87.5 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 31.8, -87.5 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 52.3, -107.7 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 52.3, -107.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 52.6, -107.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 52.6, -107.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -12.7, 35.9 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -12.7, 35.9 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -26.4, 53.8 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -26.4, 53.8 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -11.7, 69.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -11.7, 69.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -13.4, 67.5 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -13.4, 67.5 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -50.8, 68.9 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -50.8, 68.9 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -44.5, 60.7 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -44.5, 60.7 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -64.3, 58.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -64.3, 58.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -77.8, 77.6 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -77.8, 77.6 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -77.4, 77.3 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -77.4, 77.3 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -73, 73 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -73, 73 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -68.6, 78.7 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -68.6, 78.7 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -93, 71.6 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -93, 71.6 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -88.6, 77.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -88.6, 77.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -88.3, 77 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -88.3, 77 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -86, 72.7 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -86, 72.7 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -101.7, 80.2 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -101.7, 80.2 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -97.4, 77.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -97.4, 77.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -95.1, 81.5 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -95.1, 81.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -107.6, 84 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -107.6, 84 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -107.3, 83.7 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -107.3, 83.7 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -107.1, 87.3 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -107.1, 87.3 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -104.9, 85 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -104.9, 85 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -117.4, 89.3 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -117.4, 89.3 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -119.2, 84.9 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -119.2, 84.9 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -118.9, 84.6 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -118.9, 84.6 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -116.6, 90.2 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -116.6, 90.2 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -125.5, 92.7 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -125.5, 92.7 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -127.2, 96.3 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -127.2, 96.3 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -124.9, 91.8 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -124.9, 91.8 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -124.6, 91.5 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -124.6, 91.5 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -127.5, 94.8 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -127.5, 94.8 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -127.1, 90.3 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -127.1, 90.3 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -128.8, 93.9 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -128.8, 93.9 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -131.6, 94.1 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -131.6, 94.1 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -131.2, 93.7 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -131.2, 93.7 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -134.9, 95.3 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -134.9, 95.3 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -132.4, 92.9 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -132.4, 92.9 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -133.4, 93.6 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -133.4, 93.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -135, 91.3 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -135, 91.3 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -134.6, 90.9 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -134.6, 90.9 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -134.2, 94.6 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -134.2, 94.6 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -136.2, 95.2 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -136.2, 95.2 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -133.7, 102.9 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -133.7, 102.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -137.3, 100.3 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -137.3, 100.3 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -136.8, 99.9 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -136.8, 99.9 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -137.3, 98.6 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -137.3, 98.6 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -138.8, 94.1 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -138.8, 94.1 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -124.3, 85.7 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -124.3, 85.7 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -124.3, 71.5 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -124.3, 71.5 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -126.2, 76.5 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -126.2, 76.5 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -132.1, 82.7 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -132.1, 82.7 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -139.8, 72.8 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -139.8, 72.8 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -125.3, 87.1 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -125.3, 87.1 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -124.3, 80.4 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -124.3, 80.4 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -124.3, 80.6 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -124.3, 80.6 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -126.3, 86.7 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -126.3, 86.7 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -126.2, 86.7 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -126.2, 86.7 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -106.2, 92.7 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -106.2, 92.7 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -127, 72.4 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -127, 72.4 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -126.9, 73 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -126.9, 73 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -126.8, 73.6 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -126.8, 73.6 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -148.7, 66.3 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -148.7, 66.3 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -173.4, 87.2 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -173.4, 87.2 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -158.7, 69.2 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -158.7, 69.2 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -166.7, 69.2 , 0 );

setScaleKey( spep_2 + 262 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 0.16, 0.16 );

setRotateKey( spep_2 + 262 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, -79 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, -79 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -95 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, -95 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -115.8 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -239 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -239 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -262 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -262 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -286.8 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -286.8 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -291 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -291 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -335 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, -335 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -338 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -338 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -369 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -369 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -407 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -407 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -439 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, -439 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, -453 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, -453 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, -477 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, -477 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, -491 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, -491 );

setBlendColor( spep_2 + 262 + OFFSET_X, 1, 3, 1.0, 0.62, 0.97, 0.2);
setBlendColor( spep_2 + 400 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--目玉うごめく後半
SE009 = playSeVer2( spep_2 + 64, 1437, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE009, 71 );
setStartTimeMs( SE009, 2233 );
setPitch( spep_2 + 64, SE009, -1200 );
setTimeStretch( SE009, 0.2, 30, 4 );
--目玉うごめく
SE010 = playSeVer2( spep_2 + 2, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE010, 126 );
setPitch( spep_2 + 2, SE010, 200 );
setTimeStretch( SE010, 1.13, 30, 4 );
SE011 = playSeVer2( spep_2 + 2, 1306, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE011, 63 );
setPitch( spep_2 + 2, SE011, -1200 );
setTimeStretch( SE011, 0.2, 30, 4 );
SE012 = playSeVer2( spep_2 + 2, 1306, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE012, 71 );
SE013 = playSeVer2( spep_2 + 2, 231, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 2, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE014, 56 );
--目玉うごめく後半
SE015 = playSeVer2( spep_2 + 78, 1513, "",spep_2 + 192, 0, 46, -1);
setSeVolumeByWorkId( spep_2 + 78, SE015, 122 );
--光あふれる
SE016 = playSeVer2( spep_2 + 142, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 142, SE016, 120 );
setPitch( spep_2 + 142, SE016, -400 );
setTimeStretch( SE016, 0.73, 30, 4 );
SE017 = playSeVer2( spep_2 + 142, 1172, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 142, SE017, 63 );
setPitch( spep_2 + 142, SE017, -200 );
setTimeStretch( SE017, 0.87, 30, 4 );
--爆発する
SE018 = playSeVer2( spep_2 + 184, 1173, "",spep_2 + 304, 0, 58, -1);
SE019 = playSeVer2( spep_2 + 184, 1159, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 184, 1258, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 200; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
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

--敵吹き飛ぶ
SE021 = playSeVer2( spep_2 + 262, 1427, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 264, 1027, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 276, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 276, SE023, 65 );
--地響き
SE024 = playSeVer2( spep_2 + 302, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 302, SE024, 68 );
--ラスト爆発
SE025 = playSeVer2( spep_2 + 394, 1067, "", 0, 0, 0, -1);
--地響き
SE026 = playSeVer2( spep_2 + 394, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 394, SE026, 56 );
--目光る
SE027 = playSeVer2( spep_2 + 414, 1495, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 414, SE027, 25 );
--画面遷移
SE028 = playSeVer2( spep_2 + 444, 8, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 452); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 570-2

end