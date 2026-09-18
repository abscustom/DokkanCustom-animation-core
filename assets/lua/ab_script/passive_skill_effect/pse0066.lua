--1029950:UR_超サイヤ人ゴッドSS孫悟空(宇宙樹パワー)_登場時演出
--battle_301304
--pse0066

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3244;  -- 登場時演出ef_001

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

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 登場時演出
-------------------------------------------------
MAX_FRAME_0 = 796;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場時演出(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);

setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);

setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);

setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 474, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 56 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 488, 0, 102, -1);
SE003 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 434, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 211 );

--入り
SE004 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--力む
SE005 = playSeVer2( spep_0 + 60, 1344, "", 0, 0, 0, -1);

--手を上にあげる
SE006 = playSeVer2( spep_0 + 120, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE006, 182 );
SE007 = playSeVer2( spep_0 + 136, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE007, 129 );

--気ダメ
SE008 = playSeVer2( spep_0 + 156, 1035, "", 0, 0, 0, -1);

--セリフカットイン
SE009 = playSeVer2( spep_0 + 164, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE009, 63 );

--オーラ
SE010 = playSeVer2( spep_0 + 170, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE010, 56 );
SE011 = playSeVer2( spep_0 + 194, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 194, SE011, 56 );
SE012 = playSeVer2( spep_0 + 218, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE012, 56 );
SE013 = playSeVer2( spep_0 + 242, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE013, 56 );
SE014 = playSeVer2( spep_0 + 266, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE014, 56 );
SE015 = playSeVer2( spep_0 + 290, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 290, SE015, 56 );
SE017 = playSeVer2( spep_0 + 314, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE017, 56 );
SE019 = playSeVer2( spep_0 + 338, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 338, SE019, 56 );
SE020 = playSeVer2( spep_0 + 362, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 362, SE020, 56 );
SE021 = playSeVer2( spep_0 + 386, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE021, 56 );

--画面遷移
SE016 = playSeVer2( spep_0 + 306, 1232, "", 0, 0, 0, -1);

--オーラ青くなる
SE018 = playSeVer2( spep_0 + 472, 1437, "", 0, 32, 0, -1);
setStartTimeMs( SE018,  2267 );

--ピンクのオーラ伸びる
SE022 = playSeVer2( spep_0 + 388, 1116, "",spep_0 + 452, 0, 38, -1);
SE023 = playSeVer2( spep_0 + 392, 1342, "",spep_0 + 506, 0, 52, -1);
SE024 = playSeVer2( spep_0 + 392, 1173, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 392, SE024, 146 );
SE025 = playSeVer2( spep_0 + 392, 1190, "", 0, 12, 0, -1);

--オーラ青くなる
SE026 = playSeVer2( spep_0 + 476, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 476, SE026, 69 );
SE027 = playSeVer2( spep_0 + 542, 1022, "", 0, 40, 0, -1);

--オーラ
SE028 = playSeVer2( spep_0 + 614, 1176, "", 0, 54, 0, -1);
setSeVolumeByWorkId( spep_0 + 614, SE028, 47 );
SE029 = playSeVer2( spep_0 + 614, 1181, "", 0, 60, 0, -1);
setSeVolumeByWorkId( spep_0 + 614, SE029, 200 );

--画面遷移
SE030 = playSeVer2( spep_0 + 648, 44, "", 0, 0, 0, -1);

--オーラ
SE031 = playSeVer2( spep_0 + 658, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 658, SE031, 50 );
SE032 = playSeVer2( spep_0 + 682, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 682, SE032, 50 );
SE033 = playSeVer2( spep_0 + 706, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 706, SE033, 50 );
SE034 = playSeVer2( spep_0 + 730, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 730, SE034, 50 );
SE035 = playSeVer2( spep_0 + 754, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 754, SE035, 50 );

-- ** ボイス ** --
--「オラがぶっ飛ばしてやる」
playVoice( spep_0 + 168, 875 );
setVoiceVolume( spep_0 + 168, 875, 116 );

--「今のオラならそれができそうだ」
playVoice( spep_0 + 542, 876 );
setVoiceVolume( spep_0 + 542, 876, 116 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0 -0); -- 796F

end
