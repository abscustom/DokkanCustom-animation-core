--1030430:LR_超サイヤ人孫悟空+超サイヤ人ベジータ(天使)_合流演出
--sp_effect_b4_00370
--pse0069

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 163667;  -- 登場時演出 ef_001

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

ENABLE_AUTO_TIME_STRETCH(0.9);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 登場時演出
------------------------------------------------------
spep_0 = 0;

MAX_FRAME_0 = 1040;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場時演出（ef_001）
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 58 );

--気づく
SE003 = playSeVer2( spep_0 + 34, 1126, "",spep_0 + 112, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 34, SE003, 43 );
SE004 = playSeVer2( spep_0 + 34, 48, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE004, 116 );

--背景音
SE005 = playSeVer2( spep_0 + 64, 1215, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE005, 50 );
SE006 = playSeVer2( spep_0 + 68, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE006, 61 );
SE007 = playSeVer2( spep_0 + 68, 1314, "",spep_0 + 450, 0, 208, -1);
setSeVolumeByWorkId( spep_0 + 68, SE007, 46 );

--振り向く
SE008 = playSeVer2( spep_0 + 318, 1116, "",spep_0 + 368, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 318, SE008, 53 );

--セリフカットイン
SE009 = playSeVer2( spep_0 + 340, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE009, 63 );

--画面遷移
SE010 = playSeVer2( spep_0 + 396, 8, "", 0, 0, 0, -1);

--ズーム
SE011 = playSeVer2( spep_0 + 550, 1072, "", 0, 0, 0, -1);

--瞬間移動
SE012 = playSeVer2( spep_0 + 624, 1109, "", 0, 0, 0, -1);

--悟空セリフ
SE013 = playSeVer2( spep_0 + 688, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 688, SE013, 46 );

--悟空セリフ
SE014 = playSeVer2( spep_0 + 690, 1237, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 690, SE014, 45 );

--ラスト決め
SE015 = playSeVer2( spep_0 + 878, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 878, SE015, 40 );
SE016 = playSeVer2( spep_0 + 878, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 878, SE016, 48 );


-- ** ボイス ** --
--「こっ…この気は…… ま…まさか…」
playVoice( spep_0 + 64, 898 );
setVoiceVolume( spep_0 + 64, 898, 126 );

--「ベジータ……！！！！？」
playVoice( spep_0 + 340, 899 );
setVoiceVolume( spep_0 + 340, 899, 126 );

--「やった！！！やっぱりそうだった！！！」
playVoice( spep_0 + 676, 900 );
setVoiceVolume( spep_0 + 676, 900, 126 );

--「カ……カカロット……！！」
playVoice( spep_0 + 870, 901 );
setVoiceVolume( spep_0 + 870, 901, 126 );


-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1040f

else end
