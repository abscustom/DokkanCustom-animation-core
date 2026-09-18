--1027940:UR_ウーロン&ランチ_必殺技：ハッタリとマシンガン
--sp_effect_a8_00045
--sp2630

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162377; --開幕～交代からセリフ ef_001
SP_02 = 162378; --開幕～交代からセリフ ef_001b
SP_03 = 162381; --マシンガン準備～フィニッシュ ef_002
SP_04 = 162382; --マシンガン準備～フィニッシュ ef_002b

--エフェクト(てき)
SP_01r = 162379; --開幕～交代からセリフ ef_001r
SP_02r = 162380; --開幕～交代からセリフ ef_001br
SP_03r = 162383; --マシンガン準備～フィニッシュ ef_002r
SP_04r = 162384; --マシンガン準備～フィニッシュ ef_002br

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
--]]

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～交代からセリフ
-------------------------------------------------
MAX_FRAME_0 = 772;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); --開幕～交代からセリフ ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); --開幕～交代からセリフ ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 686;
  
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
  
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 0, 1, 1);
setDisp( spep_0 + 88 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 213.7, -107.2 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 213.7, -107.2 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 213.7, -107.2 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 213.7, -107.1 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 213.7, -107.1 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 213.7, -107 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 213.7, -107 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 213.7, -106.9 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 213.7, -106.9 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 213.7, -106.8 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 213.7, -106.7 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 213.7, -106.7 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 213.7, -106.6 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 213.7, -106.5 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 213.7, -106.4 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 213.7, -106.4 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 213.7, -106.3 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 213.7, -106.2 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 213.7, -106.2 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 213.7, -106.1 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 213.7, -106 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 213.7, -105.9 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 213.7, -105.9 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 213.7, -105.8 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 213.7, -105.7 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 213.7, -105.7 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 213.7, -105.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 213.7, -105.5 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 213.7, -105.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 213.7, -105.4 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 213.7, -105.3 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 213.7, -105.2 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 213.7, -105.2 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 213.7, -105.1 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 213.7, -105 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 213.7, -104.9 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 213.7, -104.9 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 213.7, -104.8 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 213.7, -104.7 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 213.7, -104.6 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 213.7, -104.6 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 213.7, -104.5 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 213.7, -104.4 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 213.7, -104.4 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 213.7, -104.3 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 213.7, -104.2 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 213.7, -104.1 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 213.7, -104.1 , 0 );

setScaleKey( spep_0 + 0, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 3.28, 3.28 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 88 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 240 + OFFSET_X, 1, 1);
setDisp( spep_0 + 278 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 246 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 240 + OFFSET_X, 1, 226.2, -83.8 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 226.2, -66.4 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 235.4, -87.5 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 234, -73.9 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 248.7, -79 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 254.4, -77.4 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 254.4, -77.4 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 456.6, -64.7 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 947.9, -5.5 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 947.9, -5.5 , 0 );

setScaleKey( spep_0 + 240 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 5.07, 5.07 );

-- 敵の動き3
setDisp( spep_0 + 512 + OFFSET_X, 1, 1);
setDisp( spep_0 + 572 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 512 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 512 + OFFSET_X, 1, 244, -151.4 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 244, -151.4 , 0 );

setScaleKey( spep_0 + 512 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 3.07, 3.07 );

