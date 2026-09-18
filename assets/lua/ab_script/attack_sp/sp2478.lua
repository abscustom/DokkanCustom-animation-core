--1025560:アルティメット悟飯_必殺技：爆力魔閃
--sp_effect_a9_00097
--sp2478

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
SP_01 = 161202; --開幕 ef_001
SP_02 = 161204; --パンチアップ～地面叩き落とし 前面 ef_002
SP_03 = 161206; --パンチアップ～地面叩き落とし 背面 ef_003
SP_04 = 161208; --目線セリフカットイン ef_004
SP_05 = 161290; --気弾迫る～フィニッシュ ef_005

--敵側
SP_01r = 161203; --開幕 敵側 ef_001_e
SP_02r = 161205; --パンチアップ～地面叩き落とし 前面 敵側 ef_002_e
SP_03r = 161207; --パンチアップ～地面叩き落とし 背面 敵側 ef_003_e
SP_04r = 161289; --目線セリフカットイン 敵側 ef_004_e
SP_05r = 161291; --気弾迫る～フィニッシュ 敵側 ef_005_e

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 開幕(118F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_b = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --開幕 ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 118, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 118, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 118, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 118, first_b, 255 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 -3 + 56, 1, 1 );
changeAnime( spep_0 -3 + 56, 1, 102 );

setMoveKey( spep_0 -3 + 56, 1, 244, 1069.5 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 244, 904.5 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 244, 753.9 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 244, 617.6 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 244, 495.7 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 244, 388.1 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 244, 294.8 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 244, 215.9 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 244, 151.4 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 244, 101.2 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 244, 65.3 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 244, 43.8 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 244, 36.6 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 244, 36.6 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 244, 35.2 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 244, 33.9 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 244, 32.5 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 244, 31.1 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 244, 29.7 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 244, 28.4 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 244, 27 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 244, 25.6 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 244, 24.3 , 0 );

setScaleKey( spep_0 -3 + 56, 1, 4.5, 4.5 );

setRotateKey( spep_0 -3 + 56, 1, -11 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 148, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
setPitch( spep_0 + 0, SE001, -300 );
setTimeStretch( SE001, 0.8, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );
setPitch( spep_0 + 0, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );

--画面遷移
SE003 = playSeVer2( spep_0 + 34, 1072, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 118 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 100 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 244, 24.3 , 0 );
    setMoveKey( SP_dodge + 2, 1, 244, 22.9 , 0 );
    setMoveKey( SP_dodge + 4, 1, 244, 21.5 , 0 );
    setMoveKey( SP_dodge + 6, 1, 244, 20.1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 244, 18.8 , 0 );
    setMoveKey( SP_dodge + 10, 1, 244, 17.4 , 0 );

    setScaleKey( SP_dodge + 0, 1, 4.5, 4.5 );
    setScaleKey( SP_dodge + 2, 1, 4.5, 4.5 );
    setScaleKey( SP_dodge + 4, 1, 4.5, 4.5 );
    setScaleKey( SP_dodge + 6, 1, 4.5, 4.5 );
    setScaleKey( SP_dodge + 8, 1, 4.5, 4.5 );
    setScaleKey( SP_dodge + 10, 1, 4.5, 4.5 );

    setRotateKey( SP_dodge + 0, 1, -11 );
    setRotateKey( SP_dodge + 10, 1, -11 );
    
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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 119, 1, 0 );

setMoveKey( spep_0 -3 + 104, 1, 244, 22.9 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 244, 21.5 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 244, 20.1 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 244, 18.8 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 244, 17.4 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 244, 16 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 244, 14.7 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 244, 13.3 , 0 );
setMoveKey( spep_0 -3 + 119, 1, 244, 11.9 , 0 );

setScaleKey( spep_0 -3 + 119, 1, 4.5, 4.5 );

setRotateKey( spep_0 -3 + 119, 1, -11 );

-- ** 音 ** --
--向かってくる
SE004 = playSeVer2( spep_0 + 92, 1182, "",spep_0 + 136, 0, 16, -1);
SE005 = playSeVer2( spep_0 + 92, 1117, "",spep_0 + 136, 0, 16, -1);
SE006 = playSeVer2( spep_0 + 92, 1277, "",spep_0 + 136, 0, 16, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
	print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_1, SE_05);
	speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_1, SE_05);
	speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- パンチアップ～地面叩き落とし(300F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
punch_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --パンチアップ～地面叩き落とし 前面 ef_002
setEffMoveKey( spep_2 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 300, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 300, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_f, 0 );
setEffRotateKey( spep_2 + 300, punch_f, 0 );
setEffAlphaKey( spep_2 + 0, punch_f, 255 );
setEffAlphaKey( spep_2 + 300 -2, punch_f, 255 );
setEffAlphaKey( spep_2 + 300 -1, punch_f, 255 );
setEffAlphaKey( spep_2 + 300, punch_f, 0 );

punch_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --パンチアップ～地面叩き落とし 背面 ef_003
setEffMoveKey( spep_2 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 300, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 300, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_b, 0 );
setEffRotateKey( spep_2 + 300, punch_b, 0 );
setEffAlphaKey( spep_2 + 0, punch_b, 255 );
setEffAlphaKey( spep_2 + 300 -2, punch_b, 255 );
setEffAlphaKey( spep_2 + 300 -1, punch_b, 255 );
setEffAlphaKey( spep_2 + 300, punch_b, 0 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 174, 1, 0 );
changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 -3 + 8, 1, 106 );
changeAnime( spep_2 -3 + 74, 1, 108 );
changeAnime( spep_2 -3 + 112, 1, 107 );
changeAnime( spep_2 -3 + 142, 1, 105 );

