-- 1027730: UR_超フルパワーサイヤ人4・限界突破ブロリー_ギガンティッククラスター
-- sp_effect_a2_00228
-- sp2633

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162408;  -- 冒頭〜気弾のアップ ef_001
SP_001b = 162409;  -- 冒頭〜気弾のアップ ef_001b
SP_002 = 162412;  -- 敵に気弾を放つ〜フィニッシュ ef_002
SP_002b = 162413;  -- 敵に気弾を放つ〜フィニッシュ ef_002r

-- 敵側
SP_001r = 162410;  -- 冒頭〜気弾のアップ ef_001r
SP_001br = 162411;  -- 冒頭〜気弾のアップ ef_001br
SP_002r = 162414;  -- 敵に気弾を放つ〜フィニッシュ ef_002b

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭〜気弾のアップ ef_001
------------------------------------------------------
MAX_FRAME_0 = 368;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
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
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 210 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 208 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 246 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 208 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 236 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 208 + OFFSET_X, 1, 1076.2, -1459.8 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 1076.2, -1459.8 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 1069, -1449.5 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 1069, -1449.5 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 1047.5, -1418.8 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 1047.5, -1418.8 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 1011.5, -1367.5 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 1011.5, -1367.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 961.2, -1295.8 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 961.2, -1295.8 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 896.5, -1203.6 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 896.5, -1203.6 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 817.5, -1090.8 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 817.5, -1090.8 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 724.1, -957.6 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 724.1, -957.6 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 616.3, -803.9 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 616.3, -803.9 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 543.9, -716.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 543.9, -716.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 471.6, -629.7 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 471.6, -629.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 460.2, -618.1 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 460.2, -618.1 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 448.9, -606.4 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 448.9, -606.4 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 437.6, -594.8 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 437.6, -594.8 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 274.2, -163.6 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 274.2, -163.6 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 329.9, -245.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 329.9, -245.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 386.4, -315.5 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 386.4, -315.5 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 421.9, -406.2 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 421.9, -406.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 485.4, -483 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 485.4, -483 , 0 );

setScaleKey( spep_0 + 208 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 9.95, 9.95 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 9.95, 9.95 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 9.79, 9.79 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 9.79, 9.79 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 9.53, 9.53 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 9.53, 9.53 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 9.17, 9.17 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 9.17, 9.17 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 8.13, 8.13 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 8.13, 8.13 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 7.45, 7.45 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 7.45, 7.45 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 5.58, 5.58 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 5.58, 5.58 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 5.52, 5.52 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 5.52, 5.52 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 2.77, 2.77 );

setRotateKey( spep_0 + 208 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 49 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 49 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 250, 0, 18, -1);
SE002 = playSeVer2( spep_0 + 0, 1396, "",spep_0 + 254, 0, 24, -1);
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 71 );
setPitch( spep_0 + 0, SE003, -500 );
setTimeStretch( SE003, 0.72, 30, 4 );
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE005, 71 );
setPitch( spep_0 + 24, SE005, -500 );
setTimeStretch( SE005, 0.72, 30, 4 );
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 71 );
setPitch( spep_0 + 48, SE006, -500 );
setTimeStretch( SE006, 0.72, 30, 4 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 71 );
setPitch( spep_0 + 72, SE007, -500 );
setTimeStretch( SE007, 0.72, 30, 4 );
SE009 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE009, 71 );
setPitch( spep_0 + 96, SE009, -500 );
setTimeStretch( SE009, 0.72, 30, 4 );
SE010 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE010, 71 );
setPitch( spep_0 + 120, SE010, -500 );
setTimeStretch( SE010, 0.72, 30, 4 );

--体前に
SE008 = playSeVer2( spep_0 + 80, 1116, "",spep_0 + 126, 0, 24, -1);

--飛び下がる
SE011 = playSeVer2( spep_0 + 118, 1117, "",spep_0 + 184, 0, 26, -1);

--気弾溜める
SE012 = playSeVer2( spep_0 + 134, 1274, "",spep_0 + 222, 0, 18, -1);
SE013 = playSeVer2( spep_0 + 134, 1253, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE013, 54 );
SE014 = playSeVer2( spep_0 + 134, 1296, "",spep_0 + 222, 0, 16, -1);

