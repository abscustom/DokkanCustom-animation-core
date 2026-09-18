--1021050:ボージャック_変身
--battle_301210

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
SP_01=	3132	;--	
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


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 指先ビーム〜正面見下ろし
------------------------------------------------------
--はじめの準備
spep_0=0;

--エフェクト
effect = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, effect, 0, 0, 0 );
setEffMoveKey( spep_0 + 480, effect, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, effect, 1.0, 1.0 );
setEffScaleKey( spep_0 + 480, effect, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, effect, 0 );
setEffRotateKey( spep_0 + 480, effect, 0 );
setEffAlphaKey( spep_0 + 0, effect, 255 );
setEffAlphaKey( spep_0 + 480, effect, 255 );

--背景の色
entryFadeBg( spep_0 + 0, 0, 480, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

------------------------------------------------------
-- SE
------------------------------------------------------
--環境音
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 18 );
stopSe( spep_0 + 290, SE001, 0 );

--入り
SE002 = playSe( spep_0 + 24, 8 );
setSeVolumeByWorkId( spep_0 + 24, SE002, 68 );
setPitch( spep_0 + 24, SE002, -300 );
setTimeStretch( SE002, 0.8, 10, 1 );

--構える
SE003 = playSe( spep_0 + 150, 1233 );
setSeVolumeByWorkId( spep_0 + 150, SE003, 76 );	
setPitch( spep_0 + 150, SE003, -500 );
setTimeStretch( SE003, 0.67, 10, 1 );

--左腕破れる
SE004 = playSe( spep_0 + 182, 1197 );
setSeVolumeByWorkId( spep_0 + 182, SE004, 60 );
SE005 = playSe( spep_0 + 182, 19 );
setSeVolumeByWorkId( spep_0 + 182, SE005, 63 );
stopSe( spep_0 + 196, SE005, 20 );
SE006 = playSe( spep_0 + 184, 1007 );
setSeVolumeByWorkId( spep_0 + 184, SE006, 63 );

--右腕破れる
SE007 = playSe( spep_0 + 212, 1197 );
setSeVolumeByWorkId( spep_0 + 212, SE007, 62 );
SE008 = playSe( spep_0 + 212, 19 );
setSeVolumeByWorkId( spep_0 + 212, SE008, 65 );
stopSe( spep_0 + 226, SE008, 20 );
SE009 = playSe( spep_0 + 214, 1007 );
setSeVolumeByWorkId( spep_0 + 214, SE009, 69 );

--目線カットイン
SE010 = playSe( spep_0 + 236, 1018 );

--気ダメ
SE011 = playSe( spep_0 + 286, 1068 );
setSeVolumeByWorkId( spep_0 + 286, SE011, 72 );
setTimeStretch( SE011, 1.11, 10, 1 );
SE012 = playSe( spep_0 + 288, 1188 );
setSeVolumeByWorkId( spep_0 + 288, SE012, 83 );
SE013 = playSe( spep_0 + 288, 1258 );
setSeVolumeByWorkId( spep_0 + 288, SE013, 58 );
setTimeStretch( SE013, 1.33, 10, 1 );
SE014 = playSe( spep_0 + 298, 1024 );
setSeVolumeByWorkId( spep_0 + 298, SE014, 56 );

--オーラ
SE015 = playSe( spep_0 + 350, 1036 );
setSeVolumeByWorkId( spep_0 + 350, SE015, 100 );
setPitch( spep_0 + 350, SE015, -500 );
setTimeStretch( SE015, 0.74, 10, 1 );
SE016 = playSe( spep_0 + 374, 1036 );
setSeVolumeByWorkId( spep_0 + 374, SE016, 100 );
setPitch( spep_0 + 374, SE016, -500 );
setTimeStretch( SE016, 0.73, 10, 1 );
SE017 = playSe( spep_0 + 398, 1036 );
setSeVolumeByWorkId( spep_0 + 398, SE017, 100 );
setPitch( spep_0 + 398, SE017, -500 );
setTimeStretch( SE017, 0.73, 10, 1 );
SE018 = playSe( spep_0 + 422, 1036 );
setSeVolumeByWorkId( spep_0 + 426, SE018, 100 );
setPitch( spep_0 + 422, SE018, -500 );
setTimeStretch( SE018, 0.73, 10, 1 );
SE019 = playSe( spep_0 + 446, 1036 );
setSeVolumeByWorkId( spep_0 + 446, SE019, 100 );
setPitch( spep_0 + 446, SE019, -500 )
setTimeStretch( SE019, 0.73, 10, 1 );
SE020 = playSe( spep_0 + 470, 1036 );
setSeVolumeByWorkId( spep_0 + 470, SE020, 100 );
setPitch( spep_0 + 470, SE020, -500 );
setTimeStretch( SE020, 0.73, 10, 1 );
------------------------------------------------------
-- ボイス
------------------------------------------------------
--殺戮ショーのはじまりだぜ
playVoice( spep_0 + 0, 226 );
setVoiceVolume( spep_0 + 0, 226, 130 );

--うぉおおおおおお！！！！
playVoice( spep_0 + 266, 227 );
setVoiceVolume( spep_0 + 266, 227, 200 );

--終わり
endPhase( spep_0 + 474 );
else end