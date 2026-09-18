--1021670:伝説の超サイヤ人ブロリー_狂戦士の破壊衝動（アクティブバフ）_bs0015
--sp_effect_b4_00184

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
SP_01 = 157013;

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
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
active = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, active, 0, 0, 0 );
setEffMoveKey( spep_0 + 784, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 784, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 784, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 784, active, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_0 -3 + 12,  10058, 16, 0x100, -1, 0, 133.1, 214.4 ); --ズォッ
setEffMoveKey( spep_0 -3 + 12, ctzuo, 133.1, 214.4 , 0 );
setEffMoveKey( spep_0 -3 + 14, ctzuo, 150.5, 242.3 , 0 );
setEffMoveKey( spep_0 -3 + 16, ctzuo, 154, 249.5 , 0 );
setEffMoveKey( spep_0 -3 + 18, ctzuo, 157.6, 256.6 , 0 );
setEffMoveKey( spep_0 -3 + 20, ctzuo, 161.1, 263.7 , 0 );
setEffMoveKey( spep_0 -3 + 22, ctzuo, 164.6, 270.9 , 0 );
setEffMoveKey( spep_0 -3 + 24, ctzuo, 168.9, 279.5 , 0 );
setEffMoveKey( spep_0 -3 + 26, ctzuo, 173.3, 288.2 , 0 );
setEffMoveKey( spep_0 -3 + 28, ctzuo, 177.6, 296.9 , 0 );

setEffScaleKey( spep_0 -3 + 12, ctzuo, 1.148, 1.148 );
setEffScaleKey( spep_0 -3 + 14, ctzuo, 1.253, 1.253 );
setEffScaleKey( spep_0 -3 + 16, ctzuo, 1.267, 1.267 );
setEffScaleKey( spep_0 -3 + 18, ctzuo, 1.288, 1.288 );
setEffScaleKey( spep_0 -3 + 20, ctzuo, 1.302, 1.302 );
setEffScaleKey( spep_0 -3 + 22, ctzuo, 1.323, 1.323 );
setEffScaleKey( spep_0 -3 + 24, ctzuo, 1.337, 1.337 );
setEffScaleKey( spep_0 -3 + 26, ctzuo, 1.351, 1.351 );
setEffScaleKey( spep_0 -3 + 28, ctzuo, 1.365, 1.365 );

setEffRotateKey( spep_0 -3 + 12, ctzuo, 6.1 );
setEffRotateKey( spep_0 -3 + 28, ctzuo, 6.1 );

setEffAlphaKey( spep_0 -3 + 12, ctzuo, 128 );
setEffAlphaKey( spep_0 -3 + 14, ctzuo, 255 );
setEffAlphaKey( spep_0 -3 + 22, ctzuo, 255 );
setEffAlphaKey( spep_0 -3 + 24, ctzuo, 170 );
setEffAlphaKey( spep_0 -3 + 26, ctzuo, 85 );
setEffAlphaKey( spep_0 -3 + 28, ctzuo, 0 );

ctsyun = entryEffectLife( spep_0 -3 + 32,  10011, 20, 0x100, -1, 0, -26, -242.5 ); --シュン
setEffMoveKey( spep_0 -3 + 32, ctsyun, -26, -242.5 , 0 );
setEffMoveKey( spep_0 -3 + 34, ctsyun, -31.7, -236.7 , 0 );
setEffMoveKey( spep_0 -3 + 36, ctsyun, -35.2, -233.2 , 0 );
setEffMoveKey( spep_0 -3 + 38, ctsyun, -36.4, -232.1 , 0 );
setEffMoveKey( spep_0 -3 + 40, ctsyun, -44.2, -224.6 , 0 );
setEffMoveKey( spep_0 -3 + 42, ctsyun, -49.9, -219.2 , 0 );
setEffMoveKey( spep_0 -3 + 44, ctsyun, -53.2, -216 , 0 );
setEffMoveKey( spep_0 -3 + 46, ctsyun, -54.4, -214.9 , 0 );
setEffMoveKey( spep_0 -3 + 48, ctsyun, -56, -213.2 , 0 );
setEffMoveKey( spep_0 -3 + 50, ctsyun, -60.8, -208.1 , 0 );
setEffMoveKey( spep_0 -3 + 52, ctsyun, -68.8, -199.6 , 0 );

