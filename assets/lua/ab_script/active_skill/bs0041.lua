--1027600:LR_超サイヤ人トランクス (青年期)＆超サイヤ人ブロリー_アクティブバフ：結束の力
--battle_301270
--bs0041

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3206; --アクティブバフ ef_001

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
-- アクティブバフ
-------------------------------------------------

MAX_FRAME_0 = 1034;

-- ** エフェクト等 ** --
base = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base, 0);
setEffAlphaKey( spep_0 + 0, base, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base, 255);

-- ** 白フェード ** --
entryFade( spep_0 + 410, 16, 4, 16, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--画面遷移
SE002 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--セリフカットイン
SE003 = playSeVer2( spep_0 + 92, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE003, 71 );

--画面遷移
SE004 = playSeVer2( spep_0 + 400, 8, "", 0, 0, 0, -1);

--エネルギー送る
SE005 = playSeVer2( spep_0 + 452, 1400, "",spep_0 + 856, 0, 148, -1);
setSeVolumeByWorkId( spep_0 + 452, SE005, 145 );
SE006 = playSeVer2( spep_0 + 452, 1396, "",spep_0 + 856, 32, 148, -1);
setSeVolumeByWorkId( spep_0 + 452, SE006, 78 );
SE007 = playSeVer2( spep_0 + 452, 1022, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 452, SE007, 61 );
SE008 = playSeVer2( spep_0 + 566, 1022, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 566, SE008, 68 );

--画面遷移
SE009 = playSeVer2( spep_0 + 678, 1232, "", 0, 0, 0, -1);

--エネルギー溜まる
SE010 = playSeVer2( spep_0 + 704, 1356, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 704, SE010, 69 );
SE011 = playSeVer2( spep_0 + 704, 1265, "", 0, 0, 0, -1);

--オーラ
SE012 = playSeVer2( spep_0 + 900, 1036, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 924, 1036, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 948, 1036, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 972, 1036, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 996, 1036, "", 0, 0, 0, -1);

--気が高まる
SE013 = playSeVer2( spep_0 + 886, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 886, SE013, 56 );
SE014 = playSeVer2( spep_0 + 886, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 886, SE014, 85 );


-- ** ボイス ** --
--「た…頼んだぞ！！トランクス！ブロリー！」
playVoice( spep_0 + 86, 724 );
setVoiceVolume( spep_0 + 86, 724, 100 );

--「気が高まる。溢れる」
playVoice( spep_0 + 694, 723 );
setVoiceVolume( spep_0 + 694, 723, 100 );

--「いくぞ」
playVoice( spep_0 + 903, 722 );
setVoiceVolume( spep_0 + 903, 722, 126 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);--1034

else end