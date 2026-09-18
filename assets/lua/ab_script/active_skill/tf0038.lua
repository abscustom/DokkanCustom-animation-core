--1023420:超サイヤ人孫悟飯(未来)&トランクス(少年期)(未来)/超サイヤ人孫悟飯(未来)_アクティブ交代
--sp_effect_a9_00089

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
SP_01 = 158778;--交代演出一連

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
-- 交代演出一連
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 1330, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1330, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 1330, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 1330, eff, 255 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 50 );
SE003 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 + 24, SE003, 50 );

--セリフカットイン
SE004 = playSeVer2( spep_0 + 32, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE004, 63 );

--オーラ
SE005 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 50 );
SE006 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE006, 50 );
SE007 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE007, 50 );
SE008 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE008, 50 );
SE009 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE009, 50 );
SE010 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE010, 50 );
SE011 = playSeVer2( spep_0 + 192, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE011, 50 );
SE012 = playSeVer2( spep_0 + 216, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE012, 50 );

--オーラ2
SE013 = playSeVer2( spep_0 + 238, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE013, 16 );

--トランクスセリフ
SE014 = playSeVer2( spep_0 + 238, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE014, 79 );

--オーラ2
SE015 = playSeVer2( spep_0 + 262, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 262, SE015, 16 );
SE016 = playSeVer2( spep_0 + 286, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 286, SE016, 16 );

--トランクス構える
SE017 = playSeVer2( spep_0 + 292, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE017, 67 );

--オーラ2
SE018 = playSeVer2( spep_0 + 310, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 310, SE018, 16 );

--トランクス構える
SE019 = playSeVer2( spep_0 + 304, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 304, SE019, 62 );

--オーラ2
SE020 = playSeVer2( spep_0 + 334, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 334, SE020, 16 );
SE021 = playSeVer2( spep_0 + 358, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 358, SE021, 16 );
SE022 = playSeVer2( spep_0 + 382, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 382, SE022, 16 );
SE023 = playSeVer2( spep_0 + 406, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 406, SE023, 16 );
SE024 = playSeVer2( spep_0 + 430, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 430, SE024, 16 );
SE025 = playSeVer2( spep_0 + 454, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 454, SE025, 16 );
SE026 = playSeVer2( spep_0 + 478, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 478, SE026, 16 );
SE027 = playSeVer2( spep_0 + 502, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 502, SE027, 16 );

--目線カットイン
SE028 = playSeVer2( spep_0 + 504, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 504, SE028, 79 );

--オーラ2
SE029 = playSeVer2( spep_0 + 526, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 526, SE029, 16 );
SE030 = playSeVer2( spep_0 + 550, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 550, SE030, 16 );
SE031 = playSeVer2( spep_0 + 574, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 574, SE031, 16 );

--オーラ3
SE032 = playSeVer2( spep_0 + 598, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 598, SE032, 40 );
SE033 = playSeVer2( spep_0 + 622, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 622, SE033, 40 );
SE034 = playSeVer2( spep_0 + 646, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 646, SE034, 40 );
SE035 = playSeVer2( spep_0 + 670, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 670, SE035, 40 );
SE036 = playSeVer2( spep_0 + 694, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 694, SE036, 40 );
SE037 = playSeVer2( spep_0 + 718, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 718, SE037, 40 );
SE038 = playSeVer2( spep_0 + 742, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 742, SE038, 40 );
SE039 = playSeVer2( spep_0 + 766, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 766, SE039, 40 );
SE040 = playSeVer2( spep_0 + 790, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 790, SE040, 40 );
SE041 = playSeVer2( spep_0 + 814, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 814, SE041, 40 );
SE042 = playSeVer2( spep_0 + 838, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 838, SE042, 40 );
SE043 = playSeVer2( spep_0 + 862, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 862, SE043, 40 );
SE044 = playSeVer2( spep_0 + 886, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 886, SE044, 40 );
SE045 = playSeVer2( spep_0 + 910, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 910, SE045, 40 );

--前向く
SE046 = playSeVer2( spep_0 + 900, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 900, SE046, 70 );

--オーラ3
SE047 = playSeVer2( spep_0 + 934, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 934, SE047, 40 );
SE048 = playSeVer2( spep_0 + 958, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 958, SE048, 40 );
SE049 = playSeVer2( spep_0 + 982, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 982, SE049, 40 );

--チョップ
SE050 = playSeVer2( spep_0 + 984, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 984, SE050, 87 );
SE051 = playSeVer2( spep_0 + 984, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 984, SE051, 84 );

--オーラ3
SE052 = playSeVer2( spep_0 + 1006, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1006, SE052, 40 );
SE053 = playSeVer2( spep_0 + 1030, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1030, SE053, 40 );
SE054 = playSeVer2( spep_0 + 1054, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1054, SE054, 40 );

--地面に寝かせる
SE055 = playSeVer2( spep_0 + 1056, 1332, "", 0, 0, 0, -1);

--オーラ3
SE056 = playSeVer2( spep_0 + 1078, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1078, SE056, 40 );

--地面に寝かせる
SE057 = playSeVer2( spep_0 + 1076, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1076, SE057, 84 );

--オーラ3
SE058 = playSeVer2( spep_0 + 1102, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1102, SE058, 40 );
SE059 = playSeVer2( spep_0 + 1126, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1126, SE059, 40 );
SE060 = playSeVer2( spep_0 + 1150, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1150, SE060, 40 );
SE061 = playSeVer2( spep_0 + 1174, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1174, SE061, 40 );
SE062 = playSeVer2( spep_0 + 1198, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1198, SE062, 40 );
SE063 = playSeVer2( spep_0 + 1222, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1222, SE063, 40 );
SE064 = playSeVer2( spep_0 + 1246, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1246, SE064, 40 );
SE065 = playSeVer2( spep_0 + 1270, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1270, SE065, 40 );
SE066 = playSeVer2( spep_0 + 1294, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1294, SE066, 40 );
SE067 = playSeVer2( spep_0 + 1318, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1318, SE067, 40 );

--ボイス
--トランクス、キミはここにいるんだ！いいな！
playVoice( spep_0 + 23, 338 );
setVoiceVolume( spep_0 + 23, 338, 100 );

--いやだ！
playVoice( spep_0 + 228, 339 );
setVoiceVolume( spep_0 + 228, 339, 100 );

--もう足手まといにはなりません！ボク…悟飯さんと一緒に闘いたいんです！
playVoice( spep_0 + 275, 340 );
setVoiceVolume( spep_0 + 275, 340, 100 );

--…そうか。分かったトランクス、行くか！
playVoice( spep_0 + 588, 341 );
setVoiceVolume( spep_0 + 588, 341, 100 );

--はいっ！
playVoice( spep_0 + 858, 342 );
setVoiceVolume( spep_0 + 858, 342, 100 );

--うっ…！？
playVoice( spep_0 + 978, 343 );
setVoiceVolume( spep_0 + 978, 343, 100 );

--トランクス、君は最後の希望だ
playVoice( spep_0 + 1115, 344 );
setVoiceVolume( spep_0 + 1115, 344, 100 );

endPhase( spep_0 + 1320 );
else end