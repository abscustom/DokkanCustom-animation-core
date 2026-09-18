-- 1026510:フロスト(最終形態)_「F」の協定(ユニット)
-- sp_effect_a2_00210
--sp2541

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
SP_01 = 161750;	-- 冒頭 ef_001
SP_02 = 161752; -- フリーザが突進～フィニッシュ 前面 ef_002_front
SP_03 = 161753; -- フリーザが突進～フィニッシュ 背面 ef_002_back

--敵側
SP_01r = 161751; -- 冒頭 敵側 ef_001_re
SP_02r = 161754; -- フリーザが突進～フィニッシュ 前面 敵側 ef_002_re_front
SP_03r = 161755; -- フリーザが突進～フィニッシュ 背面 敵側 ef_002_re_back

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

ENABLE_AUTO_TIME_STRETCH(0.8);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 冒頭(240F)
------------------------------------------------------
spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
ef_001 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 冒頭 ef_001
setEffMoveKey( spep_0 + 0, ef_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + 238, ef_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, ef_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + 238, ef_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ef_001, 0 );
setEffRotateKey( spep_0 + 238, ef_001, 0 );
setEffAlphaKey( spep_0 + 0, ef_001, 255 );
setEffAlphaKey( spep_0 + 238 -2, ef_001, 255 );
setEffAlphaKey( spep_0 + 238 -1, ef_001, 255 );
setEffAlphaKey( spep_0 + 238, ef_001, 0 );

-- ** 音 ** --
-- 環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", spep_0 + 238 + 16, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1175, "", spep_0 + 238 + 16, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 32 );

-- ** 音 ** --
-- 顔カットイン
SE003 = playSeVer2( spep_0 + 8, 1018, "", 0, 0, 0, -1);

-- 画面遷移
SE004 = playSeVer2( spep_0 + 102, 1072, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE004, 79 );
setStartTimeMs( SE004,  267 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 238 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 238;

entryFade( spep_0 + 238 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
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
-- カードカットイン
-- SE005 = playSeVer2( spep_0 + 230, 1035, "", 0, 0, 0, -1);
playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 98;

----------------------------------------------------
-- フリーザが突進～フィニッシュ(860F)
----------------------------------------------------
-- ** エフェクト等 ** --
ef_002_front = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0 ); -- フリーザが突進～フィニッシュ 前面 ef_002_front
setEffMoveKey( spep_2 + 0, ef_002_front, 0, 0 , 0 );
setEffMoveKey( spep_2 + 828, ef_002_front, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, ef_002_front, 1.0, 1.0 );
setEffScaleKey( spep_2 + 828, ef_002_front, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, ef_002_front, 0 );
setEffRotateKey( spep_2 + 828, ef_002_front, 0 );
setEffAlphaKey( spep_2 + 0, ef_002_front, 255 );
setEffAlphaKey( spep_2 + 828 -2, ef_002_front, 255 );
setEffAlphaKey( spep_2 + 828 -1, ef_002_front, 255 );
setEffAlphaKey( spep_2 + 828, ef_002_front, 0 );

-- ** 音 ** --
--フリーザ走ってくる
SE006 = playSeVer2( spep_2 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE006, 81 );
SE007 = playSeVer2( spep_2 + 0, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE007, 79 );
SE008 = playSeVer2( spep_2 + 8, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE008, 50 );
SE009 = playSeVer2( spep_2 + 12, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE009, 76 );
SE010 = playSeVer2( spep_2 + 20, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 20, SE010, 66 );
SE011 = playSeVer2( spep_2 + 28, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 28, SE011, 82 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 834 + 2, 0, 0, 0, 0, 255); -- ベース暗め 背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);

    speff = entryEffectUnpausable(  SP_dodge - 12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase( SP_dodge + 10 );

    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 60, 1, 1 );
setDisp( spep_2 -3 + 246, 1, 0);

changeAnime( spep_2 -3 + 58, 1, 106 );
changeAnime( spep_2 -3 + 142, 1, 108 );
changeAnime( spep_2 -3 + 162, 1, 106 );
changeAnime( spep_2 -3 + 182, 1, 108 );
changeAnime( spep_2 -3 + 202, 1, 106 );
changeAnime( spep_2 -3 + 222, 1, 108 );
changeAnime( spep_2 -3 + 242, 1, 106 );

setMoveKey( spep_2 -3 + 60, 1, 725.6, -336.5 , 0 );
setMoveKey( spep_2 -3 + 61, 1, 725.6, -336.5 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 771.3, -328.1 , 0 );
setMoveKey( spep_2 -3 + 63, 1, 771.3, -328.1 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 492.7, -333.6 , 0 );
setMoveKey( spep_2 -3 + 65, 1, 492.7, -333.6 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 427.4, -294.6 , 0 );
setMoveKey( spep_2 -3 + 67, 1, 427.4, -294.6 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 384.4, -328.8 , 0 );
setMoveKey( spep_2 -3 + 69, 1, 384.4, -328.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 281.9, -290.4 , 0 );
setMoveKey( spep_2 -3 + 71, 1, 281.9, -290.4 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 196.6, -324 , 0 );
setMoveKey( spep_2 -3 + 73, 1, 196.6, -324 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 129.1, -295.2 , 0 );
setMoveKey( spep_2 -3 + 75, 1, 129.1, -295.2 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 123.4, -328.8 , 0 );
setMoveKey( spep_2 -3 + 77, 1, 123.4, -328.8 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 108.7, -290.4 , 0 );
setMoveKey( spep_2 -3 + 79, 1, 108.7, -290.4 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 104.2, -324 , 0 );
setMoveKey( spep_2 -3 + 81, 1, 104.2, -324 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 66.6, -304.8 , 0 );
setMoveKey( spep_2 -3 + 83, 1, 66.6, -304.8 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 82.3, -319.2 , 0 );
setMoveKey( spep_2 -3 + 85, 1, 82.3, -319.2 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 45.9, -324 , 0 );
setMoveKey( spep_2 -3 + 87, 1, 45.9, -324 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 43.5, -290.4 , 0 );
setMoveKey( spep_2 -3 + 89, 1, 43.5, -290.4 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 36.9, -324 , 0 );
setMoveKey( spep_2 -3 + 91, 1, 36.9, -324 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 6.9, -295.2 , 0 );
setMoveKey( spep_2 -3 + 93, 1, 6.9, -295.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 11, -333.6 , 0 );
setMoveKey( spep_2 -3 + 95, 1, 11, -333.6 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 1.3, -290.4 , 0 );
setMoveKey( spep_2 -3 + 97, 1, 1.3, -290.4 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -22.2, -300 , 0 );
setMoveKey( spep_2 -3 + 99, 1, -22.2, -300 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -16.5, -328.8 , 0 );
setMoveKey( spep_2 -3 + 101, 1, -16.5, -328.8 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -38.9, -295.2 , 0 );
setMoveKey( spep_2 -3 + 103, 1, -38.9, -295.2 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -27.2, -324 , 0 );
setMoveKey( spep_2 -3 + 105, 1, -27.2, -324 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -38.9, -290.4 , 0 );
setMoveKey( spep_2 -3 + 107, 1, -38.9, -290.4 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -64.5, -309.6 , 0 );
setMoveKey( spep_2 -3 + 109, 1, -64.5, -309.6 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -36.8, -309.6 , 0 );
setMoveKey( spep_2 -3 + 111, 1, -36.8, -309.6 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -56.4, -290.4 , 0 );
setMoveKey( spep_2 -3 + 113, 1, -56.4, -290.4 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -56.3, -319.2 , 0 );
setMoveKey( spep_2 -3 + 115, 1, -56.3, -319.2 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -70.1, -314.4 , 0 );
setMoveKey( spep_2 -3 + 117, 1, -70.1, -314.4 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -83.3, -319.2 , 0 );
setMoveKey( spep_2 -3 + 119, 1, -83.3, -319.2 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -81.6, -309.6 , 0 );
setMoveKey( spep_2 -3 + 121, 1, -81.6, -309.6 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -60, -324 , 0 );
setMoveKey( spep_2 -3 + 123, 1, -60, -324 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -95.6, -295.2 , 0 );
setMoveKey( spep_2 -3 + 125, 1, -95.6, -295.2 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -82.6, -319.2 , 0 );
setMoveKey( spep_2 -3 + 127, 1, -82.6, -319.2 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -96.1, -292.1 , 0 );
setMoveKey( spep_2 -3 + 129, 1, -96.1, -292.1 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -71, -321.4 , 0 );
setMoveKey( spep_2 -3 + 131, 1, -71, -321.4 , 0 );

