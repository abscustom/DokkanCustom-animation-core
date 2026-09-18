--1029440:LR_伝説の超サイヤ人ブロリー_必殺技：サベージブラスター
--sp_effect_a2_00243
--sp2755

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163142;  -- 開始～気弾発射（カットイン前まで）ef_001
SP_01b = 163143;  -- 開始～気弾発射（カットイン前まで）ef_001b
SP_02 = 163146;  -- 手を前に出す～フィニッシュef_002

--エフェクト(敵)
SP_01r = 163144;  -- 開始～気弾発射（カットイン前まで）ef_001r
SP_01br = 163145;  -- 開始～気弾発射（カットイン前まで）ef_001br
SP_02r = 163147;  -- 手を前に出す～フィニッシュef_002


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

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;
        spep_1 = spep_0 + 304;
        spep_2 = spep_1 + 94;

        timing_skip = 418;

        skipFrame(0, spep_2 + timing_skip );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --気弾飛んでいく
        SE058 = playSeVer2( spep_2 + 418 +3, 1406, "",spep_2 + 494, 0, 22, -1);
        setSeVolumeByWorkId( spep_2 + 418 +3, SE058, 141 );

        --連続爆発
        SE059 = playSeVer2( spep_2 + 418 +3, 1159, "", 0, 0, 0, -1);

    else end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開始～気弾発射（カットイン前まで）
