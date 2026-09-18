--1023360:UR人造人間17号(未来)&18号(未来)_ノンストップバイオレンス
--sp_effect_b4_00206
--sp2308

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
SP_01 = 158649; --開幕～18号髪の毛かきあげ ef_001
SP_02 = 158650; --セリフカットイン～重なる～手前ダッシュ   ef_002
SP_03 = 158651; --分裂して初撃 前面 ef_003
SP_04 = 158652; --分裂して初撃 背面 ef_004
SP_05 = 158653; --手前ダッシュ18号＆17号 ef_005
SP_06 = 158654; --連撃 前面 ef_006
SP_07 = 158656; --連撃 背面 ef_007
SP_08 = 158657; --18号殴り～二人で体当たり 前面  ef_008
SP_09 = 158659; --18号殴り～二人で体当たり 背面  ef_009
SP_10 = 158660; --気弾構え  ef_010
SP_11 = 158661; --フィニッシュ    ef_011

--敵側
SP_06e = 158655;    --連撃 前面 敵側  ef_006e
SP_08e = 158658;    --18号殴り～二人で体当たり 前面 敵側   ef_008e

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 開幕～18号髪の毛かきあげ(196F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 196, 0x100, -1, 0, 0, 0 );  --開幕～18号髪の毛かきあげ   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 196, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 196, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 196 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 196, first_f, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 +196 + 154, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 24 );

--カメラ遷移
SE003 = playSeVer2( spep_0 + 28, 1232, "", 0, 0, 0, -1);
setPitch( spep_0 + 28, SE003, 400 );
setTimeStretch( SE003, 1.27, 30, 4 );
SE004 = playSeVer2( spep_0 + 30, 4, "", 0, 0, 0, -1);