setMoveKey( spep_2 -3 + 132, 1, 54.9, 75.8 -35, 0 );
setMoveKey( spep_2 -3 + 133, 1, 54.9, 75.8 -35, 0 );
setMoveKey( spep_2 -3 + 134, 1, 38.4, 88.5 -35, 0 );
setMoveKey( spep_2 -3 + 135, 1, 38.4, 88.5 -35, 0 );
setMoveKey( spep_2 -3 + 136, 1, 76.4, 49.2 -35, 0 );
setMoveKey( spep_2 -3 + 137, 1, 76.4, 49.2 -35, 0 );
setMoveKey( spep_2 -3 + 138, 1, 46, 74.6 -35, 0 );
setMoveKey( spep_2 -3 + 139, 1, 46, 74.6 -35, 0 );
setMoveKey( spep_2 -3 + 140, 1, 59.9, 80.9 -35, 0 );
setMoveKey( spep_2 -3 + 141, 1, 59.9, 80.9 -35, 0 );
setMoveKey( spep_2 -3 + 142, 1, 77.2, 148.6 -35, 0 );
setMoveKey( spep_2 -3 + 143, 1, 77.2, 148.6 -35, 0 );
setMoveKey( spep_2 -3 + 144, 1, 35.3, 88.9 -35, 0 );
setMoveKey( spep_2 -3 + 145, 1, 35.3, 88.9 -35, 0 );
setMoveKey( spep_2 -3 + 146, 1, 45.5, 104.2 -35, 0 );
setMoveKey( spep_2 -3 + 147, 1, 45.5, 104.2 -35, 0 );
setMoveKey( spep_2 -3 + 148, 1, 44.3, 111.7 -35, 0 );
setMoveKey( spep_2 -3 + 149, 1, 44.3, 111.7 -35, 0 );
setMoveKey( spep_2 -3 + 150, 1, 48, 109.2 -35, 0 );
setMoveKey( spep_2 -3 + 151, 1, 48, 109.2 -35, 0 );
setMoveKey( spep_2 -3 + 152, 1, 48.1, 109.3 -35, 0 );
setMoveKey( spep_2 -3 + 153, 1, 48.1, 109.3 -35, 0 );
setMoveKey( spep_2 -3 + 154, 1, 84.9, 96.6 -35, 0 );
setMoveKey( spep_2 -3 + 155, 1, 84.9, 96.6 -35, 0 );
setMoveKey( spep_2 -3 + 156, 1, 20.2, 125.8 -35, 0 );
setMoveKey( spep_2 -3 + 157, 1, 20.2, 125.8 -35, 0 );
setMoveKey( spep_2 -3 + 158, 1, 45.6, 105.5 -35, 0 );
setMoveKey( spep_2 -3 + 159, 1, 45.6, 105.5 -35, 0 );
setMoveKey( spep_2 -3 + 160, 1, 51.9, 114.2 -35, 0 );
setMoveKey( spep_2 -3 + 161, 1, 51.9, 114.2 -35, 0 );
setMoveKey( spep_2 -3 + 162, 1, 54.9, 75.8 -35, 0 );
setMoveKey( spep_2 -3 + 164, 1, 54.9, 75.8 -35, 0 );
setMoveKey( spep_2 -3 + 165, 1, 54.9, 75.8 -35, 0 );
setMoveKey( spep_2 -3 + 166, 1, 19.4, 60.6 -35, 0 );
setMoveKey( spep_2 -3 + 167, 1, 19.4, 60.6 -35, 0 );
setMoveKey( spep_2 -3 + 168, 1, 85.3, 74.5 -35, 0 );
setMoveKey( spep_2 -3 + 169, 1, 85.3, 74.5 -35, 0 );
setMoveKey( spep_2 -3 + 170, 1, 53.6, 80.8 -35, 0 );
setMoveKey( spep_2 -3 + 171, 1, 53.6, 80.8 -35, 0 );
setMoveKey( spep_2 -3 + 172, 1, 56.1, 73.3 -35, 0 );
setMoveKey( spep_2 -3 + 173, 1, 56.1, 73.3 -35, 0 );
setMoveKey( spep_2 -3 + 174, 1, 54.9, 75.8 -35, 0 );
setMoveKey( spep_2 -3 + 176, 1, 54.9, 75.8 -35, 0 );
setMoveKey( spep_2 -3 + 177, 1, 54.9, 75.8 -35, 0 );
setMoveKey( spep_2 -3 + 178, 1, 89.1, 105 -35, 0 );
setMoveKey( spep_2 -3 + 179, 1, 89.1, 105 -35, 0 );
setMoveKey( spep_2 -3 + 180, 1, 19.4, 31.4 -35, 0 );
setMoveKey( spep_2 -3 + 181, 1, 19.4, 31.4 -35, 0 );
setMoveKey( spep_2 -3 + 182, 1, 43, 103 -35, 0 );
setMoveKey( spep_2 -3 + 183, 1, 43, 103 -35, 0 );
setMoveKey( spep_2 -3 + 184, 1, 53, 109.2 -35, 0 );
setMoveKey( spep_2 -3 + 185, 1, 53, 109.2 -35, 0 );
setMoveKey( spep_2 -3 + 186, 1, 48, 109.2 -35, 0 );
setMoveKey( spep_2 -3 + 188, 1, 48, 109.2 -35, 0 );
setMoveKey( spep_2 -3 + 189, 1, 48, 109.2 -35, 0 );
setMoveKey( spep_2 -3 + 190, 1, 84.8, 124.5 -35, 0 );
setMoveKey( spep_2 -3 + 191, 1, 84.8, 124.5 -35, 0 );
setMoveKey( spep_2 -3 + 192, 1, 16.4, 92.8 -35, 0 );
setMoveKey( spep_2 -3 + 193, 1, 16.4, 92.8 -35, 0 );
setMoveKey( spep_2 -3 + 194, 1, 51.9, 110.5 -35, 0 );
setMoveKey( spep_2 -3 + 195, 1, 51.9, 110.5 -35, 0 );
setMoveKey( spep_2 -3 + 196, 1, 44.4, 111.8 -35, 0 );
setMoveKey( spep_2 -3 + 197, 1, 44.4, 111.8 -35, 0 );
setMoveKey( spep_2 -3 + 198, 1, 48.1, 109.3 -35, 0 );
setMoveKey( spep_2 -3 + 199, 1, 48.1, 109.3 -35, 0 );
setMoveKey( spep_2 -3 + 200, 1, 48.1, 109.2 -35, 0 );
setMoveKey( spep_2 -3 + 201, 1, 48.1, 109.2 -35, 0 );
setMoveKey( spep_2 -3 + 202, 1, 85.3, 101.1 -35, 0 );
setMoveKey( spep_2 -3 + 203, 1, 85.3, 101.1 -35, 0 );
setMoveKey( spep_2 -3 + 204, 1, 48.6, 59.5 -35, 0 );
setMoveKey( spep_2 -3 + 205, 1, 48.6, 59.5 -35, 0 );
setMoveKey( spep_2 -3 + 206, 1, 59.9, 75.8 -35, 0 );
setMoveKey( spep_2 -3 + 207, 1, 59.9, 75.8 -35, 0 );
setMoveKey( spep_2 -3 + 208, 1, 54.9, 75.8 -35, 0 );
setMoveKey( spep_2 -3 + 210, 1, 54.9, 75.8 -35, 0 );
setMoveKey( spep_2 -3 + 212, 1, 54.9, 75.8 -35, 0 );
setMoveKey( spep_2 -3 + 213, 1, 54.9, 75.8 -35, 0 );
setMoveKey( spep_2 -3 + 214, 1, 20.6, 86 -35, 0 );
setMoveKey( spep_2 -3 + 215, 1, 20.6, 86 -35, 0 );
setMoveKey( spep_2 -3 + 216, 1, 79, 47.9 -35, 0 );
setMoveKey( spep_2 -3 + 217, 1, 79, 47.9 -35, 0 );
setMoveKey( spep_2 -3 + 218, 1, 52.4, 80.8 -35, 0 );
setMoveKey( spep_2 -3 + 219, 1, 52.4, 80.8 -35, 0 );
setMoveKey( spep_2 -3 + 220, 1, 54.9, 74.6 -35, 0 );
setMoveKey( spep_2 -3 + 221, 1, 54.9, 74.6 -35, 0 );
setMoveKey( spep_2 -3 + 222, 1, 48, 109.2 -35, 0 );
setMoveKey( spep_2 -3 + 224, 1, 48, 109.2 -35, 0 );
setMoveKey( spep_2 -3 + 225, 1, 48, 109.2 -35, 0 );
setMoveKey( spep_2 -3 + 226, 1, 26.7, 127.5 -35, 0 );
setMoveKey( spep_2 -3 + 227, 1, 26.7, 127.5 -35, 0 );
setMoveKey( spep_2 -3 + 228, 1, 57.2, 97 -35, 0 );
setMoveKey( spep_2 -3 + 229, 1, 57.2, 97 -35, 0 );
setMoveKey( spep_2 -3 + 230, 1, 38.9, 115.3 -35, 0 );
setMoveKey( spep_2 -3 + 231, 1, 38.9, 115.3 -35, 0 );
setMoveKey( spep_2 -3 + 232, 1, 60.3, 109.3 -35, 0 );
setMoveKey( spep_2 -3 + 233, 1, 60.3, 109.3 -35, 0 );
setMoveKey( spep_2 -3 + 234, 1, 39, 115.4 -35, 0 );
setMoveKey( spep_2 -3 + 235, 1, 39, 115.4 -35, 0 );
setMoveKey( spep_2 -3 + 236, 1, 48.1, 97.1 -35, 0 );
setMoveKey( spep_2 -3 + 237, 1, 48.1, 97.1 -35, 0 );
setMoveKey( spep_2 -3 + 238, 1, 35.9, 115.4 -35, 0 );
setMoveKey( spep_2 -3 + 239, 1, 35.9, 115.4 -35, 0 );
setMoveKey( spep_2 -3 + 240, 1, 57.3, 106.2 -35, 0 );
setMoveKey( spep_2 -3 + 241, 1, 57.3, 106.2 -35, 0 );
setMoveKey( spep_2 -3 + 242, 1, 48.8, 81.9 -35, 0 );
setMoveKey( spep_2 -3 + 243, 1, 48.8, 81.9 -35, 0 );
setMoveKey( spep_2 -3 + 244, 1, 61, 75.8 -35, 0 );

