--1021650:トランクス(青年期)_バーニングアタック
--sp_effect_a2_00163
--sp2200

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
SP_01 = 157392; --トランクスとブルマ　クルマで接近  ef_001
SP_02 = 157393; --クルマがUターンして止まる ef_002
SP_03 = 157394; --トランクスが車から降りて飛ぶ    ef_003
SP_04 = 157395; --トランクスが構える ef_004
SP_05 = 157396; --気弾を飛ばす    ef_005
SP_06 = 157397; --気弾が敵に向かって飛んでいく：手前 ef_006_front
SP_07 = 157398; --気弾が敵に向かって飛んでいく：奥  ef_006_back
SP_08 = 157399; --爆発    ef_007
SP_09 = 157400; --クルマが爆心地から遠ざかる ef_008
SP_10 = 157401; --フィニッシュ    ef_009

--敵側
SP_05r = 157413;    --気弾を飛ばす    ef_005ｒ

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
-- トランクスとブルマ　クルマで接近(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 116, 0x100, -1, 0, 0, 0 );  --トランクスとブルマ　クルマで接近    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 116 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 0 );

spep_x = spep_0 + 16;
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

-- ** 音 ** --
--エアカー走ってくる
SE002 = playSe( spep_0 + 0, 1229 );
stopSe( spep_0 +116 + 32, SE002, 14 );

--エアカー走ってくる
SE003 = playSe( spep_0 + 0, 1326,"",0.6 );
stopSe( spep_0 +116 + 46, SE003, 16 );

--エアカー走ってくる
SE004 = playSe( spep_0 + 0, 1327,"",0.6 );
stopSe( spep_0 +116 + 46, SE004, 16 );

--エアカー走ってくる
SE005 = playSe( spep_0 + 0, 1182 );
setSeVolumeByWorkId( spep_0 + 0, SE005, 70 );

