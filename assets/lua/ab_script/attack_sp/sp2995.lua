--1032920:LR_孫悟空(身勝手の極意"兆")+超サイヤ人ゴッドSSべジータ(進化)_EX必殺技：未完成の極意“閃”
--sp_effect_a1_00520
--sp2995

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_02 = 164416;  -- カード後 ef_001

--エフェクト(敵)
SP_02r = 164417;  -- カード後 ef_001r


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
DISABLE_VOICE_IF_DOUBLE_SPEED();

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 162;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 600);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 600, SP_02, spep_2 + 600 -1 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
    else

        setupMovie(0 , SP_02, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 162;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 148, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 141 );
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 108, 0, 22, -1);
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 134, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 47 );
SE004 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 148, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 75 );

--カメラパン
SE005 = playSeVer2( spep_0 + 2, 44, "", 0, 0, 0, -1);

--環境音
SE006 = playSeVer2( spep_0 + 84, 1269, "",spep_0 + 174, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 84, SE006, 25 );

--瞬間移動
SE007 = playSeVer2( spep_0 + 84, 1109, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 84, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE008, 79 );

--チャック地
SE009 = playSeVer2( spep_0 + 112, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE009, 316 );
SE010 = playSeVer2( spep_0 + 112, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE010, 40 );
SE011 = playSeVer2( spep_0 + 112, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE011, 117 );
SE012 = playSeVer2( spep_0 + 116, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE012, 178 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --162F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutinEx(spep_1, 0);

-- ** 音 ** --

--オーラ
SE014 = playSeVer2( spep_1 + 86, 1407, "",spep_1 + 280, 0, 98, -1);
SE015 = playSeVer2( spep_1 + 86, 1181, "",spep_1 + 286, 0, 102, -1);
setSeVolumeByWorkId( spep_1 + 86, SE015, 56 );
SE016 = playSeVer2( spep_1 + 86, 1176, "",spep_1 + 292, 0, 108, -1);
setSeVolumeByWorkId( spep_1 + 86, SE016, 32 );
SE017 = playSeVer2( spep_1 + 86, 1227, "",spep_1 + 296, 0, 114, -1);
setSeVolumeByWorkId( spep_1 + 86, SE017, 50 );

-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 1120;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード後(エフェクト名)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 168 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 60 + OFFSET_X, 1, 100 );

setMoveKey( spep_2 + 60 + OFFSET_X, 1, 0, 308.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 0, 308.2 , 0 );

