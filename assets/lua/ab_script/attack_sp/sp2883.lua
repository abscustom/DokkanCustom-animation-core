--1031520:UR_シャンパ_必殺技：破壊玉
--sp_effect_a2_00263
--sp2883

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163869; --気玉を集め、敵を狙うまで_手前 ef_001
SP_01b = 163870; --気玉を集め、敵を狙うまで_奥 ef_001b
SP_02  = 163873; --気玉なげつけ〜フィニッシュ_手前 ef_002
SP_02b = 163874; --気玉なげつけ〜フィニッシュ_奥 ef_002b

--エフェクト(敵)
SP_01r  = 163871; --気玉を集め、敵を狙うまで_手前 ef_001r
SP_01br = 163872; --気玉を集め、敵を狙うまで_奥 ef_001br
SP_02r  = 163875; --気玉なげつけ〜フィニッシュ_手前 ef_002r
SP_02br = 163876; --気玉なげつけ〜フィニッシュ_奥 ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 気玉を集め、敵を狙うまで
-------------------------------------------------
MAX_FRAME_0 = 442;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 気玉を集め、敵を狙うまで_手前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 気玉を集め、敵を狙うまで_奥(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 354;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -152, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -152, 515.5 , 0 );
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
--敵の動き1
setDisp( spep_0 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 122 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 60 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 60 + OFFSET_X, 1, 212.4, -257.8 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 212.4, -257.8 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 211.1, -257.5 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 211.1, -257.5 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 209.9, -257.2 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 209.9, -257.2 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 208.7, -256.9 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 208.7, -256.9 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 207.6, -256.6 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 207.6, -256.6 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 206.5, -256.3 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 206.5, -256.3 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 205.5, -256 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 205.5, -256 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 204.5, -255.8 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 204.5, -255.8 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 203.6, -255.6 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 203.6, -255.6 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 202.7, -255.4 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 202.7, -255.4 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 201.9, -255.2 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 201.9, -255.2 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 201.2, -255 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 201.2, -255 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 200.5, -254.8 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 200.5, -254.8 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 199.9, -254.6 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 199.9, -254.6 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 199.3, -254.5 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 199.3, -254.5 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 198.8, -254.3 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 198.8, -254.3 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 198.3, -254.2 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 198.3, -254.2 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 197.9, -254.1 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 197.9, -254.1 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 197.5, -254 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 197.5, -254 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 197.2, -254 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 197.2, -254 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 197, -253.9 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 197, -253.9 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 196.8, -253.8 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 196.8, -253.8 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 196.6, -253.8 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 196.6, -253.8 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 196.5, -253.8 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 196.5, -253.8 , 0 );

setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 60 + OFFSET_X, 1, 11.9 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, 11.9 );


--敵の動き2
setDisp( spep_0 + 296 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 358 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 296 + OFFSET_X, 1, 133.9, 63.2 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 133.9, 63.2 , 0 );

setScaleKey( spep_0 + 296 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.61, 0.61 );

setRotateKey( spep_0 + 296 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 476, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--画面遷移
SE003 = playSeVer2( spep_0 + 50, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE003, 59 );

--腕前に出す
SE004 = playSeVer2( spep_0 + 122, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE004, 71 );

--気弾溜め
SE005 = playSeVer2( spep_0 + 140, 1122, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE005, 71 );
setStartTimeMs( SE005,  333 );
SE006 = playSeVer2( spep_0 + 142, 1255, "",spep_0 + 472, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 142, SE006, 65 );
SE007 = playSeVer2( spep_0 + 142, 1257, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 168, 1371, "",spep_0 + 472, 24, 28, -1);
setStartTimeMs( SE008,  433 );
setPitch( spep_0 + 168, SE008, 500 );
setTimeStretch( SE008, 1.33, 30, 4 );

--腕前に突き出す
SE009 = playSeVer2( spep_0 + 292, 1004, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --442f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--発射前溜め
SE012 = playSeVer2( spep_1 + 76, 1371, "",spep_2 + 122, 10, 22, -1);
setSeVolumeByWorkId( spep_1 + 76, SE012, 114 );
setStartTimeMs( SE012,  1267 );
setPitch( spep_1 + 70, SE012, 500 );
setTimeStretch( SE012, 1.33, 30, 4 );
SE013 = playSeVer2( spep_1 + 76, 1255, "",spep_2 + 114, 10, 16, -1);
setSeVolumeByWorkId( spep_1 + 76, SE013, 68 );
setStartTimeMs( SE013,  733 );


-------------------------------------------------
-- 気玉なげつけ〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 298;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気玉なげつけ〜フィニッシュ_手前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気玉を集め、敵を狙うまで_奥(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 236 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 100 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 100 + OFFSET_X, 1, 227.6, 55.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 227.6, 55.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 243.2, 81.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 243.2, 81.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 197.9, 33.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 197.9, 33.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 218.3, 69.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 218.3, 69.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 241.7, 47.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 241.7, 47.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 219.8, 49.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 219.8, 49.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 233.6, 60.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 233.6, 60.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 225.6, 65.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 225.6, 65.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 226.6, 49.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 226.6, 49.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 226.6, 62.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 226.6, 62.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 226.6, 52.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 226.6, 52.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 227.6, 55.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 227.6, 55.4 , 0 );

setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.43, 0.43 );

setRotateKey( spep_2 + 100 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 10.2 );

-- ** 音 ** --
--振りかぶる
SE014 = playSeVer2( spep_2 + 28, 1116, "",spep_2 + 100, 0, 38, -1);
SE015 = playSeVer2( spep_2 + 32, 1117, "", 0, 0, 0, -1);

--気弾投げる
SE016 = playSeVer2( spep_2 + 88, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 88, SE016, 77 );
SE017 = playSeVer2( spep_2 + 88, 1027, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 88, 1021, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 114; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
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
SE019 = playSeVer2( spep_2 + 142, 1060, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 142, 1024, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 152); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 298f -2f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 気玉を集め、敵を狙うまで
-------------------------------------------------
MAX_FRAME_0 = 442;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 気玉を集め、敵を狙うまで_手前(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 気玉を集め、敵を狙うまで_奥(ef_001br)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 354;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -152, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -152, 515.5 , 0 );
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


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 122 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 60 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 60 + OFFSET_X, 1, 212.4, -257.8 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 212.4, -257.8 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 211.1, -257.5 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 211.1, -257.5 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 209.9, -257.2 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 209.9, -257.2 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 208.7, -256.9 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 208.7, -256.9 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 207.6, -256.6 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 207.6, -256.6 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 206.5, -256.3 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 206.5, -256.3 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 205.5, -256 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 205.5, -256 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 204.5, -255.8 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 204.5, -255.8 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 203.6, -255.6 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 203.6, -255.6 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 202.7, -255.4 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 202.7, -255.4 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 201.9, -255.2 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 201.9, -255.2 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 201.2, -255 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 201.2, -255 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 200.5, -254.8 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 200.5, -254.8 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 199.9, -254.6 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 199.9, -254.6 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 199.3, -254.5 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 199.3, -254.5 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 198.8, -254.3 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 198.8, -254.3 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 198.3, -254.2 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 198.3, -254.2 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 197.9, -254.1 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 197.9, -254.1 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 197.5, -254 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 197.5, -254 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 197.2, -254 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 197.2, -254 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 197, -253.9 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 197, -253.9 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 196.8, -253.8 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 196.8, -253.8 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 196.6, -253.8 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 196.6, -253.8 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 196.5, -253.8 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 196.5, -253.8 , 0 );

setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 60 + OFFSET_X, 1, 11.9 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, 11.9 );