setMoveKey( spep_2 + 0, 1, 401.8, -56.1 , 0 );
setMoveKey( spep_2 + 2, 1, 325.4, -96.6 , 0 );
setMoveKey( spep_2 + 4, 1, 249, -137.2 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 172.6, -177.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 95.6, -358.1 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 95.6, -358.1 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 58.1, -319 , 0 );
setMoveKey( spep_2 -3 + 11, 1, 58.1, -319 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 20.5, -279.9 , 0 );
setMoveKey( spep_2 -3 + 13, 1, 20.5, -279.9 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 93.6, -371.1 , 0 );
setMoveKey( spep_2 -3 + 15, 1, 93.6, -371.1 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 166.6, -462.3 , 0 );
setMoveKey( spep_2 -3 + 17, 1, 166.6, -462.3 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 83.9, -433.3 , 0 );
setMoveKey( spep_2 -3 + 19, 1, 83.9, -433.3 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 1.2, -404.3 , 0 );
setMoveKey( spep_2 -3 + 21, 1, 1.2, -404.3 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 79, -341.5 , 0 );
setMoveKey( spep_2 -3 + 23, 1, 79, -341.5 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 156.8, -278.6 , 0 );
setMoveKey( spep_2 -3 + 25, 1, 156.8, -278.6 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 125.6, -356.5 , 0 );
setMoveKey( spep_2 -3 + 27, 1, 125.6, -356.5 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 94.5, -434.4 , 0 );
setMoveKey( spep_2 -3 + 29, 1, 94.5, -434.4 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 48.5, -171.4 , 0 );
setMoveKey( spep_2 -3 + 31, 1, 48.5, -171.4 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 59.7, -132.3 , 0 );
setMoveKey( spep_2 -3 + 33, 1, 59.7, -132.3 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 84.4, -131.3 , 0 );
setMoveKey( spep_2 -3 + 35, 1, 84.4, -131.3 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 103.7, -87.5 , 0 );
setMoveKey( spep_2 -3 + 37, 1, 103.7, -87.5 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 98.5, -81.7 , 0 );
setMoveKey( spep_2 -3 + 39, 1, 98.5, -81.7 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 116.4, -33.2 , 0 );
setMoveKey( spep_2 -3 + 41, 1, 116.4, -33.2 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 138.2, -32.2 , 0 );
setMoveKey( spep_2 -3 + 43, 1, 138.2, -32.2 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 143.8, -16.9 , 0 );
setMoveKey( spep_2 -3 + 45, 1, 143.8, -16.9 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 125.7, -39.6 , 0 );
setMoveKey( spep_2 -3 + 47, 1, 125.7, -39.6 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 136, -33.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 136.9, -37.5 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 137.7, -41.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 138.6, -44.9 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 139.4, -48.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 140.3, -52.3 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 141.1, -56 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 142, -59.7 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 142.8, -63.4 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 143.6, -67.1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 144.5, -70.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 145.3, -74.6 , 0 );
setMoveKey( spep_2 -3 + 73, 1, 146.2, -78.3 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 348.3, -97.6 , 0 );
setMoveKey( spep_2 -3 + 75, 1, 348.3, -97.6 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 351.2, -132.2 , 0 );
setMoveKey( spep_2 -3 + 77, 1, 351.2, -132.2 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 368.3, -195.4 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 376, -225.3 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 366.5, -234.8 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 371.2, -230 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 371.2, -230 , 0 );
setMoveKey( spep_2 -3 + 109, 1, 371.2, -230 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 143.3, -145.2 , 0 );
setMoveKey( spep_2 -3 + 111, 1, 143.3, -145.2 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 80.2, -69.2 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 61.3, -88.2 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 80.1, -74 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 89.4, -83.5 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 94.9, -78.7 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 95.6, -78.7 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 96.4, -78.7 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 97.1, -78.7 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 97.9, -78.7 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 98.6, -78.7 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 107.7, -85.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 116.9, -91.8 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 126.2, -98.4 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 135.6, -104.9 , 0 );
setMoveKey( spep_2 -3 + 141, 1, 145.1, -111.4 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 284.4, 79.4 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 308.4, 127.7 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 332.2, 176 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 356.2, 224.3 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 380, 272.5 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 383.9, 293.9 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 402.1, 286.7 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 410.8, 312.9 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 410, 315.2 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 423.5, 331.9 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 432.2, 343.8 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 440.9, 355.7 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 449.6, 367.6 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 458.4, 379.5 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 467.1, 391.4 , 0 );
setMoveKey( spep_2 -3 + 173, 1, 475.8, 403.4 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 475.8, 403.4 , 0 );

setScaleKey( spep_2 + 0, 1, 6.99, 6.99 );
setScaleKey( spep_2 -3 + 28, 1, 6.99, 6.99 );
setScaleKey( spep_2 -3 + 29, 1, 6.99, 6.99 );
setScaleKey( spep_2 -3 + 30, 1, 5.19, 5.19 );
setScaleKey( spep_2 -3 + 31, 1, 5.19, 5.19 );
setScaleKey( spep_2 -3 + 32, 1, 4.65, 4.65 );
setScaleKey( spep_2 -3 + 33, 1, 4.65, 4.65 );
setScaleKey( spep_2 -3 + 34, 1, 4.11, 4.11 );
setScaleKey( spep_2 -3 + 35, 1, 4.11, 4.11 );
setScaleKey( spep_2 -3 + 36, 1, 3.57, 3.57 );
setScaleKey( spep_2 -3 + 37, 1, 3.57, 3.57 );
setScaleKey( spep_2 -3 + 38, 1, 3.03, 3.03 );
setScaleKey( spep_2 -3 + 39, 1, 3.03, 3.03 );
setScaleKey( spep_2 -3 + 40, 1, 2.49, 2.49 );
setScaleKey( spep_2 -3 + 41, 1, 2.49, 2.49 );
setScaleKey( spep_2 -3 + 42, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 73, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 74, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 111, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 112, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 114, 1, 1.27, 1.27 );
setScaleKey( spep_2 -3 + 116, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 118, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 120, 1, 1.29, 1.29 );
setScaleKey( spep_2 -3 + 122, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 124, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 126, 1, 1.31, 1.31 );
setScaleKey( spep_2 -3 + 128, 1, 1.31, 1.31 );
setScaleKey( spep_2 -3 + 130, 1, 1.32, 1.32 );
setScaleKey( spep_2 -3 + 132, 1, 1.44, 1.43 );
setScaleKey( spep_2 -3 + 134, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 136, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 138, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 141, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 142, 1, 2.7, 2.7 );
setScaleKey( spep_2 -3 + 144, 1, 2.59, 2.58 );
setScaleKey( spep_2 -3 + 146, 1, 2.47, 2.47 );
setScaleKey( spep_2 -3 + 148, 1, 2.36, 2.36 );
setScaleKey( spep_2 -3 + 150, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 152, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 154, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 156, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 158, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 160, 1, 1.41, 1.41 );
setScaleKey( spep_2 -3 + 162, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 164, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 166, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 168, 1, 0.75, 0.75 );
setScaleKey( spep_2 -3 + 170, 1, 0.58, 0.58 );
setScaleKey( spep_2 -3 + 173, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 174, 1, 0.41, 0.41 );

