--1022090:超17号_ヘルズストーム
--sp_effect_a8_00044
--sp2194


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
SP_01 = 157358;	--後方の敵を見つけて手首外す	ef_001_chara
SP_02 = 157359;	--↑背景	ef_001_bg
SP_03 = 157360;	--手首と外してマシンガン連射	ef_002
SP_04 = 157362;	--弾幕が登って敵に当たる	ef_003_effect
SP_05 = 157363;	--↑背景	ef_003_bg
SP_06 = 157366;	--マシンガン連射（寄り）	ef_004
SP_07 = 157367;	--煙が大きくなりフェード	ef_005_effect
SP_08 = 157368;	--↑背景	ef_005_bg
SP_09 = 157369;	--撃ち終わって手を戻す	ef_006

--敵側
SP_01r = 157370;  --後方の敵を見つけて手首外す   ef_001_chara_r
SP_02r = 157371;  --↑背景 ef_001_bg_r
SP_03r = 157361;	--手首と外してマシンガン連射	ef_002_r
SP_04r = 157364;	--弾幕が登って敵に当たる	ef_003_r_effect
SP_05r = 157365;	--↑背景	ef_003_r_bg

adjustAttackerLabel( 0, 205);

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 後方の敵を見つけて手首外す(186F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 186, 0x100, -1, 0, 0, 0 );  --後方の敵を見つけて手首外す	ef_001_chara
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 186, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 186, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 186, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 186 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 186, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 186, 0x80, -1, 0, 0, 0 );  --↑背景	ef_001_bg
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 186, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 186, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 186, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 186 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 186, first_b, 0 );

spep_x = spep_0 + 84;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 90, 1, 0 );
changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 203.8, 85.4 , 0 );
setMoveKey( spep_0 + 1, 1, 204.6, 85.4 , 0 );
setMoveKey( spep_0 + 2, 1, 205.5, 85.4 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 206.4, 85.3 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 207.3, 85.3 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 208.2, 85.3 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 209.1, 85.3 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 210, 85.2 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 210.9, 85.2 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 211.8, 85.2 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 212.7, 85.2 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 213.6, 85.1 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 214.5, 85.1 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 215.4, 85.1 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 216.3, 85.1 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 217.2, 85 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 218, 85 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 218.9, 85 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 219.8, 85 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 220.7, 84.9 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 221.6, 84.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 222.5, 84.9 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 223.4, 84.9 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 224.3, 84.8 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 225.2, 84.8 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 226.1, 84.8 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 227, 84.8 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 227.9, 84.7 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 228.8, 84.7 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 229.7, 84.7 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 230.6, 84.7 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 231.5, 84.6 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 232.3, 84.6 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 233.2, 84.6 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 234.1, 84.6 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 235, 84.5 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 235.9, 84.5 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 236.8, 84.5 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 237.7, 84.5 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 238.6, 84.4 , 0 );
setMoveKey( spep_0 -3 + 79, 1, 238.6, 84.4 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 238.6, 84.4 , 0 );

setScaleKey( spep_0 + 0, 1, 1, 1 );
--setScaleKey( spep_0 -3 + 6, 1, 1, 1 );
--setScaleKey( spep_0 -3 + 8, 1, 0.99, 0.99 );
--setScaleKey( spep_0 -3 + 22, 1, 0.99, 0.99 );
--setScaleKey( spep_0 -3 + 24, 1, 0.98, 0.98 );
--setScaleKey( spep_0 -3 + 38, 1, 0.98, 0.98 );
--setScaleKey( spep_0 -3 + 40, 1, 0.97, 0.97 );
--setScaleKey( spep_0 -3 + 54, 1, 0.97, 0.97 );
--setScaleKey( spep_0 -3 + 56, 1, 0.96, 0.96 );
--setScaleKey( spep_0 -3 + 70, 1, 0.96, 0.96 );
--setScaleKey( spep_0 -3 + 72, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 79, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 90, 1, 0.95, 0.95 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 -3 + 90, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 0, 8 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 54 );

--環境音
SE002 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 13 );
stopSe( spep_0 +186 + 8, SE002, 0 );

--左手構え
SE003 = playSe( spep_0 + 88, 1003 );
setSeVolumeByWorkId( spep_0 + 88, SE003, 72 );

--顔カットイン
SE004 = playSe( spep_0 + 90, 1018 );

--腕外す
SE005 = playSe( spep_0 + 126, 1208 );
setSeVolumeByWorkId( spep_0 + 126, SE005, 7 );
setSeVolumeByWorkId( spep_0 + 127, SE005, 14 );
setSeVolumeByWorkId( spep_0 + 128, SE005, 24 );
setSeVolumeByWorkId( spep_0 + 129, SE005, 34 );
setSeVolumeByWorkId( spep_0 + 130, SE005, 44 );
setStartTimeMs( SE005,  100 );

--腕外す
SE006 = playSe( spep_0 + 130, 6 );
setSeVolumeByWorkId( spep_0 + 130, SE006, 71 );
stopSe( spep_0 + 140, SE006, 10 );
setPitch( spep_0 + 130, SE006, 300 );
setTimeStretch( SE006, 1.2, 10, 1 );

--腕外す
SE007 = playSe( spep_0 + 158, 1150 );
setSeVolumeByWorkId( spep_0 + 158, SE007, 23 );
setSeVolumeByWorkId( spep_0 + 159, SE007, 46 );
setSeVolumeByWorkId( spep_0 + 160, SE007, 71 );
setStartTimeMs( SE007,  467 );

