-- 1026530: 孫悟空_スタンバイ演出
-- battle_301259

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035;  -- 気を貯める
SE_02 = 1036;  -- 気が広がる
SE_03 = 1036;  -- かめはめ
SE_04 = 1018;  -- カットイン
SE_05 = 1035;  -- カットイン攻撃
SE_06 = 1021;  -- 発射
SE_07 = 1022;  -- のびる発射
SE_08 = 1042;  -- カットイン
SE_09 = 1023;  -- HIT
SE_10 = 1024;  -- 爆破
SE_11 = 1054;  -- 割れる音
SE_12 = 09;

-- 味方側
SP_01 = 3194;  -- スタンバイ演出 ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- スタンバイ演出 ef_001 (654F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_01 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + 654, entry_SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + 654, entry_SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_01, 0 );
setEffRotateKey( spep_0 + 654, entry_SP_01, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_01, 255 );
setEffAlphaKey( spep_0 + 654, entry_SP_01, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--風音
SE002 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--起き上がる
SE003 = playSeVer2( spep_0 + 28, 1299, "", 0, 0, 0, -1);

--膝つく
SE004 = playSeVer2( spep_0 + 176, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE004, 60 );

--立ち上がる
SE005 = playSeVer2( spep_0 + 294, 1377, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 294, SE005, 68 );
SE006 = playSeVer2( spep_0 + 296, 1301, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE006, 123 );
SE007 = playSeVer2( spep_0 + 304, 1192, "", 0, 0, 0, -1);

--セリフカットイン
SE008 = playSeVer2( spep_0 + 336, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE008, 50 );

--画面遷移
SE009 = playSeVer2( spep_0 + 494, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 494, SE009, 86 );

-- ボイス
--「い…いつつつ………」
playVoice( spep_0 + 8, 625 );
setVoiceVolume( spep_0 + 8, 625, 126 );

--「ぐうっ…………」
playVoice( spep_0 + 186, 626 );
setVoiceVolume( spep_0 + 186, 626, 126 );

--「よ…よかった...　急所ははずれたみてえだ…」
playVoice( spep_0 + 342, 627 );
setVoiceVolume( spep_0 + 342, 627, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 654 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
endPhase( spep_0 + 654 );

else end
