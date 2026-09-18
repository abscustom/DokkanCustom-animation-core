--1024550:超サイヤ人ゴッドSSベジータ&超サイヤ人トランクス(未来)_登場時演出_pse0010
--battle_301234

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

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
SP_01 = 3163; --登場時演出   ef_001
SP_02 = 3164; --登場時演出 敵がいる時 ef_002
SP_03 = 3165; --登場時演出2  ef_003

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
------------------------------------------------------
-- 登場時演出(196F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 196, 0x100, -1, 0, 0, 0 );  --登場時演出   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 196, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 196, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 196 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 196, first_f, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 4, 1018, "", 0, 0, 0, -1);

--ベジータ腕下ろす
SE003 = playSeVer2( spep_0 + 82, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 82, SE003, 56 );
setBandpassFilter( spep_0 + 82, SE003, 24, 623 );

--風の音
SE004 = playSeVer2( spep_0 + 186, 1175, "",spep_0 + 458, 0, 140, -1);
setSeVolumeByWorkId( spep_0 + 186, SE004, 60 );

-- ** ボイス ** --
--トランクス！この先をみろ！まだ見ぬ敵を！！宇宙最強を！！
playVoice( spep_0 + 0, 447 );
setVoiceVolume( spep_0 + 0, 447, 100 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 196;


------------------------------------------------------
-- 登場時演出 敵がいる時(80F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
effect02 = entryEffectLife( spep_1 + 0, SP_02, 80, 0x80, -1, 0, 0, 0 );  --登場時演出 敵がいる時  ef_002
setEffMoveKey( spep_1 + 0, effect02, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, effect02, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, effect02, 1.0, 1.0 );
setEffScaleKey( spep_1 + 80, effect02, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, effect02, 0 );
setEffRotateKey( spep_1 + 80, effect02, 0 );
setEffAlphaKey( spep_1 + 0, effect02, 255 );
setEffAlphaKey( spep_1 + 80 -1, effect02, 255 );
setEffAlphaKey( spep_1 + 80, effect02, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 83, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );

setMoveKey( spep_1 + 0, 1, 13.8, 390.8 , 0 );
setMoveKey( spep_1 + 1, 1, 13.7, 389.8 , 0 );
setMoveKey( spep_1 + 2, 1, 13.7, 388.8 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 13.7, 387.9 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 13.7, 386.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 13.7, 385.9 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 13.7, 385 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 13.6, 384 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 13.6, 383 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 13.6, 382.1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 13.6, 381.1 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 13.6, 380.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 13.6, 379.2 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 13.5, 378.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 13.5, 377.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 13.5, 376.3 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 13.5, 375.3 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 13.5, 374.3 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 13.5, 373.4 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 13.4, 372.4 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 13.4, 371.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 13.4, 370.5 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 13.4, 369.5 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 13.4, 368.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 13.4, 367.6 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 13.3, 366.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 13.3, 365.6 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 13.3, 364.7 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 13.3, 363.7 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 13.3, 362.7 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 13.2, 361.8 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 13.2, 360.8 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 13.2, 359.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 13.2, 358.9 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 13.2, 357.9 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 13.2, 356.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 13.1, 356 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 13.1, 355 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 13.1, 354 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 13.1, 353.1 , 0 );
setMoveKey( spep_1 -3 + 83, 1, 13.1, 353.1 , 0 );

setScaleKey( spep_1 + 0, 1, 0.25, 0.25 );
--setScaleKey( spep_1 -3 + 44, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 46, 1, 0.24, 0.24 );
setScaleKey( spep_1 -3 + 83, 1, 0.24, 0.24 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 83, 1, 0 );

-- ** 音 ** --

-- ** ボイス ** --

-- ** 次の準備 ** --
spep_2 = spep_1 + 80;


------------------------------------------------------
-- 登場時演出2(1186F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
effect03 = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --登場時演出2    ef_003
setEffMoveKey( spep_2 + 0, effect03, 0, 0 , 0 );
setEffMoveKey( spep_2 + 1186, effect03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, effect03, 1.0, 1.0 );
setEffScaleKey( spep_2 + 1186, effect03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, effect03, 0 );
setEffRotateKey( spep_2 + 1186, effect03, 0 );
setEffAlphaKey( spep_2 + 0, effect03, 255 );
setEffAlphaKey( spep_2 + 1186, effect03, 255 );

-- ** 音 ** --
--ベジータ踏み出す
SE005 = playSeVer2( spep_2 + 8, 1111, "",spep_2 + 24, 0, 6, -1);
SE006 = playSeVer2( spep_2 + 8, 1192, "",spep_2 + 26, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 8, SE006, 124 );
setPitch( spep_2 + 8, SE006, -300 );
setTimeStretch( SE006, 0.8, 30, 4 );

--ベジータ足前に出す
SE007 = playSeVer2( spep_2 + 542, 1192, "",spep_2 + 568, 0, 8, -1);

--ベジータ気ダメ
SE008 = playSeVer2( spep_2 + 566, 1035, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 566, 1011, "", 0, 0, 0, -1);

--オーラ
SE010 = playSeVer2( spep_2 + 580, 1181, "",spep_2 + 712, 0, 48, -1);
SE011 = playSeVer2( spep_2 + 580, 1176, "",spep_2 + 712, 0, 48, -1);

--オーラ続き
SE012 = playSeVer2( spep_2 + 670, 1181, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 670, SE012, 40 );
SE013 = playSeVer2( spep_2 + 670, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 670, SE013, 16 );

--トランクス踏み出す
SE014 = playSeVer2( spep_2 + 890, 1111, "",spep_2 + 910, 0, 8, -1);
SE015 = playSeVer2( spep_2 + 894, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 894, SE015, 145 );

--トランクス気ダメ
SE016 = playSeVer2( spep_2 + 1058, 1035, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 1058, 1024, "", 0, 0, 0, -1);

--イナヅマ
SE018 = playSeVer2( spep_2 + 1088, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 1088, SE018, 60 );

-- ** ボイス ** --
--おまえが誇り高きサイヤ人の血をひく者ならば…オレの息子ならば！誰にも負けることはゆるさん！！
playVoice( spep_2 + 128, 448 );
setVoiceVolume( spep_2 + 128, 448, 100 );

--……！
playVoice( spep_2 + 666, 449 );
setVoiceVolume( spep_2 + 666, 449, 100 );

--オレ超えてみせます！目の前の敵も父さんも！！
playVoice( spep_2 + 754, 450 );
setVoiceVolume( spep_2 + 754, 450, 100 );

endPhase( spep_2 + 1186 );

else end