setScaleKey( spep_2 -3 + 60, 1, 6.19, 6.19 );
setScaleKey( spep_2 -3 + 131, 1, 6.19, 6.19 );
setScaleKey( spep_2 -3 + 132, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 140, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 141, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 142, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 150, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 152, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 160, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 161, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 162, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 170, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 172, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 180, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 181, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 182, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 190, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 192, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 200, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 201, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 202, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 210, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 212, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 221, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 222, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 232, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 241, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 242, 1, 1.56, 1.56 );

setRotateKey( spep_2 -3 + 60, 1, -38.7 );
setRotateKey( spep_2 -3 + 61, 1, -38.7 );
setRotateKey( spep_2 -3 + 62, 1, -38.5 );
setRotateKey( spep_2 -3 + 63, 1, -38.5 );
setRotateKey( spep_2 -3 + 64, 1, -38.3 );
setRotateKey( spep_2 -3 + 65, 1, -38.3 );
setRotateKey( spep_2 -3 + 66, 1, -38.1 );
setRotateKey( spep_2 -3 + 67, 1, -38.1 );
setRotateKey( spep_2 -3 + 68, 1, -37.9 );
setRotateKey( spep_2 -3 + 69, 1, -37.9 );
setRotateKey( spep_2 -3 + 70, 1, -37.7 );
setRotateKey( spep_2 -3 + 71, 1, -37.7 );
setRotateKey( spep_2 -3 + 72, 1, -37.6 );
setRotateKey( spep_2 -3 + 73, 1, -37.6 );
setRotateKey( spep_2 -3 + 74, 1, -37.4 );
setRotateKey( spep_2 -3 + 75, 1, -37.4 );
setRotateKey( spep_2 -3 + 76, 1, -37.3 );
setRotateKey( spep_2 -3 + 77, 1, -37.3 );
setRotateKey( spep_2 -3 + 78, 1, -37.1 );
setRotateKey( spep_2 -3 + 79, 1, -37.1 );
setRotateKey( spep_2 -3 + 80, 1, -37 );
setRotateKey( spep_2 -3 + 81, 1, -37 );
setRotateKey( spep_2 -3 + 82, 1, -36.8 );
setRotateKey( spep_2 -3 + 83, 1, -36.8 );
setRotateKey( spep_2 -3 + 84, 1, -36.7 );
setRotateKey( spep_2 -3 + 85, 1, -36.7 );
setRotateKey( spep_2 -3 + 86, 1, -36.6 );
setRotateKey( spep_2 -3 + 87, 1, -36.6 );
setRotateKey( spep_2 -3 + 88, 1, -36.4 );
setRotateKey( spep_2 -3 + 89, 1, -36.4 );
setRotateKey( spep_2 -3 + 90, 1, -36.3 );
setRotateKey( spep_2 -3 + 91, 1, -36.3 );
setRotateKey( spep_2 -3 + 92, 1, -36.2 );
setRotateKey( spep_2 -3 + 93, 1, -36.2 );
setRotateKey( spep_2 -3 + 94, 1, -36.1 );
setRotateKey( spep_2 -3 + 95, 1, -36.1 );
setRotateKey( spep_2 -3 + 96, 1, -36 );
setRotateKey( spep_2 -3 + 97, 1, -36 );
setRotateKey( spep_2 -3 + 98, 1, -35.9 );
setRotateKey( spep_2 -3 + 99, 1, -35.9 );
setRotateKey( spep_2 -3 + 100, 1, -35.8 );
setRotateKey( spep_2 -3 + 101, 1, -35.8 );
setRotateKey( spep_2 -3 + 102, 1, -35.7 );
setRotateKey( spep_2 -3 + 104, 1, -35.7 );
setRotateKey( spep_2 -3 + 105, 1, -35.7 );
setRotateKey( spep_2 -3 + 106, 1, -35.6 );
setRotateKey( spep_2 -3 + 107, 1, -35.6 );
setRotateKey( spep_2 -3 + 108, 1, -35.5 );
setRotateKey( spep_2 -3 + 110, 1, -35.5 );
setRotateKey( spep_2 -3 + 111, 1, -35.5 );
setRotateKey( spep_2 -3 + 112, 1, -35.4 );
setRotateKey( spep_2 -3 + 114, 1, -35.4 );
setRotateKey( spep_2 -3 + 115, 1, -35.4 );
setRotateKey( spep_2 -3 + 116, 1, -35.3 );
setRotateKey( spep_2 -3 + 120, 1, -35.3 );
setRotateKey( spep_2 -3 + 121, 1, -35.3 );
setRotateKey( spep_2 -3 + 122, 1, -35.2 );
setRotateKey( spep_2 -3 + 131, 1, -35.2 );
setRotateKey( spep_2 -3 + 132, 1, -56.5 );
setRotateKey( spep_2 -3 + 133, 1, -56.5 );
setRotateKey( spep_2 -3 + 134, 1, -53.2 );
setRotateKey( spep_2 -3 + 135, 1, -53.2 );
setRotateKey( spep_2 -3 + 136, 1, -50.9 );
setRotateKey( spep_2 -3 + 137, 1, -50.9 );
setRotateKey( spep_2 -3 + 138, 1, -49.5 );
setRotateKey( spep_2 -3 + 139, 1, -49.5 );
setRotateKey( spep_2 -3 + 140, 1, -49 );
setRotateKey( spep_2 -3 + 141, 1, -49 );
setRotateKey( spep_2 -3 + 142, 1, -21 );
setRotateKey( spep_2 -3 + 143, 1, -21 );
setRotateKey( spep_2 -3 + 144, 1, -23.8 );
setRotateKey( spep_2 -3 + 145, 1, -23.8 );
setRotateKey( spep_2 -3 + 146, 1, -25.7 );
setRotateKey( spep_2 -3 + 147, 1, -25.7 );
setRotateKey( spep_2 -3 + 148, 1, -26.9 );
setRotateKey( spep_2 -3 + 149, 1, -26.9 );
setRotateKey( spep_2 -3 + 150, 1, -27.3 );
setRotateKey( spep_2 -3 + 151, 1, -27.3 );
setRotateKey( spep_2 -3 + 152, 1, 32 );
setRotateKey( spep_2 -3 + 153, 1, 32 );
setRotateKey( spep_2 -3 + 154, 1, 38.1 );
setRotateKey( spep_2 -3 + 155, 1, 38.1 );
setRotateKey( spep_2 -3 + 156, 1, 42.4 );
setRotateKey( spep_2 -3 + 157, 1, 42.4 );
setRotateKey( spep_2 -3 + 158, 1, 45 );
setRotateKey( spep_2 -3 + 159, 1, 45 );
setRotateKey( spep_2 -3 + 160, 1, 45.9 );
setRotateKey( spep_2 -3 + 161, 1, 45.9 );
setRotateKey( spep_2 -3 + 162, 1, -76 );
setRotateKey( spep_2 -3 + 163, 1, -76 );
setRotateKey( spep_2 -3 + 164, 1, -78.4 );
setRotateKey( spep_2 -3 + 165, 1, -78.4 );
setRotateKey( spep_2 -3 + 166, 1, -80.1 );
setRotateKey( spep_2 -3 + 167, 1, -80.1 );
setRotateKey( spep_2 -3 + 168, 1, -81.1 );
setRotateKey( spep_2 -3 + 169, 1, -81.1 );
setRotateKey( spep_2 -3 + 170, 1, -81.5 );
setRotateKey( spep_2 -3 + 171, 1, -81.5 );
setRotateKey( spep_2 -3 + 172, 1, -56.5 );
setRotateKey( spep_2 -3 + 173, 1, -56.5 );
setRotateKey( spep_2 -3 + 174, 1, -53.2 );
setRotateKey( spep_2 -3 + 175, 1, -53.2 );
setRotateKey( spep_2 -3 + 176, 1, -50.9 );
setRotateKey( spep_2 -3 + 177, 1, -50.9 );
setRotateKey( spep_2 -3 + 178, 1, -49.5 );
setRotateKey( spep_2 -3 + 179, 1, -49.5 );
setRotateKey( spep_2 -3 + 180, 1, -49 );
setRotateKey( spep_2 -3 + 181, 1, -49 );
setRotateKey( spep_2 -3 + 182, 1, -21 );
setRotateKey( spep_2 -3 + 183, 1, -21 );
setRotateKey( spep_2 -3 + 184, 1, -23.8 );
setRotateKey( spep_2 -3 + 185, 1, -23.8 );
setRotateKey( spep_2 -3 + 186, 1, -25.7 );
setRotateKey( spep_2 -3 + 187, 1, -25.7 );
setRotateKey( spep_2 -3 + 188, 1, -26.9 );
setRotateKey( spep_2 -3 + 189, 1, -26.9 );
setRotateKey( spep_2 -3 + 190, 1, -27.3 );
setRotateKey( spep_2 -3 + 191, 1, -27.3 );
setRotateKey( spep_2 -3 + 192, 1, 32 );
setRotateKey( spep_2 -3 + 193, 1, 32 );
setRotateKey( spep_2 -3 + 194, 1, 38.1 );
setRotateKey( spep_2 -3 + 195, 1, 38.1 );
setRotateKey( spep_2 -3 + 196, 1, 42.4 );
setRotateKey( spep_2 -3 + 197, 1, 42.4 );
setRotateKey( spep_2 -3 + 198, 1, 45 );
setRotateKey( spep_2 -3 + 199, 1, 45 );
setRotateKey( spep_2 -3 + 200, 1, 45.9 );
setRotateKey( spep_2 -3 + 201, 1, 45.9 );
setRotateKey( spep_2 -3 + 202, 1, -76 );
setRotateKey( spep_2 -3 + 203, 1, -76 );
setRotateKey( spep_2 -3 + 204, 1, -78.4 );
setRotateKey( spep_2 -3 + 205, 1, -78.4 );
setRotateKey( spep_2 -3 + 206, 1, -80.1 );
setRotateKey( spep_2 -3 + 207, 1, -80.1 );
setRotateKey( spep_2 -3 + 208, 1, -81.1 );
setRotateKey( spep_2 -3 + 209, 1, -81.1 );
setRotateKey( spep_2 -3 + 210, 1, -81.5 );
setRotateKey( spep_2 -3 + 211, 1, -81.5 );
setRotateKey( spep_2 -3 + 212, 1, -56.5 );
setRotateKey( spep_2 -3 + 213, 1, -56.5 );
setRotateKey( spep_2 -3 + 214, 1, -53.2 );
setRotateKey( spep_2 -3 + 215, 1, -53.2 );
setRotateKey( spep_2 -3 + 216, 1, -50.9 );
setRotateKey( spep_2 -3 + 217, 1, -50.9 );
setRotateKey( spep_2 -3 + 218, 1, -49.5 );
setRotateKey( spep_2 -3 + 219, 1, -49.5 );
setRotateKey( spep_2 -3 + 220, 1, -49 );
setRotateKey( spep_2 -3 + 221, 1, -49 );
setRotateKey( spep_2 -3 + 222, 1, -21 );
setRotateKey( spep_2 -3 + 223, 1, -21 );
setRotateKey( spep_2 -3 + 224, 1, -23.8 );
setRotateKey( spep_2 -3 + 225, 1, -23.8 );
setRotateKey( spep_2 -3 + 226, 1, -25.7 );
setRotateKey( spep_2 -3 + 227, 1, -25.7 );
setRotateKey( spep_2 -3 + 228, 1, -26.9 );
setRotateKey( spep_2 -3 + 229, 1, -26.9 );
setRotateKey( spep_2 -3 + 230, 1, -27.3 );
setRotateKey( spep_2 -3 + 231, 1, -27.3 );
setRotateKey( spep_2 -3 + 232, 1, 32 );
setRotateKey( spep_2 -3 + 233, 1, 32 );
setRotateKey( spep_2 -3 + 234, 1, 38.1 );
setRotateKey( spep_2 -3 + 235, 1, 38.1 );
setRotateKey( spep_2 -3 + 236, 1, 42.4 );
setRotateKey( spep_2 -3 + 237, 1, 42.4 );
setRotateKey( spep_2 -3 + 238, 1, 45 );
setRotateKey( spep_2 -3 + 239, 1, 45 );
setRotateKey( spep_2 -3 + 240, 1, 45.9 );
setRotateKey( spep_2 -3 + 241, 1, 45.9 );
setRotateKey( spep_2 -3 + 242, 1, -76 );
setRotateKey( spep_2 -3 + 243, 1, -76 );
setRotateKey( spep_2 -3 + 244, 1, -78.4 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 292, 1, 1 );
setDisp( spep_2 -3 + 464, 1, 0 );
changeAnime( spep_2 -3 + 292, 1, 106 );

