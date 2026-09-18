-- 4029410:LR_伝説の超サイヤ人ブロリー_アクティブスキル：サイヤ人の殺戮本能
-- battle_301298
-- bs0047

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3237; -- アクティブデバフ演出 ef_001

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
-- アクティブデバフ演出
-------------------------------------------------

setupMovie(0,SP_01,0,1);

MAX_FRAME_0 = 1268;

-- ** エフェクト等 ** --
base = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- アクティブデバフ演出(ef_001)
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
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--ブロリー足音
SE002 = playSeVer2( spep_0 + 16, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE002, 66 );
SE004 = playSeVer2( spep_0 + 66, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE004, 89 );
SE005 = playSeVer2( spep_0 + 118, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 118, SE005, 120 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 50, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE003, 63 );

--セリフカットイン
SE006 = playSeVer2( spep_0 + 222, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 222, SE006, 58 );

--セリフカットイン
SE007 = playSeVer2( spep_0 + 512, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 512, SE007, 63 );

--宇宙船掴む
SE008 = playSeVer2( spep_0 + 710, 1153, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 710, 1414, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 712, 1387, "", 0, 0, 0, -1);

--力入れる
SE011 = playSeVer2( spep_0 + 784, 1153, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 784, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 784, SE012, 68 );
SE013 = playSeVer2( spep_0 + 784, 1330, "", 0, 0, 0, -1);

--持ち上げる
SE014 = playSeVer2( spep_0 + 832, 92, "", 0, 16, 0, -1);
SE015 = playSeVer2( spep_0 + 832, 1116, "",spep_0 + 888, 0, 26, -1);
SE016 = playSeVer2( spep_0 + 850, 1044, "",spep_0 + 974, 0, 68, -1);
SE017 = playSeVer2( spep_0 + 852, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 852, SE017, 35 );
SE018 = playSeVer2( spep_0 + 852, 1168, "",spep_0 + 1018, 0, 84, -1);
setSeVolumeByWorkId( spep_0 + 852, SE018, 71 );
SE019 = playSeVer2( spep_0 + 924, 44, "", 0, 0, 0, -1);

--ズームアウト
SE020 = playSeVer2( spep_0 + 1004, 1072, "", 0, 0, 0, -1);

--力む
SE021 = playSeVer2( spep_0 + 1062, 1344, "", 0, 0, 0, -1);

--最後つぶす
SE022 = playSeVer2( spep_0 + 1152, 1009, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 1152, 1153, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 1152, 1250, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1152, SE024, 188 );
SE025 = playSeVer2( spep_0 + 1152, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1152, SE025, 133 );
SE026 = playSeVer2( spep_0 + 1152, 1386, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 1152, 1067, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「どこへ行くんだ？」
playVoice( spep_0 + 30, 827 );
setVoiceVolume( spep_0 + 36, 827, 110 );

--「お、お前と一緒に避難する準備だ」
playVoice( spep_0 + 180, 828 );
setVoiceVolume( spep_0 + 186, 828, 110 );

--「一人用のポッドでか？」
playVoice( spep_0 + 492, 829 );
setVoiceVolume( spep_0 + 498, 829, 110 );

--「ウオーーーー！！」
playVoice( spep_0 + 976, 830 );
setVoiceVolume( spep_0 + 982, 830, 110 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);    -- 1268f

else end