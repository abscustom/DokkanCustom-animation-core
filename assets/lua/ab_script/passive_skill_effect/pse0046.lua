--1028680：UR_トッポ_登場時演出
--battle_301287
--pse0046

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3223;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 762;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場時演出 ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--腕上げる
SE002 = playSeVer2( spep_0 + 0, 1233, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 6, 1007, "", 0, 0, 0, -1);

--セリフカットイン
SE003 = playSeVer2( spep_0 + 4, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 63 );

--ポーズ
SE005 = playSeVer2( spep_0 + 92, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE005, 72 );
SE006 = playSeVer2( spep_0 + 116, 1233, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 128, 1006, "", 0, 0, 0, -1);

--後ろ向いてポーズ
SE008 = playSeVer2( spep_0 + 284, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE008, 153 );
SE009 = playSeVer2( spep_0 + 288, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE009, 155 );
SE010 = playSeVer2( spep_0 + 296, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE010, 207 );
SE011 = playSeVer2( spep_0 + 296, 1003, "", 0, 0, 0, -1);

--Xポーズ
SE012 = playSeVer2( spep_0 + 468, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 484, 1192, "",spep_0 + 506, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 484, SE013, 172 );
SE014 = playSeVer2( spep_0 + 484, 1233, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 496, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 496, SE015, 80 );

--右手前に
SE016 = playSeVer2( spep_0 + 568, 1233, "", 0, 0, 0, -1);

--ラスト決め
SE017 = playSeVer2( spep_0 + 660, 1232, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 668, 1023, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 674, 1024, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 674, 1062, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「我が名は」
playVoice( spep_0 + 0, 767 );
setVoiceVolume( spep_0 + 0, 767, 100 );

--「勇ましく美しい第11宇宙」
playVoice( spep_0 + 116, 768 );
setVoiceVolume( spep_0 + 116, 768, 100 );

--「プライド・トルーパーズのリーダー」
playVoice( spep_0 + 338, 769 );
setVoiceVolume( spep_0 + 338, 769, 100 );

--「自由の戦士トッポ！」
playVoice( spep_0 + 494, 770 );
setVoiceVolume( spep_0 + 494, 770, 100 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --762f

else end