--オーラ
SE015 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE015, 71 );
setPitch( spep_0 + 144, SE015, -500 );
setTimeStretch( SE015, 0.72, 30, 4 );
SE016 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE016, 71 );
setPitch( spep_0 + 168, SE016, -500 );
setTimeStretch( SE016, 0.72, 30, 4 );
SE017 = playSeVer2( spep_0 + 192, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE017, 71 );
setPitch( spep_0 + 192, SE017, -500 );
setTimeStretch( SE017, 0.72, 30, 4 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 208;  -- エンドフェイズのフレーム数を置き換える

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

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

--気弾発射
SE018 = playSeVer2( spep_0 + 204, 1145, "", 0, 0, 0, -1);
setTimeStretch( SE018, 0.62, 30, 4 );
SE019 = playSeVer2( spep_0 + 204, 1021, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 204, 1401, "", 0, 0, 0, -1);

--敵ヒット
SE021 = playSeVer2( spep_0 + 230, 1023, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 234, 1024, "", 0, 0, 0, -1);

--気弾溜める２
SE023 = playSeVer2( spep_0 + 270, 1157, "",spep_0 + 382, 0, 14, 0.6);
SE024 = playSeVer2( spep_0 + 270, 1204, "",spep_0 + 378, 0, 10, 0.6);
setSeVolumeByWorkId( spep_0 + 270, SE024, 148 );
SE025 = playSeVer2( spep_0 + 270, 1262, "",spep_0 + 360, 0, 8, 0.6);
setSeVolumeByWorkId( spep_0 + 270, SE025, 178 );
setTimeStretch( SE025, 1.24, 30, 4 );
SE026 = playSeVer2( spep_0 + 270, 1282, "",spep_0 + 378, 0, 10, 0.6);
setSeVolumeByWorkId( spep_0 + 270, SE026, 71 );
setPitch( spep_0 + 280, SE026, -600 );
setTimeStretch( SE026, 0.6, 30, 4 );
SE027 = playSeVer2( spep_0 + 308, 1190, "",spep_0 + 382, 12, 14, 0.6);
setStartTimeMs( SE027,  0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 368

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 1);

------------------------------------------------------
-- 敵に気弾を放つ〜フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 208;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 91 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 0 + OFFSET_X, 1, 132.8, 262.4 , 0 );
setMoveKey( spep_2 + 1 + OFFSET_X, 1, 132.8, 262.4 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 131.9, 261.6 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 131.9, 261.6 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 135.6, 262.4 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 135.6, 262.4 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 133.2, 266.1 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 133.2, 266.1 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 136.8, 266.8 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 136.8, 266.8 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 134.4, 264.5 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 134.4, 264.5 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 138, 265.2 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 138, 265.2 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 135.5, 268.9 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 135.5, 268.9 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 139.1, 269.5 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 139.1, 269.5 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 136.6, 267.1 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 136.6, 267.1 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 140.1, 267.7 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 140.1, 267.7 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 137.6, 271.3 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 137.6, 271.3 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 141.1, 271.9 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 141.1, 271.9 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 138.6, 269.4 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 138.6, 269.4 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 142, 270 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 142, 270 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 139.5, 273.5 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 139.5, 273.5 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 142.9, 274 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 142.9, 274 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 140.3, 271.5 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 140.3, 271.5 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 143.7, 271.9 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 143.7, 271.9 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 141.1, 275.4 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 141.1, 275.4 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 144.4, 275.8 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 144.4, 275.8 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 141.8, 273.2 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 141.8, 273.2 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 145.1, 273.6 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 145.1, 273.6 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 142.5, 277 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 142.5, 277 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 145.8, 277.3 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 145.8, 277.3 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 143.1, 274.7 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 143.1, 274.7 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 146.3, 275 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 146.3, 275 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 143.6, 278.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 143.6, 278.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 146.8, 278.6 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 146.8, 278.6 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 144.1, 275.9 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 144.1, 275.9 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 147.3, 276.1 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 147.3, 276.1 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 144.5, 279.4 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 144.5, 279.4 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 147.7, 279.6 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 147.7, 279.6 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 144.8, 276.8 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 144.8, 276.8 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 148, 277 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 148, 277 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 145.1, 280.1 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 145.1, 280.1 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 148.3, 280.3 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 148.3, 280.3 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 145.4, 277.4 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 145.4, 277.4 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 148.5, 277.5 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 148.5, 277.5 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 145.6, 280.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 145.6, 280.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 148.6, 280.7 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 148.6, 280.7 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 145.7, 277.8 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 145.7, 277.8 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 148.7, 277.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 148.7, 277.8 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 148.7, 277.8 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 145.8, 280.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 145.8, 280.8 , 0 );

setScaleKey( spep_2 + 0 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 1 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_2 + 0 + OFFSET_X, 1, 51.4 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 51.4 );

-- ** 音 ** --
--気弾発射
SE029 = playSeVer2( spep_2 + 0, 1193, "",spep_2 + 126, 0, 40, -1);
SE030 = playSeVer2( spep_2 + 0, 1027, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 0, 1258, "",spep_2 + 116, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 0, SE031, 76 );
--爆発
SE032 = playSeVer2( spep_2 + 80, 1159, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 80, 1067, "", 0, 0, 0, -1);
--風圧
SE034 = playSeVer2( spep_2 + 92, 1259, "", 0, 0, 0, -1);
setPitch( spep_2 + 92, SE034, -1200 );
setTimeStretch( SE034, 0.2, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 210 );

