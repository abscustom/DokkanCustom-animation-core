--9932890:LR_超サイヤ人4孫悟空+超サイヤ人4べジータ_アクティブ必殺：超ウルトラ元気玉(敵側)
--sp_effect_a2_00275
--sp2992

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164392; --ef_001
SP_01r = 164400; --元気玉の中で敵が消えていく_ef_001r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

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

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------

setupMovie(0, SP_01, 0, 1);
spep_0 = 0;


-------------------------------------------------
-- 元気玉の中で敵が消えていく
-------------------------------------------------

MAX_FRAME_0 = 2254;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 元気玉の中で敵が消えていく_ef_001r
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -2, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -1, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 1786 + OFFSET_X, 1, 1);
setDisp( spep_0 + 1834 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 1786 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 1786 + OFFSET_X, 1, 11.7, 16.5 , 0 );
setMoveKey( spep_0 + 1791 + OFFSET_X, 1, 11.7, 16.5 , 0 );
setMoveKey( spep_0 + 1792 + OFFSET_X, 1, 11.7, 0.5 , 0 );
setMoveKey( spep_0 + 1793 + OFFSET_X, 1, 11.7, 0.5 , 0 );
setMoveKey( spep_0 + 1794 + OFFSET_X, 1, 11.7, 1.1 , 0 );
setMoveKey( spep_0 + 1795 + OFFSET_X, 1, 11.7, 1.1 , 0 );
setMoveKey( spep_0 + 1796 + OFFSET_X, 1, 11.7, 13.7 , 0 );
setMoveKey( spep_0 + 1797 + OFFSET_X, 1, 11.7, 13.7 , 0 );
setMoveKey( spep_0 + 1798 + OFFSET_X, 1, 11.7, 13.8 , 0 );
setMoveKey( spep_0 + 1799 + OFFSET_X, 1, 11.7, 13.8 , 0 );
setMoveKey( spep_0 + 1800 + OFFSET_X, 1, 11.7, 13.9 , 0 );
setMoveKey( spep_0 + 1801 + OFFSET_X, 1, 11.7, 13.9 , 0 );
setMoveKey( spep_0 + 1802 + OFFSET_X, 1, 11.7, 2 , 0 );
setMoveKey( spep_0 + 1803 + OFFSET_X, 1, 11.7, 2 , 0 );
setMoveKey( spep_0 + 1804 + OFFSET_X, 1, 11.7, -1.3 , 0 );
setMoveKey( spep_0 + 1805 + OFFSET_X, 1, 11.7, -1.3 , 0 );
setMoveKey( spep_0 + 1806 + OFFSET_X, 1, 11.7, 11.5 , 0 );
setMoveKey( spep_0 + 1807 + OFFSET_X, 1, 11.7, 11.5 , 0 );
setMoveKey( spep_0 + 1808 + OFFSET_X, 1, 11.7, 11.8 , 0 );
setMoveKey( spep_0 + 1809 + OFFSET_X, 1, 11.7, 11.8 , 0 );
setMoveKey( spep_0 + 1810 + OFFSET_X, 1, 11.7, 12 , 0 );
setMoveKey( spep_0 + 1811 + OFFSET_X, 1, 11.7, 12 , 0 );
setMoveKey( spep_0 + 1812 + OFFSET_X, 1, 11.7, 4.3 , 0 );
setMoveKey( spep_0 + 1813 + OFFSET_X, 1, 11.7, 4.3 , 0 );
setMoveKey( spep_0 + 1814 + OFFSET_X, 1, 11.7, 5 , 0 );
setMoveKey( spep_0 + 1815 + OFFSET_X, 1, 11.7, 5 , 0 );
setMoveKey( spep_0 + 1816 + OFFSET_X, 1, 15.7, 13.7 , 0 );
setMoveKey( spep_0 + 1817 + OFFSET_X, 1, 15.7, 13.7 , 0 );
setMoveKey( spep_0 + 1818 + OFFSET_X, 1, 11.5, 5.9 , 0 );
setMoveKey( spep_0 + 1819 + OFFSET_X, 1, 11.5, 5.9 , 0 );
setMoveKey( spep_0 + 1820 + OFFSET_X, 1, 11.5, 6.7 , 0 );
setMoveKey( spep_0 + 1821 + OFFSET_X, 1, 11.5, 6.7 , 0 );
setMoveKey( spep_0 + 1822 + OFFSET_X, 1, 15.5, -0.6 , 0 );
setMoveKey( spep_0 + 1823 + OFFSET_X, 1, 15.5, -0.6 , 0 );
setMoveKey( spep_0 + 1824 + OFFSET_X, 1, 15.2, 12.8 , 0 );
setMoveKey( spep_0 + 1825 + OFFSET_X, 1, 15.2, 12.8 , 0 );
setMoveKey( spep_0 + 1826 + OFFSET_X, 1, 14.8, 13.2 , 0 );
setMoveKey( spep_0 + 1827 + OFFSET_X, 1, 14.8, 13.2 , 0 );
setMoveKey( spep_0 + 1828 + OFFSET_X, 1, 14.5, 13.5 , 0 );
setMoveKey( spep_0 + 1829 + OFFSET_X, 1, 14.5, 13.5 , 0 );
setMoveKey( spep_0 + 1830 + OFFSET_X, 1, 14.2, 1.8 , 0 );
setMoveKey( spep_0 + 1831 + OFFSET_X, 1, 14.2, 1.8 , 0 );
setMoveKey( spep_0 + 1832 + OFFSET_X, 1, 13.9, -0.3 , 0 );
setMoveKey( spep_0 + 1833 + OFFSET_X, 1, 13.9, -0.3 , 0 );
setMoveKey( spep_0 + 1834 + OFFSET_X, 1, 17.6, 6.1 , 0 );