setRotateKey( spep_0 + 512 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 572 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--悟空？が飛び出てくる
SE002 = playSeVer2( spep_0 + 86, 1189, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 90, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE003, 68 );
--悟空？着地
SE004 = playSeVer2( spep_0 + 124, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 124, SE004, 174 );
SE005 = playSeVer2( spep_0 + 124, 1192, "",spep_0 + 146, 0, 8, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 141; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
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
--ポーズとる
SE006 = playSeVer2( spep_0 + 158, 1237, "", 0, 0, 0, -1);
--構える
SE007 = playSeVer2( spep_0 + 180, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE007, 155 );
SE008 = playSeVer2( spep_0 + 184, 1003, "", 0, 0, 0, -1);
--構える２
SE009 = playSeVer2( spep_0 + 208, 1189, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 212, 1006, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 212, 1003, "", 0, 0, 0, -1);
--敵萎縮
SE012 = playSeVer2( spep_0 + 242, 1007, "", 0, 0, 0, -1);
--ズーム
SE013 = playSeVer2( spep_0 + 272, 1232, "", 0, 0, 0, -1);
--鼻ひくひくする
SE014 = playSeVer2( spep_0 + 316, 1113, "", 0, 0, 0, -1);
setPitch( spep_0 + 316, SE014, 400 );
setTimeStretch( SE014, 1.27, 30, 4 );
SE015 = playSeVer2( spep_0 + 324, 1113, "", 0, 0, 0, -1);
setPitch( spep_0 + 324, SE015, 400 );
setTimeStretch( SE015, 1.27, 30, 4 );
SE016 = playSeVer2( spep_0 + 348, 1113, "", 0, 0, 0, -1);
setPitch( spep_0 + 348, SE016, 400 );
setTimeStretch( SE016, 1.27, 30, 4 );
SE017 = playSeVer2( spep_0 + 356, 1113, "", 0, 0, 0, -1);
setPitch( spep_0 + 356, SE017, 400 );
setTimeStretch( SE017, 1.27, 30, 4 );
SE018 = playSeVer2( spep_0 + 380, 1113, "", 0, 0, 0, -1);
setPitch( spep_0 + 380, SE018, 400 );
setTimeStretch( SE018, 1.27, 30, 4 );
SE019 = playSeVer2( spep_0 + 390, 1113, "", 0, 0, 0, -1);
setPitch( spep_0 + 390, SE019, 400 );
setTimeStretch( SE019, 1.27, 30, 4 );
--変身とける
SE020 = playSeVer2( spep_0 + 408, 1190, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE020, 68 );
setStartTimeMs( SE020,  133 );
SE021 = playSeVer2( spep_0 + 410, 1112, "", 0, 0, 0, -1);
--BOM
SE022 = playSeVer2( spep_0 + 482, 31, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 482, 1011, "", 0, 0, 0, -1);
--バランスくずす
SE024 = playSeVer2( spep_0 + 536, 1113, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 536, SE024, 79 );
setPitch( spep_0 + 536, SE024, -200 );
setTimeStretch( SE024, 0.87, 30, 4 );
SE025 = playSeVer2( spep_0 + 550, 1113, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 550, SE025, 79 );
setPitch( spep_0 + 550, SE025, -200 );
setTimeStretch( SE025, 0.87, 30, 4 );
SE026 = playSeVer2( spep_0 + 564, 1113, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 564, SE026, 79 );
setPitch( spep_0 + 564, SE026, -200 );
setTimeStretch( SE026, 0.87, 30, 4 );
SE027 = playSeVer2( spep_0 + 580, 1113, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 580, SE027, 79 );
setPitch( spep_0 + 580, SE027, -200 );
setTimeStretch( SE027, 0.87, 30, 4 );
--ランチ登場
SE028 = playSeVer2( spep_0 + 604, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 604, SE028, 126 );
SE029 = playSeVer2( spep_0 + 616, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 616, SE029, 141 );
SE030 = playSeVer2( spep_0 + 628, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 628, SE030, 133 );
--画面遷移
SE031 = playSeVer2( spep_0 + 662, 44, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 770, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; -- 772

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- -- ** カードカットイン ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");

    speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

    spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -95 );
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え

    -- ** 放射線(黄) ** --
    housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
    setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
    setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
    setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
    setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
    setEffRotateKey( spep_c + 0, housha, 0 );
    setEffRotateKey( spep_c + 90, housha, 0 );
    setEffAlphaKey( spep_c + 0, housha, 255 );
    setEffAlphaKey( spep_c + 90, housha, 255 );

    -- ** 集中線 ** --
    shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
    setEffShake( spep_c + 0, shuchusen, 90, 20 );
    setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
    setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
    setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
    setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
    setEffRotateKey( spep_c + 0, shuchusen, 0 );
    setEffRotateKey( spep_c + 90, shuchusen, 0 );
    setEffAlphaKey( spep_c + 0, shuchusen, 255 );
    setEffAlphaKey( spep_c + 90, shuchusen, 255 );

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    -- ** カードカットイン ** --
    speff2 = entryEffectLife( spep_c + 0, 3248, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

    -- ** 雷エフェクト ** --
    kaminari = entryEffectLife( spep_c + 0, 3247, 90, 0x100, -1, 0, 0, 0 );  -- 雷エフェクト
    setEffMoveKey( spep_c + 0, kaminari, 0, 0 , 0 );
    setEffMoveKey( spep_c + 90, kaminari, 0, 0 , 0 );
    setEffScaleKey( spep_c + 0, kaminari, 1.0, 1.0 );
    setEffScaleKey( spep_c + 90, kaminari, 1.0, 1.0 );
    setEffRotateKey( spep_c + 0, kaminari, 0 );
    setEffRotateKey( spep_c + 90, kaminari, 0 );
    setEffAlphaKey( spep_c + 0, kaminari, 255 );
    setEffAlphaKey( spep_c + 90, kaminari, 255 );

    spname = entryEffectLife( spep_c + 0, 3246, 90, 0x100, -1, 0, 0, -95 );
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え

    -- ** 極限背景 ** --
    haikei = entryEffectLife( spep_c + 0, 3249, 90, 0x80, -1, 0, 0, 0 );  -- 極限背景
    setEffMoveKey( spep_c + 0, haikei, 0, 0 , 0 );
    setEffMoveKey( spep_c + 90, haikei, 0, 0 , 0 );
    setEffScaleKey( spep_c + 0, haikei, 1.0, 1.0 );
    setEffScaleKey( spep_c + 90, haikei, 1.0, 1.0 );
    setEffRotateKey( spep_c + 0, haikei, 0 );
    setEffRotateKey( spep_c + 90, haikei, 0 );
    setEffAlphaKey( spep_c + 0, haikei, 255 );
    setEffAlphaKey( spep_c + 90, haikei, 255 );

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    -- ** カードカットイン ** --
    speff2 = entryEffectLife( spep_c + 0, 3252, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

    -- ** 雷エフェクト ** --
    kaminari = entryEffectLife( spep_c + 0, 3251, 90, 0x100, -1, 0, 0, 0 );  -- 雷エフェクト
    setEffMoveKey( spep_c + 0, kaminari, 0, 0 , 0 );
    setEffMoveKey( spep_c + 90, kaminari, 0, 0 , 0 );
    setEffScaleKey( spep_c + 0, kaminari, 1.0, 1.0 );
    setEffScaleKey( spep_c + 90, kaminari, 1.0, 1.0 );
    setEffRotateKey( spep_c + 0, kaminari, 0 );
    setEffRotateKey( spep_c + 90, kaminari, 0 );
    setEffAlphaKey( spep_c + 0, kaminari, 255 );
    setEffAlphaKey( spep_c + 90, kaminari, 255 );

    spname = entryEffectLife( spep_c + 0, 3250, 90, 0x100, -1, 0, 0, -95 );
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え

    -- ** 極限背景 ** --
    haikei = entryEffectLife( spep_c + 0, 3253, 90, 0x80, -1, 0, 0, 0 );  -- 極限背景
    setEffMoveKey( spep_c + 0, haikei, 0, 0 , 0 );
    setEffMoveKey( spep_c + 90, haikei, 0, 0 , 0 );
    setEffScaleKey( spep_c + 0, haikei, 1.0, 1.0 );
    setEffScaleKey( spep_c + 90, haikei, 1.0, 1.0 );
    setEffRotateKey( spep_c + 0, haikei, 0 );
    setEffRotateKey( spep_c + 90, haikei, 0 );
    setEffAlphaKey( spep_c + 0, haikei, 255 );
    setEffAlphaKey( spep_c + 90, haikei, 255 );
end

-- ** 音 ** --
--カードカットイン
SE033 = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);
--すごむ背景
SE034 = playSeVer2( spep_c + 88, 1264, "",spep_c + 186, 0, 44, -1);
setSeVolumeByWorkId( spep_c + 88, SE034, 50 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_c + 94;

-------------------------------------------------
-- マシンガン準備～フィニッシュ
-------------------------------------------------
MAX_FRAME_1 = 224;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0); --マシンガン準備～フィニッシュ ef_002
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_f, 0);
setEffAlphaKey( spep_1 + 0, finish_f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_f, 255);

finish_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0); --マシンガン準備～フィニッシュ ef_002b
setEffMoveKey( spep_1 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_b, 0);
setEffAlphaKey( spep_1 + 0, finish_b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_1 + 62 + OFFSET_X, 1, 1);
setDisp( spep_1 + 228 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 62 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 62 + OFFSET_X, 1, 206.2, -3.9 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_X, 1, 206.2, -3.9 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, 196.6, 5.3 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, 196.6, 5.3 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, 211.3, -7.8 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, 211.3, -7.8 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, 201.6, -3.9 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, 201.6, -3.9 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, 205.3, 6.5 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, 205.3, 6.5 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, 202.7, 3.5 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, 202.7, 3.5 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, 201.8, 5.4 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, 201.8, 5.4 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 206.8, 9 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, 206.8, 9 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 207.5, 3.1 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, 207.5, 3.1 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, 202.5, 8.4 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, 202.5, 8.4 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, 203.2, 4.6 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, 203.2, 4.6 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 208.7, 5.8 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 208.7, 5.8 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 202.4, 5.2 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 202.4, 5.2 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 204.4, 2.9 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 204.4, 2.9 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 203.3, 7.7 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 203.3, 7.7 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 203.9, 9.7 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 203.9, 9.7 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 201.8, 4.8 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 201.8, 4.8 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 201, 6.1 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 201, 6.1 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 207.5, 6.4 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 207.5, 6.4 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 208.3, 3 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 208.3, 3 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 202.5, 8.5 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 202.5, 8.5 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 204.7, 2.9 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 204.7, 2.9 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 202.5, 9.8 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 202.5, 9.8 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 206.1, 3.6 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 206.1, 3.6 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 202.4, 7.6 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 202.4, 7.6 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 206.7, 4.2 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 206.7, 4.2 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 206.5, 6 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 206.5, 6 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 202.5, 7.8 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 202.5, 7.8 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 206.6, 4.7 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 206.6, 4.7 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 201.1, 6.4 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 201.1, 6.4 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 203, 6.2 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 203, 6.2 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 203.1, 7.7 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 203.1, 7.7 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 204.3, 6 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 204.3, 6 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 199.2, 10.7 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 199.2, 10.7 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 207.3, 3 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 207.3, 3 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 201.8, 3.9 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 201.8, 3.9 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 204.5, 9.2 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 204.5, 9.2 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 202.6, 4 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 202.6, 4 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 201.8, 5.8 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 201.8, 5.8 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 206.6, 9.3 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 206.6, 9.3 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 207.3, 3.7 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 207.3, 3.7 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 202.5, 8.7 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 202.5, 8.7 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 203.1, 5.1 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 203.1, 5.1 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 208.4, 6.2 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 208.4, 6.2 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 202.3, 5.7 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 202.3, 5.7 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 204.3, 3.5 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 204.3, 3.5 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 203.2, 8.1 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 203.2, 8.1 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 203.8, 10 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, 203.8, 10 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, 201.8, 5.3 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, 201.8, 5.3 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, 201, 6.5 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, 201, 6.5 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, 207.3, 6.8 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, 207.3, 6.8 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, 208, 3.6 , 0 );
setMoveKey( spep_1 + 165 + OFFSET_X, 1, 208, 3.6 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, 202.5, 8.8 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_X, 1, 202.5, 8.8 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, 204.6, 3.5 , 0 );
setMoveKey( spep_1 + 169 + OFFSET_X, 1, 204.6, 3.5 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, 202.4, 10.1 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_X, 1, 202.4, 10.1 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, 205.9, 4.1 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_X, 1, 205.9, 4.1 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, 202.4, 8 , 0 );
setMoveKey( spep_1 + 175 + OFFSET_X, 1, 202.4, 8 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, 206.5, 4.7 , 0 );
setMoveKey( spep_1 + 177 + OFFSET_X, 1, 206.5, 4.7 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, 206.3, 6.4 , 0 );
setMoveKey( spep_1 + 179 + OFFSET_X, 1, 206.3, 6.4 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, 202.5, 8.2 , 0 );
setMoveKey( spep_1 + 181 + OFFSET_X, 1, 202.5, 8.2 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, 206.3, 5.2 , 0 );
setMoveKey( spep_1 + 183 + OFFSET_X, 1, 206.3, 5.2 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, 201.1, 6.8 , 0 );
setMoveKey( spep_1 + 185 + OFFSET_X, 1, 201.1, 6.8 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, 203, 6.6 , 0 );
setMoveKey( spep_1 + 187 + OFFSET_X, 1, 203, 6.6 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, 203, 8.1 , 0 );
setMoveKey( spep_1 + 189 + OFFSET_X, 1, 203, 8.1 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, 204.2, 6.4 , 0 );
setMoveKey( spep_1 + 191 + OFFSET_X, 1, 204.2, 6.4 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, 199.3, 11 , 0 );
setMoveKey( spep_1 + 193 + OFFSET_X, 1, 199.3, 11 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, 207.1, 3.5 , 0 );
setMoveKey( spep_1 + 195 + OFFSET_X, 1, 207.1, 3.5 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, 201.8, 4.4 , 0 );
setMoveKey( spep_1 + 197 + OFFSET_X, 1, 201.8, 4.4 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, 204.4, 9.5 , 0 );
setMoveKey( spep_1 + 199 + OFFSET_X, 1, 204.4, 9.5 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, 202.5, 4.6 , 0 );
setMoveKey( spep_1 + 201 + OFFSET_X, 1, 202.5, 4.6 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 201.8, 6.3 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, 201.8, 6.3 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 206.4, 9.6 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, 206.4, 9.6 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 207, 4.2 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, 207, 4.2 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 202.4, 9 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, 202.4, 9 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 203, 5.6 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, 203, 5.6 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 208.1, 6.6 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, 208.1, 6.6 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 202.3, 6.1 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, 202.3, 6.1 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 204.1, 4 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 204.1, 4 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 203.1, 8.5 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, 203.1, 8.5 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, 203.7, 10.3 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, 203.7, 10.3 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 201.7, 5.8 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, 201.7, 5.8 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, 201, 6.9 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, 201, 6.9 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 208.1, 6.7 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, 208.1, 6.7 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, 202.3, 6.2 , 0 );

setScaleKey( spep_1 + 62 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_1 + 63 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_1 + 64 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_1 + 65 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_1 + 66 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_1 + 67 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_1 + 68 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_1 + 69 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_1 + 70 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_1 + 71 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_1 + 72 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 77 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 78 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 111 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 112 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 123 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 124 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 135 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 136 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 145 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 146 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 157 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 158 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 169 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 170 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 179 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 180 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 191 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 192 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 203 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 204 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 215 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 216 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 225 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 226 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 228 + OFFSET_X, 1, 1.22, 1.22 );

setRotateKey( spep_1 + 62 + OFFSET_X, 1, -32 );
setRotateKey( spep_1 + 63 + OFFSET_X, 1, -32 );
setRotateKey( spep_1 + 64 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_1 + 65 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_1 + 66 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 67 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 68 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_1 + 69 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_1 + 70 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_1 + 71 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_1 + 72 + OFFSET_X, 1, -51 );
setRotateKey( spep_1 + 73 + OFFSET_X, 1, -51 );
setRotateKey( spep_1 + 74 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_1 + 75 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_1 + 76 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_1 + 77 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_1 + 78 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 79 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 80 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_1 + 81 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_1 + 82 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_1 + 83 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_1 + 84 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_1 + 85 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_1 + 86 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_1 + 87 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_1 + 88 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_1 + 89 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_1 + 90 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_1 + 91 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_1 + 92 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 93 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 94 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 95 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 96 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_1 + 97 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_1 + 98 + OFFSET_X, 1, -46.1 );
setRotateKey( spep_1 + 99 + OFFSET_X, 1, -46.1 );
setRotateKey( spep_1 + 100 + OFFSET_X, 1, -50 );
setRotateKey( spep_1 + 101 + OFFSET_X, 1, -50 );
setRotateKey( spep_1 + 102 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_1 + 103 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_1 + 104 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_1 + 105 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_1 + 106 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_1 + 107 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_1 + 108 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_1 + 109 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_1 + 110 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_1 + 111 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_1 + 112 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_1 + 113 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_1 + 114 + OFFSET_X, 1, -33.2 );
setRotateKey( spep_1 + 115 + OFFSET_X, 1, -33.2 );
setRotateKey( spep_1 + 116 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_1 + 117 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_1 + 118 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_1 + 119 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_1 + 120 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_1 + 121 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_1 + 122 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_1 + 123 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_1 + 124 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_1 + 125 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_1 + 126 + OFFSET_X, 1, -32 );
setRotateKey( spep_1 + 127 + OFFSET_X, 1, -32 );
setRotateKey( spep_1 + 128 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_1 + 129 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_1 + 130 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 131 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 132 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_1 + 133 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_1 + 134 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_1 + 135 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_1 + 136 + OFFSET_X, 1, -51 );
setRotateKey( spep_1 + 137 + OFFSET_X, 1, -51 );
setRotateKey( spep_1 + 138 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_1 + 139 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_1 + 140 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_1 + 141 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_1 + 142 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 143 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 144 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_1 + 145 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_1 + 146 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_1 + 147 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_1 + 148 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_1 + 149 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_1 + 150 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_1 + 151 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_1 + 152 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_1 + 153 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_1 + 154 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_1 + 155 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_1 + 156 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 157 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 158 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 159 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 160 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_1 + 161 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_1 + 162 + OFFSET_X, 1, -46.1 );
setRotateKey( spep_1 + 163 + OFFSET_X, 1, -46.1 );
setRotateKey( spep_1 + 164 + OFFSET_X, 1, -50 );
setRotateKey( spep_1 + 165 + OFFSET_X, 1, -50 );
setRotateKey( spep_1 + 166 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_1 + 167 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_1 + 168 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_1 + 169 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_1 + 170 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_1 + 171 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_1 + 172 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_1 + 173 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_1 + 174 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_1 + 175 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_1 + 176 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_1 + 177 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_1 + 178 + OFFSET_X, 1, -33.2 );
setRotateKey( spep_1 + 179 + OFFSET_X, 1, -33.2 );
setRotateKey( spep_1 + 180 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_1 + 181 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_1 + 182 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_1 + 183 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_1 + 184 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_1 + 185 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_1 + 186 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_1 + 187 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_1 + 188 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_1 + 189 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_1 + 190 + OFFSET_X, 1, -32 );
setRotateKey( spep_1 + 191 + OFFSET_X, 1, -32 );
setRotateKey( spep_1 + 192 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_1 + 193 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_1 + 194 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 195 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 196 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_1 + 197 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_1 + 198 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_1 + 199 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_1 + 200 + OFFSET_X, 1, -51 );
setRotateKey( spep_1 + 201 + OFFSET_X, 1, -51 );
setRotateKey( spep_1 + 202 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_1 + 203 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_1 + 204 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_1 + 205 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_1 + 206 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 207 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 208 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_1 + 209 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_1 + 210 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_1 + 211 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_1 + 212 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_1 + 213 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_1 + 214 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_1 + 215 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_1 + 216 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_1 + 217 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_1 + 218 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_1 + 219 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_1 + 220 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 221 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 222 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 223 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 224 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_1 + 225 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_1 + 226 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_1 + 227 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_1 + 228 + OFFSET_X, 1, -36.5 );

-- ** 音 ** --
--マシンガンリロード
SE035 = playSeVer2( spep_1 + 34, 1150, "", 0, 2, 0, -1);
setStartTimeMs( SE035,  600 );
setSeVolumeByWorkId( spep_1 + 34, SE035, 120 );
SE036 = playSeVer2( spep_1 + 24, 21, "",spep_1 + 44, 0, 4, -1);
setSeVolumeByWorkId( spep_1 + 24, SE036, 120 );
SE037 = playSeVer2( spep_1 + 40, 29, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 40, SE037, 186 );
--マシンガン発射
SE038 = playSeVer2( spep_1 + 62, 1149, "", 0, 0, 0, -1);
setTimeStretch( SE038, 1.1, 30, 4 );
SE039 = playSeVer2( spep_1 + 62, 1406, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 62, SE039, 85 );
setPitch( spep_1 + 62, SE039, -1200 );
setTimeStretch( SE039, 0.2, 30, 4 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 64); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1); -- 224

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～交代からセリフ
-------------------------------------------------
MAX_FRAME_0 = 772;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); --開幕～交代からセリフ ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_02r, 0x80, -1, 0, 0, 0); --開幕～交代からセリフ ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 686;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 0, 1, 1);
setDisp( spep_0 + 88 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 213.7, -107.2 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 213.7, -107.2 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 213.7, -107.2 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 213.7, -107.1 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 213.7, -107.1 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 213.7, -107 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 213.7, -107 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 213.7, -106.9 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 213.7, -106.9 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 213.7, -106.8 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 213.7, -106.7 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 213.7, -106.7 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 213.7, -106.6 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 213.7, -106.5 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 213.7, -106.4 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 213.7, -106.4 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 213.7, -106.3 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 213.7, -106.2 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 213.7, -106.2 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 213.7, -106.1 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 213.7, -106 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 213.7, -105.9 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 213.7, -105.9 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 213.7, -105.8 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 213.7, -105.7 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 213.7, -105.7 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 213.7, -105.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 213.7, -105.5 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 213.7, -105.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 213.7, -105.4 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 213.7, -105.3 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 213.7, -105.2 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 213.7, -105.2 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 213.7, -105.1 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 213.7, -105 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 213.7, -104.9 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 213.7, -104.9 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 213.7, -104.8 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 213.7, -104.7 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 213.7, -104.6 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 213.7, -104.6 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 213.7, -104.5 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 213.7, -104.4 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 213.7, -104.4 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 213.7, -104.3 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 213.7, -104.2 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 213.7, -104.1 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 213.7, -104.1 , 0 );

