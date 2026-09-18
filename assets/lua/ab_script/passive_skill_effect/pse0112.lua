--1032920:LR_孫悟空(身勝手の極意"兆")+超サイヤ人ゴッドSSべジータ(進化)_合流演出
--sp_effect_b4_00426
--pse0112

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164435;  -- 合流演出 ef_001


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- 合流演出
-------------------------------------------------
MAX_FRAME_0 = 1426;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 合流演出(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 670, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 122 );
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 670, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 66 );
SE003 = playSeVer2( spep_0 + 0, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 50 );

--環境音
SE004 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 25 );

--服揺れる
SE005 = playSeVer2( spep_0 + 6, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE005, 56 );
SE006 = playSeVer2( spep_0 + 40, 1331, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE006, 86 );
SE007 = playSeVer2( spep_0 + 98, 1333, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE007, 58 );

--画面遷移
SE008 = playSeVer2( spep_0 + 142, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE008, 68 );
setBandpassFilter( spep_0 + 142, SE008, 24, 350 );

--セリフカットイン
SE009 = playSeVer2( spep_0 + 276, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 276, SE009, 63 );

--オーラ
SE010 = playSeVer2( spep_0 + 450, 1227, "",spep_0 + 670, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 450, SE010, 54 );

--画面遷移
SE011 = playSeVer2( spep_0 + 632, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 632, SE011, 74 );

--気ダメ
SE012 = playSeVer2( spep_0 + 744, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 744, SE012, 83 );
SE013 = playSeVer2( spep_0 + 754, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 754, SE013, 84 );
SE014 = playSeVer2( spep_0 + 754, 1504, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 754, SE014, 73 );

--オーラ
SE015 = playSeVer2( spep_0 + 808, 1176, "",spep_0 + 1002, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 808, SE015, 51 );
SE016 = playSeVer2( spep_0 + 814, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 814, SE016, 40 );
SE018 = playSeVer2( spep_0 + 838, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 838, SE018, 40 );
SE019 = playSeVer2( spep_0 + 862, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 862, SE019, 40 );
SE020 = playSeVer2( spep_0 + 886, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 886, SE020, 40 );
SE021 = playSeVer2( spep_0 + 910, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 910, SE021, 40 );

--力む
SE017 = playSeVer2( spep_0 + 818, 1330, "", 0, 0, 0, -1);

--オーラ
SE018 = playSeVer2( spep_0 + 838, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 838, SE018, 40 );
SE019 = playSeVer2( spep_0 + 862, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 862, SE019, 40 );
SE020 = playSeVer2( spep_0 + 886, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 886, SE020, 40 );
SE021 = playSeVer2( spep_0 + 910, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 910, SE021, 40 );

--気を爆発させる
SE022 = playSeVer2( spep_0 + 896, 1513, "",spep_0 + 1038, 0, 62, -1);
SE023 = playSeVer2( spep_0 + 898, 1068, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 898, 1503, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 942, 1067, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 1062, 1035, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 1062, 1503, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 1062, 1504, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 1062, 1478, "",spep_0 + 1186, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 1062, SE032, 120 );

--二人の気が立ち上がる
SE033 = playSeVer2( spep_0 + 1154, 1024, "",spep_0 + 1320, 0, 88, -1);
SE034 = playSeVer2( spep_0 + 1154, 1465, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1154, SE034, 146 );
SE035 = playSeVer2( spep_0 + 1154, 1213, "",spep_0 + 1320, 0, 82, -1);
setSeVolumeByWorkId( spep_0 + 1154, SE035, 63 );
SE036 = playSeVer2( spep_0 + 1154, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1154, SE036, 60 );

--オーラ
SE026 = playSeVer2( spep_0 + 1006, 1407, "",spep_0 + 1100, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 1006, SE026, 129 );
SE027 = playSeVer2( spep_0 + 1012, 1181, "",spep_0 + 1108, 0, 22, -1);
SE028 = playSeVer2( spep_0 + 1012, 1227, "",spep_0 + 1108, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 1012, SE028, 120 );
SE037 = playSeVer2( spep_0 + 1218, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1218, SE037, 62 );
SE038 = playSeVer2( spep_0 + 1218, 1407, "",spep_0 + 1934, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 1218, SE038, 141 );
SE039 = playSeVer2( spep_0 + 1218, 1474, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1218, SE039, 300 );
SE040 = playSeVer2( spep_0 + 1218, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1218, SE040, 46 );

--ラスト決め
SE041 = playSeVer2( spep_0 + 1352, 1062, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 1352, 1114, "", 0, 0, 0, -1);

-- ** ボイス ** --

--「少しつかめてきた気がするぞ…」_修正版1
playVoice( spep_0 + 262, 1152 );
setVoiceVolume( spep_0 + 262, 1152, 114 );

--「身勝手の極意」
playVoice( spep_0 + 492, 1153 );
setVoiceVolume( spep_0 + 492, 1153, 114 );

--「身勝手の極意はカカロットがやればいい！」
playVoice( spep_0 + 622, 1154 );
setVoiceVolume( spep_0 + 622, 1154, 114 );

--「オレはオレのやり方できさまに勝つ！！」
playVoice( spep_0 + 770, 1155 );
setVoiceVolume( spep_0 + 770, 1155, 114 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1426F

end
