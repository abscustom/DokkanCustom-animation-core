--1025870:LR_超サイヤ人孫悟空_スーパーかめはめ波
--sp_effect_b1_00233
--sp2510

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
SP_01 = 161132;	--全員の気溜め	ef_001
SP_02 = 161134;	--ベジータの攻撃	ef_002_fromt
SP_03 = 161135;	--ベジータの攻撃	ef_002_back
SP_04 = 161138;	--悟飯、トランクス、ピッコロの攻撃	ef_003_front
SP_05 = 161139;	--悟飯、トランクス、ピッコロの攻撃	ef_003_back
SP_06 = 161142;	--かめはめ波～フィニッシュ	ef_004_front
SP_07 = 161143;	--かめはめ波～フィニッシュ	ef_004_back

--敵側
SP_01r = 161133;	--全員の気溜め（敵側）	ef_001_r
SP_02r = 161136;	--ベジータの攻撃（敵側）	ef_002_r_front
SP_03r = 161137;	--ベジータの攻撃（敵側）	ef_002_r_back
SP_04r = 161140;	--悟飯、トランクス、ピッコロの攻撃（敵側）	ef_003_r_front
SP_05r = 161141;	--悟飯、トランクス、ピッコロの攻撃（敵側）	ef_003_r_back
SP_06r = 161144;	--かめはめ波～フィニッシュ（敵側）	ef_004_r_front
SP_07r = 161145;	--かめはめ波～フィニッシュ（敵側）	ef_004_r_back

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
-- 全員の気溜め(422F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --全員の気溜め	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 422, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 422, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 422, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 422 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 422 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 422, first_f, 0 );

spep_x = spep_0 + 4;
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--顔カットイン
SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--悟空気ダメ
SE002 = playSeVer2( spep_0 + 92, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE002, 65 );
SE003 = playSeVer2( spep_0 + 92, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE003, 126 );

--悟飯気ダメ
SE004 = playSeVer2( spep_0 + 142, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE004, 123 );
setPitch( spep_0 + 142, SE004, 200 );
setTimeStretch( SE004, 1.13, 30, 4 );

--ピッコロ気ダメ
SE005 = playSeVer2( spep_0 + 180, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE005, 52 );
SE006 = playSeVer2( spep_0 + 180, 1035, "", 0, 0, 0, -1);
setPitch( spep_0 + 180, SE006, -200 );
setTimeStretch( SE006, 0.87, 30, 4 );

--トランクス気ダメ
SE007 = playSeVer2( spep_0 + 222, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 222, SE007, 129 );
SE008 = playSeVer2( spep_0 + 222, 1011, "", 0, 0, 0, -1);

--ベジータ気ダメ
SE009 = playSeVer2( spep_0 + 262, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 262, SE009, 126 );
SE010 = playSeVer2( spep_0 + 262, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 262, SE010, 79 );

--オーラ
SE011 = playSeVer2( spep_0 + 298, 1036, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 322, 1036, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 346, 1036, "", 0, 0, 0, -1);

--構える
SE012 = playSeVer2( spep_0 + 306, 1004, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 422 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 364 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
   
    pauseAll( SP_dodge, 67);    
    
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

-- ** 音 ** --
--オーラ
SE018 = playSeVer2( spep_0 + 370, 1036, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 394, 1036, "", 0, 0, 0, -1);

--全員向かってくる
SE015 = playSeVer2( spep_0 + 366, 1182, "",spep_0 + 432, 0, 10, -1);
SE016 = playSeVer2( spep_0 + 366, 1207, "",spep_0 + 432, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 366, SE016, 56 );
SE017 = playSeVer2( spep_0 + 366, 9, "",spep_0 + 432, 0, 10, -1);
SE019 = playSeVer2( spep_0 + 376, 1117, "",spep_0 + 432, 0, 10, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + 422;

--------------------------------------
--カードカットイン(94F) 
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
	print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_c, SE_05);
	speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_c, SE_05);
	speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_c + 94;

