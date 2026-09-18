--9029480:LR_超サイヤ人孫悟飯(青年期)_フィニッシュ(超成功)：親子三大かめはめ波（エネミー側）
--sp_effect_a1_00453
--sp2819

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163215;  -- ef_001 顔アップ〜KO
SP_01b = 163216;  -- ef_001b 顔アップ〜KO

--エフェクト(敵)
SP_01r = 163217;  -- ef_001r 顔アップ〜KO

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

ENABLE_AUTO_TIME_STRETCH(0.76);

OFFSET_X = -1;

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------



else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

--はじめの準備
spep_0 = 0;

------------------------------------------------------
-- 顔アップ〜KO
------------------------------------------------------
MAX_FRAME_0 = 1928;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --顔アップ〜KO(ef_001r)
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_f, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0 );
setEffAlphaKey( spep_0 + 0, base_f, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255 );

base_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0 );  --顔アップ〜KO(ef_001b)
setEffMoveKey( spep_0 + 0, base_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, base_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, base_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, base_b, 0 );
setEffAlphaKey( spep_0 + 0, base_b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 316 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 380 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 316 + OFFSET_X, 1, 0 );
changeAnime( spep_0 + 356 + OFFSET_X, 1, 4 );

setMoveKey( spep_0 + 316 + OFFSET_X, 1, 0.9, 136 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 0.9, 136 , 0 );

setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 316 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 1854 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1894 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1854 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 1854 + OFFSET_X, 1, 65.7, 45.4 , 0 );
setMoveKey( spep_0 + 1859 + OFFSET_X, 1, 65.7, 45.4 , 0 );
setMoveKey( spep_0 + 1860 + OFFSET_X, 1, 131.6, 67.8 , 0 );
setMoveKey( spep_0 + 1861 + OFFSET_X, 1, 131.6, 67.8 , 0 );
setMoveKey( spep_0 + 1862 + OFFSET_X, 1, 141.1, 68.2 , 0 );
setMoveKey( spep_0 + 1865 + OFFSET_X, 1, 141.1, 68.2 , 0 );
setMoveKey( spep_0 + 1866 + OFFSET_X, 1, 158.6, 69 , 0 );
setMoveKey( spep_0 + 1869 + OFFSET_X, 1, 158.6, 69 , 0 );
setMoveKey( spep_0 + 1870 + OFFSET_X, 1, 165.4, 69.4 , 0 );
setMoveKey( spep_0 + 1873 + OFFSET_X, 1, 165.4, 69.4 , 0 );
setMoveKey( spep_0 + 1874 + OFFSET_X, 1, 170.2, 69.5 , 0 );
setMoveKey( spep_0 + 1877 + OFFSET_X, 1, 170.2, 69.5 , 0 );
setMoveKey( spep_0 + 1878 + OFFSET_X, 1, 171.9, 69.6 , 0 );
setMoveKey( spep_0 + 1879 + OFFSET_X, 1, 171.9, 69.6 , 0 );
setMoveKey( spep_0 + 1880 + OFFSET_X, 1, 173.3, 69.8 , 0 );
setMoveKey( spep_0 + 1881 + OFFSET_X, 1, 173.3, 69.8 , 0 );
setMoveKey( spep_0 + 1882 + OFFSET_X, 1, 175.3, 69.8 , 0 );
setMoveKey( spep_0 + 1887 + OFFSET_X, 1, 175.3, 69.8 , 0 );
setMoveKey( spep_0 + 1888 + OFFSET_X, 1, 176.7, 69.9 , 0 );
setMoveKey( spep_0 + 1894 + OFFSET_X, 1, 176.7, 69.9 , 0 );

