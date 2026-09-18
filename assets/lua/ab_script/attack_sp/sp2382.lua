--4024450:超サイヤ人ゴッドSSベジータ_戦闘民族の誇り
--sp_effect_b1_00203
--sp2382

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
SP_01 = 159875; --冒頭    ef_001
SP_02 = 159877; --敵の前に出現、敵の腹にパンチ、ワンツーパンチ〜回り込み、2連回し蹴り、吹き飛ぶ敵  ef_002
SP_03 = 159878; --敵の前に出現、敵の腹にパンチ、ワンツーパンチ〜回り込み、2連回し蹴り、吹き飛ぶ敵  ef_002_back
SP_04 = 159881; --ベジータ首振り、突っ込む、アッパーで敵吹き飛ばし、ラッシュで地面に激突   ef_003
SP_05 = 159882; --ベジータ首振り、突っ込む、アッパーで敵吹き飛ばし、ラッシュで地面に激突   ef_003_back
SP_06 = 159883; --地面に落下 ef_004
SP_07 = 159884; --ビックバンアタック発射   ef_005
SP_08 = 159885; --フィニッシュ    ef_006
SP_09 = 159886; --フィニッシュ    ef_006_back

--敵側
SP_01r = 159876;    --冒頭    ef_001_r
SP_02r = 159879;    --敵の前に出現、敵の腹にパンチ、ワンツーパンチ〜回り込み、2連回し蹴り、吹き飛ぶ敵  ef_002_r
SP_03r = 159880;    --敵の前に出現、敵の腹にパンチ、ワンツーパンチ〜回り込み、2連回し蹴り、吹き飛ぶ敵  ef_002_r_back

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
-- 冒頭(56F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 56, 0x100, -1, 0, 0, 0 );  --冒頭   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 56, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 56 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 56, first_f, 0 );

-- ** 音 ** --
--入りオーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 80, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 136 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 80, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 119 );

