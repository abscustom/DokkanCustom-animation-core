-- 1029910: UR_アイオス_必殺技：タイムデストラクション
-- sp_effect_a9_00136
-- sp2773

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163325;  -- 開始〜セリフカットイン ef_001
SP_001b = 163327;  -- 開始〜セリフカットイン ef_001b
SP_002 = 163328;  -- 空間を斬る〜フィニッシュ ef_002
SP_002b = 163329;  -- 空間を斬る〜フィニッシュ ef_002b

-- 敵側
SP_001r = 163326;  -- 開始〜セリフカットイン ef_001r
SP_002r = 163330;  -- 空間を斬る〜フィニッシュ ef_002r
SP_002br = 163331;  -- 空間を斬る〜フィニッシュ ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開始〜セリフカットイン ef_001
------------------------------------------------------
MAX_FRAME_0 = 256;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 開始〜セリフカットイン ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );  -- 開始〜セリフカットイン ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 38;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 145, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 145, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 145, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 134 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 258 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 134 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 214 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 134 + OFFSET_X, 1, 1.6, -21.7 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 1.6, -21.7 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 1.7, -21.6 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 1.7, -21.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 1.7, -21.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 1.7, -21.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 1.6, -21.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 1.6, -21.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 2, -24.6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 2, -24.6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 1.9, -21.4 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 1.9, -21.4 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 2, -22.8 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 2, -22.8 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 1.8, -21.3 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 1.8, -21.3 , 0 );

setScaleKey( spep_0 + 134 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 0.67, 0.67 );

setRotateKey( spep_0 + 134 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -50.9 );

setAlphaKey( spep_0 + 134 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 258 + OFFSET_X, 1, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 276, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--時計出す
SE003 = playSeVer2( spep_0 + 44, 1004, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 54, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE004, 138 );
SE005 = playSeVer2( spep_0 + 64, 1136, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 64, SE005, 75 );
setPitch( spep_0 + 64, SE005, 400 );
setTimeStretch( SE005, 1.27, 30, 4 );

--時計回転する
SE006 = playSeVer2( spep_0 + 128, 1336, "",spep_0 + 246, 30, 26, -1);
setStartTimeMs( SE006,  933 );
SE007 = playSeVer2( spep_0 + 128, 1158, "",spep_0 + 256, 0, 34, -1);
SE008 = playSeVer2( spep_0 + 130, 1232, "", 0, 0, 0, -1);

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 160;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);

pauseAll( SP_dodge, 67);
    
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--時計決め
SE009 = playSeVer2( spep_0 + 206, 1042, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 212, 40, "",spep_0 + 282, 0, 44, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 252, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 256

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 1);