setRotateKey( spep_2 + 0, 1, -30.3 );
setRotateKey( spep_2 -3 + 7, 1, -30.3 );
setRotateKey( spep_2 -3 + 8, 1, -58.2 );
setRotateKey( spep_2 -3 + 28, 1, -58.2 );
setRotateKey( spep_2 -3 + 29, 1, -58.2 );
setRotateKey( spep_2 -3 + 30, 1, -45.4 );
setRotateKey( spep_2 -3 + 31, 1, -45.4 );
setRotateKey( spep_2 -3 + 32, 1, -45 );
setRotateKey( spep_2 -3 + 33, 1, -45 );
setRotateKey( spep_2 -3 + 34, 1, -44.6 );
setRotateKey( spep_2 -3 + 35, 1, -44.6 );
setRotateKey( spep_2 -3 + 36, 1, -44.3 );
setRotateKey( spep_2 -3 + 37, 1, -44.3 );
setRotateKey( spep_2 -3 + 38, 1, -43.9 );
setRotateKey( spep_2 -3 + 39, 1, -43.9 );
setRotateKey( spep_2 -3 + 40, 1, -43.5 );
setRotateKey( spep_2 -3 + 41, 1, -43.5 );
setRotateKey( spep_2 -3 + 42, 1, -43.2 );
setRotateKey( spep_2 -3 + 43, 1, -43.2 );
setRotateKey( spep_2 -3 + 44, 1, -42.4 );
setRotateKey( spep_2 -3 + 45, 1, -42.4 );
setRotateKey( spep_2 -3 + 46, 1, -41.7 );
setRotateKey( spep_2 -3 + 47, 1, -41.7 );
setRotateKey( spep_2 -3 + 48, 1, -40.9 );
setRotateKey( spep_2 -3 + 50, 1, -40.2 );
setRotateKey( spep_2 -3 + 52, 1, -39.4 );
setRotateKey( spep_2 -3 + 54, 1, -38.7 );
setRotateKey( spep_2 -3 + 56, 1, -37.9 );
setRotateKey( spep_2 -3 + 58, 1, -37.2 );
setRotateKey( spep_2 -3 + 60, 1, -36.4 );
setRotateKey( spep_2 -3 + 62, 1, -35.7 );
setRotateKey( spep_2 -3 + 64, 1, -34.9 );
setRotateKey( spep_2 -3 + 66, 1, -34.2 );
setRotateKey( spep_2 -3 + 68, 1, -33.4 );
setRotateKey( spep_2 -3 + 70, 1, -32.7 );
setRotateKey( spep_2 -3 + 73, 1, -31.9 );
setRotateKey( spep_2 -3 + 74, 1, 21.8 );
setRotateKey( spep_2 -3 + 80, 1, 21.8 );
setRotateKey( spep_2 -3 + 82, 1, 22.2 );
setRotateKey( spep_2 -3 + 84, 1, 22.6 );
setRotateKey( spep_2 -3 + 86, 1, 23.1 );
setRotateKey( spep_2 -3 + 88, 1, 23.5 );
setRotateKey( spep_2 -3 + 90, 1, 23.9 );
setRotateKey( spep_2 -3 + 92, 1, 24.4 );
setRotateKey( spep_2 -3 + 94, 1, 24.8 );
setRotateKey( spep_2 -3 + 96, 1, 25.2 );
setRotateKey( spep_2 -3 + 98, 1, 25.6 );
setRotateKey( spep_2 -3 + 100, 1, 26.1 );
setRotateKey( spep_2 -3 + 102, 1, 26.5 );
setRotateKey( spep_2 -3 + 104, 1, 26.9 );
setRotateKey( spep_2 -3 + 106, 1, 27.4 );
setRotateKey( spep_2 -3 + 108, 1, 27.8 );
setRotateKey( spep_2 -3 + 111, 1, 27.8 );
setRotateKey( spep_2 -3 + 112, 1, -40.1 );
setRotateKey( spep_2 -3 + 141, 1, -40.1 );
setRotateKey( spep_2 -3 + 142, 1, 21.8 );
setRotateKey( spep_2 -3 + 173, 1, 21.8 );
setRotateKey( spep_2 -3 + 174, 1, 21.8 );

-- ** 敵キャラクター ** --
--敵の動き2
setDisp( spep_2 -3 + 176, 1, 1 );
setDisp( spep_2 -3 + 230, 1, 0 );
changeAnime( spep_2 -3 + 176, 1, 106 );
changeAnime( spep_2 -3 + 210, 1, 7 );

setMoveKey( spep_2 -3 + 176, 1, -19.5, 11.4 , 0 );
setMoveKey( spep_2 -3 + 178, 1, -15.8, 13.1 , 0 );
setMoveKey( spep_2 -3 + 180, 1, -12.2, 14.9 , 0 );
setMoveKey( spep_2 -3 + 182, 1, -8.5, 16.7 , 0 );
setMoveKey( spep_2 -3 + 184, 1, -4.8, 18.5 , 0 );
setMoveKey( spep_2 -3 + 186, 1, -1.2, 20.2 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 2.5, 22 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 6.2, 23.8 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 9.8, 25.5 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 13.5, 27.3 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 17.2, 29.1 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 20.9, 30.9 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 24.5, 32.6 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 28.2, 34.4 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 31.9, 36.2 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 35.5, 37.9 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 39.2, 39.7 , 0 );
setMoveKey( spep_2 -3 + 209, 1, 39.2, 39.7 , 0 );--
setMoveKey( spep_2 -3 + 210, 1, 118.8, 83.8 , 0 );
setMoveKey( spep_2 -3 + 211, 1, 118.8, 83.8 , 0 );
setMoveKey( spep_2 -3 + 212, 1, -27, 21.1 , 0 );
setMoveKey( spep_2 -3 + 213, 1, -27, 21.1 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 41.9, 75.7 , 0 );
setMoveKey( spep_2 -3 + 215, 1, 41.9, 75.7 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 7.4, 33.2 , 0 );
setMoveKey( spep_2 -3 + 217, 1, 7.4, 33.2 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 25.7, 43.3 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 21.7, 32.4 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 9.5, -0.3 , 0 );
setMoveKey( spep_2 -3 + 224, 1, -12.1, -54.8 , 0 );
setMoveKey( spep_2 -3 + 226, 1, -44.6, -131.1 , 0 );
setMoveKey( spep_2 -3 + 228, 1, -90.4, -229.1 , 0 );
setMoveKey( spep_2 -3 + 230, 1, -90.4, -229.1 , 0 );