setScaleKey( spep_0 + 1854 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 1859 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 1860 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 1861 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 1862 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 1865 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 1866 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 1869 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 1870 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 1873 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 1874 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 1877 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 1878 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 1879 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 1880 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 1881 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 1882 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 1887 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 1888 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 1894 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_0 + 1854 + OFFSET_X, 1, 50 );
setRotateKey( spep_0 + 1859 + OFFSET_X, 1, 50 );
setRotateKey( spep_0 + 1860 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_0 + 1861 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_0 + 1862 + OFFSET_X, 1, 53 );
setRotateKey( spep_0 + 1865 + OFFSET_X, 1, 53 );
setRotateKey( spep_0 + 1866 + OFFSET_X, 1, 54 );
setRotateKey( spep_0 + 1869 + OFFSET_X, 1, 54 );
setRotateKey( spep_0 + 1870 + OFFSET_X, 1, 54.4 );
setRotateKey( spep_0 + 1873 + OFFSET_X, 1, 54.4 );
setRotateKey( spep_0 + 1874 + OFFSET_X, 1, 54.6 );
setRotateKey( spep_0 + 1877 + OFFSET_X, 1, 54.6 );
setRotateKey( spep_0 + 1878 + OFFSET_X, 1, 54.7 );
setRotateKey( spep_0 + 1879 + OFFSET_X, 1, 54.7 );
setRotateKey( spep_0 + 1880 + OFFSET_X, 1, 54.8 );
setRotateKey( spep_0 + 1881 + OFFSET_X, 1, 54.8 );
setRotateKey( spep_0 + 1882 + OFFSET_X, 1, 54.9 );
setRotateKey( spep_0 + 1887 + OFFSET_X, 1, 54.9 );
setRotateKey( spep_0 + 1888 + OFFSET_X, 1, 55 );
setRotateKey( spep_0 + 1894 + OFFSET_X, 1, 55 );

setBlendColor( spep_0 + 1854 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.8 );
setBlendColor( spep_0 + 1859 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.8 );
setBlendColor( spep_0 + 1860 + OFFSET_X, 1, 3, 0.68, 0.79, 0.45, 0.8 );
setBlendColor( spep_0 + 1865 + OFFSET_X, 1, 3, 0.68, 0.79, 0.45, 0.8 );
setBlendColor( spep_0 + 1866 + OFFSET_X, 1, 3, 0.72, 0.83, 0.37, 0.8 );
setBlendColor( spep_0 + 1869 + OFFSET_X, 1, 3, 0.72, 0.83, 0.37, 0.8 );
setBlendColor( spep_0 + 1870 + OFFSET_X, 1, 3, 0.68, 0.8, 0.31, 0.8 );
setBlendColor( spep_0 + 1870 + OFFSET_X, 1, 3, 0.68, 0.8, 0.31, 0.8 );
setBlendColor( spep_0 + 1894 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );
SE002 = playSeVer2( spep_0 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE002, 71 );
SE003 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE003, 71 );
SE004 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE004, 71 );
SE008 = playSeVer2( spep_0 + 200, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE008, 50 );
SE009 = playSeVer2( spep_0 + 224, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE009, 71 );
SE010 = playSeVer2( spep_0 + 248, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 248, SE010, 71 );
SE015 = playSeVer2( spep_0 + 272, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 272, SE015, 71 );
SE016 = playSeVer2( spep_0 + 296, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE016, 71 );

--かめはめ波溜め
SE005 = playSeVer2( spep_0 + 82, 1200, "",spep_0 + 240, 0, 98, -1);
SE006 = playSeVer2( spep_0 + 84, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE006, 132 ); 
SE007 = playSeVer2( spep_0 + 132, 1210, "",spep_0 + 316, 39, 36, -1);
setStartTimeMs( SE007,  1333 );

--かめはめ波発射
SE011 = playSeVer2( spep_0 + 254, 1213, "",spep_0 + 416, 0, 84, -1);
setSeVolumeByWorkId( spep_0 + 254, SE011, 72 );
SE012 = playSeVer2( spep_0 + 254, 1146, "",spep_0 + 398, 0, 70, -1);
setSeVolumeByWorkId( spep_0 + 254, SE012, 80 );
SE013 = playSeVer2( spep_0 + 254, 1284, "",spep_0 + 400, 0, 74, -1);
setSeVolumeByWorkId( spep_0 + 254, SE013, 80 );
SE014 = playSeVer2( spep_0 + 254, 1223, "", 0, 0, 0, -1);
setPitch( spep_0 + 254, SE014, -200 );
setTimeStretch( SE014, 0.87, 30, 4 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 318; --エンドフェイズのフレーム数を置き換える
  
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE011, 0);
  stopSe( SP_dodge - 12, SE012, 0);
  stopSe( SP_dodge - 12, SE013, 0);
  stopSe( SP_dodge - 12, SE014, 0);
  stopSe( SP_dodge - 12, SE015, 0);
  stopSe( SP_dodge - 12, SE016, 0);
  setVoiceVolume( SP_dodge - 12, SE_7_836, 0 );
  setVoiceVolume( SP_dodge - 12, SE_8_851, 0 );

  pauseAll( SP_dodge, 67);
  
  speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
  setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
  
  kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
  
  entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
  endPhase(SP_dodge+10);
  
