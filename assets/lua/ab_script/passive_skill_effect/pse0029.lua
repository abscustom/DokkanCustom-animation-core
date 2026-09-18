--1027040:LR_超一星龍_登場時演出
--sp_effect_b4_00294
--pse0029

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_05 = 1035; --カットイン攻撃

-- 味方側
SP_01 = 162013;  -- 登場時演出

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 登場時演出 (1418F)
------------------------------------------------------

spep_0 = 0;
MAX_FRAME_0 = 1418;

-- ** エフェクト等 ** --
entry_SP_01 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_01, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_01, 255 );

-- ** 集中線 ** --
shuchusen_0 = entryEffectLife( spep_0 + 1301, 906, MAX_FRAME_0, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_0 + 1301, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 1301, shuchusen_0, 1.6, 1.6 );
setEffScaleKey( spep_0 + MAX_FRAME_0, shuchusen_0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 1301, shuchusen_0, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 1301, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, shuchusen_0, 255 );

shuchusen_1 = entryEffectLife( spep_0 + 483, 906, 35, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_0 + 483, shuchusen_1, 0, 0, 0 );
setEffMoveKey( spep_0 + 520, shuchusen_1, 0, 0, 0 );
setEffScaleKey( spep_0 + 483, shuchusen_1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 520, shuchusen_1, 1.6, 1.6 );
setEffRotateKey( spep_0 + 483, shuchusen_1, 0 );
setEffRotateKey( spep_0 + 520, shuchusen_1, 0 );
setEffAlphaKey( spep_0 + 483, shuchusen_1, 255 );
setEffAlphaKey( spep_0 + 520, shuchusen_1, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--ドラゴンボール飲み込む
SE002 = playSeVer2( spep_0 + 50, 1411, "", 0, 0, 0, -1);
setPitch( spep_0 + 50, SE002, 100 );
setTimeStretch( SE002, 1.07, 30, 4 );
SE003 = playSeVer2( spep_0 + 52, 1070, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 52, 1134, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE004, 50 );
SE005 = playSeVer2( spep_0 + 66, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE005, 79 );
SE006 = playSeVer2( spep_0 + 70, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE006, 79 );

--ドラゴンボール浮く
SE007 = playSeVer2( spep_0 + 110, 1112, "", 0, 0, 0, -1);

--ドラゴンボール飛んでくる
SE008 = playSeVer2( spep_0 + 160, 1119, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE008, 84 );
setStartTimeMs( SE008,  667 );
SE009 = playSeVer2( spep_0 + 160, 1117, "",spep_0 + 238, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 160, SE009, 79 );
SE010 = playSeVer2( spep_0 + 170, 1118, "",spep_0 + 206, 0, 14, -1);

--ドラゴンボール飲み込む２
SE011 = playSeVer2( spep_0 + 190, 1415, "",spep_0 + 234, 4, 30, -1);
setSeVolumeByWorkId( spep_0 + 190, SE011, 68 );
setStartTimeMs( SE011,  333 );
SE012 = playSeVer2( spep_0 + 192, 1113, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE012, 151 );

--ドラゴンボールたくさん飛んでくる
SE013 = playSeVer2( spep_0 + 218, 1116, "", 0, 0, 0, -1);

--ドラゴンボール飲み込む３
SE014 = playSeVer2( spep_0 + 318, 1415, "",spep_0 + 360, 4, 30, -1);
setSeVolumeByWorkId( spep_0 + 318, SE014, 68 );
setStartTimeMs( SE014,  333 );
SE015 = playSeVer2( spep_0 + 320, 1113, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 320, SE015, 164 );

--ドラゴンボールたくさん飛んでくる２
SE016 = playSeVer2( spep_0 + 342, 1119, "",spep_0 + 402, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 342, SE016, 63 );

--ドラゴンボール飲み込む４
SE017 = playSeVer2( spep_0 + 386, 1415, "",spep_0 + 430, 4, 30, -1);
setStartTimeMs( SE017,  333 );
SE018 = playSeVer2( spep_0 + 388, 1113, "", 0, 0, 0, -1);

--ズームアウト
SE019 = playSeVer2( spep_0 + 448, 1072, "", 0, 12, 0, -1);
setStartTimeMs( SE019,  133 );

--気を高める
SE020 = playSeVer2( spep_0 + 488, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 488, SE020, 78 );
setPitch( spep_0 + 488, SE020, -400 );
setTimeStretch( SE020, 0.73, 30, 4 );
SE021 = playSeVer2( spep_0 + 488, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 488, SE021, 56 );
SE022 = playSeVer2( spep_0 + 488, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 488, SE022, 65 );
SE023 = playSeVer2( spep_0 + 488, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 488, SE023, 66 );

--気を高める２
SE024 = playSeVer2( spep_0 + 550, 1176, "",spep_0 + 812, 0, 130, -1);
setSeVolumeByWorkId( spep_0 + 550, SE024, 79 );
SE025 = playSeVer2( spep_0 + 570, 1287, "",spep_0 + 806, 0, 126, -1);

--胸のボール光る
SE026 = playSeVer2( spep_0 + 638, 1264, "",spep_0 + 784, 22, 82, -1);
setSeVolumeByWorkId( spep_0 + 638, SE026, 67 );
setStartTimeMs( SE026,  233 );
SE027 = playSeVer2( spep_0 + 638, 1127, "",spep_0 + 784, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 638, SE027, 96 );
setPitch( spep_0 + 638, SE027, -800 );
setTimeStretch( SE027, 0.88, 30, 4 );
SE028 = playSeVer2( spep_0 + 638, 1203, "",spep_0 + 788, 0, 94, -1);
SE029 = playSeVer2( spep_0 + 638, 1175, "",spep_0 + 778, 0, 76, -1);

--セリフカットイン
SE030 = playSeVer2( spep_0 + 770, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 770, SE030, 56 );

--腕広げる
SE031 = playSeVer2( spep_0 + 798, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 798, SE031, 74 );

--画面スクロール
SE032 = playSeVer2( spep_0 + 968, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 968, SE032, 66 );
setTimeStretch( SE032, 2, 30, 4 );

--ラスト決め
SE033 = playSeVer2( spep_0 + 1306, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1306, SE033, 87 );
SE034 = playSeVer2( spep_0 + 1306, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1306, SE034, 91 );
SE035 = playSeVer2( spep_0 + 1306, 1062, "", 0, 0, 0, -1);

--ボイス
--「ふふふ、見よ！　これがすべての邪悪龍の頂点に立つ　俺様の真の姿！」
playVoice( spep_0 + 758, 656 );
setVoiceVolume( spep_0 + 758, 656, 126 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

--終わり
endPhase( spep_0 + MAX_FRAME_0 );--1418

else end