------------------------------------------------------
-- 空間を斬る〜フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 528;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- 空間を斬る〜フィニッシュ ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- 空間を斬る〜フィニッシュ ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 180 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 512 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 180 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 308 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 318 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 180 + OFFSET_X, 1, 20.4, -7 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 20.4, -7 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 28.7, 3.5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 28.7, 3.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 43.4, 6.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 43.4, 6.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 22.9, -2.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 22.9, -2.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 28.1, -7.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 28.1, -7.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 19.8, 1.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 19.8, 1.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 31.9, -2.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 31.9, -2.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 28.1, -6.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 28.1, -6.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 21.9, 2.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 21.9, 2.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 31.9, -3.1 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 31.9, -3.1 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 27.6, -7.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 27.6, -7.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 20.5, 0.8 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 20.5, 0.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 31.5, -3.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 31.5, -3.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 36.6, 3.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 36.6, 3.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 25.2, 7.8 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 25.2, 7.8 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 33, -3.6 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 33, -3.6 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 28.7, -8.7 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 28.7, -8.7 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 25.5, 2.3 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 25.5, 2.3 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 32.4, -2.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 32.4, -2.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 28.1, -11 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 28.1, -11 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 24.9, 3.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 24.9, 3.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 31.7, -3.2 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 31.7, -3.2 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 27.8, -9.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 27.8, -9.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 23.4, 2.3 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 23.4, 2.3 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 32.7, -2.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 32.7, -2.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 28.4, -8.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 28.4, -8.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 20.6, 0.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 20.6, 0.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 32.3, -8 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 32.3, -8 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 17.4, -20.6 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 17.4, -20.6 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -31, -6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -31, -6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -31, -26 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -31, -26 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -31.8, -31.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -31.8, -31.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -20.6, -18.6 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -20.6, -18.6 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -9.5, -23.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -9.5, -23.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -39.8, -27.8 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -39.8, -27.8 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -7.8, -15.3 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -7.8, -15.3 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -19.9, -20.6 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -19.9, -20.6 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -8.5, -14.3 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -8.5, -14.3 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -39.9, -29.7 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -39.9, -29.7 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -8.6, -11.8 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -8.6, -11.8 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -18.8, -20 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -18.8, -20 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -9.7, -18.8 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -9.7, -18.8 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -39.7, -28.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -39.7, -28.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -7.4, -15.9 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -7.4, -15.9 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -20.2, -20.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -20.2, -20.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -9.5, -14.2 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -9.5, -14.2 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -38.3, -24.5 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -38.3, -24.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -7.5, -17.1 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -7.5, -17.1 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -20.2, -20.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -20.2, -20.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -9.9, -15.1 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -9.9, -15.1 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -38.9, -29.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -38.9, -29.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -7.5, -15.4 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -7.5, -15.4 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -19.7, -26.7 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -19.7, -26.7 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -9.8, -24.1 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -9.8, -24.1 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -39.7, -32.8 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -39.7, -32.8 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 81, -11.3 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 81, -11.3 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -0.5, 7.1 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -0.5, 7.1 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 4.3, 8.8 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 4.3, 8.8 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 9.2, 10.4 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 9.2, 10.4 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 14, 12.1 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 14, 12.1 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 61.2, 16.3 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 61.2, 16.3 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 36.9, 14.4 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 36.9, 14.4 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 38.7, -2.5 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 38.7, -2.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 27.8, -6.9 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 27.8, -6.9 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 44.2, 3.9 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 44.2, 3.9 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 29.5, -1.7 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 29.5, -1.7 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 20.9, 17.9 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 20.9, 17.9 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 26.2, 1.1 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 26.2, 1.1 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 18.8, -3.2 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 18.8, -3.2 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 38.9, 7.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 38.9, 7.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 23.8, 2.2 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 23.8, 2.2 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 25, 2.9 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 25, 2.9 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 26.2, 3.5 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 26.2, 3.5 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 27.4, 3.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 27.4, 3.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 28.8, 4.1 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 28.8, 4.1 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 30.5, 4.6 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 30.5, 4.6 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 32.5, 5.2 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 32.5, 5.2 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 34.7, 5.9 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 34.7, 5.9 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 37.2, 6.7 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 37.2, 6.7 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 39.9, 7.6 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 39.9, 7.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 42.9, 8.6 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 42.9, 8.6 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 46.1, 9.7 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 46.1, 9.7 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 49.6, 11 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 49.6, 11 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 53.3, 12.3 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 53.3, 12.3 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 57.3, 13.8 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 57.3, 13.8 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 61.5, 15.3 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 61.5, 15.3 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 66, 17 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 66, 17 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 70.7, 18.7 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 70.7, 18.7 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 75.6, 20.6 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 75.6, 20.6 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 80.8, 22.5 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 80.8, 22.5 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 86.2, 24.6 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 86.2, 24.6 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 91.8, 26.8 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 91.8, 26.8 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 97.7, 29.1 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 97.7, 29.1 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 103.8, 31.4 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 103.8, 31.4 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 110.1, 33.9 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 110.1, 33.9 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 116.7, 36.5 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 116.7, 36.5 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 123.5, 39.2 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 123.5, 39.2 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 130.5, 42 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 130.5, 42 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 137.7, 44.8 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 137.7, 44.8 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 145.1, 47.8 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 145.1, 47.8 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 152.8, 50.9 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 152.8, 50.9 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 160.7, 54.1 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 160.7, 54.1 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 168.8, 57.4 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 168.8, 57.4 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 177.1, 60.7 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 177.1, 60.7 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 185.6, 64.2 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 185.6, 64.2 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 194.3, 67.8 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 194.3, 67.8 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 203.3, 71.4 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 203.3, 71.4 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 212.4, 75.2 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 212.4, 75.2 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 221.8, 79 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 221.8, 79 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 231.3, 83 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 231.3, 83 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 241.1, 87 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 241.1, 87 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 241.7, 87.2 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 241.7, 87.2 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 242.4, 87.3 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 242.4, 87.3 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 243.1, 87.4 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 243.1, 87.4 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 243.7, 87.5 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 243.7, 87.5 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 244.4, 87.7 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 244.4, 87.7 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 245, 87.8 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 245, 87.8 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 245.7, 87.9 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 245.7, 87.9 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 246.3, 88.1 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 246.3, 88.1 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 247, 88.2 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 247, 88.2 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 247.6, 88.3 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 247.6, 88.3 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 248.3, 88.5 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 248.3, 88.5 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 249, 88.6 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 249, 88.6 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 249.6, 88.7 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 249.6, 88.7 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 250.3, 88.8 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 250.3, 88.8 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 250.9, 89 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 250.9, 89 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 268, 92.4 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 268, 92.4 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 268.6, 92.5 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 268.6, 92.5 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 269.3, 92.6 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 269.3, 92.6 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 269.9, 92.7 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 269.9, 92.7 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 270.6, 92.8 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 270.6, 92.8 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 271.2, 92.9 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 271.2, 92.9 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 271.9, 93.1 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 271.9, 93.1 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 272.5, 93.2 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 272.5, 93.2 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 273.1, 93.3 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 273.1, 93.3 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 273.8, 93.4 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 273.8, 93.4 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 274.4, 93.5 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 274.4, 93.5 , 0 );

setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 489 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 490 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 497 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 498 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 503 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 504 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 0.07, 0.07 );

setRotateKey( spep_2 + 180 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 512 + OFFSET_X, 1, 11.5 );

