--1022380:超サイヤ人ゴッド孫悟空&超サイヤ人ゴッドベジータ_登場時演出
--sp_effect_b4_00215

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
SP_01 = 158894;--戦闘前演出

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
-- 戦闘前演出
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 1178, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1178, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 1178, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 1178, eff, 255 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--服風でたなびく
SE002 = playSeVer2( spep_0 + 16, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE002, 111 );
SE003 = playSeVer2( spep_0 + 36, 1332, "", 0, 0, 0, -1);
setPitch( spep_0 + 36, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );
SE004 = playSeVer2( spep_0 + 84, 1331, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE004, 114 );
SE005 = playSeVer2( spep_0 + 130, 1333, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE005, 112 );
setPitch( spep_0 + 130, SE005, -300 );
setTimeStretch( SE005, 0.8, 30, 4 );

--服カメラ覆う
SE006 = playSeVer2( spep_0 + 164, 1332, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 174, 1013, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 190, 1332, "",spep_0 + 260, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 190, SE008, 126 );
setPitch( spep_0 + 190, SE008, 600 );
setTimeStretch( SE008, 1.4, 30, 4 );
SE009 = playSeVer2( spep_0 + 200, 1007, "", 0, 0, 0, -1);

--悟空準備運動１
SE010 = playSeVer2( spep_0 + 206, 1111, "",spep_0 + 230, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 206, SE010, 198 );
setPitch( spep_0 + 206, SE010, 200 );
setTimeStretch( SE010, 1.13, 30, 4 );
setBandpassFilter( spep_0 + 206, SE010, 246, 24000 );
SE011 = playSeVer2( spep_0 + 210, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE011, 120 );
SE012 = playSeVer2( spep_0 + 232, 1111, "",spep_0 + 256, 2, 4, -1);
setSeVolumeByWorkId( spep_0 + 232, SE012, 166 );
setStartTimeMs( SE012,  220 );
setPitch( spep_0 + 232, SE012, 200 );
setTimeStretch( SE012, 1.13, 30, 4 );
setBandpassFilter( spep_0 + 232, SE012, 246, 24000 );
SE013 = playSeVer2( spep_0 + 236, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 236, SE013, 120 );
SE014 = playSeVer2( spep_0 + 292, 1111, "",spep_0 + 316, 4, 6, -1);
setSeVolumeByWorkId( spep_0 + 292, SE014, 192 );
setStartTimeMs( SE014,  483 );
setPitch( spep_0 + 292, SE014, 200 );
setTimeStretch( SE014, 1.13, 30, 4 );
setBandpassFilter( spep_0 + 292, SE014, 246, 24000 );
SE015 = playSeVer2( spep_0 + 264, 1111, "",spep_0 + 282, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 264, SE015, 177 );
setPitch( spep_0 + 264, SE015, 200 );
setTimeStretch( SE015, 1.13, 30, 4 );
setBandpassFilter( spep_0 + 264, SE015, 246, 24000 );
SE016 = playSeVer2( spep_0 + 268, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE016, 120 );
SE017 = playSeVer2( spep_0 + 296, 1108, "", 0, 0, 0, -1);

--悟空準備運動２
SE018 = playSeVer2( spep_0 + 354, 1111, "",spep_0 + 372, 0, 6, -1);
setPitch( spep_0 + 354, SE018, 200 );
setTimeStretch( SE018, 1.13, 30, 4 );
setBandpassFilter( spep_0 + 354, SE018, 246, 24000 );
SE019 = playSeVer2( spep_0 + 354, 1192, "",spep_0 + 370, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 354, SE019, 120 );
setPitch( spep_0 + 354, SE019, 400 );
setTimeStretch( SE019, 1.27, 30, 4 );
SE020 = playSeVer2( spep_0 + 356, 1107, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 386, 1111, "",spep_0 + 404, 2, 2, -1);
setSeVolumeByWorkId( spep_0 + 386, SE021, 120 );
setStartTimeMs( SE021,  230 );
setPitch( spep_0 + 386, SE021, 200 );
setTimeStretch( SE021, 1.13, 30, 4 );
setBandpassFilter( spep_0 + 386, SE021, 246, 24000 );
SE022 = playSeVer2( spep_0 + 390, 1192, "",spep_0 + 406, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 390, SE022, 120 );
setPitch( spep_0 + 390, SE022, 400 );
setTimeStretch( SE022, 1.27, 30, 4 );
SE023 = playSeVer2( spep_0 + 420, 1111, "",spep_0 + 444, 2, 6, -1);
setSeVolumeByWorkId( spep_0 + 420, SE023, 120 );
setStartTimeMs( SE023,  500 );
setPitch( spep_0 + 420, SE023, 200 );
setTimeStretch( SE023, 1.13, 30, 4 );
setBandpassFilter( spep_0 + 420, SE023, 246, 24000 );
SE024 = playSeVer2( spep_0 + 392, 1107, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 428, 1192, "",spep_0 + 444, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 428, SE025, 120 );
setPitch( spep_0 + 428, SE025, 400 );
setTimeStretch( SE025, 1.27, 30, 4 );
SE026 = playSeVer2( spep_0 + 430, 1107, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 460, 1111, "",spep_0 + 478, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 460, SE027, 120 );
setPitch( spep_0 + 460, SE027, 200 );
setTimeStretch( SE027, 1.13, 30, 4 );
setBandpassFilter( spep_0 + 460, SE027, 246, 24000 );
SE028 = playSeVer2( spep_0 + 462, 1192, "",spep_0 + 478, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 462, SE028, 120 );
setPitch( spep_0 + 462, SE028, 200 );
setTimeStretch( SE028, 1.13, 30, 4 );
SE029 = playSeVer2( spep_0 + 464, 1107, "", 0, 0, 0, -1);