--顔カットイン
SE006 = playSe( spep_0 + 20, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 106, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


------------------------------------------------------
-- クルマがUターンして止まる(86F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
uturn = entryEffectLife( spep_1 + 0, SP_02, 86, 0x100, -1, 0, 0, 0 );  --クルマがUターンして止まる  ef_002
setEffMoveKey( spep_1 + 0, uturn, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, uturn, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, uturn, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, uturn, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, uturn, 0 );
setEffRotateKey( spep_1 + 86, uturn, 0 );
setEffAlphaKey( spep_1 + 0, uturn, 255 );
setEffAlphaKey( spep_1 + 86 -1, uturn, 255 );
setEffAlphaKey( spep_1 + 86, uturn, 0 );

-- ** 音 ** --
--ブレーキ
SE007 = playSe( spep_1 + 18, 1323 );
stopSe( spep_1 + 36, SE007, 8 );

--アイドリング
SE001 = playSe( spep_1 + 30, 1326 );
setSeVolumeByWorkId( spep_1 + 30, SE001, 16 );
setSeVolumeByWorkId( spep_1 + 32, SE001, 26 );
setSeVolumeByWorkId( spep_1 + 34, SE001, 36 );
setSeVolumeByWorkId( spep_1 + 36, SE001, 46 );
setSeVolumeByWorkId( spep_1 + 38, SE001, 56 );
setSeVolumeByWorkId( spep_1 + 40, SE001, 66 );
stopSe( spep_1 +86 + 2, SE001, 12 );
setStartTimeMs( SE001,  3900 )
setPitch( spep_1 + 30, SE001, -800 );
setTimeStretch( SE001, 0.47, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );
-- ** 音 ** --
--playSe( spep_2 + 0, SE_05 );

--トランクス飛んでくる
SE009 = playSe( spep_2 + 88, 1182 );

--トランクス飛んでくる
SE010 = playSe( spep_2 + 88, 1117 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- トランクスが車から降りて飛ぶ(116F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
tjump = entryEffectLife( spep_3 + 0, SP_03, 116, 0x100, -1, 0, 0, 0 );  --トランクスが車から降りて飛ぶ    ef_003
setEffMoveKey( spep_3 + 0, tjump, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, tjump, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tjump, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, tjump, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tjump, 0 );
setEffRotateKey( spep_3 + 116, tjump, 0 );
setEffAlphaKey( spep_3 + 0, tjump, 255 );
setEffAlphaKey( spep_3 + 116 -1, tjump, 255 );
setEffAlphaKey( spep_3 + 116, tjump, 0 );

-- ** 音 ** --
--トランクス飛んでくる
SE011 = playSe( spep_3 + 4, 1314 );
stopSe( spep_3 + 90, SE011, 46 );

--トランクス飛んでくる
SE012 = playSe( spep_3 + 30, 9 );

--腕前に出す
SE013 = playSe( spep_3 + 114, 1189 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 116;


------------------------------------------------------
-- トランクスが構える(56F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_4 + 0, SP_04, 56, 0x100, -1, 0, 0, 0 );  --トランクスが構える   ef_004
setEffMoveKey( spep_4 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, tame, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, tame, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame, 0 );
setEffRotateKey( spep_4 + 56, tame, 0 );
setEffAlphaKey( spep_4 + 0, tame, 255 );
setEffAlphaKey( spep_4 + 56 -1, tame, 255 );
setEffAlphaKey( spep_4 + 56, tame, 0 );

-- ** 音 ** --
--腕前に出す
SE014 = playSe( spep_4 + 0, 1048 );

--気弾溜め
SE015 = playSe( spep_4 + 50, 1274,"",0.6 );
setSeVolumeByWorkId( spep_4 + 50, SE015, 25 );
setSeVolumeByWorkId( spep_4 + 52, SE015, 50 );
setSeVolumeByWorkId( spep_4 + 54, SE015, 75 );
setSeVolumeByWorkId( spep_4 + 56, SE015, 100 );
setStartTimeMs( SE015,  267 );

--気弾溜め
SE016 = playSe( spep_4 + 50, 45,"",0.6 );

--気弾溜め
SE017 = playSe( spep_4 + 50, 1276,"",0.6 );
stopSe( spep_4 +56 + 14, SE017, 10 );
setPitch( spep_4 + 2, SE017, -200 );
setTimeStretch( SE017, 0.87, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


------------------------------------------------------
-- 気弾を飛ばす(56F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
kidan_f = entryEffectLife( spep_5 + 0, SP_05, 56, 0x100, -1, 0, 0, 0 );  --気弾を飛ばす   ef_005
setEffMoveKey( spep_5 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kidan_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, kidan_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kidan_f, 0 );
setEffRotateKey( spep_5 + 56, kidan_f, 0 );
setEffAlphaKey( spep_5 + 0, kidan_f, 255 );
setEffAlphaKey( spep_5 + 56 -1, kidan_f, 255 );
setEffAlphaKey( spep_5 + 56, kidan_f, 0 );

-- ** 音 ** --
--気弾発射
SE018 = playSe( spep_5 + 10, 1027 );

--気弾発射
SE019 = playSe( spep_5 + 10, 1022 );
stopSe( spep_5 +56 +54, SE019, 10 );

--気弾発射
SE020 = playSe( spep_5 + 10, 1177 );
stopSe( spep_5 +56 +54, SE020, 10 );

--気弾飛んでくる
SE021 = playSe( spep_5 + 30, 1215,"",0.6 );
stopSe( spep_5 +56 +54, SE021, 6 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;


------------------------------------------------------
-- 気弾が敵に向かって飛んでいく(56F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_6 + 0, SP_06, 56, 0x100, -1, 0, 0, 0 );  --気弾が敵に向かって飛んでいく：手前 ef_006_front
setEffMoveKey( spep_6 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, shot_f, 0 );
setEffRotateKey( spep_6 + 56, shot_f, 0 );
setEffAlphaKey( spep_6 + 0, shot_f, 255 );
setEffAlphaKey( spep_6 + 56 -1, shot_f, 255 );
setEffAlphaKey( spep_6 + 56, shot_f, 0 );

shot_b = entryEffectLife( spep_6 + 0, SP_07, 56, 0x80, -1, 0, 0, 0 );  --気弾が敵に向かって飛んでいく：奥   ef_006_back
setEffMoveKey( spep_6 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, shot_b, 0 );
setEffRotateKey( spep_6 + 56, shot_b, 0 );
setEffAlphaKey( spep_6 + 0, shot_b, 255 );
setEffAlphaKey( spep_6 + 56 -1, shot_b, 255 );
setEffAlphaKey( spep_6 + 56, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 104 );

setMoveKey( spep_6 + 0, 1, 172.3, -90.4 , 0 );
setMoveKey( spep_6 + 1, 1, 172.4, -90.6 , 0 );
setMoveKey( spep_6 + 2, 1, 172.5, -90.9 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 172.8, -91.4 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 173.1, -92.1 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 173.5, -93.1 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 174.1, -94.4 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 174.7, -95.9 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 175.5, -97.6 , 0 );

setScaleKey( spep_6 + 0, 1, 1.35, 1.35 );
setScaleKey( spep_6 + 2, 1, 1.35, 1.35 );
setScaleKey( spep_6 -3 + 6, 1, 1.36, 1.36 );
setScaleKey( spep_6 -3 + 8, 1, 1.36, 1.36 );
setScaleKey( spep_6 -3 + 10, 1, 1.37, 1.37 );
setScaleKey( spep_6 -3 + 12, 1, 1.37, 1.37 );
setScaleKey( spep_6 -3 + 14, 1, 1.38, 1.38 );
setScaleKey( spep_6 -3 + 16, 1, 1.39, 1.39 );

setRotateKey( spep_6 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_6 + 14 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);

    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 175.5, -97.6 , 0 );
    setMoveKey( SP_dodge + 2, 1, 176.3, -99.6 , 0 );
    setMoveKey( SP_dodge + 4, 1, 177.2, -101.9 , 0 );
    setMoveKey( SP_dodge + 6, 1, 178.3, -104.4 , 0 );
    setMoveKey( SP_dodge + 8, 1, 179.4, -107.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 180.7, -110.2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.39, 1.39 );
    setScaleKey( SP_dodge + 2, 1, 1.41, 1.41 );
    setScaleKey( SP_dodge + 4, 1, 1.42, 1.42 );
    setScaleKey( SP_dodge + 6, 1, 1.44, 1.44 );
    setScaleKey( SP_dodge + 8, 1, 1.45, 1.45 );
    setScaleKey( SP_dodge + 10, 1, 1.47, 1.47 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    

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
setDisp( spep_6 -3 + 59, 1, 0 );

setBlendColor( spep_6 -3 + 32, 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_6 -3 + 34, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_6 -3 + 36, 1, 3, 0, 0, 0, 0.25 );
setBlendColor( spep_6 -3 + 38, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_6 -3 + 40, 1, 3, 0, 0, 0, 0.35 );
setBlendColor( spep_6 -3 + 42, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_6 -3 + 44, 1, 3, 0, 0, 0, 0.45 );
setBlendColor( spep_6 -3 + 46, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_6 -3 + 48, 1, 3, 0, 0, 0, 0.55 );
setBlendColor( spep_6 -3 + 50, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_6 -3 + 52, 1, 3, 0, 0, 0, 0.65 );
setBlendColor( spep_6 -3 + 54, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_6 -3 + 56, 1, 3, 0, 0, 0, 0.75 );
setBlendColor( spep_6 -3 + 58, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_6 -3 + 59, 1, 3, 0, 0, 0, 0.0 );

setMoveKey( spep_6 -3 + 18, 1, 176.3, -99.6 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 177.2, -101.9 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 178.3, -104.4 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 179.4, -107.1 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 180.7, -110.2 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 182, -113.5 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 183.5, -117.1 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 185.1, -121 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 186.8, -125.2 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 188.6, -129.8 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 190.5, -134.6 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 192.5, -139.9 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 194.7, -145.5 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 197, -151.4 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 199.4, -157.8 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 206.6, -160 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 204.5, -172.1 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 210.4, -184.5 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 208.7, -189.7 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 212.8, -198.2 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 217.2, -207.7 , 0 );
setMoveKey( spep_6 -3 + 59, 1, 217.2, -207.7 , 0 );

setScaleKey( spep_6 -3 + 18, 1, 1.41, 1.41 );
setScaleKey( spep_6 -3 + 20, 1, 1.42, 1.42 );
setScaleKey( spep_6 -3 + 22, 1, 1.44, 1.44 );
setScaleKey( spep_6 -3 + 24, 1, 1.45, 1.45 );
setScaleKey( spep_6 -3 + 26, 1, 1.47, 1.47 );
setScaleKey( spep_6 -3 + 28, 1, 1.49, 1.49 );
setScaleKey( spep_6 -3 + 30, 1, 1.51, 1.51 );
setScaleKey( spep_6 -3 + 32, 1, 1.54, 1.54 );
setScaleKey( spep_6 -3 + 34, 1, 1.56, 1.56 );
setScaleKey( spep_6 -3 + 36, 1, 1.59, 1.59 );
setScaleKey( spep_6 -3 + 38, 1, 1.62, 1.62 );
setScaleKey( spep_6 -3 + 40, 1, 1.65, 1.65 );
setScaleKey( spep_6 -3 + 42, 1, 1.69, 1.69 );
setScaleKey( spep_6 -3 + 44, 1, 1.72, 1.72 );
setScaleKey( spep_6 -3 + 46, 1, 1.76, 1.76 );
setScaleKey( spep_6 -3 + 48, 1, 1.8, 1.8 );
setScaleKey( spep_6 -3 + 50, 1, 1.85, 1.85 );
setScaleKey( spep_6 -3 + 52, 1, 1.89, 1.89 );
setScaleKey( spep_6 -3 + 54, 1, 1.94, 1.94 );
setScaleKey( spep_6 -3 + 56, 1, 2, 2 );
setScaleKey( spep_6 -3 + 58, 1, 2.06, 2.06 );
setScaleKey( spep_6 -3 + 59, 1, 2.06, 2.06 );

setRotateKey( spep_6 -3 + 59, 1, 0 );

-- ** 音 ** --
--気弾飛んでくる
SE022 = playSe( spep_6 + 0, 1179,"",0.6 );

--爆発
SE023 = playSe( spep_6 + 50, 1023 );

--爆発
SE024 = playSe( spep_6 + 50, 1159 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;


------------------------------------------------------
-- 爆発(76F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
hit = entryEffectLife( spep_7 + 0, SP_08, 76, 0x100, -1, 0, 0, 0 );  --爆発   ef_007
setEffMoveKey( spep_7 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_7 + 76, hit, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_7 + 76, hit, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hit, 0 );
setEffRotateKey( spep_7 + 76, hit, 0 );
setEffAlphaKey( spep_7 + 0, hit, 255 );
setEffAlphaKey( spep_7 + 76 -1, hit, 255 );
setEffAlphaKey( spep_7 + 76, hit, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_7 + 5, 906, 127, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 5, shuchusen1, 56, 20 );
setEffMoveKey( spep_7 + 5, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_7 +76 + 56, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_7 + 5, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_7 +76 + 56, shuchusen1, 1.5, 1.5 );
setEffRotateKey( spep_7 + 5, shuchusen1, 0 );
setEffRotateKey( spep_7 +76 + 56, shuchusen1, 0 );
setEffAlphaKey( spep_7 + 5, shuchusen1, 255 );
setEffAlphaKey( spep_7 +76 + 56 -1, shuchusen1, 255 );
setEffAlphaKey( spep_7 +76 + 56, shuchusen1, 0 );


-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 76;


------------------------------------------------------
-- クルマが爆心地から遠ざかる(56F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
escape = entryEffectLife( spep_8 + 0, SP_09, 56, 0x80, -1, 0, 0, 0 );  --クルマが爆心地から遠ざかる  ef_008
setEffMoveKey( spep_8 + 0, escape, 0, 0 , 0 );
setEffMoveKey( spep_8 + 56, escape, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, escape, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, escape, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, escape, 0 );
setEffRotateKey( spep_8 + 56, escape, 0 );
setEffAlphaKey( spep_8 + 0, escape, 255 );
setEffAlphaKey( spep_8 + 56 -1, escape, 255 );
setEffAlphaKey( spep_8 + 56, escape, 0 );

-- ** 音 ** --
--エアカーで去る
SE025 = playSe( spep_8 +0, 44 );

--エアカーで去る
SE026 = playSe( spep_8 + 0, 1326,"",0.6 );

--エアカーで去る
SE027 = playSe( spep_8 + 0, 1327,"",0.6 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 56;


------------------------------------------------------
-- フィニッシュ(116F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_9 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --フィニッシュ  ef_009
setEffMoveKey( spep_9 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 116, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 116, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_f, 0 );
setEffRotateKey( spep_9 + 116, finish_f, 0 );
setEffAlphaKey( spep_9 + 0, finish_f, 255 );
setEffAlphaKey( spep_9 + 116, finish_f, 255 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 6 );
endPhase( spep_9 + 106 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- トランクスとブルマ　クルマで接近(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 116, 0x100, -1, 0, 0, 0 );  --トランクスとブルマ　クルマで接近   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 116 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 0 );

spep_x = spep_0 + 16;
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
--エアカー走ってくる
SE002 = playSe( spep_0 + 0, 1229 );
stopSe( spep_0 +116 + 32, SE002, 14 );

--エアカー走ってくる
SE003 = playSe( spep_0 + 0, 1326,"",0.6 );
stopSe( spep_0 +116 + 46, SE003, 16 );

--エアカー走ってくる
SE004 = playSe( spep_0 + 0, 1327,"",0.6 );
stopSe( spep_0 +116 + 46, SE004, 16 );

--エアカー走ってくる
SE005 = playSe( spep_0 + 0, 1182 );
setSeVolumeByWorkId( spep_0 + 0, SE005, 70 );

--顔カットイン
SE006 = playSe( spep_0 + 20, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 106, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


------------------------------------------------------
-- クルマがUターンして止まる(86F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
uturn = entryEffectLife( spep_1 + 0, SP_02, 86, 0x100, -1, 0, 0, 0 );  --クルマがUターンして止まる  ef_002
setEffMoveKey( spep_1 + 0, uturn, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, uturn, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, uturn, -1.0, 1.0 );
setEffScaleKey( spep_1 + 86, uturn, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, uturn, 0 );
setEffRotateKey( spep_1 + 86, uturn, 0 );
setEffAlphaKey( spep_1 + 0, uturn, 255 );
setEffAlphaKey( spep_1 + 86 -1, uturn, 255 );
setEffAlphaKey( spep_1 + 86, uturn, 0 );

-- ** 音 ** --
--ブレーキ
SE007 = playSe( spep_1 + 18, 1323 );
stopSe( spep_1 + 36, SE007, 8 );

--アイドリング
SE001 = playSe( spep_1 + 30, 1326 );
setSeVolumeByWorkId( spep_1 + 30, SE001, 16 );
setSeVolumeByWorkId( spep_1 + 32, SE001, 26 );
setSeVolumeByWorkId( spep_1 + 34, SE001, 36 );
setSeVolumeByWorkId( spep_1 + 36, SE001, 46 );
setSeVolumeByWorkId( spep_1 + 38, SE001, 56 );
setSeVolumeByWorkId( spep_1 + 40, SE001, 66 );
stopSe( spep_1 +86 + 2, SE001, 12 );
setStartTimeMs( SE001,  3900 )
setPitch( spep_1 + 30, SE001, -800 );
setTimeStretch( SE001, 0.47, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--トランクス飛んでくる
SE009 = playSe( spep_2 + 88, 1182 );

--トランクス飛んでくる
SE010 = playSe( spep_2 + 88, 1117 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- トランクスが車から降りて飛ぶ(116F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
tjump = entryEffectLife( spep_3 + 0, SP_03, 116, 0x100, -1, 0, 0, 0 );  --トランクスが車から降りて飛ぶ    ef_003
setEffMoveKey( spep_3 + 0, tjump, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, tjump, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tjump, -1.0, 1.0 );
setEffScaleKey( spep_3 + 116, tjump, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tjump, 0 );
setEffRotateKey( spep_3 + 116, tjump, 0 );
setEffAlphaKey( spep_3 + 0, tjump, 255 );
setEffAlphaKey( spep_3 + 116 -1, tjump, 255 );
setEffAlphaKey( spep_3 + 116, tjump, 0 );

-- ** 音 ** --
--トランクス飛んでくる
SE011 = playSe( spep_3 + 4, 1314 );
stopSe( spep_3 + 90, SE011, 46 );

--トランクス飛んでくる
SE012 = playSe( spep_3 + 30, 9 );

--腕前に出す
SE013 = playSe( spep_3 + 114, 1189 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 116;


------------------------------------------------------
-- トランクスが構える(56F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_4 + 0, SP_04, 56, 0x100, -1, 0, 0, 0 );  --トランクスが構える   ef_004
setEffMoveKey( spep_4 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, tame, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_4 + 56, tame, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame, 0 );
setEffRotateKey( spep_4 + 56, tame, 0 );
setEffAlphaKey( spep_4 + 0, tame, 255 );
setEffAlphaKey( spep_4 + 56 -1, tame, 255 );
setEffAlphaKey( spep_4 + 56, tame, 0 );

-- ** 音 ** --
--腕前に出す
SE014 = playSe( spep_4 + 0, 1048 );

--気弾溜め
SE015 = playSe( spep_4 + 50, 1274,"",0.6 );
setSeVolumeByWorkId( spep_4 + 50, SE015, 25 );
setSeVolumeByWorkId( spep_4 + 52, SE015, 50 );
setSeVolumeByWorkId( spep_4 + 54, SE015, 75 );
setSeVolumeByWorkId( spep_4 + 56, SE015, 100 );
setStartTimeMs( SE015,  267 );

--気弾溜め
SE016 = playSe( spep_4 + 50, 45,"",0.6 );

--気弾溜め
SE017 = playSe( spep_4 + 50, 1276,"",0.6 );
stopSe( spep_4 +56 + 14, SE017, 10 );
setPitch( spep_4 + 2, SE017, -200 );
setTimeStretch( SE017, 0.87, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


------------------------------------------------------
-- 気弾を飛ばす(56F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
kidan_f = entryEffectLife( spep_5 + 0, SP_05r, 56, 0x100, -1, 0, 0, 0 );  --気弾を飛ばす  ef_005
setEffMoveKey( spep_5 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, kidan_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 56, kidan_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kidan_f, 0 );
setEffRotateKey( spep_5 + 56, kidan_f, 0 );
setEffAlphaKey( spep_5 + 0, kidan_f, 255 );
setEffAlphaKey( spep_5 + 56 -1, kidan_f, 255 );
setEffAlphaKey( spep_5 + 56, kidan_f, 0 );

-- ** 音 ** --
--気弾発射
SE018 = playSe( spep_5 + 10, 1027 );

--気弾発射
SE019 = playSe( spep_5 + 10, 1022 );
stopSe( spep_5 +56 +54, SE019, 10 );

--気弾発射
SE020 = playSe( spep_5 + 10, 1177 );
stopSe( spep_5 +56 +54, SE020, 10 );

--気弾飛んでくる
SE021 = playSe( spep_5 + 30, 1215,"",0.6 );
stopSe( spep_5 +56 +54, SE021, 6 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;


------------------------------------------------------
-- 気弾が敵に向かって飛んでいく(56F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_6 + 0, SP_06, 56, 0x100, -1, 0, 0, 0 );  --気弾が敵に向かって飛んでいく：手前 ef_006_front
setEffMoveKey( spep_6 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, shot_f, 0 );
setEffRotateKey( spep_6 + 56, shot_f, 0 );
setEffAlphaKey( spep_6 + 0, shot_f, 255 );
setEffAlphaKey( spep_6 + 56 -1, shot_f, 255 );
setEffAlphaKey( spep_6 + 56, shot_f, 0 );

shot_b = entryEffectLife( spep_6 + 0, SP_07, 56, 0x80, -1, 0, 0, 0 );  --気弾が敵に向かって飛んでいく：奥   ef_006_back
setEffMoveKey( spep_6 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, shot_b, 0 );
setEffRotateKey( spep_6 + 56, shot_b, 0 );
setEffAlphaKey( spep_6 + 0, shot_b, 255 );
setEffAlphaKey( spep_6 + 56 -1, shot_b, 255 );
setEffAlphaKey( spep_6 + 56, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 104 );

setMoveKey( spep_6 + 0, 1, 172.3, -90.4 , 0 );
setMoveKey( spep_6 + 1, 1, 172.4, -90.6 , 0 );
setMoveKey( spep_6 + 2, 1, 172.5, -90.9 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 172.8, -91.4 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 173.1, -92.1 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 173.5, -93.1 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 174.1, -94.4 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 174.7, -95.9 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 175.5, -97.6 , 0 );

setScaleKey( spep_6 + 0, 1, 1.35, 1.35 );
setScaleKey( spep_6 + 2, 1, 1.35, 1.35 );
setScaleKey( spep_6 -3 + 6, 1, 1.36, 1.36 );
setScaleKey( spep_6 -3 + 8, 1, 1.36, 1.36 );
setScaleKey( spep_6 -3 + 10, 1, 1.37, 1.37 );
setScaleKey( spep_6 -3 + 12, 1, 1.37, 1.37 );
setScaleKey( spep_6 -3 + 14, 1, 1.38, 1.38 );
setScaleKey( spep_6 -3 + 16, 1, 1.39, 1.39 );

setRotateKey( spep_6 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_6 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 175.5, -97.6 , 0 );
    setMoveKey( SP_dodge + 2, 1, 176.3, -99.6 , 0 );
    setMoveKey( SP_dodge + 4, 1, 177.2, -101.9 , 0 );
    setMoveKey( SP_dodge + 6, 1, 178.3, -104.4 , 0 );
    setMoveKey( SP_dodge + 8, 1, 179.4, -107.1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 180.7, -110.2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.39, 1.39 );
    setScaleKey( SP_dodge + 2, 1, 1.41, 1.41 );
    setScaleKey( SP_dodge + 4, 1, 1.42, 1.42 );
    setScaleKey( SP_dodge + 6, 1, 1.44, 1.44 );
    setScaleKey( SP_dodge + 8, 1, 1.45, 1.45 );
    setScaleKey( SP_dodge + 10, 1, 1.47, 1.47 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
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
setDisp( spep_6 -3 + 59, 1, 0 );

setBlendColor( spep_6 -3 + 32, 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_6 -3 + 34, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_6 -3 + 36, 1, 3, 0, 0, 0, 0.25 );
setBlendColor( spep_6 -3 + 38, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_6 -3 + 40, 1, 3, 0, 0, 0, 0.35 );
setBlendColor( spep_6 -3 + 42, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_6 -3 + 44, 1, 3, 0, 0, 0, 0.45 );
setBlendColor( spep_6 -3 + 46, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_6 -3 + 48, 1, 3, 0, 0, 0, 0.55 );
setBlendColor( spep_6 -3 + 50, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_6 -3 + 52, 1, 3, 0, 0, 0, 0.65 );
setBlendColor( spep_6 -3 + 54, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_6 -3 + 56, 1, 3, 0, 0, 0, 0.75 );
setBlendColor( spep_6 -3 + 58, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_6 -3 + 59, 1, 3, 0, 0, 0, 0.0 );

setMoveKey( spep_6 -3 + 18, 1, 176.3, -99.6 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 177.2, -101.9 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 178.3, -104.4 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 179.4, -107.1 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 180.7, -110.2 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 182, -113.5 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 183.5, -117.1 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 185.1, -121 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 186.8, -125.2 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 188.6, -129.8 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 190.5, -134.6 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 192.5, -139.9 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 194.7, -145.5 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 197, -151.4 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 199.4, -157.8 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 206.6, -160 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 204.5, -172.1 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 210.4, -184.5 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 208.7, -189.7 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 212.8, -198.2 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 217.2, -207.7 , 0 );
setMoveKey( spep_6 -3 + 59, 1, 217.2, -207.7 , 0 );

setScaleKey( spep_6 -3 + 18, 1, 1.41, 1.41 );
setScaleKey( spep_6 -3 + 20, 1, 1.42, 1.42 );
setScaleKey( spep_6 -3 + 22, 1, 1.44, 1.44 );
setScaleKey( spep_6 -3 + 24, 1, 1.45, 1.45 );
setScaleKey( spep_6 -3 + 26, 1, 1.47, 1.47 );
setScaleKey( spep_6 -3 + 28, 1, 1.49, 1.49 );
setScaleKey( spep_6 -3 + 30, 1, 1.51, 1.51 );
setScaleKey( spep_6 -3 + 32, 1, 1.54, 1.54 );
setScaleKey( spep_6 -3 + 34, 1, 1.56, 1.56 );
setScaleKey( spep_6 -3 + 36, 1, 1.59, 1.59 );
setScaleKey( spep_6 -3 + 38, 1, 1.62, 1.62 );
setScaleKey( spep_6 -3 + 40, 1, 1.65, 1.65 );
setScaleKey( spep_6 -3 + 42, 1, 1.69, 1.69 );
setScaleKey( spep_6 -3 + 44, 1, 1.72, 1.72 );
setScaleKey( spep_6 -3 + 46, 1, 1.76, 1.76 );
setScaleKey( spep_6 -3 + 48, 1, 1.8, 1.8 );
setScaleKey( spep_6 -3 + 50, 1, 1.85, 1.85 );
setScaleKey( spep_6 -3 + 52, 1, 1.89, 1.89 );
setScaleKey( spep_6 -3 + 54, 1, 1.94, 1.94 );
setScaleKey( spep_6 -3 + 56, 1, 2, 2 );
setScaleKey( spep_6 -3 + 58, 1, 2.06, 2.06 );
setScaleKey( spep_6 -3 + 59, 1, 2.06, 2.06 );

setRotateKey( spep_6 -3 + 59, 1, 0 );

-- ** 音 ** --
--気弾飛んでくる
SE022 = playSe( spep_6 + 0, 1179,"",0.6 );

--爆発
SE023 = playSe( spep_6 + 50, 1023 );

--爆発
SE024 = playSe( spep_6 + 50, 1159 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;


------------------------------------------------------
-- 爆発(76F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
hit = entryEffectLife( spep_7 + 0, SP_08, 76, 0x100, -1, 0, 0, 0 );  --爆発   ef_007
setEffMoveKey( spep_7 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_7 + 76, hit, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, hit, -1.0, 1.0 );
setEffScaleKey( spep_7 + 76, hit, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hit, 0 );
setEffRotateKey( spep_7 + 76, hit, 0 );
setEffAlphaKey( spep_7 + 0, hit, 255 );
setEffAlphaKey( spep_7 + 76 -1, hit, 255 );
setEffAlphaKey( spep_7 + 76, hit, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_7 + 5, 906, 127, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 5, shuchusen1, 56, 20 );
setEffMoveKey( spep_7 + 5, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_7 +76 + 56, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_7 + 5, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_7 +76 + 56, shuchusen1, 1.5, 1.5 );
setEffRotateKey( spep_7 + 5, shuchusen1, 0 );
setEffRotateKey( spep_7 +76 + 56, shuchusen1, 0 );
setEffAlphaKey( spep_7 + 5, shuchusen1, 255 );
setEffAlphaKey( spep_7 +76 + 56 -1, shuchusen1, 255 );
setEffAlphaKey( spep_7 +76 + 56, shuchusen1, 0 );


-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 76;


------------------------------------------------------
-- クルマが爆心地から遠ざかる(56F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
escape = entryEffectLife( spep_8 + 0, SP_09, 56, 0x80, -1, 0, 0, 0 );  --クルマが爆心地から遠ざかる  ef_008
setEffMoveKey( spep_8 + 0, escape, 0, 0 , 0 );
setEffMoveKey( spep_8 + 56, escape, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, escape, -1.0, 1.0 );
setEffScaleKey( spep_8 + 56, escape, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, escape, 0 );
setEffRotateKey( spep_8 + 56, escape, 0 );
setEffAlphaKey( spep_8 + 0, escape, 255 );
setEffAlphaKey( spep_8 + 56 -1, escape, 255 );
setEffAlphaKey( spep_8 + 56, escape, 0 );

-- ** 音 ** --
--エアカーで去る
SE025 = playSe( spep_8 +0, 44 );

--エアカーで去る
SE026 = playSe( spep_8 + 0, 1326,"",0.6 );

--エアカーで去る
SE027 = playSe( spep_8 + 0, 1327,"",0.6 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 56;


------------------------------------------------------
-- フィニッシュ(116F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_9 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --フィニッシュ  ef_009
setEffMoveKey( spep_9 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 116, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_9 + 116, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_f, 0 );
setEffRotateKey( spep_9 + 116, finish_f, 0 );
setEffAlphaKey( spep_9 + 0, finish_f, 255 );
setEffAlphaKey( spep_9 + 116, finish_f, 255 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 6 );
endPhase( spep_9 + 106 );

end