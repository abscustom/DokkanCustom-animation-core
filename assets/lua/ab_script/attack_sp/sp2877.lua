--1031470:LR_超サイヤ人4ゴジータ_超必殺技：ウルトラビッグバンかめはめ波
--sp_effect_a1_00496
--sp2877

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163996; --スタート〜かめはめ波構え ef_001
SP_01b = 163997; --スタート〜かめはめ波構え ef_001b
SP_02  = 163998; --かめはめ波発射〜フィニッシュ ef_002
SP_02b = 163999; --かめはめ波発射〜フィニッシュ ef_002b

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

ENABLE_AUTO_TIME_STRETCH(0.86);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- スタート〜かめはめ波構え
-------------------------------------------------
MAX_FRAME_0 = 742;
MAX_FRAME_2 = 422;

MAX_FRAME_ALL = MAX_FRAME_0 + 94 + MAX_FRAME_2;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- スタート〜かめはめ波構え(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_ALL, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_ALL, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_ALL, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_ALL, start_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 656;

-- ** 顔カットイン ** --
--[[
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
]]

speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
]]
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --

setDisp( spep_0 + 180 + OFFSET_X , 1, 1);
setDisp( spep_0 + 252 + OFFSET_X , 1, 0);

changeAnime( spep_0 + 180 + OFFSET_X , 1, 117 );

setMoveKey( spep_0 + 180 + OFFSET_X , 1, 3.8, 11.5 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X , 1, 3.8, 11.5 , 0 );

setScaleKey( spep_0 + 180 + OFFSET_X , 1, 0.28, 0.28 );
setScaleKey( spep_0 + 252 + OFFSET_X , 1, 0.28, 0.28 );