setScaleKey( spep_0 + 1786 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 1834 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_0 + 1786 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 1834 + OFFSET_X, 1, 30 );

setBlendColor( spep_0 + 1786 + OFFSET_X, 1, 3, 0, 0.341, 0.533, 0.8);
setBlendColor( spep_0 + 1816 + OFFSET_X, 1, 3, 0, 0.341, 0.533, 1.0);

setAlphaKey( spep_0 + 1786 + OFFSET_X, 1, 255);
setAlphaKey( spep_0 + 1831 + OFFSET_X, 1, 255);
setAlphaKey( spep_0 + 1832 + OFFSET_X, 1, 128);
setAlphaKey( spep_0 + 1833 + OFFSET_X, 1, 128);
setAlphaKey( spep_0 + 1834 + OFFSET_X, 1, 0);
setAlphaKey( spep_0 + 1836 + OFFSET_X, 1, 255);
-- ** 音 ** --

--元気玉溜め音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 574, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 20 );
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 572, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );
SE003 = playSeVer2( spep_0 + 0, 1396, "",spep_0 + 574, 0, 72, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 224 );
setPitch( spep_0 + 0, SE003, -600 );
setTimeStretch( SE003, 0.6, 30, 4 );
SE004 = playSeVer2( spep_0 + 0, 1397, "",spep_0 + 588, 0, 84, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 66 );
--セリフカットイン
--SE005 = playSeVer2( spep_0 + 8, 1018, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_0 + 8, SE005, 63 );
--元気玉大きくなる
SE006 = playSeVer2( spep_0 + 22, 1312, "",spep_0 + 84, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 22, SE006, 76 );
SE007 = playSeVer2( spep_0 + 30, 1335, "", 0, 0, 0, -1);
setPitch( spep_0 + 30, SE007, -800 );
setTimeStretch( SE007, 0.47, 30, 4 );
SE008 = playSeVer2( spep_0 + 30, 1391, "",spep_0 + 94, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 30, SE008, 67 );
--雲晴れる
SE009 = playSeVer2( spep_0 + 168, 1264, "",spep_0 + 324, 42, 86, -1);
setSeVolumeByWorkId( spep_0 + 168, SE009, 73 );
setStartTimeMs( SE009, 233 );


