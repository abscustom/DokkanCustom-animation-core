--1022830:カリフラ&ケール_合体_tf0035
--sp_effect_b4_00201

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--エフェクト(味方)
SP_01 = 158310; --並んで先を見つめるふたり〜ポタラを付ける  ef_001
SP_02 = 158311; --合体〜正面立ちでオーラ   ef_002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 並んで先を見つめるふたり〜ポタラを付ける(486F)
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
active_s = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, active_s, 0, 0, 0 );
setEffMoveKey( spep_0 + 486, active_s, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active_s, 1.0, 1.0 );
setEffScaleKey( spep_0 + 486, active_s, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active_s, 0 );
setEffRotateKey( spep_0 + 486, active_s, 0 );
setEffAlphaKey( spep_0 + 0, active_s, 255 );
setEffAlphaKey( spep_0 + 486, active_s, 255 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 +486 + 32, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--カリフラ振り返る
SE002 = playSeVer2( spep_0 + 24, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE002, 158 );
SE003 = playSeVer2( spep_0 + 28, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 28, SE003, 141 );

--セリフカットイン
SE004 = playSeVer2( spep_0 + 44, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE004, 63 );

--ケール振り返る
SE005 = playSeVer2( spep_0 + 210, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE005, 77 );

--二人構える
SE006 = playSeVer2( spep_0 + 382, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 386, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE007, 41 );

--ポタラつける
SE008 = playSeVer2( spep_0 + 444, 21, "", spep_0 + 462, 0, 2, -1);


--ボイス
--あたしらふたりがガッチリ組んだら
playVoice( spep_0 + 34, 310 );
setVoiceVolume( spep_0 + 34, 310, 100 );

--全宇宙で最強です！！
playVoice( spep_0 + 244, 311 );
setVoiceVolume( spep_0 + 244, 311, 100 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 486;


------------------------------------------------------
-- 合体〜正面立ちでオーラ(780F)
------------------------------------------------------
--spep_1 = 0;

active_e = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, active_e, 0, 0, 0 );
setEffMoveKey( spep_1 + 780, active_e, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, active_e, 1.0, 1.0 );
setEffScaleKey( spep_1 + 780, active_e, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, active_e, 0 );
setEffRotateKey( spep_1 + 780, active_e, 0 );
setEffAlphaKey( spep_1 + 0, active_e, 255 );
setEffAlphaKey( spep_1 + 780, active_e, 255 );

--SE
--ポタラ光
SE009 = playSeVer2( spep_1 + 0, 1273, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 0, 1274, "",spep_1 + 82, 0, 40, -1);
SE011 = playSeVer2( spep_1 +0, 1275, "",spep_1 + 82, 0, 40, -1);

--光合わさる
SE012 = playSeVer2( spep_1 + 104, 1255, "",spep_1 + 206, 30, 30, -1);
setSeVolumeByWorkId( spep_1 + 104, SE012, 159 );
setStartTimeMs( SE012,  967 );
setPitch( spep_1 + 104, SE012, -600 );
setTimeStretch( SE012, 0.6, 30, 4 );

SE019 = playSeVer2( spep_1 + 120, 1291, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_1 + 120, SE019, 46 );

--光回転する
SE013 = playSeVer2( spep_1 + 70, 1290, "", 0, 4, 0, -1);
setStartTimeMs( SE013,  80 );
SE014 = playSeVer2( spep_1 + 70, 1307, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 70, 1303, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 70, SE015, 39 );
setPitch( spep_1 + 70, SE015, 400 );
setTimeStretch( SE015, 1.27, 30, 4 );
SE016 = playSeVer2( spep_1 + 70, 1289, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 70, SE016, 60 );
setPitch( spep_1 + 70, SE016, 800 );
setTimeStretch( SE016, 1.53, 30, 4 );
SE017 = playSeVer2( spep_1 + 94, 1290, "", 0, 4, 0, -1);
setStartTimeMs( SE017,  80 );
SE018 = playSeVer2( spep_1 + 96, 1303, "",spep_1 + 210, 0, 68, -1);
setSeVolumeByWorkId( spep_1 + 96, SE018, 33 );

--変身
SE020 = playSeVer2( spep_1 + 164, 1212, "",spep_1 + 316, 10, 102, -1);
setSeVolumeByWorkId( spep_1 + 164, SE020, 56 );
setStartTimeMs( SE020,  333 );
SE021 = playSeVer2( spep_1 + 168, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 168, SE021, 143 );
SE022 = playSeVer2( spep_1 + 168, 1264, "",spep_1 + 408, 0, 174, -1);
setSeVolumeByWorkId( spep_1 + 168, SE022, 52 );

--環境音
SE023 = playSeVer2( spep_1 + 204, 1269, "", 0, 126, 0, -1);
setSeVolumeByWorkId( spep_1 + 204, SE023, 25 );

--左向く
SE024 = playSeVer2( spep_1 + 390, 1048, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 390, SE024, 35 );
SE025 = playSeVer2( spep_1 + 390, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 390, SE025, 44 );
setBandpassFilter  ( spep_1 + 390, SE025, 600, 24000 );

--右向く
SE026 = playSeVer2( spep_1 + 462, 1048, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 462, SE026, 41 );
SE027 = playSeVer2( spep_1 + 462, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 462, SE027, 50 );
setBandpassFilter  ( spep_1 + 462, SE027, 600, 24000 );

--決め
SE028 = playSeVer2( spep_1 + 550, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 550, SE028, 58 );

--地響き
SE029 = playSeVer2( spep_1 + 622, 1044, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_1 + 622, SE029, 47 );
SE030 = playSeVer2( spep_1 + 622, 1226, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_1 + 622, SE030, 61 );

--イナヅマ
SE031 = playSeVer2( spep_1 + 636, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 636, SE031, 58 );

--ラスト気ダメ
SE032 = playSeVer2( spep_1 + 670, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 670, SE032, 78 );
SE033 = playSeVer2( spep_1 + 670, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 670, SE033, 88 );
SE034 = playSeVer2( spep_1 + 670, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 670, SE034, 95 );

--ボイス
--ハーハッハッハッハッ！
playVoice( spep_1 + 183, 312 );
setVoiceVolume( spep_1 + 183, 312, 100 );

--ケールと！
playVoice( spep_1 + 388, 313 );
setVoiceVolume( spep_1 + 388, 313, 100 );

--カリフラで！
playVoice( spep_1 + 461, 332 );
setVoiceVolume( spep_1 + 461, 332, 100 );

--ケフラ！！
playVoice( spep_1 + 544, 333 );
setVoiceVolume( spep_1 + 544, 333, 100 );

--はああっ！！
playVoice( spep_1 + 658, 334 );
setVoiceVolume( spep_1 + 658, 334, 126 );

--終わり
--entryFadeBg( spep_0 + 0, 0, 890, 0, fcolor_r, fcolor_g, fcolor_b, 255);       --　白背景
endPhase( spep_1 + 780 );
else end