setAlphaKey( spep_2 + 180 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 319 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 320 + OFFSET_X, 1, 251 );
setAlphaKey( spep_2 + 321 + OFFSET_X, 1, 251 );
setAlphaKey( spep_2 + 322 + OFFSET_X, 1, 247 );
setAlphaKey( spep_2 + 323 + OFFSET_X, 1, 247 );
setAlphaKey( spep_2 + 324 + OFFSET_X, 1, 244 );
setAlphaKey( spep_2 + 325 + OFFSET_X, 1, 244 );
setAlphaKey( spep_2 + 326 + OFFSET_X, 1, 240 );
setAlphaKey( spep_2 + 327 + OFFSET_X, 1, 240 );
setAlphaKey( spep_2 + 328 + OFFSET_X, 1, 236 );
setAlphaKey( spep_2 + 329 + OFFSET_X, 1, 236 );
setAlphaKey( spep_2 + 330 + OFFSET_X, 1, 232 );
setAlphaKey( spep_2 + 331 + OFFSET_X, 1, 232 );
setAlphaKey( spep_2 + 332 + OFFSET_X, 1, 228 );
setAlphaKey( spep_2 + 333 + OFFSET_X, 1, 228 );
setAlphaKey( spep_2 + 334 + OFFSET_X, 1, 224 );
setAlphaKey( spep_2 + 335 + OFFSET_X, 1, 224 );
setAlphaKey( spep_2 + 336 + OFFSET_X, 1, 221 );
setAlphaKey( spep_2 + 337 + OFFSET_X, 1, 221 );
setAlphaKey( spep_2 + 338 + OFFSET_X, 1, 217 );
setAlphaKey( spep_2 + 339 + OFFSET_X, 1, 217 );
setAlphaKey( spep_2 + 340 + OFFSET_X, 1, 213 );
setAlphaKey( spep_2 + 341 + OFFSET_X, 1, 213 );
setAlphaKey( spep_2 + 342 + OFFSET_X, 1, 209 );
setAlphaKey( spep_2 + 343 + OFFSET_X, 1, 209 );
setAlphaKey( spep_2 + 344 + OFFSET_X, 1, 205 );
setAlphaKey( spep_2 + 345 + OFFSET_X, 1, 205 );
setAlphaKey( spep_2 + 346 + OFFSET_X, 1, 202 );
setAlphaKey( spep_2 + 347 + OFFSET_X, 1, 202 );
setAlphaKey( spep_2 + 348 + OFFSET_X, 1, 198 );
setAlphaKey( spep_2 + 349 + OFFSET_X, 1, 198 );
setAlphaKey( spep_2 + 350 + OFFSET_X, 1, 194 );
setAlphaKey( spep_2 + 351 + OFFSET_X, 1, 194 );
setAlphaKey( spep_2 + 352 + OFFSET_X, 1, 190 );
setAlphaKey( spep_2 + 353 + OFFSET_X, 1, 190 );
setAlphaKey( spep_2 + 354 + OFFSET_X, 1, 186 );
setAlphaKey( spep_2 + 355 + OFFSET_X, 1, 186 );
setAlphaKey( spep_2 + 356 + OFFSET_X, 1, 182 );
setAlphaKey( spep_2 + 357 + OFFSET_X, 1, 182 );
setAlphaKey( spep_2 + 358 + OFFSET_X, 1, 179 );
setAlphaKey( spep_2 + 359 + OFFSET_X, 1, 179 );
setAlphaKey( spep_2 + 360 + OFFSET_X, 1, 175 );
setAlphaKey( spep_2 + 361 + OFFSET_X, 1, 175 );
setAlphaKey( spep_2 + 362 + OFFSET_X, 1, 171 );
setAlphaKey( spep_2 + 363 + OFFSET_X, 1, 171 );
setAlphaKey( spep_2 + 364 + OFFSET_X, 1, 167 );
setAlphaKey( spep_2 + 365 + OFFSET_X, 1, 167 );
setAlphaKey( spep_2 + 366 + OFFSET_X, 1, 163 );
setAlphaKey( spep_2 + 367 + OFFSET_X, 1, 163 );
setAlphaKey( spep_2 + 368 + OFFSET_X, 1, 160 );
setAlphaKey( spep_2 + 369 + OFFSET_X, 1, 160 );
setAlphaKey( spep_2 + 370 + OFFSET_X, 1, 156 );
setAlphaKey( spep_2 + 371 + OFFSET_X, 1, 156 );
setAlphaKey( spep_2 + 372 + OFFSET_X, 1, 152 );
setAlphaKey( spep_2 + 373 + OFFSET_X, 1, 152 );
setAlphaKey( spep_2 + 374 + OFFSET_X, 1, 148 );
setAlphaKey( spep_2 + 375 + OFFSET_X, 1, 148 );
setAlphaKey( spep_2 + 376 + OFFSET_X, 1, 144 );
setAlphaKey( spep_2 + 377 + OFFSET_X, 1, 144 );
setAlphaKey( spep_2 + 378 + OFFSET_X, 1, 140 );
setAlphaKey( spep_2 + 379 + OFFSET_X, 1, 140 );
setAlphaKey( spep_2 + 380 + OFFSET_X, 1, 137 );
setAlphaKey( spep_2 + 381 + OFFSET_X, 1, 137 );
setAlphaKey( spep_2 + 382 + OFFSET_X, 1, 133 );
setAlphaKey( spep_2 + 383 + OFFSET_X, 1, 133 );
setAlphaKey( spep_2 + 384 + OFFSET_X, 1, 129 );
setAlphaKey( spep_2 + 385 + OFFSET_X, 1, 129 );
setAlphaKey( spep_2 + 386 + OFFSET_X, 1, 125 );
setAlphaKey( spep_2 + 387 + OFFSET_X, 1, 125 );
setAlphaKey( spep_2 + 388 + OFFSET_X, 1, 121 );
setAlphaKey( spep_2 + 389 + OFFSET_X, 1, 121 );
setAlphaKey( spep_2 + 390 + OFFSET_X, 1, 118 );
setAlphaKey( spep_2 + 391 + OFFSET_X, 1, 118 );
setAlphaKey( spep_2 + 392 + OFFSET_X, 1, 114 );
setAlphaKey( spep_2 + 393 + OFFSET_X, 1, 114 );
setAlphaKey( spep_2 + 394 + OFFSET_X, 1, 110 );
setAlphaKey( spep_2 + 395 + OFFSET_X, 1, 110 );
setAlphaKey( spep_2 + 396 + OFFSET_X, 1, 106 );
setAlphaKey( spep_2 + 397 + OFFSET_X, 1, 106 );
setAlphaKey( spep_2 + 398 + OFFSET_X, 1, 102 );
setAlphaKey( spep_2 + 399 + OFFSET_X, 1, 102 );
setAlphaKey( spep_2 + 400 + OFFSET_X, 1, 98 );
setAlphaKey( spep_2 + 401 + OFFSET_X, 1, 98 );
setAlphaKey( spep_2 + 402 + OFFSET_X, 1, 95 );
setAlphaKey( spep_2 + 403 + OFFSET_X, 1, 95 );
setAlphaKey( spep_2 + 404 + OFFSET_X, 1, 91 );
setAlphaKey( spep_2 + 405 + OFFSET_X, 1, 91 );
setAlphaKey( spep_2 + 406 + OFFSET_X, 1, 87 );
setAlphaKey( spep_2 + 407 + OFFSET_X, 1, 87 );
setAlphaKey( spep_2 + 408 + OFFSET_X, 1, 83 );
setAlphaKey( spep_2 + 409 + OFFSET_X, 1, 83 );
setAlphaKey( spep_2 + 410 + OFFSET_X, 1, 79 );
setAlphaKey( spep_2 + 411 + OFFSET_X, 1, 79 );
setAlphaKey( spep_2 + 412 + OFFSET_X, 1, 76 );
setAlphaKey( spep_2 + 413 + OFFSET_X, 1, 76 );
setAlphaKey( spep_2 + 414 + OFFSET_X, 1, 72 );
setAlphaKey( spep_2 + 415 + OFFSET_X, 1, 72 );
setAlphaKey( spep_2 + 416 + OFFSET_X, 1, 68 );
setAlphaKey( spep_2 + 417 + OFFSET_X, 1, 68 );
setAlphaKey( spep_2 + 418 + OFFSET_X, 1, 64 );
setAlphaKey( spep_2 + 419 + OFFSET_X, 1, 64 );
setAlphaKey( spep_2 + 420 + OFFSET_X, 1, 60 );
setAlphaKey( spep_2 + 421 + OFFSET_X, 1, 60 );
setAlphaKey( spep_2 + 422 + OFFSET_X, 1, 56 );
setAlphaKey( spep_2 + 423 + OFFSET_X, 1, 56 );
setAlphaKey( spep_2 + 424 + OFFSET_X, 1, 53 );
setAlphaKey( spep_2 + 425 + OFFSET_X, 1, 53 );
setAlphaKey( spep_2 + 426 + OFFSET_X, 1, 49 );
setAlphaKey( spep_2 + 427 + OFFSET_X, 1, 49 );
setAlphaKey( spep_2 + 428 + OFFSET_X, 1, 45 );
setAlphaKey( spep_2 + 429 + OFFSET_X, 1, 45 );
setAlphaKey( spep_2 + 430 + OFFSET_X, 1, 41 );
setAlphaKey( spep_2 + 431 + OFFSET_X, 1, 41 );
setAlphaKey( spep_2 + 432 + OFFSET_X, 1, 37 );
setAlphaKey( spep_2 + 433 + OFFSET_X, 1, 37 );
setAlphaKey( spep_2 + 434 + OFFSET_X, 1, 34 );
setAlphaKey( spep_2 + 435 + OFFSET_X, 1, 34 );
setAlphaKey( spep_2 + 436 + OFFSET_X, 1, 30 );
setAlphaKey( spep_2 + 437 + OFFSET_X, 1, 30 );
setAlphaKey( spep_2 + 438 + OFFSET_X, 1, 26 );
setAlphaKey( spep_2 + 489 + OFFSET_X, 1, 26 );
setAlphaKey( spep_2 + 490 + OFFSET_X, 1, 64 );
setAlphaKey( spep_2 + 491 + OFFSET_X, 1, 64 );
setAlphaKey( spep_2 + 492 + OFFSET_X, 1, 60 );
setAlphaKey( spep_2 + 493 + OFFSET_X, 1, 60 );
setAlphaKey( spep_2 + 494 + OFFSET_X, 1, 56 );
setAlphaKey( spep_2 + 495 + OFFSET_X, 1, 56 );
setAlphaKey( spep_2 + 496 + OFFSET_X, 1, 53 );
setAlphaKey( spep_2 + 497 + OFFSET_X, 1, 53 );
setAlphaKey( spep_2 + 498 + OFFSET_X, 1, 49 );
setAlphaKey( spep_2 + 499 + OFFSET_X, 1, 49 );
setAlphaKey( spep_2 + 500 + OFFSET_X, 1, 45 );
setAlphaKey( spep_2 + 501 + OFFSET_X, 1, 45 );
setAlphaKey( spep_2 + 502 + OFFSET_X, 1, 41 );
setAlphaKey( spep_2 + 503 + OFFSET_X, 1, 41 );
setAlphaKey( spep_2 + 504 + OFFSET_X, 1, 37 );
setAlphaKey( spep_2 + 505 + OFFSET_X, 1, 37 );
setAlphaKey( spep_2 + 506 + OFFSET_X, 1, 34 );
setAlphaKey( spep_2 + 507 + OFFSET_X, 1, 34 );
setAlphaKey( spep_2 + 508 + OFFSET_X, 1, 30 );
setAlphaKey( spep_2 + 509 + OFFSET_X, 1, 30 );
setAlphaKey( spep_2 + 510 + OFFSET_X, 1, 26 );
setAlphaKey( spep_2 + 512 + OFFSET_X, 1, 26 );

