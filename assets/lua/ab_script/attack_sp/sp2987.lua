--1032880:LR_超サイヤ人4べジータ+超サイヤ人4孫悟空_EX必殺技：ファイナルシャインアタック
--sp_effect_a1_00525
--sp2987

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164420; --最初〜最後まで ef_001
SP_01r = 164443; --最初〜最後まで ef_001r

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
    spep_0=0;
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        skipFrame(0, spep_0 + 746);  -- スキップ先フレーム指定
        setupMovie(spep_0 + 746 - 1, SP_01, spep_0 + 746 - 1 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
        --気弾発射２
        SE041 = playSeVer2( spep_0 + 746 + 3, 1423, "",spep_0 + 920, 0, 26, -1);
        SE042 = playSeVer2( spep_0 + 746 + 3, 1258, "", 0, 0, 0, -1);
        SE043 = playSeVer2( spep_0 + 746 + 3, 1213, "",spep_0 + 920, 0, 26, -1);

    else

        setupMovie(0 , SP_01, 0, 1);
    end


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 最初〜最後まで
-------------------------------------------------
MAX_FRAME_0 = 928;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 最初〜最後まで(ef_001)
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
--気がたちのぼる
SE001 = playSeVer2( spep_0 + 0, 1068, "",spep_0 + 62, 0, 12, -1);
SE002 = playSeVer2( spep_0 + 0, 1202, "",spep_0 + 64, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 191 );
SE003 = playSeVer2( spep_0 + 0, 1512, "",spep_0 + 68, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 70 );

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutinEx(spep_0 + 46, 0);


-- ** 音 ** --
--オーラ
SE005 = playSeVer2( spep_0 + 124, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 124, SE005, 63 );
--オーラ
SE006 = playSeVer2( spep_0 + 124, 1513, "",spep_0 + 442, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 124, SE006, 76 );
--回転
SE007 = playSeVer2( spep_0 + 130, 44, "", 0, 0, 0, -1);
--オーラ
SE008 = playSeVer2( spep_0 + 148, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE008, 63 );
SE009 = playSeVer2( spep_0 + 172, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 172, SE009, 63 );
SE010 = playSeVer2( spep_0 + 196, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE010, 63 );
SE011 = playSeVer2( spep_0 + 220, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE011, 63 );
--気ダメ
SE012 = playSeVer2( spep_0 + 242, 1503, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 242, 1035, "", 0, 0, 0, -1);
--オーラ
SE014 = playSeVer2( spep_0 + 244, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE014, 63 );
SE015 = playSeVer2( spep_0 + 268, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE015, 63 );
SE016 = playSeVer2( spep_0 + 292, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE016, 63 );
SE017 = playSeVer2( spep_0 + 316, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE017, 63 );
SE018 = playSeVer2( spep_0 + 340, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE018, 63 );
SE019 = playSeVer2( spep_0 + 364, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 364, SE019, 63 );
SE020 = playSeVer2( spep_0 + 388, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 388, SE020, 63 );
SE021 = playSeVer2( spep_0 + 412, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 412, SE021, 63 );
--腕のばす
SE022 = playSeVer2( spep_0 + 386 + 38, 1004, "", 0, 0, 0, -1);
--オーラ
SE023 = playSeVer2( spep_0 + 436, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 436, SE023, 63 );
--気弾溜め
SE024 = playSeVer2( spep_0 + 406 + 38, 1488, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 406 + 38, 1334, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 406 + 38, 1296, "",spep_0 + 650 + 38, 0, 22, -1);
--オーラ
SE027 = playSeVer2( spep_0 + 460, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 460, SE027, 63 );
SE028 = playSeVer2( spep_0 + 484, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 484, SE028, 63 );
--回転する
SE029 = playSeVer2( spep_0 + 444 + 38, 1116, "",spep_0 + 536 + 38, 0, 30, -1);
--セリフカットイン
SE030 = playSeVer2( spep_0 + 498, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 498, SE030, 63 );
--オーラ
SE031 = playSeVer2( spep_0 + 508, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 508, SE031, 63 );
--回転する
SE032 = playSeVer2( spep_0 + 474 + 38, 63, "", 0, 0, 0, -1);
--オーラ
SE033 = playSeVer2( spep_0 + 532, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 532, SE033, 63 );
SE034 = playSeVer2( spep_0 + 556, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 556, SE034, 63 );
SE035 = playSeVer2( spep_0 + 580, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 580, SE035, 63 );
SE036 = playSeVer2( spep_0 + 604, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 604, SE036, 63 );
SE037 = playSeVer2( spep_0 + 628, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 628, SE037, 63 );
--気弾発射
SE038 = playSeVer2( spep_0 + 580 + 38, 1512, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 580 + 38, 1027, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 580 + 38, 1133, "", 0, 0, 0, -1);
--気弾発射２
SE041 = playSeVer2( spep_0 + 632 + 38, 1423, "",spep_0 + 882 + 36, 0, 26, -1);
SE042 = playSeVer2( spep_0 + 632 + 38, 1258, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 632 + 38, 1213, "",spep_0 + 882 + 36, 0, 26, -1);

--オーラ追加
SE060 = playSeVer2( spep_0 + 652, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 652, SE060, 63 );
SE061 = playSeVer2( spep_0 + 676, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 676, SE061, 63 );
SE070 = playSeVer2( spep_0 + 432, 1513, "",spep_0 + 752, 2, 30, -1);
setSeVolumeByWorkId( spep_0 + 432, SE006, 76 );

--気弾飛んでいく
SE044 = playSeVer2( spep_0 + 676 + 38, 1121, "",spep_0 + 848, 0, 22, -1);
setPitch( spep_0 + 676 + 38, SE044, 300 );
SE045 = playSeVer2( spep_0 + 676 + 38, 1304, "",spep_0 + 840, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 676 + 38, SE045, 162 );

-- ** ボイス ** --
--「ファイナルシャインアタック！！！」
playVoice( spep_0 + 500, 1146 );
setVoiceVolume( spep_0 + 500, 1146, 112 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 740; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE038, 0);
stopSe( SP_dodge - 12, SE039, 0);
stopSe( SP_dodge - 12, SE040, 0);
stopSe( SP_dodge - 12, SE041, 0);
stopSe( SP_dodge - 12, SE042, 0);
stopSe( SP_dodge - 12, SE043, 0);
stopSe( SP_dodge - 12, SE044, 0);
stopSe( SP_dodge - 12, SE045, 0);
--stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--ビル貫通
SE046 = playSeVer2( spep_0 + 754 + 38, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 754 + 38, SE046, 141 );
SE047 = playSeVer2( spep_0 + 754 + 38, 1273, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_0 + 754 + 38, 1069, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_0 + 760 + 38, 1126, "", 0, 0, 0, -1);
--爆発
SE050 = playSeVer2( spep_0 + 822 + 38, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 822 + 38, SE050, 130 );
SE051 = playSeVer2( spep_0 + 830 + 38, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 830 + 38, SE051, 130 );

-- ** ダメージ表示 ** --
dealDamage( spep_0 + 808); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 928

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------
setupMovie(0 , SP_01, 0, 1);


spep_0 = 0;


-------------------------------------------------
-- 最初〜最後まで
-------------------------------------------------
MAX_FRAME_0 = 928;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 最初〜最後まで(ef_001)
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
--気がたちのぼる
SE001 = playSeVer2( spep_0 + 0, 1068, "",spep_0 + 62, 0, 12, -1);
SE002 = playSeVer2( spep_0 + 0, 1202, "",spep_0 + 64, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 191 );
SE003 = playSeVer2( spep_0 + 0, 1512, "",spep_0 + 68, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 70 );

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutinEx(spep_0 + 46, 0);


-- ** 音 ** --
--オーラ
SE005 = playSeVer2( spep_0 + 124, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 124, SE005, 63 );
--オーラ
SE006 = playSeVer2( spep_0 + 124, 1513, "",spep_0 + 442, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 124, SE006, 76 );
--回転
SE007 = playSeVer2( spep_0 + 130, 44, "", 0, 0, 0, -1);
--オーラ
SE008 = playSeVer2( spep_0 + 148, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE008, 63 );
SE009 = playSeVer2( spep_0 + 172, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 172, SE009, 63 );
SE010 = playSeVer2( spep_0 + 196, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE010, 63 );
SE011 = playSeVer2( spep_0 + 220, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE011, 63 );
--気ダメ
SE012 = playSeVer2( spep_0 + 242, 1503, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 242, 1035, "", 0, 0, 0, -1);
--オーラ
SE014 = playSeVer2( spep_0 + 244, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE014, 63 );
SE015 = playSeVer2( spep_0 + 268, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE015, 63 );
SE016 = playSeVer2( spep_0 + 292, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE016, 63 );
SE017 = playSeVer2( spep_0 + 316, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE017, 63 );
SE018 = playSeVer2( spep_0 + 340, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE018, 63 );
SE019 = playSeVer2( spep_0 + 364, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 364, SE019, 63 );
SE020 = playSeVer2( spep_0 + 388, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 388, SE020, 63 );
SE021 = playSeVer2( spep_0 + 412, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 412, SE021, 63 );
--腕のばす
SE022 = playSeVer2( spep_0 + 386 + 38, 1004, "", 0, 0, 0, -1);
--オーラ
SE023 = playSeVer2( spep_0 + 436, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 436, SE023, 63 );
--気弾溜め
SE024 = playSeVer2( spep_0 + 406 + 38, 1488, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 406 + 38, 1334, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 406 + 38, 1296, "",spep_0 + 650 + 38, 0, 22, -1);
--オーラ
SE027 = playSeVer2( spep_0 + 460, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 460, SE027, 63 );
SE028 = playSeVer2( spep_0 + 484, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 484, SE028, 63 );
--回転する
SE029 = playSeVer2( spep_0 + 444 + 38, 1116, "",spep_0 + 536 + 38, 0, 30, -1);
--セリフカットイン
SE030 = playSeVer2( spep_0 + 498, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 498, SE030, 63 );
--オーラ
SE031 = playSeVer2( spep_0 + 508, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 508, SE031, 63 );
--回転する
SE032 = playSeVer2( spep_0 + 474 + 38, 63, "", 0, 0, 0, -1);
--オーラ
SE033 = playSeVer2( spep_0 + 532, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 532, SE033, 63 );
SE034 = playSeVer2( spep_0 + 556, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 556, SE034, 63 );
SE035 = playSeVer2( spep_0 + 580, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 580, SE035, 63 );
SE036 = playSeVer2( spep_0 + 604, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 604, SE036, 63 );
SE037 = playSeVer2( spep_0 + 628, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 628, SE037, 63 );
--気弾発射
SE038 = playSeVer2( spep_0 + 580 + 38, 1512, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 580 + 38, 1027, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 580 + 38, 1133, "", 0, 0, 0, -1);
--気弾発射２
SE041 = playSeVer2( spep_0 + 632 + 38, 1423, "",spep_0 + 882 + 36, 0, 26, -1);
SE042 = playSeVer2( spep_0 + 632 + 38, 1258, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 632 + 38, 1213, "",spep_0 + 882 + 36, 0, 26, -1);

--オーラ追加
SE060 = playSeVer2( spep_0 + 652, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 652, SE060, 63 );
SE061 = playSeVer2( spep_0 + 676, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 676, SE061, 63 );
SE070 = playSeVer2( spep_0 + 432, 1513, "",spep_0 + 752, 2, 30, -1);
setSeVolumeByWorkId( spep_0 + 432, SE006, 76 );

--気弾飛んでいく
SE044 = playSeVer2( spep_0 + 676 + 38, 1121, "",spep_0 + 848, 0, 22, -1);
setPitch( spep_0 + 676 + 38, SE044, 300 );
SE045 = playSeVer2( spep_0 + 676 + 38, 1304, "",spep_0 + 840, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 676 + 38, SE045, 162 );

-- ** ボイス ** --
--「ファイナルシャインアタック！！！」
--playVoice( spep_0 + 500, 1146 );
--setVoiceVolume( spep_0 + 500, 1146, 112 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 740; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE038, 0);
stopSe( SP_dodge - 12, SE039, 0);
stopSe( SP_dodge - 12, SE040, 0);
stopSe( SP_dodge - 12, SE041, 0);
stopSe( SP_dodge - 12, SE042, 0);
stopSe( SP_dodge - 12, SE043, 0);
stopSe( SP_dodge - 12, SE044, 0);
stopSe( SP_dodge - 12, SE045, 0);
--stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--ビル貫通
SE046 = playSeVer2( spep_0 + 754 + 38, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 754 + 38, SE046, 141 );
SE047 = playSeVer2( spep_0 + 754 + 38, 1273, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_0 + 754 + 38, 1069, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_0 + 760 + 38, 1126, "", 0, 0, 0, -1);
--爆発
SE050 = playSeVer2( spep_0 + 822 + 38, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 822 + 38, SE050, 130 );
SE051 = playSeVer2( spep_0 + 830 + 38, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 830 + 38, SE051, 130 );

-- ** ダメージ表示 ** --
dealDamage( spep_0 + 808); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 928
end