setScaleKey( spep_2 + 60 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_2 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--左手構え
SE018 = playSeVer2( spep_2 + 6, 1233, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 10, 1189, "", 0, 0, 0, -1);

--右手構え
SE020 = playSeVer2( spep_2 + 28, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 28, SE020, 89 );
setPitch( spep_2 + 28, SE020, -200 );
setTimeStretch( SE020, 0.87, 30, 4 );
SE021 = playSeVer2( spep_2 + 32, 1189, "", 0, 0, 0, -1);

--両手合わせる
SE022 = playSeVer2( spep_2 + 58, 1233, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 70, 1006, "", 0, 0, 0, -1);

--かめはめ波溜め
SE024 = playSeVer2( spep_2 + 96, 1488, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 96, 1445, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 102, 1210, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 102, SE026, 63 );
setTimeStretch( SE026, 1.17, 30, 4 );

--構える
SE027 = playSeVer2( spep_2 + 180, 1117, "", 0, 0, 0, -1);
setPitch( spep_2 + 180, SE027, -600 );
setTimeStretch( SE027, 0.6, 30, 4 );

--地響き
SE028 = playSeVer2( spep_2 + 244, 1226, "",spep_2 + 678, 0, 48, -1);
setSeVolumeByWorkId( spep_2 + 244, SE028, 45 );

--溜め２
SE029 = playSeVer2( spep_2 + 246, 1489, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 246, SE029, 133 );
SE030 = playSeVer2( spep_2 + 254, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 254, SE030, 168 );
SE031 = playSeVer2( spep_2 + 254, 1259, "",spep_2 + 360, 0, 58, -1);
setSeVolumeByWorkId( spep_2 + 254, SE031, 67 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 306; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE025, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);
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

--セリフカットイン
SE032 = playSeVer2( spep_2 + 296, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 296, SE032, 63 );

--目光る
SE033 = playSeVer2( spep_2 + 494, 1303, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 494, SE033, 40 );
SE034 = playSeVer2( spep_2 + 494, 1475, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 494, SE034, 126 );

--かめはめ波発射
SE035 = playSeVer2( spep_2 + 602, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 602, SE035, 79 );
SE036 = playSeVer2( spep_2 + 602, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 602, SE036, 158 );
SE037 = playSeVer2( spep_2 + 602, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 602, SE037, 83 );

--かめはめ波発射2
SE038 = playSeVer2( spep_2 + 652, 1258, "", 0, 0, 0, -1);

--かめはめ波飛んでいく
SE039 = playSeVer2( spep_2 + 692, 1211, "",spep_2 + 946, 0, 102, -1);
setSeVolumeByWorkId( spep_2 + 692, SE039, 168 );
SE040 = playSeVer2( spep_2 + 692, 1284, "",spep_2 + 804, 0, 38, -1);
SE041 = playSeVer2( spep_2 + 692, 1512, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 692, SE041, 58 );

--ヒット
SE042 = playSeVer2( spep_2 + 758, 1067, "", 0, 0, 0, -1);

--壁突き抜けてく
SE043 = playSeVer2( spep_2 + 818, 1159, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 818, 1145, "", 0, 0, 0, -1);

--キラキラ
SE045 = playSeVer2( spep_2 + 894, 1288, "",spep_2 + 1016, 2, 22, -1);
setStartTimeMs( SE045,  367 );
SE046 = playSeVer2( spep_2 + 894, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 894, SE046, 162 );

--画面遷移
SE047 = playSeVer2( spep_2 + 956, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 956, SE047, 50 );
SE048 = playSeVer2( spep_2 + 978, 8, "", 0, 0, 0, -1);

--オーラ
SE049 = playSeVer2( spep_2 + 978, 1407, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 978, SE049, 148 );
SE050 = playSeVer2( spep_2 + 978, 1181, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 978, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 978, SE051, 46 );
SE052 = playSeVer2( spep_2 + 978, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 978, SE052, 65 );

-- ** ボイス ** --

--「かめはめ波ーーっ！！！」
playVoice( spep_2 + 308, 1156 );
setVoiceVolume( spep_2 + 308, 1156, 116 );

-- ** ダメージ表示 ** --
hideKoScreen();
fadeKoLabel(1,0.5)
dealDamage( spep_2 + 1000); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 1120F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_02, 0, 1);

-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 162;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 148, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 141 );
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 108, 0, 22, -1);
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 134, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 47 );
SE004 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 148, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 75 );

--カメラパン
SE005 = playSeVer2( spep_0 + 2, 44, "", 0, 0, 0, -1);

--環境音
SE006 = playSeVer2( spep_0 + 84, 1269, "",spep_0 + 174, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 84, SE006, 25 );

--瞬間移動
SE007 = playSeVer2( spep_0 + 84, 1109, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 84, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE008, 79 );

--チャック地
SE009 = playSeVer2( spep_0 + 112, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE009, 316 );
SE010 = playSeVer2( spep_0 + 112, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE010, 40 );
SE011 = playSeVer2( spep_0 + 112, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE011, 117 );
SE012 = playSeVer2( spep_0 + 116, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE012, 178 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --162F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutinEx(spep_1, 0);

-- ** 音 ** --

--オーラ
SE014 = playSeVer2( spep_1 + 86, 1407, "",spep_1 + 280, 0, 98, -1);
SE015 = playSeVer2( spep_1 + 86, 1181, "",spep_1 + 286, 0, 102, -1);
setSeVolumeByWorkId( spep_1 + 86, SE015, 56 );
SE016 = playSeVer2( spep_1 + 86, 1176, "",spep_1 + 292, 0, 108, -1);
setSeVolumeByWorkId( spep_1 + 86, SE016, 32 );
SE017 = playSeVer2( spep_1 + 86, 1227, "",spep_1 + 296, 0, 114, -1);
setSeVolumeByWorkId( spep_1 + 86, SE017, 50 );

-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 1120;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- カード後(エフェクト名)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 168 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 60 + OFFSET_X, 1,0 );

setMoveKey( spep_2 + 60 + OFFSET_X, 1, 0, 308.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 0, 308.2 , 0 );

