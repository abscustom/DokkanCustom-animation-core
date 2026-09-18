--4022600:スーパージャネンバ_激怒超必殺_鬼刃閃_sp2223
--sp_effect_b2_00045
--sp2223

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01 = 157610; --構え→斬撃攻撃×３ ef_001
SP_02 = 157611; --敵に斬撃があたる：手前 ef_002_f
SP_03 = 157612; --敵に斬撃があたる：奥 ef_002_b
SP_04 = 157613; --構える ef_003
SP_05 = 157614; --画面手前に迫る→斬撃 ef_004
SP_06 = 157615; --斬撃が敵を飲み込む：手前 ef_005_f
SP_07 = 157616; --斬撃が敵を飲み込む：奥 ef_005_b

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 構え→斬撃攻撃×3(176F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 178, 0x100, -1, 0, 0, 0 );  --構え→斬撃攻撃×3 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 178, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 178, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 178, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 178 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 178, first_f, 0 );

-- ** 音 ** --
--構え
SE001 = playSe( spep_0 + 0, 1072 );
setTimeStretch( SE001, 0.87, 10, 1 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 52 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    --setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    --setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    --setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

--斬りつけ１
SE002 = playSe( spep_0 + 76, 1177 );
setSeVolumeByWorkId( spep_0 + 76, SE002, 25 );
setSeVolumeByWorkId( spep_0 + 78, SE002, 50 );
setSeVolumeByWorkId( spep_0 + 80, SE002, 75 );
setSeVolumeByWorkId( spep_0 + 82, SE002, 100 );
stopSe( spep_0 + 102, SE002, 18 );
setStartTimeMs( SE002,  1333 );

--構え
SE003 = playSe( spep_0 + 14, 1153 );
setSeVolumeByWorkId( spep_0 + 14, SE003, 10 );
setSeVolumeByWorkId( spep_0 + 17, SE003, 20 );
setSeVolumeByWorkId( spep_0 + 20, SE003, 30 );
setSeVolumeByWorkId( spep_0 + 23, SE003, 41 );
setSeVolumeByWorkId( spep_0 + 26, SE003, 52 );

--構え
SE004 = playSe( spep_0 + 14, 8 );
setSeVolumeByWorkId( spep_0 + 14, SE004, 89 );


--構え
SE006 = playSe( spep_0 + 24, 20 );
stopSe( spep_0 + 56, SE006, 34 );

--斬りつけ１
SE008 = playSe( spep_0 + 64, 1116 );
stopSe( spep_0 + 88, SE008, 12 );

--斬りつけ１
SE009 = playSe( spep_0 + 72, 1151 );
setSeVolumeByWorkId( spep_0 + 72, SE009, 119 );

--斬りつけ１
SE010 = playSe( spep_0 + 76, 1142 );

--斬りつけ１
SE011 = playSe( spep_0 + 78, 1032 );

--斬りつけ１
SE012 = playSe( spep_0 + 78, 1143 );
setSeVolumeByWorkId( spep_0 + 78, SE012, 45 );

--斬りつけ２
SE013 = playSe( spep_0 + 96, 1151 );

--斬りつけ２
SE005 = playSe( spep_0 + 96, 1177 );
setSeVolumeByWorkId( spep_0 + 96, SE005, 25 );
setSeVolumeByWorkId( spep_0 + 98, SE005, 50 );
setSeVolumeByWorkId( spep_0 + 100, SE005, 75 );
setSeVolumeByWorkId( spep_0 + 102, SE005, 100 );
stopSe( spep_0 + 132, SE005, 14 );
setStartTimeMs( SE005,  1333 );

--斬りつけ２
SE014 = playSe( spep_0 + 100, 1142 );

--斬りつけ２
SE015 = playSe( spep_0 + 102, 1032 );

--斬りつけ２
SE016 = playSe( spep_0 + 102, 1143 );
setSeVolumeByWorkId( spep_0 + 102, SE016, 47 );

--斬りつけ３
SE007 = playSe( spep_0 + 132, 1177 );
setSeVolumeByWorkId( spep_0 + 132, SE007, 25 );
setSeVolumeByWorkId( spep_0 + 134, SE007, 50 );
setSeVolumeByWorkId( spep_0 + 136, SE007, 75 );
setSeVolumeByWorkId( spep_0 + 138, SE007, 100 );
setStartTimeMs( SE007,  1333 );

--斬りつけ３
SE018 = playSe( spep_0 + 132, 1151 );

--斬りつけ３
SE019 = playSe( spep_0 + 136, 1142 );

--斬りつけ３
SE020 = playSe( spep_0 + 138, 1032 );

--斬りつけ３
SE021 = playSe( spep_0 + 138, 1143 );
setSeVolumeByWorkId( spep_0 + 138, SE021, 51 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 178 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 178;

------------------------------------------------------
-- 敵に斬撃があたる(116F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_1 + 0, SP_02, 118, 0x100, -1, 0, 0, 0 );  --敵に斬撃があたる：手前 ef_002_f
setEffMoveKey( spep_1 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 118, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 118, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, shot_f, 0 );
setEffRotateKey( spep_1 + 118, shot_f, 0 );
setEffAlphaKey( spep_1 + 0, shot_f, 255 );
setEffAlphaKey( spep_1 + 118 -1, shot_f, 255 );
setEffAlphaKey( spep_1 + 118, shot_f, 0 );

shot_b = entryEffectLife( spep_1 + 0, SP_03, 118, 0x80, -1, 0, 0, 0 );  --敵に斬撃があたる：奥 ef_002_b
setEffMoveKey( spep_1 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 118, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 118, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, shot_b, 0 );
setEffRotateKey( spep_1 + 118, shot_b, 0 );
setEffAlphaKey( spep_1 + 0, shot_b, 255 );
setEffAlphaKey( spep_1 + 118 -1, shot_b, 255 );
setEffAlphaKey( spep_1 + 118, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 118, 1, 0 );
changeAnime( spep_1 + 0, 1, 117 );
changeAnime( spep_1 +1 + 20, 1, 6 );
changeAnime( spep_1 +1 + 44, 1, 108 );
changeAnime( spep_1 +1 + 70, 1, 6 );

a1 = 20;
setMoveKey( spep_1 + 0, 1, -12.6, -7.1 , 0 );
setMoveKey( spep_1 + 1, 1, -12.6, -7.1 , 0 );
setMoveKey( spep_1 + 2, 1, -12.6, -7.1 , 0 );

setMoveKey( spep_1 -3 + 6, 1, -16.4, -7.1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -20.2, -7.1 , 0 );

setMoveKey( spep_1 +1 + 6, 1, -24.1, -7.1 , 0 );
setMoveKey( spep_1 +1 + 8, 1, -27.9, -7.1 , 0 );
setMoveKey( spep_1 +1 + 10, 1, -31.7, -7 , 0 );
setMoveKey( spep_1 +1 + 12, 1, -31.8, -7 , 0 );
setMoveKey( spep_1 +1 + 14, 1, -31.8, -7 , 0 );
setMoveKey( spep_1 +1 + 16, 1, -31.9, -7 , 0 );
setMoveKey( spep_1 +1 + 19, 1, -32, -7 , 0 );
setMoveKey( spep_1 +1 + 20, 1, -37.4, 1.9 , 0 );
setMoveKey( spep_1 +1 + 22, 1, -31.3, -5.6 , 0 );
setMoveKey( spep_1 +1 + 24, 1, -41.6, -8.1 , 0 );
setMoveKey( spep_1 +1 + 26, 1, -35.1, 4.9 , 0 );
setMoveKey( spep_1 +1 + 28, 1, -37.9, 6.8 , 0 );
setMoveKey( spep_1 +1 + 30, 1, -40.7, 8.6 , 0 );
setMoveKey( spep_1 +1 + 32, 1, -43.5, 10.5 , 0 );
setMoveKey( spep_1 +1 + 34, 1, -46.3, 12.3 , 0 );
setMoveKey( spep_1 +1 + 36, 1, -49.1, 14.2 , 0 );
setMoveKey( spep_1 +1 + 38, 1, -51.9, 16 , 0 );
setMoveKey( spep_1 +1 + 40, 1, -54.7, 17.9 , 0 );
setMoveKey( spep_1 +1 + 43, 1, -57.5, 19.8 , 0 );
setMoveKey( spep_1 +1 + 44, 1, 1 +a1, 7.1 , 0 );
setMoveKey( spep_1 +1 + 46, 1, -2.7 +a1, 18.4 , 0 );
setMoveKey( spep_1 +1 + 48, 1, 8.4 +a1, 10.9 , 0 );
setMoveKey( spep_1 +1 + 50, 1, 3.2 +a1, 8.3 , 0 );
setMoveKey( spep_1 +1 + 52, 1, 14.8 +a1, 21.4 , 0 );
setMoveKey( spep_1 +1 + 54, 1, 19.8 +a1, 22 , 0 );
setMoveKey( spep_1 +1 + 56, 1, 21.6 +a1, 23.9 , 0 );
setMoveKey( spep_1 +1 + 58, 1, 23.5 +a1, 25.9 , 0 );
setMoveKey( spep_1 +1 + 60, 1, 25.4 +a1, 27.8 , 0 );
setMoveKey( spep_1 +1 + 62, 1, 27.2 +a1, 29.7 , 0 );
setMoveKey( spep_1 +1 + 64, 1, 29.1 +a1, 31.7 , 0 );
setMoveKey( spep_1 +1 + 66, 1, 30.9 +a1, 33.6 , 0 );
setMoveKey( spep_1 +1 + 69, 1, 32.9 +a1, 35.6 , 0 );
setMoveKey( spep_1 +1 + 70, 1, -14.6, 61.4 , 0 );
setMoveKey( spep_1 +1 + 72, 1, -6.7, 52 , 0 );
setMoveKey( spep_1 +1 + 74, 1, -15.2, 47.7 , 0 );
setMoveKey( spep_1 +1 + 76, 1, -6.9, 58.9 , 0 );
setMoveKey( spep_1 +1 + 78, 1, -5.1, 57.8 , 0 );
setMoveKey( spep_1 +1 + 80, 1, -5.7, 58.3 , 0 );
setMoveKey( spep_1 +1 + 82, 1, -6.3, 58.9 , 0 );
setMoveKey( spep_1 +1 + 84, 1, -6.9, 59.5 , 0 );
setMoveKey( spep_1 +1 + 86, 1, -7.5, 60 , 0 );
setMoveKey( spep_1 +1 + 88, 1, -8.1, 60.6 , 0 );
setMoveKey( spep_1 +1 + 90, 1, -8.7, 61.2 , 0 );
setMoveKey( spep_1 +1 + 92, 1, -9.3, 61.7 , 0 );
setMoveKey( spep_1 +1 + 94, 1, -9.9, 62.3 , 0 );
setMoveKey( spep_1 +1 + 96, 1, -10.5, 62.9 , 0 );
setMoveKey( spep_1 +1 + 98, 1, -11.1, 63.4 , 0 );
setMoveKey( spep_1 +1 + 100, 1, -11.7, 64 , 0 );
setMoveKey( spep_1 +1 + 102, 1, -12.3, 64.6 , 0 );
setMoveKey( spep_1 +1 + 104, 1, -12.9, 65.2 , 0 );
setMoveKey( spep_1 +1 + 106, 1, -13.5, 65.8 , 0 );
setMoveKey( spep_1 +1 + 108, 1, -14.2, 66.3 , 0 );
setMoveKey( spep_1 +1 + 110, 1, -14.7, 66.9 , 0 );
setMoveKey( spep_1 +1 + 112, 1, -15.4, 67.5 , 0 );
setMoveKey( spep_1 +1 + 114, 1, -16, 68.1 , 0 );
setMoveKey( spep_1 +1 + 116, 1, -16.6, 68.7 , 0 );
setMoveKey( spep_1 +1 + 117, 1, -17.2, 69.2 , 0 );
--setMoveKey( spep_1 +1 + 119, 1, -17.2, 69.2 , 0 );

s1 = 0.1;
setScaleKey( spep_1 + 0, 1, 0.8 +s1, 0.8 +s1 );
setScaleKey( spep_1 + 1, 1, 0.8 +s1, 0.8 +s1 );
setScaleKey( spep_1 + 2, 1, 0.8 +s1, 0.8 +s1 );

setScaleKey( spep_1 -3 + 6, 1, 1.04 +s1, 1.04 +s1 );
setScaleKey( spep_1 -3 + 8, 1, 1.28 +s1, 1.28 +s1 );

setScaleKey( spep_1 +1 + 6, 1, 1.52 +s1, 1.52 +s1 );
setScaleKey( spep_1 +1 + 8, 1, 1.76 +s1, 1.76 +s1 );
setScaleKey( spep_1 +1 + 10, 1, 2 +s1, 2 +s1 );
setScaleKey( spep_1 +1 + 14, 1, 2 +s1, 2 +s1 );
setScaleKey( spep_1 +1 + 16, 1, 2.01 +s1, 2.01 +s1 );
setScaleKey( spep_1 +1 + 20, 1, 2.01 +s1, 2.01 +s1 );
setScaleKey( spep_1 +1 + 22, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_1 +1 + 24, 1, 1.96 +s1, 1.96 +s1 );
setScaleKey( spep_1 +1 + 26, 1, 1.94 +s1, 1.94 +s1 );
setScaleKey( spep_1 +1 + 28, 1, 1.91 +s1, 1.91 +s1 );
setScaleKey( spep_1 +1 + 30, 1, 1.89 +s1, 1.89 +s1 );
setScaleKey( spep_1 +1 + 32, 1, 1.86 +s1, 1.86 +s1 );
setScaleKey( spep_1 +1 + 34, 1, 1.84 +s1, 1.84 +s1 );
setScaleKey( spep_1 +1 + 36, 1, 1.81 +s1, 1.81 +s1 );
setScaleKey( spep_1 +1 + 38, 1, 1.79 +s1, 1.79 +s1 );
setScaleKey( spep_1 +1 + 40, 1, 1.76 +s1, 1.76 +s1 );
setScaleKey( spep_1 +1 + 43, 1, 1.74 +s1, 1.74 +s1 );
setScaleKey( spep_1 +1 + 44, 1, 1.48 +s1, 1.48 +s1 );
setScaleKey( spep_1 +1 + 46, 1, 1.47 +s1, 1.47 +s1 );
setScaleKey( spep_1 +1 + 48, 1, 1.46 +s1, 1.46 +s1 );
setScaleKey( spep_1 +1 + 50, 1, 1.44 +s1, 1.44 +s1 );
setScaleKey( spep_1 +1 + 52, 1, 1.43 +s1, 1.43 +s1 );
setScaleKey( spep_1 +1 + 54, 1, 1.42 +s1, 1.42 +s1 );
setScaleKey( spep_1 +1 + 56, 1, 1.4 +s1, 1.4 +s1 );
setScaleKey( spep_1 +1 + 58, 1, 1.39 +s1, 1.39 +s1 );
setScaleKey( spep_1 +1 + 60, 1, 1.38 +s1, 1.38 +s1 );
setScaleKey( spep_1 +1 + 62, 1, 1.36 +s1, 1.36 +s1 );
setScaleKey( spep_1 +1 + 64, 1, 1.35 +s1, 1.35 +s1 );
setScaleKey( spep_1 +1 + 66, 1, 1.34 +s1, 1.34 +s1 );
setScaleKey( spep_1 +1 + 69, 1, 1.32 +s1, 1.32 +s1 );
setScaleKey( spep_1 +1 + 70, 1, 0.98 +s1, 0.98 +s1 );
setScaleKey( spep_1 +1 + 72, 1, 0.97 +s1, 0.97 +s1 );
setScaleKey( spep_1 +1 + 74, 1, 0.97 +s1, 0.97 +s1 );
setScaleKey( spep_1 +1 + 76, 1, 0.96 +s1, 0.96 +s1 );
setScaleKey( spep_1 +1 + 78, 1, 0.96 +s1, 0.96 +s1 );
setScaleKey( spep_1 +1 + 80, 1, 0.95 +s1, 0.95 +s1 );
setScaleKey( spep_1 +1 + 82, 1, 0.95 +s1, 0.95 +s1 );
setScaleKey( spep_1 +1 + 84, 1, 0.94 +s1, 0.94 +s1 );
setScaleKey( spep_1 +1 + 86, 1, 0.94 +s1, 0.94 +s1 );
setScaleKey( spep_1 +1 + 88, 1, 0.93 +s1, 0.93 +s1 );
setScaleKey( spep_1 +1 + 90, 1, 0.93 +s1, 0.93 +s1 );
setScaleKey( spep_1 +1 + 92, 1, 0.92 +s1, 0.92 +s1 );
setScaleKey( spep_1 +1 + 94, 1, 0.92 +s1, 0.92 +s1 );
setScaleKey( spep_1 +1 + 96, 1, 0.91 +s1, 0.91 +s1 );
setScaleKey( spep_1 +1 + 98, 1, 0.91 +s1, 0.91 +s1 );
setScaleKey( spep_1 +1 + 100, 1, 0.9 +s1, 0.9 +s1);
setScaleKey( spep_1 +1 + 104, 1, 0.9 +s1, 0.9 +s1);
setScaleKey( spep_1 +1 + 106, 1, 0.89 +s1, 0.89 +s1 );
setScaleKey( spep_1 +1 + 108, 1, 0.89 +s1, 0.89 +s1 );
setScaleKey( spep_1 +1 + 110, 1, 0.88 +s1, 0.88 +s1 );
setScaleKey( spep_1 +1 + 112, 1, 0.88 +s1, 0.88 +s1 );
setScaleKey( spep_1 +1 + 114, 1, 0.87 +s1, 0.87 +s1 );
setScaleKey( spep_1 +1 + 116, 1, 0.87 +s1, 0.87 +s1 );
setScaleKey( spep_1 +1 + 117, 1, 0.86 +s1, 0.86 +s1 );
--setScaleKey( spep_1 +1 + 119, 1, 0.86, 0.86 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 +1 + 19, 1, 0 );
setRotateKey( spep_1 +1 + 20, 1, 40.9 );
setRotateKey( spep_1 +1 + 22, 1, 40.3 );
setRotateKey( spep_1 +1 + 24, 1, 39.5 );
setRotateKey( spep_1 +1 + 26, 1, 38.8 );
setRotateKey( spep_1 +1 + 28, 1, 38.1 );
setRotateKey( spep_1 +1 + 30, 1, 37.4 );
setRotateKey( spep_1 +1 + 32, 1, 36.6 );
setRotateKey( spep_1 +1 + 34, 1, 35.9 );
setRotateKey( spep_1 +1 + 36, 1, 35.2 );
setRotateKey( spep_1 +1 + 38, 1, 34.5 );
setRotateKey( spep_1 +1 + 40, 1, 33.7 );
setRotateKey( spep_1 +1 + 43, 1, 33 );
setRotateKey( spep_1 +1 + 44, 1, 0 );
setRotateKey( spep_1 +1 + 46, 1, -0.7 );
setRotateKey( spep_1 +1 + 48, 1, -1.5 );
setRotateKey( spep_1 +1 + 50, 1, -2.2 );
setRotateKey( spep_1 +1 + 52, 1, -3 );
setRotateKey( spep_1 +1 + 54, 1, -3.7 );
setRotateKey( spep_1 +1 + 56, 1, -4.5 );
setRotateKey( spep_1 +1 + 58, 1, -5.2 );
setRotateKey( spep_1 +1 + 60, 1, -6 );
setRotateKey( spep_1 +1 + 62, 1, -6.7 );
setRotateKey( spep_1 +1 + 64, 1, -7.5 );
setRotateKey( spep_1 +1 + 66, 1, -8.2 );
setRotateKey( spep_1 +1 + 69, 1, -9 );
setRotateKey( spep_1 +1 + 70, 1, 20 );
setRotateKey( spep_1 +1 + 72, 1, 19.2 );
setRotateKey( spep_1 +1 + 74, 1, 18.4 );
setRotateKey( spep_1 +1 + 76, 1, 17.6 );
setRotateKey( spep_1 +1 + 78, 1, 16.8 );
setRotateKey( spep_1 +1 + 80, 1, 16 );
setRotateKey( spep_1 +1 + 82, 1, 15.3 );
setRotateKey( spep_1 +1 + 84, 1, 14.5 );
setRotateKey( spep_1 +1 + 86, 1, 13.7 );
setRotateKey( spep_1 +1 + 88, 1, 12.9 );
setRotateKey( spep_1 +1 + 90, 1, 12.1 );
setRotateKey( spep_1 +1 + 92, 1, 11.3 );
setRotateKey( spep_1 +1 + 94, 1, 10.5 );
setRotateKey( spep_1 +1 + 96, 1, 9.7 );
setRotateKey( spep_1 +1 + 98, 1, 8.9 );
setRotateKey( spep_1 +1 + 100, 1, 8.1 );
setRotateKey( spep_1 +1 + 102, 1, 7.3 );
setRotateKey( spep_1 +1 + 104, 1, 6.5 );
setRotateKey( spep_1 +1 + 106, 1, 5.8 );
setRotateKey( spep_1 +1 + 108, 1, 5 );
setRotateKey( spep_1 +1 + 110, 1, 4.2 );
setRotateKey( spep_1 +1 + 112, 1, 3.4 );
setRotateKey( spep_1 +1 + 114, 1, 2.6 );
setRotateKey( spep_1 +1 + 116, 1, 1.8 );
setRotateKey( spep_1 +1 + 117, 1, 1 );
--setRotateKey( spep_1 +1 + 119, 1, 1 );

-- ** 音 ** --
--敵ヒット１
SE023 = playSe( spep_1 + 6, 1142 );

--敵ヒット１
SE024 = playSe( spep_1 + 8, 1117,"",0.6 );
stopSe( spep_1 + 26, SE024, 10 );

--敵ヒット１
SE025 = playSe( spep_1 + 8, 1170 );
setSeVolumeByWorkId( spep_1 + 8, SE025, 81 );
stopSe( spep_1 + 38, SE025, 20 );

--敵ヒット１
SE017 = playSe( spep_1 + 10, 1177 );
setSeVolumeByWorkId( spep_1 + 10, SE017, 31 );
setSeVolumeByWorkId( spep_1 + 12, SE017, 62 );
setSeVolumeByWorkId( spep_1 + 14, SE017, 92 );
setSeVolumeByWorkId( spep_1 + 16, SE017, 123 );
setStartTimeMs( SE017,  1333 );

--敵ヒット１
SE026 = playSe( spep_1 + 18, 1238 );
setPitch( spep_1 + 18, SE026, 200 );
setTimeStretch( SE026, 1.13, 10, 1 );
stopSe( spep_1 + 38, SE026, 20 );

--敵ヒット２
SE027 = playSe( spep_1 + 36, 1142 );

--敵ヒット２
SE028 = playSe( spep_1 + 38, 1117,"",0.6 );
stopSe( spep_1 + 56, SE028, 10 );

--敵ヒット２
SE029 = playSe( spep_1 + 48, 1238 );
setPitch( spep_1 + 48, SE029, 200 );
setTimeStretch( SE029, 1.13, 10, 1 );

--敵ヒット３
SE030 = playSe( spep_1 + 62, 1142 );

--敵ヒット３
SE031 = playSe( spep_1 + 64, 1117,"",0.6 );
stopSe( spep_1 + 80, SE031, 10 );

--敵ヒット３
SE032 = playSe( spep_1 + 64, 1170 );

--敵ヒット３
SE022 = playSe( spep_1 + 66, 1177 );
setSeVolumeByWorkId( spep_1 + 66, SE022, 25 );
setSeVolumeByWorkId( spep_1 + 68, SE022, 50 );
setSeVolumeByWorkId( spep_1 + 70, SE022, 75 );
setSeVolumeByWorkId( spep_1 + 72, SE022, 100 );
stopSe( spep_1 +112 + 2, SE022, 16 );
setStartTimeMs( SE022,  1333 );

--敵ヒット３
SE033 = playSe( spep_1 + 74, 1238 );
setPitch( spep_1 + 74, SE033, 200 );
setTimeStretch( SE033, 1.13, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 118 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 118;

------------------------------------------------------
-- 構える(96F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_2 + 0, SP_04, 88, 0x80, -1, 0, 0, 0 );  --構える ef_003
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 88, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 88, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 88, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 88 -1, tame, 255 );
setEffAlphaKey( spep_2 + 88, tame, 0 );

spep_x = spep_2 + 2;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 90, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 90, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 90, 515.5 , 0 );
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

-- ** 音 ** --
--顔カットイン
SE034 = playSe( spep_2 + 10, 1018 );

--構える
SE035 = playSe( spep_2 + 10, 1006 );
setSeVolumeByWorkId( spep_2 + 10, SE035, 129 );
setPitch( spep_2 + 10, SE035, -400 );
setTimeStretch( SE035, 0.73, 10, 1 );

--構える
SE036 = playSe( spep_2 + 10, 1061 );
setSeVolumeByWorkId( spep_2 + 10, SE036, 68 );
stopSe( spep_2 + 28, SE036, 20 );

--構える
SE037 = playSe( spep_2 + 10, 1233 );
setSeVolumeByWorkId( spep_2 + 10, SE037, 92 );
setPitch( spep_2 + 10, SE037, -200 );
setTimeStretch( SE037, 0.87, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 88 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 80, 9, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 88;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_3 = 0;
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_3 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_3 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 画面手前に迫る→斬撃(106F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
lslash = entryEffectLife( spep_4 + 0, SP_05, 107, 0x100, -1, 0, 0, 0 );  --画面手前に迫る→斬撃   ef_004
setEffMoveKey( spep_4 + 0, lslash, 0, 0 , 0 );
setEffMoveKey( spep_4 + 107, lslash, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, lslash, 1.0, 1.0 );
setEffScaleKey( spep_4 + 107, lslash, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, lslash, 0 );
setEffRotateKey( spep_4 + 107, lslash, 0 );
setEffAlphaKey( spep_4 + 0, lslash, 255 );
setEffAlphaKey( spep_4 + 107 -1, lslash, 255 );
setEffAlphaKey( spep_4 + 107, lslash, 0 );

-- ** 音 ** --
--アップ
SE039 = playSe( spep_4 + 2, 9 );

--アップ
SE040 = playSe( spep_4 + 2, 1167 );
setSeVolumeByWorkId( spep_4 + 2, SE040, 64 );

--ラスト大振り
SE042 = playSe( spep_4 + 56, 1004 );

--ラスト大振り
SE043 = playSe( spep_4 + 68, 1061 );
setSeVolumeByWorkId( spep_4 + 68, SE043, 122 );
setPitch( spep_4 + 68, SE043, -400 );
setTimeStretch( SE043, 0.73, 40, 4 );

--ラスト大振り
SE044 = playSe( spep_4 + 68, 1142 );

--ラスト大振り
SE045 = playSe( spep_4 + 72, 1032 );

--ラスト大振り
SE046 = playSe( spep_4 + 72, 1153 );
setSeVolumeByWorkId( spep_4 + 72, SE046, 84 );
setPitch( spep_4 + 72, SE046, 300 );
setTimeStretch( SE046, 1.2, 40, 4 );

--ラスト大振り
SE047 = playSe( spep_4 + 84, 1109 );

--剣撃飛んでいく
SE041 = playSe( spep_4 + 90, 1177 );
setSeVolumeByWorkId( spep_4 + 90, SE036, 25 );
setSeVolumeByWorkId( spep_4 + 92, SE036, 50 );
setSeVolumeByWorkId( spep_4 + 94, SE036, 75 );
setSeVolumeByWorkId( spep_4 + 96, SE036, 100 );
stopSe( spep_4 +106 + 42, SE041, 18 );
setStartTimeMs( SE041,  1333 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 108 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 107;

------------------------------------------------------
-- 斬撃が敵を飲み込む(116F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --斬撃が敵を飲み込む：手前 ef_005_f
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 156, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 156, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 156, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 156, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --斬撃が敵を飲み込む：奥 ef_005_b
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 156, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 156, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 156, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 156, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 +1 + 34, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

setBlendColor( spep_5 + 20 +1, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_5 + 22 +1, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_5 + 24 +1, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_5 + 26 +1, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_5 + 28 +1, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_5 + 33 +1, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_5 + 34 +1, 1, 3, 0, 0, 0, 0 );

a5 = 0;
b5 = 10;
setMoveKey( spep_5 + 0, 1, -5.5 -a5, -84.4 +b5 , 0 );
setMoveKey( spep_5 + 1, 1, -5.5 -a5, -84.4 +b5 , 0 );
setMoveKey( spep_5 + 2, 1, -5.5 -a5, -84.4 +b5 , 0 );

setMoveKey( spep_5 -3 + 6, 1, -5.2 -a5, -87.2 +b5 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -5 -a5, -90.1 +b5 , 0 );

setMoveKey( spep_5 +1 + 6, 1, -4.7 -a5, -92.8 +b5 , 0 );
setMoveKey( spep_5 +1 + 8, 1, -4.5 -a5, -95.5 +b5 , 0 );
setMoveKey( spep_5 +1 + 10, 1, -4.3 -a5, -98.2 +b5 , 0 );
setMoveKey( spep_5 +1 + 12, 1, -4 -a5, -100.8 +b5 , 0 );
setMoveKey( spep_5 +1 + 14, 1, -3.8 -a5, -103.4 +b5 , 0 );
setMoveKey( spep_5 +1 + 16, 1, -3.5 -a5, -106 +b5 , 0 );
setMoveKey( spep_5 +1 + 18, 1, -3.3 -a5, -108.4 +b5 , 0 );
setMoveKey( spep_5 +1 + 20, 1, -3.1 -a5, -110.9 +b5 , 0 );
setMoveKey( spep_5 +1 + 22, 1, -2.8 -a5, -113.3 +b5 , 0 );
setMoveKey( spep_5 +1 + 24, 1, -2.6 -a5, -115.6 +b5 , 0 );
setMoveKey( spep_5 +1 + 26, 1, -2.4 -a5, -117.9 +b5 , 0 );
setMoveKey( spep_5 +1 + 28, 1, 8 -a5, -112 +b5 , 0 );
setMoveKey( spep_5 +1 + 30, 1, -14.8 -a5, -133.7 +b5 , 0 );
setMoveKey( spep_5 +1 + 32, 1, 12.7 -a5, -133 +b5 , 0 );
setMoveKey( spep_5 +1 + 34, 1, -12.3 -a5, -109.5 +b5 , 0 );

setScaleKey( spep_5 + 0, 1, 1.504, 1.504 );
setScaleKey( spep_5 + 1, 1, 1.504, 1.504 );
setScaleKey( spep_5 + 2, 1, 1.504, 1.504 );

setScaleKey( spep_5 -3 + 6, 1, 1.504, 1.504 );
setScaleKey( spep_5 -3 + 8, 1, 1.496, 1.496 );

setScaleKey( spep_5 +1 + 6, 1, 1.488, 1.488 );
setScaleKey( spep_5 +1 + 8, 1, 1.472, 1.472 );
setScaleKey( spep_5 +1 + 10, 1, 1.448, 1.448 );
setScaleKey( spep_5 +1 + 12, 1, 1.416, 1.416 );
setScaleKey( spep_5 +1 + 14, 1, 1.384, 1.384 );
setScaleKey( spep_5 +1 + 16, 1, 1.344, 1.344 );
setScaleKey( spep_5 +1 + 18, 1, 1.296, 1.296 );
setScaleKey( spep_5 +1 + 20, 1, 1.240, 1.240 );
setScaleKey( spep_5 +1 + 22, 1, 1.184, 1.184 );
setScaleKey( spep_5 +1 + 24, 1, 1.112, 1.112 );
setScaleKey( spep_5 +1 + 26, 1, 1.048, 1.048 );
setScaleKey( spep_5 +1 + 28, 1, 0.968, 0.968 );
setScaleKey( spep_5 +1 + 30, 1, 0.992, 0.992 );
setScaleKey( spep_5 +1 + 32, 1, 1.016, 1.016 );
setScaleKey( spep_5 +1 + 34, 1, 1.016, 1.016 );

setRotateKey( spep_5 + 0, 1, -40 );
setRotateKey( spep_5 +1 +34, 1, -40 );

-- ** 音 ** --
--ラスト剣撃ヒット
SE048 = playSe( spep_5 + 18, 1257,"",0.6 );
setSeVolumeByWorkId( spep_5 + 18, SE048, 114 );
setPitch( spep_5 + 18, SE048, -700 );
setTimeStretch( SE048, 0.63, 10, 1 );

--ラスト剣撃ヒット
SE049 = playSe( spep_5 + 32, 1295 );
setSeVolumeByWorkId( spep_5 + 32, SE049, 124 );
setPitch( spep_5 + 32, SE049, -500 );
setTimeStretch( SE049, 0.67, 40, 5 );

--ラスト剣撃ヒット
SE050 = playSe( spep_5 + 32, 1061 );
setSeVolumeByWorkId( spep_5 + 32, SE050, 104 );
setPitch( spep_5 + 32, SE050, -400 );
setTimeStretch( SE050, 0.73, 40, 5 );

--ラスト剣撃ヒット
SE051 = playSe( spep_5 + 32, 1153 );
setSeVolumeByWorkId( spep_5 + 32, SE051, 60 );
stopSe( spep_5 + 68, SE051, 12 );

--ラスト剣撃ヒット
SE052 = playSe( spep_5 + 36, 1032 );
setSeVolumeByWorkId( spep_5 + 36, SE052, 95 );

--ラスト剣撃ヒット
SE053 = playSe( spep_5 + 40, 1238 );
setSeVolumeByWorkId( spep_5 + 40, SE053, 130 );
setPitch( spep_5 + 40, SE053, -200 );
setTimeStretch( SE053, 0.87, 40, 5 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 26 );
endPhase( spep_5 + 146 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 構え→斬撃攻撃×3(176F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 178, 0x100, -1, 0, 0, 0 );  --構え→斬撃攻撃×3   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 178, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 178, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 178, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 178 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 178, first_f, 0 );

-- ** 音 ** --
--構え
SE001 = playSe( spep_0 + 0, 1072 );
setTimeStretch( SE001, 0.87, 10, 1 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 52 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    --setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    --setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    --setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

--斬りつけ１
SE002 = playSe( spep_0 + 76, 1177 );
setSeVolumeByWorkId( spep_0 + 76, SE002, 25 );
setSeVolumeByWorkId( spep_0 + 78, SE002, 50 );
setSeVolumeByWorkId( spep_0 + 80, SE002, 75 );
setSeVolumeByWorkId( spep_0 + 82, SE002, 100 );
stopSe( spep_0 + 102, SE002, 18 );
setStartTimeMs( SE002,  1333 );

--構え
SE003 = playSe( spep_0 + 14, 1153 );
setSeVolumeByWorkId( spep_0 + 14, SE003, 10 );
setSeVolumeByWorkId( spep_0 + 17, SE003, 20 );
setSeVolumeByWorkId( spep_0 + 20, SE003, 30 );
setSeVolumeByWorkId( spep_0 + 23, SE003, 41 );
setSeVolumeByWorkId( spep_0 + 26, SE003, 52 );

--構え
SE004 = playSe( spep_0 + 14, 8 );
setSeVolumeByWorkId( spep_0 + 14, SE004, 89 );


--構え
SE006 = playSe( spep_0 + 24, 20 );
stopSe( spep_0 + 56, SE006, 34 );

--斬りつけ１
SE008 = playSe( spep_0 + 64, 1116 );
stopSe( spep_0 + 88, SE008, 12 );

--斬りつけ１
SE009 = playSe( spep_0 + 72, 1151 );
setSeVolumeByWorkId( spep_0 + 72, SE009, 119 );

--斬りつけ１
SE010 = playSe( spep_0 + 76, 1142 );

--斬りつけ１
SE011 = playSe( spep_0 + 78, 1032 );

--斬りつけ１
SE012 = playSe( spep_0 + 78, 1143 );
setSeVolumeByWorkId( spep_0 + 78, SE012, 45 );

--斬りつけ２
SE013 = playSe( spep_0 + 96, 1151 );

--斬りつけ２
SE005 = playSe( spep_0 + 96, 1177 );
setSeVolumeByWorkId( spep_0 + 96, SE005, 25 );
setSeVolumeByWorkId( spep_0 + 98, SE005, 50 );
setSeVolumeByWorkId( spep_0 + 100, SE005, 75 );
setSeVolumeByWorkId( spep_0 + 102, SE005, 100 );
stopSe( spep_0 + 132, SE005, 14 );
setStartTimeMs( SE005,  1333 );

--斬りつけ２
SE014 = playSe( spep_0 + 100, 1142 );

--斬りつけ２
SE015 = playSe( spep_0 + 102, 1032 );

--斬りつけ２
SE016 = playSe( spep_0 + 102, 1143 );
setSeVolumeByWorkId( spep_0 + 102, SE016, 47 );

--斬りつけ３
SE007 = playSe( spep_0 + 132, 1177 );
setSeVolumeByWorkId( spep_0 + 132, SE007, 25 );
setSeVolumeByWorkId( spep_0 + 134, SE007, 50 );
setSeVolumeByWorkId( spep_0 + 136, SE007, 75 );
setSeVolumeByWorkId( spep_0 + 138, SE007, 100 );
setStartTimeMs( SE007,  1333 );

--斬りつけ３
SE018 = playSe( spep_0 + 132, 1151 );

--斬りつけ３
SE019 = playSe( spep_0 + 136, 1142 );

--斬りつけ３
SE020 = playSe( spep_0 + 138, 1032 );

--斬りつけ３
SE021 = playSe( spep_0 + 138, 1143 );
setSeVolumeByWorkId( spep_0 + 138, SE021, 51 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 178 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 178;

------------------------------------------------------
-- 敵に斬撃があたる(116F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_1 + 0, SP_02, 118, 0x100, -1, 0, 0, 0 );  --敵に斬撃があたる：手前  ef_002_f
setEffMoveKey( spep_1 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 118, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shot_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 118, shot_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, shot_f, 0 );
setEffRotateKey( spep_1 + 118, shot_f, 0 );
setEffAlphaKey( spep_1 + 0, shot_f, 255 );
setEffAlphaKey( spep_1 + 118 -1, shot_f, 255 );
setEffAlphaKey( spep_1 + 118, shot_f, 0 );

shot_b = entryEffectLife( spep_1 + 0, SP_03, 118, 0x80, -1, 0, 0, 0 );  --敵に斬撃があたる：奥    ef_002_b
setEffMoveKey( spep_1 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 118, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shot_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 118, shot_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, shot_b, 0 );
setEffRotateKey( spep_1 + 118, shot_b, 0 );
setEffAlphaKey( spep_1 + 0, shot_b, 255 );
setEffAlphaKey( spep_1 + 118 -1, shot_b, 255 );
setEffAlphaKey( spep_1 + 118, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 118, 1, 0 );
changeAnime( spep_1 + 0, 1, 17 );
changeAnime( spep_1 +1 + 20, 1, 106 );
changeAnime( spep_1 +1 + 44, 1, 8 );
changeAnime( spep_1 +1 + 70, 1, 106 );

a1 = 20;
setMoveKey( spep_1 + 0, 1, 12.6, -7.1 , 0 );
setMoveKey( spep_1 + 1, 1, 12.6, -7.1 , 0 );
setMoveKey( spep_1 + 2, 1, 12.6, -7.1 , 0 );

setMoveKey( spep_1 -3 + 6, 1, 16.4, -7.1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 20.2, -7.1 , 0 );

setMoveKey( spep_1 +1 + 6, 1, 24.1, -7.1 , 0 );
setMoveKey( spep_1 +1 + 8, 1, 27.9, -7.1 , 0 );
setMoveKey( spep_1 +1 + 10, 1, 31.7, -7 , 0 );
setMoveKey( spep_1 +1 + 12, 1, 31.8, -7 , 0 );
setMoveKey( spep_1 +1 + 14, 1, 31.8, -7 , 0 );
setMoveKey( spep_1 +1 + 16, 1, 31.9, -7 , 0 );
setMoveKey( spep_1 +1 + 19, 1, 32, -7 , 0 );
setMoveKey( spep_1 +1 + 20, 1, 37.4, 1.9 , 0 );
setMoveKey( spep_1 +1 + 22, 1, 31.3, -5.6 , 0 );
setMoveKey( spep_1 +1 + 24, 1, 41.6, -8.1 , 0 );
setMoveKey( spep_1 +1 + 26, 1, 35.1, 4.9 , 0 );
setMoveKey( spep_1 +1 + 28, 1, 37.9, 6.8 , 0 );
setMoveKey( spep_1 +1 + 30, 1, 40.7, 8.6 , 0 );
setMoveKey( spep_1 +1 + 32, 1, 43.5, 10.5 , 0 );
setMoveKey( spep_1 +1 + 34, 1, 46.3, 12.3 , 0 );
setMoveKey( spep_1 +1 + 36, 1, 49.1, 14.2 , 0 );
setMoveKey( spep_1 +1 + 38, 1, 51.9, 16 , 0 );
setMoveKey( spep_1 +1 + 40, 1, 54.7, 17.9 , 0 );
setMoveKey( spep_1 +1 + 43, 1, 57.5, 19.8 , 0 );
setMoveKey( spep_1 +1 + 44, 1, -1 +a1, 7.1 , 0 );
setMoveKey( spep_1 +1 + 46, 1, 2.7 +a1, 18.4 , 0 );
setMoveKey( spep_1 +1 + 48, 1, -8.4 +a1, 10.9 , 0 );
setMoveKey( spep_1 +1 + 50, 1, -3.2 +a1, 8.3 , 0 );
setMoveKey( spep_1 +1 + 52, 1, -14.8 +a1, 21.4 , 0 );
setMoveKey( spep_1 +1 + 54, 1, -19.8 +a1, 22 , 0 );
setMoveKey( spep_1 +1 + 56, 1, -21.6 +a1, 23.9 , 0 );
setMoveKey( spep_1 +1 + 58, 1, -23.5 +a1, 25.9 , 0 );
setMoveKey( spep_1 +1 + 60, 1, -25.4 +a1, 27.8 , 0 );
setMoveKey( spep_1 +1 + 62, 1, -27.2 +a1, 29.7 , 0 );
setMoveKey( spep_1 +1 + 64, 1, -29.1 +a1, 31.7 , 0 );
setMoveKey( spep_1 +1 + 66, 1, -30.9 +a1, 33.6 , 0 );
setMoveKey( spep_1 +1 + 69, 1, -32.9 +a1, 35.6 , 0 );
setMoveKey( spep_1 +1 + 70, 1, 14.6, 61.4 , 0 );
setMoveKey( spep_1 +1 + 72, 1, 6.7, 52 , 0 );
setMoveKey( spep_1 +1 + 74, 1, 15.2, 47.7 , 0 );
setMoveKey( spep_1 +1 + 76, 1, 6.9, 58.9 , 0 );
setMoveKey( spep_1 +1 + 78, 1, 5.1, 57.8 , 0 );
setMoveKey( spep_1 +1 + 80, 1, 5.7, 58.3 , 0 );
setMoveKey( spep_1 +1 + 82, 1, 6.3, 58.9 , 0 );
setMoveKey( spep_1 +1 + 84, 1, 6.9, 59.5 , 0 );
setMoveKey( spep_1 +1 + 86, 1, 7.5, 60 , 0 );
setMoveKey( spep_1 +1 + 88, 1, 8.1, 60.6 , 0 );
setMoveKey( spep_1 +1 + 90, 1, 8.7, 61.2 , 0 );
setMoveKey( spep_1 +1 + 92, 1, 9.3, 61.7 , 0 );
setMoveKey( spep_1 +1 + 94, 1, 9.9, 62.3 , 0 );
setMoveKey( spep_1 +1 + 96, 1, 10.5, 62.9 , 0 );
setMoveKey( spep_1 +1 + 98, 1, 11.1, 63.4 , 0 );
setMoveKey( spep_1 +1 + 100, 1, 11.7, 64 , 0 );
setMoveKey( spep_1 +1 + 102, 1, 12.3, 64.6 , 0 );
setMoveKey( spep_1 +1 + 104, 1, 12.9, 65.2 , 0 );
setMoveKey( spep_1 +1 + 106, 1, 13.5, 65.8 , 0 );
setMoveKey( spep_1 +1 + 108, 1, 14.2, 66.3 , 0 );
setMoveKey( spep_1 +1 + 110, 1, 14.7, 66.9 , 0 );
setMoveKey( spep_1 +1 + 112, 1, 15.4, 67.5 , 0 );
setMoveKey( spep_1 +1 + 114, 1, 16, 68.1 , 0 );
setMoveKey( spep_1 +1 + 116, 1, 16.6, 68.7 , 0 );
setMoveKey( spep_1 +1 + 117, 1, 17.2, 69.2 , 0 );
--setMoveKey( spep_1 +1 + 119, 1, -17.2, 69.2 , 0 );

s1 = 0.1;
setScaleKey( spep_1 + 0, 1, 0.8 +s1, 0.8 +s1 );
setScaleKey( spep_1 + 1, 1, 0.8 +s1, 0.8 +s1 );
setScaleKey( spep_1 + 2, 1, 0.8 +s1, 0.8 +s1 );

setScaleKey( spep_1 -3 + 6, 1, 1.04 +s1, 1.04 +s1 );
setScaleKey( spep_1 -3 + 8, 1, 1.28 +s1, 1.28 +s1 );

setScaleKey( spep_1 +1 + 6, 1, 1.52 +s1, 1.52 +s1 );
setScaleKey( spep_1 +1 + 8, 1, 1.76 +s1, 1.76 +s1 );
setScaleKey( spep_1 +1 + 10, 1, 2 +s1, 2 +s1 );
setScaleKey( spep_1 +1 + 14, 1, 2 +s1, 2 +s1 );
setScaleKey( spep_1 +1 + 16, 1, 2.01 +s1, 2.01 +s1 );
setScaleKey( spep_1 +1 + 20, 1, 2.01 +s1, 2.01 +s1 );
setScaleKey( spep_1 +1 + 22, 1, 1.98 +s1, 1.98 +s1 );
setScaleKey( spep_1 +1 + 24, 1, 1.96 +s1, 1.96 +s1 );
setScaleKey( spep_1 +1 + 26, 1, 1.94 +s1, 1.94 +s1 );
setScaleKey( spep_1 +1 + 28, 1, 1.91 +s1, 1.91 +s1 );
setScaleKey( spep_1 +1 + 30, 1, 1.89 +s1, 1.89 +s1 );
setScaleKey( spep_1 +1 + 32, 1, 1.86 +s1, 1.86 +s1 );
setScaleKey( spep_1 +1 + 34, 1, 1.84 +s1, 1.84 +s1 );
setScaleKey( spep_1 +1 + 36, 1, 1.81 +s1, 1.81 +s1 );
setScaleKey( spep_1 +1 + 38, 1, 1.79 +s1, 1.79 +s1 );
setScaleKey( spep_1 +1 + 40, 1, 1.76 +s1, 1.76 +s1 );
setScaleKey( spep_1 +1 + 43, 1, 1.74 +s1, 1.74 +s1 );
setScaleKey( spep_1 +1 + 44, 1, 1.48 +s1, 1.48 +s1 );
setScaleKey( spep_1 +1 + 46, 1, 1.47 +s1, 1.47 +s1 );
setScaleKey( spep_1 +1 + 48, 1, 1.46 +s1, 1.46 +s1 );
setScaleKey( spep_1 +1 + 50, 1, 1.44 +s1, 1.44 +s1 );
setScaleKey( spep_1 +1 + 52, 1, 1.43 +s1, 1.43 +s1 );
setScaleKey( spep_1 +1 + 54, 1, 1.42 +s1, 1.42 +s1 );
setScaleKey( spep_1 +1 + 56, 1, 1.4 +s1, 1.4 +s1 );
setScaleKey( spep_1 +1 + 58, 1, 1.39 +s1, 1.39 +s1 );
setScaleKey( spep_1 +1 + 60, 1, 1.38 +s1, 1.38 +s1 );
setScaleKey( spep_1 +1 + 62, 1, 1.36 +s1, 1.36 +s1 );
setScaleKey( spep_1 +1 + 64, 1, 1.35 +s1, 1.35 +s1 );
setScaleKey( spep_1 +1 + 66, 1, 1.34 +s1, 1.34 +s1 );
setScaleKey( spep_1 +1 + 69, 1, 1.32 +s1, 1.32 +s1 );
setScaleKey( spep_1 +1 + 70, 1, 0.98 +s1, 0.98 +s1 );
setScaleKey( spep_1 +1 + 72, 1, 0.97 +s1, 0.97 +s1 );
setScaleKey( spep_1 +1 + 74, 1, 0.97 +s1, 0.97 +s1 );
setScaleKey( spep_1 +1 + 76, 1, 0.96 +s1, 0.96 +s1 );
setScaleKey( spep_1 +1 + 78, 1, 0.96 +s1, 0.96 +s1 );
setScaleKey( spep_1 +1 + 80, 1, 0.95 +s1, 0.95 +s1 );
setScaleKey( spep_1 +1 + 82, 1, 0.95 +s1, 0.95 +s1 );
setScaleKey( spep_1 +1 + 84, 1, 0.94 +s1, 0.94 +s1 );
setScaleKey( spep_1 +1 + 86, 1, 0.94 +s1, 0.94 +s1 );
setScaleKey( spep_1 +1 + 88, 1, 0.93 +s1, 0.93 +s1 );
setScaleKey( spep_1 +1 + 90, 1, 0.93 +s1, 0.93 +s1 );
setScaleKey( spep_1 +1 + 92, 1, 0.92 +s1, 0.92 +s1 );
setScaleKey( spep_1 +1 + 94, 1, 0.92 +s1, 0.92 +s1 );
setScaleKey( spep_1 +1 + 96, 1, 0.91 +s1, 0.91 +s1 );
setScaleKey( spep_1 +1 + 98, 1, 0.91 +s1, 0.91 +s1 );
setScaleKey( spep_1 +1 + 100, 1, 0.9 +s1, 0.9 +s1);
setScaleKey( spep_1 +1 + 104, 1, 0.9 +s1, 0.9 +s1);
setScaleKey( spep_1 +1 + 106, 1, 0.89 +s1, 0.89 +s1 );
setScaleKey( spep_1 +1 + 108, 1, 0.89 +s1, 0.89 +s1 );
setScaleKey( spep_1 +1 + 110, 1, 0.88 +s1, 0.88 +s1 );
setScaleKey( spep_1 +1 + 112, 1, 0.88 +s1, 0.88 +s1 );
setScaleKey( spep_1 +1 + 114, 1, 0.87 +s1, 0.87 +s1 );
setScaleKey( spep_1 +1 + 116, 1, 0.87 +s1, 0.87 +s1 );
setScaleKey( spep_1 +1 + 117, 1, 0.86 +s1, 0.86 +s1 );
--setScaleKey( spep_1 +1 + 119, 1, 0.86, 0.86 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 +1 + 19, 1, -0 );
setRotateKey( spep_1 +1 + 20, 1, -40.9 );
setRotateKey( spep_1 +1 + 22, 1, -40.3 );
setRotateKey( spep_1 +1 + 24, 1, -39.5 );
setRotateKey( spep_1 +1 + 26, 1, -38.8 );
setRotateKey( spep_1 +1 + 28, 1, -38.1 );
setRotateKey( spep_1 +1 + 30, 1, -37.4 );
setRotateKey( spep_1 +1 + 32, 1, -36.6 );
setRotateKey( spep_1 +1 + 34, 1, -35.9 );
setRotateKey( spep_1 +1 + 36, 1, -35.2 );
setRotateKey( spep_1 +1 + 38, 1, -34.5 );
setRotateKey( spep_1 +1 + 40, 1, -33.7 );
setRotateKey( spep_1 +1 + 43, 1, -33 );
setRotateKey( spep_1 +1 + 44, 1, -0 );
setRotateKey( spep_1 +1 + 46, 1, 0.7 );
setRotateKey( spep_1 +1 + 48, 1, 1.5 );
setRotateKey( spep_1 +1 + 50, 1, 2.2 );
setRotateKey( spep_1 +1 + 52, 1, 3 );
setRotateKey( spep_1 +1 + 54, 1, 3.7 );
setRotateKey( spep_1 +1 + 56, 1, 4.5 );
setRotateKey( spep_1 +1 + 58, 1, 5.2 );
setRotateKey( spep_1 +1 + 60, 1, 6 );
setRotateKey( spep_1 +1 + 62, 1, 6.7 );
setRotateKey( spep_1 +1 + 64, 1, 7.5 );
setRotateKey( spep_1 +1 + 66, 1, 8.2 );
setRotateKey( spep_1 +1 + 69, 1, 9 );
setRotateKey( spep_1 +1 + 70, 1, -20 );
setRotateKey( spep_1 +1 + 72, 1, -19.2 );
setRotateKey( spep_1 +1 + 74, 1, -18.4 );
setRotateKey( spep_1 +1 + 76, 1, -17.6 );
setRotateKey( spep_1 +1 + 78, 1, -16.8 );
setRotateKey( spep_1 +1 + 80, 1, -16 );
setRotateKey( spep_1 +1 + 82, 1, -15.3 );
setRotateKey( spep_1 +1 + 84, 1, -14.5 );
setRotateKey( spep_1 +1 + 86, 1, -13.7 );
setRotateKey( spep_1 +1 + 88, 1, -12.9 );
setRotateKey( spep_1 +1 + 90, 1, -12.1 );
setRotateKey( spep_1 +1 + 92, 1, -11.3 );
setRotateKey( spep_1 +1 + 94, 1, -10.5 );
setRotateKey( spep_1 +1 + 96, 1, -9.7 );
setRotateKey( spep_1 +1 + 98, 1, -8.9 );
setRotateKey( spep_1 +1 + 100, 1, -8.1 );
setRotateKey( spep_1 +1 + 102, 1, -7.3 );
setRotateKey( spep_1 +1 + 104, 1, -6.5 );
setRotateKey( spep_1 +1 + 106, 1, -5.8 );
setRotateKey( spep_1 +1 + 108, 1, -5 );
setRotateKey( spep_1 +1 + 110, 1, -4.2 );
setRotateKey( spep_1 +1 + 112, 1, -3.4 );
setRotateKey( spep_1 +1 + 114, 1, -2.6 );
setRotateKey( spep_1 +1 + 116, 1, -1.8 );
setRotateKey( spep_1 +1 + 117, 1, -1 );
--setRotateKey( spep_1 +1 + 119, 1, 1 );

-- ** 音 ** --
--敵ヒット１
SE023 = playSe( spep_1 + 6, 1142 );

--敵ヒット１
SE024 = playSe( spep_1 + 8, 1117,"",0.6 );
stopSe( spep_1 + 26, SE024, 10 );

--敵ヒット１
SE025 = playSe( spep_1 + 8, 1170 );
setSeVolumeByWorkId( spep_1 + 8, SE025, 81 );
stopSe( spep_1 + 38, SE025, 20 );

--敵ヒット１
SE017 = playSe( spep_1 + 10, 1177 );
setSeVolumeByWorkId( spep_1 + 10, SE017, 31 );
setSeVolumeByWorkId( spep_1 + 12, SE017, 62 );
setSeVolumeByWorkId( spep_1 + 14, SE017, 92 );
setSeVolumeByWorkId( spep_1 + 16, SE017, 123 );
setStartTimeMs( SE017,  1333 );

--敵ヒット１
SE026 = playSe( spep_1 + 18, 1238 );
setPitch( spep_1 + 18, SE026, 200 );
setTimeStretch( SE026, 1.13, 10, 1 );
stopSe( spep_1 + 38, SE026, 20 );

--敵ヒット２
SE027 = playSe( spep_1 + 36, 1142 );

--敵ヒット２
SE028 = playSe( spep_1 + 38, 1117,"",0.6 );
stopSe( spep_1 + 56, SE028, 10 );

--敵ヒット２
SE029 = playSe( spep_1 + 48, 1238 );
setPitch( spep_1 + 48, SE029, 200 );
setTimeStretch( SE029, 1.13, 10, 1 );

--敵ヒット３
SE030 = playSe( spep_1 + 62, 1142 );

--敵ヒット３
SE031 = playSe( spep_1 + 64, 1117,"",0.6 );
stopSe( spep_1 + 80, SE031, 10 );

--敵ヒット３
SE032 = playSe( spep_1 + 64, 1170 );

--敵ヒット３
SE022 = playSe( spep_1 + 66, 1177 );
setSeVolumeByWorkId( spep_1 + 66, SE022, 25 );
setSeVolumeByWorkId( spep_1 + 68, SE022, 50 );
setSeVolumeByWorkId( spep_1 + 70, SE022, 75 );
setSeVolumeByWorkId( spep_1 + 72, SE022, 100 );
stopSe( spep_1 +112 + 2, SE022, 16 );
setStartTimeMs( SE022,  1333 );

--敵ヒット３
SE033 = playSe( spep_1 + 74, 1238 );
setPitch( spep_1 + 74, SE033, 200 );
setTimeStretch( SE033, 1.13, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 118;

------------------------------------------------------
-- 構える(96F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_2 + 0, SP_04, 88, 0x80, -1, 0, 0, 0 );  --構える  ef_003
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 88, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 88, tame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 88, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 88 -1, tame, 255 );
setEffAlphaKey( spep_2 + 88, tame, 0 );

spep_x = spep_2 + 2;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--顔カットイン
SE034 = playSe( spep_2 + 10, 1018 );

--構える
SE035 = playSe( spep_2 + 10, 1006 );
setSeVolumeByWorkId( spep_2 + 10, SE035, 129 );
setPitch( spep_2 + 10, SE035, -400 );
setTimeStretch( SE035, 0.73, 10, 1 );

--構える
SE036 = playSe( spep_2 + 10, 1061 );
setSeVolumeByWorkId( spep_2 + 10, SE036, 68 );
stopSe( spep_2 + 28, SE036, 20 );

--構える
SE037 = playSe( spep_2 + 10, 1233 );
setSeVolumeByWorkId( spep_2 + 10, SE037, 92 );
setPitch( spep_2 + 10, SE037, -200 );
setTimeStretch( SE037, 0.87, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 88 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 80, 9, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 88;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_3 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_3 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );
 
-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 画面手前に迫る→斬撃(106F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
lslash = entryEffectLife( spep_4 + 0, SP_05, 107, 0x100, -1, 0, 0, 0 );  --画面手前に迫る→斬撃   ef_004
setEffMoveKey( spep_4 + 0, lslash, 0, 0 , 0 );
setEffMoveKey( spep_4 + 107, lslash, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, lslash, -1.0, 1.0 );
setEffScaleKey( spep_4 + 107, lslash, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, lslash, 0 );
setEffRotateKey( spep_4 + 107, lslash, 0 );
setEffAlphaKey( spep_4 + 0, lslash, 255 );
setEffAlphaKey( spep_4 + 107 -1, lslash, 255 );
setEffAlphaKey( spep_4 + 107, lslash, 0 );

-- ** 音 ** --
--アップ
SE039 = playSe( spep_4 + 2, 9 );

--アップ
SE040 = playSe( spep_4 + 2, 1167 );
setSeVolumeByWorkId( spep_4 + 2, SE040, 64 );

--ラスト大振り
SE042 = playSe( spep_4 + 56, 1004 );

--ラスト大振り
SE043 = playSe( spep_4 + 68, 1061 );
setSeVolumeByWorkId( spep_4 + 68, SE043, 122 );
setPitch( spep_4 + 68, SE043, -400 );
setTimeStretch( SE043, 0.73, 40, 4 );

--ラスト大振り
SE044 = playSe( spep_4 + 68, 1142 );

--ラスト大振り
SE045 = playSe( spep_4 + 72, 1032 );

--ラスト大振り
SE046 = playSe( spep_4 + 72, 1153 );
setSeVolumeByWorkId( spep_4 + 72, SE046, 84 );
setPitch( spep_4 + 72, SE046, 300 );
setTimeStretch( SE046, 1.2, 40, 4 );

--ラスト大振り
SE047 = playSe( spep_4 + 84, 1109 );

--剣撃飛んでいく
SE041 = playSe( spep_4 + 90, 1177 );
setSeVolumeByWorkId( spep_4 + 90, SE036, 25 );
setSeVolumeByWorkId( spep_4 + 92, SE036, 50 );
setSeVolumeByWorkId( spep_4 + 94, SE036, 75 );
setSeVolumeByWorkId( spep_4 + 96, SE036, 100 );
stopSe( spep_4 +106 + 42, SE041, 18 );
setStartTimeMs( SE041,  1333 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 108 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 107;

------------------------------------------------------
-- 斬撃が敵を飲み込む(116F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --斬撃が敵を飲み込む：手前    ef_005_f
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 156, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 156, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 156, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 156, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --斬撃が敵を飲み込む：奥  ef_005_b
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 156, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 156, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 156, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 156, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 +1 + 34, 1, 0 );
changeAnime( spep_5 + 0, 1, 7 );

setBlendColor( spep_5 + 20 +1, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_5 + 22 +1, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_5 + 24 +1, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_5 + 26 +1, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_5 + 28 +1, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_5 + 33 +1, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_5 + 34 +1, 1, 3, 0, 0, 0, 0 );

a5 = 0;
b5 = 10;
setMoveKey( spep_5 + 0, 1, 5.5 +a5, -84.4 +b5 , 0 );
setMoveKey( spep_5 + 1, 1, 5.5 +a5, -84.4 +b5 , 0 );
setMoveKey( spep_5 + 2, 1, 5.5 +a5, -84.4 +b5 , 0 );

setMoveKey( spep_5 -3 + 6, 1, 5.2 +a5, -87.2 +b5 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 5 +a5, -90.1 +b5 , 0 );

setMoveKey( spep_5 +1 + 6, 1, 4.7 +a5, -92.8 +b5 , 0 );
setMoveKey( spep_5 +1 + 8, 1, 4.5 +a5, -95.5 +b5 , 0 );
setMoveKey( spep_5 +1 + 10, 1, 4.3 +a5, -98.2 +b5 , 0 );
setMoveKey( spep_5 +1 + 12, 1, 4 +a5, -100.8 +b5 , 0 );
setMoveKey( spep_5 +1 + 14, 1, 3.8 +a5, -103.4 +b5 , 0 );
setMoveKey( spep_5 +1 + 16, 1, 3.5 +a5, -106 +b5 , 0 );
setMoveKey( spep_5 +1 + 18, 1, 3.3 +a5, -108.4 +b5 , 0 );
setMoveKey( spep_5 +1 + 20, 1, 3.1 +a5, -110.9 +b5 , 0 );
setMoveKey( spep_5 +1 + 22, 1, 2.8 +a5, -113.3 +b5 , 0 );
setMoveKey( spep_5 +1 + 24, 1, 2.6 +a5, -115.6 +b5 , 0 );
setMoveKey( spep_5 +1 + 26, 1, 2.4 +a5, -117.9 +b5 , 0 );
setMoveKey( spep_5 +1 + 28, 1, -8 +a5, -112 +b5 , 0 );
setMoveKey( spep_5 +1 + 30, 1, 14.8 +a5, -133.7 +b5 , 0 );
setMoveKey( spep_5 +1 + 32, 1, -12.7 +a5, -133 +b5 , 0 );
setMoveKey( spep_5 +1 + 34, 1, 12.3 +a5, -109.5 +b5 , 0 );

setScaleKey( spep_5 + 0, 1, 1.504, 1.504 );
setScaleKey( spep_5 + 1, 1, 1.504, 1.504 );
setScaleKey( spep_5 + 2, 1, 1.504, 1.504 );

setScaleKey( spep_5 -3 + 6, 1, 1.504, 1.504 );
setScaleKey( spep_5 -3 + 8, 1, 1.496, 1.496 );

setScaleKey( spep_5 +1 + 6, 1, 1.488, 1.488 );
setScaleKey( spep_5 +1 + 8, 1, 1.472, 1.472 );
setScaleKey( spep_5 +1 + 10, 1, 1.448, 1.448 );
setScaleKey( spep_5 +1 + 12, 1, 1.416, 1.416 );
setScaleKey( spep_5 +1 + 14, 1, 1.384, 1.384 );
setScaleKey( spep_5 +1 + 16, 1, 1.344, 1.344 );
setScaleKey( spep_5 +1 + 18, 1, 1.296, 1.296 );
setScaleKey( spep_5 +1 + 20, 1, 1.240, 1.240 );
setScaleKey( spep_5 +1 + 22, 1, 1.184, 1.184 );
setScaleKey( spep_5 +1 + 24, 1, 1.112, 1.112 );
setScaleKey( spep_5 +1 + 26, 1, 1.048, 1.048 );
setScaleKey( spep_5 +1 + 28, 1, 0.968, 0.968 );
setScaleKey( spep_5 +1 + 30, 1, 0.992, 0.992 );
setScaleKey( spep_5 +1 + 32, 1, 1.016, 1.016 );
setScaleKey( spep_5 +1 + 34, 1, 1.016, 1.016 );

setRotateKey( spep_5 + 0, 1, 40 );
setRotateKey( spep_5 +1 +34, 1, 40 );

-- ** 音 ** --
--ラスト剣撃ヒット
SE048 = playSe( spep_5 + 18, 1257,"",0.6 );
setSeVolumeByWorkId( spep_5 + 18, SE048, 114 );
setPitch( spep_5 + 18, SE048, -700 );
setTimeStretch( SE048, 0.63, 10, 1 );

--ラスト剣撃ヒット
SE049 = playSe( spep_5 + 32, 1295 );
setSeVolumeByWorkId( spep_5 + 32, SE049, 124 );
setPitch( spep_5 + 32, SE049, -500 );
setTimeStretch( SE049, 0.67, 40, 5 );

--ラスト剣撃ヒット
SE050 = playSe( spep_5 + 32, 1061 );
setSeVolumeByWorkId( spep_5 + 32, SE050, 104 );
setPitch( spep_5 + 32, SE050, -400 );
setTimeStretch( SE050, 0.73, 40, 5 );

--ラスト剣撃ヒット
SE051 = playSe( spep_5 + 32, 1153 );
setSeVolumeByWorkId( spep_5 + 32, SE051, 60 );
stopSe( spep_5 + 68, SE051, 12 );

--ラスト剣撃ヒット
SE052 = playSe( spep_5 + 36, 1032 );
setSeVolumeByWorkId( spep_5 + 36, SE052, 95 );

--ラスト剣撃ヒット
SE053 = playSe( spep_5 + 40, 1238 );
setSeVolumeByWorkId( spep_5 + 40, SE053, 130 );
setPitch( spep_5 + 40, SE053, -200 );
setTimeStretch( SE053, 0.87, 40, 5 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 26 );
endPhase( spep_5 + 146 );

end