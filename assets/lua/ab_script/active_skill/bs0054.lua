-- 1031080:UR_孫悟空(少年期)_アクティブバフ：悟空の魚釣り
-- battle_301323
-- bs0054

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3268; -- アクティブバフ演出 ef_001

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
-- アクティブバフ演出
-------------------------------------------------

MAX_FRAME_0 = 708;

-- ** エフェクト等 ** --
base = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- アクティブバフ演出(ef_001)
setEffMoveKey( spep_0 + 0, base, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base, 0);
setEffAlphaKey( spep_0 + 0, base, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--水中音
SE001 = playSeVer2( spep_0 + 0, 1470, "",spep_0 + 376, 0, 60, -1);
setBandpassFilter( spep_0 + 0, SE001, 24, 500 );
SE002 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 122, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 38 );

--尻尾水に入れる
SE003 = playSeVer2( spep_0 + 30, 1471, "",spep_0 + 128, 0, 38, -1);

--尻尾引っ張られる
SE004 = playSeVer2( spep_0 + 116, 1416, "",spep_0 + 174, 0, 20, -1);
setPitch( spep_0 + 116, SE004, -600 );
setTimeStretch( SE004, 0.6, 30, 4 );
SE005 = playSeVer2( spep_0 + 140, 1416, "",spep_0 + 198, 0, 20, -1);

--水中音
SE006 = playSeVer2( spep_0 + 176, 1226, "",spep_0 + 370, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 176, SE006, 34 );

--魚泳ぎだす
SE007 = playSeVer2( spep_0 + 222, 1166, "",spep_0 + 338, 0, 56, -1);
SE008 = playSeVer2( spep_0 + 222, 1116, "",spep_0 + 272, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 222, SE008, 77 );

--魚水面から出る
SE009 = playSeVer2( spep_0 + 246, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE009, 178 );
SE010 = playSeVer2( spep_0 + 272, 1471, "",spep_0 + 398, 0, 68, -1);
SE011 = playSeVer2( spep_0 + 272, 1024, "", 0, 0, 0, -1);

--飛びかかる
SE012 = playSeVer2( spep_0 + 340, 1182, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 340, 1117, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 340, 1183, "",spep_0 + 442, 0, 20, -1);

--セリフカットイン
SE015 = playSeVer2( spep_0 + 342, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 342, SE015, 63 );

--敵ヒット
SE016 = playSeVer2( spep_0 + 416, 1120, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 416, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 416, SE017, 81 );
SE018 = playSeVer2( spep_0 + 416, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 416, SE018, 82 );

--画面遷移
SE019 = playSeVer2( spep_0 + 462, 8, "", 0, 0, 0, -1);

--環境音
SE020 = playSeVer2( spep_0 + 474, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 474, SE020, 25 );

--魚ひきずる
SE021 = playSeVer2( spep_0 + 520, 1331, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 556, 1331, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 592, 1331, "", 0, 0, 0, -1);

--歩く
SE022 = playSeVer2( spep_0 + 530, 1107, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 558, 1107, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 590, 1107, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 620, 1107, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 650, 1107, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 684, 1107, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「どりゃーーっ！！！！」
playVoice( spep_0 + 340, 965 );
setVoiceVolume( spep_0 + 340, 965, 118 );

--「大漁大漁」
playVoice( spep_0 + 530, 966 );
setVoiceVolume( spep_0 + 530, 966, 118 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);    -- 708f

else end