setRotateKey( spep_0 + 180 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 252 + OFFSET_X , 1, 0 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 270, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--服なびく
SE002 = playSeVer2( spep_0 + 0, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 60 );
SE003 = playSeVer2( spep_0 + 22, 1333, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE003, 63 );
--画面遷移
SE004 = playSeVer2( spep_0 + 62, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE004, 66 );
--構える
SE005 = playSeVer2( spep_0 + 100, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 100, SE005, 59 );
setPitch( spep_0 + 100, SE005, -600 );
setTimeStretch( SE005, 0.6, 30, 4 );
--気弾溜め（ロング）
SE006 = playSeVer2( spep_0 + 306, 1400, "",spep_0 + 770, 10, 28, -1);
setStartTimeMs( SE006, 2967 );
--構える
SE007 = playSeVer2( spep_0 + 148, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE007, 68 );
SE008 = playSeVer2( spep_0 + 158, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE008, 48 );
--気弾溜め（ロング）
SE009 = playSeVer2( spep_0 + 260, 1397, "",spep_0 + 782, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 212, SE009, 76 );
setPitch( spep_0 + 260, SE009, 500 );
setStartTimeMs( SE009, 800 );


--溜め開始
SE010 = playSeVer2( spep_0 + 224, 1328, "", 0, 2, 0, -1);
setStartTimeMs( SE010, 167 );
SE011 = playSeVer2( spep_0 + 226, 1273, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE011, 79 );
setPitch( spep_0 + 226, SE011, 800 );
setTimeStretch( SE011, 1.53, 30, 4 );
SE012 = playSeVer2( spep_0 + 226, 1273, "", 0, 0, 0, -1);
setPitch( spep_0 + 226, SE012, -400 );
setTimeStretch( SE012, 0.73, 30, 4 );
--手を合わせる
SE013 = playSeVer2( spep_0 + 228, 1003, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 236, 1006, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 236, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 236, SE015, 65 );
--気弾膨れ上がる
SE016 = playSeVer2( spep_0 + 260, 1488, "",spep_0 + 376, 0, 36, -1);
SE017 = playSeVer2( spep_0 + 260, 1043, "",spep_0 + 370, 0, 20, -1);
SE018 = playSeVer2( spep_0 + 264, 1253, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE018, 78 );
--気弾を錬成する
SE019 = playSeVer2( spep_0 + 318, 1443, "",spep_0 + 516, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 318, SE019, 116 );
SE020 = playSeVer2( spep_0 + 318, 1152, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE020, 85 );
SE021 = playSeVer2( spep_0 + 334, 1445, "", 0, 0, 0, -1);
--気弾溜め（ロング）
SE022 = playSeVer2( spep_0 + 446, 1490, "",spep_0 + 770, 0, 24, -1);
--気弾完成
SE023 = playSeVer2( spep_0 + 446, 1122, "",spep_0 + 70, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 446, SE023, 71 );
SE024 = playSeVer2( spep_0 + 456, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 456, SE024, 71 );
--画面遷移
SE025 = playSeVer2( spep_0 + 584, 8, "", 0, 0, 0, -1);
--オーラ
SE026 = playSeVer2( spep_0 + 584, 1176, "",spep_0 + 770, 0, 22, -1);
--腕前に出す
SE027 = playSeVer2( spep_0 + 632, 1004, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 656  

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--発射前溜め
SE028 = playSeVer2( spep_1 + 72, 1400, "",spep_1 + 214, 10, 30, -1);
setStartTimeMs( SE028, 2967 );
--顔カットイン
--SE029 = playSeVer2( spep_0 + 666, 1018, "", 0, 0, 0, -1);
--発射前溜め
SE030 = playSeVer2( spep_1 + 82, 1490, "",spep_1 + 214, 8, 28, -1);
setStartTimeMs( SE030, 2600 );
--カードカットイン
--SE031 = playSeVer2( spep_1 + 2, 1035, "", 0, 0, 0, -1);
--発射前溜め
SE032 = playSeVer2( spep_1 + 70, 1397, "",spep_1 + 228, 0, 20, -1);
SE033 = playSeVer2( spep_1 + 86, 1176, "",spep_1 + 234, 0, 24, -1);
SE034 = playSeVer2( spep_1 + 86, 1466, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE034, 85 );

-------------------------------------------------
-- かめはめ波発射〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 422;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波発射〜フィニッシュ(ef_002)
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

setDisp( spep_2 + 114 + OFFSET_X , 1, 1);
setDisp( spep_2 + 130 + OFFSET_X , 1, 0);

changeAnime( spep_2 + 114 + OFFSET_X , 1, 117);
changeAnime( spep_2 + 114 + OFFSET_X , 1, 117);

setMoveKey( spep_2 + 114 + OFFSET_X , 1, -90, -21 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X , 1, -90, -21 , 0 );

setScaleKey( spep_2 + 114 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_2 + 130 + OFFSET_X , 1, 0.5, 0.5 );

setRotateKey( spep_2 + 114 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 130 + OFFSET_X , 1, 0 );

setBlendColor(  spep_2 + 126 + OFFSET_X , 1, 0, 0.35, 0.35, 0.64, 0.2);
setBlendColor(  spep_2 + 128 + OFFSET_X , 1, 0, 0.35, 0.35, 0.64, 0.5);
setBlendColor(  spep_2 + 130 + OFFSET_X , 1, 0, 0, 0, 0, 0);


-- ** 音 ** --

--気弾発射
SE035 = playSeVer2( spep_2 + 90, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE035, 74 );
SE036 = playSeVer2( spep_2 + 90, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE036, 74 );
SE037 = playSeVer2( spep_2 + 90, 1285, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE037, 74 );
SE038 = playSeVer2( spep_2 + 90, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE038, 74 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 120; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    -- ** 敵キャラクター ** --
    setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0); --回避後の敵の色戻す

    playSe( SP_dodge - 12, 1042);

    stopSe( SP_dodge - 12, SE032, 0);
    stopSe( SP_dodge - 12, SE033, 0);
    stopSe( SP_dodge - 12, SE034, 0);
    stopSe( SP_dodge - 12, SE035, 0);
    stopSe( SP_dodge - 12, SE036, 0);
    stopSe( SP_dodge - 12, SE037, 0);
    stopSe( SP_dodge - 12, SE038, 0);

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


--気弾飛んでいく
SE039 = playSeVer2( spep_2 + 148, 1258, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 202, 1423, "",spep_2 + 334, 0, 68, -1);
setSeVolumeByWorkId( spep_2 + 202, SE040, 129 );
--爆発
SE041 = playSeVer2( spep_2 + 252, 1069, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 264, 1159, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 288, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 272); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 422

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- スタート〜かめはめ波構え
-------------------------------------------------
MAX_FRAME_0 = 742;
MAX_FRAME_2 = 422;

MAX_FRAME_ALL = MAX_FRAME_0 + 94 + MAX_FRAME_2;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- スタート〜かめはめ波構え(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
--[[
spep_x = spep_0 + 754;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え

speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);
]]

-- ** 敵キャラクター ** --

setDisp( spep_0 + 180 + OFFSET_X , 1, 1);
setDisp( spep_0 + 252 + OFFSET_X , 1, 0);

changeAnime( spep_0 + 180 + OFFSET_X , 1, 17 );

setMoveKey( spep_0 + 180 + OFFSET_X , 1, -3.8, 11.5 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X , 1, -3.8, 11.5 , 0 );

setScaleKey( spep_0 + 180 + OFFSET_X , 1, 0.28, 0.28 );
setScaleKey( spep_0 + 252 + OFFSET_X , 1, 0.28, 0.28 );

setRotateKey( spep_0 + 180 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 252 + OFFSET_X , 1, 0 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 270, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--服なびく
SE002 = playSeVer2( spep_0 + 0, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 60 );
SE003 = playSeVer2( spep_0 + 22, 1333, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE003, 63 );
--画面遷移
SE004 = playSeVer2( spep_0 + 62, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE004, 66 );
--構える
SE005 = playSeVer2( spep_0 + 100, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 100, SE005, 59 );
setPitch( spep_0 + 100, SE005, -600 );
setTimeStretch( SE005, 0.6, 30, 4 );
--気弾溜め（ロング）
SE006 = playSeVer2( spep_0 + 306, 1400, "",spep_0 + 770, 10, 28, -1);
setStartTimeMs( SE006, 2967 );
--構える
SE007 = playSeVer2( spep_0 + 148, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE007, 68 );
SE008 = playSeVer2( spep_0 + 158, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE008, 48 );
--気弾溜め（ロング）
SE009 = playSeVer2( spep_0 + 260, 1397, "",spep_0 + 782, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 212, SE009, 76 );
setPitch( spep_0 + 260, SE009, 500 );
setStartTimeMs( SE009, 800 );


--溜め開始
SE010 = playSeVer2( spep_0 + 224, 1328, "", 0, 2, 0, -1);
setStartTimeMs( SE010, 167 );
SE011 = playSeVer2( spep_0 + 226, 1273, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE011, 79 );
setPitch( spep_0 + 226, SE011, 800 );
setTimeStretch( SE011, 1.53, 30, 4 );
SE012 = playSeVer2( spep_0 + 226, 1273, "", 0, 0, 0, -1);
setPitch( spep_0 + 226, SE012, -400 );
setTimeStretch( SE012, 0.73, 30, 4 );
--手を合わせる
SE013 = playSeVer2( spep_0 + 228, 1003, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 236, 1006, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 236, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 236, SE015, 65 );
--気弾膨れ上がる
SE016 = playSeVer2( spep_0 + 260, 1488, "",spep_0 + 376, 0, 36, -1);
SE017 = playSeVer2( spep_0 + 260, 1043, "",spep_0 + 370, 0, 20, -1);
SE018 = playSeVer2( spep_0 + 264, 1253, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE018, 78 );
--気弾を錬成する
SE019 = playSeVer2( spep_0 + 318, 1443, "",spep_0 + 516, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 318, SE019, 116 );
SE020 = playSeVer2( spep_0 + 318, 1152, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE020, 85 );
SE021 = playSeVer2( spep_0 + 334, 1445, "", 0, 0, 0, -1);
--気弾溜め（ロング）
SE022 = playSeVer2( spep_0 + 446, 1490, "",spep_0 + 770, 0, 24, -1);
--気弾完成
SE023 = playSeVer2( spep_0 + 446, 1122, "",spep_0 + 70, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 446, SE023, 71 );
SE024 = playSeVer2( spep_0 + 456, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 456, SE024, 71 );
--画面遷移
SE025 = playSeVer2( spep_0 + 584, 8, "", 0, 0, 0, -1);
--オーラ
SE026 = playSeVer2( spep_0 + 584, 1176, "",spep_0 + 770, 0, 22, -1);
--腕前に出す
SE027 = playSeVer2( spep_0 + 632, 1004, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 656  

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--発射前溜め
SE028 = playSeVer2( spep_1 + 72, 1400, "",spep_1 + 214, 10, 30, -1);
setStartTimeMs( SE028, 2967 );
--顔カットイン
--SE029 = playSeVer2( spep_0 + 666, 1018, "", 0, 0, 0, -1);
--発射前溜め
SE030 = playSeVer2( spep_1 + 82, 1490, "",spep_1 + 214, 8, 28, -1);
setStartTimeMs( SE030, 2600 );
--カードカットイン
--SE031 = playSeVer2( spep_1 + 2, 1035, "", 0, 0, 0, -1);
--発射前溜め
SE032 = playSeVer2( spep_1 + 70, 1397, "",spep_1 + 228, 0, 20, -1);
SE033 = playSeVer2( spep_1 + 86, 1176, "",spep_1 + 234, 0, 24, -1);
SE034 = playSeVer2( spep_1 + 86, 1466, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE034, 85 );

-------------------------------------------------
-- かめはめ波発射〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 422;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波発射〜フィニッシュ(ef_002)
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

setDisp( spep_2 + 114 + OFFSET_X , 1, 1);
setDisp( spep_2 + 130 + OFFSET_X , 1, 0);

changeAnime( spep_2 + 114 + OFFSET_X , 1, 17);
changeAnime( spep_2 + 114 + OFFSET_X , 1, 17);

setMoveKey( spep_2 + 114 + OFFSET_X , 1, 90, -21 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X , 1, 90, -21 , 0 );

setScaleKey( spep_2 + 114 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_2 + 130 + OFFSET_X , 1, 0.5, 0.5 );

setRotateKey( spep_2 + 114 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 130 + OFFSET_X , 1, 0 );

setBlendColor(  spep_2 + 126 + OFFSET_X , 1, 0, 0.35, 0.35, 0.64, 0.2);
setBlendColor(  spep_2 + 128 + OFFSET_X , 1, 0, 0.35, 0.35, 0.64, 0.5);
setBlendColor(  spep_2 + 130 + OFFSET_X , 1, 0, 0, 0, 0, 0);


-- ** 音 ** --

--気弾発射
SE035 = playSeVer2( spep_2 + 90, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE035, 74 );
SE036 = playSeVer2( spep_2 + 90, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE036, 74 );
SE037 = playSeVer2( spep_2 + 90, 1285, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE037, 74 );
SE038 = playSeVer2( spep_2 + 90, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE038, 74 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 120; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    -- ** 敵キャラクター ** --
    setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0); --回避後の敵の色戻す

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE032, 0);
    stopSe( SP_dodge - 12, SE033, 0);
    stopSe( SP_dodge - 12, SE034, 0);
    stopSe( SP_dodge - 12, SE035, 0);
    stopSe( SP_dodge - 12, SE036, 0);
    stopSe( SP_dodge - 12, SE037, 0);
    stopSe( SP_dodge - 12, SE038, 0);

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
--気弾飛んでいく
SE039 = playSeVer2( spep_2 + 148, 1258, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 202, 1423, "",spep_2 + 334, 0, 68, -1);
setSeVolumeByWorkId( spep_2 + 202, SE040, 129 );
--爆発
SE041 = playSeVer2( spep_2 + 252, 1069, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 264, 1159, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 288, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 272); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 422


end