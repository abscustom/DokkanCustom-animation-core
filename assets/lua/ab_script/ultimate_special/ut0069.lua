--1028810:UR_魔人ブウ(善)_アクティブ必殺技：お菓子光線
--sp_effect_a9_00129
--ut0069

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162812;	--演出前半　前面	ef_001
SP_01b = 162813;	--演出前半　背面	ef_001b
SP_02 = 162815;	--演出後半	ef_002

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
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;
        spep_1 = spep_0 + 878;
 
       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 468 - 13 );   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_1 + 60 - 1 );  -- スキップ先フレーム指定
           --環境音
           SE001 = playSeVer2( spep_1 + 60, 1269, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_1 + 60, SE001, 25 );
       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 演出前半
-------------------------------------------------

MAX_FRAME_0 = 878;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 前面(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -2, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -1, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 0);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 背面(ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -2, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -1, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 0);

-- ** 白フェード ** --
entryFade( spep_0 + 583, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 873, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 160 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 592 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 160 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 528 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 160 + OFFSET_X, 1, 144.6, 248.4 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 144.6, 248.4 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 232.7, 253.9 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 232.7, 253.9 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 242.2, 254 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 242.2, 254 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 240.3, 257.7 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 240.3, 257.7 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 244, 250.3 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 244, 250.3 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 244, 257.7 , 0 );

setScaleKey( spep_0 + 160 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 0.65, 0.65 );

setRotateKey( spep_0 + 160 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_0 + 527 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_0 + 528 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_0 + 592 + OFFSET_X, 1, -37.5 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--スキップしてくる
SE002 = playSeVer2( spep_0 + 2, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE002, 158 );
SE003 = playSeVer2( spep_0 + 12, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE003, 158 );
SE004 = playSeVer2( spep_0 + 42, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE004, 158 );
SE005 = playSeVer2( spep_0 + 62, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE005, 158 );
SE006 = playSeVer2( spep_0 + 74, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE006, 158 );
SE007 = playSeVer2( spep_0 + 102, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE007, 158 );
SE008 = playSeVer2( spep_0 + 120, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE008, 158 );
SE009 = playSeVer2( spep_0 + 132, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE009, 158 );
SE010 = playSeVer2( spep_0 + 154, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE010, 158 );
SE011 = playSeVer2( spep_0 + 168, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE011, 158 );
SE012 = playSeVer2( spep_0 + 192, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE012, 158 );
SE013 = playSeVer2( spep_0 + 210, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE013, 158 );
SE014 = playSeVer2( spep_0 + 222, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 222, SE014, 158 );
SE015 = playSeVer2( spep_0 + 246, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE015, 158 );
SE016 = playSeVer2( spep_0 + 266, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE016, 158 );
SE017 = playSeVer2( spep_0 + 276, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 276, SE017, 158 );

--背景音
SE018 = playSeVer2( spep_0 + 294, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 294, SE018, 50 );

--セリフカットイン
SE019 = playSeVer2( spep_0 + 300, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 300, SE019, 63 );

--光線溜める
SE020 = playSeVer2( spep_0 + 424, 1214, "",spep_0 + 512, 0, 32, -1);
SE021 = playSeVer2( spep_0 + 424, 1154, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 424, 1200, "",spep_0 + 510, 0, 32, -1);

-- ** ボイス ** --
--「クッキーになっちゃえ！」
playVoice( spep_0 + 308, 791 );
setVoiceVolume( spep_0 + 308, 791, 100 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 468; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
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
--ビーム発射
SE023 = playSeVer2( spep_0 + 480, 1178, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 480, 1286, "",spep_0 + 568, 0, 36, -1);
SE025 = playSeVer2( spep_0 + 480, 1353, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 480, 1114, "", 0, 0, 0, -1);

--敵ヒット
SE027 = playSeVer2( spep_0 + 520, 1023, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 524, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 524, SE028, 72 );

--煙に包まれる
SE029 = playSeVer2( spep_0 + 582, 20, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 588, 31, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 588, 1214, "",spep_0 + 718, 0, 74, -1);

--クッキーになる
SE032 = playSeVer2( spep_0 + 682, 1237, "", 0, 0, 0, -1);

--環境音
SE033 = playSeVer2( spep_0 + 682, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 682, SE033, 25 );

--落ちてくる
SE034 = playSeVer2( spep_0 + 718, 1118, "", 0, 0, 0, -1);

--キャッチ
SE035 = playSeVer2( spep_0 + 806, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 806, SE035, 59 );
setStartTimeMs( SE035,  133 );
SE036 = playSeVer2( spep_0 + 806, 1108, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --878F


-------------------------------------------------
-- 演出後半
-------------------------------------------------

MAX_FRAME_1 = 316;

-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--頬張る
SE037 = playSeVer2( spep_1 + 0, 31, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_1 + 0, 1112, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 0, 1291, "", 0, 0, 0, -1);

--食べる
SE040 = playSeVer2( spep_1 + 62, 1071, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 122, 1071, "",spep_1 + 176, 0, 10, -1);

--飲み込む
SE042 = playSeVer2( spep_1 + 160, 1134, "",spep_1 + 186, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 160, SE042, 71 );

--環境音
SE043 = playSeVer2( spep_1 + 184, 8, "", 0, 0, 0, -1);

--終わり
-- hideKoScreen();
dealDamage( spep_1 + 216);
endPhase( spep_1 + MAX_FRAME_1);--316

else end