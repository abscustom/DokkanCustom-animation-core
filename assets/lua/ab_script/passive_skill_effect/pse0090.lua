--1031590:LR_超サイヤ人孫悟飯(青年期)+超サイヤ人トランクス(幼年期)&超サイヤ人孫悟天(幼年期)_合流演出
--sp_effect_b4_00388
--pse0090

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 163982;  -- 合流演出 ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 合流演出
------------------------------------------------------
spep_0 = 0;

MAX_FRAME_0 = 790;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 合流演出（ef_001）
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 ); -- 黒 背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--じゃれあう
SE002 = playSeVer2( spep_0 + 44, 1189, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 50, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE003, 40 );
setBandpassFilter( spep_0 + 50, SE003, 1000, 24000 );
SE004 = playSeVer2( spep_0 + 54, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 66, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE005, 69 );
setBandpassFilter( spep_0 + 66, SE005, 1000, 24000 );
SE006 = playSeVer2( spep_0 + 70, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 78, 1189, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 78, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE008, 54 );
setBandpassFilter( spep_0 + 78, SE008, 1000, 24000 );
SE009 = playSeVer2( spep_0 + 90, 1189, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 98, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE010, 51 );
setBandpassFilter( spep_0 + 98, SE010, 1000, 24000 );
SE011 = playSeVer2( spep_0 + 104, 1189, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 112, 1189, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 124, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 128, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE014, 71 );
setBandpassFilter( spep_0 + 128, SE014, 1000, 24000 );
SE015 = playSeVer2( spep_0 + 140, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE015, 84 );

--つままれる
SE016 = playSeVer2( spep_0 + 172, 37, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 172, 1003, "", 0, 0, 0, -1);

--じたばた
SE018 = playSeVer2( spep_0 + 194, 1416, "",spep_0 + 242, 0, 10, -1);
SE019 = playSeVer2( spep_0 + 208, 1416, "",spep_0 + 256, 0, 10, -1);
SE020 = playSeVer2( spep_0 + 226, 1416, "",spep_0 + 274, 0, 10, -1);
SE021 = playSeVer2( spep_0 + 240, 1416, "",spep_0 + 288, 0, 12, -1);

--じたばた2
SE040 = playSeVer2( spep_0 + 254, 1416, "",spep_0 + 302, 0, 12, -1);

--画面遷移
SE022 = playSeVer2( spep_0 + 272, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 272, SE022, 60 );

--悟天飛ぶ
SE023 = playSeVer2( spep_0 + 346, 1434, "",spep_0 + 490, 0, 76, -1);

--振り返る
SE024 = playSeVer2( spep_0 + 454, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 454, SE024, 65 );

--セリフカットイン
SE025 = playSeVer2( spep_0 + 482, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 482, SE025, 63 );

--画面遷移
SE026 = playSeVer2( spep_0 + 598, 8, "", 0, 0, 0, -1);

--気ダメ
SE027 = playSeVer2( spep_0 + 672, 1035, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 672, 1503, "", 0, 0, 0, -1);

--オーラ
SE029 = playSeVer2( spep_0 + 672, 1036, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 696, 1036, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 720, 1036, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 744, 1036, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 768, 1036, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「にいちゃん！」
playVoice( spep_0 + 366, 1048 );
setVoiceVolume( spep_0 + 366, 1048, 128 );

--「悟天！トランクス！」
playVoice( spep_0 + 482, 1049 );
setVoiceVolume( spep_0 + 482, 1049, 128 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --790f

else end
