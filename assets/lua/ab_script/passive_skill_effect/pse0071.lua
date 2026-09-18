--1030570:LR_超サイヤ人ゴッドSSベジータ(進化)_登場時演出
--battle_301314
--pse0071

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3257;  -- 登場時演出 ef_001


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
MAX_FRAME_0 = 1400;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場時演出(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --

--地響き
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 174, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 56 );

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 158, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 178 );

--髪光る
SE003 = playSeVer2( spep_0 + 56, 1437, "",spep_0 + 176, 28, 48, -1);
setSeVolumeByWorkId( spep_0 + 56, SE003, 66 );
setStartTimeMs( SE003,  367 );

--回想入る
SE004 = playSeVer2( spep_0 + 126, 8, "", 0, 0, 0, -1);

--地響き
SE005 = playSeVer2( spep_0 + 140, 1226, "",spep_0 + 296, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 140, SE005, 25 );

--オーラ
SE006 = playSeVer2( spep_0 + 140, 1181, "",spep_0 + 290, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 140, SE006, 56 );

--回想から戻る
SE007 = playSeVer2( spep_0 + 252, 8, "", 0, 0, 0, -1);

--地響き
SE008 = playSeVer2( spep_0 + 268, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE008, 32 );

--オーラ
SE009 = playSeVer2( spep_0 + 268, 1181, "",spep_0 + 1076, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 268, SE009, 178 );

--髪光る
SE010 = playSeVer2( spep_0 + 306, 1437, "",spep_0 + 402, 30, 38, -1);
setSeVolumeByWorkId( spep_0 + 306, SE010, 65 );
setStartTimeMs( SE010,  533 );

--セリフカットイン
SE011 = playSeVer2( spep_0 + 286, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 286, SE011, 63 );

--髪光る
SE012 = playSeVer2( spep_0 + 396, 1437, "",spep_0 + 492, 30, 36, -1);
setSeVolumeByWorkId( spep_0 + 396, SE012, 67 );
setStartTimeMs( SE012,  533 );
SE013 = playSeVer2( spep_0 + 478, 1437, "",spep_0 + 604, 30, 66, -1);
setSeVolumeByWorkId( spep_0 + 478, SE013, 76 );
setStartTimeMs( SE013,  533 );

--気が逆立つ
SE014 = playSeVer2( spep_0 + 578, 1427, "", 0, 0, 0, -1);

--後半オーラ
SE015 = playSeVer2( spep_0 + 594, 1176, "",spep_0 + 1092, 0, 68, -1);
setSeVolumeByWorkId( spep_0 + 594, SE015, 63 );

--気が逆立つ
SE016 = playSeVer2( spep_0 + 594, 1160, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 594, SE016, 68 );

--画面遷移
SE017 = playSeVer2( spep_0 + 760, 1232, "", 0, 0, 0, -1);

--地響き
SE018 = playSeVer2( spep_0 + 774, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 774, SE018, 32 );

--目光る
SE019 = playSeVer2( spep_0 + 918, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 918, SE019, 71 );
SE020 = playSeVer2( spep_0 + 918, 1303, "",spep_0 + 1022, 0, 70, -1);
setSeVolumeByWorkId( spep_0 + 918, SE020, 75 );
SE021 = playSeVer2( spep_0 + 936, 1265, "",spep_0 + 1076, 0, 60, -1);
SE022 = playSeVer2( spep_0 + 936, 1191, "",spep_0 + 1044, 0, 82, -1);

--ズームアウト
SE023 = playSeVer2( spep_0 + 946, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 946, SE023, 122 );

--気が爆発する
SE024 = playSeVer2( spep_0 + 1006, 1156, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 1006, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1006, SE025, 186 );
SE026 = playSeVer2( spep_0 + 1006, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1006, SE026, 106 );
SE027 = playSeVer2( spep_0 + 1006, 1422, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1006, SE027, 124 );

--キラキラ音
SE028 = playSeVer2( spep_0 + 1104, 1474, "", 0, 48, 0, -1);
setSeVolumeByWorkId( spep_0 + 1104, SE028, 500 );

--オーラ
SE029 = playSeVer2( spep_0 + 1116, 1181, "", 0, 50, 0, -1);
setSeVolumeByWorkId( spep_0 + 1116, SE029, 178 );

--後半オーラ
SE030 = playSeVer2( spep_0 + 1116, 1176, "", 0, 48, 0, -1);
setSeVolumeByWorkId( spep_0 + 1116, SE030, 63 );

--ラスト決め
SE031 = playSeVer2( spep_0 + 1238, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1238, SE031, 63 );
SE032 = playSeVer2( spep_0 + 1238, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1238, SE032, 71 );

-- ** ボイス ** --

--「オレは…あいつとの約束を守らなければならないんだ…！！ 」
playVoice( spep_0 + 280, 917 );
setVoiceVolume( spep_0 + 280, 917, 122 );

--「だからオレのやり方で限界なんぞ超えてやる！！」
playVoice( spep_0 + 606, 918 );
setVoiceVolume( spep_0 + 606, 918, 122 );

--「これがオレの全てだ！！」
playVoice( spep_0 + 1230, 919 );
setVoiceVolume( spep_0 + 1230, 919, 122 );

endPhase( spep_0 + MAX_FRAME_0); -- 1400F

end