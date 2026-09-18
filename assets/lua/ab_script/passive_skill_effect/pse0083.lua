--1031220:LR_超サイヤ人2カリフラ+超サイヤ人2ケール_合流時演出
--battle_301327
--pse0083

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3274;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 838;

setupMovie(0, SP_01, 0, 1);

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

--セリフカットイン
SE002 = playSeVer2( spep_0 + 16, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE002, 63 );

--呼び寄せる
SE003 = playSeVer2( spep_0 + 16, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 151 );

--画面遷移
SE004 = playSeVer2( spep_0 + 70, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE004, 73 );
SE005 = playSeVer2( spep_0 + 422, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 422, SE005, 71 );

--カリフラ踏み込む
SE006 = playSeVer2( spep_0 + 594, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 594, SE006, 158 );

--気ダメ
SE007 = playSeVer2( spep_0 + 652, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 652, SE007, 126 );
SE008 = playSeVer2( spep_0 + 654, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 664, SE008, 79 );
SE011 = playSeVer2( spep_0 + 688, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 688, SE011, 126 );

--オーラ
SE009 = playSeVer2( spep_0 + 668, 1036, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 692, 1036, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 700, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 700, SE012, 52 );
SE013 = playSeVer2( spep_0 + 716, 1036, "", 0, 0, 0, -1);

--ラスト決め
SE014 = playSeVer2( spep_0 + 716, 1062, "", 0, 0, 0, -1);

--オーラ
SE015 = playSeVer2( spep_0 + 740, 1036, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 764, 1036, "", 0, 0, 0, -1);

--ラスト決め
SE017 = playSeVer2( spep_0 + 776, 1062, "", 0, 0, 0, -1);
setPitch( spep_0 + 776, SE017, 200 );
setTimeStretch( SE017, 1.13, 30, 4 );

--オーラ
SE018 = playSeVer2( spep_0 + 788, 1036, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 812, 1036, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「来い！ケール」
playVoice( spep_0 + 22, 989 );
setVoiceVolume( spep_0 + 22, 989, 124 );

--「あたしに遠慮することねえからな！思いっきり闘いな！ 」
playVoice( spep_0 + 164, 990 );
setVoiceVolume( spep_0 + 164, 990, 124 );

--「はい！」
playVoice( spep_0 + 506, 991 );
setVoiceVolume( spep_0 + 506, 991, 124 );

--「いくぜ！ 」
playVoice( spep_0 + 570, 992 );
setVoiceVolume( spep_0 + 570, 992, 124 );

--「はあああああ！！」（カリフラ）（ケール）
playVoice( spep_0 + 646, 993 );
setVoiceVolume( spep_0 + 646, 993, 124 );


-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --838f

else end
