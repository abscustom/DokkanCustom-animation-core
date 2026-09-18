--1031120:UR_ヒット_アクティブ変身
--sp_effect_b4_00378
--tf0078

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- エフェクト(味方)
SP_01 = 163792; --ef_001 セリフ〜演武〜セリフ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- セリフ〜演武〜セリフ
-------------------------------------------------

MAX_FRAME_0 = 798;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001 セリフ〜演武〜セリフ
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 71 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 2, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 63 );

--環境音
SE004 = playSeVer2( spep_0 + 74, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE004, 25 );

--画面遷移
SE005 = playSeVer2( spep_0 + 302, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 302, SE005, 71 );

--後ろに飛ぶ
SE006 = playSeVer2( spep_0 + 368, 1117, "",spep_0 + 452, 0, 46, -1);

--構える
SE007 = playSeVer2( spep_0 + 438, 1333, "",spep_0 + 484, 4, 18, -1);
setSeVolumeByWorkId( spep_0 + 438, SE007, 73 );
setStartTimeMs( SE007,  533 );
SE008 = playSeVer2( spep_0 + 438, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 438, SE008, 138 );
setPitch( spep_0 + 438, SE008, 200 );
setTimeStretch( SE008, 1.13, 30, 4 );

--連続構え
SE009 = playSeVer2( spep_0 + 480, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE009, 136 );
SE010 = playSeVer2( spep_0 + 490, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 510, 1189, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 510, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 510, SE012, 76 );
SE013 = playSeVer2( spep_0 + 522, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 534, 1003, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 542, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 542, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 542, SE016, 79 );
SE017 = playSeVer2( spep_0 + 552, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 552, SE017, 65 );
SE018 = playSeVer2( spep_0 + 552, 1003, "", 0, 0, 0, -1);
setPitch( spep_0 + 552, SE018, -200 );
setTimeStretch( SE018, 0.87, 30, 4 );
SE019 = playSeVer2( spep_0 + 560, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 560, SE019, 56 );
SE020 = playSeVer2( spep_0 + 564, 1189, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 568, 1003, "", 0, 0, 0, -1);
setPitch( spep_0 + 568, SE021, 100 );
setTimeStretch( SE021, 1.07, 30, 4 );
SE022 = playSeVer2( spep_0 + 578, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 578, SE022, 75 );
SE023 = playSeVer2( spep_0 + 578, 1189, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 590, 1003, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 592, 1233, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 594, 1189, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 602, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 602, SE027, 73 );

--画面遷移
SE028 = playSeVer2( spep_0 + 624, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 624, SE028, 71 );

--ラスト決め
SE029 = playSeVer2( spep_0 + 660, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 660, SE029, 60 );


-- ** ボイス ** --
--「強敵…その存在が成長を促す」
playVoice( spep_0 + 4, 985 );
setVoiceVolume( spep_0 + 4, 985, 122 );

--「オレはまだ伸びるぞ！」
playVoice( spep_0 + 660, 986 );
setVoiceVolume( spep_0 + 660, 986, 122 );


--終わり
endPhase( spep_0 + MAX_FRAME_0);   --798f

else end