setScaleKey( spep_0 + 0, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 3.28, 3.28 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 88 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 240 + OFFSET_X, 1, 1);
setDisp( spep_0 + 278 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 246 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 240 + OFFSET_X, 1, 226.2, -83.8 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 226.2, -66.4 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 235.4, -87.5 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 234, -73.9 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 248.7, -79 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 254.4, -77.4 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 254.4, -77.4 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 456.6, -64.7 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 947.9, -5.5 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 947.9, -5.5 , 0 );

setScaleKey( spep_0 + 240 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 5.07, 5.07 );

-- 敵の動き3
setDisp( spep_0 + 512 + OFFSET_X, 1, 1);
setDisp( spep_0 + 572 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 512 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 512 + OFFSET_X, 1, 244, -151.4 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 244, -151.4 , 0 );

setScaleKey( spep_0 + 512 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 3.07, 3.07 );

setRotateKey( spep_0 + 512 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 572 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--悟空？が飛び出てくる
SE002 = playSeVer2( spep_0 + 86, 1189, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 90, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE003, 68 );
--悟空？着地
SE004 = playSeVer2( spep_0 + 124, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 124, SE004, 174 );
SE005 = playSeVer2( spep_0 + 124, 1192, "",spep_0 + 146, 0, 8, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 141; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
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
--ポーズとる
SE006 = playSeVer2( spep_0 + 158, 1237, "", 0, 0, 0, -1);
--構える
SE007 = playSeVer2( spep_0 + 180, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE007, 155 );
SE008 = playSeVer2( spep_0 + 184, 1003, "", 0, 0, 0, -1);
--構える２
SE009 = playSeVer2( spep_0 + 208, 1189, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 212, 1006, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 212, 1003, "", 0, 0, 0, -1);
--敵萎縮
SE012 = playSeVer2( spep_0 + 242, 1007, "", 0, 0, 0, -1);
--ズーム
SE013 = playSeVer2( spep_0 + 272, 1232, "", 0, 0, 0, -1);
--鼻ひくひくする
SE014 = playSeVer2( spep_0 + 316, 1113, "", 0, 0, 0, -1);
setPitch( spep_0 + 316, SE014, 400 );
setTimeStretch( SE014, 1.27, 30, 4 );
SE015 = playSeVer2( spep_0 + 324, 1113, "", 0, 0, 0, -1);
setPitch( spep_0 + 324, SE015, 400 );
setTimeStretch( SE015, 1.27, 30, 4 );
SE016 = playSeVer2( spep_0 + 348, 1113, "", 0, 0, 0, -1);
setPitch( spep_0 + 348, SE016, 400 );
setTimeStretch( SE016, 1.27, 30, 4 );
SE017 = playSeVer2( spep_0 + 356, 1113, "", 0, 0, 0, -1);
setPitch( spep_0 + 356, SE017, 400 );
setTimeStretch( SE017, 1.27, 30, 4 );
SE018 = playSeVer2( spep_0 + 380, 1113, "", 0, 0, 0, -1);
setPitch( spep_0 + 380, SE018, 400 );
setTimeStretch( SE018, 1.27, 30, 4 );
SE019 = playSeVer2( spep_0 + 390, 1113, "", 0, 0, 0, -1);
setPitch( spep_0 + 390, SE019, 400 );
setTimeStretch( SE019, 1.27, 30, 4 );
--変身とける
SE020 = playSeVer2( spep_0 + 408, 1190, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE020, 68 );
setStartTimeMs( SE020, 133 );
SE021 = playSeVer2( spep_0 + 410, 1112, "", 0, 0, 0, -1);
--BOM
SE022 = playSeVer2( spep_0 + 482, 31, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 482, 1011, "", 0, 0, 0, -1);
--バランスくずす
SE024 = playSeVer2( spep_0 + 536, 1113, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 536, SE024, 79 );
setPitch( spep_0 + 536, SE024, -200 );
setTimeStretch( SE024, 0.87, 30, 4 );
SE025 = playSeVer2( spep_0 + 550, 1113, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 550, SE025, 79 );
setPitch( spep_0 + 550, SE025, -200 );
setTimeStretch( SE025, 0.87, 30, 4 );
SE026 = playSeVer2( spep_0 + 564, 1113, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 564, SE026, 79 );
setPitch( spep_0 + 564, SE026, -200 );
setTimeStretch( SE026, 0.87, 30, 4 );
SE027 = playSeVer2( spep_0 + 580, 1113, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 580, SE027, 79 );
setPitch( spep_0 + 580, SE027, -200 );
setTimeStretch( SE027, 0.87, 30, 4 );
--ランチ登場
SE028 = playSeVer2( spep_0 + 604, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 604, SE028, 126 );
SE029 = playSeVer2( spep_0 + 616, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 616, SE029, 141 );
SE030 = playSeVer2( spep_0 + 628, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 628, SE030, 133 );
--画面遷移
SE031 = playSeVer2( spep_0 + 662, 44, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 770, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; -- 772

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 ); -- カード
setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0);
setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0);
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -95 );
setEffScaleKey( spep_c + 0, spname, -1.0, 1.0);
setEffScaleKey( spep_c + 90, spname, -1.0, 1.0);
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え