-- ** 音 ** --
--指機弾溜め
SE012 = playSeVer2( spep_2 + 16, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE012, 141 );
SE013 = playSeVer2( spep_2 + 28, 1015, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 28, 1254, "",spep_2 + 104, 0, 20, -1);
SE015 = playSeVer2( spep_2 + 28, 1296, "",spep_2 + 104, 0, 22, -1);

--時空切り裂く
SE016 = playSeVer2( spep_2 + 78, 1026, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 78, 1061, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 88, 1143, "", 0, 0, 0, -1);

--時空拡大する
SE019 = playSeVer2( spep_2 + 114, 1158, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114, SE019, 82 );
SE020 = playSeVer2( spep_2 + 114, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114, SE020, 52 );

--気弾飛んでくる
SE021 = playSeVer2( spep_2 + 144, 1027, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 144, 1424, "", 0, 0, 0, -1);

--エネルギー増大する
SE023 = playSeVer2( spep_2 + 230, 1215, "",spep_2 + 372, 34, 44, -1);
setStartTimeMs( SE023,  1300 );

--敵ヒット
SE024 = playSeVer2( spep_2 + 188, 1032, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 188, 1114, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 202, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 202, SE026, 61 );

--爆発
SE027 = playSeVer2( spep_2 + 316, 1156, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 316, 1159, "", 0, 0, 0, -1);

