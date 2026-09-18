-- 1026530: 孫悟空_登場時演出
-- battle_301255

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
SP_01 = 3190;  -- 登場時演出

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
-- 登場時演出 (722F)
------------------------------------------------------
-- ** エフェクト等 ** --
entry_SP_01 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + 722, entry_SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + 722, entry_SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_01, 0 );
setEffRotateKey( spep_0 + 722, entry_SP_01, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_01, 255 );
setEffAlphaKey( spep_0 + 722, entry_SP_01, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--拳握る
SE002 = playSeVer2( spep_0 + 36, 1233, "", 0, 2, 0, -1);
setStartTimeMs( SE002,  150 );
SE003 = playSeVer2( spep_0 + 38, 1330, "",spep_0 + 82, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 38, SE003, 73 );

--画面遷移
SE004 = playSeVer2( spep_0 + 74, 8, "", 0, 0, 0, -1);

--セリフカットイン
SE005 = playSeVer2( spep_0 + 172, 1018, "", 0, 0, 0, -1);

--紐縛る
SE006 = playSeVer2( spep_0 + 340, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 354, 1005, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 354, SE007, 71 );
SE008 = playSeVer2( spep_0 + 354, 1006, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 354, 1331, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 354, 1250, "",spep_0 + 434, 0, 40, -1);

--画面遷移
SE011 = playSeVer2( spep_0 + 434, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 434, SE011, 71 );

--凄む
SE012 = playSeVer2( spep_0 + 604, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 604, SE012, 77 );

--ラスト決め
SE013 = playSeVer2( spep_0 + 650, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 650, SE013, 110 );

SE014 = playSeVer2( spep_0 + 650, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 650, SE014, 110 );

--ボイス
--「さてと！そろそろ全開でいくかな！」
playVoice( spep_0 + 164, 623 );
setVoiceVolume( spep_0 + 164, 623, 126 );
--SE_6_623 = playVoice( spep_0 + 168, 623 );

--「いっとくが、おめえなんかに天下はとらせねえからな！
playVoice( spep_0 + 434, 624 );
setVoiceVolume( spep_0 + 434, 624, 126 );
--SE_7_624 = playVoice( spep_0 + 440, 624 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 722 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
endPhase( spep_0 + 722 );

else end