setMoveKey( spep_2 -3 + 291, 1, 61, 75.8 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 339.7, 56.7 , 0 );
setMoveKey( spep_2 -3 + 293, 1, 339.7, 56.7 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 243, 112.8 , 0 );
setMoveKey( spep_2 -3 + 295, 1, 243, 112.8 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 301.9, 79.1 , 0 );
setMoveKey( spep_2 -3 + 297, 1, 301.9, 79.1 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 222.3, 124.8 , 0 );
setMoveKey( spep_2 -3 + 299, 1, 222.3, 124.8 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 267.5, 98.5 , 0 );
setMoveKey( spep_2 -3 + 301, 1, 267.5, 98.5 , 0 );
setMoveKey( spep_2 -3 + 302, 1, 213.5, 129.2 , 0 );
setMoveKey( spep_2 -3 + 303, 1, 213.5, 129.2 , 0 );
setMoveKey( spep_2 -3 + 304, 1, 230.3, 119.3 , 0 );
setMoveKey( spep_2 -3 + 305, 1, 230.3, 119.3 , 0 );
setMoveKey( spep_2 -3 + 306, 1, 204.1, 134.2 , 0 );
setMoveKey( spep_2 -3 + 307, 1, 204.1, 134.2 , 0 );
setMoveKey( spep_2 -3 + 308, 1, 198.2, 137.1 , 0 );
setMoveKey( spep_2 -3 + 309, 1, 198.2, 137.1 , 0 );
setMoveKey( spep_2 -3 + 310, 1, 192.4, 139.8 , 0 );
setMoveKey( spep_2 -3 + 311, 1, 192.4, 139.8 , 0 );
setMoveKey( spep_2 -3 + 312, 1, 186.7, 142.3 , 0 );
setMoveKey( spep_2 -3 + 313, 1, 186.7, 142.3 , 0 );
setMoveKey( spep_2 -3 + 314, 1, 181.5, 144.7 , 0 );
setMoveKey( spep_2 -3 + 315, 1, 181.5, 144.7 , 0 );
setMoveKey( spep_2 -3 + 316, 1, 176.4, 147 , 0 );
setMoveKey( spep_2 -3 + 317, 1, 176.4, 147 , 0 );
setMoveKey( spep_2 -3 + 318, 1, 171.3, 149 , 0 );
setMoveKey( spep_2 -3 + 319, 1, 171.3, 149 , 0 );
setMoveKey( spep_2 -3 + 320, 1, 166.4, 150.8 , 0 );
setMoveKey( spep_2 -3 + 321, 1, 166.4, 150.8 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 161.5, 152.5 , 0 );
setMoveKey( spep_2 -3 + 323, 1, 161.5, 152.5 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 156.9, 154 , 0 );
setMoveKey( spep_2 -3 + 325, 1, 156.9, 154 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 152.6, 155.4 , 0 );
setMoveKey( spep_2 -3 + 327, 1, 152.6, 155.4 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 148.3, 156.6 , 0 );
setMoveKey( spep_2 -3 + 329, 1, 148.3, 156.6 , 0 );
setMoveKey( spep_2 -3 + 330, 1, 144.1, 157.6 , 0 );
setMoveKey( spep_2 -3 + 331, 1, 144.1, 157.6 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 140, 158.5 , 0 );
setMoveKey( spep_2 -3 + 333, 1, 140, 158.5 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 136.1, 159.2 , 0 );
setMoveKey( spep_2 -3 + 335, 1, 136.1, 159.2 , 0 );
setMoveKey( spep_2 -3 + 336, 1, 132.5, 159.7 , 0 );
setMoveKey( spep_2 -3 + 337, 1, 132.5, 159.7 , 0 );
setMoveKey( spep_2 -3 + 338, 1, 128.9, 160.2 , 0 );
setMoveKey( spep_2 -3 + 339, 1, 128.9, 160.2 , 0 );
setMoveKey( spep_2 -3 + 340, 1, 125.4, 160.5 , 0 );
setMoveKey( spep_2 -3 + 341, 1, 125.4, 160.5 , 0 );
setMoveKey( spep_2 -3 + 342, 1, 122, 160.6 , 0 );
setMoveKey( spep_2 -3 + 343, 1, 122, 160.6 , 0 );
setMoveKey( spep_2 -3 + 344, 1, 118.7, 160.6 , 0 );
setMoveKey( spep_2 -3 + 345, 1, 118.7, 160.6 , 0 );
setMoveKey( spep_2 -3 + 346, 1, 115.7, 160.5 , 0 );
setMoveKey( spep_2 -3 + 347, 1, 115.7, 160.5 , 0 );
setMoveKey( spep_2 -3 + 348, 1, 112.7, 160.2 , 0 );
setMoveKey( spep_2 -3 + 349, 1, 112.7, 160.2 , 0 );
setMoveKey( spep_2 -3 + 350, 1, 109.9, 159.9 , 0 );
setMoveKey( spep_2 -3 + 351, 1, 109.9, 159.9 , 0 );
setMoveKey( spep_2 -3 + 352, 1, 107.2, 159.4 , 0 );
setMoveKey( spep_2 -3 + 353, 1, 107.2, 159.4 , 0 );
setMoveKey( spep_2 -3 + 354, 1, 104.5, 158.8 , 0 );
setMoveKey( spep_2 -3 + 355, 1, 104.5, 158.8 , 0 );
setMoveKey( spep_2 -3 + 356, 1, 102, 158.2 , 0 );
setMoveKey( spep_2 -3 + 357, 1, 102, 158.2 , 0 );
setMoveKey( spep_2 -3 + 358, 1, 99.6, 157.4 , 0 );
setMoveKey( spep_2 -3 + 359, 1, 99.6, 157.4 , 0 );
setMoveKey( spep_2 -3 + 360, 1, 97.3, 156.5 , 0 );
setMoveKey( spep_2 -3 + 361, 1, 97.3, 156.5 , 0 );
setMoveKey( spep_2 -3 + 362, 1, 95.2, 155.5 , 0 );
setMoveKey( spep_2 -3 + 363, 1, 95.2, 155.5 , 0 );
setMoveKey( spep_2 -3 + 364, 1, 93.2, 154.5 , 0 );
setMoveKey( spep_2 -3 + 365, 1, 93.2, 154.5 , 0 );
setMoveKey( spep_2 -3 + 366, 1, 91.2, 153.4 , 0 );
setMoveKey( spep_2 -3 + 367, 1, 91.2, 153.4 , 0 );
setMoveKey( spep_2 -3 + 368, 1, 89.4, 152.2 , 0 );
setMoveKey( spep_2 -3 + 369, 1, 89.4, 152.2 , 0 );
setMoveKey( spep_2 -3 + 370, 1, 87.6, 151 , 0 );
setMoveKey( spep_2 -3 + 371, 1, 87.6, 151 , 0 );
setMoveKey( spep_2 -3 + 372, 1, 86, 149.7 , 0 );
setMoveKey( spep_2 -3 + 373, 1, 86, 149.7 , 0 );
setMoveKey( spep_2 -3 + 374, 1, 84.5, 148.3 , 0 );
setMoveKey( spep_2 -3 + 375, 1, 84.5, 148.3 , 0 );
setMoveKey( spep_2 -3 + 376, 1, 83.1, 146.9 , 0 );
setMoveKey( spep_2 -3 + 377, 1, 83.1, 146.9 , 0 );
setMoveKey( spep_2 -3 + 378, 1, 81.9, 145.5 , 0 );
setMoveKey( spep_2 -3 + 379, 1, 81.9, 145.5 , 0 );
setMoveKey( spep_2 -3 + 380, 1, 80.7, 144 , 0 );
setMoveKey( spep_2 -3 + 381, 1, 80.7, 144 , 0 );
setMoveKey( spep_2 -3 + 382, 1, 79.6, 142.5 , 0 );
setMoveKey( spep_2 -3 + 383, 1, 79.6, 142.5 , 0 );
setMoveKey( spep_2 -3 + 384, 1, 78.7, 141 , 0 );
setMoveKey( spep_2 -3 + 385, 1, 78.7, 141 , 0 );
setMoveKey( spep_2 -3 + 386, 1, 77.8, 139.5 , 0 );
setMoveKey( spep_2 -3 + 387, 1, 77.8, 139.5 , 0 );
setMoveKey( spep_2 -3 + 388, 1, 77.1, 137.9 , 0 );
setMoveKey( spep_2 -3 + 389, 1, 77.1, 137.9 , 0 );
setMoveKey( spep_2 -3 + 390, 1, 76.5, 136.4 , 0 );
setMoveKey( spep_2 -3 + 391, 1, 76.5, 136.4 , 0 );
setMoveKey( spep_2 -3 + 392, 1, 76, 134.8 , 0 );
setMoveKey( spep_2 -3 + 393, 1, 76, 134.8 , 0 );
setMoveKey( spep_2 -3 + 394, 1, 75.6, 133.2 , 0 );
setMoveKey( spep_2 -3 + 395, 1, 75.6, 133.2 , 0 );
setMoveKey( spep_2 -3 + 396, 1, 75.4, 131.7 , 0 );
setMoveKey( spep_2 -3 + 397, 1, 75.4, 131.7 , 0 );
setMoveKey( spep_2 -3 + 398, 1, 163.5, 288.4 , 0 );
setMoveKey( spep_2 -3 + 399, 1, 163.5, 288.4 , 0 );