--時計音
SE029 = playSeVer2( spep_2 + 372, 1136, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 372, SE029, 63 );
setPitch( spep_2 + 372, SE029, -1200 );
setTimeStretch( SE029, 0.2, 30, 4 );

--キャラの動き
SE030 = playSeVer2( spep_2 + 386, 8, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 420 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 528

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開始〜セリフカットイン ef_001r
------------------------------------------------------
MAX_FRAME_0 = 256;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );  -- 開始〜セリフカットイン ef_001r
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );  -- 開始〜セリフカットイン ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 38;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 75, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 75, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 75, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 134 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 258 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 134 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 214 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 134 + OFFSET_X, 1, 1.6, -21.7 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 1.6, -21.7 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 1.7, -21.6 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 1.7, -21.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 1.7, -21.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 1.7, -21.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 1.6, -21.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 1.6, -21.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 2, -24.6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 2, -24.6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 1.9, -21.4 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 1.9, -21.4 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 2, -22.8 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 2, -22.8 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 1.8, -21.3 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 1.8, -21.3 , 0 );

setScaleKey( spep_0 + 134 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 0.67, 0.67 );

setRotateKey( spep_0 + 134 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -50.9 );

setAlphaKey( spep_0 + 134 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 258 + OFFSET_X, 1, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 276, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--時計出す
SE003 = playSeVer2( spep_0 + 44, 1004, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 54, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE004, 138 );
SE005 = playSeVer2( spep_0 + 64, 1136, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 64, SE005, 75 );
setPitch( spep_0 + 64, SE005, 400 );
setTimeStretch( SE005, 1.27, 30, 4 );

--時計回転する
SE006 = playSeVer2( spep_0 + 128, 1336, "",spep_0 + 246, 30, 26, -1);
setStartTimeMs( SE006,  933 );
SE007 = playSeVer2( spep_0 + 128, 1158, "",spep_0 + 256, 0, 34, -1);
SE008 = playSeVer2( spep_0 + 130, 1232, "", 0, 0, 0, -1);

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 160;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);

pauseAll( SP_dodge, 67);
    
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--時計決め
SE009 = playSeVer2( spep_0 + 206, 1042, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 212, 40, "",spep_0 + 282, 0, 44, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 252, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 256

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 1);