setScaleKey( spep_2 -3 + 176, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 209, 1, 2.2, 2.2 );--
setScaleKey( spep_2 -3 + 210, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 218, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 220, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 222, 1, 1.18, 1.18 );
setScaleKey( spep_2 -3 + 224, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 226, 1, 2.04, 2.04 );
setScaleKey( spep_2 -3 + 228, 1, 2.68, 2.68 );
setScaleKey( spep_2 -3 + 230, 1, 2.68, 2.68 );

setRotateKey( spep_2 -3 + 176, 1, -23.2 );
setRotateKey( spep_2 -3 + 209, 1, -23.2 );--
setRotateKey( spep_2 -3 + 210, 1, 57 );
setRotateKey( spep_2 -3 + 224, 1, 57 );
setRotateKey( spep_2 -3 + 225, 1, 57 );
setRotateKey( spep_2 -3 + 226, 1, 56.9 );
setRotateKey( spep_2 -3 + 228, 1, 56.9 );
setRotateKey( spep_2 -3 + 230, 1, 56.9 );

-- ** 敵キャラクター ** --
--敵の動き3
setDisp( spep_2 -3 + 236, 1, 1 );
setDisp( spep_2 -3 + 254, 1, 0 );
changeAnime( spep_2 -3 + 236, 1, 105 );

setMoveKey( spep_2 -3 + 236, 1, -88.2, -4.2 , 0 );
setMoveKey( spep_2 -3 + 238, 1, -99.7, -4.3 , 0 );
setMoveKey( spep_2 -3 + 240, 1, -111.3, -4.4 , 0 );
setMoveKey( spep_2 -3 + 242, 1, -122.8, -4.5 , 0 );
setMoveKey( spep_2 -3 + 244, 1, -134.4, -4.6 , 0 );
setMoveKey( spep_2 -3 + 246, 1, -145.9, -4.7 , 0 );
setMoveKey( spep_2 -3 + 248, 1, -157.5, -4.9 , 0 );
setMoveKey( spep_2 -3 + 250, 1, -169, -5 , 0 );
setMoveKey( spep_2 -3 + 254, 1, -169, -5 , 0 );

setScaleKey( spep_2 -3 + 236, 1, 5, 5 );
setScaleKey( spep_2 -3 + 238, 1, 4.33, 4.33 );
setScaleKey( spep_2 -3 + 240, 1, 3.66, 3.66 );
setScaleKey( spep_2 -3 + 242, 1, 2.99, 2.99 );
setScaleKey( spep_2 -3 + 244, 1, 2.31, 2.31 );
setScaleKey( spep_2 -3 + 246, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 248, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 250, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 254, 1, 0.3, 0.3 );

setRotateKey( spep_2 -3 + 236, 1, 0 );
setRotateKey( spep_2 -3 + 254, 1, 0 );

-- ** 音 ** --
--パンチ
SE008 = playSeVer2( spep_2 + 0, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE008, 72 );
SE009 = playSeVer2( spep_2 + 0, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE009, 79 );

--パンチ２
SE010 = playSeVer2( spep_2 + 66, 1000, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 66, 1009, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 66, 1359, "", 0, 0, 0, -1);

--パンチ３
SE013 = playSeVer2( spep_2 + 104, 1000, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 104, 1010, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 104, 1359, "", 0, 0, 0, -1);

--キック
SE016 = playSeVer2( spep_2 + 140, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE016, 86 );
E017 = playSeVer2( spep_2 + 140, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE017, 79 );
E018 = playSeVer2( spep_2 + 140, 1067, "",spep_2 + 184, 0, 22, -1);

--回り込む
SE019 = playSeVer2( spep_2 + 178, 1277, "",spep_2 + 214, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 178, SE019, 123 );
SE020 = playSeVer2( spep_2 + 178, 1117, "",spep_2 + 214, 0, 16, -1);

