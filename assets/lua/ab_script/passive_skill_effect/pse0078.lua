--1030940:UR_セル(完全体)_登場時演出+フィールド展開
--battle_301322
--pse0078

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3267;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 872;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場時演出（ef_001）
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 22, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE002, 79 );

--画面遷移
SE003 = playSeVer2( spep_0 + 140, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE003, 83 );

--空気音
SE004 = playSeVer2( spep_0 + 156, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE004, 31 );

--ノイズ走る
SE005 = playSeVer2( spep_0 + 546, 1487, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 546, SE005, 79 );

--セリフカットイン
SE006 = playSeVer2( spep_0 + 632, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 632, SE006, 63 );

--ラスト決め
SE007 = playSeVer2( spep_0 + 640, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 640, SE007, 68 );

--闘技場遠景
SE008 = playSeVer2( spep_0 + 762, 8, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 762, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 762, SE009, 71 );
SE010 = playSeVer2( spep_0 + 772, 1128, "",spep_0 + 888, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 772, SE010, 52 );
setPitch( spep_0 + 772, SE010, -1200 );
setTimeStretch( SE010, 0.2, 30, 4 );

-- ** ボイス ** --
--「セルゲームという武道大会をおこなうことにした……！」
playVoice( spep_0 + 0, 967 );
setVoiceVolume( spep_0 + 0, 967, 122 );

--「強さに自信のある者はどんどん参加してほしい」
playVoice( spep_0 + 318, 968 );
setVoiceVolume( spep_0 + 318, 968, 122 );

--「楽しみにしているぞ」
playVoice( spep_0 + 616, 969 );
setVoiceVolume( spep_0 + 616, 969, 122 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --872f

else end
