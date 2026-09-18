--1030530:LR_フリーザ(最終形態)(天使)+孫悟空_超必殺技：恨みっこなしの一発
--sp_effect_b1_00311
--sp2833

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(敵味方共通)
SP_01  = 163620;  --ef_001 開幕,瞬間移動から波の間を移動
SP_02  = 163621;  --ef_002 アップから接近して一撃

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

-------------------------------------------------
-- 開幕,瞬間移動から波の間を移動
-------------------------------------------------
MAX_FRAME_0 = 460;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕,瞬間移動から波の間を移動(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
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
setDisp( spep_0 + 90 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 211.1, 36.9 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 211.8, 37.2 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 211.8, 37.2 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 212.4, 37.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 212.4, 37.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 213, 37.6 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 213, 37.6 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 213.5, 37.8 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 213.5, 37.8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 214, 38 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 214, 38 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 214.5, 38.1 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 214.5, 38.1 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 214.9, 38.3 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 214.9, 38.3 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 215.2, 38.4 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 215.2, 38.4 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 215.6, 38.5 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 215.6, 38.5 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 215.9, 38.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 215.9, 38.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 216.2, 38.7 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 216.2, 38.7 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 216.4, 38.8 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 216.4, 38.8 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 216.7, 38.9 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 216.7, 38.9 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 217, 39 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 217, 39 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 217.2, 39.1 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 217.2, 39.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 217.4, 39.2 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 217.4, 39.2 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 217.7, 39.2 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 217.7, 39.2 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 217.9, 39.3 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 217.9, 39.3 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 218.1, 39.4 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 218.1, 39.4 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 218.4, 39.5 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 218.4, 39.5 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 218.6, 39.6 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 218.6, 39.6 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 218.9, 39.7 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 218.9, 39.7 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 219.1, 39.8 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 219.1, 39.8 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 219.4, 39.8 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 219.4, 39.8 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 219.7, 39.9 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 219.7, 39.9 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 220, 40.1 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 220, 40.1 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 220.3, 40.2 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 220.3, 40.2 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 220.7, 40.3 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 220.7, 40.3 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 221, 40.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 221, 40.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 221.4, 40.6 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 221.4, 40.6 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 221.9, 40.7 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 221.9, 40.7 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 222.3, 40.9 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 222.3, 40.9 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 222.8, 41 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 222.8, 41 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 223.3, 41.2 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 223.3, 41.2 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 223.9, 41.4 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 223.9, 41.4 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 224.5, 41.6 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 224.5, 41.6 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 225.1, 41.8 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 225.1, 41.8 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 225.8, 42.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 225.8, 42.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 226.5, 42.3 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 226.5, 42.3 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 227.2, 42.6 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 227.2, 42.6 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 228, 42.8 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 228, 42.8 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 228.9, 43.1 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 228.9, 43.1 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 229.8, 43.5 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 229.8, 43.5 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 230.9, 43.8 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 230.9, 43.8 , 0 );

setScaleKey( spep_0 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 1.5, 1.5 );

setRotateKey( spep_0 + 0, 1, 10 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, 10 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 276, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--瞬間移動
SE005 = playSeVer2( spep_0 + 72, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE005, 63 );
SE006 = playSeVer2( spep_0 + 76, 1109, "", 0, 0, 0, -1);

--水飛沫あがる
SE004 = playSeVer2( spep_0 + 68, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE004, 158 );
SE007 = playSeVer2( spep_0 + 82, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 82, SE007, 158 );
setPitch( spep_0 + 82, SE007, -200 );
setTimeStretch( SE007, 0.87, 30, 4 );
SE008 = playSeVer2( spep_0 + 98, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE008, 78 );
SE009 = playSeVer2( spep_0 + 102, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE009, 170 );
setPitch( spep_0 + 102, SE009, -500 );
setTimeStretch( SE009, 0.67, 30, 4 );
SE010 = playSeVer2( spep_0 + 108, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE010, 69 );
SE011 = playSeVer2( spep_0 + 124, 1166, "",spep_0 + 342, 0, 100, -1);
SE012 = playSeVer2( spep_0 + 134, 1024, "", 0, 0, 0, -1);

--瞬間移動
SE013 = playSeVer2( spep_0 + 182, 1245, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 186, 1109, "", 0, 0, 0, -1);

--気ダメ
SE015 = playSeVer2( spep_0 + 222, 1179, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 232, 1035, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 232, 1011, "", 0, 0, 0, -1);

--向かっていく
SE018 = playSeVer2( spep_0 + 288, 1011, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 288, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE019, 136 );

--オーラ音
SE020 = playSeVer2( spep_0 + 294, 1314, "",spep_0 + 480, 0, 18, -1);
SE021 = playSeVer2( spep_0 + 294, 1477, "",spep_0 + 470, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 294, SE021, 68 );
SE022 = playSeVer2( spep_0 + 294, 1356, "",spep_0 + 490, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 294, SE022, 73 );
setPitch( spep_0 + 294, SE022, 500 );
setTimeStretch( SE022, 1.33, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 370; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
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


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 460f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0)+2;

-- ** 音 ** --
--オーラ音
SE023 = playSeVer2( spep_1 + 76, 1356, "",spep_1 + 240, 6, 22, -1);
setSeVolumeByWorkId( spep_1 + 76, SE023, 71 );
setStartTimeMs( SE023,  3267 );
setPitch( spep_1 + 80, SE023, 500 );
setTimeStretch( SE023, 1.33, 30, 4 );
SE025 = playSeVer2( spep_1 + 78, 1477, "",spep_1 + 232, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 78, SE025, 68 );
SE026 = playSeVer2( spep_1 + 78, 1314, "",spep_1 + 240, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 78, SE026, 82 );


-------------------------------------------------
-- アップから接近して一撃
-------------------------------------------------
MAX_FRAME_2 = 412;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- アップから接近して一撃(ef_002)
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

-- ** 敵キャラクター ** --
setDisp( spep_2 + 158 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 412 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 158 + OFFSET_X, 1, 109 );
changeAnime( spep_2 + 240 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 158 + OFFSET_X, 1, -65.3, 277.4 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -65.3, 277.4 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -58, 254.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -58, 254.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -59.9, 270.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -59.9, 270.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -42.4, 262.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -42.4, 262.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -66.9, 299.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -66.9, 299.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -60.2, 263.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -60.2, 263.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -50.6, 299.6 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -50.6, 299.6 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -54.9, 268.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -54.9, 268.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -56.6, 282.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -56.6, 282.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -63, 262.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -63, 262.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -59.5, 277.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -59.5, 277.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -40.9, 266.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -40.9, 266.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -65, 274 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -65, 274 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -51.8, 242.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -51.8, 242.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -54.6, 276.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -54.6, 276.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -51.7, 246.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -51.7, 246.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -64.7, 274.3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -64.7, 274.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -45.9, 235.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -45.9, 235.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -67, 296.4 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -67, 296.4 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -54.6, 242 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -54.6, 242 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -50.7, 271.5 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -50.7, 271.5 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -59.1, 256.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -59.1, 256.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -62.9, 282 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -62.9, 282 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -51.8, 242.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -51.8, 242.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -57.4, 276.9 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -57.4, 276.9 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -53.8, 245.8 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -53.8, 245.8 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -66.4, 276.4 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -66.4, 276.4 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -46.2, 236.4 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -46.2, 236.4 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -43.5, 291.8 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -43.5, 291.8 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -64.2, 297.1 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -64.2, 297.1 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -57, 244 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -57, 244 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -48.9, 273.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -48.9, 273.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -57.9, 258 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -57.9, 258 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 201.9, -117.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 201.9, -117.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 196.4, -108.3 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 196.4, -108.3 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 195.2, -139.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 195.2, -139.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 203.4, -115.4 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 203.4, -115.4 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 196.6, -144 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 196.6, -144 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 212.1, -123.4 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 212.1, -123.4 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 214.2, -148.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 214.2, -148.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 206.5, -128.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 206.5, -128.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 221.3, -155.7 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 221.3, -155.7 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 217, -137.7 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 217, -137.7 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 229.4, -159.9 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 229.4, -159.9 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 228.2, -149 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 228.2, -149 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 238.2, -169.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 238.2, -169.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 236.4, -156 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 236.4, -156 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 240.5, -176.7 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 240.5, -176.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 240.6, -177.1 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 240.6, -177.1 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 240.7, -177.6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 240.7, -177.6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 240.8, -178 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 240.8, -178 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 240.9, -178.5 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 240.9, -178.5 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 240.9, -178.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 240.9, -178.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 241, -179.4 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 241, -179.4 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 241.1, -179.8 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 241.1, -179.8 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 241.2, -180.3 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 241.2, -180.3 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 241.3, -180.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 241.3, -180.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 241.3, -181.2 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 241.3, -181.2 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 241.4, -181.6 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 241.4, -181.6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 241.5, -182.1 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 241.5, -182.1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 241.6, -182.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 241.6, -182.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 241.7, -183 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 241.7, -183 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 241.7, -183.4 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 241.7, -183.4 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 241.8, -183.9 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 241.8, -183.9 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 241.9, -184.3 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 241.9, -184.3 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 242, -184.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 242, -184.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 242.1, -185.2 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 242.1, -185.2 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 242.1, -185.7 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 242.1, -185.7 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 242.2, -186.1 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 242.2, -186.1 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 242.3, -186.6 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 242.3, -186.6 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 242.4, -187.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 242.4, -187.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 242.5, -187.5 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 242.5, -187.5 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 242.5, -188 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 242.5, -188 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 242.6, -188.4 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 242.6, -188.4 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 242.7, -188.9 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 242.7, -188.9 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 242.8, -189.3 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 242.8, -189.3 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 242.9, -189.8 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 242.9, -189.8 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 242.9, -190.2 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 242.9, -190.2 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 243, -190.7 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 243, -190.7 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 243.1, -191.1 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 243.1, -191.1 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 243.2, -191.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 243.2, -191.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 243.3, -192 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 243.3, -192 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 243.3, -192.5 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 243.3, -192.5 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 243.4, -192.9 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 243.4, -192.9 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 243.5, -193.4 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 243.5, -193.4 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 243.6, -193.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 243.6, -193.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 243.7, -194.3 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 243.7, -194.3 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 243.7, -194.7 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 243.7, -194.7 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 243.8, -195.2 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 243.8, -195.2 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 243.9, -195.6 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 243.9, -195.6 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 244, -196.1 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 244, -196.1 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 244.1, -196.5 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 244.1, -196.5 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 244.1, -197 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 244.1, -197 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 244.2, -197.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 244.2, -197.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 244.3, -197.9 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 244.3, -197.9 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 244.4, -198.3 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 244.4, -198.3 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 244.5, -198.8 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 244.5, -198.8 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 244.5, -199.2 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 244.5, -199.2 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 244.6, -199.7 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 244.6, -199.7 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 244.7, -200.1 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 244.7, -200.1 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 244.8, -200.6 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 244.8, -200.6 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 244.9, -201 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 244.9, -201 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 244.9, -201.5 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 244.9, -201.5 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 245, -202 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 245, -202 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 245.1, -202.4 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 245.1, -202.4 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 245.2, -202.9 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 245.2, -202.9 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 245.3, -203.3 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 245.3, -203.3 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 245.3, -203.8 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 245.3, -203.8 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 245.4, -204.2 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 245.4, -204.2 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 245.5, -204.7 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 245.5, -204.7 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 245.6, -205.1 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 245.6, -205.1 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 245.7, -205.6 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 245.7, -205.6 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 245.7, -206 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 245.7, -206 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 245.8, -206.5 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 245.8, -206.5 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 245.9, -206.9 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 245.9, -206.9 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 246, -207.4 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 246, -207.4 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 246, -207.8 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 246, -207.8 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 246.1, -208.3 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 246.1, -208.3 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 246.2, -208.7 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 246.2, -208.7 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 246.3, -209.2 , 0 );

setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 1.6, 1.6 );

setRotateKey( spep_2 + 158 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 407 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, -13.5 );

setBlendColor( spep_2 + 158 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 239 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 240 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );
setBlendColor( spep_2 + 412 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--振りかぶる
SE027 = playSeVer2( spep_2 + 24, 1116, "",spep_2 + 66, 0, 18, -1);
SE028 = playSeVer2( spep_2 + 30, 1004, "", 0, 0, 0, -1);

--向かってくる
SE029 = playSeVer2( spep_2 + 42, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE029, 83 );
SE030 = playSeVer2( spep_2 + 42, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE030, 37 );
SE031 = playSeVer2( spep_2 + 78, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 78, SE031, 182 );

--パンチヒット
SE032 = playSeVer2( spep_2 + 106, 1120, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 106, 1187, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 138, 1188, "", 0, 0, 0, -1);

--ラスト余韻
SE035 = playSeVer2( spep_2 + 160, 1278, "", 0, 82, 0, -1);
setSeVolumeByWorkId( spep_2 + 160, SE035, 47 );
setStartTimeMs( SE035,  367 );
SE036 = playSeVer2( spep_2 + 204, 1120, "", 0, 14, 0, -1);
SE037 = playSeVer2( spep_2 + 204, 8, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 204, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 204, SE038, 25 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 278 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2 ); -- 終了フレーム  412f -2f


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕,瞬間移動から波の間を移動
-------------------------------------------------
MAX_FRAME_0 = 460;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕,瞬間移動から波の間を移動(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
setDisp( spep_0 + 90 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 18 );

setMoveKey( spep_0 + 0, 1, -211.1, 36.9 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -211.8, 37.2 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -211.8, 37.2 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -212.4, 37.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -212.4, 37.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -213, 37.6 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -213, 37.6 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -213.5, 37.8 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -213.5, 37.8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -214, 38 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -214, 38 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -214.5, 38.1 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -214.5, 38.1 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -214.9, 38.3 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -214.9, 38.3 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -215.2, 38.4 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -215.2, 38.4 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -215.6, 38.5 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -215.6, 38.5 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -215.9, 38.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -215.9, 38.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -216.2, 38.7 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -216.2, 38.7 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -216.4, 38.8 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -216.4, 38.8 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -216.7, 38.9 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -216.7, 38.9 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -217, 39 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -217, 39 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -217.2, 39.1 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -217.2, 39.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -217.4, 39.2 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -217.4, 39.2 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -217.7, 39.2 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -217.7, 39.2 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -217.9, 39.3 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -217.9, 39.3 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -218.1, 39.4 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -218.1, 39.4 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -218.4, 39.5 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -218.4, 39.5 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -218.6, 39.6 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -218.6, 39.6 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -218.9, 39.7 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -218.9, 39.7 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -219.1, 39.8 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -219.1, 39.8 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -219.4, 39.8 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -219.4, 39.8 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -219.7, 39.9 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -219.7, 39.9 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -220, 40.1 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -220, 40.1 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -220.3, 40.2 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -220.3, 40.2 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -220.7, 40.3 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -220.7, 40.3 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -221, 40.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -221, 40.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -221.4, 40.6 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -221.4, 40.6 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -221.9, 40.7 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -221.9, 40.7 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -222.3, 40.9 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -222.3, 40.9 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -222.8, 41 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -222.8, 41 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -223.3, 41.2 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -223.3, 41.2 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -223.9, 41.4 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -223.9, 41.4 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -224.5, 41.6 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -224.5, 41.6 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -225.1, 41.8 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -225.1, 41.8 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -225.8, 42.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -225.8, 42.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -226.5, 42.3 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -226.5, 42.3 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -227.2, 42.6 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -227.2, 42.6 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -228, 42.8 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -228, 42.8 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -228.9, 43.1 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -228.9, 43.1 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -229.8, 43.5 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -229.8, 43.5 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -230.9, 43.8 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -230.9, 43.8 , 0 );

setScaleKey( spep_0 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 1.5, 1.5 );

setRotateKey( spep_0 + 0, 1, -10 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, -10 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 276, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--瞬間移動
SE005 = playSeVer2( spep_0 + 72, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE005, 63 );
SE006 = playSeVer2( spep_0 + 76, 1109, "", 0, 0, 0, -1);

--水飛沫あがる
SE004 = playSeVer2( spep_0 + 68, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE004, 158 );
SE007 = playSeVer2( spep_0 + 82, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 82, SE007, 158 );
setPitch( spep_0 + 82, SE007, -200 );
setTimeStretch( SE007, 0.87, 30, 4 );
SE008 = playSeVer2( spep_0 + 98, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE008, 78 );
SE009 = playSeVer2( spep_0 + 102, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE009, 170 );
setPitch( spep_0 + 102, SE009, -500 );
setTimeStretch( SE009, 0.67, 30, 4 );
SE010 = playSeVer2( spep_0 + 108, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE010, 69 );
SE011 = playSeVer2( spep_0 + 124, 1166, "",spep_0 + 342, 0, 100, -1);
SE012 = playSeVer2( spep_0 + 134, 1024, "", 0, 0, 0, -1);

--瞬間移動
SE013 = playSeVer2( spep_0 + 182, 1245, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 186, 1109, "", 0, 0, 0, -1);

--気ダメ
SE015 = playSeVer2( spep_0 + 222, 1179, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 232, 1035, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 232, 1011, "", 0, 0, 0, -1);

--向かっていく
SE018 = playSeVer2( spep_0 + 288, 1011, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 288, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE019, 136 );

--オーラ音
SE020 = playSeVer2( spep_0 + 294, 1314, "",spep_0 + 480, 0, 18, -1);
SE021 = playSeVer2( spep_0 + 294, 1477, "",spep_0 + 470, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 294, SE021, 68 );
SE022 = playSeVer2( spep_0 + 294, 1356, "",spep_0 + 490, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 294, SE022, 73 );
setPitch( spep_0 + 294, SE022, 500 );
setTimeStretch( SE022, 1.33, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 370; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
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


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 460f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0)+2;

-- ** 音 ** --
--オーラ音
SE023 = playSeVer2( spep_1 + 76, 1356, "",spep_1 + 240, 6, 22, -1);
setSeVolumeByWorkId( spep_1 + 76, SE023, 71 );
setStartTimeMs( SE023,  3267 );
setPitch( spep_1 + 80, SE023, 500 );
setTimeStretch( SE023, 1.33, 30, 4 );
SE025 = playSeVer2( spep_1 + 78, 1477, "",spep_1 + 232, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 78, SE025, 68 );
SE026 = playSeVer2( spep_1 + 78, 1314, "",spep_1 + 240, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 78, SE026, 82 );


-------------------------------------------------
-- アップから接近して一撃
-------------------------------------------------
MAX_FRAME_2 = 412;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- アップから接近して一撃(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 158 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 412 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 158 + OFFSET_X, 1, 9 );
changeAnime( spep_2 + 240 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 158 + OFFSET_X, 1, 65.3, 277.4 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 65.3, 277.4 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 58, 254.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 58, 254.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 59.9, 270.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 59.9, 270.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 42.4, 262.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 42.4, 262.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 66.9, 299.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 66.9, 299.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 60.2, 263.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 60.2, 263.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 50.6, 299.6 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 50.6, 299.6 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 54.9, 268.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 54.9, 268.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 56.6, 282.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 56.6, 282.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 63, 262.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 63, 262.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 59.5, 277.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 59.5, 277.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 40.9, 266.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 40.9, 266.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 65, 274 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 65, 274 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 51.8, 242.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 51.8, 242.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 54.6, 276.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 54.6, 276.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 51.7, 246.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 51.7, 246.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 64.7, 274.3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 64.7, 274.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 45.9, 235.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 45.9, 235.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 67, 296.4 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 67, 296.4 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 54.6, 242 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 54.6, 242 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 50.7, 271.5 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 50.7, 271.5 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 59.1, 256.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 59.1, 256.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 62.9, 282 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 62.9, 282 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 51.8, 242.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 51.8, 242.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 57.4, 276.9 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 57.4, 276.9 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 53.8, 245.8 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 53.8, 245.8 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 66.4, 276.4 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 66.4, 276.4 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 46.2, 236.4 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 46.2, 236.4 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 43.5, 291.8 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 43.5, 291.8 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 64.2, 297.1 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 64.2, 297.1 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 57, 244 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 57, 244 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 48.9, 273.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 48.9, 273.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 57.9, 258 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 57.9, 258 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -201.9, -117.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -201.9, -117.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -196.4, -108.3 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -196.4, -108.3 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -195.2, -139.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -195.2, -139.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -203.4, -115.4 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -203.4, -115.4 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -196.6, -144 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -196.6, -144 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -212.1, -123.4 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -212.1, -123.4 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -214.2, -148.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -214.2, -148.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -206.5, -128.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -206.5, -128.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -221.3, -155.7 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -221.3, -155.7 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -217, -137.7 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -217, -137.7 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -229.4, -159.9 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -229.4, -159.9 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -228.2, -149 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -228.2, -149 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -238.2, -169.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -238.2, -169.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -236.4, -156 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -236.4, -156 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -240.5, -176.7 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -240.5, -176.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -240.6, -177.1 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -240.6, -177.1 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -240.7, -177.6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -240.7, -177.6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -240.8, -178 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -240.8, -178 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -240.9, -178.5 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -240.9, -178.5 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -240.9, -178.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -240.9, -178.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -241, -179.4 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -241, -179.4 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -241.1, -179.8 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -241.1, -179.8 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -241.2, -180.3 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -241.2, -180.3 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -241.3, -180.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -241.3, -180.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -241.3, -181.2 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -241.3, -181.2 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -241.4, -181.6 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -241.4, -181.6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -241.5, -182.1 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -241.5, -182.1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -241.6, -182.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -241.6, -182.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -241.7, -183 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -241.7, -183 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -241.7, -183.4 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -241.7, -183.4 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -241.8, -183.9 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -241.8, -183.9 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -241.9, -184.3 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -241.9, -184.3 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -242, -184.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -242, -184.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -242.1, -185.2 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -242.1, -185.2 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -242.1, -185.7 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -242.1, -185.7 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -242.2, -186.1 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -242.2, -186.1 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -242.3, -186.6 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -242.3, -186.6 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -242.4, -187.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -242.4, -187.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -242.5, -187.5 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -242.5, -187.5 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -242.5, -188 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -242.5, -188 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -242.6, -188.4 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -242.6, -188.4 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -242.7, -188.9 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -242.7, -188.9 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -242.8, -189.3 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -242.8, -189.3 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -242.9, -189.8 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -242.9, -189.8 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -242.9, -190.2 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -242.9, -190.2 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -243, -190.7 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -243, -190.7 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -243.1, -191.1 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -243.1, -191.1 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -243.2, -191.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -243.2, -191.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -243.3, -192 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -243.3, -192 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -243.3, -192.5 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -243.3, -192.5 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -243.4, -192.9 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -243.4, -192.9 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -243.5, -193.4 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -243.5, -193.4 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -243.6, -193.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -243.6, -193.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -243.7, -194.3 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -243.7, -194.3 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -243.7, -194.7 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -243.7, -194.7 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -243.8, -195.2 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -243.8, -195.2 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -243.9, -195.6 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -243.9, -195.6 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -244, -196.1 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -244, -196.1 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -244.1, -196.5 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -244.1, -196.5 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -244.1, -197 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -244.1, -197 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -244.2, -197.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -244.2, -197.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -244.3, -197.9 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -244.3, -197.9 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -244.4, -198.3 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -244.4, -198.3 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -244.5, -198.8 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -244.5, -198.8 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -244.5, -199.2 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -244.5, -199.2 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -244.6, -199.7 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -244.6, -199.7 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -244.7, -200.1 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -244.7, -200.1 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -244.8, -200.6 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -244.8, -200.6 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -244.9, -201 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -244.9, -201 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -244.9, -201.5 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -244.9, -201.5 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -245, -202 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -245, -202 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -245.1, -202.4 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -245.1, -202.4 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -245.2, -202.9 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -245.2, -202.9 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -245.3, -203.3 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -245.3, -203.3 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -245.3, -203.8 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -245.3, -203.8 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -245.4, -204.2 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -245.4, -204.2 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -245.5, -204.7 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -245.5, -204.7 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -245.6, -205.1 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -245.6, -205.1 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -245.7, -205.6 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -245.7, -205.6 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -245.7, -206 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -245.7, -206 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -245.8, -206.5 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -245.8, -206.5 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -245.9, -206.9 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -245.9, -206.9 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -246, -207.4 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -246, -207.4 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -246, -207.8 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -246, -207.8 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -246.1, -208.3 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -246.1, -208.3 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -246.2, -208.7 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -246.2, -208.7 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -246.3, -209.2 , 0 );

setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 1.6, 1.6 );

setRotateKey( spep_2 + 158 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, 14.1 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, 14.1 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_2 + 407 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, 13.5 );

setBlendColor( spep_2 + 120 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 239 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 240 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );
setBlendColor( spep_2 + 412 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--振りかぶる
SE027 = playSeVer2( spep_2 + 24, 1116, "",spep_2 + 66, 0, 18, -1);
SE028 = playSeVer2( spep_2 + 30, 1004, "", 0, 0, 0, -1);

--向かってくる
SE029 = playSeVer2( spep_2 + 42, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE029, 83 );
SE030 = playSeVer2( spep_2 + 42, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE030, 37 );
SE031 = playSeVer2( spep_2 + 78, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 78, SE031, 182 );

--パンチヒット
SE032 = playSeVer2( spep_2 + 106, 1120, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 106, 1187, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 138, 1188, "", 0, 0, 0, -1);

--ラスト余韻
SE035 = playSeVer2( spep_2 + 160, 1278, "", 0, 82, 0, -1);
setSeVolumeByWorkId( spep_2 + 160, SE035, 47 );
setStartTimeMs( SE035,  367 );
SE036 = playSeVer2( spep_2 + 204, 1120, "", 0, 14, 0, -1);
SE037 = playSeVer2( spep_2 + 204, 8, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 204, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 204, SE038, 25 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 278 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2 ); -- 終了フレーム  412f -2f

end
