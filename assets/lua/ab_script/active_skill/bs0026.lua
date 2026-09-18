--1023360:人造人間17号(未来)&18号(未来)_地獄のゲーム(アクティブスキル)
--sp_effect_b4_00207

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
SP_01 = 158667;--倒れた車の上に立つ18号
SP_02 = 158668;--建物の上に立つ17号

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
-- 倒れた車の上に立つ18号
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
car = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, car, 0, 0, 0 );
setEffMoveKey( spep_0 + 244, car, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, car, 1.0, 1.0 );
setEffScaleKey( spep_0 + 244, car, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, car, 0 );
setEffRotateKey( spep_0 + 244, car, 0 );
setEffAlphaKey( spep_0 + 0, car, 255 );
setEffAlphaKey( spep_0 + 244, car, 255 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "",spep_0 + 60, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );
setPitch( spep_0 + 0, SE001, -600 );
setTimeStretch( SE001, 0.6, 30, 4 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 24 );
setPitch( spep_0 + 0, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );

--セリフカットイン
SE003 = playSeVer2( spep_0 -6 + 30, 1018, "", 0, 0, 0, -1);

--車の上歩く
SE004 = playSeVer2( spep_0 -6 + 32, 1218, "",spep_0 -6 + 66, 0, 14, -1);
setSeVolumeByWorkId( spep_0 -6 + 32, SE004, 351 );
setPitch( spep_0 -6 + 32, SE004, -1200 );
setTimeStretch( SE004, 0.2, 30, 4 );
SE005 = playSeVer2( spep_0 -6 + 38, 1293, "",spep_0 -6 + 66, 0, 12, -1);
SE006 = playSeVer2( spep_0 -6 + 58, 1220, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 -6 + 58, SE006, 86 );
setPitch( spep_0 -6 + 58, SE006, -600 );
setTimeStretch( SE006, 0.6, 30, 4 );
SE007 = playSeVer2( spep_0 -6 + 58, 1293, "",spep_0 -6 + 84, 0, 12, -1);
setPitch( spep_0 -6 + 58, SE007, -500 );
setTimeStretch( SE007, 0.67, 30, 4 );

--ジャンプ
SE008 = playSeVer2( spep_0 + 86, 1207, "",spep_0 + 132, 6, 26, -1);
setStartTimeMs( SE008,  317 );
setPitch( spep_0 + 84, SE008, 200 );
setTimeStretch( SE008, 1.13, 30, 4 );

--着地
SE009 = playSeVer2( spep_0 + 124, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 124, SE009, 269 );

--ボイス
--もう一気に終わらせちゃおうよ17号
playVoice( spep_0 + 22, 335 );
setVoiceVolume( spep_0 + 22, 335, 100 );

--次の準備
spep_1=spep_0+244;
------------------------------------------------------
-- 建物の上に立つ17号
------------------------------------------------------
-- ** エフェクト等 ** --
building = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, building, 0, 0, 0 );
setEffMoveKey( spep_1 + 668, building, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, building, 1.0, 1.0 );
setEffScaleKey( spep_1 + 668, building, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, building, 0 );
setEffRotateKey( spep_1 + 668, building, 0 );
setEffAlphaKey( spep_1 + 0, building, 255 );
setEffAlphaKey( spep_1 + 668, building, 255 );

--SE
--17号切り替わり
SE010 = playSeVer2( spep_1 + 0 -16, 1072, "", 0, 8, 0, -1);
setStartTimeMs( SE010,  300 );

--セリフカットイン
SE011 = playSeVer2( spep_1 + 26, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 26, SE011, 80 );
setPitch( spep_1 + 40, SE011, -400 );
setTimeStretch( SE011, 0.73, 30, 4 );

--17号振り返る
SE012 = playSeVer2( spep_1 + 118, 1003, "", 0, 0, 0, -1);
setPitch( spep_1 + 118, SE012, -600 );
setTimeStretch( SE012, 0.6, 30, 4 );

--決め
SE013 = playSeVer2( spep_1 + 248, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 248, SE013, 91 );
SE014 = playSeVer2( spep_1 + 262, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 262, SE014, 79 );

--ボイス
--慌てるなよ　もっとじっくりやろうぜ　
playVoice( spep_1 + 20, 336 );
setVoiceVolume( spep_1 + 20, 336, 100 );

--あっさり全滅させてしまったんじゃあ　オレたちの楽しみは無くなってしまうんだぞ
playVoice( spep_1 + 268, 337 );
setVoiceVolume( spep_1 + 268, 337, 100 );

endPhase( spep_1 + 658 );
else end