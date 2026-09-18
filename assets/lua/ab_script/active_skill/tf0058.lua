--1026280:超サイヤ人ベジータ_変身(アクティブ)
--battle_301251

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
SP_01 = 3184;  --アクティブ変身演出   ef_001


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
changeAnime( 0, 1, 0);

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
--開始～フィニッシュ
------------------------------------------------------

spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --開始～フィニッシュ   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 638, first_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 638, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 638, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 638, first_f, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 638 + 2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 音 ** --
--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--入り
SE003 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 71 );

--ブルマ殴られる
SE001 = playSeVer2( spep_0 + 32, 1278, "", 0, 46, 0, -1);
setBandpassFilter  ( spep_0 + 40, SE001, 2100, 24000 );
setStartTimeMs( SE001,  1250 );
SE004 = playSeVer2( spep_0 + 36, 1263, "", 0, 24, 0, -1);
setStartTimeMs( SE004,  350 );
setTimeStretch( SE004, 1.43, 30, 4 );
SE005 = playSeVer2( spep_0 + 34, 1110, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 44, 22, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE006, 158 );
setStartTimeMs( SE006,  167 );
SE008 = playSeVer2( spep_0 + 64, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE008, 61 );
setBandpassFilter( spep_0 + 64, SE008, 24, 1250 );
SE009 = playSeVer2( spep_0 + 94, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE009, 37 );
setBandpassFilter( spep_0 + 94, SE009, 24, 1250 );
SE010 = playSeVer2( spep_0 + 124, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 124, SE010, 20 );
setBandpassFilter( spep_0 + 124, SE010, 24, 1250 );

--地響き
SE011 = playSeVer2( spep_0 + 330, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE011, 79 );
SE012 = playSeVer2( spep_0 + 330, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE012, 63 );

--気ダメ
SE013 = playSeVer2( spep_0 + 488, 1035, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 488, 1298, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 488, 1068, "", 0, 0, 0, -1);

--イナヅマ
SE016 = playSeVer2( spep_0 + 488, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 488, SE016, 59 );

--目線カットイン
SE007 = playSeVer2( spep_0 + 488, 1018, "", 0, 0, 0, -1);

--オーラ
SE017 = playSeVer2( spep_0 + 508, 1036, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 532, 1036, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 556, 1036, "", 0, 0, 0, -1);

--気爆発
SE020 = playSeVer2( spep_0 + 578, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 578, SE020, 72 );
SE021 = playSeVer2( spep_0 + 578, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 578, SE021, 63 );
SE022 = playSeVer2( spep_0 + 578, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 578, SE022, 81 );

--オーラ
SE023 = playSeVer2( spep_0 + 580, 1036, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 604, 1036, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「よくも俺のブルマをーー！！」
playVoice( spep_0 + 190, 608 );
setVoiceVolume( spep_0 + 190, 608, 100 );



--終わり
endPhase( spep_0 + 638 );

end