setScaleKey( spep_2 + 60 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_2 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--左手構え
SE018 = playSeVer2( spep_2 + 6, 1233, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 10, 1189, "", 0, 0, 0, -1);

--右手構え
SE020 = playSeVer2( spep_2 + 28, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 28, SE020, 89 );
setPitch( spep_2 + 28, SE020, -200 );
setTimeStretch( SE020, 0.87, 30, 4 );
SE021 = playSeVer2( spep_2 + 32, 1189, "", 0, 0, 0, -1);

--両手合わせる
SE022 = playSeVer2( spep_2 + 58, 1233, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 70, 1006, "", 0, 0, 0, -1);

--かめはめ波溜め
SE024 = playSeVer2( spep_2 + 96, 1488, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 96, 1445, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 102, 1210, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 102, SE026, 63 );
setTimeStretch( SE026, 1.17, 30, 4 );

--構える
SE027 = playSeVer2( spep_2 + 180, 1117, "", 0, 0, 0, -1);
setPitch( spep_2 + 180, SE027, -600 );
setTimeStretch( SE027, 0.6, 30, 4 );

--地響き
SE028 = playSeVer2( spep_2 + 244, 1226, "",spep_2 + 678, 0, 48, -1);
setSeVolumeByWorkId( spep_2 + 244, SE028, 45 );

--溜め２
SE029 = playSeVer2( spep_2 + 246, 1489, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 246, SE029, 133 );
SE030 = playSeVer2( spep_2 + 254, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 254, SE030, 168 );
SE031 = playSeVer2( spep_2 + 254, 1259, "",spep_2 + 360, 0, 58, -1);
setSeVolumeByWorkId( spep_2 + 254, SE031, 67 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 306; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE025, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);
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

--セリフカットイン
--SE032 = playSeVer2( spep_2 + 296, 1018, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_2 + 296, SE032, 63 );

--目光る
SE033 = playSeVer2( spep_2 + 494, 1303, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 494, SE033, 40 );
SE034 = playSeVer2( spep_2 + 494, 1475, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 494, SE034, 126 );

--かめはめ波発射
SE035 = playSeVer2( spep_2 + 602, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 602, SE035, 79 );
SE036 = playSeVer2( spep_2 + 602, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 602, SE036, 158 );
SE037 = playSeVer2( spep_2 + 602, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 602, SE037, 83 );

--かめはめ波発射2
SE038 = playSeVer2( spep_2 + 652, 1258, "", 0, 0, 0, -1);

--かめはめ波飛んでいく
SE039 = playSeVer2( spep_2 + 692, 1211, "",spep_2 + 946, 0, 102, -1);
setSeVolumeByWorkId( spep_2 + 692, SE039, 168 );
SE040 = playSeVer2( spep_2 + 692, 1284, "",spep_2 + 804, 0, 38, -1);
SE041 = playSeVer2( spep_2 + 692, 1512, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 692, SE041, 58 );

--ヒット
SE042 = playSeVer2( spep_2 + 758, 1067, "", 0, 0, 0, -1);

--壁突き抜けてく
SE043 = playSeVer2( spep_2 + 818, 1159, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 818, 1145, "", 0, 0, 0, -1);

--キラキラ
SE045 = playSeVer2( spep_2 + 894, 1288, "",spep_2 + 1016, 2, 22, -1);
setStartTimeMs( SE045,  367 );
SE046 = playSeVer2( spep_2 + 894, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 894, SE046, 162 );

--画面遷移
SE047 = playSeVer2( spep_2 + 956, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 956, SE047, 50 );
SE048 = playSeVer2( spep_2 + 978, 8, "", 0, 0, 0, -1);

--オーラ
SE049 = playSeVer2( spep_2 + 978, 1407, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 978, SE049, 148 );
SE050 = playSeVer2( spep_2 + 978, 1181, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 978, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 978, SE051, 46 );
SE052 = playSeVer2( spep_2 + 978, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 978, SE052, 65 );

-- ** ボイス ** --

--「かめはめ波ーーっ！！！」
--playVoice( spep_2 + 308, 1156 );
--setVoiceVolume( spep_2 + 308, 1156, 100 );

-- ** ダメージ表示 ** --
hideKoScreen();
fadeKoLabel(1,0.5)
dealDamage( spep_2 + 1000); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 1120F


end
