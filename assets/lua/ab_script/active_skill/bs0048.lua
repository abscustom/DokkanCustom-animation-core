-- 1029140:UR_亀仙人_アクティブバフ：亀仙流の教え
-- sp_effect_b4_00335
-- bs0048

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163031; -- 開始→セリフ→フィニッシュ ef_001

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
-- 開始→セリフ→フィニッシュ
-------------------------------------------------

MAX_FRAME_0 = 658;

-- ** エフェクト等 ** --
base = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開始→セリフ→フィニッシュ ef_001
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

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 10, 44, "", 0, 0, 0, -1);

--走る
SE003 = playSeVer2( spep_0 + 6, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 164 );
setBandpassFilter( spep_0 + 6, SE003, 24, 450 );
SE005 = playSeVer2( spep_0 + 22, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE005, 162 );
setBandpassFilter( spep_0 + 22, SE005, 24, 450 );
SE006 = playSeVer2( spep_0 + 42, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE006, 168 );
setBandpassFilter( spep_0 + 42, SE006, 24, 450 );
SE007 = playSeVer2( spep_0 + 60, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE007, 168 );
setBandpassFilter( spep_0 + 60, SE007, 24, 450 );
SE008 = playSeVer2( spep_0 + 76, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE008, 166 );
setBandpassFilter( spep_0 + 76, SE008, 24, 450 );

--画面遷移
SE009 = playSeVer2( spep_0 + 76, 8, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 186, 8, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 288, 8, "", 0, 0, 0, -1);

--勉強音
SE010 = playSeVer2( spep_0 + 90, 1139, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE010, 67 );
setTimeStretch( SE010, 2, 30, 4 );

--遊ぶ音
SE012 = playSeVer2( spep_0 + 186, 46, "", 0, 0, 0, -1);

--食べる音
SE014 = playSeVer2( spep_0 + 300, 1071, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 300, SE014, 140 );
SE015 = playSeVer2( spep_0 + 302, 409, "",spep_0 + 322, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 302, SE015, 54 );
setPitch( spep_0 + 302, SE015, 800 );
setTimeStretch( SE015, 1.53, 30, 4 );
SE016 = playSeVer2( spep_0 + 312, 409, "",spep_0 + 330, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 312, SE016, 47 );
setPitch( spep_0 + 312, SE016, 600 );
setTimeStretch( SE016, 1.4, 30, 4 );
SE017 = playSeVer2( spep_0 + 322, 409, "",spep_0 + 344, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 322, SE017, 65 );
setPitch( spep_0 + 322, SE017, 800 );
setTimeStretch( SE017, 1.53, 30, 4 );
SE018 = playSeVer2( spep_0 + 332, 409, "",spep_0 + 356, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 332, SE018, 60 );
setPitch( spep_0 + 332, SE018, 600 );
setTimeStretch( SE018, 1.4, 30, 4 );
SE019 = playSeVer2( spep_0 + 342, 409, "",spep_0 + 366, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 342, SE019, 65 );
setPitch( spep_0 + 342, SE019, 800 );
setTimeStretch( SE019, 1.53, 30, 4 );
SE020 = playSeVer2( spep_0 + 354, 409, "",spep_0 + 376, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 354, SE020, 62 );
setPitch( spep_0 + 354, SE020, 600 );
setTimeStretch( SE020, 1.4, 30, 4 );
SE021 = playSeVer2( spep_0 + 364, 409, "",spep_0 + 388, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 364, SE021, 73 );
setPitch( spep_0 + 364, SE021, 800 );
setTimeStretch( SE021, 1.53, 30, 4 );

--画面遷移
SE022 = playSeVer2( spep_0 + 386, 8, "", 0, 0, 0, -1);

--寝る音
SE023 = playSeVer2( spep_0 + 400, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE023, 74 );

--ラスト決め
SE024 = playSeVer2( spep_0 + 506, 8, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 510, 44, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 516, 1062, "", 0, 0, 0, -1);

--セリフカットイン
SE027 = playSeVer2( spep_0 + 522, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 522, SE027, 63 );

-- ** ボイス ** --
--「よく動き」
playVoice( spep_0 + 10, 810 );
setVoiceVolume( spep_0 + 10, 810, 110 );

--「よく学び」
playVoice( spep_0 + 106, 811 );
setVoiceVolume( spep_0 + 106, 811, 110 );

--「よく遊び」
playVoice( spep_0 + 210, 812 );
setVoiceVolume( spep_0 + 210, 812, 110 );

--「よく食べて」
playVoice( spep_0 + 312, 813 );
setVoiceVolume( spep_0 + 312, 813, 110 );

--「よく休む」
playVoice( spep_0 + 414, 814 );
setVoiceVolume( spep_0 + 414, 814, 110 );

--「これが亀仙流の修行じゃ！」
playVoice( spep_0 + 516, 815 );
setVoiceVolume( spep_0 + 516, 815, 110 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);    -- 658

else end