--ベジータくる
SE030 = playSeVer2( spep_0 + 506, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 506, SE030, 155 );
SE031 = playSeVer2( spep_0 + 512, 1192, "",spep_0 + 534, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 512, SE031, 184 );
SE032 = playSeVer2( spep_0 + 512, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 512, SE032, 168 );

--カメラパンアップ
SE033 = playSeVer2( spep_0 + 544, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 544, SE033, 82 );
setPitch( spep_0 + 544, SE033, -400 );
setTimeStretch( SE033, 0.73, 30, 4 );

--セリフカットイン
SE034 = playSeVer2( spep_0 + 570, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 570, SE034, 71 );

--悟空金髪に
SE035 = playSeVer2( spep_0 + 746, 1264, "",spep_0 + 848, 8, 56, -1);
setSeVolumeByWorkId( spep_0 + 746, SE035, 85 );
setStartTimeMs( SE035,  750 );
SE036 = playSeVer2( spep_0 + 720, 1148, "",spep_0 + 820, 56, 14, -1);
SE037 = playSeVer2( spep_0 + 730, 1259, "",spep_0 + 840, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 730, SE037, 60 );
SE038 = playSeVer2( spep_0 + 748, 1307, "",spep_0 + 850, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 748, SE038, 166 );
SE039 = playSeVer2( spep_0 + 748, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 748, SE039, 46 );

--悟空ゴッドになる
SE040 = playSeVer2( spep_0 + 790, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 790, SE040, 132 );
setPitch( spep_0 + 790, SE040, -600 );
setTimeStretch( SE040, 0.6, 30, 4 );
SE041 = playSeVer2( spep_0 + 792, 1268, "",spep_0 + 880, 12, 44, -1);
setSeVolumeByWorkId( spep_0 + 792, SE041, 320 );
SE042 = playSeVer2( spep_0 + 792, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 792, SE042, 26 );
SE043 = playSeVer2( spep_0 + 792, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 792, SE043, 65 );

--オーラ
SE044 = playSeVer2( spep_0 + 830, 1181, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 830, SE044, 153 );

--ベジータゴッドになる
SE045 = playSeVer2( spep_0 + 910, 1268, "",spep_0 + 1076, 10, 46, -1);
setSeVolumeByWorkId( spep_0 + 910, SE045, 347 );
SE046 = playSeVer2( spep_0 + 910, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 910, SE046, 50 );
SE047 = playSeVer2( spep_0 + 910, 1188, "",spep_0 + 998, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 910, SE047, 77 );

--カメラ遷移
SE048 = playSeVer2( spep_0 + 1030, 1072, "", 0, 0, 0, -1);

--最後決め
SE049 = playSeVer2( spep_0 + 1066, 1268, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_0 + 1066, 1062, "", 0, 0, 0, -1);
setPitch( spep_0 + 1066, SE050, -400 );
setTimeStretch( SE050, 0.73, 30, 4 );
SE051 = playSeVer2( spep_0 + 1066, 1068, "", 0, 0, 0, -1);

--ボイス
--そろそろオラとやろうぜ
playVoice( spep_0 + 36, 348 );
setVoiceVolume( spep_0 + 36, 348, 100 );

--「うん」「ふん！」のような息遣いいくつか
playVoice( spep_0 + 200, 349 );
setVoiceVolume( spep_0 + 200, 349, 100 );

--一対一にこだわってる場合じゃないだろう！
playVoice( spep_0 + 554, 350 );
setVoiceVolume( spep_0 + 554, 350, 100 );

--ふん…！
playVoice( spep_0 + 786, 351 );
setVoiceVolume( spep_0 + 786, 351, 184 );

--ふん…！
playVoice( spep_0 + 906, 352 );
setVoiceVolume( spep_0 + 906, 352, 162 );

endPhase( spep_0 + 1178 );
else end