--裏拳
SE021 = playSeVer2( spep_2 + 200, 1359, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 202, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE023 = playSeVer2( spep_2 + 218, 1121, "",spep_2 + 258, 0, 10, -1);

--地面激突
SE024 = playSeVer2( spep_2 + 246, 1159, "",spep_2 + 434, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 246, SE024, 78 );

--画面遷移
SE025 = playSeVer2( spep_2 + 252, 1232, "", 0, 0, 0, -1);

--オーラ
SE026 = playSeVer2( spep_2 + 284, 1176, "",spep_2 + 436, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 284, SE026, 63 );
setPitch( spep_2 + 284, SE026, -400 );
setTimeStretch( SE026, 0.73, 30, 4 );
SE027 = playSeVer2( spep_2 + 284, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 284, SE027, 79 );
setPitch( spep_2 + 284, SE027, -300 );
setTimeStretch( SE027, 0.8, 30, 4 );
SE028 = playSeVer2( spep_2 + 284, 8, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 300 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 300;


------------------------------------------------------
-- 目線セリフカットイン(156F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
shot = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --目線セリフカットイン ef_004
setEffMoveKey( spep_3 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_3 + 156, shot, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_3 + 156, shot, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shot, 0 );
setEffRotateKey( spep_3 + 156, shot, 0 );
setEffAlphaKey( spep_3 + 0, shot, 255 );
setEffAlphaKey( spep_3 + 156 -1, shot, 255 );
setEffAlphaKey( spep_3 + 156 -1, shot, 255 );
setEffAlphaKey( spep_3 + 156, shot, 0 );

spep_x = spep_3 + 28;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -25, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -25, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -25, 515.5 , 0 );
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

SE029 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気弾溜め
SE030 = playSeVer2( spep_3 + 58, 1265, "",spep_3 + 134, 8, 16, 0.5);
setStartTimeMs( SE030,  333 );
SE031 = playSeVer2( spep_3 + 58, 1296, "",spep_3 + 130, 0, 14, -1);
SE032 = playSeVer2( spep_3 + 58, 1191, "",spep_3 + 126, 0, 18, -1);
SE033 = playSeVer2( spep_3 + 64, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 64, SE033, 141 );

--気弾発射
SE034 = playSeVer2( spep_3 + 112, 1357, "",spep_3 + 162, 0, 26, -1);
SE035 = playSeVer2( spep_3 + 112, 1177, "",spep_3 + 238, 0, 16, -1);
SE036 = playSeVer2( spep_3 + 112, 1312, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_3 + 112, 1146, "",spep_3 + 238, 0, 16, -1);
SE038 = playSeVer2( spep_3 + 126, 1109, "", 0, 0, 0, -1);

--気弾飛んでいく
SE039 = playSeVer2( spep_3 + 152, 1021, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 156 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_3 + 148, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 156;


------------------------------------------------------
-- 気弾迫る～フィニッシュ(180F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --キ気弾迫る～フィニッシュ ef_005
setEffMoveKey( spep_4 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_4 + 176, finish, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_4 + 176, finish, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 176, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 176, finish, 255 );

-- ** 音 ** --
--爆発
SE040 = playSeVer2( spep_4 + 58, 1159, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_4 + 62, 1067, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_4 + 66, 1168, "", spep_4 + 66 +60, 0, 30, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 58 );
endPhase( spep_4 + 166 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕(118F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_b = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0 );  --開幕 ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 118, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 118, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 118, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 118, first_b, 255 );

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 -3 + 56, 1, 1 );
changeAnime( spep_0 -3 + 56, 1, 102 );

setMoveKey( spep_0 -3 + 56, 1, 244, 1069.5 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 244, 904.5 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 244, 753.9 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 244, 617.6 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 244, 495.7 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 244, 388.1 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 244, 294.8 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 244, 215.9 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 244, 151.4 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 244, 101.2 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 244, 65.3 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 244, 43.8 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 244, 36.6 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 244, 36.6 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 244, 35.2 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 244, 33.9 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 244, 32.5 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 244, 31.1 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 244, 29.7 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 244, 28.4 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 244, 27 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 244, 25.6 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 244, 24.3 , 0 );

setScaleKey( spep_0 -3 + 56, 1, 4.5, 4.5 );

setRotateKey( spep_0 -3 + 56, 1, -11 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 148, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
setPitch( spep_0 + 0, SE001, -300 );
setTimeStretch( SE001, 0.8, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );
setPitch( spep_0 + 0, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );

--画面遷移
SE003 = playSeVer2( spep_0 + 34, 1072, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 118 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 100 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 244, 24.3 , 0 );
    setMoveKey( SP_dodge + 2, 1, 244, 22.9 , 0 );
    setMoveKey( SP_dodge + 4, 1, 244, 21.5 , 0 );
    setMoveKey( SP_dodge + 6, 1, 244, 20.1 , 0 );
    setMoveKey( SP_dodge + 8, 1, 244, 18.8 , 0 );
    setMoveKey( SP_dodge + 10, 1, 244, 17.4 , 0 );

    setScaleKey( SP_dodge + 0, 1, 4.5, 4.5 );
    setScaleKey( SP_dodge + 2, 1, 4.5, 4.5 );
    setScaleKey( SP_dodge + 4, 1, 4.5, 4.5 );
    setScaleKey( SP_dodge + 6, 1, 4.5, 4.5 );
    setScaleKey( SP_dodge + 8, 1, 4.5, 4.5 );
    setScaleKey( SP_dodge + 10, 1, 4.5, 4.5 );

    setRotateKey( SP_dodge + 0, 1, -11 );
    setRotateKey( SP_dodge + 10, 1, -11 );
    
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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 119, 1, 0 );

setMoveKey( spep_0 -3 + 104, 1, 244, 22.9 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 244, 21.5 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 244, 20.1 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 244, 18.8 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 244, 17.4 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 244, 16 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 244, 14.7 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 244, 13.3 , 0 );
setMoveKey( spep_0 -3 + 119, 1, 244, 11.9 , 0 );

setScaleKey( spep_0 -3 + 119, 1, 4.5, 4.5 );

setRotateKey( spep_0 -3 + 119, 1, -11 );

-- ** 音 ** --
--向かってくる
SE004 = playSeVer2( spep_0 + 92, 1182, "",spep_0 + 136, 0, 16, -1);
SE005 = playSeVer2( spep_0 + 92, 1117, "",spep_0 + 136, 0, 16, -1);
SE006 = playSeVer2( spep_0 + 92, 1277, "",spep_0 + 136, 0, 16, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- パンチアップ～地面叩き落とし(300F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
punch_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --パンチアップ～地面叩き落とし 前面 ef_002
setEffMoveKey( spep_2 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 300, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 300, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_f, 0 );
setEffRotateKey( spep_2 + 300, punch_f, 0 );
setEffAlphaKey( spep_2 + 0, punch_f, 255 );
setEffAlphaKey( spep_2 + 300 -2, punch_f, 255 );
setEffAlphaKey( spep_2 + 300 -1, punch_f, 255 );
setEffAlphaKey( spep_2 + 300, punch_f, 0 );

punch_b = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --パンチアップ～地面叩き落とし 背面 ef_003
setEffMoveKey( spep_2 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 300, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 300, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_b, 0 );
setEffRotateKey( spep_2 + 300, punch_b, 0 );
setEffAlphaKey( spep_2 + 0, punch_b, 255 );
setEffAlphaKey( spep_2 + 300 -2, punch_b, 255 );
setEffAlphaKey( spep_2 + 300 -1, punch_b, 255 );
setEffAlphaKey( spep_2 + 300, punch_b, 0 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 174, 1, 0 );
changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 -3 + 8, 1, 106 );
changeAnime( spep_2 -3 + 74, 1, 108 );
changeAnime( spep_2 -3 + 112, 1, 107 );
changeAnime( spep_2 -3 + 142, 1, 105 );

setMoveKey( spep_2 + 0, 1, 401.8, -56.1 , 0 );
setMoveKey( spep_2 + 2, 1, 325.4, -96.6 , 0 );
setMoveKey( spep_2 + 4, 1, 249, -137.2 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 172.6, -177.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 95.6, -358.1 , 0 );
setMoveKey( spep_2 -3 + 9, 1, 95.6, -358.1 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 58.1, -319 , 0 );
setMoveKey( spep_2 -3 + 11, 1, 58.1, -319 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 20.5, -279.9 , 0 );
setMoveKey( spep_2 -3 + 13, 1, 20.5, -279.9 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 93.6, -371.1 , 0 );
setMoveKey( spep_2 -3 + 15, 1, 93.6, -371.1 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 166.6, -462.3 , 0 );
setMoveKey( spep_2 -3 + 17, 1, 166.6, -462.3 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 83.9, -433.3 , 0 );
setMoveKey( spep_2 -3 + 19, 1, 83.9, -433.3 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 1.2, -404.3 , 0 );
setMoveKey( spep_2 -3 + 21, 1, 1.2, -404.3 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 79, -341.5 , 0 );
setMoveKey( spep_2 -3 + 23, 1, 79, -341.5 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 156.8, -278.6 , 0 );
setMoveKey( spep_2 -3 + 25, 1, 156.8, -278.6 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 125.6, -356.5 , 0 );
setMoveKey( spep_2 -3 + 27, 1, 125.6, -356.5 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 94.5, -434.4 , 0 );
setMoveKey( spep_2 -3 + 29, 1, 94.5, -434.4 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 48.5, -171.4 , 0 );
setMoveKey( spep_2 -3 + 31, 1, 48.5, -171.4 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 59.7, -132.3 , 0 );
setMoveKey( spep_2 -3 + 33, 1, 59.7, -132.3 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 84.4, -131.3 , 0 );
setMoveKey( spep_2 -3 + 35, 1, 84.4, -131.3 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 103.7, -87.5 , 0 );
setMoveKey( spep_2 -3 + 37, 1, 103.7, -87.5 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 98.5, -81.7 , 0 );
setMoveKey( spep_2 -3 + 39, 1, 98.5, -81.7 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 116.4, -33.2 , 0 );
setMoveKey( spep_2 -3 + 41, 1, 116.4, -33.2 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 138.2, -32.2 , 0 );
setMoveKey( spep_2 -3 + 43, 1, 138.2, -32.2 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 143.8, -16.9 , 0 );
setMoveKey( spep_2 -3 + 45, 1, 143.8, -16.9 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 125.7, -39.6 , 0 );
setMoveKey( spep_2 -3 + 47, 1, 125.7, -39.6 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 136, -33.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 136.9, -37.5 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 137.7, -41.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 138.6, -44.9 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 139.4, -48.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 140.3, -52.3 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 141.1, -56 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 142, -59.7 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 142.8, -63.4 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 143.6, -67.1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 144.5, -70.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 145.3, -74.6 , 0 );
setMoveKey( spep_2 -3 + 73, 1, 146.2, -78.3 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 348.3, -97.6 , 0 );
setMoveKey( spep_2 -3 + 75, 1, 348.3, -97.6 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 351.2, -132.2 , 0 );
setMoveKey( spep_2 -3 + 77, 1, 351.2, -132.2 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 368.3, -195.4 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 376, -225.3 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 366.5, -234.8 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 371.2, -230 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 371.2, -230 , 0 );
setMoveKey( spep_2 -3 + 109, 1, 371.2, -230 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 143.3, -145.2 , 0 );
setMoveKey( spep_2 -3 + 111, 1, 143.3, -145.2 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 80.2, -69.2 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 61.3, -88.2 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 80.1, -74 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 89.4, -83.5 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 94.9, -78.7 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 95.6, -78.7 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 96.4, -78.7 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 97.1, -78.7 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 97.9, -78.7 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 98.6, -78.7 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 107.7, -85.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 116.9, -91.8 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 126.2, -98.4 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 135.6, -104.9 , 0 );
setMoveKey( spep_2 -3 + 141, 1, 145.1, -111.4 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 284.4, 79.4 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 308.4, 127.7 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 332.2, 176 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 356.2, 224.3 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 380, 272.5 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 383.9, 293.9 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 402.1, 286.7 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 410.8, 312.9 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 410, 315.2 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 423.5, 331.9 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 432.2, 343.8 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 440.9, 355.7 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 449.6, 367.6 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 458.4, 379.5 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 467.1, 391.4 , 0 );
setMoveKey( spep_2 -3 + 173, 1, 475.8, 403.4 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 475.8, 403.4 , 0 );

setScaleKey( spep_2 + 0, 1, 6.99, 6.99 );
setScaleKey( spep_2 -3 + 28, 1, 6.99, 6.99 );
setScaleKey( spep_2 -3 + 29, 1, 6.99, 6.99 );
setScaleKey( spep_2 -3 + 30, 1, 5.19, 5.19 );
setScaleKey( spep_2 -3 + 31, 1, 5.19, 5.19 );
setScaleKey( spep_2 -3 + 32, 1, 4.65, 4.65 );
setScaleKey( spep_2 -3 + 33, 1, 4.65, 4.65 );
setScaleKey( spep_2 -3 + 34, 1, 4.11, 4.11 );
setScaleKey( spep_2 -3 + 35, 1, 4.11, 4.11 );
setScaleKey( spep_2 -3 + 36, 1, 3.57, 3.57 );
setScaleKey( spep_2 -3 + 37, 1, 3.57, 3.57 );
setScaleKey( spep_2 -3 + 38, 1, 3.03, 3.03 );
setScaleKey( spep_2 -3 + 39, 1, 3.03, 3.03 );
setScaleKey( spep_2 -3 + 40, 1, 2.49, 2.49 );
setScaleKey( spep_2 -3 + 41, 1, 2.49, 2.49 );
setScaleKey( spep_2 -3 + 42, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 73, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 74, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 111, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 112, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 114, 1, 1.27, 1.27 );
setScaleKey( spep_2 -3 + 116, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 118, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 120, 1, 1.29, 1.29 );
setScaleKey( spep_2 -3 + 122, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 124, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 126, 1, 1.31, 1.31 );
setScaleKey( spep_2 -3 + 128, 1, 1.31, 1.31 );
setScaleKey( spep_2 -3 + 130, 1, 1.32, 1.32 );
setScaleKey( spep_2 -3 + 132, 1, 1.44, 1.43 );
setScaleKey( spep_2 -3 + 134, 1, 1.55, 1.55 );
setScaleKey( spep_2 -3 + 136, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 138, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 141, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 142, 1, 2.7, 2.7 );
setScaleKey( spep_2 -3 + 144, 1, 2.59, 2.58 );
setScaleKey( spep_2 -3 + 146, 1, 2.47, 2.47 );
setScaleKey( spep_2 -3 + 148, 1, 2.36, 2.36 );
setScaleKey( spep_2 -3 + 150, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 152, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 154, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 156, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 158, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 160, 1, 1.41, 1.41 );
setScaleKey( spep_2 -3 + 162, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 164, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 166, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 168, 1, 0.75, 0.75 );
setScaleKey( spep_2 -3 + 170, 1, 0.58, 0.58 );
setScaleKey( spep_2 -3 + 173, 1, 0.41, 0.41 );
setScaleKey( spep_2 -3 + 174, 1, 0.41, 0.41 );

setRotateKey( spep_2 + 0, 1, -30.3 );
setRotateKey( spep_2 -3 + 7, 1, -30.3 );
setRotateKey( spep_2 -3 + 8, 1, -58.2 );
setRotateKey( spep_2 -3 + 28, 1, -58.2 );
setRotateKey( spep_2 -3 + 29, 1, -58.2 );
setRotateKey( spep_2 -3 + 30, 1, -45.4 );
setRotateKey( spep_2 -3 + 31, 1, -45.4 );
setRotateKey( spep_2 -3 + 32, 1, -45 );
setRotateKey( spep_2 -3 + 33, 1, -45 );
setRotateKey( spep_2 -3 + 34, 1, -44.6 );
setRotateKey( spep_2 -3 + 35, 1, -44.6 );
setRotateKey( spep_2 -3 + 36, 1, -44.3 );
setRotateKey( spep_2 -3 + 37, 1, -44.3 );
setRotateKey( spep_2 -3 + 38, 1, -43.9 );
setRotateKey( spep_2 -3 + 39, 1, -43.9 );
setRotateKey( spep_2 -3 + 40, 1, -43.5 );
setRotateKey( spep_2 -3 + 41, 1, -43.5 );
setRotateKey( spep_2 -3 + 42, 1, -43.2 );
setRotateKey( spep_2 -3 + 43, 1, -43.2 );
setRotateKey( spep_2 -3 + 44, 1, -42.4 );
setRotateKey( spep_2 -3 + 45, 1, -42.4 );
setRotateKey( spep_2 -3 + 46, 1, -41.7 );
setRotateKey( spep_2 -3 + 47, 1, -41.7 );
setRotateKey( spep_2 -3 + 48, 1, -40.9 );
setRotateKey( spep_2 -3 + 50, 1, -40.2 );
setRotateKey( spep_2 -3 + 52, 1, -39.4 );
setRotateKey( spep_2 -3 + 54, 1, -38.7 );
setRotateKey( spep_2 -3 + 56, 1, -37.9 );
setRotateKey( spep_2 -3 + 58, 1, -37.2 );
setRotateKey( spep_2 -3 + 60, 1, -36.4 );
setRotateKey( spep_2 -3 + 62, 1, -35.7 );
setRotateKey( spep_2 -3 + 64, 1, -34.9 );
setRotateKey( spep_2 -3 + 66, 1, -34.2 );
setRotateKey( spep_2 -3 + 68, 1, -33.4 );
setRotateKey( spep_2 -3 + 70, 1, -32.7 );
setRotateKey( spep_2 -3 + 73, 1, -31.9 );
setRotateKey( spep_2 -3 + 74, 1, 21.8 );
setRotateKey( spep_2 -3 + 80, 1, 21.8 );
setRotateKey( spep_2 -3 + 82, 1, 22.2 );
setRotateKey( spep_2 -3 + 84, 1, 22.6 );
setRotateKey( spep_2 -3 + 86, 1, 23.1 );
setRotateKey( spep_2 -3 + 88, 1, 23.5 );
setRotateKey( spep_2 -3 + 90, 1, 23.9 );
setRotateKey( spep_2 -3 + 92, 1, 24.4 );
setRotateKey( spep_2 -3 + 94, 1, 24.8 );
setRotateKey( spep_2 -3 + 96, 1, 25.2 );
setRotateKey( spep_2 -3 + 98, 1, 25.6 );
setRotateKey( spep_2 -3 + 100, 1, 26.1 );
setRotateKey( spep_2 -3 + 102, 1, 26.5 );
setRotateKey( spep_2 -3 + 104, 1, 26.9 );
setRotateKey( spep_2 -3 + 106, 1, 27.4 );
setRotateKey( spep_2 -3 + 108, 1, 27.8 );
setRotateKey( spep_2 -3 + 111, 1, 27.8 );
setRotateKey( spep_2 -3 + 112, 1, -40.1 );
setRotateKey( spep_2 -3 + 141, 1, -40.1 );
setRotateKey( spep_2 -3 + 142, 1, 21.8 );
setRotateKey( spep_2 -3 + 173, 1, 21.8 );
setRotateKey( spep_2 -3 + 174, 1, 21.8 );

-- ** 敵キャラクター ** --
--敵の動き2
setDisp( spep_2 -3 + 176, 1, 1 );
setDisp( spep_2 -3 + 230, 1, 0 );
changeAnime( spep_2 -3 + 176, 1, 106 );
changeAnime( spep_2 -3 + 210, 1, 7 );

setMoveKey( spep_2 -3 + 176, 1, -19.5, 11.4 , 0 );
setMoveKey( spep_2 -3 + 178, 1, -15.8, 13.1 , 0 );
setMoveKey( spep_2 -3 + 180, 1, -12.2, 14.9 , 0 );
setMoveKey( spep_2 -3 + 182, 1, -8.5, 16.7 , 0 );
setMoveKey( spep_2 -3 + 184, 1, -4.8, 18.5 , 0 );
setMoveKey( spep_2 -3 + 186, 1, -1.2, 20.2 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 2.5, 22 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 6.2, 23.8 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 9.8, 25.5 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 13.5, 27.3 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 17.2, 29.1 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 20.9, 30.9 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 24.5, 32.6 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 28.2, 34.4 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 31.9, 36.2 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 35.5, 37.9 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 39.2, 39.7 , 0 );
setMoveKey( spep_2 -3 + 209, 1, 39.2, 39.7 , 0 );--
setMoveKey( spep_2 -3 + 210, 1, 118.8, 83.8 , 0 );
setMoveKey( spep_2 -3 + 211, 1, 118.8, 83.8 , 0 );
setMoveKey( spep_2 -3 + 212, 1, -27, 21.1 , 0 );
setMoveKey( spep_2 -3 + 213, 1, -27, 21.1 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 41.9, 75.7 , 0 );
setMoveKey( spep_2 -3 + 215, 1, 41.9, 75.7 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 7.4, 33.2 , 0 );
setMoveKey( spep_2 -3 + 217, 1, 7.4, 33.2 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 25.7, 43.3 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 21.7, 32.4 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 9.5, -0.3 , 0 );
setMoveKey( spep_2 -3 + 224, 1, -12.1, -54.8 , 0 );
setMoveKey( spep_2 -3 + 226, 1, -44.6, -131.1 , 0 );
setMoveKey( spep_2 -3 + 228, 1, -90.4, -229.1 , 0 );
setMoveKey( spep_2 -3 + 230, 1, -90.4, -229.1 , 0 );

setScaleKey( spep_2 -3 + 176, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 209, 1, 2.2, 2.2 );--
setScaleKey( spep_2 -3 + 210, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 218, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 220, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 222, 1, 1.18, 1.18 );
setScaleKey( spep_2 -3 + 224, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 226, 1, 2.04, 2.04 );
setScaleKey( spep_2 -3 + 228, 1, 2.68, 2.68 );
setScaleKey( spep_2 -3 + 230, 1, 2.68, 2.68 );

setRotateKey( spep_2 -3 + 176, 1, -23.2 );
setRotateKey( spep_2 -3 + 209, 1, -23.2 );--
setRotateKey( spep_2 -3 + 210, 1, 57 );
setRotateKey( spep_2 -3 + 224, 1, 57 );
setRotateKey( spep_2 -3 + 225, 1, 57 );
setRotateKey( spep_2 -3 + 226, 1, 56.9 );
setRotateKey( spep_2 -3 + 228, 1, 56.9 );
setRotateKey( spep_2 -3 + 230, 1, 56.9 );

-- ** 敵キャラクター ** --
--敵の動き3
setDisp( spep_2 -3 + 236, 1, 1 );
setDisp( spep_2 -3 + 254, 1, 0 );
changeAnime( spep_2 -3 + 236, 1, 105 );

setMoveKey( spep_2 -3 + 236, 1, -88.2, -4.2 , 0 );
setMoveKey( spep_2 -3 + 238, 1, -99.7, -4.3 , 0 );
setMoveKey( spep_2 -3 + 240, 1, -111.3, -4.4 , 0 );
setMoveKey( spep_2 -3 + 242, 1, -122.8, -4.5 , 0 );
setMoveKey( spep_2 -3 + 244, 1, -134.4, -4.6 , 0 );
setMoveKey( spep_2 -3 + 246, 1, -145.9, -4.7 , 0 );
setMoveKey( spep_2 -3 + 248, 1, -157.5, -4.9 , 0 );
setMoveKey( spep_2 -3 + 250, 1, -169, -5 , 0 );
setMoveKey( spep_2 -3 + 254, 1, -169, -5 , 0 );

setScaleKey( spep_2 -3 + 236, 1, 5, 5 );
setScaleKey( spep_2 -3 + 238, 1, 4.33, 4.33 );
setScaleKey( spep_2 -3 + 240, 1, 3.66, 3.66 );
setScaleKey( spep_2 -3 + 242, 1, 2.99, 2.99 );
setScaleKey( spep_2 -3 + 244, 1, 2.31, 2.31 );
setScaleKey( spep_2 -3 + 246, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 248, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 250, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 254, 1, 0.3, 0.3 );

setRotateKey( spep_2 -3 + 236, 1, 0 );
setRotateKey( spep_2 -3 + 254, 1, 0 );

-- ** 音 ** --
--パンチ
SE008 = playSeVer2( spep_2 + 0, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE008, 72 );
SE009 = playSeVer2( spep_2 + 0, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE009, 79 );

--パンチ２
SE010 = playSeVer2( spep_2 + 66, 1000, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 66, 1009, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 66, 1359, "", 0, 0, 0, -1);

--パンチ３
SE013 = playSeVer2( spep_2 + 104, 1000, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 104, 1010, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 104, 1359, "", 0, 0, 0, -1);

--キック
SE016 = playSeVer2( spep_2 + 140, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE016, 86 );
E017 = playSeVer2( spep_2 + 140, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE017, 79 );
E018 = playSeVer2( spep_2 + 140, 1067, "",spep_2 + 184, 0, 22, -1);

--回り込む
SE019 = playSeVer2( spep_2 + 178, 1277, "",spep_2 + 214, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 178, SE019, 123 );
SE020 = playSeVer2( spep_2 + 178, 1117, "",spep_2 + 214, 0, 16, -1);

--裏拳
SE021 = playSeVer2( spep_2 + 200, 1359, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 202, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE023 = playSeVer2( spep_2 + 218, 1121, "",spep_2 + 258, 0, 10, -1);

--地面激突
SE024 = playSeVer2( spep_2 + 246, 1159, "",spep_2 + 434, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 246, SE024, 78 );

--画面遷移
SE025 = playSeVer2( spep_2 + 252, 1232, "", 0, 0, 0, -1);

--オーラ
SE026 = playSeVer2( spep_2 + 284, 1176, "",spep_2 + 436, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 284, SE026, 63 );
setPitch( spep_2 + 284, SE026, -400 );
setTimeStretch( SE026, 0.73, 30, 4 );
SE027 = playSeVer2( spep_2 + 284, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 284, SE027, 79 );
setPitch( spep_2 + 284, SE027, -300 );
setTimeStretch( SE027, 0.8, 30, 4 );
SE028 = playSeVer2( spep_2 + 284, 8, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 300 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 300;


------------------------------------------------------
-- 目線セリフカットイン(156F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
shot = entryEffect( spep_3 + 0, SP_04r, 0x100, -1, 0, 0, 0 );  --目線セリフカットイン ef_004
setEffMoveKey( spep_3 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_3 + 156, shot, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_3 + 156, shot, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shot, 0 );
setEffRotateKey( spep_3 + 156, shot, 0 );
setEffAlphaKey( spep_3 + 0, shot, 255 );
setEffAlphaKey( spep_3 + 156 -1, shot, 255 );
setEffAlphaKey( spep_3 + 156 -1, shot, 255 );
setEffAlphaKey( spep_3 + 156, shot, 0 );

spep_x = spep_3 + 28;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -25, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -25, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -25, 515.5 , 0 );
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

--SE029 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気弾溜め
SE030 = playSeVer2( spep_3 + 58, 1265, "",spep_3 + 134, 8, 16, 0.5);
setStartTimeMs( SE030,  333 );
SE031 = playSeVer2( spep_3 + 58, 1296, "",spep_3 + 130, 0, 14, -1);
SE032 = playSeVer2( spep_3 + 58, 1191, "",spep_3 + 126, 0, 18, -1);
SE033 = playSeVer2( spep_3 + 64, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 64, SE033, 141 );

--気弾発射
SE034 = playSeVer2( spep_3 + 112, 1357, "",spep_3 + 162, 0, 26, -1);
SE035 = playSeVer2( spep_3 + 112, 1177, "",spep_3 + 238, 0, 16, -1);
SE036 = playSeVer2( spep_3 + 112, 1312, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_3 + 112, 1146, "",spep_3 + 238, 0, 16, -1);
SE038 = playSeVer2( spep_3 + 126, 1109, "", 0, 0, 0, -1);

--気弾飛んでいく
SE039 = playSeVer2( spep_3 + 152, 1021, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 156 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_3 + 148, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 156;


------------------------------------------------------
-- 気弾迫る～フィニッシュ(180F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --キ気弾迫る～フィニッシュ ef_005
setEffMoveKey( spep_4 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_4 + 176, finish, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_4 + 176, finish, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 176, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 176, finish, 255 );

-- ** 音 ** --
--爆発
SE040 = playSeVer2( spep_4 + 58, 1159, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_4 + 62, 1067, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_4 + 66, 1168, "", spep_4 + 66 +60, 0, 30, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 58 );
endPhase( spep_4 + 166 );

end