--1020940_ミラ_ダークかめはめ波
--sp_effect_a1_00254
--sp2084

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
SP_01 = 156088;	 --導入、気弾タメ(ef_001)
SP_02 = 156089;	 --気弾タメ→発射：キャラ(ef_002)
SP_03 = 156090;	 --気弾タメ→発射：背景(ef_003)

--敵側
SP_02r = 156091;	 --気弾タメ→発射：キャラ_敵用(ef_002_r)

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

ENABLE_AUTO_TIME_STRETCH(1.0);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 導入、気弾タメ(236F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --導入、気弾タメ(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 236, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 236, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 236, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 236, first_f, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 143, 906, 93, 0x100, -1, 0, 0, 0 ); --集中線
setEffShake( spep_0 + 143, shuchusen1, 93, 25 );
setEffMoveKey( spep_0 + 143, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_0 + 236, shuchusen1, 0, 0, 0 );
setEffScaleKey( spep_0 + 143, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 236, shuchusen1, 1.4, 1.4 );
setEffAlphaKey( spep_0 + 143, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 236, shuchusen1, 255 );
setEffRotateKey( spep_0 + 143, shuchusen1, 0 );
setEffRotateKey( spep_0 + 236, shuchusen1, 0 );

spep_x = spep_0 + 130;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 2000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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

-- ** 背景 ** --
--entryFadeBg( spep_0 + 0, 0, 400, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--構え1
SE001 = playSe( spep_0 + 36, 1026 );
setStartTimeMs( SE001,  100 );

--構え2
SE002 = playSe( spep_0 + 42, 1003 );

--ダークかめはめ波溜め1
SE003 = playSe( spep_0 + 70, 1161 );
setSeVolumeByWorkId( spep_0 + 70, SE003, 0 );
setSeVolumeByWorkId( spep_0 + 73, SE003, 5 );
setSeVolumeByWorkId( spep_0 + 76, SE003, 10 );
setSeVolumeByWorkId( spep_0 + 79, SE003, 20 );
setSeVolumeByWorkId( spep_0 + 82, SE003, 30 );
setSeVolumeByWorkId( spep_0 + 85, SE003, 40 );
setSeVolumeByWorkId( spep_0 + 88, SE003, 50 );
setSeVolumeByWorkId( spep_0 + 93, SE003, 60 );
setSeVolumeByWorkId( spep_0 + 96, SE003, 71 );
stopSe( spep_0 +236 + 16, SE003, 0 );
--setStartTimeMs( SE003,  3033 );

--ダークかめはめ波溜め2
SE004 = playSe( spep_0 + 70, 1271 );
setSeVolumeByWorkId( spep_0 + 70, SE004, 178 );
stopSe( spep_0 +236 + 16, SE004, 0 );
--setStartTimeMs( SE004,  3033 );

--ダークかめはめ波溜め3
SE005 = playSe( spep_0 + 74, 1209 );
setSeVolumeByWorkId( spep_0 + 74, SE005, 60 );

--ダークかめはめ波溜め4
SE006 = playSe( spep_0 + 74, 1210 );
setSeVolumeByWorkId( spep_0 + 74, SE006, 63 );
stopSe( spep_0 +236 + 10, SE006, 6 );
setPitch( spep_0 + 74, SE006, -600 );
setTimeStretch( SE006, 0.6, 10, 1 );

--顔カットイン
SE007 = playSe( spep_0 + 142, 1018 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 236;


--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
-- 気弾タメ→発射(146F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --気弾タメ→発射：キャラ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 146, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 146, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 146, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --気弾タメ→発射：背景(ef_003)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 146, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 146, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 146, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 100 );

setMoveKey( spep_2 + 0, 1, 208.6, 196.8 , 0 );
setMoveKey( spep_2 + 1, 1, 208.6, 196.8 , 0 );
setMoveKey( spep_2 + 2, 1, 208.5, 196.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 208.5, 196.6 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 208.4, 196.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 208.2, 196.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 208.1, 195.8 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 207.8, 195.4 , 0 );

setScaleKey( spep_2 + 0, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 1, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 2, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 3, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 4, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 5, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 6, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 12, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 14, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 16, 1, 0.36, 0.36 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 1, 1, 0 );
setRotateKey( spep_2 + 2, 1, 0 );
setRotateKey( spep_2 + 3, 1, 0 );
setRotateKey( spep_2 + 4, 1, 0 );
setRotateKey( spep_2 + 5, 1, 0 );
setRotateKey( spep_2 + 6, 1, 0 );

-- ** 白背景 ** --
entryFade( spep_2 + 0, 0, 2, 4, 245, 245, 245, 255 );


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
	setMoveKey( SP_dodge + 0, 1, 207.8, 195.4 , 0 );
	setMoveKey( SP_dodge + 2, 1, 207.5, 194.8 , 0 );
	setMoveKey( SP_dodge + 4, 1, 207.2, 194.2 , 0 );
	setMoveKey( SP_dodge + 6, 1, 206.8, 193.4 , 0 );
	setMoveKey( SP_dodge + 8, 1, 206.5, 192.6 , 0 );
	setMoveKey( SP_dodge + 10, 1, 206.5, 192.6 , 0 );

	setScaleKey( SP_dodge + 0, 1, 0.36, 0.36 );
	setScaleKey( SP_dodge + 2, 1, 0.35, 0.35 );
	setScaleKey( SP_dodge + 4, 1, 0.34, 0.34 );
	setScaleKey( SP_dodge + 6, 1, 0.33, 0.33 );
	setScaleKey( SP_dodge + 8, 1, 0.32, 0.32 );
	setScaleKey( SP_dodge + 10, 1, 0.3, 0.3 );

	setRotateKey( SP_dodge + 0, 1, 0 );
	setRotateKey( SP_dodge + 2, 1, 0 );
	setRotateKey( SP_dodge + 4, 1, 0 );
	setRotateKey( SP_dodge + 6, 1, 0 );
	setRotateKey( SP_dodge + 8, 1, 0 );
	setRotateKey( SP_dodge + 10, 1, 0 );
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
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

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 -3 + 28,  10012, 26, 0x100, -1, 0, 9.6, 282.4 );	--ズォッ
setEffMoveKey( spep_2 -3 + 28, ctzuo, 9.6, 282.4 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctzuo, 26.1, 318.3 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctzuo, 22.9, 366.4 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctzuo, 40.7, 353.3 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctzuo, 26.3, 372.4 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctzuo, 44.2, 359.1 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctzuo, 29.5, 378.5 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctzuo, 47.8, 364.9 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctzuo, 32.8, 384.5 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctzuo, 51.3, 370.8 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctzuo, 36.1, 390.6 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctzuo, 54.8, 376.6 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctzuo, 72.3, 403.3 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctzuo, 106.9, 412.9 , 0 );

setEffScaleKey( spep_2 -3 + 28, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2 -3 + 30, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_2 -3 + 32, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 -3 + 34, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_2 -3 + 36, ctzuo, 2.77, 2.77 );
setEffScaleKey( spep_2 -3 + 38, ctzuo, 2.79, 2.79 );
setEffScaleKey( spep_2 -3 + 40, ctzuo, 2.81, 2.81 );
setEffScaleKey( spep_2 -3 + 42, ctzuo, 2.82, 2.82 );
setEffScaleKey( spep_2 -3 + 44, ctzuo, 2.84, 2.84 );
setEffScaleKey( spep_2 -3 + 46, ctzuo, 2.86, 2.86 );
setEffScaleKey( spep_2 -3 + 48, ctzuo, 2.88, 2.88 );
setEffScaleKey( spep_2 -3 + 50, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_2 -3 + 52, ctzuo, 4.86, 4.86 );
setEffScaleKey( spep_2 -3 + 54, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2 -3 + 28, ctzuo, 9.7 );
setEffRotateKey( spep_2 -3 + 30, ctzuo, 18.4 );
setEffRotateKey( spep_2 -3 + 32, ctzuo, 27.2 );
setEffRotateKey( spep_2 -3 + 54, ctzuo, 27.2 );

setEffAlphaKey( spep_2 -3 + 28, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 50, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 52, ctzuo, 128 );
setEffAlphaKey( spep_2 -3 + 54, ctzuo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 55, 1, 0 );

setMoveKey( spep_2 -3 + 18, 1, 207.5, 194.8 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 207.2, 194.2 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 206.8, 193.4 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 206.5, 192.6 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 206.1, 191.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 206.1, 191.7 , 0 );

setScaleKey( spep_2 -3 + 18, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 20, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 22, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 24, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 26, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 58, 1, 0.3, 0.3 );

setRotateKey( spep_2 -3 + 18, 1, 0 );
setRotateKey( spep_2 -3 + 58, 1, 0 );

-- ** 音 ** --
--かめはめ波発射1
SE009 = playSe( spep_2 + 30, 1146 );
setSeVolumeByWorkId( spep_2 + 30, SE009, 0 );
setSeVolumeByWorkId( spep_2 + 31, SE009, 29 );
setSeVolumeByWorkId( spep_2 + 32, SE009, 54 );
setSeVolumeByWorkId( spep_2 + 33, SE009, 79 );
setSeVolumeByWorkId( spep_2 + 34, SE009, 112 );
stopSe( spep_2 + 76, SE009, 18 );
setStartTimeMs( SE009,  267 );

--かめはめ波発射2
SE010 = playSe( spep_2 + 32, 1027 );
setSeVolumeByWorkId( spep_2 + 32, SE010, 89 );

--かめはめ波発射3
SE011 = playSe( spep_2 + 32, 1024 );
setSeVolumeByWorkId( spep_2 + 32, SE011, 82 );

--爆発1
SE012 = playSe( spep_2 + 66, 1023 );
--爆発2
SE013 = playSe( spep_2 + 66, 1159 );
setSeVolumeByWorkId( spep_2 + 66, SE013, 79 );

-- ** 白背景 ** --
entryFade( spep_2 + 55, 0, 2, 0, 245, 245, 245, 255 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 36 +20 );
endPhase( spep_2 + 136 +20);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 導入、気弾タメ(236F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --導入、気弾タメ(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 236, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 236, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 236, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 236, first_f, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 143, 906, 93, 0x100, -1, 0, 0, 0 ); --集中線
setEffShake( spep_0 + 143, shuchusen1, 93, 25 );
setEffMoveKey( spep_0 + 143, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_0 + 236, shuchusen1, 0, 0, 0 );
setEffScaleKey( spep_0 + 143, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 236, shuchusen1, 1.4, 1.4 );
setEffAlphaKey( spep_0 + 143, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 236, shuchusen1, 255 );
setEffRotateKey( spep_0 + 143, shuchusen1, 0 );
setEffRotateKey( spep_0 + 236, shuchusen1, 0 );

spep_x = spep_0 + 130;
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

-- ** 背景 ** --
--entryFadeBg( spep_0 + 0, 0, 400, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--構え1
SE001 = playSe( spep_0 + 36, 1026 );
setStartTimeMs( SE001,  100 );

--構え2
SE002 = playSe( spep_0 + 42, 1003 );

--ダークかめはめ波溜め1
SE003 = playSe( spep_0 + 70, 1161 );
setSeVolumeByWorkId( spep_0 + 70, SE003, 0 );
setSeVolumeByWorkId( spep_0 + 73, SE003, 5 );
setSeVolumeByWorkId( spep_0 + 76, SE003, 10 );
setSeVolumeByWorkId( spep_0 + 79, SE003, 20 );
setSeVolumeByWorkId( spep_0 + 82, SE003, 30 );
setSeVolumeByWorkId( spep_0 + 85, SE003, 40 );
setSeVolumeByWorkId( spep_0 + 88, SE003, 50 );
setSeVolumeByWorkId( spep_0 + 93, SE003, 60 );
setSeVolumeByWorkId( spep_0 + 96, SE003, 71 );
stopSe( spep_0 +236 + 16, SE003, 0 );
--setStartTimeMs( SE003,  3033 );

--ダークかめはめ波溜め2
SE004 = playSe( spep_0 + 70, 1271 );
setSeVolumeByWorkId( spep_0 + 70, SE004, 178 );
stopSe( spep_0 +236 + 16, SE004, 0 );
--setStartTimeMs( SE004,  3033 );

--ダークかめはめ波溜め3
SE005 = playSe( spep_0 + 74, 1209 );
setSeVolumeByWorkId( spep_0 + 74, SE005, 60 );

--ダークかめはめ波溜め4
SE006 = playSe( spep_0 + 74, 1210 );
setSeVolumeByWorkId( spep_0 + 74, SE006, 63 );
stopSe( spep_0 +236 + 10, SE006, 6 );
setPitch( spep_0 + 74, SE006, -600 );
setTimeStretch( SE006, 0.6, 10, 1 );

--顔カットイン
--SE007 = playSe( spep_0 + 142, 1018 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 236;


--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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
SE_CUTIN = playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 気弾タメ→発射(146F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --気弾タメ→発射：キャラ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 146, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 146, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 146, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --気弾タメ→発射：背景(ef_003)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 146, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 146, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 146, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 100 );

setMoveKey( spep_2 + 0, 1, 208.6, 196.8 , 0 );
setMoveKey( spep_2 + 1, 1, 208.6, 196.8 , 0 );
setMoveKey( spep_2 + 2, 1, 208.5, 196.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 208.5, 196.6 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 208.4, 196.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 208.2, 196.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 208.1, 195.8 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 207.8, 195.4 , 0 );

setScaleKey( spep_2 + 0, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 1, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 2, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 3, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 4, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 5, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 6, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 12, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 14, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 16, 1, 0.36, 0.36 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 1, 1, 0 );
setRotateKey( spep_2 + 2, 1, 0 );
setRotateKey( spep_2 + 3, 1, 0 );
setRotateKey( spep_2 + 4, 1, 0 );
setRotateKey( spep_2 + 5, 1, 0 );
setRotateKey( spep_2 + 6, 1, 0 );

-- ** 白背景 ** --
entryFade( spep_2 + 0, 0, 2, 4, 245, 245, 245, 255 );


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 207.8, 195.4 , 0 );
    setMoveKey( SP_dodge + 2, 1, 207.5, 194.8 , 0 );
    setMoveKey( SP_dodge + 4, 1, 207.2, 194.2 , 0 );
    setMoveKey( SP_dodge + 6, 1, 206.8, 193.4 , 0 );
    setMoveKey( SP_dodge + 8, 1, 206.5, 192.6 , 0 );
    setMoveKey( SP_dodge + 10, 1, 206.5, 192.6 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.36, 0.36 );
    setScaleKey( SP_dodge + 2, 1, 0.35, 0.35 );
    setScaleKey( SP_dodge + 4, 1, 0.34, 0.34 );
    setScaleKey( SP_dodge + 6, 1, 0.33, 0.33 );
    setScaleKey( SP_dodge + 8, 1, 0.32, 0.32 );
    setScaleKey( SP_dodge + 10, 1, 0.3, 0.3 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 2, 1, 0 );
    setRotateKey( SP_dodge + 4, 1, 0 );
    setRotateKey( SP_dodge + 6, 1, 0 );
    setRotateKey( SP_dodge + 8, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    
    --キャラクターの固定
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
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

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 -3 + 28,  10012, 26, 0x100, -1, 0, 9.6, 282.4 );    --ズォッ
setEffMoveKey( spep_2 -3 + 28, ctzuo, 9.6, 282.4 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctzuo, 26.1, 318.3 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctzuo, 22.9, 366.4 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctzuo, 40.7, 353.3 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctzuo, 26.3, 372.4 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctzuo, 44.2, 359.1 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctzuo, 29.5, 378.5 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctzuo, 47.8, 364.9 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctzuo, 32.8, 384.5 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctzuo, 51.3, 370.8 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctzuo, 36.1, 390.6 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctzuo, 54.8, 376.6 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctzuo, 72.3, 403.3 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctzuo, 106.9, 412.9 , 0 );

setEffScaleKey( spep_2 -3 + 28, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2 -3 + 30, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_2 -3 + 32, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 -3 + 34, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_2 -3 + 36, ctzuo, 2.77, 2.77 );
setEffScaleKey( spep_2 -3 + 38, ctzuo, 2.79, 2.79 );
setEffScaleKey( spep_2 -3 + 40, ctzuo, 2.81, 2.81 );
setEffScaleKey( spep_2 -3 + 42, ctzuo, 2.82, 2.82 );
setEffScaleKey( spep_2 -3 + 44, ctzuo, 2.84, 2.84 );
setEffScaleKey( spep_2 -3 + 46, ctzuo, 2.86, 2.86 );
setEffScaleKey( spep_2 -3 + 48, ctzuo, 2.88, 2.88 );
setEffScaleKey( spep_2 -3 + 50, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_2 -3 + 52, ctzuo, 4.86, 4.86 );
setEffScaleKey( spep_2 -3 + 54, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2 -3 + 28, ctzuo, 9.7 );
setEffRotateKey( spep_2 -3 + 30, ctzuo, 18.4 );
setEffRotateKey( spep_2 -3 + 32, ctzuo, 27.2 );
setEffRotateKey( spep_2 -3 + 54, ctzuo, 27.2 );

setEffAlphaKey( spep_2 -3 + 28, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 50, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 52, ctzuo, 128 );
setEffAlphaKey( spep_2 -3 + 54, ctzuo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 55, 1, 0 );

setMoveKey( spep_2 -3 + 18, 1, 207.5, 194.8 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 207.2, 194.2 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 206.8, 193.4 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 206.5, 192.6 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 206.1, 191.7 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 206.1, 191.7 , 0 );

setScaleKey( spep_2 -3 + 18, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 20, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 22, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 24, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 26, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 58, 1, 0.3, 0.3 );

setRotateKey( spep_2 -3 + 18, 1, 0 );
setRotateKey( spep_2 -3 + 58, 1, 0 );

-- ** 音 ** --
--かめはめ波発射1
SE009 = playSe( spep_2 + 30, 1146 );
setSeVolumeByWorkId( spep_2 + 30, SE009, 0 );
setSeVolumeByWorkId( spep_2 + 31, SE009, 29 );
setSeVolumeByWorkId( spep_2 + 32, SE009, 54 );
setSeVolumeByWorkId( spep_2 + 33, SE009, 79 );
setSeVolumeByWorkId( spep_2 + 34, SE009, 112 );
stopSe( spep_2 + 76, SE009, 18 );
setStartTimeMs( SE009,  267 );

--かめはめ波発射2
SE010 = playSe( spep_2 + 32, 1027 );
setSeVolumeByWorkId( spep_2 + 32, SE010, 89 );

--かめはめ波発射3
SE011 = playSe( spep_2 + 32, 1024 );
setSeVolumeByWorkId( spep_2 + 32, SE011, 82 );

--爆発1
SE012 = playSe( spep_2 + 66, 1023 );
--爆発2
SE013 = playSe( spep_2 + 66, 1159 );
setSeVolumeByWorkId( spep_2 + 66, SE013, 79 );

-- ** 白背景 ** --
entryFade( spep_2 + 55, 0, 2, 0, 245, 245, 245, 255 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 36 +20 );
endPhase( spep_2 + 136 +20 );

end