--腕外す
SE008 = playSe( spep_0 + 156, 1041 );
stopSe( spep_0 + 164, SE008, 10 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 186 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 186;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 手首と外してマシンガン連射(116F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
hand = entryEffectLife( spep_2 + 0, SP_03, 116, 0x100, -1, 0, 0, 0 );  --手首と外してマシンガン連射	ef_002
setEffMoveKey( spep_2 + 0, hand, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, hand, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hand, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, hand, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hand, 0 );
setEffRotateKey( spep_2 + 116, hand, 0 );
setEffAlphaKey( spep_2 + 0, hand, 255 );
setEffAlphaKey( spep_2 + 116 -1, hand, 255 );
setEffAlphaKey( spep_2 + 116, hand, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

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
--腕前に出す
SE010 = playSe( spep_2 + 8, 1004 );
setSeVolumeByWorkId( spep_2 + 8, SE010, 74 );

--マシンガン
SE011 = playSe( spep_2 + 24, 1149,"",0.6 );
setSeVolumeByWorkId( spep_2 + 24, SE011, 89 );
stopSe( spep_2 +116 + 28, SE011, 2 );

--マシンガン中金属音
SE012 = playSe( spep_2 + 50, 1016 );
setSeVolumeByWorkId( spep_2 + 50, SE012, 86 );
stopSe( spep_2 + 56, SE012, 8 );
setPitch( spep_2 + 50, SE012, -600 );
setTimeStretch( SE012, 0.6, 10, 1 );

--マシンガン中金属音
SE013 = playSe( spep_2 + 70, 1218 );
setSeVolumeByWorkId( spep_2 + 70, SE013, 83 );
setSeVolumeByWorkId( spep_2 + 71, SE013, 166 );
setSeVolumeByWorkId( spep_2 + 72, SE013, 251 );
stopSe( spep_2 + 80, SE013, 8 );
setStartTimeMs( SE013,  217 );

--マシンガン中金属音
SE014 = playSe( spep_2 + 86, 1016 );
stopSe( spep_2 + 94, SE014, 8 );
setPitch( spep_2 + 86, SE014, -300 );
setTimeStretch( SE014, 0.8, 10, 1 );

--マシンガン中金属音
SE015 = playSe( spep_2 + 100, 1218 );
setSeVolumeByWorkId( spep_2 + 100, SE015, 83 );
setSeVolumeByWorkId( spep_2 + 101, SE015, 166 );
setSeVolumeByWorkId( spep_2 + 102, SE015, 251 );
stopSe( spep_2 +116 +66 + 30, SE015, 6 );
setStartTimeMs( SE015,  200 );

--マシンガン中金属音
SE016 = playSe( spep_2 + 108, 1218 );
setSeVolumeByWorkId( spep_2 + 108, SE016, 83 );
setSeVolumeByWorkId( spep_2 + 109, SE016, 166 );
setSeVolumeByWorkId( spep_2 + 110, SE016, 251 );
stopSe( spep_2 +116 + 4, SE016, 6 );
setStartTimeMs( SE016,  200 );
setPitch( spep_2 + 108, SE016, 200 );
setTimeStretch( SE016, 1.13, 10, 1 );

--マシンガン中金属音
SE018 = playSe( spep_2 + 112, 1016 );
setSeVolumeByWorkId( spep_2 + 112, SE018, 80 );
stopSe( spep_2 +116 + 4, SE018, 8 );
setPitch( spep_2 + 112, SE018, -600 );
setTimeStretch( SE018, 0.6, 10, 1 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;


------------------------------------------------------
-- 弾幕が登って敵に当たる(66F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
climb_f = entryEffectLife( spep_3 + 0, SP_04, 66, 0x100, -1, 0, 0, 0 );  --弾幕が登って敵に当たる	ef_003_effect
setEffMoveKey( spep_3 + 0, climb_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66, climb_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, climb_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, climb_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, climb_f, 0 );
setEffRotateKey( spep_3 + 66, climb_f, 0 );
setEffAlphaKey( spep_3 + 0, climb_f, 255 );
setEffAlphaKey( spep_3 + 66 -1, climb_f, 255 );
setEffAlphaKey( spep_3 + 66, climb_f, 0 );

climb_b = entryEffectLife( spep_3 + 0, SP_05, 66, 0x80, -1, 0, 0, 0 );  --↑背景	ef_003_bg
setEffMoveKey( spep_3 + 0, climb_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66, climb_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, climb_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, climb_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, climb_b, 0 );
setEffRotateKey( spep_3 + 66, climb_b, 0 );
setEffAlphaKey( spep_3 + 0, climb_b, 255 );
setEffAlphaKey( spep_3 + 66 -1, climb_b, 255 );
setEffAlphaKey( spep_3 + 66, climb_b, 0 );

-- ** 書き文字エントリー ** --
ctdogaga1 = entryEffectLife( spep_3 -3 + 16,  10017, 52, 0x100, -1, 0, -8.7, 365.8 );
setEffMoveKey( spep_3 -3 + 16, ctdogaga1, -8.7, 365.8 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctdogaga1, -1.1, 361.3 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctdogaga1, -6.6, 377.7 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctdogaga1, -8.4, 365.3 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctdogaga1, -10.7, 380.6 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctdogaga1, -10.7, 368.3 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctdogaga1, -14.2, 381.9 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctdogaga1, -16.5, 378.3 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctdogaga1, -20.3, 378.4 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctdogaga1, -9.1, 371.5 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctdogaga1, -11.2, 385.5 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctdogaga1, -9.6, 370.7 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctdogaga1, -8.4, 383.6 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctdogaga1, -5, 368.9 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctdogaga1, -5, 380.1 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctdogaga1, -6.4, 364.3 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctdogaga1, -1.8, 383.2 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctdogaga1, -6.1, 369.4 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctdogaga1, 6.2, 374.7 , 0 );
setEffMoveKey( spep_3 -3 + 54, ctdogaga1, 0.2, 363.1 , 0 );
setEffMoveKey( spep_3 -3 + 56, ctdogaga1, 8.1, 379.9 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctdogaga1, -0.7, 365.7 , 0 );
setEffMoveKey( spep_3 -3 + 60, ctdogaga1, 15.3, 373.5 , 0 );
setEffMoveKey( spep_3 -3 + 62, ctdogaga1, 4.8, 366.5 , 0 );
setEffMoveKey( spep_3 -3 + 64, ctdogaga1, 18.6, 367 , 0 );
setEffMoveKey( spep_3 -3 + 66, ctdogaga1, 6.8, 369.3 , 0 );
setEffMoveKey( spep_3 -3 + 68, ctdogaga1, 13.9, 373.8 , 0 );

setEffScaleKey( spep_3 -3 + 16, ctdogaga1, 2.61, 2.61 );
setEffScaleKey( spep_3 -3 + 68, ctdogaga1, 2.61, 2.61 );

setEffRotateKey( spep_3 -3 + 16, ctdogaga1, -5 );
setEffRotateKey( spep_3 -3 + 68, ctdogaga1, -5 );

setEffAlphaKey( spep_3 -3 + 16, ctdogaga1, 32 );
setEffAlphaKey( spep_3 -3 + 18, ctdogaga1, 64 );
setEffAlphaKey( spep_3 -3 + 20, ctdogaga1, 96 );
setEffAlphaKey( spep_3 -3 + 22, ctdogaga1, 128 );
setEffAlphaKey( spep_3 -3 + 24, ctdogaga1, 159 );
setEffAlphaKey( spep_3 -3 + 26, ctdogaga1, 191 );
setEffAlphaKey( spep_3 -3 + 28, ctdogaga1, 223 );
setEffAlphaKey( spep_3 -3 + 30, ctdogaga1, 255 );
setEffAlphaKey( spep_3 -3 + 68, ctdogaga1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 69, 1, 0 );
changeAnime( spep_3 + 0, 1, 117 );
changeAnime( spep_3 -3 + 30, 1, 106 );


a3 = 15;
b3 = 15;
setMoveKey( spep_3 + 0, 1, 129 -a3, 127.8 +b3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 129 -a3, 127.8 +b3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 115.3 -a3, 113.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 101.6 -a3, 99.4 +b3 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 87.9 -a3, 85.2 +b3 , 0 );
setMoveKey( spep_3 -3 + 29, 1, 74.2 -a3, 71 +b3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 60.5 -a3, 36.8 +b3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 53.4 -a3, 22.9 +b3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 50.8 -a3, 12.7 +b3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -4.9 -a3, -5.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 54.5 -a3, 23.3 +b3 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 45.8 -a3, 15.1 +b3 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 87.2 -a3, 38.9 +b3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 47.6 -a3, 2.7 +b3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 69.9 -a3, 2.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 53.3 -a3, 8.3 +b3 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 50.6 -a3, 6.1 +b3 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 53 -a3, -18.1 +b3 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 50.3 -a3, -6.3 +b3 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 61.7 -a3, -17.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 52 -a3, -8.7 +b3 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 56.8 -a3, -9.2 +b3 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 51.6 -a3, 13.3 +b3 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 39.4 -a3, -41.2 +b3 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 32.2 -a3, -34.7 +b3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 36 -a3, -21.2 +b3 , 0 );
setMoveKey( spep_3 -3 + 69, 1, 36 -a3, -21.2 +b3 , 0 );

s3 = 0;
setScaleKey( spep_3 + 0, 1, 1, 1 );
setScaleKey( spep_3 -3 + 29, 1, 1, 1 );
setScaleKey( spep_3 -3 + 30, 1, 1 +s3, 1 +s3 );
setScaleKey( spep_3 -3 + 69, 1, 1 +s3, 1 +s3 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 29, 1, 0 );
setRotateKey( spep_3 -3 + 30, 1, -50 );
setRotateKey( spep_3 -3 + 69, 1, -50 );

-- ** 音 ** --
--マシンガン中金属音
SE017 = playSe( spep_3 + 6, 1218 );
setSeVolumeByWorkId( spep_3 + 6, SE017, 83 );
setSeVolumeByWorkId( spep_3 + 7, SE017, 166 );
setSeVolumeByWorkId( spep_3 + 8, SE017, 251 );
stopSe( spep_3 + 16, SE017, 8 );
setStartTimeMs( SE017,  217 );
setPitch( spep_3 + 6, SE017, 500 );
setTimeStretch( SE017, 1.33, 10, 1 );

--マシンガン中金属音
SE019 = playSe( spep_3 + 26, 1218 );
setSeVolumeByWorkId( spep_3 + 26, SE019, 83 );
setSeVolumeByWorkId( spep_3 + 27, SE019, 166 );
setSeVolumeByWorkId( spep_3 + 28, SE019, 251 );
stopSe( spep_3 + 36, SE019, 8 );
setStartTimeMs( SE019,  217 );

--マシンガン
SE020 = playSe( spep_3 + 20, 1149,"",0.6 );
setSeVolumeByWorkId( spep_3 + 20, SE020, 89 );
stopSe( spep_3 +66 + 78, SE020, 6 );

--爆発
SE021 = playSe( spep_3 + 22, 1024 );
setSeVolumeByWorkId( spep_3 + 22, SE021, 60 );

--マシンガン中金属音
SE022 = playSe( spep_3 + 62, 1016 );
setSeVolumeByWorkId( spep_3 + 62, SE022, 65 );
stopSe( spep_3 +66 + 2, SE022, 8 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 66;


------------------------------------------------------
-- マシンガン連射（寄り）(132F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
lash = entryEffectLife( spep_4 + 0, SP_06, 132, 0x100, -1, 0, 0, 0 );  --マシンガン連射（寄り）	ef_004
setEffMoveKey( spep_4 + 0, lash, 0, 0 , 0 );
setEffMoveKey( spep_4 + 132, lash, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, lash, 1.0, 1.0 );
setEffScaleKey( spep_4 + 132, lash, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, lash, 0 );
setEffRotateKey( spep_4 + 132, lash, 0 );
setEffAlphaKey( spep_4 + 0, lash, 255 );
setEffAlphaKey( spep_4 + 132 -1, lash, 255 );
setEffAlphaKey( spep_4 + 132, lash, 0 );

-- ** 音 ** --
--マシンガン中金属音
SE023 = playSe( spep_4 + 18, 1218 );
setSeVolumeByWorkId( spep_4 + 18, SE023, 33 );
setSeVolumeByWorkId( spep_4 + 19, SE023, 66 );
setSeVolumeByWorkId( spep_4 + 20, SE023, 100 );
stopSe( spep_4 + 28, SE023, 6 );
setStartTimeMs( SE023,  233 );
setPitch( spep_4 + 28, SE023, 300 );
setTimeStretch( SE023, 1.2, 10, 1 );

--マシンガン中金属音
SE024 = playSe( spep_4 + 46, 1016 );
setSeVolumeByWorkId( spep_4 + 46, SE024, 79 );
stopSe( spep_4 + 52, SE024, 8 );
setPitch( spep_4 + 46, SE024, 200 );
setTimeStretch( SE024, 1.13, 10, 1 );

--マシンガン中金属音
SE025 = playSe( spep_4 + 54, 1016 );
setSeVolumeByWorkId( spep_4 + 54, SE025, 71 );
stopSe( spep_4 + 62, SE025, 6 );
setPitch( spep_4 + 54, SE025, -600 );
setTimeStretch( SE025, 0.6, 10, 1 );

--マシンガン中金属音
SE026 = playSe( spep_4 + 76, 1218 );
setSeVolumeByWorkId( spep_4 + 76, SE026, 83 );
setSeVolumeByWorkId( spep_4 + 77, SE026, 166 );
setSeVolumeByWorkId( spep_4 + 78, SE026, 251 );
stopSe( spep_4 + 86, SE026, 8 );
setStartTimeMs( SE026,  217 );
setPitch( spep_4 + 76, SE026, 500 );
setTimeStretch( SE026, 1.33, 10, 1 );

--マシンガン
SE027 = playSe( spep_4 + 74, 1149,"",0.6 );
setSeVolumeByWorkId( spep_4 + 74, SE027, 89 );

--マシンガン中金属音
SE028 = playSe( spep_4 + 86, 1218 );
setSeVolumeByWorkId( spep_4 + 86, SE028, 83 );
setSeVolumeByWorkId( spep_4 + 87, SE028, 166 );
setSeVolumeByWorkId( spep_4 + 88, SE028, 251 );
stopSe( spep_4 + 98, SE028, 6 );
setStartTimeMs( SE028,  200 );

--マシンガン中金属音
SE029 = playSe( spep_4 + 108, 1016 );
setSeVolumeByWorkId( spep_4 + 108, SE029, 79 );
stopSe( spep_4 + 114, SE029, 8 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 132 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_4 + 1, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 47, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 53, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 59, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 132;


------------------------------------------------------
-- 煙が大きくなりフェード(116F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_5 + 0, SP_07, 116, 0x100, -1, 0, 0, 0 );  --煙が大きくなりフェード	ef_005_effect
setEffMoveKey( spep_5 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 116, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 116, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 116, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 116 -1, hit_f, 255 );
setEffAlphaKey( spep_5 + 116, hit_f, 0 );

hit_b = entryEffectLife( spep_5 + 0, SP_08, 116, 0x80, -1, 0, 0, 0 );  --↑背景	ef_005_bg
setEffMoveKey( spep_5 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 116, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 116, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 116, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 116 -1, hit_b, 255 );
setEffAlphaKey( spep_5 + 116, hit_b, 0 );

-- ** 書き文字エントリー ** --
ctdogaga2 = entryEffectLife( spep_5 + 0,  10017, 110 -3, 0x100, -1, 0, -12.1, 373.8 );
setEffMoveKey( spep_5 + 0, ctdogaga2, -12.1, 373.8 , 0 );
setEffMoveKey( spep_5 + 1, ctdogaga2, -15, 358.5 , 0 );
setEffMoveKey( spep_5 + 2, ctdogaga2, -12, 377.9 , 0 );
setEffMoveKey( spep_5 -3 + 6, ctdogaga2, -17.8, 364.7 , 0 );
setEffMoveKey( spep_5 -3 + 8, ctdogaga2, -7.1, 370.5 , 0 );
setEffMoveKey( spep_5 -3 + 10, ctdogaga2, -14.8, 359.5 , 0 );
setEffMoveKey( spep_5 -3 + 12, ctdogaga2, -8.5, 376.7 , 0 );
setEffMoveKey( spep_5 -3 + 14, ctdogaga2, -18.8, 363.1 , 0 );
setEffMoveKey( spep_5 -3 + 16, ctdogaga2, -4.4, 371.4 , 0 );
setEffMoveKey( spep_5 -3 + 18, ctdogaga2, -16.4, 364.9 , 0 );
setEffMoveKey( spep_5 -3 + 20, ctdogaga2, -4.3, 366 , 0 );
setEffMoveKey( spep_5 -3 + 22, ctdogaga2, -17.6, 368.7 , 0 );
setEffMoveKey( spep_5 -3 + 24, ctdogaga2, -4.2, 370.2 , 0 );
setEffMoveKey( spep_5 -3 + 26, ctdogaga2, -12.5, 368.3 , 0 );
setEffMoveKey( spep_5 -3 + 28, ctdogaga2, -17.8, 368.9 , 0 );
setEffMoveKey( spep_5 -3 + 30, ctdogaga2, -8.3, 362.6 , 0 );
setEffMoveKey( spep_5 -3 + 32, ctdogaga2, -12, 377.1 , 0 );
setEffMoveKey( spep_5 -3 + 34, ctdogaga2, -11.9, 362.8 , 0 );
setEffMoveKey( spep_5 -3 + 36, ctdogaga2, -12.3, 376.2 , 0 );
setEffMoveKey( spep_5 -3 + 38, ctdogaga2, -10.4, 362.1 , 0 );
setEffMoveKey( spep_5 -3 + 40, ctdogaga2, -12.1, 373.8 , 0 );
setEffMoveKey( spep_5 -3 + 42, ctdogaga2, -15, 358.5 , 0 );
setEffMoveKey( spep_5 -3 + 44, ctdogaga2, -12, 377.9 , 0 );
setEffMoveKey( spep_5 -3 + 46, ctdogaga2, -17.8, 364.7 , 0 );
setEffMoveKey( spep_5 -3 + 48, ctdogaga2, -7.1, 370.5 , 0 );
setEffMoveKey( spep_5 -3 + 50, ctdogaga2, -14.8, 359.5 , 0 );
setEffMoveKey( spep_5 -3 + 52, ctdogaga2, -8.5, 376.7 , 0 );
setEffMoveKey( spep_5 -3 + 54, ctdogaga2, -18.8, 363.1 , 0 );
setEffMoveKey( spep_5 -3 + 56, ctdogaga2, -4.4, 371.4 , 0 );
setEffMoveKey( spep_5 -3 + 58, ctdogaga2, -16.4, 364.9 , 0 );
setEffMoveKey( spep_5 -3 + 60, ctdogaga2, -4.3, 366 , 0 );
setEffMoveKey( spep_5 -3 + 62, ctdogaga2, -17.6, 368.7 , 0 );
setEffMoveKey( spep_5 -3 + 64, ctdogaga2, -4.2, 370.2 , 0 );
setEffMoveKey( spep_5 -3 + 66, ctdogaga2, -12.5, 368.3 , 0 );
setEffMoveKey( spep_5 -3 + 68, ctdogaga2, -17.8, 368.9 , 0 );
setEffMoveKey( spep_5 -3 + 70, ctdogaga2, -8.3, 362.6 , 0 );
setEffMoveKey( spep_5 -3 + 72, ctdogaga2, -12, 377.1 , 0 );
setEffMoveKey( spep_5 -3 + 74, ctdogaga2, -11.9, 362.8 , 0 );
setEffMoveKey( spep_5 -3 + 76, ctdogaga2, -12.3, 376.2 , 0 );
setEffMoveKey( spep_5 -3 + 78, ctdogaga2, -10.4, 362.1 , 0 );
setEffMoveKey( spep_5 -3 + 80, ctdogaga2, -12.1, 373.8 , 0 );
setEffMoveKey( spep_5 -3 + 82, ctdogaga2, -15, 358.5 , 0 );
setEffMoveKey( spep_5 -3 + 84, ctdogaga2, -12, 377.9 , 0 );
setEffMoveKey( spep_5 -3 + 86, ctdogaga2, -17.8, 364.7 , 0 );
setEffMoveKey( spep_5 -3 + 88, ctdogaga2, -7.1, 370.5 , 0 );
setEffMoveKey( spep_5 -3 + 90, ctdogaga2, -14.8, 359.5 , 0 );
setEffMoveKey( spep_5 -3 + 92, ctdogaga2, -8.5, 376.7 , 0 );
setEffMoveKey( spep_5 -3 + 94, ctdogaga2, -18.8, 363.1 , 0 );
setEffMoveKey( spep_5 -3 + 96, ctdogaga2, -4.4, 371.4 , 0 );
setEffMoveKey( spep_5 -3 + 98, ctdogaga2, -16.4, 364.9 , 0 );
setEffMoveKey( spep_5 -3 + 100, ctdogaga2, -4.3, 366 , 0 );
setEffMoveKey( spep_5 -3 + 102, ctdogaga2, -17.6, 368.7 , 0 );
setEffMoveKey( spep_5 -3 + 104, ctdogaga2, -4.2, 370.2 , 0 );
setEffMoveKey( spep_5 -3 + 106, ctdogaga2, -12.5, 368.3 , 0 );
setEffMoveKey( spep_5 -3 + 108, ctdogaga2, -17.8, 368.9 , 0 );
setEffMoveKey( spep_5 -3 + 110, ctdogaga2, -17.8, 368.9 , 0 );

setEffScaleKey( spep_5 + 0, ctdogaga2, 2.61, 2.61 );
setEffScaleKey( spep_5 -3 + 110, ctdogaga2, 2.61, 2.61 );

setEffRotateKey( spep_5 + 0, ctdogaga2, -5 );
setEffRotateKey( spep_5 -3 + 110, ctdogaga2, -5 );

setEffAlphaKey( spep_5 + 0, ctdogaga2, 255 );
setEffAlphaKey( spep_5 -3 + 60, ctdogaga2, 255 );
setEffAlphaKey( spep_5 -3 + 62, ctdogaga2, 245 );
setEffAlphaKey( spep_5 -3 + 64, ctdogaga2, 235 );
setEffAlphaKey( spep_5 -3 + 66, ctdogaga2, 224 );
setEffAlphaKey( spep_5 -3 + 68, ctdogaga2, 214 );
setEffAlphaKey( spep_5 -3 + 70, ctdogaga2, 204 );
setEffAlphaKey( spep_5 -3 + 72, ctdogaga2, 194 );
setEffAlphaKey( spep_5 -3 + 74, ctdogaga2, 184 );
setEffAlphaKey( spep_5 -3 + 76, ctdogaga2, 173 );
setEffAlphaKey( spep_5 -3 + 78, ctdogaga2, 163 );
setEffAlphaKey( spep_5 -3 + 80, ctdogaga2, 153 );
setEffAlphaKey( spep_5 -3 + 82, ctdogaga2, 143 );
setEffAlphaKey( spep_5 -3 + 84, ctdogaga2, 133 );
setEffAlphaKey( spep_5 -3 + 86, ctdogaga2, 122 );
setEffAlphaKey( spep_5 -3 + 88, ctdogaga2, 112 );
setEffAlphaKey( spep_5 -3 + 90, ctdogaga2, 102 );
setEffAlphaKey( spep_5 -3 + 92, ctdogaga2, 92 );
setEffAlphaKey( spep_5 -3 + 94, ctdogaga2, 82 );
setEffAlphaKey( spep_5 -3 + 96, ctdogaga2, 71 );
setEffAlphaKey( spep_5 -3 + 98, ctdogaga2, 61 );
setEffAlphaKey( spep_5 -3 + 100, ctdogaga2, 51 );
setEffAlphaKey( spep_5 -3 + 102, ctdogaga2, 41 );
setEffAlphaKey( spep_5 -3 + 104, ctdogaga2, 31 );
setEffAlphaKey( spep_5 -3 + 106, ctdogaga2, 20 );
setEffAlphaKey( spep_5 -3 + 108, ctdogaga2, 10 );
setEffAlphaKey( spep_5 -3 + 110, ctdogaga2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 119, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );

a6 = 15;
b5 = 15;
setMoveKey( spep_5 + 0, 1, 44.4 -a6, -19.5 +b5 , 0 );
setMoveKey( spep_5 + 1, 1, 52.4 -a6, -18.5 +b5 , 0 );
setMoveKey( spep_5 + 2, 1, 38.4 -a6, -17.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 59.4 -a6, -39.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 47.4 -a6, 3.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 44.4 -a6, -35.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 54.4 -a6, 0.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 51.4 -a6, -37.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 46.4 -a6, -2.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 57.4 -a6, -7.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 37.4 -a6, -21.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 54.4 -a6, -26.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 54.4 -a6, -5.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 43.4 -a6, -8.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 54.4 -a6, -1.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 49.4 -a6, -21.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 48.4 -a6, -3.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 39.4 -a6, -16.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 41.4 -a6, -13.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 55.4 -a6, -7.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 40.4 -a6, -12.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 55.4 -a6, -20.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 44.4 -a6, -13.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 47.4 -a6, -1.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 52.4 -a6, -19.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 41.4 -a6, -19.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 44.4 -a6, -1.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 40.3 -a6, -21.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 48.3 -a6, -19.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 42.3 -a6, -17.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 54.4 -a6, -20.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 47.3 -a6, -12.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 50.3 -a6, -13.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 39.3 -a6, -19.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 50.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 47.3 -a6, -6.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 49.3 -a6, -16.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 49.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 56.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 52.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 49.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 49.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 49.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 49.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 49.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 49.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 49.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 49.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 53.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 119, 1, 51.3 -a6, -11.5 +b5 , 0 );

setScaleKey( spep_5 + 0, 1, 1, 1 );
setScaleKey( spep_5 -3 + 119, 1, 1, 1 );

setRotateKey( spep_5 + 0, 1, -50 );
setRotateKey( spep_5 -3 + 119, 1, -50 );

-- ** 音 ** --
--ヒット後爆発
SE030 = playSe( spep_5 + 0, 1023,"",0.6 );
setSeVolumeByWorkId( spep_5 + 0, SE030, 76 );

--ヒット後爆発
SE031 = playSe( spep_5 + 40, 1168,"",0.6 );
setSeVolumeByWorkId( spep_5 + 40, SE031, 14 );
setSeVolumeByWorkId( spep_5 + 44, SE031, 28 );
setSeVolumeByWorkId( spep_5 + 48, SE031, 42 );
setSeVolumeByWorkId( spep_5 + 52, SE031, 56 );
setSeVolumeByWorkId( spep_5 + 56, SE031, 68 );
setStartTimeMs( SE031,  650 );

--ヒット後爆発
SE032 = playSe( spep_5 + 18, 1188,"",0.6 );

--ヒット後爆発
SE033 = playSe( spep_5 + 24, 1159,"",0.6 );
setSeVolumeByWorkId( spep_5 + 24, SE033, 63 );

--ヒット後爆発
SE034 = playSe( spep_5 + 36, 1024,"",0.6 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 116;


------------------------------------------------------
-- 撃ち終わって手を戻す(156F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --撃ち終わって手を戻す	ef_006
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 136, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 136, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 136, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 136, finish, 255 );

-- ** 音 ** --
--腕くっつける
SE035 = playSe( spep_6 + 28, 1220 );
stopSe( spep_6 + 34, SE035, 6 );
setPitch( spep_6 + 28, SE035, -400 );
setTimeStretch( SE035, 0.73, 10, 1 );

--腕くっつける
SE036 = playSe( spep_6 + 36, 6 );
setSeVolumeByWorkId( spep_6 + 36, SE036, 89 );
setPitch( spep_6 + 36, SE036, -300 );
setTimeStretch( SE036, 0.8, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 26 );
endPhase( spep_6 + 126 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 後方の敵を見つけて手首外す(186F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 186, 0x100, -1, 0, 0, 0 );  --後方の敵を見つけて手首外す	ef_001_chara
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 186, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 186, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 186, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 186 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 186, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02r, 186, 0x80, -1, 0, 0, 0 );  --↑背景	ef_001_bg
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 186, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 186, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 186, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 186 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 186, first_b, 0 );

spep_x = spep_0 + 84;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 90, 1, 0 );
changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 203.8, 85.4 , 0 );
setMoveKey( spep_0 + 1, 1, 204.6, 85.4 , 0 );
setMoveKey( spep_0 + 2, 1, 205.5, 85.4 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 206.4, 85.3 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 207.3, 85.3 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 208.2, 85.3 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 209.1, 85.3 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 210, 85.2 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 210.9, 85.2 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 211.8, 85.2 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 212.7, 85.2 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 213.6, 85.1 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 214.5, 85.1 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 215.4, 85.1 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 216.3, 85.1 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 217.2, 85 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 218, 85 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 218.9, 85 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 219.8, 85 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 220.7, 84.9 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 221.6, 84.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 222.5, 84.9 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 223.4, 84.9 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 224.3, 84.8 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 225.2, 84.8 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 226.1, 84.8 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 227, 84.8 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 227.9, 84.7 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 228.8, 84.7 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 229.7, 84.7 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 230.6, 84.7 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 231.5, 84.6 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 232.3, 84.6 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 233.2, 84.6 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 234.1, 84.6 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 235, 84.5 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 235.9, 84.5 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 236.8, 84.5 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 237.7, 84.5 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 238.6, 84.4 , 0 );
setMoveKey( spep_0 -3 + 79, 1, 238.6, 84.4 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 238.6, 84.4 , 0 );

setScaleKey( spep_0 + 0, 1, 1, 1 );
--setScaleKey( spep_0 -3 + 6, 1, 1, 1 );
--setScaleKey( spep_0 -3 + 8, 1, 0.99, 0.99 );
--setScaleKey( spep_0 -3 + 22, 1, 0.99, 0.99 );
--setScaleKey( spep_0 -3 + 24, 1, 0.98, 0.98 );
--setScaleKey( spep_0 -3 + 38, 1, 0.98, 0.98 );
--setScaleKey( spep_0 -3 + 40, 1, 0.97, 0.97 );
--setScaleKey( spep_0 -3 + 54, 1, 0.97, 0.97 );
--setScaleKey( spep_0 -3 + 56, 1, 0.96, 0.96 );
--setScaleKey( spep_0 -3 + 70, 1, 0.96, 0.96 );
--setScaleKey( spep_0 -3 + 72, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 79, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 90, 1, 0.95, 0.95 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 -3 + 90, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 0, 8 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 54 );

--環境音
SE002 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 13 );
stopSe( spep_0 +186 + 8, SE002, 0 );

--左手構え
SE003 = playSe( spep_0 + 88, 1003 );
setSeVolumeByWorkId( spep_0 + 88, SE003, 72 );

--顔カットイン
--SE004 = playSe( spep_0 + 90, 1018 );

--腕外す
SE005 = playSe( spep_0 + 126, 1208 );
setSeVolumeByWorkId( spep_0 + 126, SE005, 7 );
setSeVolumeByWorkId( spep_0 + 127, SE005, 14 );
setSeVolumeByWorkId( spep_0 + 128, SE005, 24 );
setSeVolumeByWorkId( spep_0 + 129, SE005, 34 );
setSeVolumeByWorkId( spep_0 + 130, SE005, 44 );
setStartTimeMs( SE005,  100 );

--腕外す
SE006 = playSe( spep_0 + 130, 6 );
setSeVolumeByWorkId( spep_0 + 130, SE006, 71 );
stopSe( spep_0 + 140, SE006, 10 );
setPitch( spep_0 + 130, SE006, 300 );
setTimeStretch( SE006, 1.2, 10, 1 );

--腕外す
SE007 = playSe( spep_0 + 158, 1150 );
setSeVolumeByWorkId( spep_0 + 158, SE007, 23 );
setSeVolumeByWorkId( spep_0 + 159, SE007, 46 );
setSeVolumeByWorkId( spep_0 + 160, SE007, 71 );
setStartTimeMs( SE007,  467 );

--腕外す
SE008 = playSe( spep_0 + 156, 1041 );
stopSe( spep_0 + 164, SE008, 10 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 186 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 186;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
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
SE_CUTIN = playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 手首と外してマシンガン連射(116F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
hand = entryEffectLife( spep_2 + 0, SP_03r, 116, 0x100, -1, 0, 0, 0 );  --手首と外してマシンガン連射	ef_002
setEffMoveKey( spep_2 + 0, hand, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, hand, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hand, -1.0, 1.0 );
setEffScaleKey( spep_2 + 116, hand, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hand, 0 );
setEffRotateKey( spep_2 + 116, hand, 0 );
setEffAlphaKey( spep_2 + 0, hand, 255 );
setEffAlphaKey( spep_2 + 116 -1, hand, 255 );
setEffAlphaKey( spep_2 + 116, hand, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

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
--腕前に出す
SE010 = playSe( spep_2 + 8, 1004 );
setSeVolumeByWorkId( spep_2 + 8, SE010, 74 );

--マシンガン
SE011 = playSe( spep_2 + 24, 1149,"",0.6 );
setSeVolumeByWorkId( spep_2 + 24, SE011, 89 );
stopSe( spep_2 +116 + 28, SE011, 2 );

--マシンガン中金属音
SE012 = playSe( spep_2 + 50, 1016 );
setSeVolumeByWorkId( spep_2 + 50, SE012, 86 );
stopSe( spep_2 + 56, SE012, 8 );
setPitch( spep_2 + 50, SE012, -600 );
setTimeStretch( SE012, 0.6, 10, 1 );

--マシンガン中金属音
SE013 = playSe( spep_2 + 70, 1218 );
setSeVolumeByWorkId( spep_2 + 70, SE013, 83 );
setSeVolumeByWorkId( spep_2 + 71, SE013, 166 );
setSeVolumeByWorkId( spep_2 + 72, SE013, 251 );
stopSe( spep_2 + 80, SE013, 8 );
setStartTimeMs( SE013,  217 );

--マシンガン中金属音
SE014 = playSe( spep_2 + 86, 1016 );
stopSe( spep_2 + 94, SE014, 8 );
setPitch( spep_2 + 86, SE014, -300 );
setTimeStretch( SE014, 0.8, 10, 1 );

--マシンガン中金属音
SE015 = playSe( spep_2 + 100, 1218 );
setSeVolumeByWorkId( spep_2 + 100, SE015, 83 );
setSeVolumeByWorkId( spep_2 + 101, SE015, 166 );
setSeVolumeByWorkId( spep_2 + 102, SE015, 251 );
stopSe( spep_2 +116 +66 + 30, SE015, 6 );
setStartTimeMs( SE015,  200 );

--マシンガン中金属音
SE016 = playSe( spep_2 + 108, 1218 );
setSeVolumeByWorkId( spep_2 + 108, SE016, 83 );
setSeVolumeByWorkId( spep_2 + 109, SE016, 166 );
setSeVolumeByWorkId( spep_2 + 110, SE016, 251 );
stopSe( spep_2 +116 + 4, SE016, 6 );
setStartTimeMs( SE016,  200 );
setPitch( spep_2 + 108, SE016, 200 );
setTimeStretch( SE016, 1.13, 10, 1 );

--マシンガン中金属音
SE018 = playSe( spep_2 + 112, 1016 );
setSeVolumeByWorkId( spep_2 + 112, SE018, 80 );
stopSe( spep_2 +116 + 4, SE018, 8 );
setPitch( spep_2 + 112, SE018, -600 );
setTimeStretch( SE018, 0.6, 10, 1 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;


------------------------------------------------------
-- 弾幕が登って敵に当たる(66F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
climb_f = entryEffectLife( spep_3 + 0, SP_04r, 66, 0x100, -1, 0, 0, 0 );  --弾幕が登って敵に当たる	ef_003_effect
setEffMoveKey( spep_3 + 0, climb_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66, climb_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, climb_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 66, climb_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, climb_f, 0 );
setEffRotateKey( spep_3 + 66, climb_f, 0 );
setEffAlphaKey( spep_3 + 0, climb_f, 255 );
setEffAlphaKey( spep_3 + 66 -1, climb_f, 255 );
setEffAlphaKey( spep_3 + 66, climb_f, 0 );

climb_b = entryEffectLife( spep_3 + 0, SP_05r, 66, 0x80, -1, 0, 0, 0 );  --↑背景	ef_003_bg
setEffMoveKey( spep_3 + 0, climb_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66, climb_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, climb_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 66, climb_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, climb_b, 0 );
setEffRotateKey( spep_3 + 66, climb_b, 0 );
setEffAlphaKey( spep_3 + 0, climb_b, 255 );
setEffAlphaKey( spep_3 + 66 -1, climb_b, 255 );
setEffAlphaKey( spep_3 + 66, climb_b, 0 );

-- ** 書き文字エントリー ** --
ctdogaga1 = entryEffectLife( spep_3 -3 + 16,  10017, 52, 0x100, -1, 0, -8.7, 365.8 );
setEffMoveKey( spep_3 -3 + 16, ctdogaga1, -8.7, 365.8 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctdogaga1, -1.1, 361.3 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctdogaga1, -6.6, 377.7 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctdogaga1, -8.4, 365.3 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctdogaga1, -10.7, 380.6 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctdogaga1, -10.7, 368.3 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctdogaga1, -14.2, 381.9 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctdogaga1, -16.5, 378.3 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctdogaga1, -20.3, 378.4 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctdogaga1, -9.1, 371.5 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctdogaga1, -11.2, 385.5 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctdogaga1, -9.6, 370.7 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctdogaga1, -8.4, 383.6 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctdogaga1, -5, 368.9 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctdogaga1, -5, 380.1 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctdogaga1, -6.4, 364.3 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctdogaga1, -1.8, 383.2 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctdogaga1, -6.1, 369.4 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctdogaga1, 6.2, 374.7 , 0 );
setEffMoveKey( spep_3 -3 + 54, ctdogaga1, 0.2, 363.1 , 0 );
setEffMoveKey( spep_3 -3 + 56, ctdogaga1, 8.1, 379.9 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctdogaga1, -0.7, 365.7 , 0 );
setEffMoveKey( spep_3 -3 + 60, ctdogaga1, 15.3, 373.5 , 0 );
setEffMoveKey( spep_3 -3 + 62, ctdogaga1, 4.8, 366.5 , 0 );
setEffMoveKey( spep_3 -3 + 64, ctdogaga1, 18.6, 367 , 0 );
setEffMoveKey( spep_3 -3 + 66, ctdogaga1, 6.8, 369.3 , 0 );
setEffMoveKey( spep_3 -3 + 68, ctdogaga1, 13.9, 373.8 , 0 );

setEffScaleKey( spep_3 -3 + 16, ctdogaga1, 2.61, 2.61 );
setEffScaleKey( spep_3 -3 + 68, ctdogaga1, 2.61, 2.61 );

setEffRotateKey( spep_3 -3 + 16, ctdogaga1, -5 );
setEffRotateKey( spep_3 -3 + 68, ctdogaga1, -5 );

setEffAlphaKey( spep_3 -3 + 16, ctdogaga1, 32 );
setEffAlphaKey( spep_3 -3 + 18, ctdogaga1, 64 );
setEffAlphaKey( spep_3 -3 + 20, ctdogaga1, 96 );
setEffAlphaKey( spep_3 -3 + 22, ctdogaga1, 128 );
setEffAlphaKey( spep_3 -3 + 24, ctdogaga1, 159 );
setEffAlphaKey( spep_3 -3 + 26, ctdogaga1, 191 );
setEffAlphaKey( spep_3 -3 + 28, ctdogaga1, 223 );
setEffAlphaKey( spep_3 -3 + 30, ctdogaga1, 255 );
setEffAlphaKey( spep_3 -3 + 68, ctdogaga1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 69, 1, 0 );
changeAnime( spep_3 + 0, 1, 117 );
changeAnime( spep_3 -3 + 30, 1, 106 );

a3 = 15;
b3 = 15;
setMoveKey( spep_3 + 0, 1, 129 -a3, 127.8 +b3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 129 -a3, 127.8 +b3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 115.3 -a3, 113.6 +b3 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 101.6 -a3, 99.4 +b3 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 87.9 -a3, 85.2 +b3 , 0 );
setMoveKey( spep_3 -3 + 29, 1, 74.2 -a3, 71 +b3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 60.5 -a3, 36.8 +b3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 53.4 -a3, 22.9 +b3 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 50.8 -a3, 12.7 +b3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -4.9 -a3, -5.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 54.5 -a3, 23.3 +b3 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 45.8 -a3, 15.1 +b3 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 87.2 -a3, 38.9 +b3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 47.6 -a3, 2.7 +b3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 69.9 -a3, 2.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 53.3 -a3, 8.3 +b3 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 50.6 -a3, 6.1 +b3 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 53 -a3, -18.1 +b3 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 50.3 -a3, -6.3 +b3 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 61.7 -a3, -17.5 +b3 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 52 -a3, -8.7 +b3 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 56.8 -a3, -9.2 +b3 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 51.6 -a3, 13.3 +b3 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 39.4 -a3, -41.2 +b3 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 32.2 -a3, -34.7 +b3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 36 -a3, -21.2 +b3 , 0 );
setMoveKey( spep_3 -3 + 69, 1, 36 -a3, -21.2 +b3 , 0 );

s3 = 0;
setScaleKey( spep_3 + 0, 1, 1, 1 );
setScaleKey( spep_3 -3 + 29, 1, 1, 1 );
setScaleKey( spep_3 -3 + 30, 1, 1 +s3, 1 +s3 );
setScaleKey( spep_3 -3 + 69, 1, 1 +s3, 1 +s3 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 29, 1, 0 );
setRotateKey( spep_3 -3 + 30, 1, -50 );
setRotateKey( spep_3 -3 + 69, 1, -50 );

-- ** 音 ** --
--マシンガン中金属音
SE017 = playSe( spep_3 + 6, 1218 );
setSeVolumeByWorkId( spep_3 + 6, SE017, 83 );
setSeVolumeByWorkId( spep_3 + 7, SE017, 166 );
setSeVolumeByWorkId( spep_3 + 8, SE017, 251 );
stopSe( spep_3 + 16, SE017, 8 );
setStartTimeMs( SE017,  217 );
setPitch( spep_3 + 6, SE017, 500 );
setTimeStretch( SE017, 1.33, 10, 1 );

--マシンガン中金属音
SE019 = playSe( spep_3 + 26, 1218 );
setSeVolumeByWorkId( spep_3 + 26, SE019, 83 );
setSeVolumeByWorkId( spep_3 + 27, SE019, 166 );
setSeVolumeByWorkId( spep_3 + 28, SE019, 251 );
stopSe( spep_3 + 36, SE019, 8 );
setStartTimeMs( SE019,  217 );

--マシンガン
SE020 = playSe( spep_3 + 20, 1149,"",0.6 );
setSeVolumeByWorkId( spep_3 + 20, SE020, 89 );
stopSe( spep_3 +66 + 78, SE020, 6 );

--爆発
SE021 = playSe( spep_3 + 22, 1024 );
setSeVolumeByWorkId( spep_3 + 22, SE021, 60 );

--マシンガン中金属音
SE022 = playSe( spep_3 + 62, 1016 );
setSeVolumeByWorkId( spep_3 + 62, SE022, 65 );
stopSe( spep_3 +66 + 2, SE022, 8 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 66;


------------------------------------------------------
-- マシンガン連射（寄り）(132F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
lash = entryEffectLife( spep_4 + 0, SP_06, 132, 0x100, -1, 0, 0, 0 );  --マシンガン連射（寄り）	ef_004
setEffMoveKey( spep_4 + 0, lash, 0, 0 , 0 );
setEffMoveKey( spep_4 + 132, lash, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, lash, -1.0, 1.0 );
setEffScaleKey( spep_4 + 132, lash, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, lash, 0 );
setEffRotateKey( spep_4 + 132, lash, 0 );
setEffAlphaKey( spep_4 + 0, lash, 255 );
setEffAlphaKey( spep_4 + 132 -1, lash, 255 );
setEffAlphaKey( spep_4 + 132, lash, 0 );

-- ** 音 ** --
--マシンガン中金属音
SE023 = playSe( spep_4 + 18, 1218 );
setSeVolumeByWorkId( spep_4 + 18, SE023, 33 );
setSeVolumeByWorkId( spep_4 + 19, SE023, 66 );
setSeVolumeByWorkId( spep_4 + 20, SE023, 100 );
stopSe( spep_4 + 28, SE023, 6 );
setStartTimeMs( SE023,  233 );
setPitch( spep_4 + 28, SE023, 300 );
setTimeStretch( SE023, 1.2, 10, 1 );

--マシンガン中金属音
SE024 = playSe( spep_4 + 46, 1016 );
setSeVolumeByWorkId( spep_4 + 46, SE024, 79 );
stopSe( spep_4 + 52, SE024, 8 );
setPitch( spep_4 + 46, SE024, 200 );
setTimeStretch( SE024, 1.13, 10, 1 );

--マシンガン中金属音
SE025 = playSe( spep_4 + 54, 1016 );
setSeVolumeByWorkId( spep_4 + 54, SE025, 71 );
stopSe( spep_4 + 62, SE025, 6 );
setPitch( spep_4 + 54, SE025, -600 );
setTimeStretch( SE025, 0.6, 10, 1 );

--マシンガン中金属音
SE026 = playSe( spep_4 + 76, 1218 );
setSeVolumeByWorkId( spep_4 + 76, SE026, 83 );
setSeVolumeByWorkId( spep_4 + 77, SE026, 166 );
setSeVolumeByWorkId( spep_4 + 78, SE026, 251 );
stopSe( spep_4 + 86, SE026, 8 );
setStartTimeMs( SE026,  217 );
setPitch( spep_4 + 76, SE026, 500 );
setTimeStretch( SE026, 1.33, 10, 1 );

--マシンガン
SE027 = playSe( spep_4 + 74, 1149,"",0.6 );
setSeVolumeByWorkId( spep_4 + 74, SE027, 89 );

--マシンガン中金属音
SE028 = playSe( spep_4 + 86, 1218 );
setSeVolumeByWorkId( spep_4 + 86, SE028, 83 );
setSeVolumeByWorkId( spep_4 + 87, SE028, 166 );
setSeVolumeByWorkId( spep_4 + 88, SE028, 251 );
stopSe( spep_4 + 98, SE028, 6 );
setStartTimeMs( SE028,  200 );

--マシンガン中金属音
SE029 = playSe( spep_4 + 108, 1016 );
setSeVolumeByWorkId( spep_4 + 108, SE029, 79 );
stopSe( spep_4 + 114, SE029, 8 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 132 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_4 + 1, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 47, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 53, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 59, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 132;


------------------------------------------------------
-- 煙が大きくなりフェード(116F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_5 + 0, SP_07, 116, 0x100, -1, 0, 0, 0 );  --煙が大きくなりフェード	ef_005_effect
setEffMoveKey( spep_5 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 116, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 116, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 116, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 116 -1, hit_f, 255 );
setEffAlphaKey( spep_5 + 116, hit_f, 0 );

hit_b = entryEffectLife( spep_5 + 0, SP_08, 116, 0x80, -1, 0, 0, 0 );  --↑背景	ef_005_bg
setEffMoveKey( spep_5 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 116, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 116, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 116, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 116 -1, hit_b, 255 );
setEffAlphaKey( spep_5 + 116, hit_b, 0 );

-- ** 書き文字エントリー ** --
ctdogaga2 = entryEffectLife( spep_5 + 0,  10017, 110 -3, 0x100, -1, 0, -12.1, 373.8 );
setEffMoveKey( spep_5 + 0, ctdogaga2, -12.1, 373.8 , 0 );
setEffMoveKey( spep_5 + 1, ctdogaga2, -15, 358.5 , 0 );
setEffMoveKey( spep_5 + 2, ctdogaga2, -12, 377.9 , 0 );
setEffMoveKey( spep_5 -3 + 6, ctdogaga2, -17.8, 364.7 , 0 );
setEffMoveKey( spep_5 -3 + 8, ctdogaga2, -7.1, 370.5 , 0 );
setEffMoveKey( spep_5 -3 + 10, ctdogaga2, -14.8, 359.5 , 0 );
setEffMoveKey( spep_5 -3 + 12, ctdogaga2, -8.5, 376.7 , 0 );
setEffMoveKey( spep_5 -3 + 14, ctdogaga2, -18.8, 363.1 , 0 );
setEffMoveKey( spep_5 -3 + 16, ctdogaga2, -4.4, 371.4 , 0 );
setEffMoveKey( spep_5 -3 + 18, ctdogaga2, -16.4, 364.9 , 0 );
setEffMoveKey( spep_5 -3 + 20, ctdogaga2, -4.3, 366 , 0 );
setEffMoveKey( spep_5 -3 + 22, ctdogaga2, -17.6, 368.7 , 0 );
setEffMoveKey( spep_5 -3 + 24, ctdogaga2, -4.2, 370.2 , 0 );
setEffMoveKey( spep_5 -3 + 26, ctdogaga2, -12.5, 368.3 , 0 );
setEffMoveKey( spep_5 -3 + 28, ctdogaga2, -17.8, 368.9 , 0 );
setEffMoveKey( spep_5 -3 + 30, ctdogaga2, -8.3, 362.6 , 0 );
setEffMoveKey( spep_5 -3 + 32, ctdogaga2, -12, 377.1 , 0 );
setEffMoveKey( spep_5 -3 + 34, ctdogaga2, -11.9, 362.8 , 0 );
setEffMoveKey( spep_5 -3 + 36, ctdogaga2, -12.3, 376.2 , 0 );
setEffMoveKey( spep_5 -3 + 38, ctdogaga2, -10.4, 362.1 , 0 );
setEffMoveKey( spep_5 -3 + 40, ctdogaga2, -12.1, 373.8 , 0 );
setEffMoveKey( spep_5 -3 + 42, ctdogaga2, -15, 358.5 , 0 );
setEffMoveKey( spep_5 -3 + 44, ctdogaga2, -12, 377.9 , 0 );
setEffMoveKey( spep_5 -3 + 46, ctdogaga2, -17.8, 364.7 , 0 );
setEffMoveKey( spep_5 -3 + 48, ctdogaga2, -7.1, 370.5 , 0 );
setEffMoveKey( spep_5 -3 + 50, ctdogaga2, -14.8, 359.5 , 0 );
setEffMoveKey( spep_5 -3 + 52, ctdogaga2, -8.5, 376.7 , 0 );
setEffMoveKey( spep_5 -3 + 54, ctdogaga2, -18.8, 363.1 , 0 );
setEffMoveKey( spep_5 -3 + 56, ctdogaga2, -4.4, 371.4 , 0 );
setEffMoveKey( spep_5 -3 + 58, ctdogaga2, -16.4, 364.9 , 0 );
setEffMoveKey( spep_5 -3 + 60, ctdogaga2, -4.3, 366 , 0 );
setEffMoveKey( spep_5 -3 + 62, ctdogaga2, -17.6, 368.7 , 0 );
setEffMoveKey( spep_5 -3 + 64, ctdogaga2, -4.2, 370.2 , 0 );
setEffMoveKey( spep_5 -3 + 66, ctdogaga2, -12.5, 368.3 , 0 );
setEffMoveKey( spep_5 -3 + 68, ctdogaga2, -17.8, 368.9 , 0 );
setEffMoveKey( spep_5 -3 + 70, ctdogaga2, -8.3, 362.6 , 0 );
setEffMoveKey( spep_5 -3 + 72, ctdogaga2, -12, 377.1 , 0 );
setEffMoveKey( spep_5 -3 + 74, ctdogaga2, -11.9, 362.8 , 0 );
setEffMoveKey( spep_5 -3 + 76, ctdogaga2, -12.3, 376.2 , 0 );
setEffMoveKey( spep_5 -3 + 78, ctdogaga2, -10.4, 362.1 , 0 );
setEffMoveKey( spep_5 -3 + 80, ctdogaga2, -12.1, 373.8 , 0 );
setEffMoveKey( spep_5 -3 + 82, ctdogaga2, -15, 358.5 , 0 );
setEffMoveKey( spep_5 -3 + 84, ctdogaga2, -12, 377.9 , 0 );
setEffMoveKey( spep_5 -3 + 86, ctdogaga2, -17.8, 364.7 , 0 );
setEffMoveKey( spep_5 -3 + 88, ctdogaga2, -7.1, 370.5 , 0 );
setEffMoveKey( spep_5 -3 + 90, ctdogaga2, -14.8, 359.5 , 0 );
setEffMoveKey( spep_5 -3 + 92, ctdogaga2, -8.5, 376.7 , 0 );
setEffMoveKey( spep_5 -3 + 94, ctdogaga2, -18.8, 363.1 , 0 );
setEffMoveKey( spep_5 -3 + 96, ctdogaga2, -4.4, 371.4 , 0 );
setEffMoveKey( spep_5 -3 + 98, ctdogaga2, -16.4, 364.9 , 0 );
setEffMoveKey( spep_5 -3 + 100, ctdogaga2, -4.3, 366 , 0 );
setEffMoveKey( spep_5 -3 + 102, ctdogaga2, -17.6, 368.7 , 0 );
setEffMoveKey( spep_5 -3 + 104, ctdogaga2, -4.2, 370.2 , 0 );
setEffMoveKey( spep_5 -3 + 106, ctdogaga2, -12.5, 368.3 , 0 );
setEffMoveKey( spep_5 -3 + 108, ctdogaga2, -17.8, 368.9 , 0 );
setEffMoveKey( spep_5 -3 + 110, ctdogaga2, -17.8, 368.9 , 0 );

setEffScaleKey( spep_5 + 0, ctdogaga2, 2.61, 2.61 );
setEffScaleKey( spep_5 -3 + 110, ctdogaga2, 2.61, 2.61 );

setEffRotateKey( spep_5 + 0, ctdogaga2, -5 );
setEffRotateKey( spep_5 -3 + 110, ctdogaga2, -5 );

setEffAlphaKey( spep_5 + 0, ctdogaga2, 255 );
setEffAlphaKey( spep_5 -3 + 60, ctdogaga2, 255 );
setEffAlphaKey( spep_5 -3 + 62, ctdogaga2, 245 );
setEffAlphaKey( spep_5 -3 + 64, ctdogaga2, 235 );
setEffAlphaKey( spep_5 -3 + 66, ctdogaga2, 224 );
setEffAlphaKey( spep_5 -3 + 68, ctdogaga2, 214 );
setEffAlphaKey( spep_5 -3 + 70, ctdogaga2, 204 );
setEffAlphaKey( spep_5 -3 + 72, ctdogaga2, 194 );
setEffAlphaKey( spep_5 -3 + 74, ctdogaga2, 184 );
setEffAlphaKey( spep_5 -3 + 76, ctdogaga2, 173 );
setEffAlphaKey( spep_5 -3 + 78, ctdogaga2, 163 );
setEffAlphaKey( spep_5 -3 + 80, ctdogaga2, 153 );
setEffAlphaKey( spep_5 -3 + 82, ctdogaga2, 143 );
setEffAlphaKey( spep_5 -3 + 84, ctdogaga2, 133 );
setEffAlphaKey( spep_5 -3 + 86, ctdogaga2, 122 );
setEffAlphaKey( spep_5 -3 + 88, ctdogaga2, 112 );
setEffAlphaKey( spep_5 -3 + 90, ctdogaga2, 102 );
setEffAlphaKey( spep_5 -3 + 92, ctdogaga2, 92 );
setEffAlphaKey( spep_5 -3 + 94, ctdogaga2, 82 );
setEffAlphaKey( spep_5 -3 + 96, ctdogaga2, 71 );
setEffAlphaKey( spep_5 -3 + 98, ctdogaga2, 61 );
setEffAlphaKey( spep_5 -3 + 100, ctdogaga2, 51 );
setEffAlphaKey( spep_5 -3 + 102, ctdogaga2, 41 );
setEffAlphaKey( spep_5 -3 + 104, ctdogaga2, 31 );
setEffAlphaKey( spep_5 -3 + 106, ctdogaga2, 20 );
setEffAlphaKey( spep_5 -3 + 108, ctdogaga2, 10 );
setEffAlphaKey( spep_5 -3 + 110, ctdogaga2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 119, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );

a6 = 15;
b5 = 15;
setMoveKey( spep_5 + 0, 1, 44.4 -a6, -19.5 +b5 , 0 );
setMoveKey( spep_5 + 1, 1, 52.4 -a6, -18.5 +b5 , 0 );
setMoveKey( spep_5 + 2, 1, 38.4 -a6, -17.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 59.4 -a6, -39.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 47.4 -a6, 3.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 44.4 -a6, -35.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 54.4 -a6, 0.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 51.4 -a6, -37.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 46.4 -a6, -2.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 57.4 -a6, -7.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 37.4 -a6, -21.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 54.4 -a6, -26.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 54.4 -a6, -5.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 43.4 -a6, -8.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 54.4 -a6, -1.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 49.4 -a6, -21.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 48.4 -a6, -3.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 39.4 -a6, -16.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 41.4 -a6, -13.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 55.4 -a6, -7.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 40.4 -a6, -12.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 55.4 -a6, -20.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 44.4 -a6, -13.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 47.4 -a6, -1.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 52.4 -a6, -19.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 41.4 -a6, -19.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 44.4 -a6, -1.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 40.3 -a6, -21.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 48.3 -a6, -19.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 42.3 -a6, -17.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 54.4 -a6, -20.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 47.3 -a6, -12.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 50.3 -a6, -13.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 39.3 -a6, -19.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 50.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 47.3 -a6, -6.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 49.3 -a6, -16.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 49.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 56.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 52.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 49.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 49.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 49.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 49.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 49.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 49.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 49.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 49.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 53.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 51.3 -a6, -11.5 +b5 , 0 );
setMoveKey( spep_5 -3 + 119, 1, 51.3 -a6, -11.5 +b5 , 0 );

setScaleKey( spep_5 + 0, 1, 1, 1 );
setScaleKey( spep_5 -3 + 119, 1, 1, 1 );

setRotateKey( spep_5 + 0, 1, -50 );
setRotateKey( spep_5 -3 + 119, 1, -50 );

-- ** 音 ** --
--ヒット後爆発
SE030 = playSe( spep_5 + 0, 1023,"",0.6 );
setSeVolumeByWorkId( spep_5 + 0, SE030, 76 );

--ヒット後爆発
SE031 = playSe( spep_5 + 40, 1168,"",0.6 );
setSeVolumeByWorkId( spep_5 + 40, SE031, 14 );
setSeVolumeByWorkId( spep_5 + 44, SE031, 28 );
setSeVolumeByWorkId( spep_5 + 48, SE031, 42 );
setSeVolumeByWorkId( spep_5 + 52, SE031, 56 );
setSeVolumeByWorkId( spep_5 + 56, SE031, 68 );
setStartTimeMs( SE031,  650 );

--ヒット後爆発
SE032 = playSe( spep_5 + 18, 1188,"",0.6 );

--ヒット後爆発
SE033 = playSe( spep_5 + 24, 1159,"",0.6 );
setSeVolumeByWorkId( spep_5 + 24, SE033, 63 );

--ヒット後爆発
SE034 = playSe( spep_5 + 36, 1024,"",0.6 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 116;


------------------------------------------------------
-- 撃ち終わって手を戻す(156F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --撃ち終わって手を戻す	ef_006
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 136, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_6 + 136, finish, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 136, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 136, finish, 255 );

-- ** 音 ** --
--腕くっつける
SE035 = playSe( spep_6 + 28, 1220 );
stopSe( spep_6 + 34, SE035, 6 );
setPitch( spep_6 + 28, SE035, -400 );
setTimeStretch( SE035, 0.73, 10, 1 );

--腕くっつける
SE036 = playSe( spep_6 + 36, 6 );
setSeVolumeByWorkId( spep_6 + 36, SE036, 89 );
setPitch( spep_6 + 36, SE036, -300 );
setTimeStretch( SE036, 0.8, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 26 );
endPhase( spep_6 + 126 );

end