-- ** おわり ** --
dealDamage( spep_2 + 104 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 208

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭〜気弾のアップ ef_001
------------------------------------------------------
MAX_FRAME_0 = 368;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001br, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
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
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 210 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 208 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 246 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 208 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 236 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 208 + OFFSET_X, 1, 1076.2, -1459.8 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 1076.2, -1459.8 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 1069, -1449.5 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 1069, -1449.5 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 1047.5, -1418.8 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 1047.5, -1418.8 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 1011.5, -1367.5 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 1011.5, -1367.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 961.2, -1295.8 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 961.2, -1295.8 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 896.5, -1203.6 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 896.5, -1203.6 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 817.5, -1090.8 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 817.5, -1090.8 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 724.1, -957.6 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 724.1, -957.6 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 616.3, -803.9 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 616.3, -803.9 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 543.9, -716.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 543.9, -716.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 471.6, -629.7 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 471.6, -629.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 460.2, -618.1 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 460.2, -618.1 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 448.9, -606.4 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 448.9, -606.4 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 437.6, -594.8 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 437.6, -594.8 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 274.2, -163.6 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 274.2, -163.6 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 329.9, -245.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 329.9, -245.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 386.4, -315.5 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 386.4, -315.5 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 421.9, -406.2 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 421.9, -406.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 485.4, -483 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 485.4, -483 , 0 );

setScaleKey( spep_0 + 208 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 9.95, 9.95 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 9.95, 9.95 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 9.79, 9.79 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 9.79, 9.79 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 9.53, 9.53 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 9.53, 9.53 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 9.17, 9.17 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 9.17, 9.17 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 8.13, 8.13 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 8.13, 8.13 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 7.45, 7.45 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 7.45, 7.45 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 5.58, 5.58 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 5.58, 5.58 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 5.52, 5.52 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 5.52, 5.52 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 2.77, 2.77 );

setRotateKey( spep_0 + 208 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, 49.1 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 49 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 49 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 250, 0, 18, -1);
SE002 = playSeVer2( spep_0 + 0, 1396, "",spep_0 + 254, 0, 24, -1);
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 71 );
setPitch( spep_0 + 0, SE003, -500 );
setTimeStretch( SE003, 0.72, 30, 4 );
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE005, 71 );
setPitch( spep_0 + 24, SE005, -500 );
setTimeStretch( SE005, 0.72, 30, 4 );
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 71 );
setPitch( spep_0 + 48, SE006, -500 );
setTimeStretch( SE006, 0.72, 30, 4 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 71 );
setPitch( spep_0 + 72, SE007, -500 );
setTimeStretch( SE007, 0.72, 30, 4 );
SE009 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE009, 71 );
setPitch( spep_0 + 96, SE009, -500 );
setTimeStretch( SE009, 0.72, 30, 4 );
SE010 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE010, 71 );
setPitch( spep_0 + 120, SE010, -500 );
setTimeStretch( SE010, 0.72, 30, 4 );

--体前に
SE008 = playSeVer2( spep_0 + 80, 1116, "",spep_0 + 126, 0, 24, -1);

--飛び下がる
SE011 = playSeVer2( spep_0 + 118, 1117, "",spep_0 + 184, 0, 26, -1);

--気弾溜める
SE012 = playSeVer2( spep_0 + 134, 1274, "",spep_0 + 222, 0, 18, -1);
SE013 = playSeVer2( spep_0 + 134, 1253, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE013, 54 );
SE014 = playSeVer2( spep_0 + 134, 1296, "",spep_0 + 222, 0, 16, -1);