setMoveKey( spep_2 -3 + 400, 1, 163.7, 288.6 , 0 );
setMoveKey( spep_2 -3 + 401, 1, 163.7, 288.6 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 163.9, 288.8 , 0 );
setMoveKey( spep_2 -3 + 404, 1, 164.1, 288.9 , 0 );
setMoveKey( spep_2 -3 + 403, 1, 163.9, 288.8 , 0 );
setMoveKey( spep_2 -3 + 405, 1, 164.1, 288.9 , 0 );
setMoveKey( spep_2 -3 + 406, 1, 164.3, 289.1 , 0 );
setMoveKey( spep_2 -3 + 407, 1, 164.3, 289.1 , 0 );
setMoveKey( spep_2 -3 + 408, 1, 164.4, 289.3 , 0 );
setMoveKey( spep_2 -3 + 409, 1, 164.4, 289.3 , 0 );
setMoveKey( spep_2 -3 + 410, 1, 164.6, 289.5 , 0 );
setMoveKey( spep_2 -3 + 411, 1, 164.6, 289.5 , 0 );
setMoveKey( spep_2 -3 + 412, 1, 164.8, 289.7 , 0 );
setMoveKey( spep_2 -3 + 413, 1, 164.8, 289.7 , 0 );
setMoveKey( spep_2 -3 + 414, 1, 165, 289.9 , 0 );
setMoveKey( spep_2 -3 + 415, 1, 165, 289.9 , 0 );
setMoveKey( spep_2 -3 + 416, 1, 165.2, 290.1 , 0 );
setMoveKey( spep_2 -3 + 417, 1, 165.2, 290.1 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 165.4, 290.3 , 0 );
setMoveKey( spep_2 -3 + 419, 1, 165.4, 290.3 , 0 );
setMoveKey( spep_2 -3 + 420, 1, 165.6, 290.5 , 0 );
setMoveKey( spep_2 -3 + 421, 1, 165.6, 290.5 , 0 );
setMoveKey( spep_2 -3 + 422, 1, 165.8, 290.7 , 0 );
setMoveKey( spep_2 -3 + 423, 1, 165.8, 290.7 , 0 );
setMoveKey( spep_2 -3 + 424, 1, 166, 290.9 , 0 );
setMoveKey( spep_2 -3 + 425, 1, 166, 290.9 , 0 );
setMoveKey( spep_2 -3 + 426, 1, 166.2, 291.1 , 0 );
setMoveKey( spep_2 -3 + 427, 1, 166.2, 291.1 , 0 );
setMoveKey( spep_2 -3 + 428, 1, 166.4, 291.3 , 0 );
setMoveKey( spep_2 -3 + 429, 1, 166.4, 291.3 , 0 );
setMoveKey( spep_2 -3 + 430, 1, 166.6, 291.5 , 0 );
setMoveKey( spep_2 -3 + 431, 1, 166.6, 291.5 , 0 );
setMoveKey( spep_2 -3 + 432, 1, 166.8, 291.7 , 0 );
setMoveKey( spep_2 -3 + 433, 1, 166.8, 291.7 , 0 );
setMoveKey( spep_2 -3 + 434, 1, 167, 291.9 , 0 );
setMoveKey( spep_2 -3 + 435, 1, 167, 291.9 , 0 );
setMoveKey( spep_2 -3 + 436, 1, 167.2, 292.1 , 0 );
setMoveKey( spep_2 -3 + 437, 1, 167.2, 292.1 , 0 );
setMoveKey( spep_2 -3 + 438, 1, 167.3, 292.3 , 0 );
setMoveKey( spep_2 -3 + 439, 1, 167.3, 292.3 , 0 );
setMoveKey( spep_2 -3 + 440, 1, 167.5, 292.5 , 0 );
setMoveKey( spep_2 -3 + 441, 1, 167.5, 292.5 , 0 );
setMoveKey( spep_2 -3 + 442, 1, 167.7, 292.7 , 0 );
setMoveKey( spep_2 -3 + 443, 1, 167.7, 292.7 , 0 );
setMoveKey( spep_2 -3 + 444, 1, 167.9, 292.9 , 0 );
setMoveKey( spep_2 -3 + 445, 1, 167.9, 292.9 , 0 );
setMoveKey( spep_2 -3 + 446, 1, 168.1, 293.1 , 0 );
setMoveKey( spep_2 -3 + 447, 1, 168.1, 293.1 , 0 );
setMoveKey( spep_2 -3 + 448, 1, 168.3, 293.3 , 0 );
setMoveKey( spep_2 -3 + 449, 1, 168.3, 293.3 , 0 );
setMoveKey( spep_2 -3 + 450, 1, 168.5, 293.5 , 0 );
setMoveKey( spep_2 -3 + 451, 1, 168.5, 293.5 , 0 );
setMoveKey( spep_2 -3 + 452, 1, 168.7, 293.7 , 0 );
setMoveKey( spep_2 -3 + 453, 1, 168.7, 293.7 , 0 );
setMoveKey( spep_2 -3 + 454, 1, 168.9, 293.9 , 0 );
setMoveKey( spep_2 -3 + 455, 1, 168.9, 293.9 , 0 );
setMoveKey( spep_2 -3 + 456, 1, 169.1, 294.1 , 0 );
setMoveKey( spep_2 -3 + 457, 1, 169.1, 294.1 , 0 );
setMoveKey( spep_2 -3 + 458, 1, 169.3, 294.3 , 0 );
setMoveKey( spep_2 -3 + 459, 1, 169.3, 294.3 , 0 );
setMoveKey( spep_2 -3 + 460, 1, 169.5, 294.5 , 0 );
setMoveKey( spep_2 -3 + 461, 1, 169.5, 294.5 , 0 );
setMoveKey( spep_2 -3 + 462, 1, 169.7, 294.7 , 0 );
setMoveKey( spep_2 -3 + 464, 1, 169.7, 294.7 , 0 );