setEffScaleKey( spep_0 -3 + 32, ctsyun, 1.9800000000000002, 1.9800000000000002 );
setEffScaleKey( spep_0 -3 + 34, ctsyun, 2.068, 2.068 );
setEffScaleKey( spep_0 -3 + 36, ctsyun, 2.112, 2.112 );
setEffScaleKey( spep_0 -3 + 38, ctsyun, 2.134, 2.134 );
setEffScaleKey( spep_0 -3 + 40, ctsyun, 2.244, 2.244 );
setEffScaleKey( spep_0 -3 + 42, ctsyun, 2.3320000000000003, 2.3320000000000003 );
setEffScaleKey( spep_0 -3 + 44, ctsyun, 2.3760000000000003, 2.3760000000000003 );
setEffScaleKey( spep_0 -3 + 46, ctsyun, 2.3980000000000006, 2.3980000000000006 );
setEffScaleKey( spep_0 -3 + 48, ctsyun, 2.4200000000000004, 2.4200000000000004 );
setEffScaleKey( spep_0 -3 + 50, ctsyun, 2.4970000000000003, 2.4970000000000003 );
setEffScaleKey( spep_0 -3 + 52, ctsyun, 2.618, 2.618 );

setEffRotateKey( spep_0 -3 + 32, ctsyun, 0 );
setEffRotateKey( spep_0 -3 + 52, ctsyun, 0 );

setEffAlphaKey( spep_0 -3 + 32, ctsyun, 112 );
setEffAlphaKey( spep_0 -3 + 34, ctsyun, 191 );
setEffAlphaKey( spep_0 -3 + 36, ctsyun, 239 );
setEffAlphaKey( spep_0 -3 + 38, ctsyun, 255 );
setEffAlphaKey( spep_0 -3 + 46, ctsyun, 255 );
setEffAlphaKey( spep_0 -3 + 48, ctsyun, 230 );
setEffAlphaKey( spep_0 -3 + 50, ctsyun, 153 );
setEffAlphaKey( spep_0 -3 + 52, ctsyun, 26 );


-------------------------------------------
--SE
-------------------------------------------

--腕振り被り
SE001 = playSe( spep_0 + 0, 1116 );
stopSe( spep_0 + 26, SE001, 22 );

--腕振り被り
SE002 = playSe( spep_0 + 6, 1179 );
stopSe( spep_0 + 32, SE002, 18 );
setPitch( spep_0 + 6, SE002, -400 );
setTimeStretch( SE002, 0.73, 10, 1 );

--気弾投げる
SE003 = playSe( spep_0 + 38, 1145 );
setSeVolumeByWorkId( spep_0 + 38, SE003, 20 );
setSeVolumeByWorkId( spep_0 + 39, SE003, 40 );
setSeVolumeByWorkId( spep_0 + 40, SE003, 60 );
setSeVolumeByWorkId( spep_0 + 41, SE003, 80 );
setSeVolumeByWorkId( spep_0 + 42, SE003, 100 );
stopSe( spep_0 + 136, SE003, 18 );
setStartTimeMs( SE003,  533 );
setPitch( spep_0 + 38, SE003, 500 );
setTimeStretch( SE003, 1.33, 10, 1 );

--気弾投げる
SE004 = playSe( spep_0 + 36, 1027 );
setSeVolumeByWorkId( spep_0 + 36, SE004, 57 );

--気弾投げる
SE005 = playSe( spep_0 + 36, 1155 );
setPitch( spep_0 + 36, SE005, 300 );
setTimeStretch( SE005, 1.2, 10, 1 );

