--1032310:LR_サードアイゴマー_必殺技：インペリアルキャノン
--sp_effect_a2_00269
--sp2939

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164270;  --ef_001 開幕→セリフカットイン～カードカットイン
SP_01b = 164271;  --ef_001b 開幕→セリフカットイン～カードカットイン
SP_02  = 164274;  --ef_002 カードカットイン→フィニッシュ
SP_02b = 164275;  --ef_002b カードカットイン→フィニッシュ

--エフェクト(敵)
SP_01r  = 164272;  --ef_001r 開幕→セリフカットイン～カードカットイン
SP_01br = 164273;  --ef_001br 開幕→セリフカットイン～カードカットイン
SP_02r  = 164276;  --ef_002r カードカットイン→フィニッシュ
SP_02br = 164277;  --ef_002br カードカットイン→フィニッシュ


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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕→セリフカットイン～カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 260;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕→セリフカットイン～カードカットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕→セリフカットイン～カードカットイン(ef_001b)
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
spep_x = spep_0 + 178;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -185, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -185, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -185, 515.5 , 0 );
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
setDisp( spep_0 + 78 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 156 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 78 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 100 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 78 + OFFSET_X, 1, 29.7, 113.7 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 29.7, 113.7 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 29.6, 113.8 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 29.6, 113.8 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 29.5, 113.8 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 29.5, 113.8 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 29.4, 113.9 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 29.4, 113.9 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 29.3, 114 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 29.3, 114 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 29.2, 114 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 29.2, 114 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 29.1, 114.1 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 29.1, 114.1 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 29, 114.2 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 29, 114.2 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 28.9, 114.2 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 28.9, 114.2 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 28.9, 114.3 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 28.9, 114.3 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 35.8, 129.1 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 35.8, 129.1 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 31, 114.6 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 31, 114.6 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 34.1, 91.9 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 34.1, 91.9 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 30.5, 103 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 30.5, 103 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 34.4, 91.4 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 34.4, 91.4 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 33.5, 102.9 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 33.5, 102.9 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 33.6, 97.9 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 33.6, 97.9 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 33.6, 104.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 33.6, 104.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 33.6, 101.7 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 33.6, 101.7 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 33.6, 106.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 33.6, 106.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 33.6, 100.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 33.6, 100.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 33.6, 101.7 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 33.6, 101.7 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 38.5, 103.9 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 38.5, 103.9 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 43.3, 106.2 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 43.3, 106.2 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 99.5, 106.2 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 99.5, 106.2 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 155.7, 106.2 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 155.7, 106.2 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 212, 106.2 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 212, 106.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 268.2, 106.2 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 268.2, 106.2 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 324.4, 106.2 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 324.4, 106.2 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 380.6, 106.2 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 380.6, 106.2 , 0 );

setScaleKey( spep_0 + 78 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 0.62, 0.62 );

setRotateKey( spep_0 + 78 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, -54 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, -54 );

