--4022950:クリリン&孫悟飯(幼年期)_気を開放しろ！！(服装違い)
--battle_301218

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
SP_01 = 3144;

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
setEffMoveKey( spep_0 + 568, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 568, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 568, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 568, active, 255 );


-------------------------------------------
--SE
-------------------------------------------
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 16 );
SE002 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 16 );

--入り
SE003 = playSeVer2( spep_0 + 6, 44, "",spep_0 + 70, 14, 30, -1);

--セリフカットイン
SE004 = playSeVer2( spep_0 + 30, 1018, "", 0, 0, 0, -1);

--クリリンアップ
SE005 = playSeVer2( spep_0 + 242, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE005, 68 );
SE006 = playSeVer2( spep_0 + 242, 1264, "",spep_0 + 368, 0, 78, -1);
setSeVolumeByWorkId( spep_0 + 242, SE006, 71 );

--気を溜める
SE008 = playSeVer2( spep_0 + 306, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 306, SE008, 56 );
SE009 = playSeVer2( spep_0 + 306, 1231, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 312, 1200, "",spep_0 + 414, 8, 34, -1);
setSeVolumeByWorkId( spep_0 + 312, SE007, 251 );

--オーラ
SE010 = playSeVer2( spep_0 + 330, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE010, 71 );

--画面遷移
SE011 = playSeVer2( spep_0 + 340, 1072, "", 0, 0, 0, -1);

--オーラ
SE012 = playSeVer2( spep_0 + 354, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 354, SE012, 71 );

--二人気合入れ
SE013 = playSeVer2( spep_0 + 404, 1200, "",spep_0 + 576, 6, 66, -1);
setSeVolumeByWorkId( spep_0 + 404, SE013, 251 );
SE014 = playSeVer2( spep_0 + 406, 1035, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 406, 1267, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 406, SE015, 71 );
SE016 = playSeVer2( spep_0 + 406, 1024, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 406, 1044, "", 0, 0, 0, -1);

--オーラ
SE018 = playSeVer2( spep_0 + 422, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 422, SE018, 63 );
SE019 = playSeVer2( spep_0 + 446, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 446, SE019, 63 );
SE020 = playSeVer2( spep_0 + 470, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 470, SE020, 63 );
SE021 = playSeVer2( spep_0 + 494, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 494, SE021, 63 );
SE022 = playSeVer2( spep_0 + 518, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 518, SE022, 63 );
SE023 = playSeVer2( spep_0 + 542, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 542, SE023, 63 );
---------------------------------------------
----ボイス
---------------------------------------------
--悟飯……
playVoice( spep_0 + 20, 304 );
setVoiceVolume( spep_0 + 20, 304, 100 );

--はいっ！！！
playVoice( spep_0 + 92, 305 );
setVoiceVolume( spep_0 + 92, 305, 100 );

--よし...いくぞ...
playVoice( spep_0 + 152, 306 );
setVoiceVolume( spep_0 + 152, 306, 100 );

--気を開放しろ！
playVoice( spep_0 + 288, 330 );
setVoiceVolume( spep_0 + 288, 330, 100 );

--entryFade( spep_0 + 692 -38, 14, 38, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_0 + 558 );

else end