-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 ); --黄色放射
setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_c + 0, housha, 0 );
setEffRotateKey( spep_c + 90, housha, 0 );
setEffAlphaKey( spep_c + 0, housha, 255 );
setEffAlphaKey( spep_c + 90, housha, 255 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 ); --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
--カードカットイン
SE033 = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);
--すごむ背景
SE034 = playSeVer2( spep_c + 88, 1264, "",spep_c + 186, 0, 44, -1);
setSeVolumeByWorkId( spep_c + 88, SE034, 50 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --白 背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade

-- ** 次の準備 ** --
spep_1 = spep_c + 94;

-------------------------------------------------
-- マシンガン準備～フィニッシュ
-------------------------------------------------
MAX_FRAME_1 = 224;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_03r, 0x100, -1, 0, 0, 0); --マシンガン準備～フィニッシュ ef_002
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_f, 0);
setEffAlphaKey( spep_1 + 0, finish_f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_f, 255);

finish_b = entryEffect( spep_1 + 0, SP_04r, 0x80, -1, 0, 0, 0); --マシンガン準備～フィニッシュ ef_002b
setEffMoveKey( spep_1 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_b, 0);
setEffAlphaKey( spep_1 + 0, finish_b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255); --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_1 + 62 + OFFSET_X, 1, 1);
setDisp( spep_1 + 228 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 62 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 62 + OFFSET_X, 1, 206.2, -3.9 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_X, 1, 206.2, -3.9 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, 196.6, 5.3 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, 196.6, 5.3 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, 211.3, -7.8 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, 211.3, -7.8 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, 201.6, -3.9 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, 201.6, -3.9 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, 205.3, 6.5 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, 205.3, 6.5 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, 202.7, 3.5 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, 202.7, 3.5 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, 201.8, 5.4 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, 201.8, 5.4 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 206.8, 9 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, 206.8, 9 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 207.5, 3.1 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, 207.5, 3.1 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, 202.5, 8.4 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, 202.5, 8.4 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, 203.2, 4.6 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, 203.2, 4.6 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 208.7, 5.8 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 208.7, 5.8 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 202.4, 5.2 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 202.4, 5.2 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 204.4, 2.9 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 204.4, 2.9 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 203.3, 7.7 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 203.3, 7.7 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 203.9, 9.7 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 203.9, 9.7 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 201.8, 4.8 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 201.8, 4.8 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 201, 6.1 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 201, 6.1 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 207.5, 6.4 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 207.5, 6.4 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 208.3, 3 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 208.3, 3 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 202.5, 8.5 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 202.5, 8.5 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 204.7, 2.9 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 204.7, 2.9 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 202.5, 9.8 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 202.5, 9.8 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 206.1, 3.6 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 206.1, 3.6 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 202.4, 7.6 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 202.4, 7.6 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 206.7, 4.2 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 206.7, 4.2 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 206.5, 6 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 206.5, 6 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 202.5, 7.8 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 202.5, 7.8 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 206.6, 4.7 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 206.6, 4.7 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 201.1, 6.4 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 201.1, 6.4 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 203, 6.2 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 203, 6.2 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 203.1, 7.7 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 203.1, 7.7 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 204.3, 6 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 204.3, 6 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 199.2, 10.7 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 199.2, 10.7 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 207.3, 3 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 207.3, 3 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 201.8, 3.9 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 201.8, 3.9 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 204.5, 9.2 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 204.5, 9.2 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 202.6, 4 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 202.6, 4 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 201.8, 5.8 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 201.8, 5.8 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 206.6, 9.3 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 206.6, 9.3 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 207.3, 3.7 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 207.3, 3.7 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 202.5, 8.7 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 202.5, 8.7 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 203.1, 5.1 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 203.1, 5.1 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 208.4, 6.2 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 208.4, 6.2 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 202.3, 5.7 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 202.3, 5.7 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 204.3, 3.5 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 204.3, 3.5 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 203.2, 8.1 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 203.2, 8.1 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 203.8, 10 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, 203.8, 10 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, 201.8, 5.3 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, 201.8, 5.3 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, 201, 6.5 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, 201, 6.5 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, 207.3, 6.8 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, 207.3, 6.8 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, 208, 3.6 , 0 );
setMoveKey( spep_1 + 165 + OFFSET_X, 1, 208, 3.6 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, 202.5, 8.8 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_X, 1, 202.5, 8.8 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, 204.6, 3.5 , 0 );
setMoveKey( spep_1 + 169 + OFFSET_X, 1, 204.6, 3.5 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, 202.4, 10.1 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_X, 1, 202.4, 10.1 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, 205.9, 4.1 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_X, 1, 205.9, 4.1 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, 202.4, 8 , 0 );
setMoveKey( spep_1 + 175 + OFFSET_X, 1, 202.4, 8 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, 206.5, 4.7 , 0 );
setMoveKey( spep_1 + 177 + OFFSET_X, 1, 206.5, 4.7 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, 206.3, 6.4 , 0 );
setMoveKey( spep_1 + 179 + OFFSET_X, 1, 206.3, 6.4 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, 202.5, 8.2 , 0 );
setMoveKey( spep_1 + 181 + OFFSET_X, 1, 202.5, 8.2 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, 206.3, 5.2 , 0 );
setMoveKey( spep_1 + 183 + OFFSET_X, 1, 206.3, 5.2 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, 201.1, 6.8 , 0 );
setMoveKey( spep_1 + 185 + OFFSET_X, 1, 201.1, 6.8 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, 203, 6.6 , 0 );
setMoveKey( spep_1 + 187 + OFFSET_X, 1, 203, 6.6 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, 203, 8.1 , 0 );
setMoveKey( spep_1 + 189 + OFFSET_X, 1, 203, 8.1 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, 204.2, 6.4 , 0 );
setMoveKey( spep_1 + 191 + OFFSET_X, 1, 204.2, 6.4 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, 199.3, 11 , 0 );
setMoveKey( spep_1 + 193 + OFFSET_X, 1, 199.3, 11 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, 207.1, 3.5 , 0 );
setMoveKey( spep_1 + 195 + OFFSET_X, 1, 207.1, 3.5 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, 201.8, 4.4 , 0 );
setMoveKey( spep_1 + 197 + OFFSET_X, 1, 201.8, 4.4 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, 204.4, 9.5 , 0 );
setMoveKey( spep_1 + 199 + OFFSET_X, 1, 204.4, 9.5 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, 202.5, 4.6 , 0 );
setMoveKey( spep_1 + 201 + OFFSET_X, 1, 202.5, 4.6 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 201.8, 6.3 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, 201.8, 6.3 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 206.4, 9.6 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, 206.4, 9.6 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 207, 4.2 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, 207, 4.2 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 202.4, 9 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, 202.4, 9 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 203, 5.6 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, 203, 5.6 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 208.1, 6.6 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, 208.1, 6.6 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 202.3, 6.1 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, 202.3, 6.1 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 204.1, 4 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 204.1, 4 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 203.1, 8.5 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, 203.1, 8.5 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, 203.7, 10.3 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, 203.7, 10.3 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 201.7, 5.8 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, 201.7, 5.8 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, 201, 6.9 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, 201, 6.9 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 208.1, 6.7 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, 208.1, 6.7 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, 202.3, 6.2 , 0 );