--オーラ
SE015 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE015, 71 );
setPitch( spep_0 + 144, SE015, -500 );
setTimeStretch( SE015, 0.72, 30, 4 );
SE016 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE016, 71 );
setPitch( spep_0 + 168, SE016, -500 );
setTimeStretch( SE016, 0.72, 30, 4 );
SE017 = playSeVer2( spep_0 + 192, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE017, 71 );
setPitch( spep_0 + 192, SE017, -500 );
setTimeStretch( SE017, 0.72, 30, 4 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 208;  -- エンドフェイズのフレーム数を置き換える

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

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

--気弾発射
SE018 = playSeVer2( spep_0 + 204, 1145, "", 0, 0, 0, -1);
setTimeStretch( SE018, 0.62, 30, 4 );
SE019 = playSeVer2( spep_0 + 204, 1021, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 204, 1401, "", 0, 0, 0, -1);

--敵ヒット
SE021 = playSeVer2( spep_0 + 230, 1023, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 234, 1024, "", 0, 0, 0, -1);

--気弾溜める２
SE023 = playSeVer2( spep_0 + 270, 1157, "",spep_0 + 382, 0, 14, 0.6);
SE024 = playSeVer2( spep_0 + 270, 1204, "",spep_0 + 378, 0, 10, 0.6);
setSeVolumeByWorkId( spep_0 + 270, SE024, 148 );
SE025 = playSeVer2( spep_0 + 270, 1262, "",spep_0 + 360, 0, 8, 0.6);
setSeVolumeByWorkId( spep_0 + 270, SE025, 178 );
setTimeStretch( SE025, 1.24, 30, 4 );
SE026 = playSeVer2( spep_0 + 270, 1282, "",spep_0 + 378, 0, 10, 0.6);
setSeVolumeByWorkId( spep_0 + 270, SE026, 71 );
setPitch( spep_0 + 280, SE026, -600 );
setTimeStretch( SE026, 0.6, 30, 4 );
SE027 = playSeVer2( spep_0 + 308, 1190, "",spep_0 + 382, 12, 14, 0.6);
setStartTimeMs( SE027,  0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 368

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 1);

------------------------------------------------------
-- 敵に気弾を放つ〜フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 208;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 91 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 0 + OFFSET_X, 1, 132.8, 262.4 , 0 );
setMoveKey( spep_2 + 1 + OFFSET_X, 1, 132.8, 262.4 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 131.9, 261.6 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 131.9, 261.6 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 135.6, 262.4 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 135.6, 262.4 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 133.2, 266.1 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 133.2, 266.1 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 136.8, 266.8 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 136.8, 266.8 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 134.4, 264.5 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 134.4, 264.5 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 138, 265.2 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 138, 265.2 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 135.5, 268.9 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 135.5, 268.9 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 139.1, 269.5 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 139.1, 269.5 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 136.6, 267.1 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 136.6, 267.1 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 140.1, 267.7 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 140.1, 267.7 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 137.6, 271.3 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 137.6, 271.3 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 141.1, 271.9 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 141.1, 271.9 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 138.6, 269.4 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 138.6, 269.4 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 142, 270 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 142, 270 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 139.5, 273.5 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 139.5, 273.5 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 142.9, 274 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 142.9, 274 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 140.3, 271.5 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 140.3, 271.5 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 143.7, 271.9 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 143.7, 271.9 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 141.1, 275.4 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 141.1, 275.4 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 144.4, 275.8 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 144.4, 275.8 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 141.8, 273.2 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 141.8, 273.2 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 145.1, 273.6 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 145.1, 273.6 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 142.5, 277 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 142.5, 277 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 145.8, 277.3 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 145.8, 277.3 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 143.1, 274.7 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 143.1, 274.7 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 146.3, 275 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 146.3, 275 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 143.6, 278.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 143.6, 278.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 146.8, 278.6 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 146.8, 278.6 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 144.1, 275.9 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 144.1, 275.9 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 147.3, 276.1 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 147.3, 276.1 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 144.5, 279.4 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 144.5, 279.4 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 147.7, 279.6 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 147.7, 279.6 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 144.8, 276.8 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 144.8, 276.8 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 148, 277 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 148, 277 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 145.1, 280.1 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 145.1, 280.1 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 148.3, 280.3 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 148.3, 280.3 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 145.4, 277.4 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 145.4, 277.4 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 148.5, 277.5 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 148.5, 277.5 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 145.6, 280.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 145.6, 280.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 148.6, 280.7 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 148.6, 280.7 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 145.7, 277.8 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 145.7, 277.8 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 148.7, 277.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 148.7, 277.8 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 148.7, 277.8 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 145.8, 280.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 145.8, 280.8 , 0 );

setScaleKey( spep_2 + 0 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 1 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_2 + 0 + OFFSET_X, 1, 51.4 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 51.4 );

-- ** 音 ** --
--気弾発射
SE029 = playSeVer2( spep_2 + 0, 1193, "",spep_2 + 126, 0, 40, -1);
SE030 = playSeVer2( spep_2 + 0, 1027, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 0, 1258, "",spep_2 + 116, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 0, SE031, 76 );
--爆発
SE032 = playSeVer2( spep_2 + 80, 1159, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 80, 1067, "", 0, 0, 0, -1);
--風圧
SE034 = playSeVer2( spep_2 + 92, 1259, "", 0, 0, 0, -1);
setPitch( spep_2 + 92, SE034, -1200 );
setTimeStretch( SE034, 0.2, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 210 );

-- ** おわり ** --
dealDamage( spep_2 + 104 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 208

end
