--4033070:LR_超サイヤ人2孫悟空(天使)+魔人ベジータ_アクティブ必殺：戦闘民族の本気
--sp_effect_a1_00529
--ut0123

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164413; --ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[
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
]]--

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1) then

        spep_0 = 0;

       if(_IS_DODGE_ == 1) then

           skipFrame(0, spep_0 + 624 - 13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 624 - 13, SP_01, spep_0 + 624 - 13 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

       else

           skipFrame(0, spep_0 + 1148 );  -- スキップ先フレーム指定
           setupMovie(spep_0 + 1148, SP_01, spep_0 + 1148 -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

           -- ** 敵キャラクター ** --
           --敵の動き
           setMoveKey( spep_0 + 1148, 1, 0, -5000, 0 );  -- スキップ時に敵が映り込むため記載

           -- ** 音 ** --
           --気弾中
           SE041 = playSeVer2( spep_0 + 1148 + 1, 1513, "",spep_0 + 1576, 0, 108, -1);
           setSeVolumeByWorkId( spep_0 + 1148 + 1, SE041, 35 );
           SE045 = playSeVer2( spep_0 + 1148 + 1, 1161, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_0 + 1148 + 1, SE045, 65 );

           --気弾膨れ上がる
           SE044 = playSeVer2( spep_0 + 1048 + 1, 1147, "",spep_0 + 1200, 0, 38, -1);
           setSeVolumeByWorkId( spep_0 + 1048 + 1, SE044, 71 );

           -- ** ボイス ** --
           --「はああああっ！！！」
           playVoice( spep_0 + 1148 + 1, 1174 );
           setVoiceVolume( spep_0 + 1148 + 1, 1174, 100 );

       end

    else 

      setupMovie(0, SP_01, 0, 1);  -- スキップしない時の通常再生時用のsetupMovie関数

    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;
 
 
-------------------------------------------------
-- スタート〜フィニッシュ
-------------------------------------------------

MAX_FRAME_0 = 1658;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- スタート〜フィニッシュ(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 104 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 104 );

setMoveKey( spep_0 + 0, 1, -12.6, -107.9 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -12.6, -107.9 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -12.6, -107.9 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -12.6, -107.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -12.6, -107.9 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -12.6, -107.9 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -12.6, -107.9 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -12.6, -107.9 , 0 );

setScaleKey( spep_0 + 0, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 1.1, 1.1 );


setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_0 + 612 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 670 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 662 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 612 + OFFSET_X, 1, 18, 75 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, 18, 75 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, 17, 82 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, 17, 82 , 0 );

setScaleKey( spep_0 + 612 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 670 + OFFSET_X, 1, 0.13, 0.13 );

setRotateKey( spep_0 + 612 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 661 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 662 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 670 + OFFSET_X, 1, -30 );

setBlendColor( spep_0 + 666 + OFFSET_X, 1, 3, 0, 0, 0, 1);
setBlendColor( spep_0 + 670 + OFFSET_X, 1, 3, 0, 0, 0, 0);


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--気ダメ予兆
SE002 = playSeVer2( spep_0 + 16, 1271, "",spep_0 + 156, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 16, SE002, 35 );
setPitch( spep_0 + 16, SE002, 500 );
setTimeStretch( SE002, 1.33, 30, 4 );
SE003 = playSeVer2( spep_0 + 18, 1274, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 32 );
setTimeStretch( SE003, 1.42, 30, 4 );

--悟空気ダメ
SE004 = playSeVer2( spep_0 + 122, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE004, 67 );
SE005 = playSeVer2( spep_0 + 122, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE005, 68 );
SE006 = playSeVer2( spep_0 + 122, 1504, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE006, 58 );

--セリフカットイン
SE007 = playSeVer2( spep_0 + 130, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE007, 63 );

--オーラ
SE008 = playSeVer2( spep_0 + 134, 1513, "",spep_0 + 320, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 134, SE008, 30 );
SE009 = playSeVer2( spep_0 + 134, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE009, 63 );
SE010 = playSeVer2( spep_0 + 158, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE010, 63 );
SE011 = playSeVer2( spep_0 + 182, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE011, 63 );
SE012 = playSeVer2( spep_0 + 206, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE012, 63 );
SE013 = playSeVer2( spep_0 + 230, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 230, SE013, 63 );
SE014 = playSeVer2( spep_0 + 254, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE014, 63 );
SE015 = playSeVer2( spep_0 + 278, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 278, SE015, 63 );
SE016 = playSeVer2( spep_0 + 302, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 302, SE016, 40 );
SE017 = playSeVer2( spep_0 + 326, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE017, 63 );
SE021 = playSeVer2( spep_0 + 350, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 350, SE021, 63 );
SE022 = playSeVer2( spep_0 + 374, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 374, SE022, 63 );
SE023 = playSeVer2( spep_0 + 398, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 398, SE023, 63 );
SE024 = playSeVer2( spep_0 + 422, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 422, SE024, 63 );
SE025 = playSeVer2( spep_0 + 446, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 446, SE025, 63 );
SE026 = playSeVer2( spep_0 + 470, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 470, SE026, 63 );
SE027 = playSeVer2( spep_0 + 494, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 494, SE027, 63 );
SE028 = playSeVer2( spep_0 + 518, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 518, SE028, 63 );

--ベジータ気ダメ
SE018 = playSeVer2( spep_0 + 330, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE018, 71 );
SE019 = playSeVer2( spep_0 + 330, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE019, 74 );
SE020 = playSeVer2( spep_0 + 330, 1504, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE020, 79 );

--悟空気弾発射
SE029 = playSeVer2( spep_0 + 534, 1511, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 534, SE029, 50 );
SE030 = playSeVer2( spep_0 + 534, 1285, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 534, SE030, 75 );
setPitch( spep_0 + 534, SE030, -300 );
setTimeStretch( SE030, 0.8, 30, 4 );
SE031 = playSeVer2( spep_0 + 534, 1223, "", 0, 0, 0, -1);
setPitch( spep_0 + 534, SE031, -100 );
setTimeStretch( SE031, 0.93, 30, 4 );
SE032 = playSeVer2( spep_0 + 534, 1146, "", 0, 0, 0, -1);

--べジータ気弾発射
SE033 = playSeVer2( spep_0 + 582, 1511, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 582, SE033, 72 );
SE034 = playSeVer2( spep_0 + 582, 1285, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 582, SE034, 63 );
setPitch( spep_0 + 582, SE034, -300 );
setTimeStretch( SE034, 0.8, 30, 4 );
SE035 = playSeVer2( spep_0 + 582, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 582, SE035, 62 );
setPitch( spep_0 + 582, SE035, -100 );
setTimeStretch( SE035, 0.93, 30, 4 );
SE036 = playSeVer2( spep_0 + 582, 1146, "",spep_0 + 732, 0, 42, -1);


-- ** ボイス ** --
--「最高の力で終わらせるぞ！！」
playVoice( spep_0 + 130, 1172 );
setVoiceVolume( spep_0 + 130, 1172, 120 );

--「見せてやるオレの本領を！！」
playVoice( spep_0 + 343, 1173 );
setVoiceVolume( spep_0 + 343, 1173, 120 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 624; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
stopSe( SP_dodge - 12, SE034, 0);
stopSe( SP_dodge - 12, SE035, 0);
stopSe( SP_dodge - 12, SE036, 0);
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
--気弾ぶつかる
SE037 = playSeVer2( spep_0 + 662, 1159, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 662, 1024, "", 0, 0, 0, -1);

--気弾中
SE039 = playSeVer2( spep_0 + 686, 1227, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 686, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 686, SE040, 65 );
SE041 = playSeVer2( spep_0 + 686, 1513, "",spep_0 + 1576, 0, 108, -1);
setSeVolumeByWorkId( spep_0 + 686, SE041, 35 );
SE042 = playSeVer2( spep_0 + 906, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 906, SE042, 65 );

--気弾膨れ上がる
SE043 = playSeVer2( spep_0 + 1028, 1465, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1028, SE043, 112 );
SE044 = playSeVer2( spep_0 + 1038, 1147, "",spep_0 + 1200, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 1038, SE044, 71 );

--気弾中
SE045 = playSeVer2( spep_0 + 1142, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1142, SE045, 65 );

--ベジータ気弾だめ押し
SE046 = playSeVer2( spep_0 + 1186, 1284, "", 0, 0, 0, -1);

--気弾中
SE047 = playSeVer2( spep_0 + 1198, 1227, "",spep_0 + 1424, 0, 34, -1);

--悟空気弾だめ押し
SE048 = playSeVer2( spep_0 + 1298, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1298, SE048, 67 );

--気弾中
SE049 = playSeVer2( spep_0 + 1362, 1161, "",spep_0 + 1538, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 1362, SE049, 65 );

--最後爆発
SE050 = playSeVer2( spep_0 + 1364, 1215, "",spep_0 + 1580, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 1364, SE050, 76 );
SE052 = playSeVer2( spep_0 + 1406, 1184, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_0 + 1410, 1213, "", 0, 50, 0, -1);
setSeVolumeByWorkId( spep_0 + 1410, SE051, 80 );
setStartTimeMs( SE051,  67 );

--地響き
SE053 = playSeVer2( spep_0 + 1418, 1044, "", 0, 96, 0, -1);
setSeVolumeByWorkId( spep_0 + 1418, SE053, 145 );

--最後爆発
SE054 = playSeVer2( spep_0 + 1436, 1188, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 1518, 1159, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_0 + 1530, 1067, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「はああああっ！！！」
playVoice( spep_0 + 1140, 1174 );
setVoiceVolume( spep_0 + 1140, 1174, 100 );

--「だああああっ！！！」
playVoice( spep_0 + 1302, 1175 );
setVoiceVolume( spep_0 + 1302, 1175, 100 );


--終わり
-- hideKoScreen();
dealDamage( spep_0 + 1508);
endPhase( spep_0 + MAX_FRAME_0); -- 1658f

else end