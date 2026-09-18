--1032070:UR_人造人間16号_アクティブ必殺：ヘルズフラッシュ
--sp_effect_b4_00402
--ut0110

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164149;  -- 開幕～最後まで ef_001
SP_01b = 164150;  -- 開幕～最後まで ef_001b


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
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;---記載するspepの数に要注意

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 150 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           
       else
           skipFrame(0, spep_0 + 770 -1);  -- スキップ先フレーム指定

--溜め
SE032 = playSeVer2( spep_0 + 770, 1249, "",spep_0 + 912, 12, 24, -1);
setSeVolumeByWorkId( spep_0 + 770, SE032, 60 );
setStartTimeMs( SE032, 267 );
SE033 = playSeVer2( spep_0 + 770, 1158, "",spep_0 + 912, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 770, SE033, 62 );

--「ヘルズフラッシュ！！！！」
playVoice( spep_0 + 770, 1100 );
setVoiceVolume( spep_0 + 770, 1100, 100 );

       end
    else end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕～最後まで
-------------------------------------------------
MAX_FRAME_0 = 1210;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～最後まで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕～最後まで(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 158 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 172 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 158 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 168 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 158 + OFFSET_X, 1, 173.5, -223.5 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 173.5, -223.5 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 168.6, -218.6 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 168.6, -218.6 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 171, -218.6 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 171, -218.6 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 175.9, -216.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 175.9, -216.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 171, -218.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 171, -218.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 107.2, -379.2 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 107.2, -379.2 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 107.2, -371.9 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 107.2, -371.9 , 0 );

setScaleKey( spep_0 + 158 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 3.39, 3.39 );

setRotateKey( spep_0 + 158 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, -44.6 );

--敵の動き2
setDisp( spep_0 + 178 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 186 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 178 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 178 + OFFSET_X, 1, 153.2, -472.1 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 153.2, -472.1 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 198.8, -575.7 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 198.8, -575.7 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 239.5, -681.8 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 239.5, -681.8 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 285.1, -785.4 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 285.1, -785.4 , 0 );

setScaleKey( spep_0 + 178 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 1.46, 1.46 );

setRotateKey( spep_0 + 178 + OFFSET_X, 1, 46.6 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, 46.6 );

--敵の動き3

setDisp( spep_0 + 252 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 316 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 252 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 252 + OFFSET_X, 1, 17.8, -36.4 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 17.8, -36.4 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 17.5, -36.2 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 17.5, -36.2 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 17.5, -31.3 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 17.5, -31.3 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 17.5, -8.1 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 17.5, -8.1 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 17.5, -3 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 17.5, -3 , 0 );

setScaleKey( spep_0 + 252 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 1.95, 1.95 );

setRotateKey( spep_0 + 252 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 33.2 );

--敵の動き4

setDisp( spep_0 + 500 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 512 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 500 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 500 + OFFSET_X, 1, -161.6, 499.5 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -161.6, 499.5 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -108.2, 382.4 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -108.2, 382.4 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -131.8, 75.9 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -131.8, 75.9 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -96.1, -209.7 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -96.1, -209.7 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -96.1, -493.9 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -96.1, -493.9 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -96.1, -825.2 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -96.1, -825.2 , 0 );

setScaleKey( spep_0 + 500 + OFFSET_X, 1, 5.11, 5.11 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 5.11, 5.11 );

setRotateKey( spep_0 + 500 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_0 + 503 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_0 + 504 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_0 + 512 + OFFSET_X, 1, -14.5 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 594, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );

--構える
SE003 = playSeVer2( spep_0 + 74, 1116, "",spep_0 + 116, 0, 18, -1);
SE004 = playSeVer2( spep_0 + 98, 1208, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE004, 56 );
SE005 = playSeVer2( spep_0 + 98, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE005, 170 );
SE030 = playSeVer2( spep_0 + 708, 12, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 708, SE030, 67 );
SE031 = playSeVer2( spep_0 + 708, 1237, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 708, SE031, 73 );