------------------------------------------------------
-- 空間を斬る〜フィニッシュ ef_002r
------------------------------------------------------
MAX_FRAME_2 = 528;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );  -- 空間を斬る〜フィニッシュ ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );  -- 空間を斬る〜フィニッシュ ef_002br
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 180 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 512 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 180 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 308 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 318 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 180 + OFFSET_X, 1, 20.4, -7 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 20.4, -7 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 28.7, 3.5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 28.7, 3.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 43.4, 6.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 43.4, 6.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 22.9, -2.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 22.9, -2.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 28.1, -7.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 28.1, -7.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 19.8, 1.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 19.8, 1.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 31.9, -2.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 31.9, -2.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 28.1, -6.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 28.1, -6.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 21.9, 2.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 21.9, 2.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 31.9, -3.1 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 31.9, -3.1 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 27.6, -7.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 27.6, -7.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 20.5, 0.8 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 20.5, 0.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 31.5, -3.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 31.5, -3.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 36.6, 3.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 36.6, 3.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 25.2, 7.8 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 25.2, 7.8 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 33, -3.6 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 33, -3.6 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 28.7, -8.7 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 28.7, -8.7 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 25.5, 2.3 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 25.5, 2.3 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 32.4, -2.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 32.4, -2.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 28.1, -11 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 28.1, -11 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 24.9, 3.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 24.9, 3.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 31.7, -3.2 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 31.7, -3.2 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 27.8, -9.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 27.8, -9.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 23.4, 2.3 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 23.4, 2.3 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 32.7, -2.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 32.7, -2.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 28.4, -8.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 28.4, -8.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 20.6, 0.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 20.6, 0.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 32.3, -8 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 32.3, -8 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 17.4, -20.6 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 17.4, -20.6 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -31, -6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -31, -6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -31, -26 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -31, -26 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -31.8, -31.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -31.8, -31.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -20.6, -18.6 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -20.6, -18.6 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -9.5, -23.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -9.5, -23.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -39.8, -27.8 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -39.8, -27.8 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -7.8, -15.3 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -7.8, -15.3 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -19.9, -20.6 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -19.9, -20.6 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -8.5, -14.3 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -8.5, -14.3 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -39.9, -29.7 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -39.9, -29.7 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -8.6, -11.8 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -8.6, -11.8 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -18.8, -20 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -18.8, -20 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -9.7, -18.8 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -9.7, -18.8 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -39.7, -28.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -39.7, -28.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -7.4, -15.9 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -7.4, -15.9 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -20.2, -20.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -20.2, -20.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -9.5, -14.2 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -9.5, -14.2 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -38.3, -24.5 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -38.3, -24.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -7.5, -17.1 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -7.5, -17.1 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -20.2, -20.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -20.2, -20.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -9.9, -15.1 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -9.9, -15.1 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -38.9, -29.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -38.9, -29.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -7.5, -15.4 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -7.5, -15.4 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -19.7, -26.7 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -19.7, -26.7 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -9.8, -24.1 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -9.8, -24.1 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -39.7, -32.8 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -39.7, -32.8 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 81, -11.3 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 81, -11.3 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -0.5, 7.1 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -0.5, 7.1 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 4.3, 8.8 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 4.3, 8.8 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 9.2, 10.4 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 9.2, 10.4 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 14, 12.1 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 14, 12.1 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 61.2, 16.3 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 61.2, 16.3 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 36.9, 14.4 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 36.9, 14.4 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 38.7, -2.5 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 38.7, -2.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 27.8, -6.9 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 27.8, -6.9 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 44.2, 3.9 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 44.2, 3.9 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 29.5, -1.7 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 29.5, -1.7 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 20.9, 17.9 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 20.9, 17.9 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 26.2, 1.1 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 26.2, 1.1 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 18.8, -3.2 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 18.8, -3.2 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 38.9, 7.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 38.9, 7.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 23.8, 2.2 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 23.8, 2.2 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 25, 2.9 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 25, 2.9 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 26.2, 3.5 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 26.2, 3.5 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 27.4, 3.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 27.4, 3.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 28.8, 4.1 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 28.8, 4.1 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 30.5, 4.6 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 30.5, 4.6 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 32.5, 5.2 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 32.5, 5.2 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 34.7, 5.9 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 34.7, 5.9 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 37.2, 6.7 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 37.2, 6.7 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 39.9, 7.6 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 39.9, 7.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 42.9, 8.6 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 42.9, 8.6 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 46.1, 9.7 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 46.1, 9.7 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 49.6, 11 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 49.6, 11 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 53.3, 12.3 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 53.3, 12.3 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 57.3, 13.8 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 57.3, 13.8 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 61.5, 15.3 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 61.5, 15.3 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 66, 17 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 66, 17 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 70.7, 18.7 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 70.7, 18.7 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 75.6, 20.6 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 75.6, 20.6 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 80.8, 22.5 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 80.8, 22.5 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 86.2, 24.6 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 86.2, 24.6 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 91.8, 26.8 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 91.8, 26.8 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 97.7, 29.1 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 97.7, 29.1 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 103.8, 31.4 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 103.8, 31.4 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 110.1, 33.9 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 110.1, 33.9 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 116.7, 36.5 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 116.7, 36.5 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 123.5, 39.2 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 123.5, 39.2 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 130.5, 42 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 130.5, 42 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 137.7, 44.8 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 137.7, 44.8 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 145.1, 47.8 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 145.1, 47.8 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 152.8, 50.9 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 152.8, 50.9 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 160.7, 54.1 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 160.7, 54.1 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 168.8, 57.4 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 168.8, 57.4 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 177.1, 60.7 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 177.1, 60.7 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 185.6, 64.2 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 185.6, 64.2 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 194.3, 67.8 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 194.3, 67.8 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 203.3, 71.4 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 203.3, 71.4 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 212.4, 75.2 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 212.4, 75.2 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 221.8, 79 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 221.8, 79 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 231.3, 83 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 231.3, 83 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 241.1, 87 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 241.1, 87 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 241.7, 87.2 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 241.7, 87.2 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 242.4, 87.3 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 242.4, 87.3 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 243.1, 87.4 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 243.1, 87.4 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 243.7, 87.5 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 243.7, 87.5 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 244.4, 87.7 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 244.4, 87.7 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 245, 87.8 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 245, 87.8 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 245.7, 87.9 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 245.7, 87.9 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 246.3, 88.1 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 246.3, 88.1 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 247, 88.2 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 247, 88.2 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 247.6, 88.3 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 247.6, 88.3 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 248.3, 88.5 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 248.3, 88.5 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 249, 88.6 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 249, 88.6 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 249.6, 88.7 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 249.6, 88.7 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 250.3, 88.8 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 250.3, 88.8 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 250.9, 89 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 250.9, 89 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 268, 92.4 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 268, 92.4 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 268.6, 92.5 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 268.6, 92.5 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 269.3, 92.6 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 269.3, 92.6 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 269.9, 92.7 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 269.9, 92.7 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 270.6, 92.8 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 270.6, 92.8 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 271.2, 92.9 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 271.2, 92.9 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 271.9, 93.1 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 271.9, 93.1 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 272.5, 93.2 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 272.5, 93.2 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 273.1, 93.3 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 273.1, 93.3 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 273.8, 93.4 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 273.8, 93.4 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 274.4, 93.5 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 274.4, 93.5 , 0 );

setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 489 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 490 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 497 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 498 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 503 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 504 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 0.07, 0.07 );

setRotateKey( spep_2 + 180 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 512 + OFFSET_X, 1, 11.5 );