setBlendColor( spep_0 + 100 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.7 );
setBlendColor( spep_0 + 155 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.7 );
setBlendColor( spep_0 + 156 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 286, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--腕前に出す
SE003 = playSeVer2( spep_0 + 34, 1153, "", 0, 14, 0, -1);
setStartTimeMs( SE003,  133 );
SE004 = playSeVer2( spep_0 + 72, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE004, 79 );
setPitch( spep_0 + 72, SE004, -400 );
setTimeStretch( SE004, 0.73, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 86; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
--腕前に出す
SE005 = playSeVer2( spep_0 + 88, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 92, 1013, "", 0, 0, 0, -1);

--気弾溜め
SE007 = playSeVer2( spep_0 + 180, 1391, "",spep_0 + 278, 10, 10, -1);
setStartTimeMs( SE007,  1333 );
setPitch( spep_0 + 180, SE007, -300 );
setTimeStretch( SE007, 0.8, 30, 4 );
SE011 = playSeVer2( spep_0 + 164, 1275, "",spep_0 + 278, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 164, SE011, 162 );
setPitch( spep_0 + 164, SE011, -500 );
setTimeStretch( SE011, 0.67, 30, 4 );
SE012 = playSeVer2( spep_0 + 180, 1224, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE012, 68 );
SE013 = playSeVer2( spep_0 + 180, 1194, "",spep_0 + 280, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 180, SE013, 136 );
SE015 = playSeVer2( spep_0 + 208, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 208, SE015, 145 );

--カメラパン
SE008 = playSeVer2( spep_0 + 132, 1116, "",spep_0 + 218, 0, 54, -1);
SE009 = playSeVer2( spep_0 + 134, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE009, 42 );
SE010 = playSeVer2( spep_0 + 146, 1072, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --260f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
SE017 = playSeVer2( spep_1 + 92, 1391, "",spep_1 + 184, 10, 20, -1);
setStartTimeMs( SE017,  1300 );
setPitch( spep_1 + 92, SE017, -300 );
setTimeStretch( SE017, 0.8, 30, 4 );
SE018 = playSeVer2( spep_1 + 76, 1275, "",spep_1 + 184, 0, 22, -1);
setPitch( spep_1 + 76, SE018, -500 );
setTimeStretch( SE018, 0.67, 30, 4 );


-------------------------------------------------
-- カードカットイン→フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 310;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン→フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カードカットイン→フィニッシュ(ef_002b)
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
setDisp( spep_2 + 94 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 190 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 94 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 114 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 130 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 94 + OFFSET_X, 1, 176.6, 67.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 176.6, 67.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 171.5, 63.4 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 171.5, 63.4 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 166.3, 59.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 166.3, 59.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 161.2, 55.2 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 161.2, 55.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 156, 51.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 156, 51.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 150.9, 48 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 150.9, 48 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 145.8, 44.9 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 145.8, 44.9 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 140.6, 42.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 140.6, 42.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 135.5, 40.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 135.5, 40.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 130.4, 39.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 130.4, 39.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 158.5, 42 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 158.5, 42 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 170.1, 34.3 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 170.1, 34.3 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 161.5, 43.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 161.5, 43.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 170.6, 37.7 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 170.6, 37.7 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 157.3, 45.7 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 157.3, 45.7 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 150.1, 41.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 150.1, 41.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 179, 90.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 179, 90.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 174.7, 47.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 174.7, 47.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 177.1, 50 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 177.1, 50 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 152.7, 51.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 152.7, 51.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 155.4, 63.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 155.4, 63.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 198.1, 58.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 198.1, 58.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 168.3, 47.5 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 168.3, 47.5 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 167.6, 24.4 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 167.6, 24.4 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 177.5, 31.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 177.5, 31.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 161.8, 34.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 161.8, 34.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 169, 28.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 169, 28.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 151.2, 15.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 151.2, 15.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 154.5, 29.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 154.5, 29.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 171.9, 44.7 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 171.9, 44.7 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 162.4, 77.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 162.4, 77.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 174, 83.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 174, 83.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 164.7, 88.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 164.7, 88.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 169.5, -6.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 169.5, -6.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 156.7, 66.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 156.7, 66.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 159.4, 58.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 159.4, 58.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 150, 38.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 150, 38.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 182.9, 7.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 182.9, 7.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 164.9, 71.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 164.9, 71.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 172.9, 57.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 172.9, 57.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 162.9, -1.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 162.9, -1.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 169.3, 55.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 169.3, 55.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 163.1, 13.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 163.1, 13.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 151.2, 5.9 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 151.2, 5.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 153.8, 39.8 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 153.8, 39.8 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 174.1, 55.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 174.1, 55.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 168.3, 80.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 168.3, 80.4 , 0 );

setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.61, 0.61 );

setRotateKey( spep_2 + 94 + OFFSET_X, 1, -52 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -52 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -52 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -52 );

setBlendColor( spep_2 + 94 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.7 );
setBlendColor( spep_2 + 113 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.7 );
setBlendColor( spep_2 + 114 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );


-- ** 音 ** --
--発射前溜め
SE019 = playSeVer2( spep_2 + 0, 1194, "",spep_2 + 92, 0, 22, -1);
SE020 = playSeVer2( spep_2 + 0, 1281, "",spep_2 + 98, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 0, SE020, 58 );

--振りかぶる
SE021 = playSeVer2( spep_2 + 8, 1182, "", 0, 12, 0, -1);
setStartTimeMs( SE021,  67 );

--気弾発射
SE022 = playSeVer2( spep_2 + 62, 1022, "",spep_2 + 150, 0, 34, -1);
SE023 = playSeVer2( spep_2 + 62, 1027, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 62, 1145, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 76, 1335, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 76, SE025, 148 );

--敵ヒット
SE026 = playSeVer2( spep_2 + 108, 1423, "",spep_2 + 278, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 108, SE026, 71 );
SE027 = playSeVer2( spep_2 + 108, 1024, "", 0, 0, 0, -1);

--爆発前予兆
SE028 = playSeVer2( spep_2 + 164, 1173, "",spep_2 + 254, 22, 16, -1);
setStartTimeMs( SE028,  300 );

--爆発
SE029 = playSeVer2( spep_2 + 218, 1069, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 238, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 190 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム  --310f -4


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 開幕→セリフカットイン～カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 260;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 開幕→セリフカットイン～カードカットイン(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 開幕→セリフカットイン～カードカットイン(ef_001br)
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
spep_x = spep_0 + 178;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 185, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 185, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 185, 515.5 , 0 );
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
setDisp( spep_0 + 78 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 156 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 78 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 100 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 78 + OFFSET_X, 1, 29.7, 113.7 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 29.7, 113.7 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 29.6, 113.8 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 29.6, 113.8 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 29.5, 113.8 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 29.5, 113.8 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 29.4, 113.9 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 29.4, 113.9 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 29.3, 114 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 29.3, 114 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 29.2, 114 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 29.2, 114 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 29.1, 114.1 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 29.1, 114.1 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 29, 114.2 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 29, 114.2 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 28.9, 114.2 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 28.9, 114.2 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 28.9, 114.3 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 28.9, 114.3 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 35.8, 129.1 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 35.8, 129.1 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 31, 114.6 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 31, 114.6 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 34.1, 91.9 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 34.1, 91.9 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 30.5, 103 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 30.5, 103 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 34.4, 91.4 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 34.4, 91.4 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 33.5, 102.9 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 33.5, 102.9 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 33.6, 97.9 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 33.6, 97.9 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 33.6, 104.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 33.6, 104.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 33.6, 101.7 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 33.6, 101.7 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 33.6, 106.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 33.6, 106.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 33.6, 100.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 33.6, 100.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 33.6, 101.7 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 33.6, 101.7 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 38.5, 103.9 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 38.5, 103.9 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 43.3, 106.2 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 43.3, 106.2 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 99.5, 106.2 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 99.5, 106.2 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 155.7, 106.2 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 155.7, 106.2 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 212, 106.2 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 212, 106.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 268.2, 106.2 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 268.2, 106.2 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 324.4, 106.2 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 324.4, 106.2 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 380.6, 106.2 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 380.6, 106.2 , 0 );

setScaleKey( spep_0 + 78 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 0.62, 0.62 );

setRotateKey( spep_0 + 78 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, -54 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, -54 );

setBlendColor( spep_0 + 100 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.7 );
setBlendColor( spep_0 + 155 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.7 );
setBlendColor( spep_0 + 156 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 286, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--腕前に出す
SE003 = playSeVer2( spep_0 + 34, 1153, "", 0, 14, 0, -1);
setStartTimeMs( SE003,  133 );
SE004 = playSeVer2( spep_0 + 72, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE004, 79 );
setPitch( spep_0 + 72, SE004, -400 );
setTimeStretch( SE004, 0.73, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 86; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
--腕前に出す
SE005 = playSeVer2( spep_0 + 88, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 92, 1013, "", 0, 0, 0, -1);

--気弾溜め
SE007 = playSeVer2( spep_0 + 180, 1391, "",spep_0 + 278, 10, 10, -1);
setStartTimeMs( SE007,  1333 );
setPitch( spep_0 + 180, SE007, -300 );
setTimeStretch( SE007, 0.8, 30, 4 );
SE011 = playSeVer2( spep_0 + 164, 1275, "",spep_0 + 278, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 164, SE011, 162 );
setPitch( spep_0 + 164, SE011, -500 );
setTimeStretch( SE011, 0.67, 30, 4 );
SE012 = playSeVer2( spep_0 + 180, 1224, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE012, 68 );
SE013 = playSeVer2( spep_0 + 180, 1194, "",spep_0 + 280, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 180, SE013, 136 );
SE015 = playSeVer2( spep_0 + 208, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 208, SE015, 145 );

--カメラパン
SE008 = playSeVer2( spep_0 + 132, 1116, "",spep_0 + 218, 0, 54, -1);
SE009 = playSeVer2( spep_0 + 134, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE009, 42 );
SE010 = playSeVer2( spep_0 + 146, 1072, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --260f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
SE017 = playSeVer2( spep_1 + 92, 1391, "",spep_1 + 184, 10, 20, -1);
setStartTimeMs( SE017,  1300 );
setPitch( spep_1 + 92, SE017, -300 );
setTimeStretch( SE017, 0.8, 30, 4 );
SE018 = playSeVer2( spep_1 + 76, 1275, "",spep_1 + 184, 0, 22, -1);
setPitch( spep_1 + 76, SE018, -500 );
setTimeStretch( SE018, 0.67, 30, 4 );


-------------------------------------------------
-- カードカットイン→フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 310;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- カードカットイン→フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- カードカットイン→フィニッシュ(ef_002br)
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
setDisp( spep_2 + 94 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 190 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 94 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 114 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 130 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 94 + OFFSET_X, 1, 176.6, 67.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 176.6, 67.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 171.5, 63.4 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 171.5, 63.4 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 166.3, 59.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 166.3, 59.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 161.2, 55.2 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 161.2, 55.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 156, 51.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 156, 51.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 150.9, 48 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 150.9, 48 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 145.8, 44.9 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 145.8, 44.9 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 140.6, 42.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 140.6, 42.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 135.5, 40.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 135.5, 40.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 130.4, 39.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 130.4, 39.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 158.5, 42 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 158.5, 42 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 170.1, 34.3 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 170.1, 34.3 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 161.5, 43.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 161.5, 43.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 170.6, 37.7 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 170.6, 37.7 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 157.3, 45.7 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 157.3, 45.7 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 150.1, 41.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 150.1, 41.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 179, 90.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 179, 90.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 174.7, 47.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 174.7, 47.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 177.1, 50 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 177.1, 50 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 152.7, 51.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 152.7, 51.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 155.4, 63.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 155.4, 63.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 198.1, 58.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 198.1, 58.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 168.3, 47.5 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 168.3, 47.5 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 167.6, 24.4 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 167.6, 24.4 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 177.5, 31.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 177.5, 31.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 161.8, 34.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 161.8, 34.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 169, 28.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 169, 28.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 151.2, 15.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 151.2, 15.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 154.5, 29.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 154.5, 29.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 171.9, 44.7 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 171.9, 44.7 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 162.4, 77.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 162.4, 77.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 174, 83.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 174, 83.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 164.7, 88.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 164.7, 88.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 169.5, -6.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 169.5, -6.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 156.7, 66.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 156.7, 66.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 159.4, 58.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 159.4, 58.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 150, 38.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 150, 38.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 182.9, 7.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 182.9, 7.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 164.9, 71.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 164.9, 71.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 172.9, 57.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 172.9, 57.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 162.9, -1.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 162.9, -1.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 169.3, 55.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 169.3, 55.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 163.1, 13.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 163.1, 13.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 151.2, 5.9 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 151.2, 5.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 153.8, 39.8 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 153.8, 39.8 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 174.1, 55.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 174.1, 55.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 168.3, 80.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 168.3, 80.4 , 0 );

setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.61, 0.61 );

setRotateKey( spep_2 + 94 + OFFSET_X, 1, -52 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -52 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -52 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -52 );

setBlendColor( spep_2 + 94 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.7 );
setBlendColor( spep_2 + 113 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.7 );
setBlendColor( spep_2 + 114 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );


-- ** 音 ** --
--発射前溜め
SE019 = playSeVer2( spep_2 + 0, 1194, "",spep_2 + 92, 0, 22, -1);
SE020 = playSeVer2( spep_2 + 0, 1281, "",spep_2 + 98, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 0, SE020, 58 );

--振りかぶる
SE021 = playSeVer2( spep_2 + 8, 1182, "", 0, 12, 0, -1);
setStartTimeMs( SE021,  67 );

--気弾発射
SE022 = playSeVer2( spep_2 + 62, 1022, "",spep_2 + 150, 0, 34, -1);
SE023 = playSeVer2( spep_2 + 62, 1027, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 62, 1145, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 76, 1335, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 76, SE025, 148 );

--敵ヒット
SE026 = playSeVer2( spep_2 + 108, 1423, "",spep_2 + 278, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 108, SE026, 71 );
SE027 = playSeVer2( spep_2 + 108, 1024, "", 0, 0, 0, -1);

--爆発前予兆
SE028 = playSeVer2( spep_2 + 164, 1173, "",spep_2 + 254, 22, 16, -1);
setStartTimeMs( SE028,  300 );

--爆発
SE029 = playSeVer2( spep_2 + 218, 1069, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 238, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 190 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム  --310f -4


end