setScaleKey( spep_2 -3 + 291, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 292, 1, 3.48, 3.48 );
setScaleKey( spep_2 -3 + 293, 1, 3.48, 3.48 );
setScaleKey( spep_2 -3 + 294, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 295, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 296, 1, 3.23, 3.23 );
setScaleKey( spep_2 -3 + 297, 1, 3.23, 3.23 );
setScaleKey( spep_2 -3 + 298, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 299, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 300, 1, 2.98, 2.98 );
setScaleKey( spep_2 -3 + 301, 1, 2.98, 2.98 );
setScaleKey( spep_2 -3 + 302, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 303, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 304, 1, 2.61, 2.61 );
setScaleKey( spep_2 -3 + 305, 1, 2.61, 2.61 );
setScaleKey( spep_2 -3 + 306, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 397, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 398, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 399, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 400, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 464, 1, 0.6, 0.6 );

setRotateKey( spep_2 -3 + 291, 1, -78.4 );
setRotateKey( spep_2 -3 + 292, 1, -23 );
setRotateKey( spep_2 -3 + 293, 1, -23 );
setRotateKey( spep_2 -3 + 294, 1, -22 );
setRotateKey( spep_2 -3 + 295, 1, -22 );
setRotateKey( spep_2 -3 + 296, 1, -21 );
setRotateKey( spep_2 -3 + 297, 1, -21 );
setRotateKey( spep_2 -3 + 298, 1, -20.1 );
setRotateKey( spep_2 -3 + 299, 1, -20.1 );
setRotateKey( spep_2 -3 + 300, 1, -19.1 );
setRotateKey( spep_2 -3 + 301, 1, -19.1 );
setRotateKey( spep_2 -3 + 302, 1, -18.1 );
setRotateKey( spep_2 -3 + 303, 1, -18.1 );
setRotateKey( spep_2 -3 + 304, 1, -17.2 );
setRotateKey( spep_2 -3 + 305, 1, -17.2 );
setRotateKey( spep_2 -3 + 306, 1, -16.3 );
setRotateKey( spep_2 -3 + 307, 1, -16.3 );
setRotateKey( spep_2 -3 + 308, 1, -15.3 );
setRotateKey( spep_2 -3 + 309, 1, -15.3 );
setRotateKey( spep_2 -3 + 310, 1, -14.4 );
setRotateKey( spep_2 -3 + 311, 1, -14.4 );
setRotateKey( spep_2 -3 + 312, 1, -13.5 );
setRotateKey( spep_2 -3 + 313, 1, -13.5 );
setRotateKey( spep_2 -3 + 314, 1, -12.6 );
setRotateKey( spep_2 -3 + 315, 1, -12.6 );
setRotateKey( spep_2 -3 + 316, 1, -11.8 );
setRotateKey( spep_2 -3 + 317, 1, -11.8 );
setRotateKey( spep_2 -3 + 318, 1, -10.9 );
setRotateKey( spep_2 -3 + 319, 1, -10.9 );
setRotateKey( spep_2 -3 + 320, 1, -10.1 );
setRotateKey( spep_2 -3 + 321, 1, -10.1 );
setRotateKey( spep_2 -3 + 322, 1, -9.2 );
setRotateKey( spep_2 -3 + 323, 1, -9.2 );
setRotateKey( spep_2 -3 + 324, 1, -8.4 );
setRotateKey( spep_2 -3 + 325, 1, -8.4 );
setRotateKey( spep_2 -3 + 326, 1, -7.6 );
setRotateKey( spep_2 -3 + 327, 1, -7.6 );
setRotateKey( spep_2 -3 + 328, 1, -6.8 );
setRotateKey( spep_2 -3 + 329, 1, -6.8 );
setRotateKey( spep_2 -3 + 330, 1, -6 );
setRotateKey( spep_2 -3 + 331, 1, -6 );
setRotateKey( spep_2 -3 + 332, 1, -5.2 );
setRotateKey( spep_2 -3 + 333, 1, -5.2 );
setRotateKey( spep_2 -3 + 334, 1, -4.5 );
setRotateKey( spep_2 -3 + 335, 1, -4.5 );
setRotateKey( spep_2 -3 + 336, 1, -3.7 );
setRotateKey( spep_2 -3 + 337, 1, -3.7 );
setRotateKey( spep_2 -3 + 338, 1, -3 );
setRotateKey( spep_2 -3 + 339, 1, -3 );
setRotateKey( spep_2 -3 + 340, 1, -2.3 );
setRotateKey( spep_2 -3 + 341, 1, -2.3 );
setRotateKey( spep_2 -3 + 342, 1, -1.6 );
setRotateKey( spep_2 -3 + 343, 1, -1.6 );
setRotateKey( spep_2 -3 + 344, 1, -0.9 );
setRotateKey( spep_2 -3 + 345, 1, -0.9 );
setRotateKey( spep_2 -3 + 346, 1, -0.2 );
setRotateKey( spep_2 -3 + 347, 1, -0.2 );
setRotateKey( spep_2 -3 + 348, 1, 0.5 );
setRotateKey( spep_2 -3 + 349, 1, 0.5 );
setRotateKey( spep_2 -3 + 350, 1, 1.2 );
setRotateKey( spep_2 -3 + 351, 1, 1.2 );
setRotateKey( spep_2 -3 + 352, 1, 1.8 );
setRotateKey( spep_2 -3 + 353, 1, 1.8 );
setRotateKey( spep_2 -3 + 354, 1, 2.5 );
setRotateKey( spep_2 -3 + 355, 1, 2.5 );
setRotateKey( spep_2 -3 + 356, 1, 3.1 );
setRotateKey( spep_2 -3 + 357, 1, 3.1 );
setRotateKey( spep_2 -3 + 358, 1, 3.7 );
setRotateKey( spep_2 -3 + 359, 1, 3.7 );
setRotateKey( spep_2 -3 + 360, 1, 4.3 );
setRotateKey( spep_2 -3 + 361, 1, 4.3 );
setRotateKey( spep_2 -3 + 362, 1, 4.9 );
setRotateKey( spep_2 -3 + 363, 1, 4.9 );
setRotateKey( spep_2 -3 + 364, 1, 5.5 );
setRotateKey( spep_2 -3 + 365, 1, 5.5 );
setRotateKey( spep_2 -3 + 366, 1, 6.1 );
setRotateKey( spep_2 -3 + 367, 1, 6.1 );
setRotateKey( spep_2 -3 + 368, 1, 6.6 );
setRotateKey( spep_2 -3 + 369, 1, 6.6 );
setRotateKey( spep_2 -3 + 370, 1, 7.2 );
setRotateKey( spep_2 -3 + 371, 1, 7.2 );
setRotateKey( spep_2 -3 + 372, 1, 7.7 );
setRotateKey( spep_2 -3 + 373, 1, 7.7 );
setRotateKey( spep_2 -3 + 374, 1, 8.2 );
setRotateKey( spep_2 -3 + 375, 1, 8.2 );
setRotateKey( spep_2 -3 + 376, 1, 8.7 );
setRotateKey( spep_2 -3 + 377, 1, 8.7 );
setRotateKey( spep_2 -3 + 378, 1, 9.2 );
setRotateKey( spep_2 -3 + 379, 1, 9.2 );
setRotateKey( spep_2 -3 + 380, 1, 9.7 );
setRotateKey( spep_2 -3 + 381, 1, 9.7 );
setRotateKey( spep_2 -3 + 382, 1, 10.2 );
setRotateKey( spep_2 -3 + 383, 1, 10.2 );
setRotateKey( spep_2 -3 + 384, 1, 10.6 );
setRotateKey( spep_2 -3 + 385, 1, 10.6 );
setRotateKey( spep_2 -3 + 386, 1, 11.1 );
setRotateKey( spep_2 -3 + 387, 1, 11.1 );
setRotateKey( spep_2 -3 + 388, 1, 11.5 );
setRotateKey( spep_2 -3 + 389, 1, 11.5 );
setRotateKey( spep_2 -3 + 390, 1, 11.9 );
setRotateKey( spep_2 -3 + 391, 1, 11.9 );
setRotateKey( spep_2 -3 + 392, 1, 12.3 );
setRotateKey( spep_2 -3 + 393, 1, 12.3 );
setRotateKey( spep_2 -3 + 394, 1, 12.7 );
setRotateKey( spep_2 -3 + 395, 1, 12.7 );
setRotateKey( spep_2 -3 + 396, 1, 13.1 );
setRotateKey( spep_2 -3 + 397, 1, 13.1 );
setRotateKey( spep_2 -3 + 398, 1, -8.3 );
setRotateKey( spep_2 -3 + 464, 1, -8.3 );