setAlphaKey( spep_2 + 180 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 319 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 320 + OFFSET_X, 1, 251 );
setAlphaKey( spep_2 + 321 + OFFSET_X, 1, 251 );
setAlphaKey( spep_2 + 322 + OFFSET_X, 1, 247 );
setAlphaKey( spep_2 + 323 + OFFSET_X, 1, 247 );
setAlphaKey( spep_2 + 324 + OFFSET_X, 1, 244 );
setAlphaKey( spep_2 + 325 + OFFSET_X, 1, 244 );
setAlphaKey( spep_2 + 326 + OFFSET_X, 1, 240 );
setAlphaKey( spep_2 + 327 + OFFSET_X, 1, 240 );
setAlphaKey( spep_2 + 328 + OFFSET_X, 1, 236 );
setAlphaKey( spep_2 + 329 + OFFSET_X, 1, 236 );
setAlphaKey( spep_2 + 330 + OFFSET_X, 1, 232 );
setAlphaKey( spep_2 + 331 + OFFSET_X, 1, 232 );
setAlphaKey( spep_2 + 332 + OFFSET_X, 1, 228 );
setAlphaKey( spep_2 + 333 + OFFSET_X, 1, 228 );
setAlphaKey( spep_2 + 334 + OFFSET_X, 1, 224 );
setAlphaKey( spep_2 + 335 + OFFSET_X, 1, 224 );
setAlphaKey( spep_2 + 336 + OFFSET_X, 1, 221 );
setAlphaKey( spep_2 + 337 + OFFSET_X, 1, 221 );
setAlphaKey( spep_2 + 338 + OFFSET_X, 1, 217 );
setAlphaKey( spep_2 + 339 + OFFSET_X, 1, 217 );
setAlphaKey( spep_2 + 340 + OFFSET_X, 1, 213 );
setAlphaKey( spep_2 + 341 + OFFSET_X, 1, 213 );
setAlphaKey( spep_2 + 342 + OFFSET_X, 1, 209 );
setAlphaKey( spep_2 + 343 + OFFSET_X, 1, 209 );
setAlphaKey( spep_2 + 344 + OFFSET_X, 1, 205 );
setAlphaKey( spep_2 + 345 + OFFSET_X, 1, 205 );
setAlphaKey( spep_2 + 346 + OFFSET_X, 1, 202 );
setAlphaKey( spep_2 + 347 + OFFSET_X, 1, 202 );
setAlphaKey( spep_2 + 348 + OFFSET_X, 1, 198 );
setAlphaKey( spep_2 + 349 + OFFSET_X, 1, 198 );
setAlphaKey( spep_2 + 350 + OFFSET_X, 1, 194 );
setAlphaKey( spep_2 + 351 + OFFSET_X, 1, 194 );
setAlphaKey( spep_2 + 352 + OFFSET_X, 1, 190 );
setAlphaKey( spep_2 + 353 + OFFSET_X, 1, 190 );
setAlphaKey( spep_2 + 354 + OFFSET_X, 1, 186 );
setAlphaKey( spep_2 + 355 + OFFSET_X, 1, 186 );
setAlphaKey( spep_2 + 356 + OFFSET_X, 1, 182 );
setAlphaKey( spep_2 + 357 + OFFSET_X, 1, 182 );
setAlphaKey( spep_2 + 358 + OFFSET_X, 1, 179 );
setAlphaKey( spep_2 + 359 + OFFSET_X, 1, 179 );
setAlphaKey( spep_2 + 360 + OFFSET_X, 1, 175 );
setAlphaKey( spep_2 + 361 + OFFSET_X, 1, 175 );
setAlphaKey( spep_2 + 362 + OFFSET_X, 1, 171 );
setAlphaKey( spep_2 + 363 + OFFSET_X, 1, 171 );
setAlphaKey( spep_2 + 364 + OFFSET_X, 1, 167 );
setAlphaKey( spep_2 + 365 + OFFSET_X, 1, 167 );
setAlphaKey( spep_2 + 366 + OFFSET_X, 1, 163 );
setAlphaKey( spep_2 + 367 + OFFSET_X, 1, 163 );
setAlphaKey( spep_2 + 368 + OFFSET_X, 1, 160 );
setAlphaKey( spep_2 + 369 + OFFSET_X, 1, 160 );
setAlphaKey( spep_2 + 370 + OFFSET_X, 1, 156 );
setAlphaKey( spep_2 + 371 + OFFSET_X, 1, 156 );
setAlphaKey( spep_2 + 372 + OFFSET_X, 1, 152 );
setAlphaKey( spep_2 + 373 + OFFSET_X, 1, 152 );
setAlphaKey( spep_2 + 374 + OFFSET_X, 1, 148 );
setAlphaKey( spep_2 + 375 + OFFSET_X, 1, 148 );
setAlphaKey( spep_2 + 376 + OFFSET_X, 1, 144 );
setAlphaKey( spep_2 + 377 + OFFSET_X, 1, 144 );
setAlphaKey( spep_2 + 378 + OFFSET_X, 1, 140 );
setAlphaKey( spep_2 + 379 + OFFSET_X, 1, 140 );
setAlphaKey( spep_2 + 380 + OFFSET_X, 1, 137 );
setAlphaKey( spep_2 + 381 + OFFSET_X, 1, 137 );
setAlphaKey( spep_2 + 382 + OFFSET_X, 1, 133 );
setAlphaKey( spep_2 + 383 + OFFSET_X, 1, 133 );
setAlphaKey( spep_2 + 384 + OFFSET_X, 1, 129 );
setAlphaKey( spep_2 + 385 + OFFSET_X, 1, 129 );
setAlphaKey( spep_2 + 386 + OFFSET_X, 1, 125 );
setAlphaKey( spep_2 + 387 + OFFSET_X, 1, 125 );
setAlphaKey( spep_2 + 388 + OFFSET_X, 1, 121 );
setAlphaKey( spep_2 + 389 + OFFSET_X, 1, 121 );
setAlphaKey( spep_2 + 390 + OFFSET_X, 1, 118 );
setAlphaKey( spep_2 + 391 + OFFSET_X, 1, 118 );
setAlphaKey( spep_2 + 392 + OFFSET_X, 1, 114 );
setAlphaKey( spep_2 + 393 + OFFSET_X, 1, 114 );
setAlphaKey( spep_2 + 394 + OFFSET_X, 1, 110 );
setAlphaKey( spep_2 + 395 + OFFSET_X, 1, 110 );
setAlphaKey( spep_2 + 396 + OFFSET_X, 1, 106 );
setAlphaKey( spep_2 + 397 + OFFSET_X, 1, 106 );
setAlphaKey( spep_2 + 398 + OFFSET_X, 1, 102 );
setAlphaKey( spep_2 + 399 + OFFSET_X, 1, 102 );
setAlphaKey( spep_2 + 400 + OFFSET_X, 1, 98 );
setAlphaKey( spep_2 + 401 + OFFSET_X, 1, 98 );
setAlphaKey( spep_2 + 402 + OFFSET_X, 1, 95 );
setAlphaKey( spep_2 + 403 + OFFSET_X, 1, 95 );
setAlphaKey( spep_2 + 404 + OFFSET_X, 1, 91 );
setAlphaKey( spep_2 + 405 + OFFSET_X, 1, 91 );
setAlphaKey( spep_2 + 406 + OFFSET_X, 1, 87 );
setAlphaKey( spep_2 + 407 + OFFSET_X, 1, 87 );
setAlphaKey( spep_2 + 408 + OFFSET_X, 1, 83 );
setAlphaKey( spep_2 + 409 + OFFSET_X, 1, 83 );
setAlphaKey( spep_2 + 410 + OFFSET_X, 1, 79 );
setAlphaKey( spep_2 + 411 + OFFSET_X, 1, 79 );
setAlphaKey( spep_2 + 412 + OFFSET_X, 1, 76 );
setAlphaKey( spep_2 + 413 + OFFSET_X, 1, 76 );
setAlphaKey( spep_2 + 414 + OFFSET_X, 1, 72 );
setAlphaKey( spep_2 + 415 + OFFSET_X, 1, 72 );
setAlphaKey( spep_2 + 416 + OFFSET_X, 1, 68 );
setAlphaKey( spep_2 + 417 + OFFSET_X, 1, 68 );
setAlphaKey( spep_2 + 418 + OFFSET_X, 1, 64 );
setAlphaKey( spep_2 + 419 + OFFSET_X, 1, 64 );
setAlphaKey( spep_2 + 420 + OFFSET_X, 1, 60 );
setAlphaKey( spep_2 + 421 + OFFSET_X, 1, 60 );
setAlphaKey( spep_2 + 422 + OFFSET_X, 1, 56 );
setAlphaKey( spep_2 + 423 + OFFSET_X, 1, 56 );
setAlphaKey( spep_2 + 424 + OFFSET_X, 1, 53 );
setAlphaKey( spep_2 + 425 + OFFSET_X, 1, 53 );
setAlphaKey( spep_2 + 426 + OFFSET_X, 1, 49 );
setAlphaKey( spep_2 + 427 + OFFSET_X, 1, 49 );
setAlphaKey( spep_2 + 428 + OFFSET_X, 1, 45 );
setAlphaKey( spep_2 + 429 + OFFSET_X, 1, 45 );
setAlphaKey( spep_2 + 430 + OFFSET_X, 1, 41 );
setAlphaKey( spep_2 + 431 + OFFSET_X, 1, 41 );
setAlphaKey( spep_2 + 432 + OFFSET_X, 1, 37 );
setAlphaKey( spep_2 + 433 + OFFSET_X, 1, 37 );
setAlphaKey( spep_2 + 434 + OFFSET_X, 1, 34 );
setAlphaKey( spep_2 + 435 + OFFSET_X, 1, 34 );
setAlphaKey( spep_2 + 436 + OFFSET_X, 1, 30 );
setAlphaKey( spep_2 + 437 + OFFSET_X, 1, 30 );
setAlphaKey( spep_2 + 438 + OFFSET_X, 1, 26 );
setAlphaKey( spep_2 + 489 + OFFSET_X, 1, 26 );
setAlphaKey( spep_2 + 490 + OFFSET_X, 1, 64 );
setAlphaKey( spep_2 + 491 + OFFSET_X, 1, 64 );
setAlphaKey( spep_2 + 492 + OFFSET_X, 1, 60 );
setAlphaKey( spep_2 + 493 + OFFSET_X, 1, 60 );
setAlphaKey( spep_2 + 494 + OFFSET_X, 1, 56 );
setAlphaKey( spep_2 + 495 + OFFSET_X, 1, 56 );
setAlphaKey( spep_2 + 496 + OFFSET_X, 1, 53 );
setAlphaKey( spep_2 + 497 + OFFSET_X, 1, 53 );
setAlphaKey( spep_2 + 498 + OFFSET_X, 1, 49 );
setAlphaKey( spep_2 + 499 + OFFSET_X, 1, 49 );
setAlphaKey( spep_2 + 500 + OFFSET_X, 1, 45 );
setAlphaKey( spep_2 + 501 + OFFSET_X, 1, 45 );
setAlphaKey( spep_2 + 502 + OFFSET_X, 1, 41 );
setAlphaKey( spep_2 + 503 + OFFSET_X, 1, 41 );
setAlphaKey( spep_2 + 504 + OFFSET_X, 1, 37 );
setAlphaKey( spep_2 + 505 + OFFSET_X, 1, 37 );
setAlphaKey( spep_2 + 506 + OFFSET_X, 1, 34 );
setAlphaKey( spep_2 + 507 + OFFSET_X, 1, 34 );
setAlphaKey( spep_2 + 508 + OFFSET_X, 1, 30 );
setAlphaKey( spep_2 + 509 + OFFSET_X, 1, 30 );
setAlphaKey( spep_2 + 510 + OFFSET_X, 1, 26 );
setAlphaKey( spep_2 + 512 + OFFSET_X, 1, 26 );

