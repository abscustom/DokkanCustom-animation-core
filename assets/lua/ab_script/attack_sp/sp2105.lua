--1021010: LR_バビディ&魔人ブウ(善)_超必殺技：バビディとブウの復讐作戦
--sp_effect_b4_00171
--sp2105

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
SP_01 = 156468;  --指差し、セリフカットイン    ef_001
SP_02 = 156469;  --ブウ溜め→突進 ef_002
SP_03 = 156470;  --突進→パンチ→追いかけ→蹴り：前    ef_003
SP_04 = 156471;  --突進→パンチ→追いかけ→蹴り：後ろ   ef_004
SP_05 = 156472;  --敵落下 ef_005
SP_06 = 156473;  --ブウ息吸い   ef_006
SP_07 = 156474;  --ブレス街破壊  ef_007
SP_08 = 156475;  --グググ、ギュン ef_008
SP_09 = 156476;  --ドカツ ef_009

--敵側
SP_08r = 156477;  --グググ、ギュン:敵用  ef_008_r
SP_09r = 156478;  --ドカツ：敵用  ef_009_r


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
-- 指差し(142F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --指差し、セリフカットイン(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 142, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 142, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 142, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 142, first_f, 255 );

spep_x = spep_0 + 52;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
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

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 50, 906, 91, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 50, shuchusen1, 91, 20 );
setEffMoveKey( spep_0 + 50, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 141, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 50, shuchusen1, 1.2, 1.5 );
setEffScaleKey( spep_0 + 141, shuchusen1, 1.2, 1.5 );
setEffRotateKey( spep_0 + 50, shuchusen1, 0 );
setEffRotateKey( spep_0 + 141, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 50, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 64, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 65, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 141, shuchusen1, 255 );

-- ** 音 ** --
--指差し
SE001 = playSe( spep_0 + 4, 4 );

--指差し
SE002 = playSe( spep_0 + 4, 37 );
setSeVolumeByWorkId( spep_0 + 4, SE002, 79 );
stopSe( spep_0 + 14, SE002, 14 );

