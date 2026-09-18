-- 1029050:LR_孫悟空(身勝手の極意“兆”)_アクティブ変身＋フィールド展開
-- battle_301294
-- bs0046

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3234; -- アクティブ変身＋フィールド展開 ef_001

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
-- アクティブ変身＋フィールド展開
-------------------------------------------------

MAX_FRAME_0 = 1080;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
base = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- アクティブ変身＋フィールド展開(ef_001)
setEffMoveKey( spep_0 + 0, base, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base, 0);
setEffAlphaKey( spep_0 + 0, base, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 70, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 178 );

--気を高める
SE002 = playSeVer2( spep_0 + 54, 1371, "",spep_0 + 356, 14, 66, -1);
setSeVolumeByWorkId( spep_0 + 54, SE002, 110 );
setStartTimeMs( SE002,  967 );

--手をクロスにする
SE003 = playSeVer2( spep_0 + 0, 1233, "", 0, 0, 0, -1);
setPitch( spep_0 + 0, SE003, 400 );
setTimeStretch( SE003, 1.27, 30, 4 );

--構える
SE004 = playSeVer2( spep_0 + 26, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE004, 200 );
SE005 = playSeVer2( spep_0 + 26, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE005, 71 );

--気を高める
SE006 = playSeVer2( spep_0 + 34, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE006, 76 );
SE007 = playSeVer2( spep_0 + 44, 1176, "",spep_0 + 332, 0, 40, -1);
SE008 = playSeVer2( spep_0 + 44, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE008, 123 );
SE009 = playSeVer2( spep_0 + 44, 1407, "",spep_0 + 352, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 44, SE009, 302 );

--カメラ引く
SE010 = playSeVer2( spep_0 + 114, 1226, "",spep_0 + 354, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 114, SE010, 71 );
SE011 = playSeVer2( spep_0 + 114, 1232, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 114, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE012, 72 );

--画面遷移
SE013 = playSeVer2( spep_0 + 286, 8, "", 0, 0, 0, -1);

--オーラ
SE014 = playSeVer2( spep_0 + 298, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 298, SE014, 65 );
setPitch( spep_0 + 298, SE014, -500 );
setTimeStretch( SE014, 0.67, 30, 4 );
SE015 = playSeVer2( spep_0 + 298, 1407, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 298, SE015, 166 );
SE016 = playSeVer2( spep_0 + 298, 1181, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 298, SE016, 182 );

--気がとりまく
SE017 = playSeVer2( spep_0 + 482, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 482, SE017, 50 );

--目線カットイン
SE018 = playSeVer2( spep_0 + 614, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 614, SE018, 83 );

--髪変わる
SE019 = playSeVer2( spep_0 + 682, 1263, "",spep_0 + 804, 0, 60, -1);

--足踏み出す
SE020 = playSeVer2( spep_0 + 768, 1061, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 768, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 768, SE021, 66 );

--カメラパン
SE022 = playSeVer2( spep_0 + 822, 44, "", 0, 0, 0, -1);

--ラスト決め
SE023 = playSeVer2( spep_0 + 934, 1237, "", 0, 2, 0, -1);
setStartTimeMs( SE023,  167 );
setPitch( spep_0 + 934, SE023, -300 );
setTimeStretch( SE023, 0.8, 30, 4 );
SE024 = playSeVer2( spep_0 + 936, 1156, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 936, SE024, 65 );
SE025 = playSeVer2( spep_0 + 936, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 936, SE025, 79 );

-- ** ボイス ** --
--「うおおああああああああ！」
playVoice( spep_0 + 4, 802 );
setVoiceVolume( spep_0 + 4, 802, 100 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);    -- 1080

else end