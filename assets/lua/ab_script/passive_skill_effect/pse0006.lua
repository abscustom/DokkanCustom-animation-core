--1023980:魔人ベジータ_登場時演出
--sp_effect_b4_00218

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
SP_01 = 159230;--戦闘前演出

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.85);

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--冒頭～着弾～構え
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 1586, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1586, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 1586, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 1586, eff, 255 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );

--ベジータ振り向く
SE002 = playSeVer2( spep_0 + 406, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 406, SE002, 68 );
setBandpassFilter	( spep_0 + 406, SE002, 24, 500 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 458, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 458, SE003, 40 );

--ベジータ踏み出す
SE004 = playSeVer2( spep_0 + 596, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 596, SE004, 138 );

--トランクス掴む
SE005 = playSeVer2( spep_0 + 620, 1333, "",spep_0 + 638, 0, 8, -1);

--トランクス抱き寄せる
SE006 = playSeVer2( spep_0 + 650, 1333, "",spep_0 + 682, 4, 8, -1);
setStartTimeMs( SE006,  450 );
SE007 = playSeVer2( spep_0 + 648, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 648, SE007, 60 );

--トランクス上を向く
SE008 = playSeVer2( spep_0 + 1186, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1186, SE008, 81 );

--手刀ヒット
SE009 = playSeVer2( spep_0 + 1250, 1000, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 1250, 1006, "", 0, 0, 0, -1);

--トランクス倒れる
SE011 = playSeVer2( spep_0 + 1334, 1332, "",spep_0 + 1370, 0, 10, -1);
SE012 = playSeVer2( spep_0 + 1340, 1012, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 1340, 1192, "", 0, 0, 0, -1);

--拳握る
SE014 = playSeVer2( spep_0 + 1402, 1330, "",spep_0 + 1424, 0, 4, -1);
SE015 = playSeVer2( spep_0 + 1416, 1233, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 1426, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1426, SE016, 79 );
setPitch( spep_0 + 1426, SE016, -600 );
setTimeStretch( SE016, 0.6, 30, 4 );

--ラスト決め
SE017 = playSeVer2( spep_0 + 1442, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1442, SE017, 72 );

--ボイス
--トランクス…
playVoice( spep_0 + 11, 400 );
setVoiceVolume( spep_0 + 11, 400, 100 );

--おまえは赤ん坊の頃からいちども／抱いてやったことがなかったな…／抱かせてくれ…
playVoice( spep_0 + 97, 401 );
setVoiceVolume( spep_0 + 97, 401, 100 );

--なっ、なんだよパパ…！／やめてよ、はずかしいよ……！！
playVoice( spep_0 + 663, 402 );
setVoiceVolume( spep_0 + 663, 402, 100 );

--元気でな…トランクス…
playVoice( spep_0 + 1051, 403 );
setVoiceVolume( spep_0 + 1051, 403, 100 );

--うっ…！
playVoice( spep_0 + 1256, 404 );
setVoiceVolume( spep_0 + 1256, 404, 100 );

endPhase( spep_0 + 1586 );
else end