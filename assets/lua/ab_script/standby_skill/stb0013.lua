--1031180:UR_超サイヤ人ゴッドSS孫悟空(界王拳)_スタンバイ
--battle_301325
--stb0013

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3271;  -- ef_001 スタンバイ演出

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
-- 味方側
------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

------------------------------------------------------
-- スタンバイ演出
------------------------------------------------------
MAX_FRAME_0 = 1058;

-- ** エフェクト等 ** --
standby_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );      -- ef_001 スタンバイ演出
setEffMoveKey( spep_0 + 0, standby_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, standby_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, standby_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, standby_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, standby_f, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, standby_f, 0 );
setEffAlphaKey( spep_0 + 0, standby_f, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, standby_f, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--地響き
SE001 = playSeVer2( spep_0 + 0, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 40 );

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );

--イナヅマ走る
SE003 = playSeVer2( spep_0 + 24, 1491, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 48, 1056, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 112, 1491, "", 0, 0, 0, -1);

--画面遷移
SE006 = playSeVer2( spep_0 + 174, 1232, "", 0, 0, 0, -1);

--オーラ
SE007 = playSeVer2( spep_0 + 186, 1477, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE007, 20 );

--力む
SE008 = playSeVer2( spep_0 + 274, 1330, "", 0, 0, 0, -1);

--風圧
SE009 = playSeVer2( spep_0 + 334, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 334, SE009, 71 );

--地面割れる
SE010 = playSeVer2( spep_0 + 386, 1061, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 386, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE011, 71 );

--地響き
SE012 = playSeVer2( spep_0 + 404, 1044, "",spep_0 + 830, 0, 4, -1);

--電気走る
SE013 = playSeVer2( spep_0 + 478, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 478, SE013, 79 );

--地響き
SE014 = playSeVer2( spep_0 + 528, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE014, 40 );

--電気走る
SE015 = playSeVer2( spep_0 + 584, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 584, SE015, 79 );

--のけぞる
SE016 = playSeVer2( spep_0 + 638, 1116, "",spep_0 + 728, 0, 56, -1);

--気ダメ
SE017 = playSeVer2( spep_0 + 762, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 762, SE017, 136 );
SE018 = playSeVer2( spep_0 + 774, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 774, SE018, 80 );
SE019 = playSeVer2( spep_0 + 792, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 792, SE019, 170 );
setPitch( spep_0 + 792, SE019, -500 );

--地響き
SE020 = playSeVer2( spep_0 + 820, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 820, SE020, 40 );

--セリフカットイン
SE021 = playSeVer2( spep_0 + 832, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 832, SE021, 63 );


-- ** ボイス ** --
--「10倍だあーーーっ！！！！」
playVoice( spep_0 + 788, 981 );
setVoiceVolume( spep_0 + 788, 981, 128 );


-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0 ); -- 1058f

else end