--1026480：URケール(暴走)_変身(アクティブ)
--sp_effect_b4_00281
--tf0059

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
SP_01 = 161710;	 --アクティブ変身	ef_001_u

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

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

-------------------------------------------------
-- 変身演出
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 1804, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 1804, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 1804, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 1804, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 1804 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE001_02 = playSeVer2( spep_0 + 1300, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1300, SE001_02, 25 );

--走り寄る
SE002 = playSeVer2( spep_0 + 10, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE002, 155 );
SE003 = playSeVer2( spep_0 + 18, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 151 );

--手あげる
SE004 = playSeVer2( spep_0 + 50, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE004, 65 );
setBandpassFilter( spep_0 + 50, SE004, 500, 24000 );

--手握る
SE005 = playSeVer2( spep_0 + 140, 1344, "",spep_0 + 202, 0, 18, -1);
SE006 = playSeVer2( spep_0 + 146, 1233, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 154, 1006, "", 0, 0, 0, -1);

--地面えぐれる
SE008 = playSeVer2( spep_0 + 198, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE008, 119 );
SE009 = playSeVer2( spep_0 + 200, 1159, "",spep_0 + 328, 0, 82, -1);
setSeVolumeByWorkId( spep_0 + 200, SE009, 88 );
SE010 = playSeVer2( spep_0 + 204, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE010, 80 );

--力む
SE011 = playSeVer2( spep_0 + 250, 1330, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 330, 1344, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 446, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 446, SE013, 68 );
setPitch( spep_0 + 446, SE013, -600 );
setTimeStretch( SE013, 0.6, 30, 4 );

--画面遷移
SE014 = playSeVer2( spep_0 + 574, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 574, SE014, 65 );
SE015 = playSeVer2( spep_0 + 836, 1072, "", 0, 0, 0, -1);

--ケール元に戻る
SE016 = playSeVer2( spep_0 + 1044, 1263, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 1058, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1058, SE017, 50 );
setPitch( spep_0 + 1058, SE017, 500 );
setTimeStretch( SE017, 1.33, 30, 4 );
SE018 = playSeVer2( spep_0 + 1058, 46, "", 0, 0, 0, -1);

--気立ち上がる
SE019 = playSeVer2( spep_0 + 1176, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1176, SE019, 74 );
SE020 = playSeVer2( spep_0 + 1176, 1161, "",spep_0 + 1336, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 1176, SE020, 88 );
SE021 = playSeVer2( spep_0 + 1176, 1267, "",spep_0 + 1336, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 1176, SE021, 130 );
SE022 = playSeVer2( spep_0 + 1176, 1176, "",spep_0 + 1336, 0, 32, -1);

--目線カットイン
SE023 = playSeVer2( spep_0 + 1186, 1018, "", 0, 0, 0, -1);

--気収まる
SE024 = playSeVer2( spep_0 + 1300, 1117, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 1300, 1116, "",spep_0 + 1360, 0, 36, -1);

--腕おろす
SE026 = playSeVer2( spep_0 + 1450, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1450, SE026, 63 );

--構える
SE027 = playSeVer2( spep_0 + 1500, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1500, SE027, 77 );

--気ダメ
SE028 = playSeVer2( spep_0 + 1650, 1035, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 1650, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1650, SE029, 75 );
SE030 = playSeVer2( spep_0 + 1656, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1656, SE030, 84 );
SE031 = playSeVer2( spep_0 + 1664, 1147, "", 0, 0, 0, -1);

--アップ決め
SE032 = playSeVer2( spep_0 + 1714, 1062, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 1714, 20, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「限界超えて我を忘れるくらい力を絞り出してくれたんだな」
playVoice( spep_0 + 239, 617 );
setVoiceVolume( spep_0 + 239, 617, 120 );

--「さすが私の妹分だ」
playVoice( spep_0 + 674, 618 );
setVoiceVolume( spep_0 + 674, 618, 120 );

--「あねさん…」
playVoice( spep_0 + 872, 614 );
setVoiceVolume( spep_0 + 872, 614, 120 );

--「おまたせしました、あねさん！」
playVoice( spep_0 + 1270, 615 );
setVoiceVolume( spep_0 + 1270, 615, 120 );

--「強くなった私を見てください！」
playVoice( spep_0 + 1514, 616 );
setVoiceVolume( spep_0 + 1514, 616, 120 );

endPhase( spep_0 + 1804 );
else end