-- ** 音 ** --
--フリーザ走ってくる
SE012 = playSeVer2( spep_2 + 38, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 38, SE012, 87 );
SE013 = playSeVer2( spep_2 + 44, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE013, 71 );

--殴る
SE014 = playSeVer2( spep_2 + 46 +10, 1180, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 46 +10, 1187, "", 0, 0, 0, -1);

--ラッシュ
SE016 = playSeVer2( spep_2 + 114 +10, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 114 +10, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114 +10, SE017, 92 );
SE018 = playSeVer2( spep_2 + 126 +10, 1110, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 138 +10, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138 +10, SE019, 71 );
SE020 = playSeVer2( spep_2 + 138 +10, 1009, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 150 +10, 1110, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 162 +10, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162 +10, SE022, 76 );
SE023 = playSeVer2( spep_2 + 162 +10, 1010, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 174 +10, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 174 +10, SE024, 87 );
setPitch( spep_2 + 174 +10, SE024, -200 );
setTimeStretch( SE024, 0.87, 30, 4 );
SE025 = playSeVer2( spep_2 + 174 +10, 1009, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 186 +10, 1110, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 198 +10, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 198 +10, SE027, 75 );
setPitch( spep_2 + 198 +10, SE027, 100 );
setTimeStretch( SE027, 1.07, 30, 4 );
SE028 = playSeVer2( spep_2 + 198 +10, 1010, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 212 +10, 1110, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 224 +10, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 224 +10, SE030, 84 );
SE031 = playSeVer2( spep_2 + 224 +10, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 224 +10, SE031, 94 );