-- * 声 * --
----「今度は宇宙中から元気を集めんだ！」
--playVoice( spep_0 + 4, 1147 );
--setVoiceVolume( spep_0 + 4, 1147, 100 );
----「宇宙のみんな！オラに元気をわけてくれーーっ！！」
--playVoice( spep_0 + 212, 1148 );
--setVoiceVolume( spep_0 + 212, 1148, 100 );
----「サンキュー！宇宙のみんな！！」
--playVoice( spep_0 + 1290, 1149 );
--setVoiceVolume( spep_0 + 1290, 1149, 100 );
----「いくぜ！！」
--playVoice( spep_0 + 1452, 1150 );
--setVoiceVolume( spep_0 + 1452, 1150, 100 );
----「てりゃあーーーっ！！」
--playVoice( spep_0 + 1544, 1151 );
--setVoiceVolume( spep_0 + 1544, 1151, 100 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 180; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE009, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--雲晴れる
SE010 = playSeVer2( spep_0 + 178, 1517, "", 0, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 178, SE010, 140 );
--SE011 = playSeVer2( spep_0 + 178, 1312, "",spep_0 + 250, 0, 30, -1);
--SE012 = playSeVer2( spep_0 + 178, 1307, "", 0, 0, 0, -1);
--SE013 = playSeVer2( spep_0 + 186, 1335, "", 0, 0, 0, -1);
--溜め音アップ
SE014 = playSeVer2( spep_0 + 216, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE014, 40 );
SE015 = playSeVer2( spep_0 + 244, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE015, 40 );
SE016 = playSeVer2( spep_0 + 272, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 272, SE016, 40 );
SE017 = playSeVer2( spep_0 + 300, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 300, SE017, 40 );
SE018 = playSeVer2( spep_0 + 328, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 328, SE018, 40 );
SE019 = playSeVer2( spep_0 + 356, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 356, SE019, 40 );
SE020 = playSeVer2( spep_0 + 384, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE020, 40 );
SE021 = playSeVer2( spep_0 + 412, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 412, SE021, 40 );
SE022 = playSeVer2( spep_0 + 440, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 440, SE022, 40 );
SE023 = playSeVer2( spep_0 + 468, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 468, SE023, 40 );
--カメラ上に
SE024 = playSeVer2( spep_0 + 490, 44, "", 0, 0, 0, -1);
--ナメック星から
SE025 = playSeVer2( spep_0 + 574, 1329, "",spep_0 + 692, 16, 54, -1);
setSeVolumeByWorkId( spep_0 + 574, SE025, 52 );
setStartTimeMs( SE025, 833 );
--いのりベース
SE026 = playSeVer2( spep_0 + 562, 1288, "",spep_0 + 1110, 66, 50, -1);
setStartTimeMs( SE026, 367 );
--画面遷移
SE027 = playSeVer2( spep_0 + 562, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 562, SE027, 71 );
--いのりベース
SE028 = playSeVer2( spep_0 + 570, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 570, SE028, 54 );
setTimeStretch( SE028, 1.42, 30, 4 );
--画面遷移
SE029 = playSeVer2( spep_0 + 638, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 638, SE029, 60 );
--踊る
SE030 = playSeVer2( spep_0 + 660, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 660, SE030, 63 );
SE031 = playSeVer2( spep_0 + 680, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 680, SE031, 67 );
SE032 = playSeVer2( spep_0 + 698, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 698, SE032, 71 );
--腕上げる
SE033 = playSeVer2( spep_0 + 740, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 740, SE033, 61 );
--画面遷移
SE034 = playSeVer2( spep_0 + 802, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 802, SE034, 54 );
setPitch( spep_0 + 802, SE034, 500 );
setTimeStretch( SE034, 1.33, 30, 4 );
--腕あげる2
SE035 = playSeVer2( spep_0 + 866, 1481, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 866, SE035, 56 );
--画面遷移
SE036 = playSeVer2( spep_0 + 896, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 896, SE036, 56 );
setPitch( spep_0 + 896, SE036, 800 );
setTimeStretch( SE036, 1.53, 30, 4 );
SE037 = playSeVer2( spep_0 + 946, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 946, SE037, 58 );
setPitch( spep_0 + 946, SE037, -900 );
setTimeStretch( SE037, 0.4, 30, 4 );
SE038 = playSeVer2( spep_0 + 998, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 998, SE038, 59 );
--宇宙になる
SE039 = playSeVer2( spep_0 + 1056, 1263, "", 0, 0, 0, -1);
--光る
SE040 = playSeVer2( spep_0 + 1114, 1042, "", 0, 0, 0, -1);
--元気集まる
SE041 = playSeVer2( spep_0 + 1140, 1390, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1140, SE041, 71 );
SE042 = playSeVer2( spep_0 + 1140, 1278, "",spep_0 + 1308, 0, 92, -1);
SE043 = playSeVer2( spep_0 + 1148, 63, "",spep_0 + 1248, 0, 10, -1);
--元気溜め
SE044 = playSeVer2( spep_0 + 1220, 1397, "",spep_0 + 1752, 12, 64, -1);
setSeVolumeByWorkId( spep_0 + 1220, SE044, 71 );
setStartTimeMs( SE044, 600 );
--元気地球に飛んでいく
SE045 = playSeVer2( spep_0 + 1186, 1004, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 1192, 44, "", 0, 0, 0, -1);
--元気溜め
SE047 = playSeVer2( spep_0 + 1226 + 50, 1181, "",spep_0 + 1758, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 1226 + 50, SE047, 71 );
SE048 = playSeVer2( spep_0 + 1226, 1396, "",spep_0 + 1760, 0, 68, -1);
setSeVolumeByWorkId( spep_0 + 1226, SE048, 200 );
setPitch( spep_0 + 1226, SE048, -600 );
setTimeStretch( SE048, 0.6, 30, 4 );
SE049 = playSeVer2( spep_0 + 1226 + 50, 1227, "", 0, 0, 0, -1);
--元気玉大きくなる
SE050 = playSeVer2( spep_0 + 1234, 15, "",spep_0 + 1362, 0, 82, -1);
SE051 = playSeVer2( spep_0 + 1238, 44, "", 0, 0, 0, -1);
--元気溜め
SE052 = playSeVer2( spep_0 + 1248, 1174, "", 0, 0, 0, -1);
--振りかぶる
SE053 = playSeVer2( spep_0 + 1574, 1116, "",spep_0 + 1622, 0, 20, -1);
SE054 = playSeVer2( spep_0 + 1574, 1314, "",spep_0 + 1708, 0, 40, -1);
SE055 = playSeVer2( spep_0 + 1574, 1004, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_0 + 1574, 1117, "", 0, 0, 0, -1);
--元気玉投げる
SE057 = playSeVer2( spep_0 + 1686, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1686, SE057, 73 );
SE058 = playSeVer2( spep_0 + 1686, 1193, "",spep_0 + 1828, 0, 64, -1);
SE059 = playSeVer2( spep_0 + 1686, 1278, "",spep_0 + 1798, 0, 42, -1);
SE060 = playSeVer2( spep_0 + 1686, 1226, "",spep_0 + 2052, 0, 96, -1);
--地面めりこむ
SE061 = playSeVer2( spep_0 + 1758, 1024, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_0 + 1758, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1758, SE062, 79 );

--敵飲まれる
SE063 = playSeVer2( spep_0 + 1796, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1796, SE063, 83 );
SE064 = playSeVer2( spep_0 + 1796, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1796, SE064, 83 );
SE065 = playSeVer2( spep_0 + 1816, 1258, "",spep_0 + 1936, 20, 60, -1);
setSeVolumeByWorkId( spep_0 + 1816, SE065, 73 );

--空に飛んでいく
SE066 = playSeVer2( spep_0 + 1894, 1044, "",spep_0 + 2054, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 1894, SE066, 56 );
SE067 = playSeVer2( spep_0 + 1894, 1011, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_0 + 1954, 1146, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 1954, SE068, 72 );
setStartTimeMs( SE068, 1000 );
SE069 = playSeVer2( spep_0 + 1958, 1202, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 1958, SE069, 158 );
setStartTimeMs( SE069, 833 );
setPitch( spep_0 + 1958, SE069, -300 );
setTimeStretch( SE069, 0.8, 30, 4 );
SE070 = playSeVer2( spep_0 + 1958, 1202, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 1958, SE070, 158 );
setStartTimeMs( SE070, 500 );

--爆発する
SE071 = playSeVer2( spep_0 + 1996, 1144, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1996, SE071, 56 );
SE072 = playSeVer2( spep_0 + 2022, 1157, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_0 + 2022, 1069, "",spep_0 + 2052, 0, 14, -1);
SE074 = playSeVer2( spep_0 + 2022, 63, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_0 + 2060, 1156, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2060, SE075, 79 );
SE076 = playSeVer2( spep_0 + 2060, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2060, SE076, 58 );
setPitch( spep_0 + 2060, SE076, -200 );
setTimeStretch( SE076, 0.87, 30, 4 );

--画面遷移
SE077 = playSeVer2( spep_0 + 2106, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2106, SE077, 56 );

--環境音
SE078 = playSeVer2( spep_0 + 2106, 1305, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2106, SE078, 73 );
SE079 = playSeVer2( spep_0 + 2124, 1470, "",spep_0 + 2252, 0, 80, -1);
setSeVolumeByWorkId( spep_0 + 2124, SE079, 32 );
SE080 = playSeVer2( spep_0 + 2124, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2124, SE080, 25 );

--終わり
--hideKoScreen();
dealDamage( spep_0 + 1880);
endPhase( spep_0 + MAX_FRAME_0);--2254

end