--1027120:LR_超サイヤ人ゴッドSS孫悟空&超サイヤ人ゴッドSSベジータ_登場時演出
--battle_301262
--pse0031

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3200  -- 登場時演出 ef_001

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

if (_IS_PLAYER_SIDE_ == 1) then

-------------------------------------------------
-- 登場時演出 (520f)
-------------------------------------------------

spep_0 = 0;
MAX_FRAME_0 = 520;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
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

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 16 );

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1181, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 148 );
SE003 = playSeVer2( spep_0 + 0, 1407, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 151 );
SE004 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 16 );
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE005, 16 );
SE007 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE007, 16 );

--画面遷移
SE006 = playSeVer2( spep_0 + 30, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE006, 77 );
SE008 = playSeVer2( spep_0 + 54, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE008, 73 );

--オーラ
SE009 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE009, 16 );
SE010 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE010, 16 );
SE011 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE011, 16 );

--セリフカットイン
SE012 = playSeVer2( spep_0 + 140, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE012, 56 );

--オーラ
SE013 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE013, 16 );
SE014 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE014, 16 );
SE015 = playSeVer2( spep_0 + 192, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE015, 16 );
SE016 = playSeVer2( spep_0 + 216, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE016, 16 );
SE017 = playSeVer2( spep_0 + 240, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE017, 16 );
SE018 = playSeVer2( spep_0 + 264, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE018, 16 );

--セリフカットイン
SE019 = playSeVer2( spep_0 + 268, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE019, 63 );

--オーラ
SE020 = playSeVer2( spep_0 + 288, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE020, 16 );
SE021 = playSeVer2( spep_0 + 312, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 312, SE021, 16 );
SE022 = playSeVer2( spep_0 + 336, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE022, 16 );
SE023 = playSeVer2( spep_0 + 360, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE023, 16 );
SE024 = playSeVer2( spep_0 + 384, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE024, 16 );
SE025 = playSeVer2( spep_0 + 408, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE025, 16 );

--構える
SE026 = playSeVer2( spep_0 + 424, 1233, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 436, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 436, SE027, 84 );
setPitch( spep_0 + 436, SE027, -400 );
setTimeStretch( SE027, 0.73, 30, 4 );

--最後決め
SE028 = playSeVer2( spep_0 + 436, 1062, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 436, 20, "", 0, 0, 0, -1);

--オーラ
SE030 = playSeVer2( spep_0 + 432, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 432, SE030, 16 );
SE031 = playSeVer2( spep_0 + 456, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 456, SE031, 16 );
SE032 = playSeVer2( spep_0 + 480, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE032, 16 );
SE033 = playSeVer2( spep_0 + 504, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 504, SE033, 16 );

-- ** ボイス ** --
--「サイヤ人に限界などない！」
playVoice( spep_0 + 124, 665 );
setVoiceVolume( spep_0 + 124, 665, 119 );

--「おお！フルパワーだ！」
playVoice( spep_0 + 270, 666 );
setVoiceVolume( spep_0 + 270, 666, 119 );

--終わり
endPhase( spep_0 + MAX_FRAME_0 ); -- 終了フレーム 520f

else end