--敵の動き2
setDisp( spep_0 + 296 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 358 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 296 + OFFSET_X, 1, 133.9, 63.2 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 133.9, 63.2 , 0 );

setScaleKey( spep_0 + 296 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.61, 0.61 );

setRotateKey( spep_0 + 296 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 476, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--画面遷移
SE003 = playSeVer2( spep_0 + 50, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE003, 59 );

--腕前に出す
SE004 = playSeVer2( spep_0 + 122, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE004, 71 );

--気弾溜め
SE005 = playSeVer2( spep_0 + 140, 1122, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE005, 71 );
setStartTimeMs( SE005,  333 );
SE006 = playSeVer2( spep_0 + 142, 1255, "",spep_0 + 472, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 142, SE006, 65 );
SE007 = playSeVer2( spep_0 + 142, 1257, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 168, 1371, "",spep_0 + 472, 24, 28, -1);
setStartTimeMs( SE008,  433 );
setPitch( spep_0 + 168, SE008, 500 );
setTimeStretch( SE008, 1.33, 30, 4 );

--腕前に突き出す
SE009 = playSeVer2( spep_0 + 292, 1004, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --442f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--発射前溜め
SE012 = playSeVer2( spep_1 + 76, 1371, "",spep_2 + 122, 10, 22, -1);
setSeVolumeByWorkId( spep_1 + 76, SE012, 114 );
setStartTimeMs( SE012,  1267 );
setPitch( spep_1 + 70, SE012, 500 );
setTimeStretch( SE012, 1.33, 30, 4 );
SE013 = playSeVer2( spep_1 + 76, 1255, "",spep_2 + 114, 10, 16, -1);
setSeVolumeByWorkId( spep_1 + 76, SE013, 68 );
setStartTimeMs( SE013,  733 );


-------------------------------------------------
-- 気玉なげつけ〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 298;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 気玉なげつけ〜フィニッシュ_手前(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 気玉を集め、敵を狙うまで_奥(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 236 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 100 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 100 + OFFSET_X, 1, 227.6, 55.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 227.6, 55.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 243.2, 81.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 243.2, 81.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 197.9, 33.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 197.9, 33.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 218.3, 69.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 218.3, 69.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 241.7, 47.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 241.7, 47.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 219.8, 49.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 219.8, 49.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 233.6, 60.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 233.6, 60.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 225.6, 65.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 225.6, 65.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 226.6, 49.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 226.6, 49.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 226.6, 62.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 226.6, 62.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 226.6, 52.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 226.6, 52.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 227.6, 55.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 227.6, 55.4 , 0 );

setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.43, 0.43 );

setRotateKey( spep_2 + 100 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 10.2 );

-- ** 音 ** --
--振りかぶる
SE014 = playSeVer2( spep_2 + 28, 1116, "",spep_2 + 100, 0, 38, -1);
SE015 = playSeVer2( spep_2 + 32, 1117, "", 0, 0, 0, -1);

--気弾投げる
SE016 = playSeVer2( spep_2 + 88, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 88, SE016, 77 );
SE017 = playSeVer2( spep_2 + 88, 1027, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 88, 1021, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 114; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
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
SE019 = playSeVer2( spep_2 + 142, 1060, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 142, 1024, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 152); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 298f -2f

end