--顔カットイン
SE003 = playSe( spep_0 + 68, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 142, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 134, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 142;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_1, SE_05);
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
--playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- ブウ溜め→突進(76F)
------------------------------------------------------
-- ** エフェクト等 ** --
charge_f = entryEffect( spep_2 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --グググ、ギュン(ef_008)
setEffMoveKey( spep_2 + 0, charge_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76, charge_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, charge_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, charge_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, charge_f, 0 );
setEffRotateKey( spep_2 + 76, charge_f, 0 );
setEffAlphaKey( spep_2 + 0, charge_f, 255 );
setEffAlphaKey( spep_2 + 76, charge_f, 255 );

charge_b = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --ブウ溜め→突進(ef_002)
setEffMoveKey( spep_2 + 0, charge_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76, charge_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, charge_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, charge_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, charge_b, 0 );
setEffRotateKey( spep_2 + 76, charge_b, 0 );
setEffAlphaKey( spep_2 + 0, charge_b, 255 );
setEffAlphaKey( spep_2 + 76, charge_b, 255 );

-- ** 音 ** --
--ブウダッシュ前溜め1
SE006 = playSe( spep_2 + 20, 1233 );
setSeVolumeByWorkId( spep_2 + 20, SE006, 7 );
setSeVolumeByWorkId( spep_2 + 21, SE006, 15 );
setSeVolumeByWorkId( spep_2 + 22, SE006, 29 );
setSeVolumeByWorkId( spep_2 + 23, SE006, 50 );
setSeVolumeByWorkId( spep_2 + 24, SE006, 71 );
setStartTimeMs( SE006,  200 );
setTimeStretch( SE006, 1.26, 10, 1 );

--ブウダッシュ前溜め2
SE007 = playSe( spep_2 + 20, 1245 );
setSeVolumeByWorkId( spep_2 + 20, SE007, 40 );
stopSe( spep_2 + 34, SE007, 6 );

--バビディ腕あげる1
SE008 = playSe( spep_2 + 24, 37 );
setSeVolumeByWorkId( spep_2 + 24, SE008, 76 );
setPitch( spep_2 + 24, SE008, 400 );
setTimeStretch( SE008, 0.88, 10, 1 );

--バビディ腕あげる2
SE009 = playSe( spep_2 + 50, 37 );
setSeVolumeByWorkId( spep_2 + 50, SE009, 74 );
setPitch( spep_2 + 50, SE009, 400 );
setTimeStretch( SE009, 0.88, 10, 1 );

--ブウダッシュ1
SE010 = playSe( spep_2 + 56, 1182 );

--ブウダッシュ2
SE011 = playSe( spep_2 + 56, 1277 );
setSeVolumeByWorkId( spep_2 + 56, SE011, 89 );

--ブウダッシュ3
SE012 = playSe( spep_2 + 60, 1183 );
stopSe( spep_2 +76 + 46, SE012, 6 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 76, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 76;


------------------------------------------------------
-- 突進→パンチ→追いかけ→蹴り(176F)
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffectLife( spep_3 + 0, SP_09, 176, 0x100, -1, 0, 0, 0, 3000 );  --ドカツ(ef_009)
setEffMoveKey( spep_3 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 176, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_f, 0 );
setEffRotateKey( spep_3 + 176, rush_f, 0 );
setEffAlphaKey( spep_3 + 0, rush_f, 255 );
setEffAlphaKey( spep_3 + 175, rush_f, 255 );
setEffAlphaKey( spep_3 + 176, rush_f, 0 );

rush_b = entryEffectLife( spep_3 + 0, SP_03, 176, 0x100, -1, 0, 0, 0 );  --グググ、ギュン(ef_008)
setEffMoveKey( spep_3 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 176, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_b, 0 );
setEffRotateKey( spep_3 + 176, rush_b, 0 );
setEffAlphaKey( spep_3 + 0, rush_b, 255 );
setEffAlphaKey( spep_3 + 175, rush_b, 255 );
setEffAlphaKey( spep_3 + 176, rush_b, 0 );

rush_e = entryEffectLife( spep_3 + 0, SP_04, 176, 0x80, -1, 0, 0, 0 );  --グググ、ギュン(ef_008)
setEffMoveKey( spep_3 + 0, rush_e, 0, 0 , 0 );
setEffMoveKey( spep_3 + 176, rush_e, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rush_e, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, rush_e, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_e, 0 );
setEffRotateKey( spep_3 + 176, rush_e, 0 );
setEffAlphaKey( spep_3 + 0, rush_e, 255 );
setEffAlphaKey( spep_3 + 175, rush_e, 255 );
setEffAlphaKey( spep_3 + 176, rush_e, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 47, 906, 25, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 47, shuchusen2, 25, 20 );
setEffMoveKey( spep_3 + 47, shuchusen2, 0, 60 , 0 );
setEffMoveKey( spep_3 + 72, shuchusen2, 0, 60 , 0 );
setEffScaleKey( spep_3 + 47, shuchusen2, 2.2, 1.8 );
setEffScaleKey( spep_3 + 72, shuchusen2, 2.2, 1.8 );
setEffRotateKey( spep_3 + 47, shuchusen2, 0 );
setEffRotateKey( spep_3 + 72, shuchusen2, 0 );
setEffAlphaKey( spep_3 + 47, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 72, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_3 -3 + 50,  10020, 22, 0x100, -1, 0, 130.8, -225.3 ); --バキッ
setEffMoveKey( spep_3 -3 + 50, ctbaki, 130.8, -225.3 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctbaki, 106.6, -183.7 , 0 );
setEffMoveKey( spep_3 -3 + 54, ctbaki, 110.4, -174 , 0 );
setEffMoveKey( spep_3 -3 + 56, ctbaki, 89.5, -158.4 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctbaki, 97.8, -156 , 0 );
setEffMoveKey( spep_3 -3 + 60, ctbaki, 91.8, -154.8 , 0 );
setEffMoveKey( spep_3 -3 + 62, ctbaki, 105.3, -162.9 , 0 );
setEffMoveKey( spep_3 -3 + 64, ctbaki, 87.9, -155.6 , 0 );
setEffMoveKey( spep_3 -3 + 66, ctbaki, 104.2, -149.3 , 0 );
setEffMoveKey( spep_3 -3 + 68, ctbaki, 97.8, -156 , 0 );
setEffMoveKey( spep_3 -3 + 70, ctbaki, 72.9, -92.3 , 0 );
setEffMoveKey( spep_3 -3 + 72, ctbaki, 67.1, -73 , 0 );

setEffScaleKey( spep_3 -3 + 50, ctbaki, 1.47, 1.32 );
setEffScaleKey( spep_3 -3 + 52, ctbaki, 2.07, 1.86 );
setEffScaleKey( spep_3 -3 + 54, ctbaki, 2.31, 2.08 );
setEffScaleKey( spep_3 -3 + 56, ctbaki, 2.44, 2.19 );
setEffScaleKey( spep_3 -3 + 58, ctbaki, 2.48, 2.23 );
setEffScaleKey( spep_3 -3 + 68, ctbaki, 2.48, 2.23 );
setEffScaleKey( spep_3 -3 + 70, ctbaki, 2.79, 2.8 );
setEffScaleKey( spep_3 -3 + 72, ctbaki, 2.88, 2.98 );

setEffRotateKey( spep_3 -3 + 50, ctbaki, -12 );
setEffRotateKey( spep_3 -3 + 72, ctbaki, -12 );

setEffAlphaKey( spep_3 -3 + 50, ctbaki, 255 );
setEffAlphaKey( spep_3 -3 + 68, ctbaki, 255 );
setEffAlphaKey( spep_3 -3 + 70, ctbaki, 61 );
setEffAlphaKey( spep_3 -3 + 72, ctbaki, 0 );

ctgaha1 = entryEffectLife( spep_3 -3 + 88,  10005, 18, 0x100, -1, 0, -102.6, 106.1 ); --ガッ
setEffMoveKey( spep_3 -3 + 88, ctgaha1, -102.6, 106.1 , 0 );
setEffMoveKey( spep_3 -3 + 90, ctgaha1, -120.9, 115.5 , 0 );
setEffMoveKey( spep_3 -3 + 92, ctgaha1, -127.7, 115 , 0 );
setEffMoveKey( spep_3 -3 + 94, ctgaha1, -139.1, 117.7 , 0 );
setEffMoveKey( spep_3 -3 + 96, ctgaha1, -148.1, 118.7 , 0 );
setEffMoveKey( spep_3 -3 + 98, ctgaha1, -150.1, 113.8 , 0 );
setEffMoveKey( spep_3 -3 + 100, ctgaha1, -156.8, 112.2 , 0 );
setEffMoveKey( spep_3 -3 + 102, ctgaha1, -158.6, 107.3 , 0 );
setEffMoveKey( spep_3 -3 + 104, ctgaha1, -165.4, 105.7 , 0 );
setEffMoveKey( spep_3 -3 + 106, ctgaha1, -169.7, 102.5 , 0 );

setEffScaleKey( spep_3 -3 + 88, ctgaha1, 0.1, 0.1 );
setEffScaleKey( spep_3 -3 + 90, ctgaha1, 0.5, 0.5 );
setEffScaleKey( spep_3 -3 + 96, ctgaha1, 0.5, 0.5 );
setEffScaleKey( spep_3 -3 + 98, ctgaha1, 0.51, 0.51 );
setEffScaleKey( spep_3 -3 + 100, ctgaha1, 0.52, 0.52 );
setEffScaleKey( spep_3 -3 + 102, ctgaha1, 0.53, 0.53 );
setEffScaleKey( spep_3 -3 + 104, ctgaha1, 0.54, 0.54 );
setEffScaleKey( spep_3 -3 + 106, ctgaha1, 0.55, 0.55 );

setEffRotateKey( spep_3 -3 + 88, ctgaha1, -10 );
setEffRotateKey( spep_3 -3 + 106, ctgaha1, -10 );

setEffAlphaKey( spep_3 -3 + 88, ctgaha1, 255 );
setEffAlphaKey( spep_3 -3 + 96, ctgaha1, 255 );
setEffAlphaKey( spep_3 -3 + 98, ctgaha1, 204 );
setEffAlphaKey( spep_3 -3 + 100, ctgaha1, 153 );
setEffAlphaKey( spep_3 -3 + 102, ctgaha1, 102 );
setEffAlphaKey( spep_3 -3 + 104, ctgaha1, 51 );
setEffAlphaKey( spep_3 -3 + 106, ctgaha1, 0 );

ctdon = entryEffectLife( spep_3 -3 + 118,  10019, 14, 0x100, -1, 0, 104.5, 138.7 ); --ドン
setEffMoveKey( spep_3 -3 + 118, ctdon, 104.5, 138.7 , 0 );
setEffMoveKey( spep_3 -3 + 120, ctdon, 142.2, 160.9 , 0 );
setEffMoveKey( spep_3 -3 + 122, ctdon, 144.4, 158.1 , 0 );
setEffMoveKey( spep_3 -3 + 124, ctdon, 146.5, 155.3 , 0 );
setEffMoveKey( spep_3 -3 + 126, ctdon, 148.6, 152.5 , 0 );
setEffMoveKey( spep_3 -3 + 128, ctdon, 135, 170.2 , 0 );
setEffMoveKey( spep_3 -3 + 130, ctdon, 121.3, 187.8 , 0 );
setEffMoveKey( spep_3 -3 + 132, ctdon, 107.7, 205.5 , 0 );

setEffScaleKey( spep_3 -3 + 118, ctdon, 0.15, 0.15 );
setEffScaleKey( spep_3 -3 + 120, ctdon, 1, 1 );
setEffScaleKey( spep_3 -3 + 126, ctdon, 1, 1 );
setEffScaleKey( spep_3 -3 + 128, ctdon, 1.01, 1.01 );
setEffScaleKey( spep_3 -3 + 130, ctdon, 1.01, 1.01 );
setEffScaleKey( spep_3 -3 + 132, ctdon, 1.02, 1.02 );

setEffRotateKey( spep_3 -3 + 118, ctdon, 29.9 );
setEffRotateKey( spep_3 -3 + 120, ctdon, 29.8 );
setEffRotateKey( spep_3 -3 + 132, ctdon, 29.8 );

setEffAlphaKey( spep_3 -3 + 118, ctdon, 255 );
setEffAlphaKey( spep_3 -3 + 126, ctdon, 255 );
setEffAlphaKey( spep_3 -3 + 128, ctdon, 170 );
setEffAlphaKey( spep_3 -3 + 130, ctdon, 85 );
setEffAlphaKey( spep_3 -3 + 132, ctdon, 0 );

ctgaha2 = entryEffectLife( spep_3 -3 + 138,  10005, 12, 0x100, -1, 0, -93.1, 274.3 ); --ガッ
setEffMoveKey( spep_3 -3 + 138, ctgaha2, -93.1, 274.3 , 0 );
setEffMoveKey( spep_3 -3 + 140, ctgaha2, -115.4, 305.7 , 0 );
setEffMoveKey( spep_3 -3 + 142, ctgaha2, -112.2, 296.7 , 0 );
setEffMoveKey( spep_3 -3 + 144, ctgaha2, -126.4, 296.1 , 0 );
setEffMoveKey( spep_3 -3 + 146, ctgaha2, -131.9, 291.3 , 0 );
setEffMoveKey( spep_3 -3 + 148, ctgaha2, -137.8, 281.5 , 0 );
setEffMoveKey( spep_3 -3 + 150, ctgaha2, -152.4, 276 , 0 );

setEffScaleKey( spep_3 -3 + 138, ctgaha2, 0.42, 0.42 );
setEffScaleKey( spep_3 -3 + 140, ctgaha2, 1.7, 1.7 );
setEffScaleKey( spep_3 -3 + 146, ctgaha2, 1.7, 1.7 );
setEffScaleKey( spep_3 -3 + 148, ctgaha2, 1.71, 1.71 );
setEffScaleKey( spep_3 -3 + 150, ctgaha2, 1.72, 1.72 );

setEffRotateKey( spep_3 -3 + 138, ctgaha2, -19.5 );
setEffRotateKey( spep_3 -3 + 150, ctgaha2, -19.3 );

setEffAlphaKey( spep_3 -3 + 138, ctgaha2, 255 );
setEffAlphaKey( spep_3 -3 + 146, ctgaha2, 255 );
setEffAlphaKey( spep_3 -3 + 148, ctgaha2, 128 );
setEffAlphaKey( spep_3 -3 + 150, ctgaha2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 102 );
changeAnime( spep_3 -3 + 18, 1, 118 );

setMoveKey( spep_3 + 0, 1, 184.3, 82.3 , 0 );
setMoveKey( spep_3 + 1, 1, 185.5, 82 , 0 );
setMoveKey( spep_3 + 2, 1, 186.7, 81.8 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 187.9, 81.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 189.1, 81.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 190.4, 81.1 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 191.6, 80.8 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 192.8, 80.6 , 0 );
setMoveKey( spep_3 -3 + 17, 1, 194, 80.3 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 194.2, 55.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 195.4, 55.2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 196.6, 54.8 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 197.8, 54.5 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 199.1, 54.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 200.3, 53.7 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 201.5, 53.4 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 202.7, 53 , 0 );

--a1=0.2;
a1=0;
setScaleKey( spep_3 + 0, 1, 2.3 -a1, 2.3 -a1 );
setScaleKey( spep_3 + 1, 1, 2.31 -a1, 2.31 -a1 );
setScaleKey( spep_3 + 2, 1, 2.32 -a1, 2.32 -a1 );
setScaleKey( spep_3 -3 + 6, 1, 2.34 -a1, 2.34 -a1 );
setScaleKey( spep_3 -3 + 8, 1, 2.35 -a1, 2.35 -a1 );
setScaleKey( spep_3 -3 + 10, 1, 2.36 -a1, 2.36 -a1 );
setScaleKey( spep_3 -3 + 12, 1, 2.37 -a1, 2.37 -a1 );
setScaleKey( spep_3 -3 + 14, 1, 2.38 -a1, 2.38 -a1 );
setScaleKey( spep_3 -3 + 17, 1, 2.4 -a1, 2.4 -a1 );
setScaleKey( spep_3 -3 + 18, 1, 2.62 -a1, 2.62 -a1 );
setScaleKey( spep_3 -3 + 20, 1, 2.63 -a1, 2.63 -a1 );
setScaleKey( spep_3 -3 + 22, 1, 2.64 -a1, 2.64 -a1 );
setScaleKey( spep_3 -3 + 24, 1, 2.66 -a1, 2.66 -a1 );
setScaleKey( spep_3 -3 + 26, 1, 2.67 -a1, 2.67 -a1 );
setScaleKey( spep_3 -3 + 28, 1, 2.68 -a1, 2.68 -a1 );
setScaleKey( spep_3 -3 + 30, 1, 2.7 -a1, 2.7 -a1 );
setScaleKey( spep_3 -3 + 32, 1, 2.71 -a1, 2.71 -a1 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 17, 1, 0 );
setRotateKey( spep_3 -3 + 18, 1, 2 );

-- ** 音 ** --
--ブウダッシュ4
SE013 = playSe( spep_3 + 0, 1167 );
setSeVolumeByWorkId( spep_3 + 0, SE013, 33 );
stopSe( spep_3 + 44, SE013, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 176, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 203.9, 52.6 , 0 );
    setMoveKey( SP_dodge + 2, 1, 205.1, 52.2 , 0 );
    setMoveKey( SP_dodge + 4, 1, 206.3, 51.9 , 0 );
    setMoveKey( SP_dodge + 6, 1, 206.3, 51 , 0 );
    setMoveKey( SP_dodge + 8, 1, 206.3, 50.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 206.3, 49.2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2.72 -a1, 2.72 -a1 );
    setScaleKey( SP_dodge + 2, 1, 2.74 -a1, 2.74 -a1 );
    setScaleKey( SP_dodge + 4, 1, 2.75 -a1, 2.75 -a1 );
    setScaleKey( SP_dodge + 6, 1, 2.75 -a1, 2.75 -a1 );
    setScaleKey( SP_dodge + 8, 1, 2.75 -a1, 2.75 -a1 );
    setScaleKey( SP_dodge + 10, 1, 2.75 -a1, 2.75 -a1 );

    setRotateKey( SP_dodge + 0, 1, 2 );
    setRotateKey( SP_dodge + 10, 1, 2 );    
    
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
setDisp( spep_3 + 58, 1, 0 );
changeAnime( spep_3 -3 + 48, 1, 7 );

setMoveKey( spep_3 -3 + 34, 1, 203.9, 52.6 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 205.1, 52.2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 206.3, 51.9 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 206.3, 51 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 206.3, 50.1 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 206.3, 49.2 , 0 );
setMoveKey( spep_3 -3 + 47, 1, 206.2, 48.3 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -33.6, -197.3 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -42.6, -212.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -116, -338.9 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -214.1, -501 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -282.4, -623.8 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -375.4, -782.1 , 0 );
setMoveKey( spep_3 -3 + 61, 1, -450.7, -913.3 , 0 );

--a2=0.2;
a2=0;
setScaleKey( spep_3 -3 + 34, 1, 2.72 -a1, 2.72 -a1 );
setScaleKey( spep_3 -3 + 36, 1, 2.74 -a1, 2.74 -a1 );
setScaleKey( spep_3 -3 + 38, 1, 2.75 -a1, 2.75 -a1 );
setScaleKey( spep_3 -3 + 47, 1, 2.75 -a1, 2.75 -a1 );
setScaleKey( spep_3 -3 + 48, 1, 1.25 -a2, 1.25 -a2 );
setScaleKey( spep_3 -3 + 50, 1, 1.25 -a2, 1.25 -a2 );
setScaleKey( spep_3 -3 + 52, 1, 1.84 -a2, 1.84 -a2 );
setScaleKey( spep_3 -3 + 54, 1, 2.44 -a2, 2.44 -a2 );
setScaleKey( spep_3 -3 + 56, 1, 3.03 -a2, 3.03 -a2 );
setScaleKey( spep_3 -3 + 58, 1, 3.64 -a2, 3.64 -a2 );
setScaleKey( spep_3 -3 + 61, 1, 4.25 -a2, 4.25 -a2 );

setRotateKey( spep_3 -3 + 47, 1, 2 );
setRotateKey( spep_3 -3 + 48, 1, 44.9 );
setRotateKey( spep_3 -3 + 61, 1, 44.9 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 76, 1, 1 );
setDisp( spep_3 -3 + 178, 1, 0 );
changeAnime( spep_3 -3 + 76, 1, 7 );
changeAnime( spep_3 -3 + 88, 1, 107 );
changeAnime( spep_3 -3 + 118, 1, 7 );
changeAnime( spep_3 -3 + 138, 1, 8 );
changeAnime( spep_3 -3 + 154, 1, 106 );

setMoveKey( spep_3 -3 + 76, 1, 1.9, 56.6 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -5.6, 53.2 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -13.2, 49.7 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -20.7, 46.3 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -28.2, 42.8 , 0 );
setMoveKey( spep_3 -3 + 86, 1, -35.8, 39.3 , 0 );
setMoveKey( spep_3 -3 + 88, 1, -47.3, 35.2 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -41.7, 14.1 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -2.3, 27.9 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 4.6, 26 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 11.5, 24 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 18.3, 22.1 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 25.2, 20.2 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 32.1, 18.2 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 38.9, 16.3 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 45.8, 14.3 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 52.6, 12.4 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 59.5, 10.5 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 66.3, 8.5 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 73.2, 6.6 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 80.1, 4.6 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 87.7, -0.3 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 61.9, -23.2 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 69.8, -11.3 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 60.7, -19.2 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 54.8, -20.7 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 47.3, -25.4 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 39.8, -30.1 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 32.3, -34.8 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 24.8, -39.5 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 17.2, -44.2 , 0 );
setMoveKey( spep_3 -3 + 138, 1, -54.7, -76.9 , 0 );
setMoveKey( spep_3 -3 + 140, 1, -68, 14.2 , 0 );
setMoveKey( spep_3 -3 + 142, 1, -62.1, 15.6 , 0 );
setMoveKey( spep_3 -3 + 144, 1, -52.6, 23.7 , 0 );
setMoveKey( spep_3 -3 + 146, 1, -44.3, 28.8 , 0 );
setMoveKey( spep_3 -3 + 148, 1, -35.5, 34.1 , 0 );
setMoveKey( spep_3 -3 + 150, 1, -26.2, 39.5 , 0 );
setMoveKey( spep_3 -3 + 152, 1, -16.3, 44.7 , 0 );
setMoveKey( spep_3 -3 + 153, 1, -16.3, 44.7 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 40.3, 67.9 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 47.6, 62.4 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 64.3, 44.4 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 62.3, 51.2 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 79, 33.3 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 77, 40.1 , 0 );
setMoveKey( spep_3 -3 + 166, 1, 93.7, 22.1 , 0 );
setMoveKey( spep_3 -3 + 168, 1, 91.7, 28.9 , 0 );
setMoveKey( spep_3 -3 + 170, 1, 108.4, 11 , 0 );
setMoveKey( spep_3 -3 + 172, 1, 271.5, -154.8 , 0 );
setMoveKey( spep_3 -3 + 174, 1, 444, -332.9 , 0 );
setMoveKey( spep_3 -3 + 176, 1, 616.4, -511.1 , 0 );
setMoveKey( spep_3 -3 + 178, 1, 788.9, -689.2 , 0 );
--setMoveKey( spep_3 -3 + 179, 1, 788.9, -689.2 , 0 );

setScaleKey( spep_3 -3 + 76, 1, 0.13, 0.13 );
setScaleKey( spep_3 -3 + 78, 1, 0.14, 0.14 );
setScaleKey( spep_3 -3 + 80, 1, 0.14, 0.14 );
setScaleKey( spep_3 -3 + 82, 1, 0.15, 0.15 );
setScaleKey( spep_3 -3 + 84, 1, 0.16, 0.16 );
setScaleKey( spep_3 -3 + 88, 1, 0.19, 0.19 );
setScaleKey( spep_3 -3 + 90, 1, 0.2, 0.2 );
setScaleKey( spep_3 -3 + 92, 1, 0.22, 0.22 );
setScaleKey( spep_3 -3 + 94, 1, 0.23, 0.23 );
setScaleKey( spep_3 -3 + 96, 1, 0.23, 0.23 );
setScaleKey( spep_3 -3 + 98, 1, 0.24, 0.24 );
setScaleKey( spep_3 -3 + 100, 1, 0.25, 0.25 );
setScaleKey( spep_3 -3 + 102, 1, 0.26, 0.26 );
setScaleKey( spep_3 -3 + 104, 1, 0.26, 0.26 );
setScaleKey( spep_3 -3 + 106, 1, 0.27, 0.27 );
setScaleKey( spep_3 -3 + 108, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 110, 1, 0.29, 0.29 );
setScaleKey( spep_3 -3 + 112, 1, 0.29, 0.29 );
setScaleKey( spep_3 -3 + 114, 1, 0.3, 0.3 );
setScaleKey( spep_3 -3 + 116, 1, 0.31, 0.31 );
setScaleKey( spep_3 -3 + 118, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 120, 1, 0.38, 0.38 );
setScaleKey( spep_3 -3 + 122, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 124, 1, 0.43, 0.43 );
setScaleKey( spep_3 -3 + 126, 1, 0.45, 0.45 );
setScaleKey( spep_3 -3 + 128, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 130, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 132, 1, 0.52, 0.52 );
setScaleKey( spep_3 -3 + 134, 1, 0.55, 0.55 );
setScaleKey( spep_3 -3 + 136, 1, 0.57, 0.57 );
setScaleKey( spep_3 -3 + 137, 1, 0.57, 0.57 );
setScaleKey( spep_3 -3 + 138, 1, 1.79, 1.79 );--
setScaleKey( spep_3 -3 + 140, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 142, 1, 1.95, 1.95 );
setScaleKey( spep_3 -3 + 144, 1, 1.99, 1.99 );
setScaleKey( spep_3 -3 + 146, 1, 2.03, 2.03 );
setScaleKey( spep_3 -3 + 148, 1, 2.12, 2.12 );
setScaleKey( spep_3 -3 + 150, 1, 2.21, 2.21 );
setScaleKey( spep_3 -3 + 152, 1, 2.31, 2.31 );
setScaleKey( spep_3 -3 + 154, 1, 2.36, 2.36 );
setScaleKey( spep_3 -3 + 178, 1, 2.36, 2.36 );
--setScaleKey( spep_3 -3 + 179, 1, 2.36, 2.36 );

setRotateKey( spep_3 -3 + 76, 1, 22.3 );
setRotateKey( spep_3 -3 + 87, 1, 22.3 );
setRotateKey( spep_3 -3 + 88, 1, -129.4 );
setRotateKey( spep_3 -3 + 90, 1, -91.8 );
setRotateKey( spep_3 -3 + 92, 1, -54.1 );
setRotateKey( spep_3 -3 + 94, 1, -52.6 );
setRotateKey( spep_3 -3 + 96, 1, -51.1 );
setRotateKey( spep_3 -3 + 98, 1, -49.6 );
setRotateKey( spep_3 -3 + 100, 1, -48.1 );
setRotateKey( spep_3 -3 + 102, 1, -46.7 );
setRotateKey( spep_3 -3 + 104, 1, -45.2 );
setRotateKey( spep_3 -3 + 106, 1, -43.7 );
setRotateKey( spep_3 -3 + 108, 1, -42.2 );
setRotateKey( spep_3 -3 + 110, 1, -40.7 );
setRotateKey( spep_3 -3 + 112, 1, -39.2 );
setRotateKey( spep_3 -3 + 114, 1, -37.7 );
setRotateKey( spep_3 -3 + 116, 1, -36.2 );
setRotateKey( spep_3 -3 + 117, 1, -36.2 );
setRotateKey( spep_3 -3 + 118, 1, 82.8 );
setRotateKey( spep_3 -3 + 120, 1, 63.1 );
setRotateKey( spep_3 -3 + 122, 1, 43.4 );
setRotateKey( spep_3 -3 + 124, 1, 41.3 );
setRotateKey( spep_3 -3 + 126, 1, 39.2 );
setRotateKey( spep_3 -3 + 128, 1, 37.1 );
setRotateKey( spep_3 -3 + 130, 1, 35 );
setRotateKey( spep_3 -3 + 132, 1, 32.9 );
setRotateKey( spep_3 -3 + 134, 1, 30.7 );
setRotateKey( spep_3 -3 + 136, 1, 28.6 );
setRotateKey( spep_3 -3 + 137, 1, 28.6 );
setRotateKey( spep_3 -3 + 138, 1, -75.4 );
setRotateKey( spep_3 -3 + 140, 1, 0 );
setRotateKey( spep_3 -3 + 142, 1, 6.4 );
setRotateKey( spep_3 -3 + 144, 1, 12.9 );
setRotateKey( spep_3 -3 + 146, 1, 19.3 );
setRotateKey( spep_3 -3 + 148, 1, 25.7 );
setRotateKey( spep_3 -3 + 150, 1, 32.2 );
setRotateKey( spep_3 -3 + 152, 1, 38.6 );
setRotateKey( spep_3 -3 + 153, 1, 38.6 );
setRotateKey( spep_3 -3 + 154, 1, -17.1 );
setRotateKey( spep_3 -3 + 156, 1, -16.2 );
setRotateKey( spep_3 -3 + 158, 1, -15.4 );
setRotateKey( spep_3 -3 + 160, 1, -14.5 );
setRotateKey( spep_3 -3 + 162, 1, -13.7 );
setRotateKey( spep_3 -3 + 164, 1, -12.8 );
setRotateKey( spep_3 -3 + 166, 1, -12 );
setRotateKey( spep_3 -3 + 168, 1, -11.1 );
setRotateKey( spep_3 -3 + 170, 1, -10.3 );
setRotateKey( spep_3 -3 + 172, 1, -5.9 );
setRotateKey( spep_3 -3 + 174, 1, -1.5 );
setRotateKey( spep_3 -3 + 176, 1, 2.9 );
setRotateKey( spep_3 -3 + 178, 1, 7.3 );
--setRotateKey( spep_3 -3 + 179, 1, 7.3 );
--

-- ** 音 ** --
--初手パンチ1
SE014 = playSe( spep_3 + 40, 1189 );

--初手パンチ2
SE015 = playSe( spep_3 + 44, 1187 );
setSeVolumeByWorkId( spep_3 + 44, SE015, 85 );

--初手パンチ3
SE016 = playSe( spep_3 + 44, 1010 );
setSeVolumeByWorkId( spep_3 + 44, SE016, 83 );

--ブウ飛んでくる
SE017 = playSe( spep_3 + 78, 1183 );
setSeVolumeByWorkId( spep_3 + 78, SE017, 12 );
setSeVolumeByWorkId( spep_3 + 98, SE017, 25 );
setSeVolumeByWorkId( spep_3 + 118, SE017, 50 );
setSeVolumeByWorkId( spep_3 + 138, SE017, 75 );
setSeVolumeByWorkId( spep_3 + 160, SE017, 100 );
stopSe( spep_3 + 160, SE017, 12 );
setStartTimeMs( SE017,  83 );

--ラッシュ3
SE018 = playSe( spep_3 + 86, 1009 );
setSeVolumeByWorkId( spep_3 + 86, SE018, 71 );

--ラッシュ4
SE020 = playSe( spep_3 + 116, 1009 );
setSeVolumeByWorkId( spep_3 + 116, SE020, 81 );

--ラッシュ5
SE021 = playSe( spep_3 + 116, 1000 );
setSeVolumeByWorkId( spep_3 + 116, SE021, 85 );

--ラッシュ6
SE022 = playSe( spep_3 + 134, 1189 );

--ラッシュ7
SE023 = playSe( spep_3 + 136, 1110 );
setSeVolumeByWorkId( spep_3 + 136, SE023, 84 );

--ラッシュ8
SE005 = playSe( spep_3 + 136, 1009 );
setSeVolumeByWorkId( spep_3 + 136, SE005, 92 );

--ラッシュ9
SE024 = playSe( spep_3 + 148, 1003 );
setSeVolumeByWorkId( spep_3 + 148, SE024, 71 );

--ラッシュ10
SE025 = playSe( spep_3 + 152, 1120 );


-- ** 次の準備 ** --
spep_4 = spep_3 + 176;


------------------------------------------------------
-- 敵落下(266F)
------------------------------------------------------
-- ** エフェクト等 ** --
efall = entryEffectLife( spep_4 + 0, SP_05, 266, 0x80, -1, 0, 0, 0 );  --敵落下(ef_005)
setEffMoveKey( spep_4 + 0, efall, 0, 0 , 0 );
setEffMoveKey( spep_4 + 266, efall, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, efall, 1.0, 1.0 );
setEffScaleKey( spep_4 + 266, efall, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, efall, 0 );
setEffRotateKey( spep_4 + 266, efall, 0 );
setEffAlphaKey( spep_4 + 0, efall, 255 );
setEffAlphaKey( spep_4 + 266, efall, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 31, 906, 35, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 31, shuchusen3, 35, 20 );
setEffMoveKey( spep_4 + 31, shuchusen3, -10, 0 , 0 );
setEffMoveKey( spep_4 + 66, shuchusen3, -10, 0 , 0 );
setEffScaleKey( spep_4 + 31, shuchusen3, 2.2, 1.9 );
setEffScaleKey( spep_4 + 66, shuchusen3, 2.2, 1.9 );
setEffRotateKey( spep_4 + 31, shuchusen3, 0 );
setEffRotateKey( spep_4 + 66, shuchusen3, 0 );
setEffAlphaKey( spep_4 + 31, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 66, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_4 -3 + 30,  10018, 36, 0x100, -1, 0, -63, -3.3 ); --ドゴォンッ
setEffMoveKey( spep_4 -3 + 30, ctdogon, -63, -3.3 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctdogon, -80.5, 106 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctdogon, -78.9, 104.1 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctdogon, -82.8, 105.2 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctdogon, -79.7, 104.5 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctdogon, -81, 105.6 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctdogon, -79.8, 105 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctdogon, -83, 108.1 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctdogon, -82.2, 109.8 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctdogon, -85.4, 113 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctdogon, -84.6, 114.7 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctdogon, -87.8, 117.9 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctdogon, -87, 119.6 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctdogon, -90.2, 122.7 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctdogon, -89.4, 124.4 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctdogon, -92.6, 127.6 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctdogon, -93.8, 138.9 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctdogon, -99.3, 151.8 , 0 );
setEffMoveKey( spep_4 -3 + 66, ctdogon, -100.2, 163.1 , 0 );

setEffScaleKey( spep_4 -3 + 30, ctdogon, 1.06, 1.06 );
setEffScaleKey( spep_4 -3 + 32, ctdogon, 2.28, 2.28 );
setEffScaleKey( spep_4 -3 + 34, ctdogon, 2.89, 2.89 );
setEffScaleKey( spep_4 -3 + 36, ctdogon, 2.75, 2.75 );
setEffScaleKey( spep_4 -3 + 38, ctdogon, 2.61, 2.61 );
setEffScaleKey( spep_4 -3 + 40, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_4 -3 + 42, ctdogon, 2.34, 2.34 );
setEffScaleKey( spep_4 -3 + 52, ctdogon, 2.34, 2.34 );
setEffScaleKey( spep_4 -3 + 54, ctdogon, 2.33, 2.33 );
setEffScaleKey( spep_4 -3 + 60, ctdogon, 2.33, 2.33 );
setEffScaleKey( spep_4 -3 + 62, ctdogon, 2.52, 2.52 );
setEffScaleKey( spep_4 -3 + 64, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_4 -3 + 66, ctdogon, 2.9, 2.9 );

setEffRotateKey( spep_4 -3 + 30, ctdogon, -14 );
setEffRotateKey( spep_4 -3 + 32, ctdogon, -27.3 );
setEffRotateKey( spep_4 -3 + 34, ctdogon, -19.9 );
setEffRotateKey( spep_4 -3 + 36, ctdogon, -5.4 );
setEffRotateKey( spep_4 -3 + 38, ctdogon, -14.2 );
setEffRotateKey( spep_4 -3 + 40, ctdogon, -24.9 );
setEffRotateKey( spep_4 -3 + 42, ctdogon, -14 );
setEffRotateKey( spep_4 -3 + 44, ctdogon, -14 );
setEffRotateKey( spep_4 -3 + 46, ctdogon, -13.9 );
setEffRotateKey( spep_4 -3 + 56, ctdogon, -13.9 );
setEffRotateKey( spep_4 -3 + 58, ctdogon, -13.8 );
setEffRotateKey( spep_4 -3 + 60, ctdogon, -13.8 );
setEffRotateKey( spep_4 -3 + 62, ctdogon, -13.9 );
setEffRotateKey( spep_4 -3 + 64, ctdogon, -13.9 );
setEffRotateKey( spep_4 -3 + 66, ctdogon, -14 );

setEffAlphaKey( spep_4 -3 + 30, ctdogon, 255 );
setEffAlphaKey( spep_4 -3 + 60, ctdogon, 255 );
setEffAlphaKey( spep_4 -3 + 62, ctdogon, 170 );
setEffAlphaKey( spep_4 -3 + 64, ctdogon, 85 );
setEffAlphaKey( spep_4 -3 + 66, ctdogon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 23, 1, 0 );
changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, -466.9, 413.9 , 0 );
setMoveKey( spep_4 + 1, 1, -455.5, 403.8 , 0 );
setMoveKey( spep_4 + 2, 1, -439.1, 384.7 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -417.8, 357 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -391.8, 321 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -361.2, 276.9 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -326, 224.9 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -286.3, 165 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -241.9, 97.2 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -192.8, 21.2 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -138.8, -63.1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -79.6, -156.1 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -15.1, -258.5 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -15.1, -258.5 , 0 );

setScaleKey( spep_4 + 0, 1, 7.49, 7.49 );
setScaleKey( spep_4 + 1, 1, 7.32, 7.32 );
setScaleKey( spep_4 + 2, 1, 7.06, 7.06 );
setScaleKey( spep_4 -3 + 6, 1, 6.72, 6.72 );
setScaleKey( spep_4 -3 + 8, 1, 6.3, 6.3 );
setScaleKey( spep_4 -3 + 10, 1, 5.8, 5.8 );
setScaleKey( spep_4 -3 + 12, 1, 5.23, 5.23 );
setScaleKey( spep_4 -3 + 14, 1, 4.58, 4.58 );
setScaleKey( spep_4 -3 + 16, 1, 3.85, 3.85 );
setScaleKey( spep_4 -3 + 18, 1, 3.05, 3.05 );
setScaleKey( spep_4 -3 + 20, 1, 2.16, 2.16 );
setScaleKey( spep_4 -3 + 22, 1, 1.19, 1.19 );
setScaleKey( spep_4 -3 + 24, 1, 0.13, 0.13 );
setScaleKey( spep_4 -3 + 26, 1, 0.13, 0.13 );

setRotateKey( spep_4 + 0, 1, 59.7 );
setRotateKey( spep_4 + 1, 1, 60 );
setRotateKey( spep_4 + 2, 1, 60.8 );
setRotateKey( spep_4 -3 + 6, 1, 62.3 );
setRotateKey( spep_4 -3 + 8, 1, 64.3 );
setRotateKey( spep_4 -3 + 10, 1, 66.8 );
setRotateKey( spep_4 -3 + 12, 1, 70 );
setRotateKey( spep_4 -3 + 14, 1, 73.7 );
setRotateKey( spep_4 -3 + 16, 1, 78 );
setRotateKey( spep_4 -3 + 18, 1, 82.9 );
setRotateKey( spep_4 -3 + 20, 1, 88.3 );
setRotateKey( spep_4 -3 + 22, 1, 94.3 );
setRotateKey( spep_4 -3 + 24, 1, 100.9 );
setRotateKey( spep_4 -3 + 26, 1, 100.9 );

-- ** 音 ** --
--敵飛んでいく
SE019 = playSe( spep_4 + 0, 1121 );
setSeVolumeByWorkId( spep_4 + 0, SE017, 10 );
setSeVolumeByWorkId( spep_4 + 2, SE017, 20 );
setSeVolumeByWorkId( spep_4 + 4, SE017, 40 );
setSeVolumeByWorkId( spep_4 + 6, SE017, 60 );
setSeVolumeByWorkId( spep_4 + 8, SE017, 80 );
setSeVolumeByWorkId( spep_4 + 10, SE017, 100 );
stopSe( spep_4 + 28, SE019, 12 );
setStartTimeMs( SE019,  1333 );

--地面爆発
SE026 = playSe( spep_4 + 22, 1159 );
setSeVolumeByWorkId( spep_4 + 22, SE026, 66 );

--バビディマントひらひら
SE027 = playSe( spep_4 + 70, 1229 );
setSeVolumeByWorkId( spep_4 + 70, SE027, 67 );

--ブウよってくる
SE028 = playSe( spep_4 + 142, 44 );
setSeVolumeByWorkId( spep_4 + 142, SE028, 84 );

--ブウ腕あげる1
SE029 = playSe( spep_4 + 224, 1113 );
setSeVolumeByWorkId( spep_4 + 224, SE029, 81 );
setPitch( spep_4 + 224, SE029, 400 );
setTimeStretch( SE029, 1.27, 10, 1 );

--ブウ腕あげる2
SE030 = playSe( spep_4 + 242, 1113 );
setSeVolumeByWorkId( spep_4 + 242, SE030, 82 );
setPitch( spep_4 + 242, SE030, 400 );
setTimeStretch( SE030, 1.27, 10, 1 );

--画面遷移
SE031 = playSe( spep_4 + 256, 8 );
setSeVolumeByWorkId( spep_4 + 256, SE031, 58 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 266, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_4 + 256, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 266;


------------------------------------------------------
-- ブウ息吸い(156F)
------------------------------------------------------
-- ** エフェクト等 ** --
bless = entryEffectLife( spep_5 + 0, SP_06, 156, 0x80, -1, 0, 0, 0 );  --ブウ息吸い(ef_006)
setEffMoveKey( spep_5 + 0, bless, 0, 0 , 0 );
setEffMoveKey( spep_5 + 156, bless, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bless, 1.0, 1.0 );
setEffScaleKey( spep_5 + 156, bless, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bless, 0 );
setEffRotateKey( spep_5 + 156, bless, 0 );
setEffAlphaKey( spep_5 + 0, bless, 255 );
setEffAlphaKey( spep_5 + 156, bless, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_5 + 13, 906, 45, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 13, shuchusen4, 45, 20 );
setEffMoveKey( spep_5 + 13, shuchusen4, -10, 0 , 0 );
setEffMoveKey( spep_5 + 58, shuchusen4, -10, 0 , 0 );
setEffScaleKey( spep_5 + 13, shuchusen4, 2.3, 2.0 );
setEffScaleKey( spep_5 + 58, shuchusen4, 2.3, 2.0 );
setEffRotateKey( spep_5 + 13, shuchusen4, 0 );
setEffRotateKey( spep_5 + 58, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 13, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 58, shuchusen4, 255 );

shuchusen5 = entryEffectLife( spep_5 + 121, 906, 34, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 121, shuchusen5, 34, 20 );
setEffMoveKey( spep_5 + 121, shuchusen5, -10, 0 , 0 );
setEffMoveKey( spep_5 + 155, shuchusen5, -10, 0 , 0 );
setEffScaleKey( spep_5 + 121, shuchusen5, 2.3, 2.0 );
setEffScaleKey( spep_5 + 155, shuchusen5, 2.3, 2.0 );
setEffRotateKey( spep_5 + 121, shuchusen5, 0 );
setEffRotateKey( spep_5 + 155, shuchusen5, 0 );
setEffAlphaKey( spep_5 + 121, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 155, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_5 -3 + 122,  10012, 26, 0x110, -1, 0, 55.9, 269.7 ); --ズオッ
setEffMoveKey( spep_5 -3 + 122, ctzuo, 55.9, 269.7 , 0 );
setEffMoveKey( spep_5 -3 + 124, ctzuo, 101.3, 316.6 , 0 );
setEffMoveKey( spep_5 -3 + 126, ctzuo, 95.6, 314.1 , 0 );
setEffMoveKey( spep_5 -3 + 128, ctzuo, 98.7, 320.4 , 0 );
setEffMoveKey( spep_5 -3 + 130, ctzuo, 92.9, 317.9 , 0 );
setEffMoveKey( spep_5 -3 + 132, ctzuo, 96, 324.2 , 0 );
setEffMoveKey( spep_5 -3 + 134, ctzuo, 90.3, 321.7 , 0 );
setEffMoveKey( spep_5 -3 + 136, ctzuo, 93.4, 328 , 0 );
setEffMoveKey( spep_5 -3 + 138, ctzuo, 87.7, 325.5 , 0 );
setEffMoveKey( spep_5 -3 + 140, ctzuo, 90.8, 331.8 , 0 );
setEffMoveKey( spep_5 -3 + 142, ctzuo, 85, 329.3 , 0 );
setEffMoveKey( spep_5 -3 + 144, ctzuo, 94.4, 338 , 0 );
setEffMoveKey( spep_5 -3 + 146, ctzuo, 94.4, 337.4 , 0 );
setEffMoveKey( spep_5 -3 + 148, ctzuo, 99.1, 341.4 , 0 );

setEffScaleKey( spep_5 -3 + 122, ctzuo, 1.216, 1.216 );
setEffScaleKey( spep_5 -3 + 124, ctzuo, 2.24, 2.24 );
setEffScaleKey( spep_5 -3 + 142, ctzuo, 2.24, 2.24 );
setEffScaleKey( spep_5 -3 + 144, ctzuo, 2.336, 2.336 );
setEffScaleKey( spep_5 -3 + 146, ctzuo, 2.464, 2.464 );
setEffScaleKey( spep_5 -3 + 148, ctzuo, 2.56, 2.56 );

setEffRotateKey( spep_5 -3 + 122, ctzuo, 30 );
setEffRotateKey( spep_5 -3 + 148, ctzuo, 30 );

setEffAlphaKey( spep_5 -3 + 122, ctzuo, 128 );
setEffAlphaKey( spep_5 -3 + 124, ctzuo, 255 );
setEffAlphaKey( spep_5 -3 + 142, ctzuo, 255 );
setEffAlphaKey( spep_5 -3 + 144, ctzuo, 170 );
setEffAlphaKey( spep_5 -3 + 146, ctzuo, 85 );
setEffAlphaKey( spep_5 -3 + 148, ctzuo, 0 );

-- ** 音 ** --
--息吸い込む1
SE032 = playSe( spep_5 + 16, 1175 );
setSeVolumeByWorkId( spep_5 + 16, SE032, 77 );
stopSe( spep_5 + 110, SE032, 10 );

--息吸い込む2
SE033 = playSe( spep_5 + 16, 1227 );
setSeVolumeByWorkId( spep_5 + 16, SE033, 78 );
stopSe( spep_5 + 110, SE033, 10 );

--息を吹く1
SE034 = playSe( spep_5 + 120, 1027 );
setSeVolumeByWorkId( spep_5 + 120, SE034, 88 );

--息を吹く2
SE035 = playSe( spep_5 + 120, 1258 );
setSeVolumeByWorkId( spep_5 + 120, SE035, 79 );
stopSe( spep_5 +142 + 22, SE035, 42 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 156, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 156;


------------------------------------------------------
-- ブレス街破壊(166F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --ブレス街破壊(ef_007)
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 166, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 166, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 166, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 166, finish_f, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6 + 0, 906, 166, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen6, 166, 20 );
setEffMoveKey( spep_6 + 0, shuchusen6, -20, -20 , 0 );
setEffMoveKey( spep_6 + 166, shuchusen6, -20, -20 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen6, 1.7, 2.0 );
setEffScaleKey( spep_6 + 166, shuchusen6, 1.7, 2.0 );
setEffRotateKey( spep_6 + 0, shuchusen6, 0 );
setEffRotateKey( spep_6 + 166, shuchusen6, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 166, shuchusen6, 255 );

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_6 + 0,  10014, 42, 0x100, -1, 0, 33.5, 109.5 );
setEffMoveKey( spep_6 + 0, ctzudodo, 33.5, 109.5 , 0 );
setEffMoveKey( spep_6 + 1, ctzudodo, 32.6, 171.5 , 0 );
setEffMoveKey( spep_6 + 2, ctzudodo, 23.9, 247.4 , 0 );
setEffMoveKey( spep_6 -3 + 6, ctzudodo, 29.6, 238.6 , 0 );
setEffMoveKey( spep_6 -3 + 8, ctzudodo, 23.7, 250.6 , 0 );
setEffMoveKey( spep_6 -3 + 10, ctzudodo, 29.4, 241.7 , 0 );
setEffMoveKey( spep_6 -3 + 12, ctzudodo, 23.4, 253.8 , 0 );
setEffMoveKey( spep_6 -3 + 14, ctzudodo, 29.2, 244.8 , 0 );
setEffMoveKey( spep_6 -3 + 16, ctzudodo, 23.2, 257 , 0 );
setEffMoveKey( spep_6 -3 + 18, ctzudodo, 29.1, 247.9 , 0 );
setEffMoveKey( spep_6 -3 + 20, ctzudodo, 23, 260.2 , 0 );
setEffMoveKey( spep_6 -3 + 22, ctzudodo, 28.9, 250.9 , 0 );
setEffMoveKey( spep_6 -3 + 24, ctzudodo, 22.7, 263.4 , 0 );
setEffMoveKey( spep_6 -3 + 26, ctzudodo, 28.7, 254 , 0 );
setEffMoveKey( spep_6 -3 + 28, ctzudodo, 22.5, 266.7 , 0 );
setEffMoveKey( spep_6 -3 + 30, ctzudodo, 28.6, 257.1 , 0 );
setEffMoveKey( spep_6 -3 + 32, ctzudodo, 22.2, 269.9 , 0 );
setEffMoveKey( spep_6 -3 + 34, ctzudodo, 28.4, 260.2 , 0 );
setEffMoveKey( spep_6 -3 + 36, ctzudodo, 22, 273.1 , 0 );
setEffMoveKey( spep_6 -3 + 38, ctzudodo, 28.2, 263.3 , 0 );
setEffMoveKey( spep_6 -3 + 40, ctzudodo, 8.1, 285.8 , 0 );
setEffMoveKey( spep_6 -3 + 42, ctzudodo, -5.7, 297 , 0 );
setEffMoveKey( spep_6 -3 + 45, ctzudodo, -5.7, 297 , 0 );

setEffScaleKey( spep_6 + 0, ctzudodo, 0.9, 1.17 );
setEffScaleKey( spep_6 + 1, ctzudodo, 1.74, 2.26 );
setEffScaleKey( spep_6 + 2, ctzudodo, 2.58, 3.34 );
setEffScaleKey( spep_6 -3 + 6, ctzudodo, 2.59, 3.36 );
setEffScaleKey( spep_6 -3 + 8, ctzudodo, 2.61, 3.38 );
setEffScaleKey( spep_6 -3 + 10, ctzudodo, 2.63, 3.41 );
setEffScaleKey( spep_6 -3 + 12, ctzudodo, 2.65, 3.43 );
setEffScaleKey( spep_6 -3 + 14, ctzudodo, 2.66, 3.45 );
setEffScaleKey( spep_6 -3 + 16, ctzudodo, 2.68, 3.47 );
setEffScaleKey( spep_6 -3 + 18, ctzudodo, 2.7, 3.49 );
setEffScaleKey( spep_6 -3 + 20, ctzudodo, 2.71, 3.52 );
setEffScaleKey( spep_6 -3 + 22, ctzudodo, 2.73, 3.54 );
setEffScaleKey( spep_6 -3 + 24, ctzudodo, 2.75, 3.56 );
setEffScaleKey( spep_6 -3 + 26, ctzudodo, 2.77, 3.58 );
setEffScaleKey( spep_6 -3 + 28, ctzudodo, 2.78, 3.61 );
setEffScaleKey( spep_6 -3 + 30, ctzudodo, 2.8, 3.63 );
setEffScaleKey( spep_6 -3 + 32, ctzudodo, 2.82, 3.65 );
setEffScaleKey( spep_6 -3 + 34, ctzudodo, 2.83, 3.67 );
setEffScaleKey( spep_6 -3 + 36, ctzudodo, 2.85, 3.69 );
setEffScaleKey( spep_6 -3 + 38, ctzudodo, 2.87, 3.72 );
setEffScaleKey( spep_6 -3 + 40, ctzudodo, 2.89, 3.75 );
setEffScaleKey( spep_6 -3 + 42, ctzudodo, 2.92, 3.79 );
setEffScaleKey( spep_6 -3 + 45, ctzudodo, 2.92, 3.79 );

setEffRotateKey( spep_6 + 0, ctzudodo, 69.1 );
setEffRotateKey( spep_6 + 42, ctzudodo, 69.1 );

setEffAlphaKey( spep_6 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_6 -3 + 38, ctzudodo, 255 );
setEffAlphaKey( spep_6 -3 + 40, ctzudodo, 128 );
setEffAlphaKey( spep_6 -3 + 42, ctzudodo, 0 );
setEffAlphaKey( spep_6 -3 + 45, ctzudodo, 0 );

-- ** 音 ** --
--地面連続爆発1
SE036 = playSe( spep_6 + 0, 1226 );
setSeVolumeByWorkId( spep_6 + 0, SE036, 70 );
stopSe( spep_6 + 30, SE036, 34 );

--地面連続爆発2
SE037 = playSe( spep_6 + 0, 1159 );
setSeVolumeByWorkId( spep_6 + 0, SE037, 83 );

--地面連続爆発3
SE038 = playSe( spep_6 + 14, 1188 );
setSeVolumeByWorkId( spep_6 + 14, SE038, 66 );

--地面連続爆発4
SE039 = playSe( spep_6 + 22, 1067 );
setSeVolumeByWorkId( spep_6 + 22, SE039, 79 );

--地面連続爆発5
SE040 = playSe( spep_6 + 30, 1023 );
setSeVolumeByWorkId( spep_6 + 30, SE040, 74 );

--地面連続爆発6
SE041 = playSe( spep_6 + 48, 1023 );
setSeVolumeByWorkId( spep_6 + 48, SE041, 86 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 166, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
--entryFade( spep_6 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 56 );
endPhase( spep_6 + 156 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 指差し(142F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --指差し、セリフカットイン(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 142, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 142, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 142, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 142, first_f, 255 );

spep_x = spep_0 + 52;
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

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 50, 906, 91, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 50, shuchusen1, 91, 20 );
setEffMoveKey( spep_0 + 50, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 141, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 50, shuchusen1, 1.2, 1.5 );
setEffScaleKey( spep_0 + 141, shuchusen1, 1.2, 1.5 );
setEffRotateKey( spep_0 + 50, shuchusen1, 0 );
setEffRotateKey( spep_0 + 141, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 50, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 64, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 65, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 141, shuchusen1, 255 );

-- ** 音 ** --
--指差し
SE001 = playSe( spep_0 + 4, 4 );

--指差し
SE002 = playSe( spep_0 + 4, 37 );
setSeVolumeByWorkId( spep_0 + 4, SE002, 79 );
stopSe( spep_0 + 14, SE002, 14 );

--顔カットイン
SE003 = playSe( spep_0 + 68, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 142, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 134, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 142;


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
playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- ブウ溜め→突進(76F)
------------------------------------------------------
-- ** エフェクト等 ** --
charge_f = entryEffect( spep_2 + 0, SP_08r, 0x100, -1, 0, 0, 0 );  --グググ、ギュン(ef_008)
setEffMoveKey( spep_2 + 0, charge_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76, charge_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, charge_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 76, charge_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, charge_f, 0 );
setEffRotateKey( spep_2 + 76, charge_f, 0 );
setEffAlphaKey( spep_2 + 0, charge_f, 255 );
setEffAlphaKey( spep_2 + 76, charge_f, 255 );

charge_b = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --ブウ溜め→突進(ef_002)
setEffMoveKey( spep_2 + 0, charge_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76, charge_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, charge_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, charge_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, charge_b, 0 );
setEffRotateKey( spep_2 + 76, charge_b, 0 );
setEffAlphaKey( spep_2 + 0, charge_b, 255 );
setEffAlphaKey( spep_2 + 76, charge_b, 255 );

-- ** 音 ** --
--ブウダッシュ前溜め1
SE006 = playSe( spep_2 + 20, 1233 );
setSeVolumeByWorkId( spep_2 + 20, SE006, 7 );
setSeVolumeByWorkId( spep_2 + 21, SE006, 15 );
setSeVolumeByWorkId( spep_2 + 22, SE006, 29 );
setSeVolumeByWorkId( spep_2 + 23, SE006, 50 );
setSeVolumeByWorkId( spep_2 + 24, SE006, 71 );
setStartTimeMs( SE006,  200 );
setTimeStretch( SE006, 1.26, 10, 1 );

--ブウダッシュ前溜め2
SE007 = playSe( spep_2 + 20, 1245 );
setSeVolumeByWorkId( spep_2 + 20, SE007, 40 );
stopSe( spep_2 + 34, SE007, 6 );

--バビディ腕あげる1
SE008 = playSe( spep_2 + 24, 37 );
setSeVolumeByWorkId( spep_2 + 24, SE008, 76 );
setPitch( spep_2 + 24, SE008, 400 );
setTimeStretch( SE008, 0.88, 10, 1 );

--バビディ腕あげる2
SE009 = playSe( spep_2 + 50, 37 );
setSeVolumeByWorkId( spep_2 + 50, SE009, 74 );
setPitch( spep_2 + 50, SE009, 400 );
setTimeStretch( SE009, 0.88, 10, 1 );

--ブウダッシュ1
SE010 = playSe( spep_2 + 56, 1182 );

--ブウダッシュ2
SE011 = playSe( spep_2 + 56, 1277 );
setSeVolumeByWorkId( spep_2 + 56, SE011, 89 );

--ブウダッシュ3
SE012 = playSe( spep_2 + 60, 1183 );
stopSe( spep_2 +76 + 46, SE012, 6 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 76, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 76;


------------------------------------------------------
-- 突進→パンチ→追いかけ→蹴り(176F)
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffectLife( spep_3 + 0, SP_09r, 176, 0x100, -1, 0, 0, 0, 3000 );  --ドカツ(ef_009)
setEffMoveKey( spep_3 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 176, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rush_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 176, rush_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_f, 0 );
setEffRotateKey( spep_3 + 176, rush_f, 0 );
setEffAlphaKey( spep_3 + 0, rush_f, 255 );
setEffAlphaKey( spep_3 + 175, rush_f, 255 );
setEffAlphaKey( spep_3 + 176, rush_f, 0 );

rush_b = entryEffectLife( spep_3 + 0, SP_03, 176, 0x100, -1, 0, 0, 0 );  --グググ、ギュン(ef_008)
setEffMoveKey( spep_3 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 176, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_b, 0 );
setEffRotateKey( spep_3 + 176, rush_b, 0 );
setEffAlphaKey( spep_3 + 0, rush_b, 255 );
setEffAlphaKey( spep_3 + 175, rush_b, 255 );
setEffAlphaKey( spep_3 + 176, rush_b, 0 );

rush_e = entryEffectLife( spep_3 + 0, SP_04, 176, 0x80, -1, 0, 0, 0 );  --グググ、ギュン(ef_008)
setEffMoveKey( spep_3 + 0, rush_e, 0, 0 , 0 );
setEffMoveKey( spep_3 + 176, rush_e, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rush_e, 1.0, 1.0 );
setEffScaleKey( spep_3 + 176, rush_e, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_e, 0 );
setEffRotateKey( spep_3 + 176, rush_e, 0 );
setEffAlphaKey( spep_3 + 0, rush_e, 255 );
setEffAlphaKey( spep_3 + 175, rush_e, 255 );
setEffAlphaKey( spep_3 + 176, rush_e, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 47, 906, 25, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 47, shuchusen2, 25, 20 );
setEffMoveKey( spep_3 + 47, shuchusen2, 0, 60 , 0 );
setEffMoveKey( spep_3 + 72, shuchusen2, 0, 60 , 0 );
setEffScaleKey( spep_3 + 47, shuchusen2, 2.2, 1.8 );
setEffScaleKey( spep_3 + 72, shuchusen2, 2.2, 1.8 );
setEffRotateKey( spep_3 + 47, shuchusen2, 0 );
setEffRotateKey( spep_3 + 72, shuchusen2, 0 );
setEffAlphaKey( spep_3 + 47, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 72, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_3 -3 + 50,  10020, 22, 0x100, -1, 0, 130.8, -225.3 ); --バキッ
setEffMoveKey( spep_3 -3 + 50, ctbaki, 130.8, -225.3 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctbaki, 106.6, -183.7 , 0 );
setEffMoveKey( spep_3 -3 + 54, ctbaki, 110.4, -174 , 0 );
setEffMoveKey( spep_3 -3 + 56, ctbaki, 89.5, -158.4 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctbaki, 97.8, -156 , 0 );
setEffMoveKey( spep_3 -3 + 60, ctbaki, 91.8, -154.8 , 0 );
setEffMoveKey( spep_3 -3 + 62, ctbaki, 105.3, -162.9 , 0 );
setEffMoveKey( spep_3 -3 + 64, ctbaki, 87.9, -155.6 , 0 );
setEffMoveKey( spep_3 -3 + 66, ctbaki, 104.2, -149.3 , 0 );
setEffMoveKey( spep_3 -3 + 68, ctbaki, 97.8, -156 , 0 );
setEffMoveKey( spep_3 -3 + 70, ctbaki, 72.9, -92.3 , 0 );
setEffMoveKey( spep_3 -3 + 72, ctbaki, 67.1, -73 , 0 );

setEffScaleKey( spep_3 -3 + 50, ctbaki, 1.47, 1.32 );
setEffScaleKey( spep_3 -3 + 52, ctbaki, 2.07, 1.86 );
setEffScaleKey( spep_3 -3 + 54, ctbaki, 2.31, 2.08 );
setEffScaleKey( spep_3 -3 + 56, ctbaki, 2.44, 2.19 );
setEffScaleKey( spep_3 -3 + 58, ctbaki, 2.48, 2.23 );
setEffScaleKey( spep_3 -3 + 68, ctbaki, 2.48, 2.23 );
setEffScaleKey( spep_3 -3 + 70, ctbaki, 2.79, 2.8 );
setEffScaleKey( spep_3 -3 + 72, ctbaki, 2.88, 2.98 );

setEffRotateKey( spep_3 -3 + 50, ctbaki, -12 );
setEffRotateKey( spep_3 -3 + 72, ctbaki, -12 );

setEffAlphaKey( spep_3 -3 + 50, ctbaki, 255 );
setEffAlphaKey( spep_3 -3 + 68, ctbaki, 255 );
setEffAlphaKey( spep_3 -3 + 70, ctbaki, 61 );
setEffAlphaKey( spep_3 -3 + 72, ctbaki, 0 );

ctgaha1 = entryEffectLife( spep_3 -3 + 88,  10005, 18, 0x100, -1, 0, -102.6, 106.1 ); --ガッ
setEffMoveKey( spep_3 -3 + 88, ctgaha1, -102.6, 106.1 , 0 );
setEffMoveKey( spep_3 -3 + 90, ctgaha1, -120.9, 115.5 , 0 );
setEffMoveKey( spep_3 -3 + 92, ctgaha1, -127.7, 115 , 0 );
setEffMoveKey( spep_3 -3 + 94, ctgaha1, -139.1, 117.7 , 0 );
setEffMoveKey( spep_3 -3 + 96, ctgaha1, -148.1, 118.7 , 0 );
setEffMoveKey( spep_3 -3 + 98, ctgaha1, -150.1, 113.8 , 0 );
setEffMoveKey( spep_3 -3 + 100, ctgaha1, -156.8, 112.2 , 0 );
setEffMoveKey( spep_3 -3 + 102, ctgaha1, -158.6, 107.3 , 0 );
setEffMoveKey( spep_3 -3 + 104, ctgaha1, -165.4, 105.7 , 0 );
setEffMoveKey( spep_3 -3 + 106, ctgaha1, -169.7, 102.5 , 0 );

setEffScaleKey( spep_3 -3 + 88, ctgaha1, 0.1, 0.1 );
setEffScaleKey( spep_3 -3 + 90, ctgaha1, 0.5, 0.5 );
setEffScaleKey( spep_3 -3 + 96, ctgaha1, 0.5, 0.5 );
setEffScaleKey( spep_3 -3 + 98, ctgaha1, 0.51, 0.51 );
setEffScaleKey( spep_3 -3 + 100, ctgaha1, 0.52, 0.52 );
setEffScaleKey( spep_3 -3 + 102, ctgaha1, 0.53, 0.53 );
setEffScaleKey( spep_3 -3 + 104, ctgaha1, 0.54, 0.54 );
setEffScaleKey( spep_3 -3 + 106, ctgaha1, 0.55, 0.55 );

setEffRotateKey( spep_3 -3 + 88, ctgaha1, -10 );
setEffRotateKey( spep_3 -3 + 106, ctgaha1, -10 );

setEffAlphaKey( spep_3 -3 + 88, ctgaha1, 255 );
setEffAlphaKey( spep_3 -3 + 96, ctgaha1, 255 );
setEffAlphaKey( spep_3 -3 + 98, ctgaha1, 204 );
setEffAlphaKey( spep_3 -3 + 100, ctgaha1, 153 );
setEffAlphaKey( spep_3 -3 + 102, ctgaha1, 102 );
setEffAlphaKey( spep_3 -3 + 104, ctgaha1, 51 );
setEffAlphaKey( spep_3 -3 + 106, ctgaha1, 0 );

ctdon = entryEffectLife( spep_3 -3 + 118,  10019, 14, 0x100, -1, 0, 104.5, 138.7 ); --ドン
setEffMoveKey( spep_3 -3 + 118, ctdon, 104.5, 138.7 , 0 );
setEffMoveKey( spep_3 -3 + 120, ctdon, 142.2, 160.9 , 0 );
setEffMoveKey( spep_3 -3 + 122, ctdon, 144.4, 158.1 , 0 );
setEffMoveKey( spep_3 -3 + 124, ctdon, 146.5, 155.3 , 0 );
setEffMoveKey( spep_3 -3 + 126, ctdon, 148.6, 152.5 , 0 );
setEffMoveKey( spep_3 -3 + 128, ctdon, 135, 170.2 , 0 );
setEffMoveKey( spep_3 -3 + 130, ctdon, 121.3, 187.8 , 0 );
setEffMoveKey( spep_3 -3 + 132, ctdon, 107.7, 205.5 , 0 );

setEffScaleKey( spep_3 -3 + 118, ctdon, 0.15, 0.15 );
setEffScaleKey( spep_3 -3 + 120, ctdon, 1, 1 );
setEffScaleKey( spep_3 -3 + 126, ctdon, 1, 1 );
setEffScaleKey( spep_3 -3 + 128, ctdon, 1.01, 1.01 );
setEffScaleKey( spep_3 -3 + 130, ctdon, 1.01, 1.01 );
setEffScaleKey( spep_3 -3 + 132, ctdon, 1.02, 1.02 );

setEffRotateKey( spep_3 -3 + 118, ctdon, 29.9 );
setEffRotateKey( spep_3 -3 + 120, ctdon, 29.8 );
setEffRotateKey( spep_3 -3 + 132, ctdon, 29.8 );

setEffAlphaKey( spep_3 -3 + 118, ctdon, 255 );
setEffAlphaKey( spep_3 -3 + 126, ctdon, 255 );
setEffAlphaKey( spep_3 -3 + 128, ctdon, 170 );
setEffAlphaKey( spep_3 -3 + 130, ctdon, 85 );
setEffAlphaKey( spep_3 -3 + 132, ctdon, 0 );

ctgaha2 = entryEffectLife( spep_3 -3 + 138,  10005, 12, 0x100, -1, 0, -93.1, 274.3 ); --ガッ
setEffMoveKey( spep_3 -3 + 138, ctgaha2, -93.1, 274.3 , 0 );
setEffMoveKey( spep_3 -3 + 140, ctgaha2, -115.4, 305.7 , 0 );
setEffMoveKey( spep_3 -3 + 142, ctgaha2, -112.2, 296.7 , 0 );
setEffMoveKey( spep_3 -3 + 144, ctgaha2, -126.4, 296.1 , 0 );
setEffMoveKey( spep_3 -3 + 146, ctgaha2, -131.9, 291.3 , 0 );
setEffMoveKey( spep_3 -3 + 148, ctgaha2, -137.8, 281.5 , 0 );
setEffMoveKey( spep_3 -3 + 150, ctgaha2, -152.4, 276 , 0 );

setEffScaleKey( spep_3 -3 + 138, ctgaha2, 0.42, 0.42 );
setEffScaleKey( spep_3 -3 + 140, ctgaha2, 1.7, 1.7 );
setEffScaleKey( spep_3 -3 + 146, ctgaha2, 1.7, 1.7 );
setEffScaleKey( spep_3 -3 + 148, ctgaha2, 1.71, 1.71 );
setEffScaleKey( spep_3 -3 + 150, ctgaha2, 1.72, 1.72 );

setEffRotateKey( spep_3 -3 + 138, ctgaha2, -19.5 );
setEffRotateKey( spep_3 -3 + 150, ctgaha2, -19.3 );

setEffAlphaKey( spep_3 -3 + 138, ctgaha2, 255 );
setEffAlphaKey( spep_3 -3 + 146, ctgaha2, 255 );
setEffAlphaKey( spep_3 -3 + 148, ctgaha2, 128 );
setEffAlphaKey( spep_3 -3 + 150, ctgaha2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 102 );
changeAnime( spep_3 -3 + 18, 1, 118 );

setMoveKey( spep_3 + 0, 1, 184.3, 82.3 , 0 );
setMoveKey( spep_3 + 1, 1, 185.5, 82 , 0 );
setMoveKey( spep_3 + 2, 1, 186.7, 81.8 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 187.9, 81.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 189.1, 81.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 190.4, 81.1 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 191.6, 80.8 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 192.8, 80.6 , 0 );
setMoveKey( spep_3 -3 + 17, 1, 194, 80.3 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 194.2, 55.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 195.4, 55.2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 196.6, 54.8 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 197.8, 54.5 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 199.1, 54.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 200.3, 53.7 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 201.5, 53.4 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 202.7, 53 , 0 );

--a1=0.2;
a1=0;
setScaleKey( spep_3 + 0, 1, 2.3 -a1, 2.3 -a1 );
setScaleKey( spep_3 + 1, 1, 2.31 -a1, 2.31 -a1 );
setScaleKey( spep_3 + 2, 1, 2.32 -a1, 2.32 -a1 );
setScaleKey( spep_3 -3 + 6, 1, 2.34 -a1, 2.34 -a1 );
setScaleKey( spep_3 -3 + 8, 1, 2.35 -a1, 2.35 -a1 );
setScaleKey( spep_3 -3 + 10, 1, 2.36 -a1, 2.36 -a1 );
setScaleKey( spep_3 -3 + 12, 1, 2.37 -a1, 2.37 -a1 );
setScaleKey( spep_3 -3 + 14, 1, 2.38 -a1, 2.38 -a1 );
setScaleKey( spep_3 -3 + 17, 1, 2.4 -a1, 2.4 -a1 );
setScaleKey( spep_3 -3 + 18, 1, 2.62 -a1, 2.62 -a1 );
setScaleKey( spep_3 -3 + 20, 1, 2.63 -a1, 2.63 -a1 );
setScaleKey( spep_3 -3 + 22, 1, 2.64 -a1, 2.64 -a1 );
setScaleKey( spep_3 -3 + 24, 1, 2.66 -a1, 2.66 -a1 );
setScaleKey( spep_3 -3 + 26, 1, 2.67 -a1, 2.67 -a1 );
setScaleKey( spep_3 -3 + 28, 1, 2.68 -a1, 2.68 -a1 );
setScaleKey( spep_3 -3 + 30, 1, 2.7 -a1, 2.7 -a1 );
setScaleKey( spep_3 -3 + 32, 1, 2.71 -a1, 2.71 -a1 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 17, 1, 0 );
setRotateKey( spep_3 -3 + 18, 1, 2 );

-- ** 音 ** --
--ブウダッシュ4
SE013 = playSe( spep_3 + 0, 1167 );
setSeVolumeByWorkId( spep_3 + 0, SE013, 33 );
stopSe( spep_3 + 44, SE013, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 176, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 203.9, 52.6 , 0 );
    setMoveKey( SP_dodge + 2, 1, 205.1, 52.2 , 0 );
    setMoveKey( SP_dodge + 4, 1, 206.3, 51.9 , 0 );
    setMoveKey( SP_dodge + 6, 1, 206.3, 51 , 0 );
    setMoveKey( SP_dodge + 8, 1, 206.3, 50.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 206.3, 49.2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2.72 -a1, 2.72 -a1 );
    setScaleKey( SP_dodge + 2, 1, 2.74 -a1, 2.74 -a1 );
    setScaleKey( SP_dodge + 4, 1, 2.75 -a1, 2.75 -a1 );
    setScaleKey( SP_dodge + 6, 1, 2.75 -a1, 2.75 -a1 );
    setScaleKey( SP_dodge + 8, 1, 2.75 -a1, 2.75 -a1 );
    setScaleKey( SP_dodge + 10, 1, 2.75 -a1, 2.75 -a1 );

    setRotateKey( SP_dodge + 0, 1, 2 );
    setRotateKey( SP_dodge + 10, 1, 2 );    
    
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
setDisp( spep_3 + 58, 1, 0 );
changeAnime( spep_3 -3 + 48, 1, 7 );

setMoveKey( spep_3 -3 + 34, 1, 203.9, 52.6 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 205.1, 52.2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 206.3, 51.9 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 206.3, 51 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 206.3, 50.1 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 206.3, 49.2 , 0 );
setMoveKey( spep_3 -3 + 47, 1, 206.2, 48.3 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -33.6, -197.3 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -42.6, -212.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -116, -338.9 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -214.1, -501 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -282.4, -623.8 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -375.4, -782.1 , 0 );
setMoveKey( spep_3 -3 + 61, 1, -450.7, -913.3 , 0 );

--a2=0.2;
a2=0;
setScaleKey( spep_3 -3 + 34, 1, 2.72 -a1, 2.72 -a1 );
setScaleKey( spep_3 -3 + 36, 1, 2.74 -a1, 2.74 -a1 );
setScaleKey( spep_3 -3 + 38, 1, 2.75 -a1, 2.75 -a1 );
setScaleKey( spep_3 -3 + 47, 1, 2.75 -a1, 2.75 -a1 );
setScaleKey( spep_3 -3 + 48, 1, 1.25 -a2, 1.25 -a2 );
setScaleKey( spep_3 -3 + 50, 1, 1.25 -a2, 1.25 -a2 );
setScaleKey( spep_3 -3 + 52, 1, 1.84 -a2, 1.84 -a2 );
setScaleKey( spep_3 -3 + 54, 1, 2.44 -a2, 2.44 -a2 );
setScaleKey( spep_3 -3 + 56, 1, 3.03 -a2, 3.03 -a2 );
setScaleKey( spep_3 -3 + 58, 1, 3.64 -a2, 3.64 -a2 );
setScaleKey( spep_3 -3 + 61, 1, 4.25 -a2, 4.25 -a2 );

setRotateKey( spep_3 -3 + 47, 1, 2 );
setRotateKey( spep_3 -3 + 48, 1, 44.9 );
setRotateKey( spep_3 -3 + 61, 1, 44.9 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 76, 1, 1 );
setDisp( spep_3 -3 + 178, 1, 0 );
changeAnime( spep_3 -3 + 76, 1, 7 );
changeAnime( spep_3 -3 + 88, 1, 107 );
changeAnime( spep_3 -3 + 118, 1, 7 );
changeAnime( spep_3 -3 + 138, 1, 8 );
changeAnime( spep_3 -3 + 154, 1, 106 );

setMoveKey( spep_3 -3 + 76, 1, 1.9, 56.6 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -5.6, 53.2 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -13.2, 49.7 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -20.7, 46.3 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -28.2, 42.8 , 0 );
setMoveKey( spep_3 -3 + 86, 1, -35.8, 39.3 , 0 );
setMoveKey( spep_3 -3 + 88, 1, -47.3, 35.2 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -41.7, 14.1 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -2.3, 27.9 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 4.6, 26 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 11.5, 24 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 18.3, 22.1 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 25.2, 20.2 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 32.1, 18.2 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 38.9, 16.3 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 45.8, 14.3 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 52.6, 12.4 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 59.5, 10.5 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 66.3, 8.5 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 73.2, 6.6 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 80.1, 4.6 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 87.7, -0.3 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 61.9, -23.2 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 69.8, -11.3 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 60.7, -19.2 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 54.8, -20.7 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 47.3, -25.4 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 39.8, -30.1 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 32.3, -34.8 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 24.8, -39.5 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 17.2, -44.2 , 0 );
setMoveKey( spep_3 -3 + 138, 1, -54.7, -76.9 , 0 );
setMoveKey( spep_3 -3 + 140, 1, -68, 14.2 , 0 );
setMoveKey( spep_3 -3 + 142, 1, -62.1, 15.6 , 0 );
setMoveKey( spep_3 -3 + 144, 1, -52.6, 23.7 , 0 );
setMoveKey( spep_3 -3 + 146, 1, -44.3, 28.8 , 0 );
setMoveKey( spep_3 -3 + 148, 1, -35.5, 34.1 , 0 );
setMoveKey( spep_3 -3 + 150, 1, -26.2, 39.5 , 0 );
setMoveKey( spep_3 -3 + 152, 1, -16.3, 44.7 , 0 );
setMoveKey( spep_3 -3 + 153, 1, -16.3, 44.7 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 40.3, 67.9 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 47.6, 62.4 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 64.3, 44.4 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 62.3, 51.2 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 79, 33.3 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 77, 40.1 , 0 );
setMoveKey( spep_3 -3 + 166, 1, 93.7, 22.1 , 0 );
setMoveKey( spep_3 -3 + 168, 1, 91.7, 28.9 , 0 );
setMoveKey( spep_3 -3 + 170, 1, 108.4, 11 , 0 );
setMoveKey( spep_3 -3 + 172, 1, 271.5, -154.8 , 0 );
setMoveKey( spep_3 -3 + 174, 1, 444, -332.9 , 0 );
setMoveKey( spep_3 -3 + 176, 1, 616.4, -511.1 , 0 );
setMoveKey( spep_3 -3 + 178, 1, 788.9, -689.2 , 0 );
--setMoveKey( spep_3 -3 + 179, 1, 788.9, -689.2 , 0 );

setScaleKey( spep_3 -3 + 76, 1, 0.13, 0.13 );
setScaleKey( spep_3 -3 + 78, 1, 0.14, 0.14 );
setScaleKey( spep_3 -3 + 80, 1, 0.14, 0.14 );
setScaleKey( spep_3 -3 + 82, 1, 0.15, 0.15 );
setScaleKey( spep_3 -3 + 84, 1, 0.16, 0.16 );
setScaleKey( spep_3 -3 + 88, 1, 0.19, 0.19 );
setScaleKey( spep_3 -3 + 90, 1, 0.2, 0.2 );
setScaleKey( spep_3 -3 + 92, 1, 0.22, 0.22 );
setScaleKey( spep_3 -3 + 94, 1, 0.23, 0.23 );
setScaleKey( spep_3 -3 + 96, 1, 0.23, 0.23 );
setScaleKey( spep_3 -3 + 98, 1, 0.24, 0.24 );
setScaleKey( spep_3 -3 + 100, 1, 0.25, 0.25 );
setScaleKey( spep_3 -3 + 102, 1, 0.26, 0.26 );
setScaleKey( spep_3 -3 + 104, 1, 0.26, 0.26 );
setScaleKey( spep_3 -3 + 106, 1, 0.27, 0.27 );
setScaleKey( spep_3 -3 + 108, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 110, 1, 0.29, 0.29 );
setScaleKey( spep_3 -3 + 112, 1, 0.29, 0.29 );
setScaleKey( spep_3 -3 + 114, 1, 0.3, 0.3 );
setScaleKey( spep_3 -3 + 116, 1, 0.31, 0.31 );
setScaleKey( spep_3 -3 + 118, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 120, 1, 0.38, 0.38 );
setScaleKey( spep_3 -3 + 122, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 124, 1, 0.43, 0.43 );
setScaleKey( spep_3 -3 + 126, 1, 0.45, 0.45 );
setScaleKey( spep_3 -3 + 128, 1, 0.48, 0.48 );
setScaleKey( spep_3 -3 + 130, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 132, 1, 0.52, 0.52 );
setScaleKey( spep_3 -3 + 134, 1, 0.55, 0.55 );
setScaleKey( spep_3 -3 + 136, 1, 0.57, 0.57 );
setScaleKey( spep_3 -3 + 137, 1, 0.57, 0.57 );
setScaleKey( spep_3 -3 + 138, 1, 1.79, 1.79 );--
setScaleKey( spep_3 -3 + 140, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 142, 1, 1.95, 1.95 );
setScaleKey( spep_3 -3 + 144, 1, 1.99, 1.99 );
setScaleKey( spep_3 -3 + 146, 1, 2.03, 2.03 );
setScaleKey( spep_3 -3 + 148, 1, 2.12, 2.12 );
setScaleKey( spep_3 -3 + 150, 1, 2.21, 2.21 );
setScaleKey( spep_3 -3 + 152, 1, 2.31, 2.31 );
setScaleKey( spep_3 -3 + 154, 1, 2.36, 2.36 );
setScaleKey( spep_3 -3 + 178, 1, 2.36, 2.36 );
--setScaleKey( spep_3 -3 + 179, 1, 2.36, 2.36 );

setRotateKey( spep_3 -3 + 76, 1, 22.3 );
setRotateKey( spep_3 -3 + 87, 1, 22.3 );
setRotateKey( spep_3 -3 + 88, 1, -129.4 );
setRotateKey( spep_3 -3 + 90, 1, -91.8 );
setRotateKey( spep_3 -3 + 92, 1, -54.1 );
setRotateKey( spep_3 -3 + 94, 1, -52.6 );
setRotateKey( spep_3 -3 + 96, 1, -51.1 );
setRotateKey( spep_3 -3 + 98, 1, -49.6 );
setRotateKey( spep_3 -3 + 100, 1, -48.1 );
setRotateKey( spep_3 -3 + 102, 1, -46.7 );
setRotateKey( spep_3 -3 + 104, 1, -45.2 );
setRotateKey( spep_3 -3 + 106, 1, -43.7 );
setRotateKey( spep_3 -3 + 108, 1, -42.2 );
setRotateKey( spep_3 -3 + 110, 1, -40.7 );
setRotateKey( spep_3 -3 + 112, 1, -39.2 );
setRotateKey( spep_3 -3 + 114, 1, -37.7 );
setRotateKey( spep_3 -3 + 116, 1, -36.2 );
setRotateKey( spep_3 -3 + 117, 1, -36.2 );
setRotateKey( spep_3 -3 + 118, 1, 82.8 );
setRotateKey( spep_3 -3 + 120, 1, 63.1 );
setRotateKey( spep_3 -3 + 122, 1, 43.4 );
setRotateKey( spep_3 -3 + 124, 1, 41.3 );
setRotateKey( spep_3 -3 + 126, 1, 39.2 );
setRotateKey( spep_3 -3 + 128, 1, 37.1 );
setRotateKey( spep_3 -3 + 130, 1, 35 );
setRotateKey( spep_3 -3 + 132, 1, 32.9 );
setRotateKey( spep_3 -3 + 134, 1, 30.7 );
setRotateKey( spep_3 -3 + 136, 1, 28.6 );
setRotateKey( spep_3 -3 + 137, 1, 28.6 );
setRotateKey( spep_3 -3 + 138, 1, -75.4 );
setRotateKey( spep_3 -3 + 140, 1, 0 );
setRotateKey( spep_3 -3 + 142, 1, 6.4 );
setRotateKey( spep_3 -3 + 144, 1, 12.9 );
setRotateKey( spep_3 -3 + 146, 1, 19.3 );
setRotateKey( spep_3 -3 + 148, 1, 25.7 );
setRotateKey( spep_3 -3 + 150, 1, 32.2 );
setRotateKey( spep_3 -3 + 152, 1, 38.6 );
setRotateKey( spep_3 -3 + 153, 1, 38.6 );
setRotateKey( spep_3 -3 + 154, 1, -17.1 );
setRotateKey( spep_3 -3 + 156, 1, -16.2 );
setRotateKey( spep_3 -3 + 158, 1, -15.4 );
setRotateKey( spep_3 -3 + 160, 1, -14.5 );
setRotateKey( spep_3 -3 + 162, 1, -13.7 );
setRotateKey( spep_3 -3 + 164, 1, -12.8 );
setRotateKey( spep_3 -3 + 166, 1, -12 );
setRotateKey( spep_3 -3 + 168, 1, -11.1 );
setRotateKey( spep_3 -3 + 170, 1, -10.3 );
setRotateKey( spep_3 -3 + 172, 1, -5.9 );
setRotateKey( spep_3 -3 + 174, 1, -1.5 );
setRotateKey( spep_3 -3 + 176, 1, 2.9 );
setRotateKey( spep_3 -3 + 178, 1, 7.3 );
--setRotateKey( spep_3 -3 + 179, 1, 7.3 );
--

-- ** 音 ** --
--初手パンチ1
SE014 = playSe( spep_3 + 40, 1189 );

--初手パンチ2
SE015 = playSe( spep_3 + 44, 1187 );
setSeVolumeByWorkId( spep_3 + 44, SE015, 85 );

--初手パンチ3
SE016 = playSe( spep_3 + 44, 1010 );
setSeVolumeByWorkId( spep_3 + 44, SE016, 83 );

--ブウ飛んでくる
SE017 = playSe( spep_3 + 78, 1183 );
setSeVolumeByWorkId( spep_3 + 78, SE017, 12 );
setSeVolumeByWorkId( spep_3 + 98, SE017, 25 );
setSeVolumeByWorkId( spep_3 + 118, SE017, 50 );
setSeVolumeByWorkId( spep_3 + 138, SE017, 75 );
setSeVolumeByWorkId( spep_3 + 160, SE017, 100 );
stopSe( spep_3 + 160, SE017, 12 );
setStartTimeMs( SE017,  83 );

--ラッシュ3
SE018 = playSe( spep_3 + 86, 1009 );
setSeVolumeByWorkId( spep_3 + 86, SE018, 71 );

--ラッシュ4
SE020 = playSe( spep_3 + 116, 1009 );
setSeVolumeByWorkId( spep_3 + 116, SE020, 81 );

--ラッシュ5
SE021 = playSe( spep_3 + 116, 1000 );
setSeVolumeByWorkId( spep_3 + 116, SE021, 85 );

--ラッシュ6
SE022 = playSe( spep_3 + 134, 1189 );

--ラッシュ7
SE023 = playSe( spep_3 + 136, 1110 );
setSeVolumeByWorkId( spep_3 + 136, SE023, 84 );

--ラッシュ8
SE005 = playSe( spep_3 + 136, 1009 );
setSeVolumeByWorkId( spep_3 + 136, SE005, 92 );

--ラッシュ9
SE024 = playSe( spep_3 + 148, 1003 );
setSeVolumeByWorkId( spep_3 + 148, SE024, 71 );

--ラッシュ10
SE025 = playSe( spep_3 + 152, 1120 );


-- ** 次の準備 ** --
spep_4 = spep_3 + 176;


------------------------------------------------------
-- 敵落下(266F)
------------------------------------------------------
-- ** エフェクト等 ** --
efall = entryEffectLife( spep_4 + 0, SP_05, 266, 0x80, -1, 0, 0, 0 );  --敵落下(ef_005)
setEffMoveKey( spep_4 + 0, efall, 0, 0 , 0 );
setEffMoveKey( spep_4 + 266, efall, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, efall, 1.0, 1.0 );
setEffScaleKey( spep_4 + 266, efall, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, efall, 0 );
setEffRotateKey( spep_4 + 266, efall, 0 );
setEffAlphaKey( spep_4 + 0, efall, 255 );
setEffAlphaKey( spep_4 + 266, efall, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 31, 906, 35, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 31, shuchusen3, 35, 20 );
setEffMoveKey( spep_4 + 31, shuchusen3, -10, 0 , 0 );
setEffMoveKey( spep_4 + 66, shuchusen3, -10, 0 , 0 );
setEffScaleKey( spep_4 + 31, shuchusen3, 2.2, 1.9 );
setEffScaleKey( spep_4 + 66, shuchusen3, 2.2, 1.9 );
setEffRotateKey( spep_4 + 31, shuchusen3, 0 );
setEffRotateKey( spep_4 + 66, shuchusen3, 0 );
setEffAlphaKey( spep_4 + 31, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 66, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_4 -3 + 30,  10018, 36, 0x100, -1, 0, -63, -3.3 ); --ドゴォンッ
setEffMoveKey( spep_4 -3 + 30, ctdogon, -63, -3.3 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctdogon, -80.5, 106 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctdogon, -78.9, 104.1 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctdogon, -82.8, 105.2 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctdogon, -79.7, 104.5 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctdogon, -81, 105.6 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctdogon, -79.8, 105 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctdogon, -83, 108.1 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctdogon, -82.2, 109.8 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctdogon, -85.4, 113 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctdogon, -84.6, 114.7 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctdogon, -87.8, 117.9 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctdogon, -87, 119.6 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctdogon, -90.2, 122.7 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctdogon, -89.4, 124.4 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctdogon, -92.6, 127.6 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctdogon, -93.8, 138.9 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctdogon, -99.3, 151.8 , 0 );
setEffMoveKey( spep_4 -3 + 66, ctdogon, -100.2, 163.1 , 0 );

setEffScaleKey( spep_4 -3 + 30, ctdogon, 1.06, 1.06 );
setEffScaleKey( spep_4 -3 + 32, ctdogon, 2.28, 2.28 );
setEffScaleKey( spep_4 -3 + 34, ctdogon, 2.89, 2.89 );
setEffScaleKey( spep_4 -3 + 36, ctdogon, 2.75, 2.75 );
setEffScaleKey( spep_4 -3 + 38, ctdogon, 2.61, 2.61 );
setEffScaleKey( spep_4 -3 + 40, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_4 -3 + 42, ctdogon, 2.34, 2.34 );
setEffScaleKey( spep_4 -3 + 52, ctdogon, 2.34, 2.34 );
setEffScaleKey( spep_4 -3 + 54, ctdogon, 2.33, 2.33 );
setEffScaleKey( spep_4 -3 + 60, ctdogon, 2.33, 2.33 );
setEffScaleKey( spep_4 -3 + 62, ctdogon, 2.52, 2.52 );
setEffScaleKey( spep_4 -3 + 64, ctdogon, 2.71, 2.71 );
setEffScaleKey( spep_4 -3 + 66, ctdogon, 2.9, 2.9 );

setEffRotateKey( spep_4 -3 + 30, ctdogon, -14 );
setEffRotateKey( spep_4 -3 + 32, ctdogon, -27.3 );
setEffRotateKey( spep_4 -3 + 34, ctdogon, -19.9 );
setEffRotateKey( spep_4 -3 + 36, ctdogon, -5.4 );
setEffRotateKey( spep_4 -3 + 38, ctdogon, -14.2 );
setEffRotateKey( spep_4 -3 + 40, ctdogon, -24.9 );
setEffRotateKey( spep_4 -3 + 42, ctdogon, -14 );
setEffRotateKey( spep_4 -3 + 44, ctdogon, -14 );
setEffRotateKey( spep_4 -3 + 46, ctdogon, -13.9 );
setEffRotateKey( spep_4 -3 + 56, ctdogon, -13.9 );
setEffRotateKey( spep_4 -3 + 58, ctdogon, -13.8 );
setEffRotateKey( spep_4 -3 + 60, ctdogon, -13.8 );
setEffRotateKey( spep_4 -3 + 62, ctdogon, -13.9 );
setEffRotateKey( spep_4 -3 + 64, ctdogon, -13.9 );
setEffRotateKey( spep_4 -3 + 66, ctdogon, -14 );

setEffAlphaKey( spep_4 -3 + 30, ctdogon, 255 );
setEffAlphaKey( spep_4 -3 + 60, ctdogon, 255 );
setEffAlphaKey( spep_4 -3 + 62, ctdogon, 170 );
setEffAlphaKey( spep_4 -3 + 64, ctdogon, 85 );
setEffAlphaKey( spep_4 -3 + 66, ctdogon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 23, 1, 0 );
changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, -466.9, 413.9 , 0 );
setMoveKey( spep_4 + 1, 1, -455.5, 403.8 , 0 );
setMoveKey( spep_4 + 2, 1, -439.1, 384.7 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -417.8, 357 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -391.8, 321 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -361.2, 276.9 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -326, 224.9 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -286.3, 165 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -241.9, 97.2 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -192.8, 21.2 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -138.8, -63.1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -79.6, -156.1 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -15.1, -258.5 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -15.1, -258.5 , 0 );

setScaleKey( spep_4 + 0, 1, 7.49, 7.49 );
setScaleKey( spep_4 + 1, 1, 7.32, 7.32 );
setScaleKey( spep_4 + 2, 1, 7.06, 7.06 );
setScaleKey( spep_4 -3 + 6, 1, 6.72, 6.72 );
setScaleKey( spep_4 -3 + 8, 1, 6.3, 6.3 );
setScaleKey( spep_4 -3 + 10, 1, 5.8, 5.8 );
setScaleKey( spep_4 -3 + 12, 1, 5.23, 5.23 );
setScaleKey( spep_4 -3 + 14, 1, 4.58, 4.58 );
setScaleKey( spep_4 -3 + 16, 1, 3.85, 3.85 );
setScaleKey( spep_4 -3 + 18, 1, 3.05, 3.05 );
setScaleKey( spep_4 -3 + 20, 1, 2.16, 2.16 );
setScaleKey( spep_4 -3 + 22, 1, 1.19, 1.19 );
setScaleKey( spep_4 -3 + 24, 1, 0.13, 0.13 );
setScaleKey( spep_4 -3 + 26, 1, 0.13, 0.13 );

setRotateKey( spep_4 + 0, 1, 59.7 );
setRotateKey( spep_4 + 1, 1, 60 );
setRotateKey( spep_4 + 2, 1, 60.8 );
setRotateKey( spep_4 -3 + 6, 1, 62.3 );
setRotateKey( spep_4 -3 + 8, 1, 64.3 );
setRotateKey( spep_4 -3 + 10, 1, 66.8 );
setRotateKey( spep_4 -3 + 12, 1, 70 );
setRotateKey( spep_4 -3 + 14, 1, 73.7 );
setRotateKey( spep_4 -3 + 16, 1, 78 );
setRotateKey( spep_4 -3 + 18, 1, 82.9 );
setRotateKey( spep_4 -3 + 20, 1, 88.3 );
setRotateKey( spep_4 -3 + 22, 1, 94.3 );
setRotateKey( spep_4 -3 + 24, 1, 100.9 );
setRotateKey( spep_4 -3 + 26, 1, 100.9 );

-- ** 音 ** --
--敵飛んでいく
SE019 = playSe( spep_4 + 0, 1121 );
setSeVolumeByWorkId( spep_4 + 0, SE017, 10 );
setSeVolumeByWorkId( spep_4 + 2, SE017, 20 );
setSeVolumeByWorkId( spep_4 + 4, SE017, 40 );
setSeVolumeByWorkId( spep_4 + 6, SE017, 60 );
setSeVolumeByWorkId( spep_4 + 8, SE017, 80 );
setSeVolumeByWorkId( spep_4 + 10, SE017, 100 );
stopSe( spep_4 + 28, SE019, 12 );
setStartTimeMs( SE019,  1333 );

--地面爆発
SE026 = playSe( spep_4 + 22, 1159 );
setSeVolumeByWorkId( spep_4 + 22, SE026, 66 );

--バビディマントひらひら
SE027 = playSe( spep_4 + 70, 1229 );
setSeVolumeByWorkId( spep_4 + 70, SE027, 67 );

--ブウよってくる
SE028 = playSe( spep_4 + 142, 44 );
setSeVolumeByWorkId( spep_4 + 142, SE028, 84 );

--ブウ腕あげる1
SE029 = playSe( spep_4 + 224, 1113 );
setSeVolumeByWorkId( spep_4 + 224, SE029, 81 );
setPitch( spep_4 + 224, SE029, 400 );
setTimeStretch( SE029, 1.27, 10, 1 );

--ブウ腕あげる2
SE030 = playSe( spep_4 + 242, 1113 );
setSeVolumeByWorkId( spep_4 + 242, SE030, 82 );
setPitch( spep_4 + 242, SE030, 400 );
setTimeStretch( SE030, 1.27, 10, 1 );

--画面遷移
SE031 = playSe( spep_4 + 256, 8 );
setSeVolumeByWorkId( spep_4 + 256, SE031, 58 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 266, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_4 + 256, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 266;


------------------------------------------------------
-- ブウ息吸い(156F)
------------------------------------------------------
-- ** エフェクト等 ** --
bless = entryEffectLife( spep_5 + 0, SP_06, 156, 0x80, -1, 0, 0, 0 );  --ブウ息吸い(ef_006)
setEffMoveKey( spep_5 + 0, bless, 0, 0 , 0 );
setEffMoveKey( spep_5 + 156, bless, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, bless, 1.0, 1.0 );
setEffScaleKey( spep_5 + 156, bless, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bless, 0 );
setEffRotateKey( spep_5 + 156, bless, 0 );
setEffAlphaKey( spep_5 + 0, bless, 255 );
setEffAlphaKey( spep_5 + 156, bless, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_5 + 13, 906, 45, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 13, shuchusen4, 45, 20 );
setEffMoveKey( spep_5 + 13, shuchusen4, -10, 0 , 0 );
setEffMoveKey( spep_5 + 58, shuchusen4, -10, 0 , 0 );
setEffScaleKey( spep_5 + 13, shuchusen4, 2.3, 2.0 );
setEffScaleKey( spep_5 + 58, shuchusen4, 2.3, 2.0 );
setEffRotateKey( spep_5 + 13, shuchusen4, 0 );
setEffRotateKey( spep_5 + 58, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 13, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 58, shuchusen4, 255 );

shuchusen5 = entryEffectLife( spep_5 + 121, 906, 34, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 121, shuchusen5, 34, 20 );
setEffMoveKey( spep_5 + 121, shuchusen5, -10, 0 , 0 );
setEffMoveKey( spep_5 + 155, shuchusen5, -10, 0 , 0 );
setEffScaleKey( spep_5 + 121, shuchusen5, 2.3, 2.0 );
setEffScaleKey( spep_5 + 155, shuchusen5, 2.3, 2.0 );
setEffRotateKey( spep_5 + 121, shuchusen5, 0 );
setEffRotateKey( spep_5 + 155, shuchusen5, 0 );
setEffAlphaKey( spep_5 + 121, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 155, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_5 -3 + 122,  10012, 26, 0x110, -1, 0, 55.9, 269.7 ); --ズオッ
setEffMoveKey( spep_5 -3 + 122, ctzuo, 55.9, 269.7 , 0 );
setEffMoveKey( spep_5 -3 + 124, ctzuo, 101.3, 316.6 , 0 );
setEffMoveKey( spep_5 -3 + 126, ctzuo, 95.6, 314.1 , 0 );
setEffMoveKey( spep_5 -3 + 128, ctzuo, 98.7, 320.4 , 0 );
setEffMoveKey( spep_5 -3 + 130, ctzuo, 92.9, 317.9 , 0 );
setEffMoveKey( spep_5 -3 + 132, ctzuo, 96, 324.2 , 0 );
setEffMoveKey( spep_5 -3 + 134, ctzuo, 90.3, 321.7 , 0 );
setEffMoveKey( spep_5 -3 + 136, ctzuo, 93.4, 328 , 0 );
setEffMoveKey( spep_5 -3 + 138, ctzuo, 87.7, 325.5 , 0 );
setEffMoveKey( spep_5 -3 + 140, ctzuo, 90.8, 331.8 , 0 );
setEffMoveKey( spep_5 -3 + 142, ctzuo, 85, 329.3 , 0 );
setEffMoveKey( spep_5 -3 + 144, ctzuo, 94.4, 338 , 0 );
setEffMoveKey( spep_5 -3 + 146, ctzuo, 94.4, 337.4 , 0 );
setEffMoveKey( spep_5 -3 + 148, ctzuo, 99.1, 341.4 , 0 );

setEffScaleKey( spep_5 -3 + 122, ctzuo, 1.216, 1.216 );
setEffScaleKey( spep_5 -3 + 124, ctzuo, 2.24, 2.24 );
setEffScaleKey( spep_5 -3 + 142, ctzuo, 2.24, 2.24 );
setEffScaleKey( spep_5 -3 + 144, ctzuo, 2.336, 2.336 );
setEffScaleKey( spep_5 -3 + 146, ctzuo, 2.464, 2.464 );
setEffScaleKey( spep_5 -3 + 148, ctzuo, 2.56, 2.56 );

setEffRotateKey( spep_5 -3 + 122, ctzuo, 30 );
setEffRotateKey( spep_5 -3 + 148, ctzuo, 30 );

setEffAlphaKey( spep_5 -3 + 122, ctzuo, 128 );
setEffAlphaKey( spep_5 -3 + 124, ctzuo, 255 );
setEffAlphaKey( spep_5 -3 + 142, ctzuo, 255 );
setEffAlphaKey( spep_5 -3 + 144, ctzuo, 170 );
setEffAlphaKey( spep_5 -3 + 146, ctzuo, 85 );
setEffAlphaKey( spep_5 -3 + 148, ctzuo, 0 );

-- ** 音 ** --
--息吸い込む1
SE032 = playSe( spep_5 + 16, 1175 );
setSeVolumeByWorkId( spep_5 + 16, SE032, 77 );
stopSe( spep_5 + 110, SE032, 10 );

--息吸い込む2
SE033 = playSe( spep_5 + 16, 1227 );
setSeVolumeByWorkId( spep_5 + 16, SE033, 78 );
stopSe( spep_5 + 110, SE033, 10 );

--息を吹く1
SE034 = playSe( spep_5 + 120, 1027 );
setSeVolumeByWorkId( spep_5 + 120, SE034, 88 );

--息を吹く2
SE035 = playSe( spep_5 + 120, 1258 );
setSeVolumeByWorkId( spep_5 + 120, SE035, 79 );
stopSe( spep_5 +142 + 22, SE035, 42 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 156, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 156;


------------------------------------------------------
-- ブレス街破壊(166F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --ブレス街破壊(ef_007)
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 166, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 166, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 166, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 166, finish_f, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6 + 0, 906, 166, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen6, 166, 20 );
setEffMoveKey( spep_6 + 0, shuchusen6, -20, -20 , 0 );
setEffMoveKey( spep_6 + 166, shuchusen6, -20, -20 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen6, 1.7, 2.0 );
setEffScaleKey( spep_6 + 166, shuchusen6, 1.7, 2.0 );
setEffRotateKey( spep_6 + 0, shuchusen6, 0 );
setEffRotateKey( spep_6 + 166, shuchusen6, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 166, shuchusen6, 255 );

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_6 + 0,  10014, 42, 0x100, -1, 0, 33.5, 109.5 );
setEffMoveKey( spep_6 + 0, ctzudodo, 33.5, 109.5 , 0 );
setEffMoveKey( spep_6 + 1, ctzudodo, 32.6, 171.5 , 0 );
setEffMoveKey( spep_6 + 2, ctzudodo, 23.9, 247.4 , 0 );
setEffMoveKey( spep_6 -3 + 6, ctzudodo, 29.6, 238.6 , 0 );
setEffMoveKey( spep_6 -3 + 8, ctzudodo, 23.7, 250.6 , 0 );
setEffMoveKey( spep_6 -3 + 10, ctzudodo, 29.4, 241.7 , 0 );
setEffMoveKey( spep_6 -3 + 12, ctzudodo, 23.4, 253.8 , 0 );
setEffMoveKey( spep_6 -3 + 14, ctzudodo, 29.2, 244.8 , 0 );
setEffMoveKey( spep_6 -3 + 16, ctzudodo, 23.2, 257 , 0 );
setEffMoveKey( spep_6 -3 + 18, ctzudodo, 29.1, 247.9 , 0 );
setEffMoveKey( spep_6 -3 + 20, ctzudodo, 23, 260.2 , 0 );
setEffMoveKey( spep_6 -3 + 22, ctzudodo, 28.9, 250.9 , 0 );
setEffMoveKey( spep_6 -3 + 24, ctzudodo, 22.7, 263.4 , 0 );
setEffMoveKey( spep_6 -3 + 26, ctzudodo, 28.7, 254 , 0 );
setEffMoveKey( spep_6 -3 + 28, ctzudodo, 22.5, 266.7 , 0 );
setEffMoveKey( spep_6 -3 + 30, ctzudodo, 28.6, 257.1 , 0 );
setEffMoveKey( spep_6 -3 + 32, ctzudodo, 22.2, 269.9 , 0 );
setEffMoveKey( spep_6 -3 + 34, ctzudodo, 28.4, 260.2 , 0 );
setEffMoveKey( spep_6 -3 + 36, ctzudodo, 22, 273.1 , 0 );
setEffMoveKey( spep_6 -3 + 38, ctzudodo, 28.2, 263.3 , 0 );
setEffMoveKey( spep_6 -3 + 40, ctzudodo, 8.1, 285.8 , 0 );
setEffMoveKey( spep_6 -3 + 42, ctzudodo, -5.7, 297 , 0 );
setEffMoveKey( spep_6 -3 + 45, ctzudodo, -5.7, 297 , 0 );

setEffScaleKey( spep_6 + 0, ctzudodo, 0.9, 1.17 );
setEffScaleKey( spep_6 + 1, ctzudodo, 1.74, 2.26 );
setEffScaleKey( spep_6 + 2, ctzudodo, 2.58, 3.34 );
setEffScaleKey( spep_6 -3 + 6, ctzudodo, 2.59, 3.36 );
setEffScaleKey( spep_6 -3 + 8, ctzudodo, 2.61, 3.38 );
setEffScaleKey( spep_6 -3 + 10, ctzudodo, 2.63, 3.41 );
setEffScaleKey( spep_6 -3 + 12, ctzudodo, 2.65, 3.43 );
setEffScaleKey( spep_6 -3 + 14, ctzudodo, 2.66, 3.45 );
setEffScaleKey( spep_6 -3 + 16, ctzudodo, 2.68, 3.47 );
setEffScaleKey( spep_6 -3 + 18, ctzudodo, 2.7, 3.49 );
setEffScaleKey( spep_6 -3 + 20, ctzudodo, 2.71, 3.52 );
setEffScaleKey( spep_6 -3 + 22, ctzudodo, 2.73, 3.54 );
setEffScaleKey( spep_6 -3 + 24, ctzudodo, 2.75, 3.56 );
setEffScaleKey( spep_6 -3 + 26, ctzudodo, 2.77, 3.58 );
setEffScaleKey( spep_6 -3 + 28, ctzudodo, 2.78, 3.61 );
setEffScaleKey( spep_6 -3 + 30, ctzudodo, 2.8, 3.63 );
setEffScaleKey( spep_6 -3 + 32, ctzudodo, 2.82, 3.65 );
setEffScaleKey( spep_6 -3 + 34, ctzudodo, 2.83, 3.67 );
setEffScaleKey( spep_6 -3 + 36, ctzudodo, 2.85, 3.69 );
setEffScaleKey( spep_6 -3 + 38, ctzudodo, 2.87, 3.72 );
setEffScaleKey( spep_6 -3 + 40, ctzudodo, 2.89, 3.75 );
setEffScaleKey( spep_6 -3 + 42, ctzudodo, 2.92, 3.79 );
setEffScaleKey( spep_6 -3 + 45, ctzudodo, 2.92, 3.79 );

setEffRotateKey( spep_6 + 0, ctzudodo, -69.1 );
setEffRotateKey( spep_6 + 42, ctzudodo, -69.1 );

setEffAlphaKey( spep_6 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_6 -3 + 38, ctzudodo, 255 );
setEffAlphaKey( spep_6 -3 + 40, ctzudodo, 128 );
setEffAlphaKey( spep_6 -3 + 42, ctzudodo, 0 );
setEffAlphaKey( spep_6 -3 + 45, ctzudodo, 0 );

-- ** 音 ** --
--地面連続爆発1
SE036 = playSe( spep_6 + 0, 1226 );
setSeVolumeByWorkId( spep_6 + 0, SE036, 70 );
stopSe( spep_6 + 30, SE036, 34 );

--地面連続爆発2
SE037 = playSe( spep_6 + 0, 1159 );
setSeVolumeByWorkId( spep_6 + 0, SE037, 83 );

--地面連続爆発3
SE038 = playSe( spep_6 + 14, 1188 );
setSeVolumeByWorkId( spep_6 + 14, SE038, 66 );

--地面連続爆発4
SE039 = playSe( spep_6 + 22, 1067 );
setSeVolumeByWorkId( spep_6 + 22, SE039, 79 );

--地面連続爆発5
SE040 = playSe( spep_6 + 30, 1023 );
setSeVolumeByWorkId( spep_6 + 30, SE040, 74 );

--地面連続爆発6
SE041 = playSe( spep_6 + 48, 1023 );
setSeVolumeByWorkId( spep_6 + 48, SE041, 86 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 166, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
--entryFade( spep_6 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 56 );
endPhase( spep_6 + 156 );


end