--髪なびく
SE005 = playSeVer2( spep_0 + 76, 1003, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 116, 1333, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE006, 124 );
setStartTimeMs( SE006,  400 );
SE007 = playSeVer2( spep_0 + 104, 1331, "",spep_0 + 154, 0, 18, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 196 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 196;


------------------------------------------------------
-- セリフカットイン～重なる～手前ダッシュ(184F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
fdash = entryEffectLife( spep_1 + 0, SP_02, 184, 0x100, -1, 0, 0, 0 );  --セリフカットイン～重なる～手前ダッシュ   ef_002
setEffMoveKey( spep_1 + 0, fdash, 0, 0 , 0 );
setEffMoveKey( spep_1 + 184, fdash, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fdash, 1.0, 1.0 );
setEffScaleKey( spep_1 + 184, fdash, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fdash, 0 );
setEffRotateKey( spep_1 + 184, fdash, 0 );
setEffAlphaKey( spep_1 + 0, fdash, 255 );
setEffAlphaKey( spep_1 + 184 -1, fdash, 255 );
setEffAlphaKey( spep_1 + 184, fdash, 0 );

spep_x = spep_1 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--顔カットイン
SE008 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);


--2人重なる
SE009 = playSeVer2( spep_1 + 90, 1274, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 90, SE009, 80 );
setPitch( spep_1 + 90, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );
SE010 = playSeVer2( spep_1 + 90, 1295, "",spep_1 + 178, 30, 24, 0.6);
setSeVolumeByWorkId( spep_1 + 90, SE010, 145 );
SE011 = playSeVer2( spep_1 + 90, 1271, "",spep_1 + 178, 0, 24, 0.6);
setSeVolumeByWorkId( spep_1 + 90, SE011, 141 );

--ダッシュ
SE013 = playSeVer2( spep_1 + 156, 1182, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 166, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 166, SE014, 209 );
SE015 = playSeVer2( spep_1 + 176, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 176, SE015, 224 );

--2人向かってくる
SE016 = playSeVer2( spep_1 + 180, 1117, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 180, 1116, "",spep_1 +184 + 36, 0, 18, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 184 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 184;


------------------------------------------------------
-- 分裂して初撃(96F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
fattack_f = entryEffectLife( spep_2 + 0, SP_03, 96, 0x100, -1, 0, 0, 0 );  --分裂して初撃 前面  ef_003
setEffMoveKey( spep_2 + 0, fattack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, fattack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, fattack_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, fattack_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fattack_f, 0 );
setEffRotateKey( spep_2 + 96, fattack_f, 0 );
setEffAlphaKey( spep_2 + 0, fattack_f, 255 );
setEffAlphaKey( spep_2 + 96 -1, fattack_f, 255 );
setEffAlphaKey( spep_2 + 96, fattack_f, 0 );

fattack_b = entryEffectLife( spep_2 + 0, SP_04, 96, 0x80, -1, 0, 0, 0 );  --分裂して初撃 背面   ef_004
setEffMoveKey( spep_2 + 0, fattack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, fattack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, fattack_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, fattack_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fattack_b, 0 );
setEffRotateKey( spep_2 + 96, fattack_b, 0 );
setEffAlphaKey( spep_2 + 0, fattack_b, 255 );
setEffAlphaKey( spep_2 + 96 -1, fattack_b, 255 );
setEffAlphaKey( spep_2 + 96, fattack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 96, 1, 0 );
changeAnime( spep_2 + 0, 1, 118 );

setMoveKey( spep_2 + 0, 1, -11.3, -408.8 , 0 );

setScaleKey( spep_2 + 0, 1, 4, 4 );

setRotateKey( spep_2 + 0, 1, 47 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, -11.3, -408.8 , 0 );
    setMoveKey( SP_dodge + 10, 1, -11.3, -408.8 , 0 );

    setScaleKey( SP_dodge + 0, 1, 4, 4 );
    setScaleKey( SP_dodge + 10, 1, 4, 4 );

    setRotateKey( SP_dodge + 0, 1, 47 );
    setRotateKey( SP_dodge + 10, 1, 47 );    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め 背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 敵キャラクター ** --
changeAnime( spep_2 -3 + 46, 1, 107 );
changeAnime( spep_2 -3 + 68, 1, 6 );
changeAnime( spep_2 -3 + 74, 1, 7 );

setMoveKey( spep_2 -3 + 45, 1, -11.3, -408.8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -71.6, -286.4 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -56.8, -314.2 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -63.3, -315.6 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -48.5, -330.3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -49.6, -329 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -45.5, -346.3 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -41.3, -355.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -37.2, -364.9 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -33, -374.3 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -28.8, -383.6 , 0 );
setMoveKey( spep_2 -3 + 67, 1, -24.7, -392.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -83.5, -156.4 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -52.9, -151.3 , 0 );
setMoveKey( spep_2 -3 + 73, 1, -100.8, -140.4 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -39, -254.1 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -50.8, -266.2 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -51.7, -268.6 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -52.6, -300 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -53.6, -320.9 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -54.5, -341.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -55.4, -362.6 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -56.3, -383.4 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -57.2, -404.3 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -58.1, -425.1 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -59, -446 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -59.9, -466.8 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -60.8, -487.7 , 0 );
setMoveKey( spep_2 -3 + 99, 1, -60.8, -487.7 , 0 );

setScaleKey( spep_2 -3 + 45, 1, 4, 4 );
setScaleKey( spep_2 -3 + 46, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 48, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 50, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 52, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 54, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 56, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 58, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 60, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 62, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 64, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 67, 1, 2, 2 );
setScaleKey( spep_2 -3 + 68, 1, 3.94, 3.94 );
setScaleKey( spep_2 -3 + 73, 1, 3.94, 3.94 );
setScaleKey( spep_2 -3 + 74, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 76, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 78, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 80, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 82, 1, 2.03, 2.03 );
setScaleKey( spep_2 -3 + 84, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 86, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 88, 1, 2.21, 2.21 );
setScaleKey( spep_2 -3 + 90, 1, 2.27, 2.27 );
setScaleKey( spep_2 -3 + 92, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 94, 1, 2.39, 2.39 );
setScaleKey( spep_2 -3 + 96, 1, 2.45, 2.45 );
setScaleKey( spep_2 -3 + 98, 1, 2.51, 2.51 );
setScaleKey( spep_2 -3 + 99, 1, 2.51, 2.51 );

setRotateKey( spep_2 -3 + 45, 1, 47 );
setRotateKey( spep_2 -3 + 46, 1, 19.3 );
setRotateKey( spep_2 -3 + 48, 1, 19.5 );
setRotateKey( spep_2 -3 + 67, 1, 19.5 );
setRotateKey( spep_2 -3 + 68, 1, 26.6 );
setRotateKey( spep_2 -3 + 73, 1, 26.6 );
setRotateKey( spep_2 -3 + 74, 1, 3.8 );
setRotateKey( spep_2 -3 + 99, 1, 3.8 );

-- ** 音 ** --
--キック
SE018 = playSeVer2( spep_2 + 30, 1004, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 36, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 36, 1010, "", 0, 0, 0, -1);

--17号パンチ
SE021 = playSeVer2( spep_2 + 60, 1000, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 60, 1009, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 62, 1110, "", 0, 0, 0, -1);

--18号ダッシュ
SE024 = playSeVer2( spep_2 + 86, 9, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 86, 1182, "",spep_2 +96 + 18, 0, 18, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;


------------------------------------------------------
-- 手前ダッシュ18号＆17号(76F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
sfdash = entryEffectLife( spep_3 + 0, SP_05, 76, 0x100, -1, 0, 0, 0 );  --手前ダッシュ18号＆17号 ef_005
setEffMoveKey( spep_3 + 0, sfdash, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, sfdash, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, sfdash, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, sfdash, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sfdash, 0 );
setEffRotateKey( spep_3 + 76, sfdash, 0 );
setEffAlphaKey( spep_3 + 0, sfdash, 255 );
setEffAlphaKey( spep_3 + 76 -1, sfdash, 255 );
setEffAlphaKey( spep_3 + 76, sfdash, 0 );

-- ** 音 ** --
--18号走る
SE026 = playSeVer2( spep_3 + 2, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 2, SE026, 158 );
setPitch( spep_3 + 2, SE026, 400 );
setTimeStretch( SE026, 1.27, 30, 4 );
SE027 = playSeVer2( spep_3 + 12, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 12, SE027, 211 );
setPitch( spep_3 + 12, SE027, 400 );
setTimeStretch( SE027, 1.27, 30, 4 );
SE028 = playSeVer2( spep_3 + 22, 1107, "", 0, 0, 0, -1);
setPitch( spep_3 + 22, SE028, 400 );
setTimeStretch( SE028, 1.27, 30, 4 );

--17号ダッシュ
SE029 = playSeVer2( spep_3 + 26, 9, "", 0, 0, 0, -1);
setPitch( spep_3 + 26, SE029, 200 );
setTimeStretch( SE029, 1.13, 30, 4 );

--17号走る
SE030 = playSeVer2( spep_3 + 42, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 42, SE030, 168 );
SE031 = playSeVer2( spep_3 + 50, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 50, SE031, 197 );
SE032 = playSeVer2( spep_3 + 60, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 60, SE032, 153 );

--ラッシュ
SE033 = playSeVer2( spep_3 + 66, 1110, "",spep_3 +76 + 22, 0, 12, -1);
SE034 = playSeVer2( spep_3 + 66, 1009, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_3 + 74, 1110, "",spep_3 +76 + 34, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 74, SE035, 87 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;


------------------------------------------------------
-- 連撃 背面(56F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
rash_f = entryEffectLife( spep_4 + 0, SP_06, 56, 0x100, -1, 0, 0, 0 );  --連撃 前面 ef_006
setEffMoveKey( spep_4 + 0, rash_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, rash_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rash_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, rash_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rash_f, 0 );
setEffRotateKey( spep_4 + 56, rash_f, 0 );
setEffAlphaKey( spep_4 + 0, rash_f, 255 );
setEffAlphaKey( spep_4 + 56 -1, rash_f, 255 );
setEffAlphaKey( spep_4 + 56, rash_f, 0 );

rash_b = entryEffectLife( spep_4 + 0, SP_07, 56, 0x80, -1, 0, 0, 0 );  --連撃 背面  ef_007
setEffMoveKey( spep_4 + 0, rash_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, rash_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rash_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, rash_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rash_b, 0 );
setEffRotateKey( spep_4 + 56, rash_b, 0 );
setEffAlphaKey( spep_4 + 0, rash_b, 255 );
setEffAlphaKey( spep_4 + 56 -1, rash_b, 255 );
setEffAlphaKey( spep_4 + 56, rash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
--setDisp( spep_4 + 56, 1, 0 );--
changeAnime( spep_4 + 0, 1, 107 );
changeAnime( spep_4 -3 + 16, 1, 7 );
changeAnime( spep_4 -3 + 26, 1, 107 );
changeAnime( spep_4 -3 + 42, 1, 7 );
changeAnime( spep_4 -3 + 52, 1, 107 );

setMoveKey( spep_4 + 0, 1, 27.7, 85.9 , 0 );
setMoveKey( spep_4 + 1, 1, 26.7, 94.6 , 0 );
setMoveKey( spep_4 + 2, 1, 33.2, 88.2 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 27.1, 99.4 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 38.6, 98 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 35, 109.2 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 34, 112.8 , 0 );
setMoveKey( spep_4 -3 + 15, 1, 40.5, 106.5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 92.3, 84.4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 103.7, 83 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 100.1, 94.1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 99.1, 97.8 , 0 );
setMoveKey( spep_4 -3 + 25, 1, 105.6, 91.4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 41.7, 135.9 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 53.1, 134.5 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 49.6, 145.7 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 48.6, 149.4 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 55, 143 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 49, 154.2 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 60.4, 152.8 , 0 );
setMoveKey( spep_4 -3 + 41, 1, 56.9, 164 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 113.7, 134.3 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 120.1, 128 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 114.1, 139.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 125.5, 137.8 , 0 );
setMoveKey( spep_4 -3 + 51, 1, 122, 149 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 63.1, 185.9 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 69.6, 179.6 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 63.6, 190.7 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 75, 189.4 , 0 );
--setMoveKey( spep_4 -3 + 59, 1, 75, 189.4 , 0 );

s4 = 0.04;
setScaleKey( spep_4 + 0, 1, 0.66 -s4, 0.66 -s4 );
setScaleKey( spep_4 -3 + 58, 1, 0.66 -s4, 0.66 -s4 );
--setScaleKey( spep_4 -3 + 59, 1, 0.66, 0.66 );--

setRotateKey( spep_4 + 0, 1, -52.2 );
setRotateKey( spep_4 + 1, 1, -54.9 );
setRotateKey( spep_4 + 2, 1, -52.2 );
setRotateKey( spep_4 -3 + 6, 1, -54.9 );
setRotateKey( spep_4 -3 + 8, 1, -52.2 );
setRotateKey( spep_4 -3 + 10, 1, -54.9 );
setRotateKey( spep_4 -3 + 12, 1, -52.2 );
setRotateKey( spep_4 -3 + 15, 1, -54.9 );
setRotateKey( spep_4 -3 + 16, 1, 93.1 );
setRotateKey( spep_4 -3 + 18, 1, 95.6 );
setRotateKey( spep_4 -3 + 20, 1, 93.1 );
setRotateKey( spep_4 -3 + 22, 1, 95.6 );
setRotateKey( spep_4 -3 + 25, 1, 93.1 );
setRotateKey( spep_4 -3 + 26, 1, -52.2 );
setRotateKey( spep_4 -3 + 28, 1, -54.9 );
setRotateKey( spep_4 -3 + 30, 1, -52.2 );
setRotateKey( spep_4 -3 + 32, 1, -54.9 );
setRotateKey( spep_4 -3 + 34, 1, -52.2 );
setRotateKey( spep_4 -3 + 36, 1, -54.9 );
setRotateKey( spep_4 -3 + 38, 1, -52.2 );
setRotateKey( spep_4 -3 + 41, 1, -54.9 );
setRotateKey( spep_4 -3 + 42, 1, 93.1 );
setRotateKey( spep_4 -3 + 44, 1, 95.6 );
setRotateKey( spep_4 -3 + 46, 1, 93.1 );
setRotateKey( spep_4 -3 + 48, 1, 95.6 );
setRotateKey( spep_4 -3 + 51, 1, 93.1 );
setRotateKey( spep_4 -3 + 52, 1, -52.2 );
setRotateKey( spep_4 -3 + 54, 1, -54.9 );
setRotateKey( spep_4 -3 + 56, 1, -52.2 );
setRotateKey( spep_4 -3 + 58, 1, -54.9 );
--setRotateKey( spep_4 -3 + 59, 1, -54.9 );--

-- ** 音 ** --
--ラッシュ
SE036 = playSeVer2( spep_4 + 0, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE036, 83 );
SE037 = playSeVer2( spep_4 + 8, 1110, "",spep_4 + 42, 0, 12, -1);
setPitch( spep_4 + 8, SE037, -200 );
setTimeStretch( SE037, 0.87, 30, 4 );
SE038 = playSeVer2( spep_4 + 16, 1110, "",spep_4 + 48, 0, 12, -1);
SE039 = playSeVer2( spep_4 + 16, 1010, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_4 + 22, 1110, "",spep_4 + 56, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 22, SE012, 88 );
setPitch( spep_4 + 22, SE012, 200 );
setTimeStretch( SE012, 1.13, 30, 4 );
SE040 = playSeVer2( spep_4 + 36, 1110, "",spep_4 +56 + 14, 0, 14, -1);
SE041 = playSeVer2( spep_4 + 36, 1000, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_4 + 52, 1110, "", 0, 0, 0, -1);

--18号パンチ
SE043 = playSeVer2( spep_4 + 52, 1120, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


------------------------------------------------------
-- 18号殴り～二人で体当たり(166F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
tackle_f = entryEffectLife( spep_5 + 0, SP_08, 166, 0x100, -1, 0, 0, 0 );  --18号殴り～二人で体当たり 前面   ef_008
setEffMoveKey( spep_5 + 0, tackle_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 166, tackle_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tackle_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 166, tackle_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tackle_f, 0 );
setEffRotateKey( spep_5 + 166, tackle_f, 0 );
setEffAlphaKey( spep_5 + 0, tackle_f, 255 );
setEffAlphaKey( spep_5 + 166 -1, tackle_f, 255 );
setEffAlphaKey( spep_5 + 166, tackle_f, 0 );

tackle_b = entryEffectLife( spep_5 + 0, SP_09, 166, 0x80, -1, 0, 0, 0 );  --18号殴り～二人で体当たり 背面    ef_009
setEffMoveKey( spep_5 + 0, tackle_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 166, tackle_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tackle_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 166, tackle_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tackle_b, 0 );
setEffRotateKey( spep_5 + 166, tackle_b, 0 );
setEffAlphaKey( spep_5 + 0, tackle_b, 255 );
setEffAlphaKey( spep_5 + 166 -1, tackle_b, 255 );
setEffAlphaKey( spep_5 + 166, tackle_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_5 + 0, 1, 1 );--
setDisp( spep_5 -3 + 20, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, -177.6, 15.7 , 0 );
setMoveKey( spep_5 + 1, 1, -177, 22.4 , 0 );
setMoveKey( spep_5 + 2, 1, -166.4, 9 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -169.2, 15.7 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -158.6, 19 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -158.1, 15.7 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -154.1, 15.7 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 50.8, 15.7 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 255.8, 15.7 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 460.8, 15.7 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 665.8, 15.7 , 0 );

setScaleKey( spep_5 + 0, 1, 2.49, 2.49 );
setScaleKey( spep_5 + 1, 1, 2.5, 2.5 );
setScaleKey( spep_5 -3 + 20, 1, 2.5, 2.5 );

setRotateKey( spep_5 + 0, 1, -60.2 );
setRotateKey( spep_5 -3 + 20, 1, -60.2 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 40, 1, 1 );
setDisp( spep_5 -3 + 99, 1, 0 );
changeAnime( spep_5 -3 + 40, 1, 106 );
changeAnime( spep_5 -3 + 68, 1, 108 );

setMoveKey( spep_5 -3 + 40, 1, -395.2, 22.4 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -296.4, 22.4 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -197.6, 22.4 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -98.8, 22.4 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 0, 22.4 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 4.8, 22.4 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 9.7, 22.4 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 14.5, 22.4 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 19.4, 22.4 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 24.2, 22.4 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 29, 22.4 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 33.9, 22.4 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 38.7, 22.4 , 0 );
setMoveKey( spep_5 -3 + 67, 1, 43.6, 22.4 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 133.5, 109.1 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 153.6, 75.6 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 130.2, 95.7 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 153.6, 99 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 143.6, 78.9 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 207.2, 89 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 270.8, 89 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 334.5, 89 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 398.1, 89 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 461.8, 89 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 525.4, 89 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 589, 89 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 652.7, 89 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 716.3, 89 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 780, 89 , 0 );
setMoveKey( spep_5 -3 + 99, 1, 843.6, 89 , 0 );

setScaleKey( spep_5 -3 + 40, 1, 2.5, 2.5 );
setScaleKey( spep_5 -3 + 67, 1, 2.5, 2.5 );
setScaleKey( spep_5 -3 + 68, 1, 3, 3 );
setScaleKey( spep_5 -3 + 99, 1, 3, 3 );

setRotateKey( spep_5 -3 + 40, 1, -28.7 );
setRotateKey( spep_5 -3 + 67, 1, -28.7 );
setRotateKey( spep_5 -3 + 68, 1, -28.6 );
setRotateKey( spep_5 -3 + 99, 1, -28.6 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 108, 1, 1 );
setDisp( spep_5 -3 + 120, 1, 0 );
changeAnime( spep_5 -3 + 108, 1, 105 );

setMoveKey( spep_5 -3 + 108, 1, 0, -193.3 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 0, -154.6 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 0, -115.8 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 0, -77.1 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 0.1, -38.4 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 10.2, -13.1 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 10.2, -13.1 , 0 );

setScaleKey( spep_5 -3 + 108, 1, 3.99, 3.99 );
setScaleKey( spep_5 -3 + 110, 1, 3.36, 3.36 );
setScaleKey( spep_5 -3 + 112, 1, 2.72, 2.72 );
setScaleKey( spep_5 -3 + 114, 1, 2.08, 2.08 );
setScaleKey( spep_5 -3 + 116, 1, 1.44, 1.44 );
setScaleKey( spep_5 -3 + 118, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 120, 1, 0.8, 0.8 );

setRotateKey( spep_5 -3 + 108, 1, -28.6 );
setRotateKey( spep_5 -3 + 120, 1, -28.6 );

-- ** 音 ** --
--敵飛んでいく
SE044 = playSeVer2( spep_5 + 18, 1183, "",spep_5 + 74, 0, 18, -1);

--2人タックル
SE045 = playSeVer2( spep_5 + 44, 1003, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_5 + 44, 1004, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_5 + 56, 1153, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_5 + 56, 1187, "", 0, 0, 0, -1);

--壁衝突
SE050 = playSeVer2( spep_5 + 78, 1121, "",spep_5 + 116, 0, 10, -1);
SE051 = playSeVer2( spep_5 + 106, 1159, "",spep_5 +166 + 44, 0, 64, -1);
setSeVolumeByWorkId( spep_5 + 106, SE051, 70 );

--18号フレームイン
SE052 = playSeVer2( spep_5 + 160, 44, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 166;


------------------------------------------------------
-- 気弾構え(136F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_6 + 0, SP_10, 136, 0x100, -1, 0, 0, 0 );  --気弾構え   ef_010
setEffMoveKey( spep_6 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_6 + 136, tame, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_6 + 136, tame, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tame, 0 );
setEffRotateKey( spep_6 + 136, tame, 0 );
setEffAlphaKey( spep_6 + 0, tame, 255 );
setEffAlphaKey( spep_6 + 136 -1, tame, 255 );
setEffAlphaKey( spep_6 + 136, tame, 0 );

-- ** 音 ** --
--2人気弾溜め
SE049 = playSeVer2( spep_6 + 82, 1204, "",spep_6 + 130, 4, 6, -1);
setSeVolumeByWorkId( spep_6 + 82, SE049, 200 );
setStartTimeMs( SE049,  2950 );

--17号フレームイン
SE053 = playSeVer2( spep_6 + 22, 1072, "", 0, 0, 0, 0.6);
setPitch( spep_6 + 22, SE053, -400 );
setTimeStretch( SE053, 0.73, 30, 4 );

--2人気弾溜め
SE054 = playSeVer2( spep_6 + 88, 49, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_6 + 88, 1154, "",spep_6 + 142, 0, 8, -1);
setSeVolumeByWorkId( spep_6 + 88, SE055, 158 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 136;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_7 = 0;
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_7 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え


if (_SPECIAL_SKILL_LEVEL_ == 0) then
	print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_7, SE_05);
    speff = entryEffect( spep_7, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_7, SE_05);
	speff = entryEffect( spep_7, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_7, SE_05);
	speff = entryEffect( spep_7, 1121, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_7 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_7 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_7 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_7 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_7 + 0, shuchusen, 0 );
setEffRotateKey( spep_7 + 90, shuchusen, 0 );
setEffAlphaKey( spep_7 + 0, shuchusen, 255 );
setEffAlphaKey( spep_7 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_7 + 0, SE_05 );

--連続気弾
SE057 = playSeVer2( spep_7 + 82, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 82, SE057, 141 );
setPitch( spep_7 + 82, SE057, -400 );
setTimeStretch( SE057, 0.73, 30, 4 );
SE058 = playSeVer2( spep_7 + 90, 1023, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_7 + 92, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 92, SE059, 141 );
setPitch( spep_7 + 92, SE059, -400 );
setTimeStretch( SE059, 0.73, 30, 4 );

-- ** 白背景 ** --
entryFadeBg( spep_7 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_7 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_7 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 94;

------------------------------------------------------
-- フィニッシュ(222F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 );  --フィニッシュ   ef_011
setEffMoveKey( spep_8 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_8 + 222, finish, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_8 + 222, finish, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish, 0 );
setEffRotateKey( spep_8 + 222, finish, 0 );
setEffAlphaKey( spep_8 + 0, finish, 255 );
setEffAlphaKey( spep_8 + 222, finish, 255 );

-- ** 音 ** --
--連続気弾
SE060 = playSeVer2( spep_8 + 0, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 0, SE060, 181 );
setPitch( spep_8 + 0, SE060, -400 );
setTimeStretch( SE060, 0.73, 30, 4 );
SE061 = playSeVer2( spep_8 + 10, 1024, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_8 + 12, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 12, SE062, 181 );
setPitch( spep_8 + 12, SE062, -400 );
setTimeStretch( SE062, 0.73, 30, 4 );
SE063 = playSeVer2( spep_8 + 22, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 22, SE063, 181 );
setPitch( spep_8 + 22, SE063, -400 );
setTimeStretch( SE063, 0.73, 30, 4 );
SE064 = playSeVer2( spep_8 + 32, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 32, SE064, 181 );
setPitch( spep_8 + 32, SE064, -400 );
setTimeStretch( SE064, 0.73, 30, 4 );
SE065 = playSeVer2( spep_8 + 42, 1016, "", 0, 0, 0, -1);
setPitch( spep_8 + 42, SE065, -400 );
setTimeStretch( SE065, 0.73, 30, 4 );
SE066 = playSeVer2( spep_8 + 52, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 52, SE066, 100 );
setPitch( spep_8 + 52, SE066, -400 );
setTimeStretch( SE066, 0.73, 30, 4 );
SE067 = playSeVer2( spep_8 + 62, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 62, SE067, 100 );
setPitch( spep_8 + 62, SE067, -400 );
setTimeStretch( SE067, 0.73, 30, 4 );
SE068 = playSeVer2( spep_8 + 64, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 64, SE068, 100 );
SE069 = playSeVer2( spep_8 + 70, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 70, SE069, 100 );
setPitch( spep_8 + 70, SE069, -400 );
setTimeStretch( SE069, 0.73, 30, 4 );
SE070 = playSeVer2( spep_8 + 80, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 80, SE070, 100 );
setPitch( spep_8 + 80, SE070, -400 );
setTimeStretch( SE070, 0.73, 30, 4 );
SE071 = playSeVer2( spep_8 + 92, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 92, SE071, 100 );
setPitch( spep_8 + 92, SE071, -400 );
setTimeStretch( SE071, 0.73, 30, 4 );
SE072 = playSeVer2( spep_8 + 104, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 104, SE072, 100 );
setPitch( spep_8 + 104, SE072, -400 );
setTimeStretch( SE072, 0.73, 30, 4 );
SE073 = playSeVer2( spep_8 + 114, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 114, SE073, 100 );
setPitch( spep_8 + 114, SE073, -400 );
setTimeStretch( SE073, 0.73, 30, 4 );
SE074 = playSeVer2( spep_8 + 116, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 116, SE074, 112 );
SE075 = playSeVer2( spep_8 + 124, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 124, SE075, 100 );
setPitch( spep_8 + 124, SE075, -400 );
setTimeStretch( SE075, 0.73, 30, 4 );
SE076 = playSeVer2( spep_8 + 134, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 134, SE076, 100 );
setPitch( spep_8 + 134, SE076, -400 );
setTimeStretch( SE076, 0.73, 30, 4 );
SE077 = playSeVer2( spep_8 + 146, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 146, SE077, 100 );
setPitch( spep_8 + 146, SE077, -400 );
setTimeStretch( SE077, 0.73, 30, 4 );
SE078 = playSeVer2( spep_8 + 154, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 154, SE078, 100 );
setPitch( spep_8 + 154, SE078, -400 );
setTimeStretch( SE078, 0.73, 30, 4 );
SE079 = playSeVer2( spep_8 + 162, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 162, SE079, 127 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 222 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 62 );
endPhase( spep_8 + 212 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕～18号髪の毛かきあげ(196F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 196, 0x100, -1, 0, 0, 0 );  --開幕～18号髪の毛かきあげ   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 196, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 196, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 196 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 196, first_f, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 +196 + 154, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 24 );

--カメラ遷移
SE003 = playSeVer2( spep_0 + 28, 1232, "", 0, 0, 0, -1);
setPitch( spep_0 + 28, SE003, 400 );
setTimeStretch( SE003, 1.27, 30, 4 );
SE004 = playSeVer2( spep_0 + 30, 4, "", 0, 0, 0, -1);

--髪なびく
SE005 = playSeVer2( spep_0 + 76, 1003, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 116, 1333, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE006, 124 );
setStartTimeMs( SE006,  400 );
SE007 = playSeVer2( spep_0 + 104, 1331, "",spep_0 + 154, 0, 18, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 196 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 196;


------------------------------------------------------
-- セリフカットイン～重なる～手前ダッシュ(184F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
fdash = entryEffectLife( spep_1 + 0, SP_02, 184, 0x100, -1, 0, 0, 0 );  --セリフカットイン～重なる～手前ダッシュ   ef_002
setEffMoveKey( spep_1 + 0, fdash, 0, 0 , 0 );
setEffMoveKey( spep_1 + 184, fdash, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fdash, -1.0, 1.0 );
setEffScaleKey( spep_1 + 184, fdash, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fdash, 0 );
setEffRotateKey( spep_1 + 184, fdash, 0 );
setEffAlphaKey( spep_1 + 0, fdash, 255 );
setEffAlphaKey( spep_1 + 184 -1, fdash, 255 );
setEffAlphaKey( spep_1 + 184, fdash, 0 );

spep_x = spep_1 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--顔カットイン
--SE008 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);


--2人重なる
SE009 = playSeVer2( spep_1 + 90, 1274, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 90, SE009, 80 );
setPitch( spep_1 + 90, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );
SE010 = playSeVer2( spep_1 + 90, 1295, "",spep_1 + 178, 30, 24, 0.6);
setSeVolumeByWorkId( spep_1 + 90, SE010, 145 );
SE011 = playSeVer2( spep_1 + 90, 1271, "",spep_1 + 178, 0, 24, 0.6);
setSeVolumeByWorkId( spep_1 + 90, SE011, 141 );

--ダッシュ
SE013 = playSeVer2( spep_1 + 156, 1182, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 166, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 166, SE014, 209 );
SE015 = playSeVer2( spep_1 + 176, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 176, SE015, 224 );

--2人向かってくる
SE016 = playSeVer2( spep_1 + 180, 1117, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 180, 1116, "",spep_1 +184 + 36, 0, 18, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 184 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 184;


------------------------------------------------------
-- 分裂して初撃(96F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
fattack_f = entryEffectLife( spep_2 + 0, SP_03, 96, 0x100, -1, 0, 0, 0 );  --分裂して初撃 前面  ef_003
setEffMoveKey( spep_2 + 0, fattack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, fattack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, fattack_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 96, fattack_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fattack_f, 0 );
setEffRotateKey( spep_2 + 96, fattack_f, 0 );
setEffAlphaKey( spep_2 + 0, fattack_f, 255 );
setEffAlphaKey( spep_2 + 96 -1, fattack_f, 255 );
setEffAlphaKey( spep_2 + 96, fattack_f, 0 );

fattack_b = entryEffectLife( spep_2 + 0, SP_04, 96, 0x80, -1, 0, 0, 0 );  --分裂して初撃 背面   ef_004
setEffMoveKey( spep_2 + 0, fattack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, fattack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, fattack_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 96, fattack_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fattack_b, 0 );
setEffRotateKey( spep_2 + 96, fattack_b, 0 );
setEffAlphaKey( spep_2 + 0, fattack_b, 255 );
setEffAlphaKey( spep_2 + 96 -1, fattack_b, 255 );
setEffAlphaKey( spep_2 + 96, fattack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 96, 1, 0 );
changeAnime( spep_2 + 0, 1, 18 );

setMoveKey( spep_2 + 0, 1, 11.3, -408.8 , 0 );

setScaleKey( spep_2 + 0, 1, 4, 4 );

setRotateKey( spep_2 + 0, 1, -47 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 11.3, -408.8 , 0 );
    setMoveKey( SP_dodge + 10, 1, 11.3, -408.8 , 0 );

    setScaleKey( SP_dodge + 0, 1, 4, 4 );
    setScaleKey( SP_dodge + 10, 1, 4, 4 );

    setRotateKey( SP_dodge + 0, 1, -47 );
    setRotateKey( SP_dodge + 10, 1, -47 );    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め 背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 敵キャラクター ** --
changeAnime( spep_2 -3 + 46, 1, 7 );
changeAnime( spep_2 -3 + 68, 1, 106 );
changeAnime( spep_2 -3 + 74, 1, 107 );

setMoveKey( spep_2 -3 + 45, 1, 11.3, -408.8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 71.6, -286.4 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 56.8, -314.2 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 63.3, -315.6 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 48.5, -330.3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 49.6, -329 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 45.5, -346.3 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 41.3, -355.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 37.2, -364.9 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 33, -374.3 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 28.8, -383.6 , 0 );
setMoveKey( spep_2 -3 + 67, 1, 24.7, -392.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 83.5, -156.4 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 52.9, -151.3 , 0 );
setMoveKey( spep_2 -3 + 73, 1, 100.8, -140.4 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 39, -254.1 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 50.8, -266.2 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 51.7, -268.6 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 52.6, -300 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 53.6, -320.9 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 54.5, -341.7 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 55.4, -362.6 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 56.3, -383.4 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 57.2, -404.3 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 58.1, -425.1 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 59, -446 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 59.9, -466.8 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 60.8, -487.7 , 0 );
setMoveKey( spep_2 -3 + 99, 1, 60.8, -487.7 , 0 );

setScaleKey( spep_2 -3 + 45, 1, 4, 4 );
setScaleKey( spep_2 -3 + 46, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 48, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 50, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 52, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 54, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 56, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 58, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 60, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 62, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 64, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 67, 1, 2, 2 );
setScaleKey( spep_2 -3 + 68, 1, 3.94, 3.94 );
setScaleKey( spep_2 -3 + 73, 1, 3.94, 3.94 );
setScaleKey( spep_2 -3 + 74, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 76, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 78, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 80, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 82, 1, 2.03, 2.03 );
setScaleKey( spep_2 -3 + 84, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 86, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 88, 1, 2.21, 2.21 );
setScaleKey( spep_2 -3 + 90, 1, 2.27, 2.27 );
setScaleKey( spep_2 -3 + 92, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 94, 1, 2.39, 2.39 );
setScaleKey( spep_2 -3 + 96, 1, 2.45, 2.45 );
setScaleKey( spep_2 -3 + 98, 1, 2.51, 2.51 );
setScaleKey( spep_2 -3 + 99, 1, 2.51, 2.51 );

setRotateKey( spep_2 -3 + 45, 1, -47 );
setRotateKey( spep_2 -3 + 46, 1, -19.3 );
setRotateKey( spep_2 -3 + 48, 1, -19.5 );
setRotateKey( spep_2 -3 + 67, 1, -19.5 );
setRotateKey( spep_2 -3 + 68, 1, -26.6 );
setRotateKey( spep_2 -3 + 73, 1, -26.6 );
setRotateKey( spep_2 -3 + 74, 1, -3.8 );
setRotateKey( spep_2 -3 + 99, 1, -3.8 );

-- ** 音 ** --
--キック
SE018 = playSeVer2( spep_2 + 30, 1004, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 36, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 36, 1010, "", 0, 0, 0, -1);

--17号パンチ
SE021 = playSeVer2( spep_2 + 60, 1000, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 60, 1009, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 62, 1110, "", 0, 0, 0, -1);

--18号ダッシュ
SE024 = playSeVer2( spep_2 + 86, 9, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 86, 1182, "",spep_2 +96 + 18, 0, 18, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;


------------------------------------------------------
-- 手前ダッシュ18号＆17号(76F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
sfdash = entryEffectLife( spep_3 + 0, SP_05, 76, 0x100, -1, 0, 0, 0 );  --手前ダッシュ18号＆17号 ef_005
setEffMoveKey( spep_3 + 0, sfdash, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, sfdash, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, sfdash, -1.0, 1.0 );
setEffScaleKey( spep_3 + 76, sfdash, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sfdash, 0 );
setEffRotateKey( spep_3 + 76, sfdash, 0 );
setEffAlphaKey( spep_3 + 0, sfdash, 255 );
setEffAlphaKey( spep_3 + 76 -1, sfdash, 255 );
setEffAlphaKey( spep_3 + 76, sfdash, 0 );

-- ** 音 ** --
--18号走る
SE026 = playSeVer2( spep_3 + 2, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 2, SE026, 158 );
setPitch( spep_3 + 2, SE026, 400 );
setTimeStretch( SE026, 1.27, 30, 4 );
SE027 = playSeVer2( spep_3 + 12, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 12, SE027, 211 );
setPitch( spep_3 + 12, SE027, 400 );
setTimeStretch( SE027, 1.27, 30, 4 );
SE028 = playSeVer2( spep_3 + 22, 1107, "", 0, 0, 0, -1);
setPitch( spep_3 + 22, SE028, 400 );
setTimeStretch( SE028, 1.27, 30, 4 );

--17号ダッシュ
SE029 = playSeVer2( spep_3 + 26, 9, "", 0, 0, 0, -1);
setPitch( spep_3 + 26, SE029, 200 );
setTimeStretch( SE029, 1.13, 30, 4 );

--17号走る
SE030 = playSeVer2( spep_3 + 42, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 42, SE030, 168 );
SE031 = playSeVer2( spep_3 + 50, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 50, SE031, 197 );
SE032 = playSeVer2( spep_3 + 60, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 60, SE032, 153 );

--ラッシュ
SE033 = playSeVer2( spep_3 + 66, 1110, "",spep_3 +76 + 22, 0, 12, -1);
SE034 = playSeVer2( spep_3 + 66, 1009, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_3 + 74, 1110, "",spep_3 +76 + 34, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 74, SE035, 87 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;


------------------------------------------------------
-- 連撃 背面(56F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
rash_f = entryEffectLife( spep_4 + 0, SP_06e, 56, 0x100, -1, 0, 0, 0 );  --連撃 前面 ef_006
setEffMoveKey( spep_4 + 0, rash_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, rash_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rash_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, rash_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rash_f, 0 );
setEffRotateKey( spep_4 + 56, rash_f, 0 );
setEffAlphaKey( spep_4 + 0, rash_f, 255 );
setEffAlphaKey( spep_4 + 56 -1, rash_f, 255 );
setEffAlphaKey( spep_4 + 56, rash_f, 0 );

rash_b = entryEffectLife( spep_4 + 0, SP_07, 56, 0x80, -1, 0, 0, 0 );  --連撃 背面  ef_007
setEffMoveKey( spep_4 + 0, rash_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, rash_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rash_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, rash_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rash_b, 0 );
setEffRotateKey( spep_4 + 56, rash_b, 0 );
setEffAlphaKey( spep_4 + 0, rash_b, 255 );
setEffAlphaKey( spep_4 + 56 -1, rash_b, 255 );
setEffAlphaKey( spep_4 + 56, rash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
--setDisp( spep_4 + 56, 1, 0 );--
changeAnime( spep_4 + 0, 1, 107 );
changeAnime( spep_4 -3 + 16, 1, 7 );
changeAnime( spep_4 -3 + 26, 1, 107 );
changeAnime( spep_4 -3 + 42, 1, 7 );
changeAnime( spep_4 -3 + 52, 1, 107 );

setMoveKey( spep_4 + 0, 1, 27.7, 85.9 , 0 );
setMoveKey( spep_4 + 1, 1, 26.7, 94.6 , 0 );
setMoveKey( spep_4 + 2, 1, 33.2, 88.2 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 27.1, 99.4 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 38.6, 98 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 35, 109.2 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 34, 112.8 , 0 );
setMoveKey( spep_4 -3 + 15, 1, 40.5, 106.5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 92.3, 84.4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 103.7, 83 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 100.1, 94.1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 99.1, 97.8 , 0 );
setMoveKey( spep_4 -3 + 25, 1, 105.6, 91.4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 41.7, 135.9 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 53.1, 134.5 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 49.6, 145.7 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 48.6, 149.4 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 55, 143 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 49, 154.2 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 60.4, 152.8 , 0 );
setMoveKey( spep_4 -3 + 41, 1, 56.9, 164 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 113.7, 134.3 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 120.1, 128 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 114.1, 139.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 125.5, 137.8 , 0 );
setMoveKey( spep_4 -3 + 51, 1, 122, 149 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 63.1, 185.9 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 69.6, 179.6 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 63.6, 190.7 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 75, 189.4 , 0 );
--setMoveKey( spep_4 -3 + 59, 1, 75, 189.4 , 0 );

s4 = 0.04;
setScaleKey( spep_4 + 0, 1, 0.66 -s4, 0.66 -s4 );
setScaleKey( spep_4 -3 + 58, 1, 0.66 -s4, 0.66 -s4 );
--setScaleKey( spep_4 -3 + 59, 1, 0.66, 0.66 );--

setRotateKey( spep_4 + 0, 1, -52.2 );
setRotateKey( spep_4 + 1, 1, -54.9 );
setRotateKey( spep_4 + 2, 1, -52.2 );
setRotateKey( spep_4 -3 + 6, 1, -54.9 );
setRotateKey( spep_4 -3 + 8, 1, -52.2 );
setRotateKey( spep_4 -3 + 10, 1, -54.9 );
setRotateKey( spep_4 -3 + 12, 1, -52.2 );
setRotateKey( spep_4 -3 + 15, 1, -54.9 );
setRotateKey( spep_4 -3 + 16, 1, 93.1 );
setRotateKey( spep_4 -3 + 18, 1, 95.6 );
setRotateKey( spep_4 -3 + 20, 1, 93.1 );
setRotateKey( spep_4 -3 + 22, 1, 95.6 );
setRotateKey( spep_4 -3 + 25, 1, 93.1 );
setRotateKey( spep_4 -3 + 26, 1, -52.2 );
setRotateKey( spep_4 -3 + 28, 1, -54.9 );
setRotateKey( spep_4 -3 + 30, 1, -52.2 );
setRotateKey( spep_4 -3 + 32, 1, -54.9 );
setRotateKey( spep_4 -3 + 34, 1, -52.2 );
setRotateKey( spep_4 -3 + 36, 1, -54.9 );
setRotateKey( spep_4 -3 + 38, 1, -52.2 );
setRotateKey( spep_4 -3 + 41, 1, -54.9 );
setRotateKey( spep_4 -3 + 42, 1, 93.1 );
setRotateKey( spep_4 -3 + 44, 1, 95.6 );
setRotateKey( spep_4 -3 + 46, 1, 93.1 );
setRotateKey( spep_4 -3 + 48, 1, 95.6 );
setRotateKey( spep_4 -3 + 51, 1, 93.1 );
setRotateKey( spep_4 -3 + 52, 1, -52.2 );
setRotateKey( spep_4 -3 + 54, 1, -54.9 );
setRotateKey( spep_4 -3 + 56, 1, -52.2 );
setRotateKey( spep_4 -3 + 58, 1, -54.9 );
--setRotateKey( spep_4 -3 + 59, 1, -54.9 );--

-- ** 音 ** --
--ラッシュ
SE036 = playSeVer2( spep_4 + 0, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE036, 83 );
SE037 = playSeVer2( spep_4 + 8, 1110, "",spep_4 + 42, 0, 12, -1);
setPitch( spep_4 + 8, SE037, -200 );
setTimeStretch( SE037, 0.87, 30, 4 );
SE038 = playSeVer2( spep_4 + 16, 1110, "",spep_4 + 48, 0, 12, -1);
SE039 = playSeVer2( spep_4 + 16, 1010, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_4 + 22, 1110, "",spep_4 + 56, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 22, SE012, 88 );
setPitch( spep_4 + 22, SE012, 200 );
setTimeStretch( SE012, 1.13, 30, 4 );
SE040 = playSeVer2( spep_4 + 36, 1110, "",spep_4 +56 + 14, 0, 14, -1);
SE041 = playSeVer2( spep_4 + 36, 1000, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_4 + 52, 1110, "", 0, 0, 0, -1);

--18号パンチ
SE043 = playSeVer2( spep_4 + 52, 1120, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


------------------------------------------------------
-- 18号殴り～二人で体当たり(166F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
tackle_f = entryEffectLife( spep_5 + 0, SP_08e, 166, 0x100, -1, 0, 0, 0 );  --18号殴り～二人で体当たり 前面   ef_008
setEffMoveKey( spep_5 + 0, tackle_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 166, tackle_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tackle_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 166, tackle_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tackle_f, 0 );
setEffRotateKey( spep_5 + 166, tackle_f, 0 );
setEffAlphaKey( spep_5 + 0, tackle_f, 255 );
setEffAlphaKey( spep_5 + 166 -1, tackle_f, 255 );
setEffAlphaKey( spep_5 + 166, tackle_f, 0 );

tackle_b = entryEffectLife( spep_5 + 0, SP_09, 166, 0x80, -1, 0, 0, 0 );  --18号殴り～二人で体当たり 背面    ef_009
setEffMoveKey( spep_5 + 0, tackle_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 166, tackle_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tackle_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 166, tackle_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tackle_b, 0 );
setEffRotateKey( spep_5 + 166, tackle_b, 0 );
setEffAlphaKey( spep_5 + 0, tackle_b, 255 );
setEffAlphaKey( spep_5 + 166 -1, tackle_b, 255 );
setEffAlphaKey( spep_5 + 166, tackle_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_5 + 0, 1, 1 );--
setDisp( spep_5 -3 + 20, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, -177.6, 15.7 , 0 );
setMoveKey( spep_5 + 1, 1, -177, 22.4 , 0 );
setMoveKey( spep_5 + 2, 1, -166.4, 9 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -169.2, 15.7 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -158.6, 19 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -158.1, 15.7 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -154.1, 15.7 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 50.8, 15.7 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 255.8, 15.7 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 460.8, 15.7 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 665.8, 15.7 , 0 );

setScaleKey( spep_5 + 0, 1, 2.49, 2.49 );
setScaleKey( spep_5 + 1, 1, 2.5, 2.5 );
setScaleKey( spep_5 -3 + 20, 1, 2.5, 2.5 );

setRotateKey( spep_5 + 0, 1, -60.2 );
setRotateKey( spep_5 -3 + 20, 1, -60.2 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 40, 1, 1 );
setDisp( spep_5 -3 + 99, 1, 0 );
changeAnime( spep_5 -3 + 40, 1, 106 );
changeAnime( spep_5 -3 + 68, 1, 108 );

setMoveKey( spep_5 -3 + 40, 1, -395.2, 22.4 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -296.4, 22.4 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -197.6, 22.4 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -98.8, 22.4 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 0, 22.4 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 4.8, 22.4 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 9.7, 22.4 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 14.5, 22.4 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 19.4, 22.4 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 24.2, 22.4 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 29, 22.4 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 33.9, 22.4 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 38.7, 22.4 , 0 );
setMoveKey( spep_5 -3 + 67, 1, 43.6, 22.4 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 133.5, 109.1 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 153.6, 75.6 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 130.2, 95.7 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 153.6, 99 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 143.6, 78.9 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 207.2, 89 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 270.8, 89 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 334.5, 89 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 398.1, 89 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 461.8, 89 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 525.4, 89 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 589, 89 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 652.7, 89 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 716.3, 89 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 780, 89 , 0 );
setMoveKey( spep_5 -3 + 99, 1, 843.6, 89 , 0 );

setScaleKey( spep_5 -3 + 40, 1, 2.5, 2.5 );
setScaleKey( spep_5 -3 + 67, 1, 2.5, 2.5 );
setScaleKey( spep_5 -3 + 68, 1, 3, 3 );
setScaleKey( spep_5 -3 + 99, 1, 3, 3 );

setRotateKey( spep_5 -3 + 40, 1, -28.7 );
setRotateKey( spep_5 -3 + 67, 1, -28.7 );
setRotateKey( spep_5 -3 + 68, 1, -28.6 );
setRotateKey( spep_5 -3 + 99, 1, -28.6 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 108, 1, 1 );
setDisp( spep_5 -3 + 120, 1, 0 );
changeAnime( spep_5 -3 + 108, 1, 105 );

setMoveKey( spep_5 -3 + 108, 1, 0, -193.3 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 0, -154.6 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 0, -115.8 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 0, -77.1 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 0.1, -38.4 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 10.2, -13.1 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 10.2, -13.1 , 0 );

setScaleKey( spep_5 -3 + 108, 1, 3.99, 3.99 );
setScaleKey( spep_5 -3 + 110, 1, 3.36, 3.36 );
setScaleKey( spep_5 -3 + 112, 1, 2.72, 2.72 );
setScaleKey( spep_5 -3 + 114, 1, 2.08, 2.08 );
setScaleKey( spep_5 -3 + 116, 1, 1.44, 1.44 );
setScaleKey( spep_5 -3 + 118, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 120, 1, 0.8, 0.8 );

setRotateKey( spep_5 -3 + 108, 1, -28.6 );
setRotateKey( spep_5 -3 + 120, 1, -28.6 );

-- ** 音 ** --
--敵飛んでいく
SE044 = playSeVer2( spep_5 + 18, 1183, "",spep_5 + 74, 0, 18, -1);

--2人タックル
SE045 = playSeVer2( spep_5 + 44, 1003, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_5 + 44, 1004, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_5 + 56, 1153, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_5 + 56, 1187, "", 0, 0, 0, -1);

--壁衝突
SE050 = playSeVer2( spep_5 + 78, 1121, "",spep_5 + 116, 0, 10, -1);
SE051 = playSeVer2( spep_5 + 106, 1159, "",spep_5 +166 + 44, 0, 64, -1);
setSeVolumeByWorkId( spep_5 + 106, SE051, 70 );

--18号フレームイン
SE052 = playSeVer2( spep_5 + 160, 44, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 166;


------------------------------------------------------
-- 気弾構え(136F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_6 + 0, SP_10, 136, 0x100, -1, 0, 0, 0 );  --気弾構え   ef_010
setEffMoveKey( spep_6 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_6 + 136, tame, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_6 + 136, tame, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tame, 0 );
setEffRotateKey( spep_6 + 136, tame, 0 );
setEffAlphaKey( spep_6 + 0, tame, 255 );
setEffAlphaKey( spep_6 + 136 -1, tame, 255 );
setEffAlphaKey( spep_6 + 136, tame, 0 );

-- ** 音 ** --
--2人気弾溜め
SE049 = playSeVer2( spep_6 + 82, 1204, "",spep_6 + 130, 4, 6, -1);
setSeVolumeByWorkId( spep_6 + 82, SE049, 200 );
setStartTimeMs( SE049,  2950 );

--17号フレームイン
SE053 = playSeVer2( spep_6 + 22, 1072, "", 0, 0, 0, 0.6);
setPitch( spep_6 + 22, SE053, -400 );
setTimeStretch( SE053, 0.73, 30, 4 );

--2人気弾溜め
SE054 = playSeVer2( spep_6 + 88, 49, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_6 + 88, 1154, "",spep_6 + 142, 0, 8, -1);
setSeVolumeByWorkId( spep_6 + 88, SE055, 158 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 136;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_7 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_7 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_7 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_7 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_7 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_7 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_7 + 0, shuchusen, 0 );
setEffRotateKey( spep_7 + 90, shuchusen, 0 );
setEffAlphaKey( spep_7 + 0, shuchusen, 255 );
setEffAlphaKey( spep_7 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_7 + 0, SE_05 );

--連続気弾
SE057 = playSeVer2( spep_7 + 82, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 82, SE057, 141 );
setPitch( spep_7 + 82, SE057, -400 );
setTimeStretch( SE057, 0.73, 30, 4 );
SE058 = playSeVer2( spep_7 + 90, 1023, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_7 + 92, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 92, SE059, 141 );
setPitch( spep_7 + 92, SE059, -400 );
setTimeStretch( SE059, 0.73, 30, 4 );

-- ** 白背景 ** --
entryFadeBg( spep_7 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_7 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_7 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 94;


------------------------------------------------------
-- フィニッシュ(222F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 );  --フィニッシュ   ef_011
setEffMoveKey( spep_8 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_8 + 222, finish, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_8 + 222, finish, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish, 0 );
setEffRotateKey( spep_8 + 222, finish, 0 );
setEffAlphaKey( spep_8 + 0, finish, 255 );
setEffAlphaKey( spep_8 + 222, finish, 255 );

-- ** 音 ** --
--連続気弾
SE060 = playSeVer2( spep_8 + 0, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 0, SE060, 181 );
setPitch( spep_8 + 0, SE060, -400 );
setTimeStretch( SE060, 0.73, 30, 4 );
SE061 = playSeVer2( spep_8 + 10, 1024, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_8 + 12, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 12, SE062, 181 );
setPitch( spep_8 + 12, SE062, -400 );
setTimeStretch( SE062, 0.73, 30, 4 );
SE063 = playSeVer2( spep_8 + 22, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 22, SE063, 181 );
setPitch( spep_8 + 22, SE063, -400 );
setTimeStretch( SE063, 0.73, 30, 4 );
SE064 = playSeVer2( spep_8 + 32, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 32, SE064, 181 );
setPitch( spep_8 + 32, SE064, -400 );
setTimeStretch( SE064, 0.73, 30, 4 );
SE065 = playSeVer2( spep_8 + 42, 1016, "", 0, 0, 0, -1);
setPitch( spep_8 + 42, SE065, -400 );
setTimeStretch( SE065, 0.73, 30, 4 );
SE066 = playSeVer2( spep_8 + 52, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 52, SE066, 100 );
setPitch( spep_8 + 52, SE066, -400 );
setTimeStretch( SE066, 0.73, 30, 4 );
SE067 = playSeVer2( spep_8 + 62, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 62, SE067, 100 );
setPitch( spep_8 + 62, SE067, -400 );
setTimeStretch( SE067, 0.73, 30, 4 );
SE068 = playSeVer2( spep_8 + 64, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 64, SE068, 100 );
SE069 = playSeVer2( spep_8 + 70, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 70, SE069, 100 );
setPitch( spep_8 + 70, SE069, -400 );
setTimeStretch( SE069, 0.73, 30, 4 );
SE070 = playSeVer2( spep_8 + 80, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 80, SE070, 100 );
setPitch( spep_8 + 80, SE070, -400 );
setTimeStretch( SE070, 0.73, 30, 4 );
SE071 = playSeVer2( spep_8 + 92, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 92, SE071, 100 );
setPitch( spep_8 + 92, SE071, -400 );
setTimeStretch( SE071, 0.73, 30, 4 );
SE072 = playSeVer2( spep_8 + 104, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 104, SE072, 100 );
setPitch( spep_8 + 104, SE072, -400 );
setTimeStretch( SE072, 0.73, 30, 4 );
SE073 = playSeVer2( spep_8 + 114, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 114, SE073, 100 );
setPitch( spep_8 + 114, SE073, -400 );
setTimeStretch( SE073, 0.73, 30, 4 );
SE074 = playSeVer2( spep_8 + 116, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 116, SE074, 112 );
SE075 = playSeVer2( spep_8 + 124, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 124, SE075, 100 );
setPitch( spep_8 + 124, SE075, -400 );
setTimeStretch( SE075, 0.73, 30, 4 );
SE076 = playSeVer2( spep_8 + 134, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 134, SE076, 100 );
setPitch( spep_8 + 134, SE076, -400 );
setTimeStretch( SE076, 0.73, 30, 4 );
SE077 = playSeVer2( spep_8 + 146, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 146, SE077, 100 );
setPitch( spep_8 + 146, SE077, -400 );
setTimeStretch( SE077, 0.73, 30, 4 );
SE078 = playSeVer2( spep_8 + 154, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 154, SE078, 100 );
setPitch( spep_8 + 154, SE078, -400 );
setTimeStretch( SE078, 0.73, 30, 4 );
SE079 = playSeVer2( spep_8 + 162, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 162, SE079, 127 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 222 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 62 );
endPhase( spep_8 + 212 );

end