do return end
else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--かめはめ波中
SE017 = playSeVer2( spep_0 + 314, 1211, "",spep_0 + 674, 0, 104, -1);
setSeVolumeByWorkId( spep_0 + 314, SE017, 275 );
SE021 = playSeVer2( spep_0 + 358, 1161, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 358, SE021, 54 );

--かめはめ波飛んでいく
SE018 = playSeVer2( spep_0 + 314, 1022, "",spep_0 + 418, 0, 34, -1);
SE019 = playSeVer2( spep_0 + 314, 1202, "",spep_0 + 402, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 314, SE019, 158 );

--敵ヒット
SE020 = playSeVer2( spep_0 + 358, 1068, "", 0, 0, 0, -1);

--暗雲
SE022 = playSeVer2( spep_0 + 538, 1269, "",spep_0 + 1070, 86, 74, -1);
setSeVolumeByWorkId( spep_0 + 538, SE022, 32 );
SE023 = playSeVer2( spep_0 + 608, 1229, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 608, SE023, 141 );
SE025 = playSeVer2( spep_0 + 762, 1229, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 888, 1229, "", 0, 0, 0, -1);

--悟空降りてく
SE024 = playSeVer2( spep_0 + 852, 1288, "",spep_0 + 1076, 22, 90, -1);
setSeVolumeByWorkId( spep_0 + 852, SE024, 155 );
setStartTimeMs( SE024,  2100 );
SE027 = playSeVer2( spep_0 + 902, 63, "",spep_0 + 1008, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 902, SE027, 107 );

--かめはめ波中
SE028 = playSeVer2( spep_0 + 986, 1211, "",spep_0 + 1296, 0, 96, -1);
setSeVolumeByWorkId( spep_0 + 986, SE028, 151 );
SE029 = playSeVer2( spep_0 + 986, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 986, SE029, 43 );

--悟空気ダメ
SE030 = playSeVer2( spep_0 + 1140, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1140, SE030, 126 );

--画面遷移
SE031 = playSeVer2( spep_0 + 1188, 8, "", 0, 0, 0, -1);

--構える
SE032 = playSeVer2( spep_0 + 1214, 1004, "", 0, 0, 0, -1);

--かめはめ波溜め
SE033 = playSeVer2( spep_0 + 1264, 1210, "",spep_0 + 1486, 40, 52, -1);
setStartTimeMs( SE033,  700 );
SE034 = playSeVer2( spep_0 + 1258, 1200, "",spep_0 + 1416, 0, 98, -1);
SE035 = playSeVer2( spep_0 + 1258, 1209, "", 0, 0, 0, -1);

--かめはめ波発射
SE036 = playSeVer2( spep_0 + 1422, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1422, SE036, 70 );
SE037 = playSeVer2( spep_0 + 1422, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1422, SE037, 70 );
SE038 = playSeVer2( spep_0 + 1422, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1422, SE038, 70 );
SE039 = playSeVer2( spep_0 + 1422, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1422, SE039, 70 );
SE040 = playSeVer2( spep_0 + 1422, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1422, SE040, 70 );

--かめはめ波飛んでいく
SE041 = playSeVer2( spep_0 + 1550, 1258, "", 0, 0, 0, -1);

--爆発
SE042 = playSeVer2( spep_0 + 1624, 1024, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 1628, 1026, "", 0, 0, 0, -1);

--気弾飛んでいく
SE044 = playSeVer2( spep_0 + 1646, 1211, "",spep_0 + 1912, 76, 54, -1);
setSeVolumeByWorkId( spep_0 + 1646, SE044, 229 );
SE045 = playSeVer2( spep_0 + 1646, 1161, "", 0, 76, 0, -1);
setSeVolumeByWorkId( spep_0 + 1646, SE045, 106 );
SE046 = playSeVer2( spep_0 + 1680, 1274, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 1680, 1360, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_0 + 1680, 1390, "", 0, 0, 0, -1);

--画面変わって飛んでいく
SE049 = playSeVer2( spep_0 + 1770, 1193, "",spep_0 + 1902, 12, 28, -1);
setStartTimeMs( SE049,  800 );
SE050 = playSeVer2( spep_0 + 1778, 1027, "", 0, 0, 0, -1);

--爆発
SE051 = playSeVer2( spep_0 + 1858, 1069, "",spep_0 + 1962, 0, 2, -1);
SE052 = playSeVer2( spep_0 + 1876, 1159, "",spep_0 + 1962, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 1876, SE052, 71 );
SE053 = playSeVer2( spep_0 + 1898, 1067, "",spep_0 + 1962, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 1898, SE053, 112 );

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_0 + 1826 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 1928f

end