--飛び込む
SE006 = playSeVer2( spep_0 + 132, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 132, 1008, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 136, 1117, "", 0, 0, 0, -1);



-- ** ボイス ** --

--「おまえを破壊する」
playVoice( spep_0 + 0, 1098 );
setVoiceVolume( spep_0 + 0, 1098, 126 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 150; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);

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

--殴り飛ばす
SE009 = playSeVer2( spep_0 + 160, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 160, 1153, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 160, 1120, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 166, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 172, 1159, "",spep_0 + 402, 0, 164, -1);

--着地
SE014 = playSeVer2( spep_0 + 254, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE014, 116 );
SE015 = playSeVer2( spep_0 + 254, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE015, 182 );
SE016 = playSeVer2( spep_0 + 264, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE016, 168 );

--敵つかむ
SE017 = playSeVer2( spep_0 + 274, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 274, SE017, 78 );

--持ち上げる
SE018 = playSeVer2( spep_0 + 328, 1189, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 332, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 332, 1116, "",spep_0 + 380, 0, 22, -1);
SE021 = playSeVer2( spep_0 + 334, 1041, "",spep_0 + 358, 0, 10, -1);

--顔アップ
SE022 = playSeVer2( spep_0 + 406, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 406, SE022, 58 );

--叩きつける
SE023 = playSeVer2( spep_0 + 506, 1067, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 506, 1159, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 506, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 506, SE025, 63 );

--腕外す
SE026 = playSeVer2( spep_0 + 650, 1013, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 650, 6, "",spep_0 + 672, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 650, SE027, 68 );
SE028 = playSeVer2( spep_0 + 650, 1389, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 650, SE028, 168 );
SE029 = playSeVer2( spep_0 + 658, 1001, "",spep_0 + 684, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 658, SE029, 80 );

--溜め
SE032 = playSeVer2( spep_0 + 740, 1249, "",spep_0 + 912, 12, 24, -1);
setSeVolumeByWorkId( spep_0 + 740, SE032, 60 );
setStartTimeMs( SE032, 267 );
SE033 = playSeVer2( spep_0 + 724, 1158, "",spep_0 + 912, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 724, SE033, 62 );

--ヘルズフラッシュ発射
SE034 = playSeVer2( spep_0 + 888, 1022, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 888, 1024, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 888, 1193, "",spep_0 + 1006, 0, 74, -1);
SE037 = playSeVer2( spep_0 + 902, 1161, "",spep_0 + 1084, 0, 70, -1);

--地響き
SE038 = playSeVer2( spep_0 + 928, 1226, "", 0, 0, 0, -1);

--爆発
SE039 = playSeVer2( spep_0 + 1010, 1069, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 1022, 1068, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 1024, 1128, "", 0, 0, 0, -1);
setPitch( spep_0 + 1028, SE041, -1200 );
setTimeStretch( SE041, 0.2, 30, 4 );

--光溢れる
SE042 = playSeVer2( spep_0 + 1096, 1185, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 1096, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1096, SE043, 51 );
SE044 = playSeVer2( spep_0 + 1096, 1305, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1096, SE044, 136 );
SE045 = playSeVer2( spep_0 + 1114, 1306, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 1130, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1130, SE046, 58 );
setPitch( spep_0 + 1130, SE046, -300 );
setTimeStretch( SE046, 0.8, 30, 4 );

-- ** ボイス ** --

--「だああああーーっ！！！！」
playVoice( spep_0 + 388, 1099 );
setVoiceVolume( spep_0 + 388, 1099, 126 );

--「ヘルズフラッシュ！！！！」
playVoice( spep_0 + 746, 1100 );
setVoiceVolume( spep_0 + 746, 1100, 126 );

-- ** おわり ** --
hideKoScreen();
dealDamage( spep_0 + 1100); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 ); -- 1210F(KO時 1392F)

else end