--気弾投げる
SE006 = playSe( spep_0 + 36, 1021 );

--地面着弾
SE007 = playSe( spep_0 + 66, 1188 );
stopSe( spep_0 + 140, SE007, 18 );

--地面着弾
SE008 = playSe( spep_0 + 66, 1014 );
stopSe( spep_0 + 140, SE008, 18 );

--建物奥爆発
SE009 = playSe( spep_0 + 82, 1023 );
setSeVolumeByWorkId( spep_0 + 82, SE009, 100 );

--建物奥爆発
SE010 = playSe( spep_0 + 86, 1024 );

--建物奥爆発
SE011 = playSe( spep_0 + 90, 1060 );
setSeVolumeByWorkId( spep_0 + 90, SE011, 112 );

--地響き
SE012 = playSe( spep_0 + 98, 1044 );
setSeVolumeByWorkId( spep_0 + 98, SE012, 18 );
setSeVolumeByWorkId( spep_0 + 104, SE012, 36 );
setSeVolumeByWorkId( spep_0 + 110, SE012, 54 );
setSeVolumeByWorkId( spep_0 + 116, SE012, 72 );
setSeVolumeByWorkId( spep_0 + 122, SE012, 90 );
setSeVolumeByWorkId( spep_0 + 128, SE012, 108 );
setSeVolumeByWorkId( spep_0 + 134, SE012, 126 );
setSeVolumeByWorkId( spep_0 + 140, SE012, 144 );
setSeVolumeByWorkId( spep_0 + 146, SE012, 162 );
setSeVolumeByWorkId( spep_0 + 152, SE012, 180 );
setSeVolumeByWorkId( spep_0 + 158, SE012, 190 );
setSeVolumeByWorkId( spep_0 + 164, SE012, 198 );
setSeVolumeByWorkId( spep_0 + 166, SE012, 200 );
stopSe( spep_0 + 220, SE012, 78 );
setStartTimeMs( SE012,  100 );

--建物前爆発
SE013 = playSe( spep_0 + 160, 1159 );
setSeVolumeByWorkId( spep_0 + 160, SE013, 68 );

--建物前爆発
SE014 = playSe( spep_0 + 164, 1068 );
setSeVolumeByWorkId( spep_0 + 164, SE014, 80 );

--建物前爆発
SE015 = playSe( spep_0 + 178, 1067 );

--建物前爆発
SE016 = playSe( spep_0 + 192, 1023 );
setSeVolumeByWorkId( spep_0 + 192, SE016, 100 );

--環境音
SE017 = playSe( spep_0 + 260, 1175 );
setSeVolumeByWorkId( spep_0 + 260, SE017, 2 );
setSeVolumeByWorkId( spep_0 + 272, SE017, 4 );
setSeVolumeByWorkId( spep_0 + 284, SE017, 6 );
setSeVolumeByWorkId( spep_0 + 296, SE017, 8 );
setSeVolumeByWorkId( spep_0 + 306, SE017, 10 );
setTimeStretch( SE017, 1.11, 10, 1 );

--セリフカットイン
SE018 = playSe( spep_0 + 414, 1018 );

--ラスト決め
SE019 = playSe( spep_0 + 656, 1024 );
setSeVolumeByWorkId( spep_0 + 656, SE019, 65 );

--ラスト決め
SE020 = playSe( spep_0 + 656, 1068 );
setSeVolumeByWorkId( spep_0 + 656, SE020, 72 );

---------------------------------------------
----ボイス
---------------------------------------------

--ハハハハ！
playVoice( spep_0 + 240, 238 );
setVoiceVolume( spep_0 + 240, 238, 95 );

--お前たちが闘う意思を見せなければ、オレはこの星を破壊しつくすだけだ…！
playVoice( spep_0 + 400, 239 );
setVoiceVolume( spep_0 + 400, 239, 90 );


entryFade( spep_0 + 784 -30, 10, 30, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_0 +784 );
else end