setScaleKey( spep_1 + 62 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_1 + 63 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_1 + 64 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_1 + 65 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_1 + 66 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_1 + 67 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_1 + 68 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_1 + 69 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_1 + 70 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_1 + 71 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_1 + 72 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 77 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 78 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 111 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 112 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 123 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 124 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 135 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 136 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 145 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 146 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 157 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 158 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 169 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 170 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 179 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 180 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 191 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 192 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 203 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 204 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 215 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 216 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 225 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 226 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 228 + OFFSET_X, 1, 1.22, 1.22 );

setRotateKey( spep_1 + 62 + OFFSET_X, 1, -32 );
setRotateKey( spep_1 + 63 + OFFSET_X, 1, -32 );
setRotateKey( spep_1 + 64 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_1 + 65 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_1 + 66 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 67 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 68 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_1 + 69 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_1 + 70 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_1 + 71 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_1 + 72 + OFFSET_X, 1, -51 );
setRotateKey( spep_1 + 73 + OFFSET_X, 1, -51 );
setRotateKey( spep_1 + 74 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_1 + 75 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_1 + 76 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_1 + 77 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_1 + 78 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 79 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 80 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_1 + 81 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_1 + 82 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_1 + 83 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_1 + 84 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_1 + 85 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_1 + 86 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_1 + 87 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_1 + 88 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_1 + 89 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_1 + 90 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_1 + 91 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_1 + 92 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 93 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 94 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 95 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 96 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_1 + 97 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_1 + 98 + OFFSET_X, 1, -46.1 );
setRotateKey( spep_1 + 99 + OFFSET_X, 1, -46.1 );
setRotateKey( spep_1 + 100 + OFFSET_X, 1, -50 );
setRotateKey( spep_1 + 101 + OFFSET_X, 1, -50 );
setRotateKey( spep_1 + 102 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_1 + 103 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_1 + 104 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_1 + 105 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_1 + 106 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_1 + 107 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_1 + 108 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_1 + 109 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_1 + 110 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_1 + 111 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_1 + 112 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_1 + 113 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_1 + 114 + OFFSET_X, 1, -33.2 );
setRotateKey( spep_1 + 115 + OFFSET_X, 1, -33.2 );
setRotateKey( spep_1 + 116 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_1 + 117 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_1 + 118 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_1 + 119 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_1 + 120 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_1 + 121 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_1 + 122 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_1 + 123 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_1 + 124 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_1 + 125 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_1 + 126 + OFFSET_X, 1, -32 );
setRotateKey( spep_1 + 127 + OFFSET_X, 1, -32 );
setRotateKey( spep_1 + 128 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_1 + 129 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_1 + 130 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 131 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 132 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_1 + 133 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_1 + 134 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_1 + 135 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_1 + 136 + OFFSET_X, 1, -51 );
setRotateKey( spep_1 + 137 + OFFSET_X, 1, -51 );
setRotateKey( spep_1 + 138 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_1 + 139 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_1 + 140 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_1 + 141 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_1 + 142 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 143 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 144 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_1 + 145 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_1 + 146 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_1 + 147 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_1 + 148 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_1 + 149 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_1 + 150 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_1 + 151 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_1 + 152 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_1 + 153 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_1 + 154 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_1 + 155 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_1 + 156 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 157 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 158 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 159 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 160 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_1 + 161 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_1 + 162 + OFFSET_X, 1, -46.1 );
setRotateKey( spep_1 + 163 + OFFSET_X, 1, -46.1 );
setRotateKey( spep_1 + 164 + OFFSET_X, 1, -50 );
setRotateKey( spep_1 + 165 + OFFSET_X, 1, -50 );
setRotateKey( spep_1 + 166 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_1 + 167 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_1 + 168 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_1 + 169 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_1 + 170 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_1 + 171 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_1 + 172 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_1 + 173 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_1 + 174 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_1 + 175 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_1 + 176 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_1 + 177 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_1 + 178 + OFFSET_X, 1, -33.2 );
setRotateKey( spep_1 + 179 + OFFSET_X, 1, -33.2 );
setRotateKey( spep_1 + 180 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_1 + 181 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_1 + 182 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_1 + 183 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_1 + 184 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_1 + 185 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_1 + 186 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_1 + 187 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_1 + 188 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_1 + 189 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_1 + 190 + OFFSET_X, 1, -32 );
setRotateKey( spep_1 + 191 + OFFSET_X, 1, -32 );
setRotateKey( spep_1 + 192 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_1 + 193 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_1 + 194 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 195 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 196 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_1 + 197 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_1 + 198 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_1 + 199 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_1 + 200 + OFFSET_X, 1, -51 );
setRotateKey( spep_1 + 201 + OFFSET_X, 1, -51 );
setRotateKey( spep_1 + 202 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_1 + 203 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_1 + 204 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_1 + 205 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_1 + 206 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 207 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 208 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_1 + 209 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_1 + 210 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_1 + 211 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_1 + 212 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_1 + 213 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_1 + 214 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_1 + 215 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_1 + 216 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_1 + 217 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_1 + 218 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_1 + 219 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_1 + 220 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 221 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_1 + 222 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 223 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 224 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_1 + 225 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_1 + 226 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_1 + 227 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_1 + 228 + OFFSET_X, 1, -36.5 );

-- ** 音 ** --
--マシンガンリロード
SE035 = playSeVer2( spep_1 + 34, 1150, "", 0, 2, 0, -1);
setStartTimeMs( SE035, 600 );
setSeVolumeByWorkId( spep_1 + 34, SE035, 120 );
SE036 = playSeVer2( spep_1 + 24, 21, "",spep_1 + 44, 0, 4, -1);
setSeVolumeByWorkId( spep_1 + 24, SE036, 120 );
SE037 = playSeVer2( spep_1 + 40, 29, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 40, SE037, 186 );
--マシンガン発射
SE038 = playSeVer2( spep_1 + 62, 1149, "", 0, 0, 0, -1);
setTimeStretch( SE038, 1.1, 30, 4 );
SE039 = playSeVer2( spep_1 + 62, 1406, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 62, SE039, 85 );
setPitch( spep_1 + 62, SE039, -1200 );
setTimeStretch( SE039, 0.2, 30, 4 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 64); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1); -- 224

end