------------------------------------------------------
-- ベジータの攻撃(56F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
bpunch_f = entryEffectLife( spep_2 + 0, SP_02, 56, 0x100, -1, 0, 0, 0 );  --ベジータの攻撃	ef_002_fromt
setEffMoveKey( spep_2 + 0, bpunch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, bpunch_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, bpunch_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, bpunch_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, bpunch_f, 0 );
setEffRotateKey( spep_2 + 56, bpunch_f, 0 );
setEffAlphaKey( spep_2 + 0, bpunch_f, 255 );
setEffAlphaKey( spep_2 + 56 -2, bpunch_f, 255 );
setEffAlphaKey( spep_2 + 56 -1, bpunch_f, 255 );
setEffAlphaKey( spep_2 + 56, bpunch_f, 0 );

bpunch_b = entryEffectLife( spep_2 + 0, SP_03, 56, 0x80, -1, 0, 0, 0 );  --ベジータの攻撃	ef_002_back
setEffMoveKey( spep_2 + 0, bpunch_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, bpunch_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, bpunch_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, bpunch_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, bpunch_b, 0 );
setEffRotateKey( spep_2 + 56, bpunch_b, 0 );
setEffAlphaKey( spep_2 + 0, bpunch_b, 255 );
setEffAlphaKey( spep_2 + 56 -2, bpunch_b, 255 );
setEffAlphaKey( spep_2 + 56 -1, bpunch_b, 255 );
setEffAlphaKey( spep_2 + 56, bpunch_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 + 1 + 30, 1, 5 );

setMoveKey( spep_2 + 0, 1, 178, 351 , 0 );
setMoveKey( spep_2 + 2, 1, 178, 351 , 0 );
setMoveKey( spep_2 + 3, 1, 173.1, 334 , 0 );
setMoveKey( spep_2 +1 + 4, 1, 168.1, 317 , 0 );
setMoveKey( spep_2 +1 + 6, 1, 163.2, 300.1 , 0 );
setMoveKey( spep_2 +1 + 8, 1, 158.2, 283 , 0 );
setMoveKey( spep_2 +1 + 10, 1, 153.3, 266 , 0 );
setMoveKey( spep_2 +1 + 12, 1, 148.3, 249.1 , 0 );
setMoveKey( spep_2 +1 + 14, 1, 143.4, 232.1 , 0 );
setMoveKey( spep_2 +1 + 16, 1, 138.4, 215.1 , 0 );
setMoveKey( spep_2 +1 + 18, 1, 133.5, 198.1 , 0 );
setMoveKey( spep_2 +1 + 19, 1, 133.5, 198.1 , 0 );
setMoveKey( spep_2 +1 + 20, 1, -24.3, -63.8 , 0 );
setMoveKey( spep_2 +1 + 21, 1, -24.3, -63.8 , 0 );
setMoveKey( spep_2 +1 + 22, 1, -22, -86.6 , 0 );
setMoveKey( spep_2 +1 + 23, 1, -22, -86.6 , 0 );
setMoveKey( spep_2 +1 + 24, 1, -19.6, -109.4 , 0 );
setMoveKey( spep_2 +1 + 25, 1, -19.6, -109.4 , 0 );
setMoveKey( spep_2 +1 + 26, 1, -17.3, -132.2 , 0 );
setMoveKey( spep_2 +1 + 27, 1, -17.3, -132.2 , 0 );
setMoveKey( spep_2 +1 + 28, 1, 13.1, -107 , 0 );
setMoveKey( spep_2 +1 + 29, 1, 13.1, -107 , 0 );
setMoveKey( spep_2 +1 + 30, 1, 49.8, -97.1 , 0 );
setMoveKey( spep_2 +1 + 31, 1, 49.8, -97.1 , 0 );
setMoveKey( spep_2 +1 + 32, 1, 108.1, 49.7 , 0 );
setMoveKey( spep_2 +1 + 33, 1, 108.1, 49.7 , 0 );
setMoveKey( spep_2 +1 + 34, 1, -98.9, -72.5 , 0 );
setMoveKey( spep_2 +1 + 35, 1, -98.9, -72.5 , 0 );
setMoveKey( spep_2 +1 + 36, 1, 136.3, -12.3 , 0 );
setMoveKey( spep_2 +1 + 37, 1, 136.3, -12.3 , 0 );
setMoveKey( spep_2 +1 + 38, 1, 50.9, 275.9 , 0 );
setMoveKey( spep_2 +1 + 39, 1, 50.9, 275.9 , 0 );
setMoveKey( spep_2 +1 + 40, 1, 50.6, 161.4 , 0 );
setMoveKey( spep_2 +1 + 42, 1, 14.9, 228 , 0 );
setMoveKey( spep_2 +1 + 44, 1, 48.5, 246.9 , 0 );
setMoveKey( spep_2 +1 + 46, 1, 48.3, 249 , 0 );
setMoveKey( spep_2 +1 + 48, 1, 45.5, 240.5 , 0 );
setMoveKey( spep_2 +1 + 50, 1, 40.7, 223.8 , 0 );
setMoveKey( spep_2 +1 + 52, 1, 34.6, 200.9 , 0 );
setMoveKey( spep_2 +1 + 54, 1, 27.3, 173.8 , 0 );
--setMoveKey( spep_2 -3 + 55, 1, 27.3, 173.8 , 0 );

setScaleKey( spep_2 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 2, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 3, 1, 0.83, 0.83 );
setScaleKey( spep_2 +1 + 4, 1, 0.86, 0.86 );
setScaleKey( spep_2 +1 + 6, 1, 0.88, 0.88 );
setScaleKey( spep_2 +1 + 8, 1, 0.91, 0.91 );
setScaleKey( spep_2 +1 + 10, 1, 0.94, 0.94 );
setScaleKey( spep_2 +1 + 12, 1, 0.97, 0.97 );
setScaleKey( spep_2 +1 + 14, 1, 1, 1 );
setScaleKey( spep_2 +1 + 16, 1, 1.02, 1.02 );
setScaleKey( spep_2 +1 + 18, 1, 1.05, 1.05 );
setScaleKey( spep_2 +1 + 19, 1, 1.05, 1.05 );
setScaleKey( spep_2 +1 + 20, 1, 3.2, 3.2 );
setScaleKey( spep_2 +1 + 21, 1, 3.2, 3.2 );
setScaleKey( spep_2 +1 + 22, 1, 3.52, 3.52 );
setScaleKey( spep_2 +1 + 23, 1, 3.52, 3.52 );
setScaleKey( spep_2 +1 + 24, 1, 3.84, 3.84 );
setScaleKey( spep_2 +1 + 25, 1, 3.84, 3.84 );
setScaleKey( spep_2 +1 + 26, 1, 4.16, 4.16 );
setScaleKey( spep_2 +1 + 27, 1, 4.16, 4.16 );
setScaleKey( spep_2 +1 + 28, 1, 4.48, 4.48 );
setScaleKey( spep_2 +1 + 29, 1, 4.48, 4.48 );
setScaleKey( spep_2 +1 + 30, 1, 6, 6 );
setScaleKey( spep_2 +1 + 31, 1, 6, 6 );
setScaleKey( spep_2 +1 + 32, 1, 6.49, 6.49 );
setScaleKey( spep_2 +1 + 33, 1, 6.49, 6.49 );
setScaleKey( spep_2 +1 + 34, 1, 6.68, 6.68 );
setScaleKey( spep_2 +1 + 35, 1, 6.68, 6.68 );
setScaleKey( spep_2 +1 + 36, 1, 5.49, 5.49 );
setScaleKey( spep_2 +1 + 37, 1, 5.49, 5.49 );
setScaleKey( spep_2 +1 + 38, 1, 4.45, 4.45 );
setScaleKey( spep_2 +1 + 39, 1, 4.45, 4.45 );
setScaleKey( spep_2 +1 + 40, 1, 3.56, 3.56 );
setScaleKey( spep_2 +1 + 42, 1, 2.81, 2.81 );
setScaleKey( spep_2 +1 + 44, 1, 2.17, 2.17 );
setScaleKey( spep_2 +1 + 46, 1, 1.57, 1.57 );
setScaleKey( spep_2 +1 + 48, 1, 1.12, 1.12 );
setScaleKey( spep_2 +1 + 50, 1, 0.79, 0.79 );
setScaleKey( spep_2 +1 + 52, 1, 0.57, 0.57 );
setScaleKey( spep_2 +1 + 54, 1, 0.44, 0.44 );
--setScaleKey( spep_2 -3 + 55, 1, 0.44, 0.44 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 +1 + 29, 1, 0 );
setRotateKey( spep_2 +1 + 30, 1, 44.2 );
setRotateKey( spep_2 +1 + 54, 1, 44.2 );
--setRotateKey( spep_2 -3 + 55, 1, 44.2 );

-- ** 音 ** --
--ベジータパンチ
SE024 = playSeVer2( spep_2 + 18, 1009, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 18, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 18, SE025, 67 );
SE026 = playSeVer2( spep_2 + 22, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE026, 86 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;


------------------------------------------------------
-- 悟飯、トランクス、ピッコロの攻撃(214F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
gtp_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --悟飯、トランクス、ピッコロの攻撃(ef_001)
setEffMoveKey( spep_3 + 0, gtp_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 212, gtp_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gtp_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 212, gtp_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gtp_f, 0 );
setEffRotateKey( spep_3 + 212, gtp_f, 0 );
setEffAlphaKey( spep_3 + 0, gtp_f, 255 );
setEffAlphaKey( spep_3 + 212 -2, gtp_f, 255 );
setEffAlphaKey( spep_3 + 212 -1, gtp_f, 255 );
setEffAlphaKey( spep_3 + 212, gtp_f, 0 );

gtp_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --悟飯、トランクス、ピッコロの攻撃(ef_001)
setEffMoveKey( spep_3 + 0, gtp_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 212, gtp_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gtp_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 212, gtp_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gtp_b, 0 );
setEffRotateKey( spep_3 + 212, gtp_b, 0 );
setEffAlphaKey( spep_3 + 0, gtp_b, 255 );
setEffAlphaKey( spep_3 + 212 -2, gtp_b, 255 );
setEffAlphaKey( spep_3 + 212 -1, gtp_b, 255 );
setEffAlphaKey( spep_3 + 212, gtp_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_3 + 0, 1, 1 );--
setDisp( spep_3 - 55 + 166, 1, 0 );
changeAnime( spep_3 + 0, 1, 5 );
changeAnime( spep_3 -55 + 96, 1, 8 );
changeAnime( spep_3 -55 + 106, 1, 106 );
changeAnime( spep_3 -55 + 116, 1, 8 );
changeAnime( spep_3 -55 + 126, 1, 106 );
changeAnime( spep_3 -55 + 136, 1, 8 );
changeAnime( spep_3 -55 + 146, 1, 106 );
changeAnime( spep_3 -55 + 156, 1, 8 );

setMoveKey( spep_3 + 0, 1, 41.7, -1070.9 , 0 );
setMoveKey( spep_3 + 2, 1, 41.7, -1070.9 , 0 );
setMoveKey( spep_3 + 3, 1, 37.4, -993.1 , 0 );
setMoveKey( spep_3 + 5, 1, 30.3, -893.8 , 0 );
setMoveKey( spep_3 -55 + 62, 1, 21, -777.9 , 0 );
setMoveKey( spep_3 -55 + 64, 1, 10.1, -650 , 0 );
setMoveKey( spep_3 -55 + 66, 1, -1.7, -515.3 , 0 );
setMoveKey( spep_3 -55 + 68, 1, -13.8, -378.4 , 0 );
setMoveKey( spep_3 -55 + 70, 1, -11.6, -324.3 , 0 );
setMoveKey( spep_3 -55 + 72, 1, -10.8, -306.8 , 0 );
setMoveKey( spep_3 -55 + 74, 1, -10, -289.3 , 0 );
setMoveKey( spep_3 -55 + 76, 1, -9.1, -271.8 , 0 );
setMoveKey( spep_3 -55 + 78, 1, -8.3, -254.3 , 0 );
setMoveKey( spep_3 -55 + 80, 1, -7.5, -236.8 , 0 );
setMoveKey( spep_3 -55 + 82, 1, -6.7, -219.2 , 0 );
setMoveKey( spep_3 -55 + 84, 1, -5.9, -201.7 , 0 );
setMoveKey( spep_3 -55 + 86, 1, -5, -184.2 , 0 );
setMoveKey( spep_3 -55 + 88, 1, -4.2, -166.7 , 0 );
setMoveKey( spep_3 -55 + 90, 1, -3.4, -149.2 , 0 );
setMoveKey( spep_3 -55 + 92, 1, -2.6, -131.7 , 0 );
setMoveKey( spep_3 -55 + 95, 1, -1.8, -114.2 , 0 );
setMoveKey( spep_3 -55 + 96, 1, -54.2, 34.8 , 0 );
setMoveKey( spep_3 -55 + 97, 1, -54.2, 34.8 , 0 );
setMoveKey( spep_3 -55 + 98, 1, -32.7, 15.2 , 0 );
setMoveKey( spep_3 -55 + 99, 1, -32.7, 15.2 , 0 );
setMoveKey( spep_3 -55 + 100, 1, -41.1, 19.7 , 0 );
setMoveKey( spep_3 -55 + 101, 1, -41.1, 19.7 , 0 );
setMoveKey( spep_3 -55 + 102, 1, -49.5, 24.2 , 0 );
setMoveKey( spep_3 -55 + 103, 1, -49.5, 24.2 , 0 );
setMoveKey( spep_3 -55 + 104, 1, -58, 28.6 , 0 );
setMoveKey( spep_3 -55 + 105, 1, -58, 28.6 , 0 );
setMoveKey( spep_3 -55 + 106, 1, 8.2, 33.8 , 0 );
setMoveKey( spep_3 -55 + 107, 1, 8.2, 33.8 , 0 );
setMoveKey( spep_3 -55 + 108, 1, -2.7, 32.9 , 0 );
setMoveKey( spep_3 -55 + 109, 1, -2.7, 32.9 , 0 );
setMoveKey( spep_3 -55 + 110, 1, 11, 32.3 , 0 );
setMoveKey( spep_3 -55 + 111, 1, 11, 32.3 , 0 );
setMoveKey( spep_3 -55 + 112, 1, 19.2, 31.9 , 0 );
setMoveKey( spep_3 -55 + 113, 1, 19.2, 31.9 , 0 );
setMoveKey( spep_3 -55 + 114, 1, 21.9, 31.8 , 0 );
setMoveKey( spep_3 -55 + 115, 1, 21.9, 31.8 , 0 );
setMoveKey( spep_3 -55 + 116, 1, -36.2, 32.8 , 0 );
setMoveKey( spep_3 -55 + 117, 1, -36.2, 32.8 , 0 );
setMoveKey( spep_3 -55 + 118, 1, -32.7, 15.2 , 0 );
setMoveKey( spep_3 -55 + 119, 1, -32.7, 15.2 , 0 );
setMoveKey( spep_3 -55 + 120, 1, -41.1, 19.7 , 0 );
setMoveKey( spep_3 -55 + 121, 1, -41.1, 19.7 , 0 );
setMoveKey( spep_3 -55 + 122, 1, -49.5, 24.2 , 0 );
setMoveKey( spep_3 -55 + 123, 1, -49.5, 24.2 , 0 );
setMoveKey( spep_3 -55 + 124, 1, -58, 28.6 , 0 );
setMoveKey( spep_3 -55 + 125, 1, -58, 28.6 , 0 );
setMoveKey( spep_3 -55 + 126, 1, 0.2, 27.8 , 0 );
setMoveKey( spep_3 -55 + 127, 1, 0.2, 27.8 , 0 );
setMoveKey( spep_3 -55 + 128, 1, -2.7, 32.9 , 0 );
setMoveKey( spep_3 -55 + 129, 1, -2.7, 32.9 , 0 );
setMoveKey( spep_3 -55 + 130, 1, 11, 32.3 , 0 );
setMoveKey( spep_3 -55 + 131, 1, 11, 32.3 , 0 );
setMoveKey( spep_3 -55 + 132, 1, 19.2, 31.9 , 0 );
setMoveKey( spep_3 -55 + 133, 1, 19.2, 31.9 , 0 );
setMoveKey( spep_3 -55 + 134, 1, 21.9, 31.8 , 0 );
setMoveKey( spep_3 -55 + 135, 1, 21.9, 31.8 , 0 );
setMoveKey( spep_3 -55 + 136, 1, -36.2, 20.8 , 0 );
setMoveKey( spep_3 -55 + 137, 1, -36.2, 20.8 , 0 );
setMoveKey( spep_3 -55 + 138, 1, -32.7, 15.2 , 0 );
setMoveKey( spep_3 -55 + 139, 1, -32.7, 15.2 , 0 );
setMoveKey( spep_3 -55 + 140, 1, -41.1, 19.7 , 0 );
setMoveKey( spep_3 -55 + 141, 1, -41.1, 19.7 , 0 );
setMoveKey( spep_3 -55 + 142, 1, -49.5, 24.2 , 0 );
setMoveKey( spep_3 -55 + 143, 1, -49.5, 24.2 , 0 );
setMoveKey( spep_3 -55 + 144, 1, -58, 28.6 , 0 );
setMoveKey( spep_3 -55 + 145, 1, -58, 28.6 , 0 );
setMoveKey( spep_3 -55 + 146, 1, -7.8, 39.8 , 0 );
setMoveKey( spep_3 -55 + 147, 1, -7.8, 39.8 , 0 );
setMoveKey( spep_3 -55 + 148, 1, -2.7, 32.9 , 0 );
setMoveKey( spep_3 -55 + 149, 1, -2.7, 32.9 , 0 );
setMoveKey( spep_3 -55 + 150, 1, 11, 32.3 , 0 );
setMoveKey( spep_3 -55 + 151, 1, 11, 32.3 , 0 );
setMoveKey( spep_3 -55 + 152, 1, 19.2, 31.9 , 0 );
setMoveKey( spep_3 -55 + 153, 1, 19.2, 31.9 , 0 );
setMoveKey( spep_3 -55 + 154, 1, 21.9, 31.8 , 0 );
setMoveKey( spep_3 -55 + 155, 1, 21.9, 31.8 , 0 );
setMoveKey( spep_3 -55 + 156, 1, -42.2, 20.8 , 0 );
setMoveKey( spep_3 -55 + 157, 1, -42.2, 20.8 , 0 );
setMoveKey( spep_3 -55 + 158, 1, -32.7, 15.2 , 0 );
setMoveKey( spep_3 -55 + 159, 1, -32.7, 15.2 , 0 );
setMoveKey( spep_3 -55 + 160, 1, -41.1, 19.7 , 0 );
setMoveKey( spep_3 -55 + 161, 1, -41.1, 19.7 , 0 );
setMoveKey( spep_3 -55 + 162, 1, -55.5, 48.2 , 0 );
setMoveKey( spep_3 -55 + 163, 1, -55.5, 48.2 , 0 );
setMoveKey( spep_3 -55 + 164, 1, -44, 12.6 , 0 );
setMoveKey( spep_3 -55 + 165, 1, -44, 12.6 , 0 );
setMoveKey( spep_3 -55 + 166, 1, -44, 12.6 , 0 );

setScaleKey( spep_3 + 0, 1, 8.62, 8.62 );
setScaleKey( spep_3 + 2, 1, 8.62, 8.62 );
setScaleKey( spep_3 + 3, 1, 8.01, 8.01 );
setScaleKey( spep_3 + 5, 1, 7.27, 7.27 );
setScaleKey( spep_3 -55 + 62, 1, 6.43, 6.43 );
setScaleKey( spep_3 -55 + 64, 1, 5.51, 5.51 );
setScaleKey( spep_3 -55 + 66, 1, 4.54, 4.54 );
setScaleKey( spep_3 -55 + 68, 1, 3.56, 3.56 );
setScaleKey( spep_3 -55 + 70, 1, 3.1, 3.1 );
setScaleKey( spep_3 -55 + 72, 1, 2.99, 2.99 );
setScaleKey( spep_3 -55 + 74, 1, 2.87, 2.87 );
setScaleKey( spep_3 -55 + 76, 1, 2.75, 2.75 );
setScaleKey( spep_3 -55 + 78, 1, 2.64, 2.64 );
setScaleKey( spep_3 -55 + 80, 1, 2.52, 2.52 );
setScaleKey( spep_3 -55 + 82, 1, 2.4, 2.4 );
setScaleKey( spep_3 -55 + 84, 1, 2.29, 2.29 );
setScaleKey( spep_3 -55 + 86, 1, 2.17, 2.17 );
setScaleKey( spep_3 -55 + 88, 1, 2.05, 2.05 );
setScaleKey( spep_3 -55 + 90, 1, 1.94, 1.94 );
setScaleKey( spep_3 -55 + 92, 1, 1.82, 1.82 );
setScaleKey( spep_3 -55 + 95, 1, 1.7, 1.7 );
setScaleKey( spep_3 -55 + 96, 1, 1.56, 1.56 );
setScaleKey( spep_3 -55 + 97, 1, 1.56, 1.56 );
setScaleKey( spep_3 -55 + 98, 1, 1.54, 1.54 );
setScaleKey( spep_3 -55 + 99, 1, 1.54, 1.54 );
setScaleKey( spep_3 -55 + 100, 1, 1.52, 1.52 );
setScaleKey( spep_3 -55 + 101, 1, 1.52, 1.52 );
setScaleKey( spep_3 -55 + 102, 1, 1.49, 1.49 );
setScaleKey( spep_3 -55 + 103, 1, 1.49, 1.49 );
setScaleKey( spep_3 -55 + 104, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 105, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 106, 1, 1.29, 1.29 );
setScaleKey( spep_3 -55 + 107, 1, 1.29, 1.29 );
setScaleKey( spep_3 -55 + 108, 1, 1.22, 1.22 );
setScaleKey( spep_3 -55 + 109, 1, 1.22, 1.22 );
setScaleKey( spep_3 -55 + 110, 1, 1.17, 1.17 );
setScaleKey( spep_3 -55 + 111, 1, 1.17, 1.17 );
setScaleKey( spep_3 -55 + 112, 1, 1.14, 1.14 );
setScaleKey( spep_3 -55 + 113, 1, 1.14, 1.14 );
setScaleKey( spep_3 -55 + 114, 1, 1.13, 1.13 );
setScaleKey( spep_3 -55 + 115, 1, 1.13, 1.13 );
setScaleKey( spep_3 -55 + 116, 1, 1.56, 1.56 );
setScaleKey( spep_3 -55 + 117, 1, 1.56, 1.56 );
setScaleKey( spep_3 -55 + 118, 1, 1.54, 1.54 );
setScaleKey( spep_3 -55 + 119, 1, 1.54, 1.54 );
setScaleKey( spep_3 -55 + 120, 1, 1.52, 1.52 );
setScaleKey( spep_3 -55 + 121, 1, 1.52, 1.52 );
setScaleKey( spep_3 -55 + 122, 1, 1.49, 1.49 );
setScaleKey( spep_3 -55 + 123, 1, 1.49, 1.49 );
setScaleKey( spep_3 -55 + 124, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 125, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 126, 1, 1.29, 1.29 );
setScaleKey( spep_3 -55 + 127, 1, 1.29, 1.29 );
setScaleKey( spep_3 -55 + 128, 1, 1.22, 1.22 );
setScaleKey( spep_3 -55 + 129, 1, 1.22, 1.22 );
setScaleKey( spep_3 -55 + 130, 1, 1.17, 1.17 );
setScaleKey( spep_3 -55 + 131, 1, 1.17, 1.17 );
setScaleKey( spep_3 -55 + 132, 1, 1.14, 1.14 );
setScaleKey( spep_3 -55 + 133, 1, 1.14, 1.14 );
setScaleKey( spep_3 -55 + 134, 1, 1.13, 1.13 );
setScaleKey( spep_3 -55 + 135, 1, 1.13, 1.13 );
setScaleKey( spep_3 -55 + 136, 1, 1.56, 1.56 );
setScaleKey( spep_3 -55 + 137, 1, 1.56, 1.56 );
setScaleKey( spep_3 -55 + 138, 1, 1.54, 1.54 );
setScaleKey( spep_3 -55 + 139, 1, 1.54, 1.54 );
setScaleKey( spep_3 -55 + 140, 1, 1.52, 1.52 );
setScaleKey( spep_3 -55 + 141, 1, 1.52, 1.52 );
setScaleKey( spep_3 -55 + 142, 1, 1.49, 1.49 );
setScaleKey( spep_3 -55 + 143, 1, 1.49, 1.49 );
setScaleKey( spep_3 -55 + 144, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 145, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 146, 1, 1.29, 1.29 );
setScaleKey( spep_3 -55 + 147, 1, 1.29, 1.29 );
setScaleKey( spep_3 -55 + 148, 1, 1.22, 1.22 );
setScaleKey( spep_3 -55 + 149, 1, 1.22, 1.22 );
setScaleKey( spep_3 -55 + 150, 1, 1.17, 1.17 );
setScaleKey( spep_3 -55 + 151, 1, 1.17, 1.17 );
setScaleKey( spep_3 -55 + 152, 1, 1.14, 1.14 );
setScaleKey( spep_3 -55 + 153, 1, 1.14, 1.14 );
setScaleKey( spep_3 -55 + 154, 1, 1.13, 1.13 );
setScaleKey( spep_3 -55 + 155, 1, 1.13, 1.13 );
setScaleKey( spep_3 -55 + 156, 1, 1.56, 1.56 );
setScaleKey( spep_3 -55 + 157, 1, 1.56, 1.56 );
setScaleKey( spep_3 -55 + 158, 1, 1.54, 1.54 );
setScaleKey( spep_3 -55 + 159, 1, 1.54, 1.54 );
setScaleKey( spep_3 -55 + 160, 1, 1.52, 1.52 );
setScaleKey( spep_3 -55 + 161, 1, 1.52, 1.52 );
setScaleKey( spep_3 -55 + 162, 1, 1.49, 1.49 );
setScaleKey( spep_3 -55 + 163, 1, 1.49, 1.49 );
setScaleKey( spep_3 -55 + 164, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 165, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 166, 1, 1.47, 1.47 );

setRotateKey( spep_3 + 0, 1, 29.5 );
setRotateKey( spep_3 -55 + 95, 1, 29.5 );
setRotateKey( spep_3 -55 + 96, 1, 0 );
setRotateKey( spep_3 -55 + 97, 1, 0 );
setRotateKey( spep_3 -55 + 98, 1, -2.5 );
setRotateKey( spep_3 -55 + 99, 1, -2.5 );
setRotateKey( spep_3 -55 + 100, 1, -5 );
setRotateKey( spep_3 -55 + 101, 1, -5 );
setRotateKey( spep_3 -55 + 102, 1, -7.5 );
setRotateKey( spep_3 -55 + 103, 1, -7.5 );
setRotateKey( spep_3 -55 + 104, 1, -10 );
setRotateKey( spep_3 -55 + 105, 1, -10 );
setRotateKey( spep_3 -55 + 106, 1, -56.5 );
setRotateKey( spep_3 -55 + 107, 1, -56.5 );
setRotateKey( spep_3 -55 + 108, 1, -51 );
setRotateKey( spep_3 -55 + 109, 1, -51 );
setRotateKey( spep_3 -55 + 110, 1, -47.1 );
setRotateKey( spep_3 -55 + 111, 1, -47.1 );
setRotateKey( spep_3 -55 + 112, 1, -44.8 );
setRotateKey( spep_3 -55 + 113, 1, -44.8 );
setRotateKey( spep_3 -55 + 114, 1, -44 );
setRotateKey( spep_3 -55 + 115, 1, -44 );
setRotateKey( spep_3 -55 + 116, 1, 0 );
setRotateKey( spep_3 -55 + 117, 1, 0 );
setRotateKey( spep_3 -55 + 118, 1, -2.5 );
setRotateKey( spep_3 -55 + 119, 1, -2.5 );
setRotateKey( spep_3 -55 + 120, 1, -5 );
setRotateKey( spep_3 -55 + 121, 1, -5 );
setRotateKey( spep_3 -55 + 122, 1, -7.5 );
setRotateKey( spep_3 -55 + 123, 1, -7.5 );
setRotateKey( spep_3 -55 + 124, 1, -10 );
setRotateKey( spep_3 -55 + 125, 1, -10 );
setRotateKey( spep_3 -55 + 126, 1, -56.5 );
setRotateKey( spep_3 -55 + 127, 1, -56.5 );
setRotateKey( spep_3 -55 + 128, 1, -51 );
setRotateKey( spep_3 -55 + 129, 1, -51 );
setRotateKey( spep_3 -55 + 130, 1, -47.1 );
setRotateKey( spep_3 -55 + 131, 1, -47.1 );
setRotateKey( spep_3 -55 + 132, 1, -44.8 );
setRotateKey( spep_3 -55 + 133, 1, -44.8 );
setRotateKey( spep_3 -55 + 134, 1, -44 );
setRotateKey( spep_3 -55 + 135, 1, -44 );
setRotateKey( spep_3 -55 + 136, 1, 0 );
setRotateKey( spep_3 -55 + 137, 1, 0 );
setRotateKey( spep_3 -55 + 138, 1, -2.5 );
setRotateKey( spep_3 -55 + 139, 1, -2.5 );
setRotateKey( spep_3 -55 + 140, 1, -5 );
setRotateKey( spep_3 -55 + 141, 1, -5 );
setRotateKey( spep_3 -55 + 142, 1, -7.5 );
setRotateKey( spep_3 -55 + 143, 1, -7.5 );
setRotateKey( spep_3 -55 + 144, 1, -10 );
setRotateKey( spep_3 -55 + 145, 1, -10 );
setRotateKey( spep_3 -55 + 146, 1, -56.5 );
setRotateKey( spep_3 -55 + 147, 1, -56.5 );
setRotateKey( spep_3 -55 + 148, 1, -51 );
setRotateKey( spep_3 -55 + 149, 1, -51 );
setRotateKey( spep_3 -55 + 150, 1, -47.1 );
setRotateKey( spep_3 -55 + 151, 1, -47.1 );
setRotateKey( spep_3 -55 + 152, 1, -44.8 );
setRotateKey( spep_3 -55 + 153, 1, -44.8 );
setRotateKey( spep_3 -55 + 154, 1, -44 );
setRotateKey( spep_3 -55 + 155, 1, -44 );
setRotateKey( spep_3 -55 + 156, 1, 0 );
setRotateKey( spep_3 -55 + 157, 1, 0 );
setRotateKey( spep_3 -55 + 158, 1, -2.5 );
setRotateKey( spep_3 -55 + 159, 1, -2.5 );
setRotateKey( spep_3 -55 + 160, 1, -5 );
setRotateKey( spep_3 -55 + 161, 1, -5 );
setRotateKey( spep_3 -55 + 162, 1, -7.5 );
setRotateKey( spep_3 -55 + 163, 1, -7.5 );
setRotateKey( spep_3 -55 + 164, 1, -10 );
setRotateKey( spep_3 -55 + 165, 1, -10 );
setRotateKey( spep_3 -55 + 166, 1, -10 );

-- ** 敵キャラクター ** --
setDisp( spep_3 - 55 + 214, 1, 1 );
setDisp( spep_3 - 55 + 267, 1, 0 );
changeAnime( spep_3 - 55 + 214, 1, 106 );

setBlendColor( spep_3 -55 + 234, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_3 -55 + 236, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_3 -55 + 238, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_3 -55 + 240, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_3 -55 + 242, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_3 -55 + 244, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_3 -55 + 266, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_3 -55 + 267, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_3 -55 + 214, 1, -86.2, -32 , 0 );
setMoveKey( spep_3 -55 + 215, 1, -86.2, -32 , 0 );
setMoveKey( spep_3 -55 + 216, 1, -54.4, -32 , 0 );
setMoveKey( spep_3 -55 + 217, 1, -54.4, -32 , 0 );
setMoveKey( spep_3 -55 + 218, 1, -22.6, -32 , 0 );
setMoveKey( spep_3 -55 + 219, 1, -22.6, -32 , 0 );
setMoveKey( spep_3 -55 + 220, 1, 9.2, -32 , 0 );
setMoveKey( spep_3 -55 + 221, 1, 9.2, -32 , 0 );
setMoveKey( spep_3 -55 + 222, 1, 41, -32 , 0 );
setMoveKey( spep_3 -55 + 223, 1, 41, -32 , 0 );
setMoveKey( spep_3 -55 + 224, 1, 116.8, 16 , 0 );
setMoveKey( spep_3 -55 + 225, 1, 116.8, 16 , 0 );
setMoveKey( spep_3 -55 + 226, 1, 142.7, -56 , 0 );
setMoveKey( spep_3 -55 + 227, 1, 142.7, -56 , 0 );
setMoveKey( spep_3 -55 + 228, 1, 234.6, -20 , 0 );
setMoveKey( spep_3 -55 + 229, 1, 234.6, -20 , 0 );
setMoveKey( spep_3 -55 + 230, 1, 156.5, -3.8 , 0 );
setMoveKey( spep_3 -55 + 231, 1, 156.5, -3.8 , 0 );
setMoveKey( spep_3 -55 + 232, 1, 275.5, -44 , 0 );
setMoveKey( spep_3 -55 + 233, 1, 275.5, -44 , 0 );
setMoveKey( spep_3 -55 + 234, 1, 198, -11.8 , 0 );
setMoveKey( spep_3 -55 + 235, 1, 198, -11.8 , 0 );
setMoveKey( spep_3 -55 + 236, 1, 213.7, -76 , 0 );
setMoveKey( spep_3 -55 + 237, 1, 213.7, -76 , 0 );
setMoveKey( spep_3 -55 + 238, 1, 196.9, -7.8 , 0 );
setMoveKey( spep_3 -55 + 239, 1, 196.9, -7.8 , 0 );--
setMoveKey( spep_3 -55 + 240, 1, 225.2, -4 , 0 );
setMoveKey( spep_3 -55 + 241, 1, 225.2, -4 , 0 );
setMoveKey( spep_3 -55 + 242, 1, 213.1, -51.8 , 0 );
setMoveKey( spep_3 -55 + 243, 1, 213.1, -51.8 , 0 );
setMoveKey( spep_3 -55 + 244, 1, 186.1, -32 , 0 );
setMoveKey( spep_3 -55 + 245, 1, 186.1, -32 , 0 );
setMoveKey( spep_3 -55 + 246, 1, 240.8, -3.8 , 0 );
setMoveKey( spep_3 -55 + 247, 1, 240.8, -3.8 , 0 );
setMoveKey( spep_3 -55 + 248, 1, 212.3, -52 , 0 );
setMoveKey( spep_3 -55 + 249, 1, 212.3, -52 , 0 );
setMoveKey( spep_3 -55 + 250, 1, 226.9, 0.2 , 0 );
setMoveKey( spep_3 -55 + 251, 1, 226.9, 0.2 , 0 );
setMoveKey( spep_3 -55 + 252, 1, 230.3, -32 , 0 );
setMoveKey( spep_3 -55 + 253, 1, 230.3, -32 , 0 );
setMoveKey( spep_3 -55 + 254, 1, 232.9, -31.8 , 0 );
setMoveKey( spep_3 -55 + 255, 1, 232.9, -31.8 , 0 );
setMoveKey( spep_3 -55 + 256, 1, 236.2, -32 , 0 );
setMoveKey( spep_3 -55 + 257, 1, 236.2, -32 , 0 );
setMoveKey( spep_3 -55 + 258, 1, 238.8, -31.8 , 0 );
setMoveKey( spep_3 -55 + 259, 1, 238.8, -31.8 , 0 );
setMoveKey( spep_3 -55 + 260, 1, 242, -32 , 0 );
setMoveKey( spep_3 -55 + 261, 1, 242, -32 , 0 );
setMoveKey( spep_3 -55 + 262, 1, 244.5, -31.8 , 0 );
setMoveKey( spep_3 -55 + 263, 1, 244.5, -31.8 , 0 );
setMoveKey( spep_3 -55 + 264, 1, 247.7, -32 , 0 );
setMoveKey( spep_3 -55 + 265, 1, 247.7, -32 , 0 );
setMoveKey( spep_3 -55 + 266, 1, 250.1, -31.8 , 0 );
setMoveKey( spep_3 -55 + 267, 1, 250.1, -31.8 , 0 );
--setMoveKey( spep_3 -55 + 268, 1, 253.2, -32 , 0 );
--setMoveKey( spep_3 -55 + 269, 1, 253.2, -32 , 0 );

setScaleKey( spep_3 -55 + 214, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 228, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 229, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 230, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 231, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 232, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 233, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 234, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 235, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 236, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 237, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 238, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 239, 1, 1.55, 1.55 );--
setScaleKey( spep_3 -55 + 240, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 241, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 242, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 243, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 244, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 245, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 246, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 247, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 248, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 249, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 250, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 251, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 252, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 253, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 254, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 255, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 256, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 257, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 258, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 259, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 260, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 261, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 262, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 263, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 264, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 265, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 266, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 267, 1, 1.55, 1.55 );
--setScaleKey( spep_3 -55 + 268, 1, 1.47, 1.47 );
--setScaleKey( spep_3 -55 + 269, 1, 1.47, 1.47 );

setRotateKey( spep_3 -55 + 214, 1, -37.9 );
setRotateKey( spep_3 -55 + 224, 1, -37.9 );
setRotateKey( spep_3 -55 + 225, 1, -37.9 );
setRotateKey( spep_3 -55 + 226, 1, -18 );
setRotateKey( spep_3 -55 + 267, 1, -18 );

-- ** 音 ** --
--瞬間移動
SE027 = playSeVer2( spep_3 + 4, 1109, "", 0, 0, 0, -1);

--ラッシュ
SE028 = playSeVer2( spep_3 + 36, 1110, "",spep_3 + 64, 0, 8, -1);
SE029 = playSeVer2( spep_3 + 40, 1009, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_3 + 44, 1110, "",spep_3 + 68, 0, 8, -1);
SE031 = playSeVer2( spep_3 + 52, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 52, SE031, 60 );
SE032 = playSeVer2( spep_3 + 58, 1110, "",spep_3 + 82, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 58, SE032, 79 );
SE033 = playSeVer2( spep_3 + 62, 1010, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_3 + 70, 1110, "",spep_3 + 94, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 70, SE034, 89 );
SE035 = playSeVer2( spep_3 + 74, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 74, SE035, 80 );
SE036 = playSeVer2( spep_3 + 78, 1110, "",spep_3 + 102, 0, 8, -1);

SE038 = playSeVer2( spep_3 + 82, 1000, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_3 + 90, 1110, "",spep_3 + 114, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 90, SE039, 86 );
SE040 = playSeVer2( spep_3 + 100, 1110, "",spep_3 + 124, 0, 10, -1);

--ピッコロ向かってくる
SE037 = playSeVer2( spep_3 + 100, 1072, "", 0, 8, 0, -1);
setStartTimeMs( SE037,  367 );
SE041 = playSeVer2( spep_3 + 104, 1117, "",spep_3 + 170, 0, 12, -1);
SE042 = playSeVer2( spep_3 + 108, 1191, "",spep_3 + 170, 0, 12, -1);

--気弾溜め
SE043 = playSeVer2( spep_3 + 110, 1276, "",spep_3 + 170, 0, 12, -1);

--ピッコロ気弾発射
SE044 = playSeVer2( spep_3 + 134, 1145, "",spep_3 + 176, 0, 18, -1);
setSeVolumeByWorkId( spep_3 + 134, SE044, 72 );
SE045 = playSeVer2( spep_3 + 156, 1011, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_3 + 156, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 156, SE046, 85 );

--画面遷移
SE047 = playSeVer2( spep_3 + 192, 1072, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_3 + 192, SE047, 116 );
setStartTimeMs( SE047,  350 );

--かめはめ波溜め
SE048 = playSeVer2( spep_3 + 196, 1210, "",spep_3 + 378, 0, 10, -1);
SE050 = playSeVer2( spep_3 + 206, 1209, "",spep_3 + 378, 0, 10, -1);

--オーラ
SE049 = playSeVer2( spep_3 + 200, 1036, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 214 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 212;


------------------------------------------------------
-- かめはめ波～フィニッシュ(446F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --かめはめ波～フィニッシュ	ef_004_front
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 446, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 446, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 446, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 446 -2, finish_f, 255 );
setEffAlphaKey( spep_4 + 446 -1, finish_f, 255 );
setEffAlphaKey( spep_4 + 446, finish_f, 0 );

finish_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --かめはめ波～フィニッシュ	ef_004_back
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 446, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 446, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 446, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 446 -2, finish_b, 255 );
setEffAlphaKey( spep_4 + 446 -1, finish_b, 255 );
setEffAlphaKey( spep_4 + 446, finish_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 +1 + 226, 1, 1 );
setDisp( spep_4 +1 + 254, 1, 0 );
changeAnime( spep_4 +1 + 226, 1, 5 );

setMoveKey( spep_4 +1 + 226, 1, 72.2, -56 , 0 );
setMoveKey( spep_4 +1 + 228, 1, 75.5, -54.5 , 0 );
setMoveKey( spep_4 +1 + 230, 1, 85.2, -50 , 0 );
setMoveKey( spep_4 +1 + 232, 1, 101.5, -42.5 , 0 );
setMoveKey( spep_4 +1 + 234, 1, 124.2, -32 , 0 );
setMoveKey( spep_4 +1 + 236, 1, 129.2, -27.3 , 0 );
setMoveKey( spep_4 +1 + 238, 1, 133.6, -23.1 , 0 );
setMoveKey( spep_4 +1 + 240, 1, 137.4, -19.6 , 0 );
setMoveKey( spep_4 +1 + 242, 1, 140.6, -16.5 , 0 );
setMoveKey( spep_4 +1 + 244, 1, 143.2, -14 , 0 );
setMoveKey( spep_4 +1 + 246, 1, 145.3, -12.1 , 0 );
setMoveKey( spep_4 +1 + 248, 1, 146.7, -10.7 , 0 );
setMoveKey( spep_4 +1 + 250, 1, 147.6, -9.9 , 0 );
setMoveKey( spep_4 +1 + 252, 1, 167.9, 10.4 , 0 );
setMoveKey( spep_4 +1 + 254, 1, 167.9, 10.4 , 0 );

setScaleKey( spep_4 +1 + 226, 1, 1.51, 1.51 );
setScaleKey( spep_4 +1 + 228, 1, 1.48, 1.48 );
setScaleKey( spep_4 +1 + 230, 1, 1.38, 1.38 );
setScaleKey( spep_4 +1 + 232, 1, 1.22, 1.22 );
setScaleKey( spep_4 +1 + 234, 1, 1, 1 );
setScaleKey( spep_4 +1 + 236, 1, 0.97, 0.97 );
setScaleKey( spep_4 +1 + 238, 1, 0.95, 0.95 );
setScaleKey( spep_4 +1 + 240, 1, 0.93, 0.93 );
setScaleKey( spep_4 +1 + 242, 1, 0.91, 0.91 );
setScaleKey( spep_4 +1 + 244, 1, 0.89, 0.89 );
setScaleKey( spep_4 +1 + 246, 1, 0.88, 0.88 );
setScaleKey( spep_4 +1 + 248, 1, 0.87, 0.87 );
setScaleKey( spep_4 +1 + 252, 1, 0.87, 0.87 );
setScaleKey( spep_4 +1 + 254, 1, 0.87, 0.87 );

setRotateKey( spep_4 +1 + 226, 1, 62.7 );
setRotateKey( spep_4 +1 + 254, 1, 62.7 );

-- ** 音 ** --
--オーラ
SE051 = playSeVer2( spep_4 + 12, 1036, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_4 + 36, 1036, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_4 + 60, 1036, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_4 + 84, 1036, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_4 + 108, 1036, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_4 + 132, 1036, "", 0, 0, 0, -1);

--構える
SE052 = playSeVer2( spep_4 + 20, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 20, SE052, 81 );

--横アップ
SE055 = playSeVer2( spep_4 + 66, 8, "", 0, 0, 0, -1);

--かめはめ波発射
SE059 = playSeVer2( spep_4 + 158, 1133, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_4 + 158, 1146, "",spep_4 + 334, 0, 18, -1);
setSeVolumeByWorkId( spep_4 + 158, SE060, 85 );
SE061 = playSeVer2( spep_4 + 158, 1284, "",spep_4 + 334, 0, 18, -1);
setSeVolumeByWorkId( spep_4 + 158, SE061, 86 );

--かめはめ波中
SE062 = playSeVer2( spep_4 + 196, 1161, "",spep_4 + 334, 0, 18, -1);
SE063 = playSeVer2( spep_4 + 196, 1211, "",spep_4 + 334, 0, 18, -1);
setSeVolumeByWorkId( spep_4 + 196, SE063, 422 );

--かめはめ波飛んでいく
SE064 = playSeVer2( spep_4 + 220, 1021, "", 0, 0, 0, -1);

--敵ヒット
SE065 = playSeVer2( spep_4 + 240, 1011, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_4 + 246, 1025, "", 0, 0, 0, -1);

--爆発
SE067 = playSeVer2( spep_4 + 302, 1024, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_4 + 302, 1159, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_4 + 308, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 446 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 308 );
endPhase( spep_4 + 436 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 全員の気溜め(422F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --全員の気溜め	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 422, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 422, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 422, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 422 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 422 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 422, first_f, 0 );

spep_x = spep_0 + 4;
-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--顔カットイン
--SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--悟空気ダメ
SE002 = playSeVer2( spep_0 + 92, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE002, 65 );
SE003 = playSeVer2( spep_0 + 92, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE003, 126 );

--悟飯気ダメ
SE004 = playSeVer2( spep_0 + 142, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE004, 123 );
setPitch( spep_0 + 142, SE004, 200 );
setTimeStretch( SE004, 1.13, 30, 4 );

--ピッコロ気ダメ
SE005 = playSeVer2( spep_0 + 180, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE005, 52 );
SE006 = playSeVer2( spep_0 + 180, 1035, "", 0, 0, 0, -1);
setPitch( spep_0 + 180, SE006, -200 );
setTimeStretch( SE006, 0.87, 30, 4 );

--トランクス気ダメ
SE007 = playSeVer2( spep_0 + 222, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 222, SE007, 129 );
SE008 = playSeVer2( spep_0 + 222, 1011, "", 0, 0, 0, -1);

--ベジータ気ダメ
SE009 = playSeVer2( spep_0 + 262, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 262, SE009, 126 );
SE010 = playSeVer2( spep_0 + 262, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 262, SE010, 79 );

--オーラ
SE011 = playSeVer2( spep_0 + 298, 1036, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 322, 1036, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 346, 1036, "", 0, 0, 0, -1);

--構える
SE012 = playSeVer2( spep_0 + 306, 1004, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 422 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 364 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
   
    pauseAll( SP_dodge, 67);    
    
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

-- ** 音 ** --
--オーラ
SE018 = playSeVer2( spep_0 + 370, 1036, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 394, 1036, "", 0, 0, 0, -1);

--全員向かってくる
SE015 = playSeVer2( spep_0 + 366, 1182, "",spep_0 + 432, 0, 10, -1);
SE016 = playSeVer2( spep_0 + 366, 1207, "",spep_0 + 432, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 366, SE016, 56 );
SE017 = playSeVer2( spep_0 + 366, 9, "",spep_0 + 432, 0, 10, -1);
SE019 = playSeVer2( spep_0 + 376, 1117, "",spep_0 + 432, 0, 10, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + 422;

--------------------------------------
--カードカットイン(94F) 
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_c + 94;


------------------------------------------------------
-- ベジータの攻撃(56F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
bpunch_f = entryEffectLife( spep_2 + 0, SP_02r, 56, 0x100, -1, 0, 0, 0 );  --ベジータの攻撃	ef_002_fromt
setEffMoveKey( spep_2 + 0, bpunch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, bpunch_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, bpunch_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, bpunch_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, bpunch_f, 0 );
setEffRotateKey( spep_2 + 56, bpunch_f, 0 );
setEffAlphaKey( spep_2 + 0, bpunch_f, 255 );
setEffAlphaKey( spep_2 + 56 -2, bpunch_f, 255 );
setEffAlphaKey( spep_2 + 56 -1, bpunch_f, 255 );
setEffAlphaKey( spep_2 + 56, bpunch_f, 0 );

bpunch_b = entryEffectLife( spep_2 + 0, SP_03r, 56, 0x80, -1, 0, 0, 0 );  --ベジータの攻撃	ef_002_back
setEffMoveKey( spep_2 + 0, bpunch_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, bpunch_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, bpunch_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, bpunch_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, bpunch_b, 0 );
setEffRotateKey( spep_2 + 56, bpunch_b, 0 );
setEffAlphaKey( spep_2 + 0, bpunch_b, 255 );
setEffAlphaKey( spep_2 + 56 -2, bpunch_b, 255 );
setEffAlphaKey( spep_2 + 56 -1, bpunch_b, 255 );
setEffAlphaKey( spep_2 + 56, bpunch_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 + 1 + 30, 1, 5 );

setMoveKey( spep_2 + 0, 1, 178, 351 , 0 );
setMoveKey( spep_2 + 2, 1, 178, 351 , 0 );
setMoveKey( spep_2 + 3, 1, 173.1, 334 , 0 );
setMoveKey( spep_2 +1 + 4, 1, 168.1, 317 , 0 );
setMoveKey( spep_2 +1 + 6, 1, 163.2, 300.1 , 0 );
setMoveKey( spep_2 +1 + 8, 1, 158.2, 283 , 0 );
setMoveKey( spep_2 +1 + 10, 1, 153.3, 266 , 0 );
setMoveKey( spep_2 +1 + 12, 1, 148.3, 249.1 , 0 );
setMoveKey( spep_2 +1 + 14, 1, 143.4, 232.1 , 0 );
setMoveKey( spep_2 +1 + 16, 1, 138.4, 215.1 , 0 );
setMoveKey( spep_2 +1 + 18, 1, 133.5, 198.1 , 0 );
setMoveKey( spep_2 +1 + 19, 1, 133.5, 198.1 , 0 );
setMoveKey( spep_2 +1 + 20, 1, -24.3, -63.8 , 0 );
setMoveKey( spep_2 +1 + 21, 1, -24.3, -63.8 , 0 );
setMoveKey( spep_2 +1 + 22, 1, -22, -86.6 , 0 );
setMoveKey( spep_2 +1 + 23, 1, -22, -86.6 , 0 );
setMoveKey( spep_2 +1 + 24, 1, -19.6, -109.4 , 0 );
setMoveKey( spep_2 +1 + 25, 1, -19.6, -109.4 , 0 );
setMoveKey( spep_2 +1 + 26, 1, -17.3, -132.2 , 0 );
setMoveKey( spep_2 +1 + 27, 1, -17.3, -132.2 , 0 );
setMoveKey( spep_2 +1 + 28, 1, 13.1, -107 , 0 );
setMoveKey( spep_2 +1 + 29, 1, 13.1, -107 , 0 );
setMoveKey( spep_2 +1 + 30, 1, 49.8, -97.1 , 0 );
setMoveKey( spep_2 +1 + 31, 1, 49.8, -97.1 , 0 );
setMoveKey( spep_2 +1 + 32, 1, 108.1, 49.7 , 0 );
setMoveKey( spep_2 +1 + 33, 1, 108.1, 49.7 , 0 );
setMoveKey( spep_2 +1 + 34, 1, -98.9, -72.5 , 0 );
setMoveKey( spep_2 +1 + 35, 1, -98.9, -72.5 , 0 );
setMoveKey( spep_2 +1 + 36, 1, 136.3, -12.3 , 0 );
setMoveKey( spep_2 +1 + 37, 1, 136.3, -12.3 , 0 );
setMoveKey( spep_2 +1 + 38, 1, 50.9, 275.9 , 0 );
setMoveKey( spep_2 +1 + 39, 1, 50.9, 275.9 , 0 );
setMoveKey( spep_2 +1 + 40, 1, 50.6, 161.4 , 0 );
setMoveKey( spep_2 +1 + 42, 1, 14.9, 228 , 0 );
setMoveKey( spep_2 +1 + 44, 1, 48.5, 246.9 , 0 );
setMoveKey( spep_2 +1 + 46, 1, 48.3, 249 , 0 );
setMoveKey( spep_2 +1 + 48, 1, 45.5, 240.5 , 0 );
setMoveKey( spep_2 +1 + 50, 1, 40.7, 223.8 , 0 );
setMoveKey( spep_2 +1 + 52, 1, 34.6, 200.9 , 0 );
setMoveKey( spep_2 +1 + 54, 1, 27.3, 173.8 , 0 );
--setMoveKey( spep_2 -3 + 55, 1, 27.3, 173.8 , 0 );

setScaleKey( spep_2 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 2, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 3, 1, 0.83, 0.83 );
setScaleKey( spep_2 +1 + 4, 1, 0.86, 0.86 );
setScaleKey( spep_2 +1 + 6, 1, 0.88, 0.88 );
setScaleKey( spep_2 +1 + 8, 1, 0.91, 0.91 );
setScaleKey( spep_2 +1 + 10, 1, 0.94, 0.94 );
setScaleKey( spep_2 +1 + 12, 1, 0.97, 0.97 );
setScaleKey( spep_2 +1 + 14, 1, 1, 1 );
setScaleKey( spep_2 +1 + 16, 1, 1.02, 1.02 );
setScaleKey( spep_2 +1 + 18, 1, 1.05, 1.05 );
setScaleKey( spep_2 +1 + 19, 1, 1.05, 1.05 );
setScaleKey( spep_2 +1 + 20, 1, 3.2, 3.2 );
setScaleKey( spep_2 +1 + 21, 1, 3.2, 3.2 );
setScaleKey( spep_2 +1 + 22, 1, 3.52, 3.52 );
setScaleKey( spep_2 +1 + 23, 1, 3.52, 3.52 );
setScaleKey( spep_2 +1 + 24, 1, 3.84, 3.84 );
setScaleKey( spep_2 +1 + 25, 1, 3.84, 3.84 );
setScaleKey( spep_2 +1 + 26, 1, 4.16, 4.16 );
setScaleKey( spep_2 +1 + 27, 1, 4.16, 4.16 );
setScaleKey( spep_2 +1 + 28, 1, 4.48, 4.48 );
setScaleKey( spep_2 +1 + 29, 1, 4.48, 4.48 );
setScaleKey( spep_2 +1 + 30, 1, 6, 6 );
setScaleKey( spep_2 +1 + 31, 1, 6, 6 );
setScaleKey( spep_2 +1 + 32, 1, 6.49, 6.49 );
setScaleKey( spep_2 +1 + 33, 1, 6.49, 6.49 );
setScaleKey( spep_2 +1 + 34, 1, 6.68, 6.68 );
setScaleKey( spep_2 +1 + 35, 1, 6.68, 6.68 );
setScaleKey( spep_2 +1 + 36, 1, 5.49, 5.49 );
setScaleKey( spep_2 +1 + 37, 1, 5.49, 5.49 );
setScaleKey( spep_2 +1 + 38, 1, 4.45, 4.45 );
setScaleKey( spep_2 +1 + 39, 1, 4.45, 4.45 );
setScaleKey( spep_2 +1 + 40, 1, 3.56, 3.56 );
setScaleKey( spep_2 +1 + 42, 1, 2.81, 2.81 );
setScaleKey( spep_2 +1 + 44, 1, 2.17, 2.17 );
setScaleKey( spep_2 +1 + 46, 1, 1.57, 1.57 );
setScaleKey( spep_2 +1 + 48, 1, 1.12, 1.12 );
setScaleKey( spep_2 +1 + 50, 1, 0.79, 0.79 );
setScaleKey( spep_2 +1 + 52, 1, 0.57, 0.57 );
setScaleKey( spep_2 +1 + 54, 1, 0.44, 0.44 );
--setScaleKey( spep_2 -3 + 55, 1, 0.44, 0.44 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 +1 + 29, 1, 0 );
setRotateKey( spep_2 +1 + 30, 1, 44.2 );
setRotateKey( spep_2 +1 + 54, 1, 44.2 );
--setRotateKey( spep_2 -3 + 55, 1, 44.2 );

-- ** 音 ** --
--ベジータパンチ
SE024 = playSeVer2( spep_2 + 18, 1009, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 18, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 18, SE025, 67 );
SE026 = playSeVer2( spep_2 + 22, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE026, 86 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;


------------------------------------------------------
-- 悟飯、トランクス、ピッコロの攻撃(214F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
gtp_f = entryEffect( spep_3 + 0, SP_04r, 0x100, -1, 0, 0, 0 );  --悟飯、トランクス、ピッコロの攻撃(ef_001)
setEffMoveKey( spep_3 + 0, gtp_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 212, gtp_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gtp_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 212, gtp_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gtp_f, 0 );
setEffRotateKey( spep_3 + 212, gtp_f, 0 );
setEffAlphaKey( spep_3 + 0, gtp_f, 255 );
setEffAlphaKey( spep_3 + 212 -2, gtp_f, 255 );
setEffAlphaKey( spep_3 + 212 -1, gtp_f, 255 );
setEffAlphaKey( spep_3 + 212, gtp_f, 0 );

gtp_b = entryEffect( spep_3 + 0, SP_05r, 0x80, -1, 0, 0, 0 );  --悟飯、トランクス、ピッコロの攻撃(ef_001)
setEffMoveKey( spep_3 + 0, gtp_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 212, gtp_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gtp_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 212, gtp_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gtp_b, 0 );
setEffRotateKey( spep_3 + 212, gtp_b, 0 );
setEffAlphaKey( spep_3 + 0, gtp_b, 255 );
setEffAlphaKey( spep_3 + 212 -2, gtp_b, 255 );
setEffAlphaKey( spep_3 + 212 -1, gtp_b, 255 );
setEffAlphaKey( spep_3 + 212, gtp_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_3 + 0, 1, 1 );--
setDisp( spep_3 - 55 + 166, 1, 0 );
changeAnime( spep_3 + 0, 1, 5 );
changeAnime( spep_3 -55 + 96, 1, 8 );
changeAnime( spep_3 -55 + 106, 1, 106 );
changeAnime( spep_3 -55 + 116, 1, 8 );
changeAnime( spep_3 -55 + 126, 1, 106 );
changeAnime( spep_3 -55 + 136, 1, 8 );
changeAnime( spep_3 -55 + 146, 1, 106 );
changeAnime( spep_3 -55 + 156, 1, 8 );

setMoveKey( spep_3 + 0, 1, 41.7, -1070.9 , 0 );
setMoveKey( spep_3 + 2, 1, 41.7, -1070.9 , 0 );
setMoveKey( spep_3 + 3, 1, 37.4, -993.1 , 0 );
setMoveKey( spep_3 + 5, 1, 30.3, -893.8 , 0 );
setMoveKey( spep_3 -55 + 62, 1, 21, -777.9 , 0 );
setMoveKey( spep_3 -55 + 64, 1, 10.1, -650 , 0 );
setMoveKey( spep_3 -55 + 66, 1, -1.7, -515.3 , 0 );
setMoveKey( spep_3 -55 + 68, 1, -13.8, -378.4 , 0 );
setMoveKey( spep_3 -55 + 70, 1, -11.6, -324.3 , 0 );
setMoveKey( spep_3 -55 + 72, 1, -10.8, -306.8 , 0 );
setMoveKey( spep_3 -55 + 74, 1, -10, -289.3 , 0 );
setMoveKey( spep_3 -55 + 76, 1, -9.1, -271.8 , 0 );
setMoveKey( spep_3 -55 + 78, 1, -8.3, -254.3 , 0 );
setMoveKey( spep_3 -55 + 80, 1, -7.5, -236.8 , 0 );
setMoveKey( spep_3 -55 + 82, 1, -6.7, -219.2 , 0 );
setMoveKey( spep_3 -55 + 84, 1, -5.9, -201.7 , 0 );
setMoveKey( spep_3 -55 + 86, 1, -5, -184.2 , 0 );
setMoveKey( spep_3 -55 + 88, 1, -4.2, -166.7 , 0 );
setMoveKey( spep_3 -55 + 90, 1, -3.4, -149.2 , 0 );
setMoveKey( spep_3 -55 + 92, 1, -2.6, -131.7 , 0 );
setMoveKey( spep_3 -55 + 95, 1, -1.8, -114.2 , 0 );
setMoveKey( spep_3 -55 + 96, 1, -54.2, 34.8 , 0 );
setMoveKey( spep_3 -55 + 97, 1, -54.2, 34.8 , 0 );
setMoveKey( spep_3 -55 + 98, 1, -32.7, 15.2 , 0 );
setMoveKey( spep_3 -55 + 99, 1, -32.7, 15.2 , 0 );
setMoveKey( spep_3 -55 + 100, 1, -41.1, 19.7 , 0 );
setMoveKey( spep_3 -55 + 101, 1, -41.1, 19.7 , 0 );
setMoveKey( spep_3 -55 + 102, 1, -49.5, 24.2 , 0 );
setMoveKey( spep_3 -55 + 103, 1, -49.5, 24.2 , 0 );
setMoveKey( spep_3 -55 + 104, 1, -58, 28.6 , 0 );
setMoveKey( spep_3 -55 + 105, 1, -58, 28.6 , 0 );
setMoveKey( spep_3 -55 + 106, 1, 8.2, 33.8 , 0 );
setMoveKey( spep_3 -55 + 107, 1, 8.2, 33.8 , 0 );
setMoveKey( spep_3 -55 + 108, 1, -2.7, 32.9 , 0 );
setMoveKey( spep_3 -55 + 109, 1, -2.7, 32.9 , 0 );
setMoveKey( spep_3 -55 + 110, 1, 11, 32.3 , 0 );
setMoveKey( spep_3 -55 + 111, 1, 11, 32.3 , 0 );
setMoveKey( spep_3 -55 + 112, 1, 19.2, 31.9 , 0 );
setMoveKey( spep_3 -55 + 113, 1, 19.2, 31.9 , 0 );
setMoveKey( spep_3 -55 + 114, 1, 21.9, 31.8 , 0 );
setMoveKey( spep_3 -55 + 115, 1, 21.9, 31.8 , 0 );
setMoveKey( spep_3 -55 + 116, 1, -36.2, 32.8 , 0 );
setMoveKey( spep_3 -55 + 117, 1, -36.2, 32.8 , 0 );
setMoveKey( spep_3 -55 + 118, 1, -32.7, 15.2 , 0 );
setMoveKey( spep_3 -55 + 119, 1, -32.7, 15.2 , 0 );
setMoveKey( spep_3 -55 + 120, 1, -41.1, 19.7 , 0 );
setMoveKey( spep_3 -55 + 121, 1, -41.1, 19.7 , 0 );
setMoveKey( spep_3 -55 + 122, 1, -49.5, 24.2 , 0 );
setMoveKey( spep_3 -55 + 123, 1, -49.5, 24.2 , 0 );
setMoveKey( spep_3 -55 + 124, 1, -58, 28.6 , 0 );
setMoveKey( spep_3 -55 + 125, 1, -58, 28.6 , 0 );
setMoveKey( spep_3 -55 + 126, 1, 0.2, 27.8 , 0 );
setMoveKey( spep_3 -55 + 127, 1, 0.2, 27.8 , 0 );
setMoveKey( spep_3 -55 + 128, 1, -2.7, 32.9 , 0 );
setMoveKey( spep_3 -55 + 129, 1, -2.7, 32.9 , 0 );
setMoveKey( spep_3 -55 + 130, 1, 11, 32.3 , 0 );
setMoveKey( spep_3 -55 + 131, 1, 11, 32.3 , 0 );
setMoveKey( spep_3 -55 + 132, 1, 19.2, 31.9 , 0 );
setMoveKey( spep_3 -55 + 133, 1, 19.2, 31.9 , 0 );
setMoveKey( spep_3 -55 + 134, 1, 21.9, 31.8 , 0 );
setMoveKey( spep_3 -55 + 135, 1, 21.9, 31.8 , 0 );
setMoveKey( spep_3 -55 + 136, 1, -36.2, 20.8 , 0 );
setMoveKey( spep_3 -55 + 137, 1, -36.2, 20.8 , 0 );
setMoveKey( spep_3 -55 + 138, 1, -32.7, 15.2 , 0 );
setMoveKey( spep_3 -55 + 139, 1, -32.7, 15.2 , 0 );
setMoveKey( spep_3 -55 + 140, 1, -41.1, 19.7 , 0 );
setMoveKey( spep_3 -55 + 141, 1, -41.1, 19.7 , 0 );
setMoveKey( spep_3 -55 + 142, 1, -49.5, 24.2 , 0 );
setMoveKey( spep_3 -55 + 143, 1, -49.5, 24.2 , 0 );
setMoveKey( spep_3 -55 + 144, 1, -58, 28.6 , 0 );
setMoveKey( spep_3 -55 + 145, 1, -58, 28.6 , 0 );
setMoveKey( spep_3 -55 + 146, 1, -7.8, 39.8 , 0 );
setMoveKey( spep_3 -55 + 147, 1, -7.8, 39.8 , 0 );
setMoveKey( spep_3 -55 + 148, 1, -2.7, 32.9 , 0 );
setMoveKey( spep_3 -55 + 149, 1, -2.7, 32.9 , 0 );
setMoveKey( spep_3 -55 + 150, 1, 11, 32.3 , 0 );
setMoveKey( spep_3 -55 + 151, 1, 11, 32.3 , 0 );
setMoveKey( spep_3 -55 + 152, 1, 19.2, 31.9 , 0 );
setMoveKey( spep_3 -55 + 153, 1, 19.2, 31.9 , 0 );
setMoveKey( spep_3 -55 + 154, 1, 21.9, 31.8 , 0 );
setMoveKey( spep_3 -55 + 155, 1, 21.9, 31.8 , 0 );
setMoveKey( spep_3 -55 + 156, 1, -42.2, 20.8 , 0 );
setMoveKey( spep_3 -55 + 157, 1, -42.2, 20.8 , 0 );
setMoveKey( spep_3 -55 + 158, 1, -32.7, 15.2 , 0 );
setMoveKey( spep_3 -55 + 159, 1, -32.7, 15.2 , 0 );
setMoveKey( spep_3 -55 + 160, 1, -41.1, 19.7 , 0 );
setMoveKey( spep_3 -55 + 161, 1, -41.1, 19.7 , 0 );
setMoveKey( spep_3 -55 + 162, 1, -55.5, 48.2 , 0 );
setMoveKey( spep_3 -55 + 163, 1, -55.5, 48.2 , 0 );
setMoveKey( spep_3 -55 + 164, 1, -44, 12.6 , 0 );
setMoveKey( spep_3 -55 + 165, 1, -44, 12.6 , 0 );
setMoveKey( spep_3 -55 + 166, 1, -44, 12.6 , 0 );

setScaleKey( spep_3 + 0, 1, 8.62, 8.62 );
setScaleKey( spep_3 + 2, 1, 8.62, 8.62 );
setScaleKey( spep_3 + 3, 1, 8.01, 8.01 );
setScaleKey( spep_3 + 5, 1, 7.27, 7.27 );
setScaleKey( spep_3 -55 + 62, 1, 6.43, 6.43 );
setScaleKey( spep_3 -55 + 64, 1, 5.51, 5.51 );
setScaleKey( spep_3 -55 + 66, 1, 4.54, 4.54 );
setScaleKey( spep_3 -55 + 68, 1, 3.56, 3.56 );
setScaleKey( spep_3 -55 + 70, 1, 3.1, 3.1 );
setScaleKey( spep_3 -55 + 72, 1, 2.99, 2.99 );
setScaleKey( spep_3 -55 + 74, 1, 2.87, 2.87 );
setScaleKey( spep_3 -55 + 76, 1, 2.75, 2.75 );
setScaleKey( spep_3 -55 + 78, 1, 2.64, 2.64 );
setScaleKey( spep_3 -55 + 80, 1, 2.52, 2.52 );
setScaleKey( spep_3 -55 + 82, 1, 2.4, 2.4 );
setScaleKey( spep_3 -55 + 84, 1, 2.29, 2.29 );
setScaleKey( spep_3 -55 + 86, 1, 2.17, 2.17 );
setScaleKey( spep_3 -55 + 88, 1, 2.05, 2.05 );
setScaleKey( spep_3 -55 + 90, 1, 1.94, 1.94 );
setScaleKey( spep_3 -55 + 92, 1, 1.82, 1.82 );
setScaleKey( spep_3 -55 + 95, 1, 1.7, 1.7 );
setScaleKey( spep_3 -55 + 96, 1, 1.56, 1.56 );
setScaleKey( spep_3 -55 + 97, 1, 1.56, 1.56 );
setScaleKey( spep_3 -55 + 98, 1, 1.54, 1.54 );
setScaleKey( spep_3 -55 + 99, 1, 1.54, 1.54 );
setScaleKey( spep_3 -55 + 100, 1, 1.52, 1.52 );
setScaleKey( spep_3 -55 + 101, 1, 1.52, 1.52 );
setScaleKey( spep_3 -55 + 102, 1, 1.49, 1.49 );
setScaleKey( spep_3 -55 + 103, 1, 1.49, 1.49 );
setScaleKey( spep_3 -55 + 104, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 105, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 106, 1, 1.29, 1.29 );
setScaleKey( spep_3 -55 + 107, 1, 1.29, 1.29 );
setScaleKey( spep_3 -55 + 108, 1, 1.22, 1.22 );
setScaleKey( spep_3 -55 + 109, 1, 1.22, 1.22 );
setScaleKey( spep_3 -55 + 110, 1, 1.17, 1.17 );
setScaleKey( spep_3 -55 + 111, 1, 1.17, 1.17 );
setScaleKey( spep_3 -55 + 112, 1, 1.14, 1.14 );
setScaleKey( spep_3 -55 + 113, 1, 1.14, 1.14 );
setScaleKey( spep_3 -55 + 114, 1, 1.13, 1.13 );
setScaleKey( spep_3 -55 + 115, 1, 1.13, 1.13 );
setScaleKey( spep_3 -55 + 116, 1, 1.56, 1.56 );
setScaleKey( spep_3 -55 + 117, 1, 1.56, 1.56 );
setScaleKey( spep_3 -55 + 118, 1, 1.54, 1.54 );
setScaleKey( spep_3 -55 + 119, 1, 1.54, 1.54 );
setScaleKey( spep_3 -55 + 120, 1, 1.52, 1.52 );
setScaleKey( spep_3 -55 + 121, 1, 1.52, 1.52 );
setScaleKey( spep_3 -55 + 122, 1, 1.49, 1.49 );
setScaleKey( spep_3 -55 + 123, 1, 1.49, 1.49 );
setScaleKey( spep_3 -55 + 124, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 125, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 126, 1, 1.29, 1.29 );
setScaleKey( spep_3 -55 + 127, 1, 1.29, 1.29 );
setScaleKey( spep_3 -55 + 128, 1, 1.22, 1.22 );
setScaleKey( spep_3 -55 + 129, 1, 1.22, 1.22 );
setScaleKey( spep_3 -55 + 130, 1, 1.17, 1.17 );
setScaleKey( spep_3 -55 + 131, 1, 1.17, 1.17 );
setScaleKey( spep_3 -55 + 132, 1, 1.14, 1.14 );
setScaleKey( spep_3 -55 + 133, 1, 1.14, 1.14 );
setScaleKey( spep_3 -55 + 134, 1, 1.13, 1.13 );
setScaleKey( spep_3 -55 + 135, 1, 1.13, 1.13 );
setScaleKey( spep_3 -55 + 136, 1, 1.56, 1.56 );
setScaleKey( spep_3 -55 + 137, 1, 1.56, 1.56 );
setScaleKey( spep_3 -55 + 138, 1, 1.54, 1.54 );
setScaleKey( spep_3 -55 + 139, 1, 1.54, 1.54 );
setScaleKey( spep_3 -55 + 140, 1, 1.52, 1.52 );
setScaleKey( spep_3 -55 + 141, 1, 1.52, 1.52 );
setScaleKey( spep_3 -55 + 142, 1, 1.49, 1.49 );
setScaleKey( spep_3 -55 + 143, 1, 1.49, 1.49 );
setScaleKey( spep_3 -55 + 144, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 145, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 146, 1, 1.29, 1.29 );
setScaleKey( spep_3 -55 + 147, 1, 1.29, 1.29 );
setScaleKey( spep_3 -55 + 148, 1, 1.22, 1.22 );
setScaleKey( spep_3 -55 + 149, 1, 1.22, 1.22 );
setScaleKey( spep_3 -55 + 150, 1, 1.17, 1.17 );
setScaleKey( spep_3 -55 + 151, 1, 1.17, 1.17 );
setScaleKey( spep_3 -55 + 152, 1, 1.14, 1.14 );
setScaleKey( spep_3 -55 + 153, 1, 1.14, 1.14 );
setScaleKey( spep_3 -55 + 154, 1, 1.13, 1.13 );
setScaleKey( spep_3 -55 + 155, 1, 1.13, 1.13 );
setScaleKey( spep_3 -55 + 156, 1, 1.56, 1.56 );
setScaleKey( spep_3 -55 + 157, 1, 1.56, 1.56 );
setScaleKey( spep_3 -55 + 158, 1, 1.54, 1.54 );
setScaleKey( spep_3 -55 + 159, 1, 1.54, 1.54 );
setScaleKey( spep_3 -55 + 160, 1, 1.52, 1.52 );
setScaleKey( spep_3 -55 + 161, 1, 1.52, 1.52 );
setScaleKey( spep_3 -55 + 162, 1, 1.49, 1.49 );
setScaleKey( spep_3 -55 + 163, 1, 1.49, 1.49 );
setScaleKey( spep_3 -55 + 164, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 165, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 166, 1, 1.47, 1.47 );

setRotateKey( spep_3 + 0, 1, 29.5 );
setRotateKey( spep_3 -55 + 95, 1, 29.5 );
setRotateKey( spep_3 -55 + 96, 1, 0 );
setRotateKey( spep_3 -55 + 97, 1, 0 );
setRotateKey( spep_3 -55 + 98, 1, -2.5 );
setRotateKey( spep_3 -55 + 99, 1, -2.5 );
setRotateKey( spep_3 -55 + 100, 1, -5 );
setRotateKey( spep_3 -55 + 101, 1, -5 );
setRotateKey( spep_3 -55 + 102, 1, -7.5 );
setRotateKey( spep_3 -55 + 103, 1, -7.5 );
setRotateKey( spep_3 -55 + 104, 1, -10 );
setRotateKey( spep_3 -55 + 105, 1, -10 );
setRotateKey( spep_3 -55 + 106, 1, -56.5 );
setRotateKey( spep_3 -55 + 107, 1, -56.5 );
setRotateKey( spep_3 -55 + 108, 1, -51 );
setRotateKey( spep_3 -55 + 109, 1, -51 );
setRotateKey( spep_3 -55 + 110, 1, -47.1 );
setRotateKey( spep_3 -55 + 111, 1, -47.1 );
setRotateKey( spep_3 -55 + 112, 1, -44.8 );
setRotateKey( spep_3 -55 + 113, 1, -44.8 );
setRotateKey( spep_3 -55 + 114, 1, -44 );
setRotateKey( spep_3 -55 + 115, 1, -44 );
setRotateKey( spep_3 -55 + 116, 1, 0 );
setRotateKey( spep_3 -55 + 117, 1, 0 );
setRotateKey( spep_3 -55 + 118, 1, -2.5 );
setRotateKey( spep_3 -55 + 119, 1, -2.5 );
setRotateKey( spep_3 -55 + 120, 1, -5 );
setRotateKey( spep_3 -55 + 121, 1, -5 );
setRotateKey( spep_3 -55 + 122, 1, -7.5 );
setRotateKey( spep_3 -55 + 123, 1, -7.5 );
setRotateKey( spep_3 -55 + 124, 1, -10 );
setRotateKey( spep_3 -55 + 125, 1, -10 );
setRotateKey( spep_3 -55 + 126, 1, -56.5 );
setRotateKey( spep_3 -55 + 127, 1, -56.5 );
setRotateKey( spep_3 -55 + 128, 1, -51 );
setRotateKey( spep_3 -55 + 129, 1, -51 );
setRotateKey( spep_3 -55 + 130, 1, -47.1 );
setRotateKey( spep_3 -55 + 131, 1, -47.1 );
setRotateKey( spep_3 -55 + 132, 1, -44.8 );
setRotateKey( spep_3 -55 + 133, 1, -44.8 );
setRotateKey( spep_3 -55 + 134, 1, -44 );
setRotateKey( spep_3 -55 + 135, 1, -44 );
setRotateKey( spep_3 -55 + 136, 1, 0 );
setRotateKey( spep_3 -55 + 137, 1, 0 );
setRotateKey( spep_3 -55 + 138, 1, -2.5 );
setRotateKey( spep_3 -55 + 139, 1, -2.5 );
setRotateKey( spep_3 -55 + 140, 1, -5 );
setRotateKey( spep_3 -55 + 141, 1, -5 );
setRotateKey( spep_3 -55 + 142, 1, -7.5 );
setRotateKey( spep_3 -55 + 143, 1, -7.5 );
setRotateKey( spep_3 -55 + 144, 1, -10 );
setRotateKey( spep_3 -55 + 145, 1, -10 );
setRotateKey( spep_3 -55 + 146, 1, -56.5 );
setRotateKey( spep_3 -55 + 147, 1, -56.5 );
setRotateKey( spep_3 -55 + 148, 1, -51 );
setRotateKey( spep_3 -55 + 149, 1, -51 );
setRotateKey( spep_3 -55 + 150, 1, -47.1 );
setRotateKey( spep_3 -55 + 151, 1, -47.1 );
setRotateKey( spep_3 -55 + 152, 1, -44.8 );
setRotateKey( spep_3 -55 + 153, 1, -44.8 );
setRotateKey( spep_3 -55 + 154, 1, -44 );
setRotateKey( spep_3 -55 + 155, 1, -44 );
setRotateKey( spep_3 -55 + 156, 1, 0 );
setRotateKey( spep_3 -55 + 157, 1, 0 );
setRotateKey( spep_3 -55 + 158, 1, -2.5 );
setRotateKey( spep_3 -55 + 159, 1, -2.5 );
setRotateKey( spep_3 -55 + 160, 1, -5 );
setRotateKey( spep_3 -55 + 161, 1, -5 );
setRotateKey( spep_3 -55 + 162, 1, -7.5 );
setRotateKey( spep_3 -55 + 163, 1, -7.5 );
setRotateKey( spep_3 -55 + 164, 1, -10 );
setRotateKey( spep_3 -55 + 165, 1, -10 );
setRotateKey( spep_3 -55 + 166, 1, -10 );

-- ** 敵キャラクター ** --
setDisp( spep_3 - 55 + 214, 1, 1 );
setDisp( spep_3 - 55 + 267, 1, 0 );
changeAnime( spep_3 - 55 + 214, 1, 106 );

setBlendColor( spep_3 -55 + 234, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_3 -55 + 236, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_3 -55 + 238, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_3 -55 + 240, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_3 -55 + 242, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_3 -55 + 244, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_3 -55 + 266, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_3 -55 + 267, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_3 -55 + 214, 1, -86.2, -32 , 0 );
setMoveKey( spep_3 -55 + 215, 1, -86.2, -32 , 0 );
setMoveKey( spep_3 -55 + 216, 1, -54.4, -32 , 0 );
setMoveKey( spep_3 -55 + 217, 1, -54.4, -32 , 0 );
setMoveKey( spep_3 -55 + 218, 1, -22.6, -32 , 0 );
setMoveKey( spep_3 -55 + 219, 1, -22.6, -32 , 0 );
setMoveKey( spep_3 -55 + 220, 1, 9.2, -32 , 0 );
setMoveKey( spep_3 -55 + 221, 1, 9.2, -32 , 0 );
setMoveKey( spep_3 -55 + 222, 1, 41, -32 , 0 );
setMoveKey( spep_3 -55 + 223, 1, 41, -32 , 0 );
setMoveKey( spep_3 -55 + 224, 1, 116.8, 16 , 0 );
setMoveKey( spep_3 -55 + 225, 1, 116.8, 16 , 0 );
setMoveKey( spep_3 -55 + 226, 1, 142.7, -56 , 0 );
setMoveKey( spep_3 -55 + 227, 1, 142.7, -56 , 0 );
setMoveKey( spep_3 -55 + 228, 1, 234.6, -20 , 0 );
setMoveKey( spep_3 -55 + 229, 1, 234.6, -20 , 0 );
setMoveKey( spep_3 -55 + 230, 1, 156.5, -3.8 , 0 );
setMoveKey( spep_3 -55 + 231, 1, 156.5, -3.8 , 0 );
setMoveKey( spep_3 -55 + 232, 1, 275.5, -44 , 0 );
setMoveKey( spep_3 -55 + 233, 1, 275.5, -44 , 0 );
setMoveKey( spep_3 -55 + 234, 1, 198, -11.8 , 0 );
setMoveKey( spep_3 -55 + 235, 1, 198, -11.8 , 0 );
setMoveKey( spep_3 -55 + 236, 1, 213.7, -76 , 0 );
setMoveKey( spep_3 -55 + 237, 1, 213.7, -76 , 0 );
setMoveKey( spep_3 -55 + 238, 1, 196.9, -7.8 , 0 );
setMoveKey( spep_3 -55 + 239, 1, 196.9, -7.8 , 0 );--
setMoveKey( spep_3 -55 + 240, 1, 225.2, -4 , 0 );
setMoveKey( spep_3 -55 + 241, 1, 225.2, -4 , 0 );
setMoveKey( spep_3 -55 + 242, 1, 213.1, -51.8 , 0 );
setMoveKey( spep_3 -55 + 243, 1, 213.1, -51.8 , 0 );
setMoveKey( spep_3 -55 + 244, 1, 186.1, -32 , 0 );
setMoveKey( spep_3 -55 + 245, 1, 186.1, -32 , 0 );
setMoveKey( spep_3 -55 + 246, 1, 240.8, -3.8 , 0 );
setMoveKey( spep_3 -55 + 247, 1, 240.8, -3.8 , 0 );
setMoveKey( spep_3 -55 + 248, 1, 212.3, -52 , 0 );
setMoveKey( spep_3 -55 + 249, 1, 212.3, -52 , 0 );
setMoveKey( spep_3 -55 + 250, 1, 226.9, 0.2 , 0 );
setMoveKey( spep_3 -55 + 251, 1, 226.9, 0.2 , 0 );
setMoveKey( spep_3 -55 + 252, 1, 230.3, -32 , 0 );
setMoveKey( spep_3 -55 + 253, 1, 230.3, -32 , 0 );
setMoveKey( spep_3 -55 + 254, 1, 232.9, -31.8 , 0 );
setMoveKey( spep_3 -55 + 255, 1, 232.9, -31.8 , 0 );
setMoveKey( spep_3 -55 + 256, 1, 236.2, -32 , 0 );
setMoveKey( spep_3 -55 + 257, 1, 236.2, -32 , 0 );
setMoveKey( spep_3 -55 + 258, 1, 238.8, -31.8 , 0 );
setMoveKey( spep_3 -55 + 259, 1, 238.8, -31.8 , 0 );
setMoveKey( spep_3 -55 + 260, 1, 242, -32 , 0 );
setMoveKey( spep_3 -55 + 261, 1, 242, -32 , 0 );
setMoveKey( spep_3 -55 + 262, 1, 244.5, -31.8 , 0 );
setMoveKey( spep_3 -55 + 263, 1, 244.5, -31.8 , 0 );
setMoveKey( spep_3 -55 + 264, 1, 247.7, -32 , 0 );
setMoveKey( spep_3 -55 + 265, 1, 247.7, -32 , 0 );
setMoveKey( spep_3 -55 + 266, 1, 250.1, -31.8 , 0 );
setMoveKey( spep_3 -55 + 267, 1, 250.1, -31.8 , 0 );
--setMoveKey( spep_3 -55 + 268, 1, 253.2, -32 , 0 );
--setMoveKey( spep_3 -55 + 269, 1, 253.2, -32 , 0 );

setScaleKey( spep_3 -55 + 214, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 228, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 229, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 230, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 231, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 232, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 233, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 234, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 235, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 236, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 237, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 238, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 239, 1, 1.55, 1.55 );--
setScaleKey( spep_3 -55 + 240, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 241, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 242, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 243, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 244, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 245, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 246, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 247, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 248, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 249, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 250, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 251, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 252, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 253, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 254, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 255, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 256, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 257, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 258, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 259, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 260, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 261, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 262, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 263, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 264, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 265, 1, 1.47, 1.47 );
setScaleKey( spep_3 -55 + 266, 1, 1.55, 1.55 );
setScaleKey( spep_3 -55 + 267, 1, 1.55, 1.55 );
--setScaleKey( spep_3 -55 + 268, 1, 1.47, 1.47 );
--setScaleKey( spep_3 -55 + 269, 1, 1.47, 1.47 );

setRotateKey( spep_3 -55 + 214, 1, -37.9 );
setRotateKey( spep_3 -55 + 224, 1, -37.9 );
setRotateKey( spep_3 -55 + 225, 1, -37.9 );
setRotateKey( spep_3 -55 + 226, 1, -18 );
setRotateKey( spep_3 -55 + 267, 1, -18 );

-- ** 音 ** --
--瞬間移動
SE027 = playSeVer2( spep_3 + 4, 1109, "", 0, 0, 0, -1);

--ラッシュ
SE028 = playSeVer2( spep_3 + 36, 1110, "",spep_3 + 64, 0, 8, -1);
SE029 = playSeVer2( spep_3 + 40, 1009, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_3 + 44, 1110, "",spep_3 + 68, 0, 8, -1);
SE031 = playSeVer2( spep_3 + 52, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 52, SE031, 60 );
SE032 = playSeVer2( spep_3 + 58, 1110, "",spep_3 + 82, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 58, SE032, 79 );
SE033 = playSeVer2( spep_3 + 62, 1010, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_3 + 70, 1110, "",spep_3 + 94, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 70, SE034, 89 );
SE035 = playSeVer2( spep_3 + 74, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 74, SE035, 80 );
SE036 = playSeVer2( spep_3 + 78, 1110, "",spep_3 + 102, 0, 8, -1);

SE038 = playSeVer2( spep_3 + 82, 1000, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_3 + 90, 1110, "",spep_3 + 114, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 90, SE039, 86 );
SE040 = playSeVer2( spep_3 + 100, 1110, "",spep_3 + 124, 0, 10, -1);

--ピッコロ向かってくる
SE037 = playSeVer2( spep_3 + 100, 1072, "", 0, 8, 0, -1);
setStartTimeMs( SE037,  367 );
SE041 = playSeVer2( spep_3 + 104, 1117, "",spep_3 + 170, 0, 12, -1);
SE042 = playSeVer2( spep_3 + 108, 1191, "",spep_3 + 170, 0, 12, -1);

--気弾溜め
SE043 = playSeVer2( spep_3 + 110, 1276, "",spep_3 + 170, 0, 12, -1);

--ピッコロ気弾発射
SE044 = playSeVer2( spep_3 + 134, 1145, "",spep_3 + 176, 0, 18, -1);
setSeVolumeByWorkId( spep_3 + 134, SE044, 72 );
SE045 = playSeVer2( spep_3 + 156, 1011, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_3 + 156, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 156, SE046, 85 );

--画面遷移
SE047 = playSeVer2( spep_3 + 192, 1072, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_3 + 192, SE047, 116 );
setStartTimeMs( SE047,  350 );

--かめはめ波溜め
SE048 = playSeVer2( spep_3 + 196, 1210, "",spep_3 + 378, 0, 10, -1);
SE050 = playSeVer2( spep_3 + 206, 1209, "",spep_3 + 378, 0, 10, -1);

--オーラ
SE049 = playSeVer2( spep_3 + 200, 1036, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 214 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 212;


------------------------------------------------------
-- かめはめ波～フィニッシュ(446F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_06r, 0x100, -1, 0, 0, 0 );  --かめはめ波～フィニッシュ	ef_004_front
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 446, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 446, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 446, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 446 -2, finish_f, 255 );
setEffAlphaKey( spep_4 + 446 -1, finish_f, 255 );
setEffAlphaKey( spep_4 + 446, finish_f, 0 );

finish_b = entryEffect( spep_4 + 0, SP_07r, 0x80, -1, 0, 0, 0 );  --かめはめ波～フィニッシュ	ef_004_back
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 446, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 446, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 446, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 446 -2, finish_b, 255 );
setEffAlphaKey( spep_4 + 446 -1, finish_b, 255 );
setEffAlphaKey( spep_4 + 446, finish_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 +1 + 226, 1, 1 );
setDisp( spep_4 +1 + 254, 1, 0 );
changeAnime( spep_4 +1 + 226, 1, 5 );

setMoveKey( spep_4 +1 + 226, 1, 72.2, -56 , 0 );
setMoveKey( spep_4 +1 + 228, 1, 75.5, -54.5 , 0 );
setMoveKey( spep_4 +1 + 230, 1, 85.2, -50 , 0 );
setMoveKey( spep_4 +1 + 232, 1, 101.5, -42.5 , 0 );
setMoveKey( spep_4 +1 + 234, 1, 124.2, -32 , 0 );
setMoveKey( spep_4 +1 + 236, 1, 129.2, -27.3 , 0 );
setMoveKey( spep_4 +1 + 238, 1, 133.6, -23.1 , 0 );
setMoveKey( spep_4 +1 + 240, 1, 137.4, -19.6 , 0 );
setMoveKey( spep_4 +1 + 242, 1, 140.6, -16.5 , 0 );
setMoveKey( spep_4 +1 + 244, 1, 143.2, -14 , 0 );
setMoveKey( spep_4 +1 + 246, 1, 145.3, -12.1 , 0 );
setMoveKey( spep_4 +1 + 248, 1, 146.7, -10.7 , 0 );
setMoveKey( spep_4 +1 + 250, 1, 147.6, -9.9 , 0 );
setMoveKey( spep_4 +1 + 252, 1, 167.9, 10.4 , 0 );
setMoveKey( spep_4 +1 + 254, 1, 167.9, 10.4 , 0 );

setScaleKey( spep_4 +1 + 226, 1, 1.51, 1.51 );
setScaleKey( spep_4 +1 + 228, 1, 1.48, 1.48 );
setScaleKey( spep_4 +1 + 230, 1, 1.38, 1.38 );
setScaleKey( spep_4 +1 + 232, 1, 1.22, 1.22 );
setScaleKey( spep_4 +1 + 234, 1, 1, 1 );
setScaleKey( spep_4 +1 + 236, 1, 0.97, 0.97 );
setScaleKey( spep_4 +1 + 238, 1, 0.95, 0.95 );
setScaleKey( spep_4 +1 + 240, 1, 0.93, 0.93 );
setScaleKey( spep_4 +1 + 242, 1, 0.91, 0.91 );
setScaleKey( spep_4 +1 + 244, 1, 0.89, 0.89 );
setScaleKey( spep_4 +1 + 246, 1, 0.88, 0.88 );
setScaleKey( spep_4 +1 + 248, 1, 0.87, 0.87 );
setScaleKey( spep_4 +1 + 252, 1, 0.87, 0.87 );
setScaleKey( spep_4 +1 + 254, 1, 0.87, 0.87 );

setRotateKey( spep_4 +1 + 226, 1, 62.7 );
setRotateKey( spep_4 +1 + 254, 1, 62.7 );

-- ** 音 ** --
--オーラ
SE051 = playSeVer2( spep_4 + 12, 1036, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_4 + 36, 1036, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_4 + 60, 1036, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_4 + 84, 1036, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_4 + 108, 1036, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_4 + 132, 1036, "", 0, 0, 0, -1);

--構える
SE052 = playSeVer2( spep_4 + 20, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 20, SE052, 81 );

--横アップ
SE055 = playSeVer2( spep_4 + 66, 8, "", 0, 0, 0, -1);

--かめはめ波発射
SE059 = playSeVer2( spep_4 + 158, 1133, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_4 + 158, 1146, "",spep_4 + 334, 0, 18, -1);
setSeVolumeByWorkId( spep_4 + 158, SE060, 85 );
SE061 = playSeVer2( spep_4 + 158, 1284, "",spep_4 + 334, 0, 18, -1);
setSeVolumeByWorkId( spep_4 + 158, SE061, 86 );

--かめはめ波中
SE062 = playSeVer2( spep_4 + 196, 1161, "",spep_4 + 334, 0, 18, -1);
SE063 = playSeVer2( spep_4 + 196, 1211, "",spep_4 + 334, 0, 18, -1);
setSeVolumeByWorkId( spep_4 + 196, SE063, 422 );

--かめはめ波飛んでいく
SE064 = playSeVer2( spep_4 + 220, 1021, "", 0, 0, 0, -1);

--敵ヒット
SE065 = playSeVer2( spep_4 + 240, 1011, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_4 + 246, 1025, "", 0, 0, 0, -1);

--爆発
SE067 = playSeVer2( spep_4 + 302, 1024, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_4 + 302, 1159, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_4 + 308, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 446 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 308 );
endPhase( spep_4 + 436 );

end