-------------------------------------------------
MAX_FRAME_0 = 304;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始～気弾発射（カットイン前まで）(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開始～気弾発射（カットイン前まで）(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --

setDisp( spep_0 + 206 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 256 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 206 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 206 + OFFSET_X, 1, 70.7, -349.5 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 70.7, -349.5 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 70.2, -347.1 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 70.2, -347.1 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 69.5, -343.5 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 69.5, -343.5 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 68.6, -338.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 68.6, -338.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 67.3, -332.2 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 67.3, -332.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 65.8, -324 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 65.8, -324 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 63.8, -313.7 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 63.8, -313.7 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 61.4, -300.9 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 61.4, -300.9 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 58.4, -285.1 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 58.4, -285.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 54.2, -264.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 54.2, -264.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 48.3, -237.5 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 48.3, -237.5 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 31.3, -155 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 31.3, -155 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 4, -15.7 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 4, -15.7 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -2.6, 19.1 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -2.6, 19.1 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -5.7, 30 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -5.7, 30 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -8.5, 39.2 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -8.5, 39.2 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -10.7, 46.5 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -10.7, 46.5 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -12.4, 52.4 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -12.4, 52.4 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -13.8, 56.8 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -13.8, 56.8 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -14.8, 59.9 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -14.8, 59.9 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -15.1, 61 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -15.1, 61 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -14.2, 57.6 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -14.2, 57.6 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -13.6, 56 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -13.6, 56 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -15.7, 62.1 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -15.7, 62.1 , 0 );

setScaleKey( spep_0 + 206 + OFFSET_X, 1, 9.96, 9.96 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 9.96, 9.96 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 9.86, 9.86 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 9.86, 9.86 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 9.72, 9.72 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 9.72, 9.72 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 9.52, 9.52 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 9.52, 9.52 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 9.26, 9.26 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 9.26, 9.26 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 8.93, 8.93 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 8.93, 8.93 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 8.52, 8.52 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 8.52, 8.52 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 8.01, 8.01 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 8.01, 8.01 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 7.37, 7.37 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 7.37, 7.37 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 6.57, 6.57 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 6.57, 6.57 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 6.09, 6.09 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 6.09, 6.09 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 0.43, 0.43 );

setRotateKey( spep_0 + 206 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -83.2 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -83.2 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -91.7 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -91.7 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -111.3 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -111.3 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -127.5 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, -127.5 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -140.6 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -140.6 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -150.9 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -150.9 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -158.7 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -158.7 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -164.2 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -164.2 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -166.2 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -166.2 );

setBlendColor( spep_0 + 206 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_0 + 250 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_0 + 256 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_0 + 258 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--気弾溜め
SE001 = playSeVer2( spep_0 + 0, 1274, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1443, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 146 );
SE003 = playSeVer2( spep_0 + 20, 1442, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 170 );

--拳にぎる
SE004 = playSeVer2( spep_0 + 34, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE004, 63 );

--気弾溜め
SE005 = playSeVer2( spep_0 + 76, 1296, "",spep_0 + 152, 0, 28, -1);

--気弾発射
SE006 = playSeVer2( spep_0 + 112, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE006, 75 );
SE007 = playSeVer2( spep_0 + 112, 1193, "",spep_0 + 286, 0, 26, -1);
SE008 = playSeVer2( spep_0 + 112, 1423, "",spep_0 + 312, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 112, SE008, 72 );
SE009 = playSeVer2( spep_0 + 112, 1204, "",spep_0 + 290, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 112, SE009, 146 );
setPitch( spep_0 + 112, SE009, 500 );
setTimeStretch( SE009, 1.33, 30, 4 );
SE010 = playSeVer2( spep_0 + 112, 1252, "",spep_0 + 290, 0, 34, -1);
SE011 = playSeVer2( spep_0 + 112, 1161, "",spep_0 + 276, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 112, SE011, 73 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 180; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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

--気弾飛んでいく
SE012 = playSeVer2( spep_0 + 188, 1022, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 200, 1027, "", 0, 0, 0, -1);

--壁激突
SE014 = playSeVer2( spep_0 + 240, 1159, "",spep_0 + 326, 0, 18, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 304F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--腕前に出す
SE016 = playSeVer2( spep_1 + 96, 1004, "", 0, 0, 0, -1);

-------------------------------------------------
-- 手を前に出す～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 596;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 手を前に出す～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 52;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--腕前に出す
SE017 = playSeVer2( spep_2 + 0, 1006, "", 0, 0, 0, -1);

--気弾発射１
SE019 = playSeVer2( spep_2 + 120, 1202, "", 0, 4, 0, -1);
setStartTimeMs( SE019,  300 );
SE020 = playSeVer2( spep_2 + 120, 1016, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 120, 1201, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 120, 1255, "",spep_2 + 174, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 120, SE022, 127 );

--爆発
SE023 = playSeVer2( spep_2 + 148, 1011, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 158, 1023, "", 0, 0, 0, -1);

--気弾発射２
SE025 = playSeVer2( spep_2 + 180, 1202, "", 0, 4, 0, -1);
setStartTimeMs( SE025,  300 );

--気弾発射３
SE026 = playSeVer2( spep_2 + 198, 1202, "", 0, 4, 0, -1);
setStartTimeMs( SE026,  300 );

--気弾発射２
SE027 = playSeVer2( spep_2 + 182, 1016, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 182, 1201, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 182, 1255, "",spep_2 + 236, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 182, SE029, 127 );

--爆発
SE030 = playSeVer2( spep_2 + 198, 1011, "", 0, 0, 0, -1);

--気弾発射３
SE031 = playSeVer2( spep_2 + 200, 1016, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 200, 1201, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 200, 1255, "",spep_2 + 254, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 200, SE033, 135 );

--爆発
SE034 = playSeVer2( spep_2 + 216, 1024, "", 0, 0, 0, -1);

--気弾発射４
SE035 = playSeVer2( spep_2 + 236, 1202, "", 0, 4, 0, -1);
setStartTimeMs( SE035,  300 );
SE036 = playSeVer2( spep_2 + 236, 1016, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 236, 1201, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 236, 1255, "",spep_2 + 290, 0, 20, -1);

--気弾発射5
SE039 = playSeVer2( spep_2 + 274, 1202, "", 0, 4, 0, -1);
setStartTimeMs( SE039,  300 );

--連続爆発
SE040 = playSeVer2( spep_2 + 264, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 264, SE040, 71 );

--気弾発射５
SE041 = playSeVer2( spep_2 + 274, 1016, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 274, 1201, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 274, 1255, "",spep_2 + 328, 0, 20, -1);

--気弾発射６
SE044 = playSeVer2( spep_2 + 302, 1202, "", 0, 4, 0, -1);
setStartTimeMs( SE044,  300 );
SE045 = playSeVer2( spep_2 + 304, 1016, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 304, 1201, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 304, 1255, "",spep_2 + 358, 0, 20, -1);

--気弾発射７
SE048 = playSeVer2( spep_2 + 336, 1202, "", 0, 4, 0, -1);
setStartTimeMs( SE048,  300 );

--連続爆発
SE049 = playSeVer2( spep_2 + 318, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 318, SE049, 71 );

--気弾発射７
SE050 = playSeVer2( spep_2 + 338, 1016, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 338, 1201, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 338, 1255, "",spep_2 + 392, 0, 20, -1);

--気弾発射8
SE053 = playSeVer2( spep_2 + 376, 1202, "", 0, 4, 0, -1);
setStartTimeMs( SE053,  300 );

--連続爆発
SE054 = playSeVer2( spep_2 + 364, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 364, SE054, 67 );

--気弾発射８
SE055 = playSeVer2( spep_2 + 378, 1016, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 378, 1201, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 378, 1255, "",spep_2 + 432, 0, 20, -1);

--気弾飛んでいく
SE058 = playSeVer2( spep_2 + 396, 1406, "",spep_2 + 494, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 396, SE058, 141 );

--連続爆発
SE059 = playSeVer2( spep_2 + 406, 1159, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 446, 1188, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_2 + 450, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 482); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 終了フレーム --594F - 2

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開始～気弾発射（カットイン前まで）
-------------------------------------------------
MAX_FRAME_0 = 304;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 開始～気弾発射（カットイン前まで）(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 開始～気弾発射（カットイン前まで）(ef_001br)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --

setDisp( spep_0 + 206 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 256 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 206 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 206 + OFFSET_X, 1, 70.7, -349.5 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 70.7, -349.5 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 70.2, -347.1 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 70.2, -347.1 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 69.5, -343.5 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 69.5, -343.5 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 68.6, -338.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 68.6, -338.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 67.3, -332.2 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 67.3, -332.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 65.8, -324 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 65.8, -324 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 63.8, -313.7 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 63.8, -313.7 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 61.4, -300.9 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 61.4, -300.9 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 58.4, -285.1 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 58.4, -285.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 54.2, -264.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 54.2, -264.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 48.3, -237.5 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 48.3, -237.5 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 31.3, -155 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 31.3, -155 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 4, -15.7 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 4, -15.7 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -2.6, 19.1 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -2.6, 19.1 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -5.7, 30 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -5.7, 30 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -8.5, 39.2 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -8.5, 39.2 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -10.7, 46.5 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -10.7, 46.5 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -12.4, 52.4 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -12.4, 52.4 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -13.8, 56.8 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -13.8, 56.8 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -14.8, 59.9 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -14.8, 59.9 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -15.1, 61 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -15.1, 61 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -14.2, 57.6 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -14.2, 57.6 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -13.6, 56 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -13.6, 56 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -15.7, 62.1 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -15.7, 62.1 , 0 );

setScaleKey( spep_0 + 206 + OFFSET_X, 1, 9.96, 9.96 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 9.96, 9.96 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 9.86, 9.86 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 9.86, 9.86 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 9.72, 9.72 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 9.72, 9.72 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 9.52, 9.52 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 9.52, 9.52 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 9.26, 9.26 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 9.26, 9.26 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 8.93, 8.93 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 8.93, 8.93 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 8.52, 8.52 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 8.52, 8.52 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 8.01, 8.01 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 8.01, 8.01 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 7.37, 7.37 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 7.37, 7.37 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 6.57, 6.57 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 6.57, 6.57 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 6.09, 6.09 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 6.09, 6.09 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 0.43, 0.43 );

setRotateKey( spep_0 + 206 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -83.2 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -83.2 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -91.7 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -91.7 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -111.3 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -111.3 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -127.5 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, -127.5 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -140.6 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -140.6 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -150.9 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -150.9 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -158.7 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -158.7 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -164.2 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -164.2 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -166.2 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -166.2 );

setBlendColor( spep_0 + 206 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_0 + 250 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_0 + 256 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_0 + 258 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--気弾溜め
SE001 = playSeVer2( spep_0 + 0, 1274, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1443, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 146 );
SE003 = playSeVer2( spep_0 + 20, 1442, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 170 );

--拳にぎる
SE004 = playSeVer2( spep_0 + 34, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE004, 63 );

--気弾溜め
SE005 = playSeVer2( spep_0 + 76, 1296, "",spep_0 + 152, 0, 28, -1);

--気弾発射
SE006 = playSeVer2( spep_0 + 112, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE006, 75 );
SE007 = playSeVer2( spep_0 + 112, 1193, "",spep_0 + 286, 0, 26, -1);
SE008 = playSeVer2( spep_0 + 112, 1423, "",spep_0 + 312, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 112, SE008, 72 );
SE009 = playSeVer2( spep_0 + 112, 1204, "",spep_0 + 290, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 112, SE009, 146 );
setPitch( spep_0 + 112, SE009, 500 );
setTimeStretch( SE009, 1.33, 30, 4 );
SE010 = playSeVer2( spep_0 + 112, 1252, "",spep_0 + 290, 0, 34, -1);
SE011 = playSeVer2( spep_0 + 112, 1161, "",spep_0 + 276, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 112, SE011, 73 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 180; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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

--気弾飛んでいく
SE012 = playSeVer2( spep_0 + 188, 1022, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 200, 1027, "", 0, 0, 0, -1);

--壁激突
SE014 = playSeVer2( spep_0 + 240, 1159, "",spep_0 + 326, 0, 18, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 304F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--腕前に出す
SE016 = playSeVer2( spep_1 + 96, 1004, "", 0, 0, 0, -1);

-------------------------------------------------
-- 手を前に出す～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 596;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x80, -1, 0, 0, 0); -- 手を前に出す～フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 52;

-- ** 顔カットイン ** --
--[[
-peff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--腕前に出す
SE017 = playSeVer2( spep_2 + 0, 1006, "", 0, 0, 0, -1);

--気弾発射１
SE019 = playSeVer2( spep_2 + 120, 1202, "", 0, 4, 0, -1);
setStartTimeMs( SE019,  300 );
SE020 = playSeVer2( spep_2 + 120, 1016, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 120, 1201, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 120, 1255, "",spep_2 + 174, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 120, SE022, 127 );

--爆発
SE023 = playSeVer2( spep_2 + 148, 1011, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 158, 1023, "", 0, 0, 0, -1);

--気弾発射２
SE025 = playSeVer2( spep_2 + 180, 1202, "", 0, 4, 0, -1);
setStartTimeMs( SE025,  300 );

--気弾発射３
SE026 = playSeVer2( spep_2 + 198, 1202, "", 0, 4, 0, -1);
setStartTimeMs( SE026,  300 );

--気弾発射２
SE027 = playSeVer2( spep_2 + 182, 1016, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 182, 1201, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 182, 1255, "",spep_2 + 236, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 182, SE029, 127 );

--爆発
SE030 = playSeVer2( spep_2 + 198, 1011, "", 0, 0, 0, -1);

--気弾発射３
SE031 = playSeVer2( spep_2 + 200, 1016, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 200, 1201, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 200, 1255, "",spep_2 + 254, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 200, SE033, 135 );

--爆発
SE034 = playSeVer2( spep_2 + 216, 1024, "", 0, 0, 0, -1);

--気弾発射４
SE035 = playSeVer2( spep_2 + 236, 1202, "", 0, 4, 0, -1);
setStartTimeMs( SE035,  300 );
SE036 = playSeVer2( spep_2 + 236, 1016, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 236, 1201, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 236, 1255, "",spep_2 + 290, 0, 20, -1);

--気弾発射5
SE039 = playSeVer2( spep_2 + 274, 1202, "", 0, 4, 0, -1);
setStartTimeMs( SE039,  300 );

--連続爆発
SE040 = playSeVer2( spep_2 + 264, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 264, SE040, 71 );

--気弾発射５
SE041 = playSeVer2( spep_2 + 274, 1016, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 274, 1201, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 274, 1255, "",spep_2 + 328, 0, 20, -1);

--気弾発射６
SE044 = playSeVer2( spep_2 + 302, 1202, "", 0, 4, 0, -1);
setStartTimeMs( SE044,  300 );
SE045 = playSeVer2( spep_2 + 304, 1016, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 304, 1201, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 304, 1255, "",spep_2 + 358, 0, 20, -1);

--気弾発射７
SE048 = playSeVer2( spep_2 + 336, 1202, "", 0, 4, 0, -1);
setStartTimeMs( SE048,  300 );

--連続爆発
SE049 = playSeVer2( spep_2 + 318, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 318, SE049, 71 );

--気弾発射７
SE050 = playSeVer2( spep_2 + 338, 1016, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 338, 1201, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 338, 1255, "",spep_2 + 392, 0, 20, -1);

--気弾発射8
SE053 = playSeVer2( spep_2 + 376, 1202, "", 0, 4, 0, -1);
setStartTimeMs( SE053,  300 );

--連続爆発
SE054 = playSeVer2( spep_2 + 364, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 364, SE054, 67 );

--気弾発射８
SE055 = playSeVer2( spep_2 + 378, 1016, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 378, 1201, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 378, 1255, "",spep_2 + 432, 0, 20, -1);

--気弾飛んでいく
SE058 = playSeVer2( spep_2 + 396, 1406, "",spep_2 + 494, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 396, SE058, 141 );

--連続爆発
SE059 = playSeVer2( spep_2 + 406, 1159, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 446, 1188, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_2 + 450, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 482); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 終了フレーム --594F - 2

end