-- ** 音 ** --
--指機弾溜め
SE012 = playSeVer2( spep_2 + 16, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE012, 141 );
SE013 = playSeVer2( spep_2 + 28, 1015, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 28, 1254, "",spep_2 + 104, 0, 20, -1);
SE015 = playSeVer2( spep_2 + 28, 1296, "",spep_2 + 104, 0, 22, -1);

--時空切り裂く
SE016 = playSeVer2( spep_2 + 78, 1026, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 78, 1061, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 88, 1143, "", 0, 0, 0, -1);

--時空拡大する
SE019 = playSeVer2( spep_2 + 114, 1158, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114, SE019, 82 );
SE020 = playSeVer2( spep_2 + 114, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114, SE020, 52 );

--気弾飛んでくる
SE021 = playSeVer2( spep_2 + 144, 1027, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 144, 1424, "", 0, 0, 0, -1);

--エネルギー増大する
SE023 = playSeVer2( spep_2 + 230, 1215, "",spep_2 + 372, 34, 44, -1);
setStartTimeMs( SE023,  1300 );

--敵ヒット
SE024 = playSeVer2( spep_2 + 188, 1032, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 188, 1114, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 202, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 202, SE026, 61 );

--爆発
SE027 = playSeVer2( spep_2 + 316, 1156, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 316, 1159, "", 0, 0, 0, -1);

--時計音
SE029 = playSeVer2( spep_2 + 372, 1136, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 372, SE029, 63 );
setPitch( spep_2 + 372, SE029, -1200 );
setTimeStretch( SE029, 0.2, 30, 4 );

--キャラの動き
SE030 = playSeVer2( spep_2 + 386, 8, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 420 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 528

end