--蹴り飛ばす
SE032 = playSeVer2( spep_2 + 280, 1173, "", 0, 0, 0, -1);
setStartTimeMs( SE032,  817 );
setPitch( spep_2 + 280, SE032, -300 );
setTimeStretch( SE032, 0.8, 30, 4 );

--振りかぶる
SE033 = playSeVer2( spep_2 + 242, 1116, "", spep_2 + 282, 0, 20, -1);
SE034 = playSeVer2( spep_2 + 272, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE035 = playSeVer2( spep_2 + 280, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 280, SE035, 80 );
SE036 = playSeVer2( spep_2 + 280, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 280, SE036, 80 );
SE037 = playSeVer2( spep_2 + 284, 1170, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 284, SE037, 80 );

--フロスト歩いてくる
SE038 = playSeVer2( spep_2 + 382, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 382, SE038, 54 );
SE039 = playSeVer2( spep_2 + 392, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 392, SE039, 51 );
SE040 = playSeVer2( spep_2 + 432, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 432, SE040, 50 );

--画面遷移
SE041 = playSeVer2( spep_2 + 450, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 450, SE041, 67 );

--手出す
SE042 = playSeVer2( spep_2 + 470, 4, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 470, 1048, "", 0, 0, 0, -1);

--暗雲
SE044 = playSeVer2( spep_2 + 502, 1229, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 502, SE044, 114 );

--発射前溜め
SE045 = playSeVer2( spep_2 + 586, 1262, "",spep_1 + 756, 0, 18, -1);
SE046 = playSeVer2( spep_2 + 586, 1282, "",spep_1 + 756, 0, 18, -1);

--気弾発射
SE047 = playSeVer2( spep_2 + 646, 1145, "", 0, 0, 0, -1);

--爆発
SE048 = playSeVer2( spep_2 + 662, 1159, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 674, 1067, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 694, 1188, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_2 + 834 - 12, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 658 );
endPhase( spep_2 + 834 - 10 );
else
end