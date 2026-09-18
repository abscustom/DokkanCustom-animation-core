--1023490:魔人ブウ(純粋)_邪悪な雄叫び_bs0029
--battle_301223

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
SP_01 = 3147;

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
setEffMoveKey( spep_0 + 710, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 710, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 710, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 710, active, 255 );

-------------------------------------------
--SE
-------------------------------------------
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--ピク
SE003 = playSeVer2( spep_0 + 88, 1113, "", 0, 0, 0, -1);

--叫ぶ
SE004 = playSeVer2( spep_0 + 148, 1018, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 148, 1232, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 148, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE006, 68 );

--ドラミング
SE007 = playSeVer2( spep_0 + 258, 1352, "",spep_0 + 268, 0, 4, -1);
SE008 = playSeVer2( spep_0 + 258, 1352, "",spep_0 + 282, 0, 10, -1);
SE009 = playSeVer2( spep_0 + 278, 1352, "",spep_0 + 286, 0, 2, -1);
SE010 = playSeVer2( spep_0 + 279, 1352, "",spep_0 + 302, 0, 10, -1);
SE011 = playSeVer2( spep_0 + 296, 1352, "",spep_0 + 304, 0, 2, -1);
SE012 = playSeVer2( spep_0 + 296, 1352, "",spep_0 + 318, 0, 10, -1);
SE013 = playSeVer2( spep_0 + 312, 1352, "",spep_0 + 320, 0, 2, -1);
SE014 = playSeVer2( spep_0 + 312, 1352, "",spep_0 + 334, 0, 8, -1);
SE015 = playSeVer2( spep_0 + 332, 1352, "",spep_0 + 340, 0, 2, -1);
SE016 = playSeVer2( spep_0 + 332, 1352, "",spep_0 + 354, 0, 8, -1);
SE017 = playSeVer2( spep_0 + 348, 1352, "",spep_0 + 356, 0, 2, -1);
SE018 = playSeVer2( spep_0 + 348, 1352, "",spep_0 + 370, 0, 8, -1);
SE019 = playSeVer2( spep_0 + 364, 1352, "",spep_0 + 372, 0, 2, -1);
SE020 = playSeVer2( spep_0 + 364, 1352, "",spep_0 + 386, 0, 8, -1);
SE021 = playSeVer2( spep_0 + 382, 1352, "",spep_0 + 390, 0, 2, -1);
SE022 = playSeVer2( spep_0 + 382, 1352, "",spep_0 + 404, 0, 8, -1);
SE023 = playSeVer2( spep_0 + 400, 1352, "",spep_0 + 408, 0, 2, -1);
SE024 = playSeVer2( spep_0 + 400, 1352, "",spep_0 + 422, 0, 8, -1);
SE025 = playSeVer2( spep_0 + 418, 1352, "",spep_0 + 426, 0, 2, -1);
SE026 = playSeVer2( spep_0 + 418, 1352, "",spep_0 + 440, 0, 8, -1);
SE028 = playSeVer2( spep_0 + 436, 1352, "",spep_0 + 444, 0, 2, -1);
SE029 = playSeVer2( spep_0 + 436, 1352, "",spep_0 + 458, 0, 10, -1);

--画面遷移
SE027 = playSeVer2( spep_0 + 418, 1072, "", 0, 0, 0, -1);

--最後決め
SE030 = playSeVer2( spep_0 + 580, 1068, "",spep_0 + 670, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 580, SE030, 64 );
SE031 = playSeVer2( spep_0 + 580, 19, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 580, SE031, 65 );


---------------------------------------------
----ボイス
---------------------------------------------
--ホォー！ウホウホウオッホホホー！
playVoice( spep_0 + 140, 391 );
setVoiceVolume( spep_0 + 140, 391, 100 );

--ハアアア!!
playVoice( spep_0 + 459, 392 );
setVoiceVolume( spep_0 + 459, 392, 119 );

--ギッ！
playVoice( spep_0 + 582, 393 );
setVoiceVolume( spep_0 + 582, 393, 119 );

--entryFade( spep_0 + 692 -38, 14, 38, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_0 + 700 );

else end