--瞬間移動
SE003 = playSeVer2( spep_0 + 32, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;


------------------------------------------------------
-- 敵の前に出現、敵の腹にパンチ、ワンツーパンチ〜回り込み、2連回し蹴り、吹き飛ぶ敵(222F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
move_f = entryEffectLife( spep_1 + 0, SP_02, 222, 0x100, -1, 0, 0, 0 );  --敵の前に出現、敵の腹にパンチ、ワンツーパンチ〜回り込み、2連回し蹴り、吹き飛ぶ敵 ef_002
setEffMoveKey( spep_1 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 222, move_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 222, move_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, move_f, 0 );
setEffRotateKey( spep_1 + 222, move_f, 0 );
setEffAlphaKey( spep_1 + 0, move_f, 255 );
setEffAlphaKey( spep_1 + 222 -1, move_f, 255 );
setEffAlphaKey( spep_1 + 222, move_f, 0 );

move_b = entryEffectLife( spep_1 + 0, SP_03, 222, 0x80, -1, 0, 0, 0 );  --敵の前に出現、敵の腹にパンチ、ワンツーパンチ〜回り込み、2連回し蹴り、吹き飛ぶ敵  ef_002_back
setEffMoveKey( spep_1 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 222, move_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 222, move_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, move_b, 0 );
setEffRotateKey( spep_1 + 222, move_b, 0 );
setEffAlphaKey( spep_1 + 0, move_b, 255 );
setEffAlphaKey( spep_1 + 222 -1, move_b, 255 );
setEffAlphaKey( spep_1 + 222, move_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 0, -96 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 0, -96 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 0, -121 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 0, -145.9 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 0, -170.9 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 0, -195.8 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 0, -220.8 , 0 );

setScaleKey( spep_1 + 0, 1, 2.89, 2.89 );
setScaleKey( spep_1 -3 + 8, 1, 2.89, 2.89 );
setScaleKey( spep_1 -3 + 10, 1, 2.67, 2.67 );
setScaleKey( spep_1 -3 + 12, 1, 2.45, 2.45 );
setScaleKey( spep_1 -3 + 14, 1, 2.23, 2.23 );
setScaleKey( spep_1 -3 + 16, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 18, 1, 1.79, 1.79 );

setRotateKey( spep_1 + 0, 1, 0 );

-- ** 音 ** --
--瞬間移動
SE004 = playSeVer2( spep_1 + 14, 1109, "", 0, 0, 0, -1);

--オーラ
SE005 = playSeVer2( spep_1 + 14, 1181, "",spep_1 + 88, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 14, SE005, 143 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 0, -220.8 , 0 );
    setMoveKey( SP_dodge + 10, 1, 0, -220.8 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.79, 1.79 );
    setScaleKey( SP_dodge + 10, 1, 1.79, 1.79 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
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
setDisp( spep_1 -3 + 202, 1, 0 );
changeAnime( spep_1 -3 + 60, 1, 104 );
changeAnime( spep_1 -3 + 78, 1, 108 );
changeAnime( spep_1 -3 + 114, 1, 106 );
changeAnime( spep_1 -3 + 150, 1, 108 );
changeAnime( spep_1 -3 + 186, 1, 107 );


setMoveKey( spep_1 -3 + 59, 1, 0, -220.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -1.6, -33.6 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 50.7, -62.5 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 102.9, -91.5 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 81.2, -30.4 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 59.5, 30.8 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 71.8, 3.8 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 84, -23.1 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 72.3, -28.1 , 0 );
setMoveKey( spep_1 -3 + 77, 1, 60.6, -33 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 108.8, 46 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 126.8, 35.9 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 107.7, 37.8 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 156.8, 76.9 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 140.8, 66.7 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 146.8, 73.7 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 152.8, 80.6 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 158.8, 87.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 159.1, 87.6 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 159.3, 87.6 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 159.6, 87.7 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 159.9, 87.8 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 160.1, 87.9 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 160.4, 87.9 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 160.7, 88 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 182.4, 41.6 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 180.2, 45.1 , 0 );
setMoveKey( spep_1 -3 + 113, 1, 177.9, 48.5 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 128.5, 71.9 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 142.8, 59 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 120, 58 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 165.5, 94.3 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 145.7, 81.4 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 147.9, 85.5 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 150.2, 89.6 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 144.4, 100.7 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 166.2, 99.2 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 144.4, 97.6 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 190.8, 133.2 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 172, 119.7 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 132.4, 108.2 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 93, 96.8 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 53.9, 85.4 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 15, 74 , 0 );
setMoveKey( spep_1 -3 + 146, 1, -23.8, 62.6 , 0 );
setMoveKey( spep_1 -3 + 149, 1, -62.3, 51.1 , 0 );
setMoveKey( spep_1 -3 + 150, 1, -66, 128.2 , 0 );
setMoveKey( spep_1 -3 + 152, 1, -45.5, 101.9 , 0 );
setMoveKey( spep_1 -3 + 154, 1, -94.9, 110.9 , 0 );
setMoveKey( spep_1 -3 + 156, 1, -37.1, 160.6 , 0 );
setMoveKey( spep_1 -3 + 158, 1, -75.6, 151.4 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -81.2, 161.4 , 0 );
setMoveKey( spep_1 -3 + 162, 1, -86.8, 171.2 , 0 );
setMoveKey( spep_1 -3 + 164, 1, -92.3, 181 , 0 );
setMoveKey( spep_1 -3 + 166, 1, -97.7, 190.7 , 0 );
setMoveKey( spep_1 -3 + 168, 1, -93.4, 193.3 , 0 );
setMoveKey( spep_1 -3 + 170, 1, -89.1, 196 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -84.7, 198.6 , 0 );
setMoveKey( spep_1 -3 + 174, 1, -80.5, 201.2 , 0 );
setMoveKey( spep_1 -3 + 176, 1, -76.1, 203.8 , 0 );
setMoveKey( spep_1 -3 + 178, 1, -55.5, 203.2 , 0 );
setMoveKey( spep_1 -3 + 180, 1, -34.9, 202.4 , 0 );
setMoveKey( spep_1 -3 + 182, 1, -14.2, 201.7 , 0 );
setMoveKey( spep_1 -3 + 185, 1, 6.5, 201 , 0 );
setMoveKey( spep_1 -3 + 186, 1, -224.2, 268.3 , 0 );
setMoveKey( spep_1 -3 + 188, 1, -185.2, 240.1 , 0 );
setMoveKey( spep_1 -3 + 190, 1, -229.9, 176.6 , 0 );
setMoveKey( spep_1 -3 + 192, 1, -173.6, 109.4 , 0 );
setMoveKey( spep_1 -3 + 194, 1, -21.9, -26.1 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 184.8, -190 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 397.3, -372.7 , 0 );
setMoveKey( spep_1 -3 + 201, 1, 608.3, -554 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 608.3, -554 , 0 );

setScaleKey( spep_1 -3 + 59, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 60, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 77, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 78, 1, 2.04, 2.04 );
setScaleKey( spep_1 -3 + 113, 1, 2.04, 2.04 );
setScaleKey( spep_1 -3 + 114, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 136, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 138, 1, 2.07, 2.07 );
setScaleKey( spep_1 -3 + 140, 1, 2.11, 2.11 );
setScaleKey( spep_1 -3 + 142, 1, 2.15, 2.15 );
setScaleKey( spep_1 -3 + 144, 1, 2.18, 2.18 );
setScaleKey( spep_1 -3 + 146, 1, 2.22, 2.22 );
setScaleKey( spep_1 -3 + 149, 1, 2.26, 2.26 );
setScaleKey( spep_1 -3 + 150, 1, 2.57, 2.57 );
setScaleKey( spep_1 -3 + 152, 1, 2.56, 2.56 );
setScaleKey( spep_1 -3 + 154, 1, 2.55, 2.55 );
setScaleKey( spep_1 -3 + 156, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 158, 1, 2.53, 2.53 );
setScaleKey( spep_1 -3 + 160, 1, 2.52, 2.52 );
setScaleKey( spep_1 -3 + 162, 1, 2.51, 2.51 );
setScaleKey( spep_1 -3 + 164, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 166, 1, 2.49, 2.49 );
setScaleKey( spep_1 -3 + 168, 1, 2.48, 2.48 );
setScaleKey( spep_1 -3 + 170, 1, 2.47, 2.47 );
setScaleKey( spep_1 -3 + 172, 1, 2.46, 2.46 );
setScaleKey( spep_1 -3 + 174, 1, 2.45, 2.45 );
setScaleKey( spep_1 -3 + 176, 1, 2.44, 2.44 );
setScaleKey( spep_1 -3 + 178, 1, 2.43, 2.43 );
setScaleKey( spep_1 -3 + 180, 1, 2.42, 2.42 );
setScaleKey( spep_1 -3 + 182, 1, 2.41, 2.41 );
setScaleKey( spep_1 -3 + 185, 1, 2.4, 2.4 );
setScaleKey( spep_1 -3 + 186, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 188, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 190, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 192, 1, 1.71, 1.71 );
setScaleKey( spep_1 -3 + 194, 1, 2.23, 2.23 );
setScaleKey( spep_1 -3 + 196, 1, 2.9, 2.9 );
setScaleKey( spep_1 -3 + 198, 1, 3.21, 3.21 );
setScaleKey( spep_1 -3 + 201, 1, 3.51, 3.51 );
setScaleKey( spep_1 -3 + 202, 1, 3.51, 3.51 );

setRotateKey( spep_1 -3 + 78, 1, 0 );
setRotateKey( spep_1 -3 + 80, 1, 0.7 );
setRotateKey( spep_1 -3 + 82, 1, 1.3 );
setRotateKey( spep_1 -3 + 84, 1, 2 );
setRotateKey( spep_1 -3 + 86, 1, 2.7 );
setRotateKey( spep_1 -3 + 88, 1, 3.4 );
setRotateKey( spep_1 -3 + 90, 1, 4 );
setRotateKey( spep_1 -3 + 92, 1, 4.7 );
setRotateKey( spep_1 -3 + 106, 1, 4.7 );
setRotateKey( spep_1 -3 + 108, 1, 0 );
setRotateKey( spep_1 -3 + 113, 1, 0 );
setRotateKey( spep_1 -3 + 114, 1, -37 );
setRotateKey( spep_1 -3 + 116, 1, -36.7 );
setRotateKey( spep_1 -3 + 118, 1, -36.5 );
setRotateKey( spep_1 -3 + 120, 1, -36.3 );
setRotateKey( spep_1 -3 + 122, 1, -36.1 );
setRotateKey( spep_1 -3 + 124, 1, -35.9 );
setRotateKey( spep_1 -3 + 126, 1, -35.7 );
setRotateKey( spep_1 -3 + 128, 1, -35.5 );
setRotateKey( spep_1 -3 + 130, 1, -37 );
setRotateKey( spep_1 -3 + 132, 1, -38.2 );
setRotateKey( spep_1 -3 + 134, 1, -39.4 );
setRotateKey( spep_1 -3 + 136, 1, -40.6 );
setRotateKey( spep_1 -3 + 138, 1, -41.8 );
setRotateKey( spep_1 -3 + 140, 1, -43.1 );
setRotateKey( spep_1 -3 + 142, 1, -44.3 );
setRotateKey( spep_1 -3 + 144, 1, -45.5 );
setRotateKey( spep_1 -3 + 146, 1, -46.7 );
setRotateKey( spep_1 -3 + 149, 1, -47.9 );
setRotateKey( spep_1 -3 + 150, 1, -28 );
setRotateKey( spep_1 -3 + 152, 1, -28.5 );
setRotateKey( spep_1 -3 + 154, 1, -29 );
setRotateKey( spep_1 -3 + 156, 1, -29.5 );
setRotateKey( spep_1 -3 + 158, 1, -30 );
setRotateKey( spep_1 -3 + 160, 1, -30.5 );
setRotateKey( spep_1 -3 + 162, 1, -31 );
setRotateKey( spep_1 -3 + 164, 1, -31.5 );
setRotateKey( spep_1 -3 + 166, 1, -32 );
setRotateKey( spep_1 -3 + 168, 1, -32.6 );
setRotateKey( spep_1 -3 + 170, 1, -33.1 );
setRotateKey( spep_1 -3 + 172, 1, -33.7 );
setRotateKey( spep_1 -3 + 174, 1, -34.2 );
setRotateKey( spep_1 -3 + 176, 1, -34.8 );
setRotateKey( spep_1 -3 + 178, 1, -35.3 );
setRotateKey( spep_1 -3 + 180, 1, -35.9 );
setRotateKey( spep_1 -3 + 182, 1, -36.4 );
setRotateKey( spep_1 -3 + 185, 1, -37 );
setRotateKey( spep_1 -3 + 186, 1, -77 );
setRotateKey( spep_1 -3 + 188, 1, -72.8 );
setRotateKey( spep_1 -3 + 190, 1, -60.2 );
setRotateKey( spep_1 -3 + 192, 1, -39.2 );
setRotateKey( spep_1 -3 + 194, 1, -9.8 );
setRotateKey( spep_1 -3 + 196, 1, 28 );
setRotateKey( spep_1 -3 + 198, 1, 27.9 );
setRotateKey( spep_1 -3 + 201, 1, 27.9 );
setRotateKey( spep_1 -3 + 202, 1, 27.9 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 208, 1, 1 );
setDisp( spep_1 -3 + 225, 1, 0 );
changeAnime( spep_1 -3 + 208, 1, 105 );

setMoveKey( spep_1 -3 + 208, 1, 0, -30.2 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 0, -51.3 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 0, -65.7 , 0 );
setMoveKey( spep_1 -3 + 214, 1, -0.1, -73.5 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 0, -75.7 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 0, -73.2 , 0 );
setMoveKey( spep_1 -3 + 220, 1, -0.1, -67.6 , 0 );
setMoveKey( spep_1 -3 + 222, 1, -0.1, -60 , 0 );
setMoveKey( spep_1 -3 + 224, 1, -0.1, -51.2 , 0 );
setMoveKey( spep_1 -3 + 225, 1, -0.1, -51.2 , 0 );

setScaleKey( spep_1 -3 + 208, 1, 9.81, 9.81 );
setScaleKey( spep_1 -3 + 210, 1, 6.78, 6.78 );
setScaleKey( spep_1 -3 + 212, 1, 4.58, 4.58 );
setScaleKey( spep_1 -3 + 214, 1, 3.07, 3.07 );
setScaleKey( spep_1 -3 + 216, 1, 2.11, 2.11 );
setScaleKey( spep_1 -3 + 218, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 220, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 222, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 224, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 225, 1, 1.13, 1.13 );

setRotateKey( spep_1 -3 + 208, 1, 0 );
setRotateKey( spep_1 -3 + 225, 1, 0 );

-- ** 音 ** --
--腹パン
SE006 = playSeVer2( spep_1 + 66, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 72, 1187, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 72, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 72, SE008, 73 );

--パンチ
SE009 = playSeVer2( spep_1 + 106, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 106, SE009, 85 );
SE010 = playSeVer2( spep_1 + 106, 1110, "", 0, 0, 0, -1);

--パンチ２
SE011 = playSeVer2( spep_1 + 126, 1010, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 126, 1110, "", 0, 0, 0, -1);

--背後から蹴り
SE013 = playSeVer2( spep_1 + 136, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 144, 1001, "", spep_1 + 206, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 144, SE014, 68 );
SE015 = playSeVer2( spep_1 + 144, 1187, "", spep_1 + 206, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 144, SE015, 66 );
SE016 = playSeVer2( spep_1 + 144, 1153, "", spep_1 + 206, 0, 20, -1);

--回し蹴り
SE017 = playSeVer2( spep_1 + 168, 1189, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 178, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 178, SE018, 85 );
SE019 = playSeVer2( spep_1 + 180, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 180, SE019, 106 );
SE020 = playSeVer2( spep_1 + 180, 1359, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 184, 1110, "", 0, 0, 0, -1);

--敵吹っ飛ぶ
SE022 = playSeVer2( spep_1 + 196, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 196, SE022, 86 );

--オーラ
SE023 = playSeVer2( spep_1 + 216, 1181, "",spep_1 + 294, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 216, SE023, 143 );

--首ならす
SE024 = playSeVer2( spep_1 + 218, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 218, SE024, 202 );
setPitch( spep_1 + 218, SE024, 800 );
setTimeStretch( SE024, 1.53, 30, 4 );
SE025 = playSeVer2( spep_1 + 218, 1330, "",spep_1 + 232, 0, 2, -1);
setSeVolumeByWorkId( spep_1 + 218, SE025, 83 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 222 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 222;


------------------------------------------------------
-- ベジータ首振り、突っ込む、アッパーで敵吹き飛ばし、ラッシュで地面に激突(316F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_2 + 0, SP_04, 316, 0x100, -1, 0, 0, 0 );  --ベジータ首振り、突っ込む、アッパーで敵吹き飛ばし、ラッシュで地面に激突    ef_003
setEffMoveKey( spep_2 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 316, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 316, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_f, 0 );
setEffRotateKey( spep_2 + 316, attack_f, 0 );
setEffAlphaKey( spep_2 + 0, attack_f, 255 );
setEffAlphaKey( spep_2 + 316 -1, attack_f, 255 );
setEffAlphaKey( spep_2 + 316, attack_f, 0 );

attack_b = entryEffectLife( spep_2 + 0, SP_05, 316, 0x80, -1, 0, 0, 0 );  --ベジータ首振り、突っ込む、アッパーで敵吹き飛ばし、ラッシュで地面に激突 ef_003_back
setEffMoveKey( spep_2 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 316, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 316, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_b, 0 );
setEffRotateKey( spep_2 + 316, attack_b, 0 );
setEffAlphaKey( spep_2 + 0, attack_b, 255 );
setEffAlphaKey( spep_2 + 316 -1, attack_b, 255 );
setEffAlphaKey( spep_2 + 316, attack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 114, 1, 1 );
setDisp( spep_2 -3 + 194, 1, 0 );
changeAnime( spep_2 -3 + 114, 1, 105 );

setMoveKey( spep_2 -3 + 114, 1, 11.7, -279.7 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 11.7, -215.7 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -20.3, -146.7 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 53.7, -54.7 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 51.7, -138.7 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -28.3, -40.7 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 43.7, 85.9 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -57.4, 85.5 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 52.9, 10.9 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -11.7, 107 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 57.8, 141.6 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -69.3, 132 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 8.6, 57.5 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 7.6, 55.5 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 6.4, 51.4 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 5, 45.1 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 3.6, 36.4 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -1.1, 3.6 , 0 );
setMoveKey( spep_2 -3 + 150, 1, -5.3, -25.8 , 0 );
setMoveKey( spep_2 -3 + 152, 1, -8.8, -51.7 , 0 );
setMoveKey( spep_2 -3 + 154, 1, -11.7, -74.1 , 0 );
setMoveKey( spep_2 -3 + 156, 1, -14, -93.2 , 0 );
setMoveKey( spep_2 -3 + 158, 1, -15.7, -108.7 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -16.9, -120.8 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -17.5, -129.4 , 0 );
setMoveKey( spep_2 -3 + 164, 1, -17.4, -134.6 , 0 );
setMoveKey( spep_2 -3 + 166, 1, -17.4, -157.4 , 0 );
setMoveKey( spep_2 -3 + 168, 1, -17.5, -180.2 , 0 );
setMoveKey( spep_2 -3 + 170, 1, -17.6, -203 , 0 );
setMoveKey( spep_2 -3 + 172, 1, -17.6, -203 , 0 );
setMoveKey( spep_2 -3 + 174, 1, -17.7, -203 , 0 );
setMoveKey( spep_2 -3 + 184, 1, -17.7, -203 , 0 );
setMoveKey( spep_2 -3 + 186, 1, -22.6, -241.9 , 0 );
setMoveKey( spep_2 -3 + 188, 1, -27.8, -197.1 , 0 );
setMoveKey( spep_2 -3 + 190, 1, -33.2, -46.6 , 0 );
setMoveKey( spep_2 -3 + 192, 1, -39.1, 232.1 , 0 );
setMoveKey( spep_2 -3 + 194, 1, -39.1, 232.1 , 0 );

setScaleKey( spep_2 -3 + 114, 1, 3.4, 3.4 );
setScaleKey( spep_2 -3 + 126, 1, 3.4, 3.4 );
setScaleKey( spep_2 -3 + 128, 1, 2.88, 2.88 );
setScaleKey( spep_2 -3 + 130, 1, 2.47, 2.47 );
setScaleKey( spep_2 -3 + 132, 1, 2.1, 2.1 );
setScaleKey( spep_2 -3 + 134, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 136, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 138, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 140, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 142, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 144, 1, 0.82, 0.82 );
setScaleKey( spep_2 -3 + 146, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 148, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 150, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 152, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 154, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 156, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 158, 1, 1.29, 1.29 );
setScaleKey( spep_2 -3 + 160, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 162, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 164, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 166, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 168, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 170, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 172, 1, 2.55, 2.55 );
setScaleKey( spep_2 -3 + 174, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 176, 1, 2.62, 2.62 );
setScaleKey( spep_2 -3 + 178, 1, 2.66, 2.66 );
setScaleKey( spep_2 -3 + 180, 1, 2.69, 2.69 );
setScaleKey( spep_2 -3 + 182, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 184, 1, 2.77, 2.77 );
setScaleKey( spep_2 -3 + 186, 1, 3.34, 3.34 );
setScaleKey( spep_2 -3 + 188, 1, 4.51, 4.51 );
setScaleKey( spep_2 -3 + 190, 1, 6.42, 6.42 );
setScaleKey( spep_2 -3 + 192, 1, 9.23, 9.23 );
setScaleKey( spep_2 -3 + 194, 1, 9.23, 9.23 );

setRotateKey( spep_2 -3 + 114, 1, 0 );
setRotateKey( spep_2 -3 + 194, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 226, 1, 1 );
setDisp( spep_2 -3 + 319, 1, 0 );
changeAnime( spep_2 -3 + 226, 1, 108 );
changeAnime( spep_2 -3 + 244, 1, 106 );
changeAnime( spep_2 -3 + 260, 1, 108 );
changeAnime( spep_2 -3 + 268, 1, 106 );
changeAnime( spep_2 -3 + 276, 1, 108 );
changeAnime( spep_2 -3 + 284, 1, 106 );
changeAnime( spep_2 -3 + 292, 1, 108 );
changeAnime( spep_2 -3 + 300, 1, 106 );
changeAnime( spep_2 -3 + 308, 1, 108 );
changeAnime( spep_2 -3 + 316, 1, 106 );

setMoveKey( spep_2 -3 + 226, 1, 24.5, 156.9 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 23.2, 150.2 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 22, 143.4 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 20.7, 136.6 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 19.5, 129.8 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 18.2, 123 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 17, 116.2 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 15.7, 109.4 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 54.5, 90.6 , 0 );
setMoveKey( spep_2 -3 + 243, 1, 54.5, 90.6 , 0 );--
setMoveKey( spep_2 -3 + 244, 1, -21.7, 140 , 0 );
setMoveKey( spep_2 -3 + 246, 1, -53.8, 74.4 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 2.3, 136.9 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 10.3, 87.3 , 0 );
setMoveKey( spep_2 -3 + 252, 1, -45.8, 121.9 , 0 );
setMoveKey( spep_2 -3 + 254, 1, -45.8, 44.2 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 6.3, 54.7 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 26.3, 45.1 , 0 );
setMoveKey( spep_2 -3 + 259, 1, 26.3, 45.1 , 0 );--
setMoveKey( spep_2 -3 + 260, 1, 16.5, 84.7 , 0 );
setMoveKey( spep_2 -3 + 262, 1, -15.6, 19.1 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 40.5, 81.7 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 48.5, 32.1 , 0 );
setMoveKey( spep_2 -3 + 267, 1, 48.5, 32.1 , 0 );--
setMoveKey( spep_2 -3 + 268, 1, -45.8, 45.5 , 0 );
setMoveKey( spep_2 -3 + 270, 1, -45.8, -32.2 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 6.3, -21.7 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 26.3, -31.3 , 0 );
setMoveKey( spep_2 -3 + 275, 1, 26.3, -31.3 , 0 );--
setMoveKey( spep_2 -3 + 276, 1, 16.5, 8.3 , 0 );
setMoveKey( spep_2 -3 + 278, 1, -15.6, -57.3 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 40.5, 5.3 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 48.5, -44.3 , 0 );
setMoveKey( spep_2 -3 + 283, 1, 48.5, -44.3 , 0 );--
setMoveKey( spep_2 -3 + 284, 1, -45.8, -30.9 , 0 );
setMoveKey( spep_2 -3 + 286, 1, -45.8, -108.5 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 6.3, -98 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 26.3, -107.7 , 0 );
setMoveKey( spep_2 -3 + 291, 1, 26.3, -107.7 , 0 );--
setMoveKey( spep_2 -3 + 292, 1, 16.5, -68 , 0 );
setMoveKey( spep_2 -3 + 294, 1, -15.6, -133.6 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 40.5, -71.1 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 48.5, -120.7 , 0 );
setMoveKey( spep_2 -3 + 299, 1, 48.5, -120.7 , 0 );--
setMoveKey( spep_2 -3 + 300, 1, -45.8, -107.3 , 0 );
setMoveKey( spep_2 -3 + 302, 1, -45.8, -184.9 , 0 );
setMoveKey( spep_2 -3 + 304, 1, 6.3, -174.4 , 0 );
setMoveKey( spep_2 -3 + 306, 1, -19.4, -225.8 , 0 );
setMoveKey( spep_2 -3 + 307, 1, -19.4, -225.8 , 0 );--
setMoveKey( spep_2 -3 + 308, 1, -11, -340.1 , 0 );
setMoveKey( spep_2 -3 + 310, 1, 47.4, -347.4 , 0 );
setMoveKey( spep_2 -3 + 312, 1, 57.6, -466.9 , 0 );
setMoveKey( spep_2 -3 + 314, 1, 3.8, -502.2 , 0 );
setMoveKey( spep_2 -3 + 315, 1, 3.8, -502.2 , 0 );--
setMoveKey( spep_2 -3 + 316, 1, -32.1, -670.8 , 0 );
setMoveKey( spep_2 -3 + 318, 1, 22.3, -730.2 , 0 );
setMoveKey( spep_2 -3 + 319, 1, 22.3, -730.2 , 0 );

setScaleKey( spep_2 -3 + 226, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 228, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 230, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 232, 1, 2.21, 2.21 );
setScaleKey( spep_2 -3 + 234, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 236, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 238, 1, 2.26, 2.26 );
setScaleKey( spep_2 -3 + 240, 1, 2.28, 2.28 );
setScaleKey( spep_2 -3 + 242, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 243, 1, 2.3, 2.3 );--
setScaleKey( spep_2 -3 + 244, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 259, 1, 2.08, 2.08 );--
setScaleKey( spep_2 -3 + 260, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 267, 1, 2.3, 2.3 );--
setScaleKey( spep_2 -3 + 268, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 275, 1, 2.08, 2.08 );--
setScaleKey( spep_2 -3 + 276, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 283, 1, 2.3, 2.3 );--
setScaleKey( spep_2 -3 + 284, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 291, 1, 2.08, 2.08 );--
setScaleKey( spep_2 -3 + 292, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 299, 1, 2.3, 2.3 );--
setScaleKey( spep_2 -3 + 300, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 307, 1, 2.08, 2.08 );--
setScaleKey( spep_2 -3 + 308, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 315, 1, 2.3, 2.3 );--
setScaleKey( spep_2 -3 + 316, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 319, 1, 2.08, 2.08 );--

setRotateKey( spep_2 -3 + 226, 1, 69 );
setRotateKey( spep_2 -3 + 243, 1, 69 );--
setRotateKey( spep_2 -3 + 244, 1, 29.7 );
setRotateKey( spep_2 -3 + 259, 1, 29.7 );--
setRotateKey( spep_2 -3 + 260, 1, 69 );
setRotateKey( spep_2 -3 + 267, 1, 69 );--
setRotateKey( spep_2 -3 + 268, 1, 29.7 );
setRotateKey( spep_2 -3 + 275, 1, 29.7 );--
setRotateKey( spep_2 -3 + 276, 1, 69 );
setRotateKey( spep_2 -3 + 283, 1, 69 );--
setRotateKey( spep_2 -3 + 284, 1, 29.7 );
setRotateKey( spep_2 -3 + 291, 1, 29.7 );
setRotateKey( spep_2 -3 + 292, 1, 69 );
setRotateKey( spep_2 -3 + 299, 1, 69 );--
setRotateKey( spep_2 -3 + 300, 1, 29.7 );
setRotateKey( spep_2 -3 + 307, 1, 29.7 );--
setRotateKey( spep_2 -3 + 308, 1, 69 );
setRotateKey( spep_2 -3 + 315, 1, 69 );--
setRotateKey( spep_2 -3 + 316, 1, 29.7 );
setRotateKey( spep_2 -3 + 319, 1, 29.7 );--

-- ** 音 ** --
--首ならす
SE026 = playSeVer2( spep_2 + 0, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE026, 207 );
setPitch( spep_2 + 0, SE026, 400 );
setTimeStretch( SE026, 1.27, 30, 4 );
SE028 = playSeVer2( spep_2 + 4, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE028, 202 );
setPitch( spep_2 + 4, SE028, 800 );
setTimeStretch( SE028, 1.53, 30, 4 );

--ズームアウト
SE027 = playSeVer2( spep_2 + 0, 1072, "", 0, 0, 0, -1);

--向かってくる
SE029 = playSeVer2( spep_2 + 44, 1182, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 44, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE030, 69 );
setTimeStretch( SE030, 1.11, 30, 4 );
SE031 = playSeVer2( spep_2 + 44, 9, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 182, 1117, "",spep_2 + 240, 0, 8, -1);
SE037 = playSeVer2( spep_2 + 184, 1004, "", 0, 0, 0, -1);
setPitch( spep_2 + 184, SE037, -400 );
setTimeStretch( SE037, 0.73, 30, 4 );

--アッパー
SE032 = playSeVer2( spep_2 + 104, 1110, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 104, 1187, "", 0, 0, 0, -1);

--瞬間移動
SE034 = playSeVer2( spep_2 + 152, 1109, "", 0, 0, 0, -1);

--オーラ
SE035 = playSeVer2( spep_2 + 152, 1181, "",spep_2 + 240, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 152, SE035, 164 );

--連続打撃
SE038 = playSeVer2( spep_2 + 232, 1009, "",spep_2 + 252, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 232, SE038, 79 );
SE039 = playSeVer2( spep_2 + 232, 1110, "",spep_2 + 266, 0, 8, -1);
SE040 = playSeVer2( spep_2 + 242, 1010, "",spep_2 + 266, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 242, SE040, 81 );
SE041 = playSeVer2( spep_2 + 242, 1110, "",spep_2 + 276, 0, 6, -1);
SE042 = playSeVer2( spep_2 + 254, 1009, "",spep_2 + 274, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 254, SE042, 84 );
SE043 = playSeVer2( spep_2 + 254, 1110, "",spep_2 + 288, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 254, SE043, 77 );
setPitch( spep_2 + 254, SE043, -200 );
setTimeStretch( SE043, 0.87, 30, 4 );
SE044 = playSeVer2( spep_2 + 266, 1010, "",spep_2 + 290, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 266, SE044, 85 );
SE045 = playSeVer2( spep_2 + 266, 1110, "",spep_2 + 298, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 266, SE045, 91 );
SE046 = playSeVer2( spep_2 + 276, 1009, "",spep_2 + 294, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 276, SE046, 81 );
SE047 = playSeVer2( spep_2 + 276, 1110, "",spep_2 + 306, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 276, SE047, 92 );
setPitch( spep_2 + 276, SE047, 200 );
setTimeStretch( SE047, 1.13, 30, 4 );
SE048 = playSeVer2( spep_2 + 284, 1010, "",spep_2 + 306, 0, 8, -1);
SE049 = playSeVer2( spep_2 + 284, 1110, "",spep_2 + 316, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 284, SE049, 79 );
SE050 = playSeVer2( spep_2 + 296, 1009, "",spep_2 + 314, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 296, SE050, 77 );
SE051 = playSeVer2( spep_2 + 296, 1110, "",spep_2 + 322, 0, 8, -1);
SE053 = playSeVer2( spep_2 + 306, 1009, "",spep_2 + 324, 0, 4, -1);
SE054 = playSeVer2( spep_2 + 306, 1110, "",spep_2 + 332, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 306, SE054, 83 );

--光走る
SE052 = playSeVer2( spep_2 + 302, 1179, "",spep_2 + 380, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 302, SE052, 117 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 316 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 316;


------------------------------------------------------
-- 地面に落下(56F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
fall = entryEffectLife( spep_3 + 0, SP_06, 56, 0x100, -1, 0, 0, 0 );  --地面に落下   ef_004
setEffMoveKey( spep_3 + 0, fall, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, fall, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fall, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, fall, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fall, 0 );
setEffRotateKey( spep_3 + 56, fall, 0 );
setEffAlphaKey( spep_3 + 0, fall, 255 );
setEffAlphaKey( spep_3 + 56 -1, fall, 255 );
setEffAlphaKey( spep_3 + 56, fall, 0 );

-- ** 音 ** --
--連続打撃
SE055 = playSeVer2( spep_3 + 4, 1009, "",spep_3 + 22, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 4, SE055, 87 );
SE056 = playSeVer2( spep_3 + 4, 1110, "", 0, 0, 0, -1);

--地面激突
SE057 = playSeVer2( spep_3 + 10, 1159, "",spep_3 + 64, 0, 12, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_4 = 0;
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );
 
-- ** 音 ** --
-- playSe( spep_4 + 0, SE_05 );
 
--オーラ
SE059 = playSeVer2( spep_4 + 84, 1181, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 84, SE059, 151 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- ビックバンアタック発射(172F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
bigbang = entryEffectLife( spep_5 + 0, SP_07, 172, 0x100, -1, 0, 0, 0 );  --ビックバンアタック発射    ef_005
setEffMoveKey( spep_5 + 0, bigbang, 0, 0 , 0 );
setEffMoveKey( spep_5 + 172, bigbang, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bigbang, 1.0, 1.0 );
setEffScaleKey( spep_5 + 172, bigbang, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bigbang, 0 );
setEffRotateKey( spep_5 + 172, bigbang, 0 );
setEffAlphaKey( spep_5 + 0, bigbang, 255 );
setEffAlphaKey( spep_5 + 172 -1, bigbang, 255 );
setEffAlphaKey( spep_5 + 172, bigbang, 0 );

spep_x = spep_5 + 0;
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--腕前に出す
SE061 = playSeVer2( spep_5 + 54, 1003, "", 0, 0, 0, -1);

--気弾発射
SE062 = playSeVer2( spep_5 + 80, 1296, "",spep_5 + 180, 0, 30, -1);
SE063 = playSeVer2( spep_5 + 80, 1282, "", 0, 0, 0, 0.6);
setPitch( spep_5 + 80, SE063, -200 );
setTimeStretch( SE063, 0.87, 30, 4 );

--気弾飲み込まれる
SE064 = playSeVer2( spep_5 + 144, 1021, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_5 + 154, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 154, SE065, 54 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 172 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 172;


------------------------------------------------------
-- フィニッシュ(160F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --フィニッシュ ef_006
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 160, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 160, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 160, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 160, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --フィニッシュ  ef_006_back
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 160, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 160, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 160, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 160, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 163, 1, 0 );
changeAnime( spep_6 + 0, 1, 106 );
changeAnime( spep_6 -3 + 6, 1, 108 );
changeAnime( spep_6 -3 + 60, 1, 105 );

setBlendColor( spep_6 -3 + 6, 1, 3, 0.07, 0.23, 0.55, 0.8 );
setBlendColor( spep_6 -3 + 8, 1, 3, 0.0756, 0.2337, 0.5481, 0.8 );
setBlendColor( spep_6 -3 + 10, 1, 3, 0.0812, 0.2374, 0.5462, 0.8 );
setBlendColor( spep_6 -3 + 12, 1, 3, 0.0868, 0.2411, 0.5443, 0.8 );
setBlendColor( spep_6 -3 + 14, 1, 3, 0.0924, 0.2448, 0.5424, 0.8 );
setBlendColor( spep_6 -3 + 16, 1, 3, 0.098, 0.2485, 0.5405, 0.8 );
setBlendColor( spep_6 -3 + 18, 1, 3, 0.1036, 0.2522, 0.5386, 0.8 );
setBlendColor( spep_6 -3 + 20, 1, 3, 0.1092, 0.2559, 0.5367, 0.8 );
setBlendColor( spep_6 -3 + 22, 1, 3, 0.1148, 0.2596, 0.5348, 0.8 );
setBlendColor( spep_6 -3 + 24, 1, 3, 0.1204, 0.2633, 0.5329, 0.8 );
setBlendColor( spep_6 -3 + 26, 1, 3, 0.126, 0.267, 0.531, 0.8 );
setBlendColor( spep_6 -3 + 28, 1, 3, 0.1316, 0.2707, 0.5291, 0.8 );
setBlendColor( spep_6 -3 + 30, 1, 3, 0.1372, 0.2744, 0.5272, 0.8 );
setBlendColor( spep_6 -3 + 32, 1, 3, 0.1428, 0.2781, 0.5253, 0.8 );
setBlendColor( spep_6 -3 + 34, 1, 3, 0.1484, 0.2818, 0.5234, 0.8 );
setBlendColor( spep_6 -3 + 36, 1, 3, 0.154, 0.2855, 0.5215, 0.8 );
setBlendColor( spep_6 -3 + 38, 1, 3, 0.1596, 0.2892, 0.5196, 0.8 );
setBlendColor( spep_6 -3 + 40, 1, 3, 0.1652, 0.2929, 0.5177, 0.8 );
setBlendColor( spep_6 -3 + 42, 1, 3, 0.1708, 0.2966, 0.5158, 0.8 );
setBlendColor( spep_6 -3 + 44, 1, 3, 0.1764, 0.3003, 0.5139, 0.8 );
setBlendColor( spep_6 -3 + 46, 1, 3, 0.182, 0.304, 0.512, 0.8 );
setBlendColor( spep_6 -3 + 48, 1, 3, 0.1876, 0.3077, 0.5101, 0.8 );
setBlendColor( spep_6 -3 + 50, 1, 3, 0.1932, 0.3114, 0.5082, 0.8 );
setBlendColor( spep_6 -3 + 52, 1, 3, 0.1988, 0.3151, 0.5063, 0.8 );
setBlendColor( spep_6 -3 + 54, 1, 3, 0.2044, 0.3188, 0.5044, 0.8 );
setBlendColor( spep_6 -3 + 56, 1, 3, 0.21, 0.3225, 0.5025, 0.8 );
setBlendColor( spep_6 -3 + 58, 1, 3, 0.2156, 0.3262, 0.5006, 0.8 );
setBlendColor( spep_6 -3 + 59, 1, 3, 0.22, 0.33, 0.5, 0.8 );--
setBlendColor( spep_6 -3 + 60, 1, 3, 0.01, 0.16, 0.39, 0.8 );
setBlendColor( spep_6 -3 + 62, 1, 3, 0.01, 0.16, 0.39, 0.7942 );
setBlendColor( spep_6 -3 + 64, 1, 3, 0.01, 0.16, 0.39, 0.7884 );
setBlendColor( spep_6 -3 + 66, 1, 3, 0.01, 0.16, 0.39, 0.7826 );
setBlendColor( spep_6 -3 + 68, 1, 3, 0.01, 0.16, 0.39, 0.7768 );
setBlendColor( spep_6 -3 + 70, 1, 3, 0.01, 0.16, 0.39, 0.771 );
setBlendColor( spep_6 -3 + 72, 1, 3, 0.01, 0.16, 0.39, 0.7652 );
setBlendColor( spep_6 -3 + 74, 1, 3, 0.01, 0.16, 0.39, 0.7594 );
setBlendColor( spep_6 -3 + 76, 1, 3, 0.01, 0.16, 0.39, 0.7536 );
setBlendColor( spep_6 -3 + 78, 1, 3, 0.01, 0.16, 0.39, 0.7478 );
setBlendColor( spep_6 -3 + 80, 1, 3, 0.01, 0.16, 0.39, 0.742 );
setBlendColor( spep_6 -3 + 82, 1, 3, 0.01, 0.16, 0.39, 0.7362 );
setBlendColor( spep_6 -3 + 84, 1, 3, 0.01, 0.16, 0.39, 0.7304 );
setBlendColor( spep_6 -3 + 86, 1, 3, 0.01, 0.16, 0.39, 0.7246 );
setBlendColor( spep_6 -3 + 88, 1, 3, 0.01, 0.16, 0.39, 0.7188 );
setBlendColor( spep_6 -3 + 90, 1, 3, 0.01, 0.16, 0.39, 0.713 );
setBlendColor( spep_6 -3 + 92, 1, 3, 0.01, 0.16, 0.39, 0.7072 );
setBlendColor( spep_6 -3 + 94, 1, 3, 0.01, 0.16, 0.39, 0.7014 );
setBlendColor( spep_6 -3 + 96, 1, 3, 0.01, 0.16, 0.39, 0.6956 );
setBlendColor( spep_6 -3 + 98, 1, 3, 0.01, 0.16, 0.39, 0.6898 );
setBlendColor( spep_6 -3 + 100, 1, 3, 0.01, 0.16, 0.39, 0.684 );
setBlendColor( spep_6 -3 + 102, 1, 3, 0.01, 0.16, 0.39, 0.6782 );
setBlendColor( spep_6 -3 + 104, 1, 3, 0.01, 0.16, 0.39, 0.6724 );
setBlendColor( spep_6 -3 + 106, 1, 3, 0.01, 0.16, 0.39, 0.6666 );
setBlendColor( spep_6 -3 + 108, 1, 3, 0.01, 0.16, 0.39, 0.6608 );
setBlendColor( spep_6 -3 + 110, 1, 3, 0.01, 0.16, 0.39, 0.655 );
setBlendColor( spep_6 -3 + 112, 1, 3, 0.01, 0.16, 0.39, 0.6492 );
setBlendColor( spep_6 -3 + 114, 1, 3, 0.01, 0.16, 0.39, 0.6434 );
setBlendColor( spep_6 -3 + 116, 1, 3, 0.01, 0.16, 0.39, 0.6376 );
setBlendColor( spep_6 -3 + 118, 1, 3, 0.01, 0.16, 0.39, 0.6318 );
setBlendColor( spep_6 -3 + 120, 1, 3, 0.01, 0.16, 0.39, 0.626 );
setBlendColor( spep_6 -3 + 122, 1, 3, 0.01, 0.16, 0.39, 0.6202 );
setBlendColor( spep_6 -3 + 124, 1, 3, 0.01, 0.16, 0.39, 0.6144 );
setBlendColor( spep_6 -3 + 126, 1, 3, 0.01, 0.16, 0.39, 0.6086 );
setBlendColor( spep_6 -3 + 128, 1, 3, 0.01, 0.16, 0.39, 0.6028 );
setBlendColor( spep_6 -3 + 161, 1, 3, 0.01, 0.16, 0.39, 0.6028 );
setBlendColor( spep_6 -3 + 162, 1, 3, 0.01, 0.16, 0.39, 0.6028 );
setBlendColor( spep_6 -3 + 163, 1, 3, 0.01, 0.16, 0.39, 0 );

setMoveKey( spep_6 + 0, 1, 159.6, -325.9 , 0 );
setMoveKey( spep_6 + 1, 1, 150.3, -321.6 , 0 );
setMoveKey( spep_6 -3 + 5, 1, 133.5, -324.9 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 142.6, -330.7 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 136.4, -334.3 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 123.6, -335.9 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 116.8, -334.6 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 104.3, -335 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 98.6, -340.5 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 85.8, -341.9 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 80.9, -338.1 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 66.6, -343.9 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 57.1, -343 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 51.2, -346.7 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 38.4, -348.3 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 31.7, -347.1 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 32.8, -341.6 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 41.2, -341.6 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 42.1, -337.5 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 51.8, -327.9 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 51.2, -328.8 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 56, -322.3 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 65.1, -321.4 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 66.2, -318 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 74.8, -311.5 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 76.3, -306.8 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 86.7, -308.9 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 87.9, -305.9 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 98.1, -302.9 , 0 );
setMoveKey( spep_6 -3 + 59, 1, 105.7, -293.2 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 12, -79.1 , 0 );
setMoveKey( spep_6 -3 + 62, 1, -10.5, -56.4 , 0 );
setMoveKey( spep_6 -3 + 64, 1, 31.6, -97.4 , 0 );
setMoveKey( spep_6 -3 + 66, 1, 34.5, -42.8 , 0 );
setMoveKey( spep_6 -3 + 68, 1, -15.5, -105 , 0 );
setMoveKey( spep_6 -3 + 70, 1, 10.1, -74.1 , 0 );
setMoveKey( spep_6 -3 + 72, 1, 17.2, -81.4 , 0 );
setMoveKey( spep_6 -3 + 74, 1, 8, -82.6 , 0 );
setMoveKey( spep_6 -3 + 76, 1, 19.8, -72.3 , 0 );
setMoveKey( spep_6 -3 + 78, 1, 10.2, -74.2 , 0 );
setMoveKey( spep_6 -3 + 80, 1, 17.2, -81.3 , 0 );
setMoveKey( spep_6 -3 + 82, 1, 8.1, -82.6 , 0 );
setMoveKey( spep_6 -3 + 84, 1, 19.7, -72.3 , 0 );
setMoveKey( spep_6 -3 + 86, 1, 10.3, -74.2 , 0 );
setMoveKey( spep_6 -3 + 88, 1, 17.1, -81.3 , 0 );
setMoveKey( spep_6 -3 + 90, 1, 8.2, -82.4 , 0 );
setMoveKey( spep_6 -3 + 92, 1, 19.6, -72.4 , 0 );
setMoveKey( spep_6 -3 + 94, 1, 16.6, -75 , 0 );
setMoveKey( spep_6 -3 + 96, 1, 12.1, -79.1 , 0 );
setMoveKey( spep_6 -3 + 98, 1, 12.2, -76.9 , 0 );
setMoveKey( spep_6 -3 + 100, 1, 15.3, -79 , 0 );
setMoveKey( spep_6 -3 + 102, 1, 12.3, -79.2 , 0 );
setMoveKey( spep_6 -3 + 104, 1, 14.7, -76.8 , 0 );
setMoveKey( spep_6 -3 + 106, 1, 12, -75.9 , 0 );
setMoveKey( spep_6 -3 + 108, 1, 15.4, -79.7 , 0 );
setMoveKey( spep_6 -3 + 110, 1, 12.4, -79.7 , 0 );
setMoveKey( spep_6 -3 + 112, 1, 15.2, -79 , 0 );
setMoveKey( spep_6 -3 + 114, 1, 12.4, -79.1 , 0 );
setMoveKey( spep_6 -3 + 116, 1, 14.7, -76.9 , 0 );
setMoveKey( spep_6 -3 + 118, 1, 12, -76 , 0 );
setMoveKey( spep_6 -3 + 120, 1, 15.4, -79.6 , 0 );
setMoveKey( spep_6 -3 + 122, 1, 12.4, -79.6 , 0 );
setMoveKey( spep_6 -3 + 124, 1, 16.4, -75.2 , 0 );
setMoveKey( spep_6 -3 + 126, 1, 12.3, -79 , 0 );
setMoveKey( spep_6 -3 + 128, 1, 12.3, -77 , 0 );
setMoveKey( spep_6 -3 + 130, 1, 14, -78 , 0 );
setMoveKey( spep_6 -3 + 132, 1, 14, -77.9 , 0 );
setMoveKey( spep_6 -3 + 134, 1, 14, -78 , 0 );
setMoveKey( spep_6 -3 + 136, 1, 14, -78 , 0 );
setMoveKey( spep_6 -3 + 138, 1, 14, -77.9 , 0 );
setMoveKey( spep_6 -3 + 140, 1, 14, -78 , 0 );
setMoveKey( spep_6 -3 + 142, 1, 14, -78 , 0 );
setMoveKey( spep_6 -3 + 144, 1, 14, -77.9 , 0 );
setMoveKey( spep_6 -3 + 148, 1, 14, -77.9 , 0 );
setMoveKey( spep_6 -3 + 150, 1, 14, -78 , 0 );
setMoveKey( spep_6 -3 + 152, 1, 14, -77.9 , 0 );
setMoveKey( spep_6 -3 + 154, 1, 14, -77.9 , 0 );
setMoveKey( spep_6 -3 + 156, 1, 14, -78 , 0 );
setMoveKey( spep_6 -3 + 158, 1, 14, -77.9 , 0 );
setMoveKey( spep_6 -3 + 160, 1, 14, -77.9 , 0 );
setMoveKey( spep_6 -3 + 162, 1, 14, -78 , 0 );
setMoveKey( spep_6 -3 + 163, 1, 14, -78 , 0 );

setScaleKey( spep_6 + 0, 1, 0.67, 0.67 );
setScaleKey( spep_6 -3 + 5, 1, 0.67, 0.67 );
setScaleKey( spep_6 -3 + 6, 1, 0.87, 0.87 );
setScaleKey( spep_6 -3 + 8, 1, 0.87, 0.87 );
setScaleKey( spep_6 -3 + 10, 1, 0.86, 0.86 );
setScaleKey( spep_6 -3 + 26, 1, 0.86, 0.86 );
setScaleKey( spep_6 -3 + 28, 1, 0.85, 0.85 );
setScaleKey( spep_6 -3 + 30, 1, 0.85, 0.85 );
setScaleKey( spep_6 -3 + 32, 1, 0.87, 0.87 );
setScaleKey( spep_6 -3 + 34, 1, 0.89, 0.89 );
setScaleKey( spep_6 -3 + 36, 1, 0.91, 0.91 );
setScaleKey( spep_6 -3 + 38, 1, 0.93, 0.93 );
setScaleKey( spep_6 -3 + 40, 1, 0.95, 0.95 );
setScaleKey( spep_6 -3 + 42, 1, 0.96, 0.96 );
setScaleKey( spep_6 -3 + 44, 1, 0.98, 0.98 );
setScaleKey( spep_6 -3 + 46, 1, 1, 1 );
setScaleKey( spep_6 -3 + 48, 1, 1.02, 1.02 );
setScaleKey( spep_6 -3 + 50, 1, 1.03, 1.03 );
setScaleKey( spep_6 -3 + 52, 1, 1.05, 1.05 );
setScaleKey( spep_6 -3 + 54, 1, 1.07, 1.07 );
setScaleKey( spep_6 -3 + 56, 1, 1.09, 1.09 );
setScaleKey( spep_6 -3 + 59, 1, 1.1, 1.1 );
setScaleKey( spep_6 -3 + 60, 1, 1.55, 1.55 );
setScaleKey( spep_6 -3 + 62, 1, 1.51, 1.51 );
setScaleKey( spep_6 -3 + 64, 1, 1.48, 1.48 );
setScaleKey( spep_6 -3 + 66, 1, 1.44, 1.44 );
setScaleKey( spep_6 -3 + 68, 1, 1.41, 1.41 );
setScaleKey( spep_6 -3 + 70, 1, 1.38, 1.38 );
setScaleKey( spep_6 -3 + 72, 1, 1.34, 1.34 );
setScaleKey( spep_6 -3 + 74, 1, 1.31, 1.31 );
setScaleKey( spep_6 -3 + 76, 1, 1.29, 1.29 );
setScaleKey( spep_6 -3 + 78, 1, 1.26, 1.26 );
setScaleKey( spep_6 -3 + 80, 1, 1.23, 1.23 );
setScaleKey( spep_6 -3 + 82, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 84, 1, 1.18, 1.18 );
setScaleKey( spep_6 -3 + 86, 1, 1.15, 1.15 );
setScaleKey( spep_6 -3 + 88, 1, 1.13, 1.13 );
setScaleKey( spep_6 -3 + 90, 1, 1.11, 1.11 );
setScaleKey( spep_6 -3 + 92, 1, 1.09, 1.09 );
setScaleKey( spep_6 -3 + 94, 1, 1.07, 1.07 );
setScaleKey( spep_6 -3 + 96, 1, 1.05, 1.05 );
setScaleKey( spep_6 -3 + 98, 1, 1.03, 1.03 );
setScaleKey( spep_6 -3 + 100, 1, 1.01, 1.01 );
setScaleKey( spep_6 -3 + 102, 1, 1, 1 );
setScaleKey( spep_6 -3 + 104, 1, 0.98, 0.98 );
setScaleKey( spep_6 -3 + 106, 1, 0.97, 0.97 );
setScaleKey( spep_6 -3 + 108, 1, 0.96, 0.96 );
setScaleKey( spep_6 -3 + 110, 1, 0.94, 0.94 );
setScaleKey( spep_6 -3 + 112, 1, 0.93, 0.93 );
setScaleKey( spep_6 -3 + 114, 1, 0.92, 0.92 );
setScaleKey( spep_6 -3 + 116, 1, 0.91, 0.91 );
setScaleKey( spep_6 -3 + 118, 1, 0.9, 0.9 );
setScaleKey( spep_6 -3 + 120, 1, 0.89, 0.89 );
setScaleKey( spep_6 -3 + 122, 1, 0.88, 0.88 );
setScaleKey( spep_6 -3 + 124, 1, 0.88, 0.88 );
setScaleKey( spep_6 -3 + 126, 1, 0.87, 0.87 );
setScaleKey( spep_6 -3 + 128, 1, 0.87, 0.87 );
setScaleKey( spep_6 -3 + 130, 1, 0.86, 0.86 );
setScaleKey( spep_6 -3 + 132, 1, 0.86, 0.86 );
setScaleKey( spep_6 -3 + 134, 1, 0.85, 0.85 );
setScaleKey( spep_6 -3 + 138, 1, 0.85, 0.85 );
setScaleKey( spep_6 -3 + 140, 1, 0.84, 0.84 );
setScaleKey( spep_6 -3 + 144, 1, 0.84, 0.84 );
setScaleKey( spep_6 -3 + 146, 1, 0.83, 0.83 );
setScaleKey( spep_6 -3 + 148, 1, 0.83, 0.83 );
setScaleKey( spep_6 -3 + 150, 1, 0.82, 0.82 );
setScaleKey( spep_6 -3 + 154, 1, 0.82, 0.82 );
setScaleKey( spep_6 -3 + 156, 1, 0.81, 0.81 );
setScaleKey( spep_6 -3 + 158, 1, 0.81, 0.81 );
setScaleKey( spep_6 -3 + 160, 1, 0.8, 0.8 );
setScaleKey( spep_6 -3 + 163, 1, 0.8, 0.8 );

setRotateKey( spep_6 + 0, 1, 26.7 );
setRotateKey( spep_6 -3 + 5, 1, 26.7 );
setRotateKey( spep_6 -3 + 6, 1, 47.4 );
setRotateKey( spep_6 -3 + 8, 1, 48 );
setRotateKey( spep_6 -3 + 10, 1, 48.5 );
setRotateKey( spep_6 -3 + 12, 1, 49 );
setRotateKey( spep_6 -3 + 14, 1, 49.6 );
setRotateKey( spep_6 -3 + 16, 1, 50.1 );
setRotateKey( spep_6 -3 + 18, 1, 50.6 );
setRotateKey( spep_6 -3 + 20, 1, 51.1 );
setRotateKey( spep_6 -3 + 22, 1, 51.7 );
setRotateKey( spep_6 -3 + 24, 1, 52.2 );
setRotateKey( spep_6 -3 + 26, 1, 52.7 );
setRotateKey( spep_6 -3 + 28, 1, 53.3 );
setRotateKey( spep_6 -3 + 30, 1, 53.8 );
setRotateKey( spep_6 -3 + 32, 1, 54.3 );
setRotateKey( spep_6 -3 + 34, 1, 54.8 );
setRotateKey( spep_6 -3 + 36, 1, 55.4 );
setRotateKey( spep_6 -3 + 38, 1, 55.9 );
setRotateKey( spep_6 -3 + 40, 1, 56.4 );
setRotateKey( spep_6 -3 + 42, 1, 57 );
setRotateKey( spep_6 -3 + 44, 1, 57.5 );
setRotateKey( spep_6 -3 + 46, 1, 58 );
setRotateKey( spep_6 -3 + 48, 1, 58.5 );
setRotateKey( spep_6 -3 + 50, 1, 59.1 );
setRotateKey( spep_6 -3 + 52, 1, 59.6 );
setRotateKey( spep_6 -3 + 54, 1, 60.1 );
setRotateKey( spep_6 -3 + 56, 1, 60.7 );
setRotateKey( spep_6 -3 + 59, 1, 61.2 );
setRotateKey( spep_6 -3 + 60, 1, 0 );
setRotateKey( spep_6 -3 + 163, 1, 0 );

-- ** 音 ** --
--敵ヒット
SE066 = playSeVer2( spep_6 + 4, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 4, SE066, 100 );

--敵吹っ飛ぶ
SE067 = playSeVer2( spep_6 + 62, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 62, SE067, 120 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 160 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 6 );
endPhase( spep_6 + 150 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 冒頭(56F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 56, 0x100, -1, 0, 0, 0 );  --冒頭   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 56, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 56 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 56, first_f, 0 );

-- ** 音 ** --
--入りオーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 80, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 136 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 80, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 119 );

--瞬間移動
SE003 = playSeVer2( spep_0 + 32, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;


------------------------------------------------------
-- 敵の前に出現、敵の腹にパンチ、ワンツーパンチ〜回り込み、2連回し蹴り、吹き飛ぶ敵(222F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
move_f = entryEffectLife( spep_1 + 0, SP_02r, 222, 0x100, -1, 0, 0, 0 );  --敵の前に出現、敵の腹にパンチ、ワンツーパンチ〜回り込み、2連回し蹴り、吹き飛ぶ敵 ef_002
setEffMoveKey( spep_1 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 222, move_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 222, move_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, move_f, 0 );
setEffRotateKey( spep_1 + 222, move_f, 0 );
setEffAlphaKey( spep_1 + 0, move_f, 255 );
setEffAlphaKey( spep_1 + 222 -1, move_f, 255 );
setEffAlphaKey( spep_1 + 222, move_f, 0 );

move_b = entryEffectLife( spep_1 + 0, SP_03r, 222, 0x80, -1, 0, 0, 0 );  --敵の前に出現、敵の腹にパンチ、ワンツーパンチ〜回り込み、2連回し蹴り、吹き飛ぶ敵  ef_002_back
setEffMoveKey( spep_1 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 222, move_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 222, move_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, move_b, 0 );
setEffRotateKey( spep_1 + 222, move_b, 0 );
setEffAlphaKey( spep_1 + 0, move_b, 255 );
setEffAlphaKey( spep_1 + 222 -1, move_b, 255 );
setEffAlphaKey( spep_1 + 222, move_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 0, -96 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 0, -96 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 0, -121 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 0, -145.9 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 0, -170.9 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 0, -195.8 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 0, -220.8 , 0 );

setScaleKey( spep_1 + 0, 1, 2.89, 2.89 );
setScaleKey( spep_1 -3 + 8, 1, 2.89, 2.89 );
setScaleKey( spep_1 -3 + 10, 1, 2.67, 2.67 );
setScaleKey( spep_1 -3 + 12, 1, 2.45, 2.45 );
setScaleKey( spep_1 -3 + 14, 1, 2.23, 2.23 );
setScaleKey( spep_1 -3 + 16, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 18, 1, 1.79, 1.79 );

setRotateKey( spep_1 + 0, 1, 0 );

-- ** 音 ** --
--瞬間移動
SE004 = playSeVer2( spep_1 + 14, 1109, "", 0, 0, 0, -1);

--オーラ
SE005 = playSeVer2( spep_1 + 14, 1181, "",spep_1 + 88, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 14, SE005, 143 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 0, -220.8 , 0 );
    setMoveKey( SP_dodge + 10, 1, 0, -220.8 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.79, 1.79 );
    setScaleKey( SP_dodge + 10, 1, 1.79, 1.79 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
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
setDisp( spep_1 -3 + 202, 1, 0 );
changeAnime( spep_1 -3 + 60, 1, 104 );
changeAnime( spep_1 -3 + 78, 1, 108 );
changeAnime( spep_1 -3 + 114, 1, 106 );
changeAnime( spep_1 -3 + 150, 1, 108 );
changeAnime( spep_1 -3 + 186, 1, 107 );


setMoveKey( spep_1 -3 + 59, 1, 0, -220.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -1.6, -33.6 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 50.7, -62.5 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 102.9, -91.5 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 81.2, -30.4 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 59.5, 30.8 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 71.8, 3.8 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 84, -23.1 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 72.3, -28.1 , 0 );
setMoveKey( spep_1 -3 + 77, 1, 60.6, -33 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 108.8, 46 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 126.8, 35.9 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 107.7, 37.8 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 156.8, 76.9 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 140.8, 66.7 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 146.8, 73.7 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 152.8, 80.6 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 158.8, 87.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 159.1, 87.6 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 159.3, 87.6 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 159.6, 87.7 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 159.9, 87.8 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 160.1, 87.9 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 160.4, 87.9 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 160.7, 88 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 182.4, 41.6 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 180.2, 45.1 , 0 );
setMoveKey( spep_1 -3 + 113, 1, 177.9, 48.5 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 128.5, 71.9 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 142.8, 59 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 120, 58 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 165.5, 94.3 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 145.7, 81.4 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 147.9, 85.5 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 150.2, 89.6 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 144.4, 100.7 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 166.2, 99.2 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 144.4, 97.6 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 190.8, 133.2 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 172, 119.7 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 132.4, 108.2 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 93, 96.8 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 53.9, 85.4 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 15, 74 , 0 );
setMoveKey( spep_1 -3 + 146, 1, -23.8, 62.6 , 0 );
setMoveKey( spep_1 -3 + 149, 1, -62.3, 51.1 , 0 );
setMoveKey( spep_1 -3 + 150, 1, -66, 128.2 , 0 );
setMoveKey( spep_1 -3 + 152, 1, -45.5, 101.9 , 0 );
setMoveKey( spep_1 -3 + 154, 1, -94.9, 110.9 , 0 );
setMoveKey( spep_1 -3 + 156, 1, -37.1, 160.6 , 0 );
setMoveKey( spep_1 -3 + 158, 1, -75.6, 151.4 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -81.2, 161.4 , 0 );
setMoveKey( spep_1 -3 + 162, 1, -86.8, 171.2 , 0 );
setMoveKey( spep_1 -3 + 164, 1, -92.3, 181 , 0 );
setMoveKey( spep_1 -3 + 166, 1, -97.7, 190.7 , 0 );
setMoveKey( spep_1 -3 + 168, 1, -93.4, 193.3 , 0 );
setMoveKey( spep_1 -3 + 170, 1, -89.1, 196 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -84.7, 198.6 , 0 );
setMoveKey( spep_1 -3 + 174, 1, -80.5, 201.2 , 0 );
setMoveKey( spep_1 -3 + 176, 1, -76.1, 203.8 , 0 );
setMoveKey( spep_1 -3 + 178, 1, -55.5, 203.2 , 0 );
setMoveKey( spep_1 -3 + 180, 1, -34.9, 202.4 , 0 );
setMoveKey( spep_1 -3 + 182, 1, -14.2, 201.7 , 0 );
setMoveKey( spep_1 -3 + 185, 1, 6.5, 201 , 0 );
setMoveKey( spep_1 -3 + 186, 1, -224.2, 268.3 , 0 );
setMoveKey( spep_1 -3 + 188, 1, -185.2, 240.1 , 0 );
setMoveKey( spep_1 -3 + 190, 1, -229.9, 176.6 , 0 );
setMoveKey( spep_1 -3 + 192, 1, -173.6, 109.4 , 0 );
setMoveKey( spep_1 -3 + 194, 1, -21.9, -26.1 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 184.8, -190 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 397.3, -372.7 , 0 );
setMoveKey( spep_1 -3 + 201, 1, 608.3, -554 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 608.3, -554 , 0 );

setScaleKey( spep_1 -3 + 59, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 60, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 77, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 78, 1, 2.04, 2.04 );
setScaleKey( spep_1 -3 + 113, 1, 2.04, 2.04 );
setScaleKey( spep_1 -3 + 114, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 136, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 138, 1, 2.07, 2.07 );
setScaleKey( spep_1 -3 + 140, 1, 2.11, 2.11 );
setScaleKey( spep_1 -3 + 142, 1, 2.15, 2.15 );
setScaleKey( spep_1 -3 + 144, 1, 2.18, 2.18 );
setScaleKey( spep_1 -3 + 146, 1, 2.22, 2.22 );
setScaleKey( spep_1 -3 + 149, 1, 2.26, 2.26 );
setScaleKey( spep_1 -3 + 150, 1, 2.57, 2.57 );
setScaleKey( spep_1 -3 + 152, 1, 2.56, 2.56 );
setScaleKey( spep_1 -3 + 154, 1, 2.55, 2.55 );
setScaleKey( spep_1 -3 + 156, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 158, 1, 2.53, 2.53 );
setScaleKey( spep_1 -3 + 160, 1, 2.52, 2.52 );
setScaleKey( spep_1 -3 + 162, 1, 2.51, 2.51 );
setScaleKey( spep_1 -3 + 164, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 166, 1, 2.49, 2.49 );
setScaleKey( spep_1 -3 + 168, 1, 2.48, 2.48 );
setScaleKey( spep_1 -3 + 170, 1, 2.47, 2.47 );
setScaleKey( spep_1 -3 + 172, 1, 2.46, 2.46 );
setScaleKey( spep_1 -3 + 174, 1, 2.45, 2.45 );
setScaleKey( spep_1 -3 + 176, 1, 2.44, 2.44 );
setScaleKey( spep_1 -3 + 178, 1, 2.43, 2.43 );
setScaleKey( spep_1 -3 + 180, 1, 2.42, 2.42 );
setScaleKey( spep_1 -3 + 182, 1, 2.41, 2.41 );
setScaleKey( spep_1 -3 + 185, 1, 2.4, 2.4 );
setScaleKey( spep_1 -3 + 186, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 188, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 190, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 192, 1, 1.71, 1.71 );
setScaleKey( spep_1 -3 + 194, 1, 2.23, 2.23 );
setScaleKey( spep_1 -3 + 196, 1, 2.9, 2.9 );
setScaleKey( spep_1 -3 + 198, 1, 3.21, 3.21 );
setScaleKey( spep_1 -3 + 201, 1, 3.51, 3.51 );
setScaleKey( spep_1 -3 + 202, 1, 3.51, 3.51 );

setRotateKey( spep_1 -3 + 78, 1, 0 );
setRotateKey( spep_1 -3 + 80, 1, 0.7 );
setRotateKey( spep_1 -3 + 82, 1, 1.3 );
setRotateKey( spep_1 -3 + 84, 1, 2 );
setRotateKey( spep_1 -3 + 86, 1, 2.7 );
setRotateKey( spep_1 -3 + 88, 1, 3.4 );
setRotateKey( spep_1 -3 + 90, 1, 4 );
setRotateKey( spep_1 -3 + 92, 1, 4.7 );
setRotateKey( spep_1 -3 + 106, 1, 4.7 );
setRotateKey( spep_1 -3 + 108, 1, 0 );
setRotateKey( spep_1 -3 + 113, 1, 0 );
setRotateKey( spep_1 -3 + 114, 1, -37 );
setRotateKey( spep_1 -3 + 116, 1, -36.7 );
setRotateKey( spep_1 -3 + 118, 1, -36.5 );
setRotateKey( spep_1 -3 + 120, 1, -36.3 );
setRotateKey( spep_1 -3 + 122, 1, -36.1 );
setRotateKey( spep_1 -3 + 124, 1, -35.9 );
setRotateKey( spep_1 -3 + 126, 1, -35.7 );
setRotateKey( spep_1 -3 + 128, 1, -35.5 );
setRotateKey( spep_1 -3 + 130, 1, -37 );
setRotateKey( spep_1 -3 + 132, 1, -38.2 );
setRotateKey( spep_1 -3 + 134, 1, -39.4 );
setRotateKey( spep_1 -3 + 136, 1, -40.6 );
setRotateKey( spep_1 -3 + 138, 1, -41.8 );
setRotateKey( spep_1 -3 + 140, 1, -43.1 );
setRotateKey( spep_1 -3 + 142, 1, -44.3 );
setRotateKey( spep_1 -3 + 144, 1, -45.5 );
setRotateKey( spep_1 -3 + 146, 1, -46.7 );
setRotateKey( spep_1 -3 + 149, 1, -47.9 );
setRotateKey( spep_1 -3 + 150, 1, -28 );
setRotateKey( spep_1 -3 + 152, 1, -28.5 );
setRotateKey( spep_1 -3 + 154, 1, -29 );
setRotateKey( spep_1 -3 + 156, 1, -29.5 );
setRotateKey( spep_1 -3 + 158, 1, -30 );
setRotateKey( spep_1 -3 + 160, 1, -30.5 );
setRotateKey( spep_1 -3 + 162, 1, -31 );
setRotateKey( spep_1 -3 + 164, 1, -31.5 );
setRotateKey( spep_1 -3 + 166, 1, -32 );
setRotateKey( spep_1 -3 + 168, 1, -32.6 );
setRotateKey( spep_1 -3 + 170, 1, -33.1 );
setRotateKey( spep_1 -3 + 172, 1, -33.7 );
setRotateKey( spep_1 -3 + 174, 1, -34.2 );
setRotateKey( spep_1 -3 + 176, 1, -34.8 );
setRotateKey( spep_1 -3 + 178, 1, -35.3 );
setRotateKey( spep_1 -3 + 180, 1, -35.9 );
setRotateKey( spep_1 -3 + 182, 1, -36.4 );
setRotateKey( spep_1 -3 + 185, 1, -37 );
setRotateKey( spep_1 -3 + 186, 1, -77 );
setRotateKey( spep_1 -3 + 188, 1, -72.8 );
setRotateKey( spep_1 -3 + 190, 1, -60.2 );
setRotateKey( spep_1 -3 + 192, 1, -39.2 );
setRotateKey( spep_1 -3 + 194, 1, -9.8 );
setRotateKey( spep_1 -3 + 196, 1, 28 );
setRotateKey( spep_1 -3 + 198, 1, 27.9 );
setRotateKey( spep_1 -3 + 201, 1, 27.9 );
setRotateKey( spep_1 -3 + 202, 1, 27.9 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 208, 1, 1 );
setDisp( spep_1 -3 + 225, 1, 0 );
changeAnime( spep_1 -3 + 208, 1, 105 );

setMoveKey( spep_1 -3 + 208, 1, 0, -30.2 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 0, -51.3 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 0, -65.7 , 0 );
setMoveKey( spep_1 -3 + 214, 1, -0.1, -73.5 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 0, -75.7 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 0, -73.2 , 0 );
setMoveKey( spep_1 -3 + 220, 1, -0.1, -67.6 , 0 );
setMoveKey( spep_1 -3 + 222, 1, -0.1, -60 , 0 );
setMoveKey( spep_1 -3 + 224, 1, -0.1, -51.2 , 0 );
setMoveKey( spep_1 -3 + 225, 1, -0.1, -51.2 , 0 );

setScaleKey( spep_1 -3 + 208, 1, 9.81, 9.81 );
setScaleKey( spep_1 -3 + 210, 1, 6.78, 6.78 );
setScaleKey( spep_1 -3 + 212, 1, 4.58, 4.58 );
setScaleKey( spep_1 -3 + 214, 1, 3.07, 3.07 );
setScaleKey( spep_1 -3 + 216, 1, 2.11, 2.11 );
setScaleKey( spep_1 -3 + 218, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 220, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 222, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 224, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 225, 1, 1.13, 1.13 );

setRotateKey( spep_1 -3 + 208, 1, 0 );
setRotateKey( spep_1 -3 + 225, 1, 0 );

-- ** 音 ** --
--腹パン
SE006 = playSeVer2( spep_1 + 66, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 72, 1187, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 72, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 72, SE008, 73 );

--パンチ
SE009 = playSeVer2( spep_1 + 106, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 106, SE009, 85 );
SE010 = playSeVer2( spep_1 + 106, 1110, "", 0, 0, 0, -1);

--パンチ２
SE011 = playSeVer2( spep_1 + 126, 1010, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 126, 1110, "", 0, 0, 0, -1);

--背後から蹴り
SE013 = playSeVer2( spep_1 + 136, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 144, 1001, "", spep_1 + 206, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 144, SE014, 68 );
SE015 = playSeVer2( spep_1 + 144, 1187, "", spep_1 + 206, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 144, SE015, 66 );
SE016 = playSeVer2( spep_1 + 144, 1153, "", spep_1 + 206, 0, 20, -1);

--回し蹴り
SE017 = playSeVer2( spep_1 + 168, 1189, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 178, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 178, SE018, 85 );
SE019 = playSeVer2( spep_1 + 180, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 180, SE019, 106 );
SE020 = playSeVer2( spep_1 + 180, 1359, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 184, 1110, "", 0, 0, 0, -1);

--敵吹っ飛ぶ
SE022 = playSeVer2( spep_1 + 196, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 196, SE022, 86 );

--オーラ
SE023 = playSeVer2( spep_1 + 216, 1181, "",spep_1 + 294, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 216, SE023, 143 );

--首ならす
SE024 = playSeVer2( spep_1 + 218, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 218, SE024, 202 );
setPitch( spep_1 + 218, SE024, 800 );
setTimeStretch( SE024, 1.53, 30, 4 );
SE025 = playSeVer2( spep_1 + 218, 1330, "",spep_1 + 232, 0, 2, -1);
setSeVolumeByWorkId( spep_1 + 218, SE025, 83 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 222 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 222;


------------------------------------------------------
-- ベジータ首振り、突っ込む、アッパーで敵吹き飛ばし、ラッシュで地面に激突(316F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_2 + 0, SP_04, 316, 0x100, -1, 0, 0, 0 );  --ベジータ首振り、突っ込む、アッパーで敵吹き飛ばし、ラッシュで地面に激突    ef_003
setEffMoveKey( spep_2 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 316, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 316, attack_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_f, 0 );
setEffRotateKey( spep_2 + 316, attack_f, 0 );
setEffAlphaKey( spep_2 + 0, attack_f, 255 );
setEffAlphaKey( spep_2 + 316 -1, attack_f, 255 );
setEffAlphaKey( spep_2 + 316, attack_f, 0 );

attack_b = entryEffectLife( spep_2 + 0, SP_05, 316, 0x80, -1, 0, 0, 0 );  --ベジータ首振り、突っ込む、アッパーで敵吹き飛ばし、ラッシュで地面に激突 ef_003_back
setEffMoveKey( spep_2 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 316, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 316, attack_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_b, 0 );
setEffRotateKey( spep_2 + 316, attack_b, 0 );
setEffAlphaKey( spep_2 + 0, attack_b, 255 );
setEffAlphaKey( spep_2 + 316 -1, attack_b, 255 );
setEffAlphaKey( spep_2 + 316, attack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 114, 1, 1 );
setDisp( spep_2 -3 + 194, 1, 0 );
changeAnime( spep_2 -3 + 114, 1, 5 );

setMoveKey( spep_2 -3 + 114, 1, -11.7, -279.7 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -11.7, -215.7 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 20.3, -146.7 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -53.7, -54.7 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -51.7, -138.7 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 28.3, -40.7 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -43.7, 85.9 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 57.4, 85.5 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -52.9, 10.9 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 11.7, 107 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -57.8, 141.6 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 69.3, 132 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -8.6, 57.5 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -7.6, 55.5 , 0 );
setMoveKey( spep_2 -3 + 142, 1, -6.4, 51.4 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -5, 45.1 , 0 );
setMoveKey( spep_2 -3 + 146, 1, -3.6, 36.4 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 1.1, 3.6 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 5.3, -25.8 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 8.8, -51.7 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 11.7, -74.1 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 14, -93.2 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 15.7, -108.7 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 16.9, -120.8 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 17.5, -129.4 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 17.4, -134.6 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 17.4, -157.4 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 17.5, -180.2 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 17.6, -203 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 17.6, -203 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 17.7, -203 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 17.7, -203 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 22.6, -241.9 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 27.8, -197.1 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 33.2, -46.6 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 39.1, 232.1 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 39.1, 232.1 , 0 );

setScaleKey( spep_2 -3 + 114, 1, 3.4, 3.4 );
setScaleKey( spep_2 -3 + 126, 1, 3.4, 3.4 );
setScaleKey( spep_2 -3 + 128, 1, 2.88, 2.88 );
setScaleKey( spep_2 -3 + 130, 1, 2.47, 2.47 );
setScaleKey( spep_2 -3 + 132, 1, 2.1, 2.1 );
setScaleKey( spep_2 -3 + 134, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 136, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 138, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 140, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 142, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 144, 1, 0.82, 0.82 );
setScaleKey( spep_2 -3 + 146, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 148, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 150, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 152, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 154, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 156, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 158, 1, 1.29, 1.29 );
setScaleKey( spep_2 -3 + 160, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 162, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 164, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 166, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 168, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 170, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 172, 1, 2.55, 2.55 );
setScaleKey( spep_2 -3 + 174, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 176, 1, 2.62, 2.62 );
setScaleKey( spep_2 -3 + 178, 1, 2.66, 2.66 );
setScaleKey( spep_2 -3 + 180, 1, 2.69, 2.69 );
setScaleKey( spep_2 -3 + 182, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 184, 1, 2.77, 2.77 );
setScaleKey( spep_2 -3 + 186, 1, 3.34, 3.34 );
setScaleKey( spep_2 -3 + 188, 1, 4.51, 4.51 );
setScaleKey( spep_2 -3 + 190, 1, 6.42, 6.42 );
setScaleKey( spep_2 -3 + 192, 1, 9.23, 9.23 );
setScaleKey( spep_2 -3 + 194, 1, 9.23, 9.23 );

setRotateKey( spep_2 -3 + 114, 1, 0 );
setRotateKey( spep_2 -3 + 194, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 226, 1, 1 );
setDisp( spep_2 -3 + 319, 1, 0 );
changeAnime( spep_2 -3 + 226, 1, 8 );
changeAnime( spep_2 -3 + 244, 1, 6 );
changeAnime( spep_2 -3 + 260, 1, 8 );
changeAnime( spep_2 -3 + 268, 1, 6 );
changeAnime( spep_2 -3 + 276, 1, 8 );
changeAnime( spep_2 -3 + 284, 1, 6 );
changeAnime( spep_2 -3 + 292, 1, 8 );
changeAnime( spep_2 -3 + 300, 1, 6 );
changeAnime( spep_2 -3 + 308, 1, 8 );
changeAnime( spep_2 -3 + 316, 1, 6 );

setMoveKey( spep_2 -3 + 226, 1, -24.5, 156.9 , 0 );
setMoveKey( spep_2 -3 + 228, 1, -23.2, 150.2 , 0 );
setMoveKey( spep_2 -3 + 230, 1, -22, 143.4 , 0 );
setMoveKey( spep_2 -3 + 232, 1, -20.7, 136.6 , 0 );
setMoveKey( spep_2 -3 + 234, 1, -19.5, 129.8 , 0 );
setMoveKey( spep_2 -3 + 236, 1, -18.2, 123 , 0 );
setMoveKey( spep_2 -3 + 238, 1, -17, 116.2 , 0 );
setMoveKey( spep_2 -3 + 240, 1, -15.7, 109.4 , 0 );
setMoveKey( spep_2 -3 + 242, 1, -54.5, 90.6 , 0 );
setMoveKey( spep_2 -3 + 243, 1, -54.5, 90.6 , 0 );--
setMoveKey( spep_2 -3 + 244, 1, 21.7, 140 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 53.8, 74.4 , 0 );
setMoveKey( spep_2 -3 + 248, 1, -2.3, 136.9 , 0 );
setMoveKey( spep_2 -3 + 250, 1, -10.3, 87.3 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 45.8, 121.9 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 45.8, 44.2 , 0 );
setMoveKey( spep_2 -3 + 256, 1, -6.3, 54.7 , 0 );
setMoveKey( spep_2 -3 + 258, 1, -26.3, 45.1 , 0 );
setMoveKey( spep_2 -3 + 259, 1, -26.3, 45.1 , 0 );--
setMoveKey( spep_2 -3 + 260, 1, -16.5, 84.7 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 15.6, 19.1 , 0 );
setMoveKey( spep_2 -3 + 264, 1, -40.5, 81.7 , 0 );
setMoveKey( spep_2 -3 + 266, 1, -48.5, 32.1 , 0 );
setMoveKey( spep_2 -3 + 267, 1, -48.5, 32.1 , 0 );--
setMoveKey( spep_2 -3 + 268, 1, 45.8, 45.5 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 45.8, -32.2 , 0 );
setMoveKey( spep_2 -3 + 272, 1, -6.3, -21.7 , 0 );
setMoveKey( spep_2 -3 + 274, 1, -26.3, -31.3 , 0 );
setMoveKey( spep_2 -3 + 275, 1, -26.3, -31.3 , 0 );--
setMoveKey( spep_2 -3 + 276, 1, -16.5, 8.3 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 15.6, -57.3 , 0 );
setMoveKey( spep_2 -3 + 280, 1, -40.5, 5.3 , 0 );
setMoveKey( spep_2 -3 + 282, 1, -48.5, -44.3 , 0 );
setMoveKey( spep_2 -3 + 283, 1, -48.5, -44.3 , 0 );--
setMoveKey( spep_2 -3 + 284, 1, 45.8, -30.9 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 45.8, -108.5 , 0 );
setMoveKey( spep_2 -3 + 288, 1, -6.3, -98 , 0 );
setMoveKey( spep_2 -3 + 290, 1, -26.3, -107.7 , 0 );
setMoveKey( spep_2 -3 + 291, 1, -26.3, -107.7 , 0 );--
setMoveKey( spep_2 -3 + 292, 1, -16.5, -68 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 15.6, -133.6 , 0 );
setMoveKey( spep_2 -3 + 296, 1, -40.5, -71.1 , 0 );
setMoveKey( spep_2 -3 + 298, 1, -48.5, -120.7 , 0 );
setMoveKey( spep_2 -3 + 299, 1, -48.5, -120.7 , 0 );--
setMoveKey( spep_2 -3 + 300, 1, 45.8, -107.3 , 0 );
setMoveKey( spep_2 -3 + 302, 1, 45.8, -184.9 , 0 );
setMoveKey( spep_2 -3 + 304, 1, -6.3, -174.4 , 0 );
setMoveKey( spep_2 -3 + 306, 1, 19.4, -225.8 , 0 );
setMoveKey( spep_2 -3 + 307, 1, 19.4, -225.8 , 0 );--
setMoveKey( spep_2 -3 + 308, 1, 11, -340.1 , 0 );
setMoveKey( spep_2 -3 + 310, 1, -47.4, -347.4 , 0 );
setMoveKey( spep_2 -3 + 312, 1, -57.6, -466.9 , 0 );
setMoveKey( spep_2 -3 + 314, 1, -3.8, -502.2 , 0 );
setMoveKey( spep_2 -3 + 315, 1, -3.8, -502.2 , 0 );--
setMoveKey( spep_2 -3 + 316, 1, 32.1, -670.8 , 0 );
setMoveKey( spep_2 -3 + 318, 1, -22.3, -730.2 , 0 );
setMoveKey( spep_2 -3 + 319, 1, -22.3, -730.2 , 0 );

setScaleKey( spep_2 -3 + 226, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 228, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 230, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 232, 1, 2.21, 2.21 );
setScaleKey( spep_2 -3 + 234, 1, 2.23, 2.23 );
setScaleKey( spep_2 -3 + 236, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 238, 1, 2.26, 2.26 );
setScaleKey( spep_2 -3 + 240, 1, 2.28, 2.28 );
setScaleKey( spep_2 -3 + 242, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 243, 1, 2.3, 2.3 );--
setScaleKey( spep_2 -3 + 244, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 259, 1, 2.08, 2.08 );--
setScaleKey( spep_2 -3 + 260, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 267, 1, 2.3, 2.3 );--
setScaleKey( spep_2 -3 + 268, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 275, 1, 2.08, 2.08 );--
setScaleKey( spep_2 -3 + 276, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 283, 1, 2.3, 2.3 );--
setScaleKey( spep_2 -3 + 284, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 291, 1, 2.08, 2.08 );--
setScaleKey( spep_2 -3 + 292, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 299, 1, 2.3, 2.3 );--
setScaleKey( spep_2 -3 + 300, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 307, 1, 2.08, 2.08 );--
setScaleKey( spep_2 -3 + 308, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 315, 1, 2.3, 2.3 );--
setScaleKey( spep_2 -3 + 316, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 319, 1, 2.08, 2.08 );--

setRotateKey( spep_2 -3 + 226, 1, -69 );
setRotateKey( spep_2 -3 + 243, 1, -69 );--
setRotateKey( spep_2 -3 + 244, 1, -29.7 );
setRotateKey( spep_2 -3 + 259, 1, -29.7 );--
setRotateKey( spep_2 -3 + 260, 1, -69 );
setRotateKey( spep_2 -3 + 267, 1, -69 );--
setRotateKey( spep_2 -3 + 268, 1, -29.7 );
setRotateKey( spep_2 -3 + 275, 1, -29.7 );--
setRotateKey( spep_2 -3 + 276, 1, -69 );
setRotateKey( spep_2 -3 + 283, 1, -69 );--
setRotateKey( spep_2 -3 + 284, 1, -29.7 );
setRotateKey( spep_2 -3 + 291, 1, -29.7 );
setRotateKey( spep_2 -3 + 292, 1, -69 );
setRotateKey( spep_2 -3 + 299, 1, -69 );--
setRotateKey( spep_2 -3 + 300, 1, -29.7 );
setRotateKey( spep_2 -3 + 307, 1, -29.7 );--
setRotateKey( spep_2 -3 + 308, 1, -69 );
setRotateKey( spep_2 -3 + 315, 1, -69 );--
setRotateKey( spep_2 -3 + 316, 1, -29.7 );
setRotateKey( spep_2 -3 + 319, 1, -29.7 );--

-- ** 音 ** --
--首ならす
SE026 = playSeVer2( spep_2 + 0, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE026, 207 );
setPitch( spep_2 + 0, SE026, 400 );
setTimeStretch( SE026, 1.27, 30, 4 );
SE028 = playSeVer2( spep_2 + 4, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE028, 202 );
setPitch( spep_2 + 4, SE028, 800 );
setTimeStretch( SE028, 1.53, 30, 4 );

--ズームアウト
SE027 = playSeVer2( spep_2 + 0, 1072, "", 0, 0, 0, -1);

--向かってくる
SE029 = playSeVer2( spep_2 + 44, 1182, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 44, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE030, 69 );
setTimeStretch( SE030, 1.11, 30, 4 );
SE031 = playSeVer2( spep_2 + 44, 9, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 182, 1117, "",spep_2 + 240, 0, 8, -1);
SE037 = playSeVer2( spep_2 + 184, 1004, "", 0, 0, 0, -1);
setPitch( spep_2 + 184, SE037, -400 );
setTimeStretch( SE037, 0.73, 30, 4 );

--アッパー
SE032 = playSeVer2( spep_2 + 104, 1110, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 104, 1187, "", 0, 0, 0, -1);

--瞬間移動
SE034 = playSeVer2( spep_2 + 152, 1109, "", 0, 0, 0, -1);

--オーラ
SE035 = playSeVer2( spep_2 + 152, 1181, "",spep_2 + 240, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 152, SE035, 164 );

--連続打撃
SE038 = playSeVer2( spep_2 + 232, 1009, "",spep_2 + 252, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 232, SE038, 79 );
SE039 = playSeVer2( spep_2 + 232, 1110, "",spep_2 + 266, 0, 8, -1);
SE040 = playSeVer2( spep_2 + 242, 1010, "",spep_2 + 266, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 242, SE040, 81 );
SE041 = playSeVer2( spep_2 + 242, 1110, "",spep_2 + 276, 0, 6, -1);
SE042 = playSeVer2( spep_2 + 254, 1009, "",spep_2 + 274, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 254, SE042, 84 );
SE043 = playSeVer2( spep_2 + 254, 1110, "",spep_2 + 288, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 254, SE043, 77 );
setPitch( spep_2 + 254, SE043, -200 );
setTimeStretch( SE043, 0.87, 30, 4 );
SE044 = playSeVer2( spep_2 + 266, 1010, "",spep_2 + 290, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 266, SE044, 85 );
SE045 = playSeVer2( spep_2 + 266, 1110, "",spep_2 + 298, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 266, SE045, 91 );
SE046 = playSeVer2( spep_2 + 276, 1009, "",spep_2 + 294, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 276, SE046, 81 );
SE047 = playSeVer2( spep_2 + 276, 1110, "",spep_2 + 306, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 276, SE047, 92 );
setPitch( spep_2 + 276, SE047, 200 );
setTimeStretch( SE047, 1.13, 30, 4 );
SE048 = playSeVer2( spep_2 + 284, 1010, "",spep_2 + 306, 0, 8, -1);
SE049 = playSeVer2( spep_2 + 284, 1110, "",spep_2 + 316, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 284, SE049, 79 );
SE050 = playSeVer2( spep_2 + 296, 1009, "",spep_2 + 314, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 296, SE050, 77 );
SE051 = playSeVer2( spep_2 + 296, 1110, "",spep_2 + 322, 0, 8, -1);
SE053 = playSeVer2( spep_2 + 306, 1009, "",spep_2 + 324, 0, 4, -1);
SE054 = playSeVer2( spep_2 + 306, 1110, "",spep_2 + 332, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 306, SE054, 83 );

--光走る
SE052 = playSeVer2( spep_2 + 302, 1179, "",spep_2 + 380, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 302, SE052, 117 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 316 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 316;


------------------------------------------------------
-- 地面に落下(56F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
fall = entryEffectLife( spep_3 + 0, SP_06, 56, 0x100, -1, 0, 0, 0 );  --地面に落下   ef_004
setEffMoveKey( spep_3 + 0, fall, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, fall, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fall, -1.0, 1.0 );
setEffScaleKey( spep_3 + 56, fall, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fall, 0 );
setEffRotateKey( spep_3 + 56, fall, 0 );
setEffAlphaKey( spep_3 + 0, fall, 255 );
setEffAlphaKey( spep_3 + 56 -1, fall, 255 );
setEffAlphaKey( spep_3 + 56, fall, 0 );

-- ** 音 ** --
--連続打撃
SE055 = playSeVer2( spep_3 + 4, 1009, "",spep_3 + 22, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 4, SE055, 87 );
SE056 = playSeVer2( spep_3 + 4, 1110, "", 0, 0, 0, -1);

--地面激突
SE057 = playSeVer2( spep_3 + 10, 1159, "",spep_3 + 64, 0, 12, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_4 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );
 
-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );
 
--オーラ
SE059 = playSeVer2( spep_4 + 84, 1181, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 84, SE059, 151 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- ビックバンアタック発射(172F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
bigbang = entryEffectLife( spep_5 + 0, SP_07, 172, 0x100, -1, 0, 0, 0 );  --ビックバンアタック発射    ef_005
setEffMoveKey( spep_5 + 0, bigbang, 0, 0 , 0 );
setEffMoveKey( spep_5 + 172, bigbang, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bigbang, -1.0, 1.0 );
setEffScaleKey( spep_5 + 172, bigbang, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bigbang, 0 );
setEffRotateKey( spep_5 + 172, bigbang, 0 );
setEffAlphaKey( spep_5 + 0, bigbang, 255 );
setEffAlphaKey( spep_5 + 172 -1, bigbang, 255 );
setEffAlphaKey( spep_5 + 172, bigbang, 0 );

spep_x = spep_5 + 0;
-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--顔カットイン
--SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--腕前に出す
SE061 = playSeVer2( spep_5 + 54, 1003, "", 0, 0, 0, -1);

--気弾発射
SE062 = playSeVer2( spep_5 + 80, 1296, "",spep_5 + 180, 0, 30, -1);
SE063 = playSeVer2( spep_5 + 80, 1282, "", 0, 0, 0, 0.6);
setPitch( spep_5 + 80, SE063, -200 );
setTimeStretch( SE063, 0.87, 30, 4 );

--気弾飲み込まれる
SE064 = playSeVer2( spep_5 + 144, 1021, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_5 + 154, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 154, SE065, 54 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 172 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 172;


------------------------------------------------------
-- フィニッシュ(160F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --フィニッシュ ef_006
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 160, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 160, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 160, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 160, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --フィニッシュ  ef_006_back
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 160, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 160, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 160, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 160, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 163, 1, 0 );
changeAnime( spep_6 + 0, 1, 106 );
changeAnime( spep_6 -3 + 6, 1, 108 );
changeAnime( spep_6 -3 + 60, 1, 105 );

setBlendColor( spep_6 -3 + 6, 1, 3, 0.07, 0.23, 0.55, 0.8 );
setBlendColor( spep_6 -3 + 8, 1, 3, 0.0756, 0.2337, 0.5481, 0.8 );
setBlendColor( spep_6 -3 + 10, 1, 3, 0.0812, 0.2374, 0.5462, 0.8 );
setBlendColor( spep_6 -3 + 12, 1, 3, 0.0868, 0.2411, 0.5443, 0.8 );
setBlendColor( spep_6 -3 + 14, 1, 3, 0.0924, 0.2448, 0.5424, 0.8 );
setBlendColor( spep_6 -3 + 16, 1, 3, 0.098, 0.2485, 0.5405, 0.8 );
setBlendColor( spep_6 -3 + 18, 1, 3, 0.1036, 0.2522, 0.5386, 0.8 );
setBlendColor( spep_6 -3 + 20, 1, 3, 0.1092, 0.2559, 0.5367, 0.8 );
setBlendColor( spep_6 -3 + 22, 1, 3, 0.1148, 0.2596, 0.5348, 0.8 );
setBlendColor( spep_6 -3 + 24, 1, 3, 0.1204, 0.2633, 0.5329, 0.8 );
setBlendColor( spep_6 -3 + 26, 1, 3, 0.126, 0.267, 0.531, 0.8 );
setBlendColor( spep_6 -3 + 28, 1, 3, 0.1316, 0.2707, 0.5291, 0.8 );
setBlendColor( spep_6 -3 + 30, 1, 3, 0.1372, 0.2744, 0.5272, 0.8 );
setBlendColor( spep_6 -3 + 32, 1, 3, 0.1428, 0.2781, 0.5253, 0.8 );
setBlendColor( spep_6 -3 + 34, 1, 3, 0.1484, 0.2818, 0.5234, 0.8 );
setBlendColor( spep_6 -3 + 36, 1, 3, 0.154, 0.2855, 0.5215, 0.8 );
setBlendColor( spep_6 -3 + 38, 1, 3, 0.1596, 0.2892, 0.5196, 0.8 );
setBlendColor( spep_6 -3 + 40, 1, 3, 0.1652, 0.2929, 0.5177, 0.8 );
setBlendColor( spep_6 -3 + 42, 1, 3, 0.1708, 0.2966, 0.5158, 0.8 );
setBlendColor( spep_6 -3 + 44, 1, 3, 0.1764, 0.3003, 0.5139, 0.8 );
setBlendColor( spep_6 -3 + 46, 1, 3, 0.182, 0.304, 0.512, 0.8 );
setBlendColor( spep_6 -3 + 48, 1, 3, 0.1876, 0.3077, 0.5101, 0.8 );
setBlendColor( spep_6 -3 + 50, 1, 3, 0.1932, 0.3114, 0.5082, 0.8 );
setBlendColor( spep_6 -3 + 52, 1, 3, 0.1988, 0.3151, 0.5063, 0.8 );
setBlendColor( spep_6 -3 + 54, 1, 3, 0.2044, 0.3188, 0.5044, 0.8 );
setBlendColor( spep_6 -3 + 56, 1, 3, 0.21, 0.3225, 0.5025, 0.8 );
setBlendColor( spep_6 -3 + 58, 1, 3, 0.2156, 0.3262, 0.5006, 0.8 );
setBlendColor( spep_6 -3 + 59, 1, 3, 0.22, 0.33, 0.5, 0.8 );--
setBlendColor( spep_6 -3 + 60, 1, 3, 0.01, 0.16, 0.39, 0.8 );
setBlendColor( spep_6 -3 + 62, 1, 3, 0.01, 0.16, 0.39, 0.7942 );
setBlendColor( spep_6 -3 + 64, 1, 3, 0.01, 0.16, 0.39, 0.7884 );
setBlendColor( spep_6 -3 + 66, 1, 3, 0.01, 0.16, 0.39, 0.7826 );
setBlendColor( spep_6 -3 + 68, 1, 3, 0.01, 0.16, 0.39, 0.7768 );
setBlendColor( spep_6 -3 + 70, 1, 3, 0.01, 0.16, 0.39, 0.771 );
setBlendColor( spep_6 -3 + 72, 1, 3, 0.01, 0.16, 0.39, 0.7652 );
setBlendColor( spep_6 -3 + 74, 1, 3, 0.01, 0.16, 0.39, 0.7594 );
setBlendColor( spep_6 -3 + 76, 1, 3, 0.01, 0.16, 0.39, 0.7536 );
setBlendColor( spep_6 -3 + 78, 1, 3, 0.01, 0.16, 0.39, 0.7478 );
setBlendColor( spep_6 -3 + 80, 1, 3, 0.01, 0.16, 0.39, 0.742 );
setBlendColor( spep_6 -3 + 82, 1, 3, 0.01, 0.16, 0.39, 0.7362 );
setBlendColor( spep_6 -3 + 84, 1, 3, 0.01, 0.16, 0.39, 0.7304 );
setBlendColor( spep_6 -3 + 86, 1, 3, 0.01, 0.16, 0.39, 0.7246 );
setBlendColor( spep_6 -3 + 88, 1, 3, 0.01, 0.16, 0.39, 0.7188 );
setBlendColor( spep_6 -3 + 90, 1, 3, 0.01, 0.16, 0.39, 0.713 );
setBlendColor( spep_6 -3 + 92, 1, 3, 0.01, 0.16, 0.39, 0.7072 );
setBlendColor( spep_6 -3 + 94, 1, 3, 0.01, 0.16, 0.39, 0.7014 );
setBlendColor( spep_6 -3 + 96, 1, 3, 0.01, 0.16, 0.39, 0.6956 );
setBlendColor( spep_6 -3 + 98, 1, 3, 0.01, 0.16, 0.39, 0.6898 );
setBlendColor( spep_6 -3 + 100, 1, 3, 0.01, 0.16, 0.39, 0.684 );
setBlendColor( spep_6 -3 + 102, 1, 3, 0.01, 0.16, 0.39, 0.6782 );
setBlendColor( spep_6 -3 + 104, 1, 3, 0.01, 0.16, 0.39, 0.6724 );
setBlendColor( spep_6 -3 + 106, 1, 3, 0.01, 0.16, 0.39, 0.6666 );
setBlendColor( spep_6 -3 + 108, 1, 3, 0.01, 0.16, 0.39, 0.6608 );
setBlendColor( spep_6 -3 + 110, 1, 3, 0.01, 0.16, 0.39, 0.655 );
setBlendColor( spep_6 -3 + 112, 1, 3, 0.01, 0.16, 0.39, 0.6492 );
setBlendColor( spep_6 -3 + 114, 1, 3, 0.01, 0.16, 0.39, 0.6434 );
setBlendColor( spep_6 -3 + 116, 1, 3, 0.01, 0.16, 0.39, 0.6376 );
setBlendColor( spep_6 -3 + 118, 1, 3, 0.01, 0.16, 0.39, 0.6318 );
setBlendColor( spep_6 -3 + 120, 1, 3, 0.01, 0.16, 0.39, 0.626 );
setBlendColor( spep_6 -3 + 122, 1, 3, 0.01, 0.16, 0.39, 0.6202 );
setBlendColor( spep_6 -3 + 124, 1, 3, 0.01, 0.16, 0.39, 0.6144 );
setBlendColor( spep_6 -3 + 126, 1, 3, 0.01, 0.16, 0.39, 0.6086 );
setBlendColor( spep_6 -3 + 128, 1, 3, 0.01, 0.16, 0.39, 0.6028 );
setBlendColor( spep_6 -3 + 161, 1, 3, 0.01, 0.16, 0.39, 0.6028 );
setBlendColor( spep_6 -3 + 162, 1, 3, 0.01, 0.16, 0.39, 0.6028 );
setBlendColor( spep_6 -3 + 163, 1, 3, 0.01, 0.16, 0.39, 0 );

setMoveKey( spep_6 + 0, 1, 159.6, -325.9 , 0 );
setMoveKey( spep_6 + 1, 1, 150.3, -321.6 , 0 );
setMoveKey( spep_6 -3 + 5, 1, 133.5, -324.9 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 142.6, -330.7 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 136.4, -334.3 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 123.6, -335.9 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 116.8, -334.6 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 104.3, -335 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 98.6, -340.5 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 85.8, -341.9 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 80.9, -338.1 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 66.6, -343.9 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 57.1, -343 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 51.2, -346.7 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 38.4, -348.3 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 31.7, -347.1 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 32.8, -341.6 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 41.2, -341.6 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 42.1, -337.5 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 51.8, -327.9 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 51.2, -328.8 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 56, -322.3 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 65.1, -321.4 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 66.2, -318 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 74.8, -311.5 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 76.3, -306.8 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 86.7, -308.9 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 87.9, -305.9 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 98.1, -302.9 , 0 );
setMoveKey( spep_6 -3 + 59, 1, 105.7, -293.2 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 12, -79.1 , 0 );
setMoveKey( spep_6 -3 + 62, 1, -10.5, -56.4 , 0 );
setMoveKey( spep_6 -3 + 64, 1, 31.6, -97.4 , 0 );
setMoveKey( spep_6 -3 + 66, 1, 34.5, -42.8 , 0 );
setMoveKey( spep_6 -3 + 68, 1, -15.5, -105 , 0 );
setMoveKey( spep_6 -3 + 70, 1, 10.1, -74.1 , 0 );
setMoveKey( spep_6 -3 + 72, 1, 17.2, -81.4 , 0 );
setMoveKey( spep_6 -3 + 74, 1, 8, -82.6 , 0 );
setMoveKey( spep_6 -3 + 76, 1, 19.8, -72.3 , 0 );
setMoveKey( spep_6 -3 + 78, 1, 10.2, -74.2 , 0 );
setMoveKey( spep_6 -3 + 80, 1, 17.2, -81.3 , 0 );
setMoveKey( spep_6 -3 + 82, 1, 8.1, -82.6 , 0 );
setMoveKey( spep_6 -3 + 84, 1, 19.7, -72.3 , 0 );
setMoveKey( spep_6 -3 + 86, 1, 10.3, -74.2 , 0 );
setMoveKey( spep_6 -3 + 88, 1, 17.1, -81.3 , 0 );
setMoveKey( spep_6 -3 + 90, 1, 8.2, -82.4 , 0 );
setMoveKey( spep_6 -3 + 92, 1, 19.6, -72.4 , 0 );
setMoveKey( spep_6 -3 + 94, 1, 16.6, -75 , 0 );
setMoveKey( spep_6 -3 + 96, 1, 12.1, -79.1 , 0 );
setMoveKey( spep_6 -3 + 98, 1, 12.2, -76.9 , 0 );
setMoveKey( spep_6 -3 + 100, 1, 15.3, -79 , 0 );
setMoveKey( spep_6 -3 + 102, 1, 12.3, -79.2 , 0 );
setMoveKey( spep_6 -3 + 104, 1, 14.7, -76.8 , 0 );
setMoveKey( spep_6 -3 + 106, 1, 12, -75.9 , 0 );
setMoveKey( spep_6 -3 + 108, 1, 15.4, -79.7 , 0 );
setMoveKey( spep_6 -3 + 110, 1, 12.4, -79.7 , 0 );
setMoveKey( spep_6 -3 + 112, 1, 15.2, -79 , 0 );
setMoveKey( spep_6 -3 + 114, 1, 12.4, -79.1 , 0 );
setMoveKey( spep_6 -3 + 116, 1, 14.7, -76.9 , 0 );
setMoveKey( spep_6 -3 + 118, 1, 12, -76 , 0 );
setMoveKey( spep_6 -3 + 120, 1, 15.4, -79.6 , 0 );
setMoveKey( spep_6 -3 + 122, 1, 12.4, -79.6 , 0 );
setMoveKey( spep_6 -3 + 124, 1, 16.4, -75.2 , 0 );
setMoveKey( spep_6 -3 + 126, 1, 12.3, -79 , 0 );
setMoveKey( spep_6 -3 + 128, 1, 12.3, -77 , 0 );
setMoveKey( spep_6 -3 + 130, 1, 14, -78 , 0 );
setMoveKey( spep_6 -3 + 132, 1, 14, -77.9 , 0 );
setMoveKey( spep_6 -3 + 134, 1, 14, -78 , 0 );
setMoveKey( spep_6 -3 + 136, 1, 14, -78 , 0 );
setMoveKey( spep_6 -3 + 138, 1, 14, -77.9 , 0 );
setMoveKey( spep_6 -3 + 140, 1, 14, -78 , 0 );
setMoveKey( spep_6 -3 + 142, 1, 14, -78 , 0 );
setMoveKey( spep_6 -3 + 144, 1, 14, -77.9 , 0 );
setMoveKey( spep_6 -3 + 148, 1, 14, -77.9 , 0 );
setMoveKey( spep_6 -3 + 150, 1, 14, -78 , 0 );
setMoveKey( spep_6 -3 + 152, 1, 14, -77.9 , 0 );
setMoveKey( spep_6 -3 + 154, 1, 14, -77.9 , 0 );
setMoveKey( spep_6 -3 + 156, 1, 14, -78 , 0 );
setMoveKey( spep_6 -3 + 158, 1, 14, -77.9 , 0 );
setMoveKey( spep_6 -3 + 160, 1, 14, -77.9 , 0 );
setMoveKey( spep_6 -3 + 162, 1, 14, -78 , 0 );
setMoveKey( spep_6 -3 + 163, 1, 14, -78 , 0 );

setScaleKey( spep_6 + 0, 1, 0.67, 0.67 );
setScaleKey( spep_6 -3 + 5, 1, 0.67, 0.67 );
setScaleKey( spep_6 -3 + 6, 1, 0.87, 0.87 );
setScaleKey( spep_6 -3 + 8, 1, 0.87, 0.87 );
setScaleKey( spep_6 -3 + 10, 1, 0.86, 0.86 );
setScaleKey( spep_6 -3 + 26, 1, 0.86, 0.86 );
setScaleKey( spep_6 -3 + 28, 1, 0.85, 0.85 );
setScaleKey( spep_6 -3 + 30, 1, 0.85, 0.85 );
setScaleKey( spep_6 -3 + 32, 1, 0.87, 0.87 );
setScaleKey( spep_6 -3 + 34, 1, 0.89, 0.89 );
setScaleKey( spep_6 -3 + 36, 1, 0.91, 0.91 );
setScaleKey( spep_6 -3 + 38, 1, 0.93, 0.93 );
setScaleKey( spep_6 -3 + 40, 1, 0.95, 0.95 );
setScaleKey( spep_6 -3 + 42, 1, 0.96, 0.96 );
setScaleKey( spep_6 -3 + 44, 1, 0.98, 0.98 );
setScaleKey( spep_6 -3 + 46, 1, 1, 1 );
setScaleKey( spep_6 -3 + 48, 1, 1.02, 1.02 );
setScaleKey( spep_6 -3 + 50, 1, 1.03, 1.03 );
setScaleKey( spep_6 -3 + 52, 1, 1.05, 1.05 );
setScaleKey( spep_6 -3 + 54, 1, 1.07, 1.07 );
setScaleKey( spep_6 -3 + 56, 1, 1.09, 1.09 );
setScaleKey( spep_6 -3 + 59, 1, 1.1, 1.1 );
setScaleKey( spep_6 -3 + 60, 1, 1.55, 1.55 );
setScaleKey( spep_6 -3 + 62, 1, 1.51, 1.51 );
setScaleKey( spep_6 -3 + 64, 1, 1.48, 1.48 );
setScaleKey( spep_6 -3 + 66, 1, 1.44, 1.44 );
setScaleKey( spep_6 -3 + 68, 1, 1.41, 1.41 );
setScaleKey( spep_6 -3 + 70, 1, 1.38, 1.38 );
setScaleKey( spep_6 -3 + 72, 1, 1.34, 1.34 );
setScaleKey( spep_6 -3 + 74, 1, 1.31, 1.31 );
setScaleKey( spep_6 -3 + 76, 1, 1.29, 1.29 );
setScaleKey( spep_6 -3 + 78, 1, 1.26, 1.26 );
setScaleKey( spep_6 -3 + 80, 1, 1.23, 1.23 );
setScaleKey( spep_6 -3 + 82, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 84, 1, 1.18, 1.18 );
setScaleKey( spep_6 -3 + 86, 1, 1.15, 1.15 );
setScaleKey( spep_6 -3 + 88, 1, 1.13, 1.13 );
setScaleKey( spep_6 -3 + 90, 1, 1.11, 1.11 );
setScaleKey( spep_6 -3 + 92, 1, 1.09, 1.09 );
setScaleKey( spep_6 -3 + 94, 1, 1.07, 1.07 );
setScaleKey( spep_6 -3 + 96, 1, 1.05, 1.05 );
setScaleKey( spep_6 -3 + 98, 1, 1.03, 1.03 );
setScaleKey( spep_6 -3 + 100, 1, 1.01, 1.01 );
setScaleKey( spep_6 -3 + 102, 1, 1, 1 );
setScaleKey( spep_6 -3 + 104, 1, 0.98, 0.98 );
setScaleKey( spep_6 -3 + 106, 1, 0.97, 0.97 );
setScaleKey( spep_6 -3 + 108, 1, 0.96, 0.96 );
setScaleKey( spep_6 -3 + 110, 1, 0.94, 0.94 );
setScaleKey( spep_6 -3 + 112, 1, 0.93, 0.93 );
setScaleKey( spep_6 -3 + 114, 1, 0.92, 0.92 );
setScaleKey( spep_6 -3 + 116, 1, 0.91, 0.91 );
setScaleKey( spep_6 -3 + 118, 1, 0.9, 0.9 );
setScaleKey( spep_6 -3 + 120, 1, 0.89, 0.89 );
setScaleKey( spep_6 -3 + 122, 1, 0.88, 0.88 );
setScaleKey( spep_6 -3 + 124, 1, 0.88, 0.88 );
setScaleKey( spep_6 -3 + 126, 1, 0.87, 0.87 );
setScaleKey( spep_6 -3 + 128, 1, 0.87, 0.87 );
setScaleKey( spep_6 -3 + 130, 1, 0.86, 0.86 );
setScaleKey( spep_6 -3 + 132, 1, 0.86, 0.86 );
setScaleKey( spep_6 -3 + 134, 1, 0.85, 0.85 );
setScaleKey( spep_6 -3 + 138, 1, 0.85, 0.85 );
setScaleKey( spep_6 -3 + 140, 1, 0.84, 0.84 );
setScaleKey( spep_6 -3 + 144, 1, 0.84, 0.84 );
setScaleKey( spep_6 -3 + 146, 1, 0.83, 0.83 );
setScaleKey( spep_6 -3 + 148, 1, 0.83, 0.83 );
setScaleKey( spep_6 -3 + 150, 1, 0.82, 0.82 );
setScaleKey( spep_6 -3 + 154, 1, 0.82, 0.82 );
setScaleKey( spep_6 -3 + 156, 1, 0.81, 0.81 );
setScaleKey( spep_6 -3 + 158, 1, 0.81, 0.81 );
setScaleKey( spep_6 -3 + 160, 1, 0.8, 0.8 );
setScaleKey( spep_6 -3 + 163, 1, 0.8, 0.8 );

setRotateKey( spep_6 + 0, 1, 26.7 );
setRotateKey( spep_6 -3 + 5, 1, 26.7 );
setRotateKey( spep_6 -3 + 6, 1, 47.4 );
setRotateKey( spep_6 -3 + 8, 1, 48 );
setRotateKey( spep_6 -3 + 10, 1, 48.5 );
setRotateKey( spep_6 -3 + 12, 1, 49 );
setRotateKey( spep_6 -3 + 14, 1, 49.6 );
setRotateKey( spep_6 -3 + 16, 1, 50.1 );
setRotateKey( spep_6 -3 + 18, 1, 50.6 );
setRotateKey( spep_6 -3 + 20, 1, 51.1 );
setRotateKey( spep_6 -3 + 22, 1, 51.7 );
setRotateKey( spep_6 -3 + 24, 1, 52.2 );
setRotateKey( spep_6 -3 + 26, 1, 52.7 );
setRotateKey( spep_6 -3 + 28, 1, 53.3 );
setRotateKey( spep_6 -3 + 30, 1, 53.8 );
setRotateKey( spep_6 -3 + 32, 1, 54.3 );
setRotateKey( spep_6 -3 + 34, 1, 54.8 );
setRotateKey( spep_6 -3 + 36, 1, 55.4 );
setRotateKey( spep_6 -3 + 38, 1, 55.9 );
setRotateKey( spep_6 -3 + 40, 1, 56.4 );
setRotateKey( spep_6 -3 + 42, 1, 57 );
setRotateKey( spep_6 -3 + 44, 1, 57.5 );
setRotateKey( spep_6 -3 + 46, 1, 58 );
setRotateKey( spep_6 -3 + 48, 1, 58.5 );
setRotateKey( spep_6 -3 + 50, 1, 59.1 );
setRotateKey( spep_6 -3 + 52, 1, 59.6 );
setRotateKey( spep_6 -3 + 54, 1, 60.1 );
setRotateKey( spep_6 -3 + 56, 1, 60.7 );
setRotateKey( spep_6 -3 + 59, 1, 61.2 );
setRotateKey( spep_6 -3 + 60, 1, 0 );
setRotateKey( spep_6 -3 + 163, 1, 0 );

-- ** 音 ** --
--敵ヒット
SE066 = playSeVer2( spep_6 + 4, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 4, SE066, 100 );

--敵吹っ飛ぶ
SE067 = playSeVer2( spep_6 + 62, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 62, SE067, 120 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 160 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 6 );
endPhase( spep_6 + 150 );

end