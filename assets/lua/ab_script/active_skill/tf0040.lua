--1023460:超サイヤ人2孫悟空_アクティブ変身
--battle_301222

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
SP_01 = 3146;--交代演出一連

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
setEffMoveKey( spep_0 + 868, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 868, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 868, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 868, eff, 255 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );

--画面遷移
SE002 = playSeVer2( spep_0 + 44, 44, "",spep_0 + 90, 14, 20, -1);

--雷
SE003 = playSeVer2( spep_0 + 72, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE003, 150 );
SE004 = playSeVer2( spep_0 + 78, 1342, "",spep_0 + 188, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 78, SE004, 120 );
SE005 = playSeVer2( spep_0 + 78, 1023, "",spep_0 + 184, 0, 72, -1);
SE006 = playSeVer2( spep_0 + 84, 1033, "", 0, 20, 0, -1);

--予備動作
SE007 = playSeVer2( spep_0 + 156, 1333, "", 0, 0, 0, -1);
setPitch( spep_0 + 156, SE007, -800 );
setTimeStretch( SE007, 0.47, 30, 4 );

--気ダメ
SE008 = playSeVer2( spep_0 + 192, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE008, 112 );
SE009 = playSeVer2( spep_0 + 192, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE009, 78 );

--オーラ
SE010 = playSeVer2( spep_0 + 214, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 238, 1036, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 262, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE013 = playSeVer2( spep_0 + 266, 1243, "", spep_0 + 446, 0,20, -1);

--オーラ
SE014 = playSeVer2( spep_0 + 286, 1036, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 310, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE016 = playSeVer2( spep_0 + 326, 1148, "", spep_0 + 446, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 326, SE016, 150 );

--オーラ
SE017 = playSeVer2( spep_0 + 334, 1036, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 358, 1036, "", 0, 0, 0, -1);

--岩爆発
SE019 = playSeVer2( spep_0 + 362, 1258, "",spep_0 + 474, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 362, SE019, 67 );
SE020 = playSeVer2( spep_0 + 364, 1017, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 370, 1159, "",spep_0 + 472, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 370, SE021, 75 );
SE022 = playSeVer2( spep_0 + 370, 1187, "",spep_0 + 436, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 370, SE022, 75 );

--オーラ
SE023 = playSeVer2( spep_0 + 378, 1036, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 402, 1036, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 426, 1036, "", 0, 0, 0, -1);

--気爆発
SE026 = playSeVer2( spep_0 + 452, 1023, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 454, 1068, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 454, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 454, SE028, 170 );
SE029 = playSeVer2( spep_0 + 454, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 454, SE029, 66 );
setPitch( spep_0 + 454, SE029, -600 );
setTimeStretch( SE029, 0.6, 30, 4 );

--オーラ
SE030 = playSeVer2( spep_0 + 460, 1036, "", 0, 0, 0, -1);

--目線カットイン
SE031 = playSeVer2( spep_0 + 456, 1018, "", 0, 0, 0, -1);

--オーラ
SE032 = playSeVer2( spep_0 + 484, 1036, "", 0, 0, 0, -1);

--気に溶ける
SE033 = playSeVer2( spep_0 + 528, 1212, "",spep_0 + 634, 6, 58, -1);
setSeVolumeByWorkId( spep_0 + 528, SE033, 72 );
setStartTimeMs( SE033,  717 );

--オーラ
SE034 = playSeVer2( spep_0 + 508, 1036, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 532, 1036, "", 0, 0, 0, -1);

--気に溶ける
SE036 = playSeVer2( spep_0 + 534, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 534, SE036, 191 );

--オーラ
SE037 = playSeVer2( spep_0 + 556, 1036, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 580, 1036, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 604, 1036, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 628, 1036, "", 0, 0, 0, -1);

--着地
SE041 = playSeVer2( spep_0 + 614, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 614, SE041, 188 );
SE042 = playSeVer2( spep_0 + 618, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 618, SE042, 135 );

--イナヅマ
SE043 = playSeVer2( spep_0 + 620, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 620, SE043, 77 );

--画面遷移
SE044 = playSeVer2( spep_0 + 620, 8, "", 0, 0, 0, -1);

--オーラ
SE045 = playSeVer2( spep_0 + 652, 1036, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 676, 1036, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 700, 1036, "", 0, 0, 0, -1);

--風力音
SE048 = playSeVer2( spep_0 + 694, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 694, SE048, 30 );

--ラスト決め
SE049 = playSeVer2( spep_0 + 698, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 698, SE049, 114 );
SE050 = playSeVer2( spep_0 + 698, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 698, SE050, 79 );

--オーラ
SE051 = playSeVer2( spep_0 + 724, 1036, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_0 + 748, 1036, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_0 + 772, 1036, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_0 + 796, 1036, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 820, 1036, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_0 + 844, 1036, "", 0, 0, 0, -1);

--SE
--はあああーーっ！！
playVoice( spep_0 + 170, 390 );
setVoiceVolume( spep_0 + 170, 390, 95 );

endPhase( spep_0 + 858 );
else end