--1026130：孫悟飯(幼年期)_奇跡全開ウルトラZパワー(ユニット)
--sp_effect_a7_00058
--全体攻撃あり

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
SP_01 = 161473;	--悟飯ダッシュからジャンプ	ef_001
SP_02 = 161474;	--悟飯ジャンプから対峙	ef_002a
SP_03 = 161475;	--悟飯ジャンプから対峙	ef_002b
SP_04 = 161476;	--悟飯気弾を放つ	ef_003
SP_05 = 161477;	--着弾からクリリン攻撃	ef_004a
SP_06 = 161478;	--着弾からクリリン攻撃	ef_004b
SP_07 = 161479;	--天津飯とヤムチャの攻撃	ef_005
SP_08 = 161480;	--３個の気弾が着弾	ef_006a
SP_09 = 161481;	--３個の気弾が着弾	ef_006b
SP_10 = 161482;	--悟空衝撃波を放つ	ef_007
SP_11 = 161483;	--敵衝撃波に包まれる	ef_008a
SP_12 = 161484;	--敵衝撃波に包まれる	ef_008b

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

--[[
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
]]

ENABLE_AUTO_TIME_STRETCH(0.9);

adjustAttackerLabel( 0, 205);

kame_flag = 0x00;

if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 悟飯ダッシュからジャンプ	(88F)
------------------------------------------------------

spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 90, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 90, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 90, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 90 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 90 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 90, first_f, 0 );

spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- ** 敵キャラクター ** --
--テンプレ構文のもの
changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);

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

-- ** 音 ** --
--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--顔カットイン
--SE001 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);

--走ってくる
SE002 = playSeVer2( spep_0 + 10, 1377, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 24, 1108, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 36, 1108, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 48, 1108, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 60, 1108, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 72, 1108, "", 0, 0, 0, -1);

--飛び上がる
SE008 = playSeVer2( spep_0 + 74, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE008, 65 );
SE009 = playSeVer2( spep_0 + 74, 1207, "",spep_0 + 154, 0, 16, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 82 + 2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 90;


------------------------------------------------------
-- 悟飯ジャンプから対峙(48F)
------------------------------------------------------
-- ** エフェクト等 ** --
tobu_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --ef_002a
setEffMoveKey( spep_1 + 0, tobu_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 48, tobu_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tobu_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 48, tobu_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tobu_f, 0 );
setEffRotateKey( spep_1 + 48, tobu_f, 0 );
setEffAlphaKey( spep_1 + 0, tobu_f, 255 );
setEffAlphaKey( spep_1 + 48 -2, tobu_f, 255 );
setEffAlphaKey( spep_1 + 48 -1, tobu_f, 255 );
setEffAlphaKey( spep_1 + 48, tobu_f, 0 );

tobu_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --ef_002b
setEffMoveKey( spep_1 + 0, tobu_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 48, tobu_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tobu_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 48, tobu_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tobu_b, 0 );
setEffRotateKey( spep_1 + 48, tobu_b, 0 );
setEffAlphaKey( spep_1 + 0, tobu_b, 255 );
setEffAlphaKey( spep_1 + 48 -2, tobu_b, 255 );
setEffAlphaKey( spep_1 + 48 -1, tobu_b, 255 );
setEffAlphaKey( spep_1 + 48, tobu_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 48, 1, 0 );
changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 244.9, 189 , 0 );
setMoveKey( spep_1 + 1, 1, 239.5, 97.7 , 0 );
setMoveKey( spep_1 + 2, 1, 239.5, 97.7 , 0 );
setMoveKey( spep_1 + 3, 1, 237.1, 56.8 , 0 );
setMoveKey( spep_1 + 4, 1, 237.1, 56.8 , 0 );
setMoveKey( spep_1 + 5, 1, 235.4, 26.8 , 0 );
setMoveKey( spep_1 + 6, 1, 235.4, 26.8 , 0 );
setMoveKey( spep_1 + 7, 1, 233.9, 2.5 , 0 );
setMoveKey( spep_1 + 8, 1, 233.9, 2.5 , 0 );
setMoveKey( spep_1 + 9, 1, 232.7, -17.9 , 0 );
setMoveKey( spep_1 + 10, 1, 232.7, -17.9 , 0 );
setMoveKey( spep_1 + 11, 1, 231.7, -35.6 , 0 );
setMoveKey( spep_1 + 12, 1, 231.7, -35.6 , 0 );
setMoveKey( spep_1 + 13, 1, 230.8, -51 , 0 );
setMoveKey( spep_1 + 14, 1, 230.8, -51 , 0 );
setMoveKey( spep_1 + 15, 1, 230, -64.7 , 0 );
setMoveKey( spep_1 + 16, 1, 230, -64.7 , 0 );
setMoveKey( spep_1 + 17, 1, 229.3, -76.9 , 0 );
setMoveKey( spep_1 + 18, 1, 229.3, -76.9 , 0 );
setMoveKey( spep_1 + 19, 1, 228.6, -87.7 , 0 );
setMoveKey( spep_1 + 20, 1, 228.6, -87.7 , 0 );
setMoveKey( spep_1 + 21, 1, 228.1, -97.5 , 0 );
setMoveKey( spep_1 + 22, 1, 228.1, -97.5 , 0 );
setMoveKey( spep_1 + 23, 1, 227.5, -106.1 , 0 );
setMoveKey( spep_1 + 24, 1, 227.5, -106.1 , 0 );
setMoveKey( spep_1 + 25, 1, 227.1, -113.9 , 0 );
setMoveKey( spep_1 + 26, 1, 227.1, -113.9 , 0 );
setMoveKey( spep_1 + 27, 1, 226.7, -120.7 , 0 );
setMoveKey( spep_1 + 28, 1, 226.7, -120.7 , 0 );
setMoveKey( spep_1 + 29, 1, 226.3, -126.8 , 0 );
setMoveKey( spep_1 + 30, 1, 226.3, -126.8 , 0 );
setMoveKey( spep_1 + 31, 1, 226, -132.1 , 0 );
setMoveKey( spep_1 + 32, 1, 226, -132.1 , 0 );
setMoveKey( spep_1 + 33, 1, 225.7, -136.7 , 0 );
setMoveKey( spep_1 + 34, 1, 225.7, -136.7 , 0 );
setMoveKey( spep_1 + 35, 1, 225.5, -140.6 , 0 );
setMoveKey( spep_1 + 36, 1, 225.5, -140.6 , 0 );
setMoveKey( spep_1 + 37, 1, 225.3, -143.8 , 0 );
setMoveKey( spep_1 + 38, 1, 225.3, -143.8 , 0 );
setMoveKey( spep_1 + 39, 1, 225.2, -146.4 , 0 );
setMoveKey( spep_1 + 40, 1, 225.2, -146.4 , 0 );
setMoveKey( spep_1 + 41, 1, 225, -148.5 , 0 );
setMoveKey( spep_1 + 42, 1, 225, -148.5 , 0 );
setMoveKey( spep_1 + 43, 1, 225, -149.9 , 0 );
setMoveKey( spep_1 + 44, 1, 225, -149.9 , 0 );
setMoveKey( spep_1 + 45, 1, 224.9, -150.7 , 0 );
setMoveKey( spep_1 + 46, 1, 224.9, -150.7 , 0 );
setMoveKey( spep_1 + 47, 1, 224.9, -151 , 0 );
setMoveKey( spep_1 + 48, 1, 224.9, -151 , 0 );

setScaleKey( spep_1 + 0, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 48, 1, 0.4, 0.4 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 48, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 48 + 2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 48;


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
    SE_CUTIN = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_2, SE_05);
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

--画面遷移
SE011 = playSeVer2( spep_2 + 86, 8, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 悟飯気弾を放つ(142F)
------------------------------------------------------
-- ** エフェクト等 ** --
gohan = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --ef_003
setEffMoveKey( spep_3 + 0, gohan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 142, gohan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gohan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 142, gohan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gohan, 0 );
setEffRotateKey( spep_3 + 142, gohan, 0 );
setEffAlphaKey( spep_3 + 0, gohan, 255 );
setEffAlphaKey( spep_3 + 142 -2, gohan, 255 );
setEffAlphaKey( spep_3 + 142 -1, gohan, 255 );
setEffAlphaKey( spep_3 + 142, gohan, 0 );

-- ** 音 ** --
--構える
SE012 = playSeVer2( spep_3 + 24, 1003, "", 0, 0, 0, -1);

--魔閃光溜め
SE013 = playSeVer2( spep_3 + 38, 1265, "",spep_3 + 132, 0, 18, -1);
SE014 = playSeVer2( spep_3 + 38, 1296, "",spep_3 + 132, 0, 18, -1);
SE015 = playSeVer2( spep_3 + 38, 1396, "",spep_3 + 132, 0, 18, -1);
SE016 = playSeVer2( spep_3 + 38, 1262, "",spep_3 + 132, 0, 18, -1);

--魔閃光発射
SE017 = playSeVer2( spep_3 + 106, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 106, SE017, 81 );
SE018 = playSeVer2( spep_3 + 106, 1145, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 106, 1284, "",spep_3 + 200, 0, 18, 0.6);

--気弾飛んでいく
SE020 = playSeVer2( spep_3 + 138, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 138, SE020, 229 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 142 + 2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 142;


------------------------------------------------------
-- 着弾からクリリン攻撃(174F)
------------------------------------------------------
-- ** エフェクト等 ** --
kuririn_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --ef_004a
setEffMoveKey( spep_4 + 0, kuririn_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 174, kuririn_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kuririn_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 174, kuririn_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kuririn_f, 0 );
setEffRotateKey( spep_4 + 174, kuririn_f, 0 );
setEffAlphaKey( spep_4 + 0, kuririn_f, 255 );
setEffAlphaKey( spep_4 + 174 -2, kuririn_f, 255 );
setEffAlphaKey( spep_4 + 174 -1, kuririn_f, 255 );
setEffAlphaKey( spep_4 + 174, kuririn_f, 0 );

kuririn_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --ef_004b
setEffMoveKey( spep_4 + 0, kuririn_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 174, kuririn_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kuririn_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 174, kuririn_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kuririn_b, 0 );
setEffRotateKey( spep_4 + 174, kuririn_b, 0 );
setEffAlphaKey( spep_4 + 0, kuririn_b, 255 );
setEffAlphaKey( spep_4 + 174 -2, kuririn_b, 255 );
setEffAlphaKey( spep_4 + 174 -1, kuririn_b, 255 );
setEffAlphaKey( spep_4 + 174, kuririn_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 7, 1, 1 );
setDisp( spep_4 + 37, 1, 0 );
setDisp( spep_4 + 79, 1, 1 );
setDisp( spep_4 + 119, 1, 0 );
changeAnime( spep_4 + 7, 1, 100 );
changeAnime( spep_4 + 79, 1, 106 );

setMoveKey( spep_4 + 7, 1, 447, -11.2 , 0 );
setMoveKey( spep_4 + 8, 1, 447, -11.2 , 0 );
setMoveKey( spep_4 + 9, 1, 386.7, -2.6 , 0 );
setMoveKey( spep_4 + 10, 1, 386.7, -2.6 , 0 );
setMoveKey( spep_4 + 11, 1, 326.4, 5.9 , 0 );
setMoveKey( spep_4 + 12, 1, 326.4, 5.9 , 0 );
setMoveKey( spep_4 + 13, 1, 266.1, 14.5 , 0 );
setMoveKey( spep_4 + 14, 1, 266.1, 14.5 , 0 );
setMoveKey( spep_4 + 15, 1, 205.8, 23.1 , 0 );
setMoveKey( spep_4 + 16, 1, 205.8, 23.1 , 0 );
setMoveKey( spep_4 + 17, 1, 145.5, 31.7 , 0 );
setMoveKey( spep_4 + 18, 1, 145.5, 31.7 , 0 );
setMoveKey( spep_4 + 19, 1, 85.2, 40.3 , 0 );
setMoveKey( spep_4 + 20, 1, 85.2, 40.3 , 0 );
setMoveKey( spep_4 + 21, 1, 24.9, 48.9 , 0 );

setScaleKey( spep_4 + 7, 1, 0.3, 0.3 );
setScaleKey( spep_4 + 8, 1, 0.3, 0.3 );
setScaleKey( spep_4 + 9, 1, 0.34, 0.34 );
setScaleKey( spep_4 + 10, 1, 0.34, 0.34 );
setScaleKey( spep_4 + 11, 1, 0.39, 0.39 );
setScaleKey( spep_4 + 12, 1, 0.39, 0.39 );
setScaleKey( spep_4 + 13, 1, 0.43, 0.43 );
setScaleKey( spep_4 + 14, 1, 0.43, 0.43 );
setScaleKey( spep_4 + 15, 1, 0.47, 0.47 );
setScaleKey( spep_4 + 16, 1, 0.47, 0.47 );
setScaleKey( spep_4 + 17, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 18, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 19, 1, 0.56, 0.56 );
setScaleKey( spep_4 + 20, 1, 0.56, 0.56 );
setScaleKey( spep_4 + 21, 1, 0.6, 0.6 );

setRotateKey( spep_4 + 7, 1, 0 );
setRotateKey( spep_4 + 21, 1, 0 );


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 22; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 24.9, 48.9 , 0 );
    setMoveKey( SP_dodge + 10, 1, 24.9, 48.9 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.6, 0.6 );
    setScaleKey( SP_dodge + 10, 1, 0.6, 0.6 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );  
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end


------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** 敵キャラクター ** --
setMoveKey( spep_4 + 37, 1, 24.9, 48.9 , 0 );
setMoveKey( spep_4 + 79, 1, 65, 49.1 , 0 );
setMoveKey( spep_4 + 80, 1, 65, 49.1 , 0 );
setMoveKey( spep_4 + 81, 1, 65.6, 34.2 , 0 );
setMoveKey( spep_4 + 82, 1, 65.6, 34.2 , 0 );
setMoveKey( spep_4 + 83, 1, 66.3, 19 , 0 );
setMoveKey( spep_4 + 84, 1, 66.3, 19 , 0 );
setMoveKey( spep_4 + 84, 1, 66.9, 3.4 , 0 );
setMoveKey( spep_4 + 86, 1, 66.9, 3.4 , 0 );
setMoveKey( spep_4 + 87, 1, 67.7, -12.7 , 0 );
setMoveKey( spep_4 + 88, 1, 67.7, -12.7 , 0 );
setMoveKey( spep_4 + 89, 1, 68.4, -29.3 , 0 );
setMoveKey( spep_4 + 90, 1, 68.4, -29.3 , 0 );
setMoveKey( spep_4 + 91, 1, 69.1, -46.6 , 0 );
setMoveKey( spep_4 + 92, 1, 69.1, -46.6 , 0 );
setMoveKey( spep_4 + 93, 1, 69.9, -64.7 , 0 );
setMoveKey( spep_4 + 94, 1, 69.9, -64.7 , 0 );
setMoveKey( spep_4 + 95, 1, 70.8, -83.6 , 0 );
setMoveKey( spep_4 + 96, 1, 70.8, -83.6 , 0 );
setMoveKey( spep_4 + 97, 1, 71.6, -103.7 , 0 );
setMoveKey( spep_4 + 98, 1, 71.6, -103.7 , 0 );
setMoveKey( spep_4 + 99, 1, 72.6, -125 , 0 );
setMoveKey( spep_4 + 100, 1, 72.6, -125 , 0 );
setMoveKey( spep_4 + 101, 1, 73.6, -147.6 , 0 );
setMoveKey( spep_4 + 102, 1, 73.6, -147.6 , 0 );
setMoveKey( spep_4 + 103, 1, 74.6, -172 , 0 );
setMoveKey( spep_4 + 104, 1, 74.6, -172 , 0 );
setMoveKey( spep_4 + 105, 1, 75.8, -198.1 , 0 );
setMoveKey( spep_4 + 106, 1, 75.8, -198.1 , 0 );
setMoveKey( spep_4 + 107, 1, 77, -226.4 , 0 );
setMoveKey( spep_4 + 108, 1, 77, -226.4 , 0 );
setMoveKey( spep_4 + 109, 1, 78.3, -257.1 , 0 );
setMoveKey( spep_4 + 110, 1, 78.3, -257.1 , 0 );
setMoveKey( spep_4 + 111, 1, 79.8, -290.5 , 0 );
setMoveKey( spep_4 + 112, 1, 79.8, -290.5 , 0 );
setMoveKey( spep_4 + 113, 1, 226.9, -278.5 , 0 );
setMoveKey( spep_4 + 114, 1, 226.9, -278.5 , 0 );
setMoveKey( spep_4 + 115, 1, 388.1, -265.4 , 0 );
setMoveKey( spep_4 + 116, 1, 388.1, -265.4 , 0 );
setMoveKey( spep_4 + 117, 1, 565, -250.8 , 0 );
setMoveKey( spep_4 + 118, 1, 565, -250.8 , 0 );
setMoveKey( spep_4 + 119, 1, 565, -250.8 , 0 );

setScaleKey( spep_4 + 37, 1, 0.6, 0.6 );
setScaleKey( spep_4 + 79, 1, 0.6, 0.6 );
setScaleKey( spep_4 + 119, 1, 0.6, 0.6 );

setRotateKey( spep_4 + 37, 1, 0 );
setRotateKey( spep_4 + 79, 1, 100 );
setRotateKey( spep_4 + 80, 1, 100 );
setRotateKey( spep_4 + 81, 1, 100.3 );
setRotateKey( spep_4 + 82, 1, 100.3 );
setRotateKey( spep_4 + 83, 1, 100.7 );
setRotateKey( spep_4 + 84, 1, 100.7 );
setRotateKey( spep_4 + 85, 1, 101 );
setRotateKey( spep_4 + 86, 1, 101 );
setRotateKey( spep_4 + 87, 1, 101.3 );
setRotateKey( spep_4 + 88, 1, 101.3 );
setRotateKey( spep_4 + 89, 1, 101.7 );
setRotateKey( spep_4 + 90, 1, 101.7 );
setRotateKey( spep_4 + 91, 1, 102.1 );
setRotateKey( spep_4 + 92, 1, 102.1 );
setRotateKey( spep_4 + 93, 1, 102.5 );
setRotateKey( spep_4 + 94, 1, 102.5 );
setRotateKey( spep_4 + 95, 1, 102.9 );
setRotateKey( spep_4 + 96, 1, 102.9 );
setRotateKey( spep_4 + 97, 1, 103.3 );
setRotateKey( spep_4 + 98, 1, 103.3 );
setRotateKey( spep_4 + 99, 1, 103.8 );
setRotateKey( spep_4 + 100, 1, 103.8 );
setRotateKey( spep_4 + 101, 1, 104.3 );
setRotateKey( spep_4 + 102, 1, 104.3 );
setRotateKey( spep_4 + 103, 1, 104.8 );
setRotateKey( spep_4 + 104, 1, 104.8 );
setRotateKey( spep_4 + 105, 1, 105.4 );
setRotateKey( spep_4 + 106, 1, 105.4 );
setRotateKey( spep_4 + 107, 1, 106 );
setRotateKey( spep_4 + 108, 1, 106 );
setRotateKey( spep_4 + 109, 1, 106.7 );
setRotateKey( spep_4 + 110, 1, 106.7 );
setRotateKey( spep_4 + 112, 1, 107.4 );
setRotateKey( spep_4 + 113, 1, 107.4 );
setRotateKey( spep_4 + 114, 1, 108.2 );
setRotateKey( spep_4 + 115, 1, 108.2 );
setRotateKey( spep_4 + 116, 1, 109 );
setRotateKey( spep_4 + 117, 1, 110 );
setRotateKey( spep_4 + 119, 1, 110 );

-- ** 音 ** --
--爆発
SE021 = playSeVer2( spep_4 + 32, 1023, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_4 + 32, 1024, "", 0, 0, 0, -1);

--画面遷移
SE023 = playSeVer2( spep_4 + 104, 1232, "", 0, 0, 0, -1);

--クリリン気弾発射
SE024 = playSeVer2( spep_4 + 118, 1146, "",spep_4 + 194, 0, 20, -1);
setSeVolumeByWorkId( spep_4 + 118, SE024, 79 );
SE025 = playSeVer2( spep_4 + 118, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 128, SE025, 126 );
SE026 = playSeVer2( spep_4 + 118, 1312, "",spep_4 + 194, 0, 20, -1);
setSeVolumeByWorkId( spep_4 + 118, SE026, 56 );
SE027 = playSeVer2( spep_4 + 120, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 120, SE027, 84 );

--天津飯気弾発射
SE028 = playSeVer2( spep_4 + 170, 1284, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 196 + 2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 174;


------------------------------------------------------
-- 天津飯とヤムチャの攻撃(158F)
------------------------------------------------------
-- ** エフェクト等 ** --
tensin = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --ef_005
setEffMoveKey( spep_5 + 0, tensin, 0, 0 , 0 );
setEffMoveKey( spep_5 + 158, tensin, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tensin, 1.0, 1.0 );
setEffScaleKey( spep_5 + 158, tensin, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tensin, 0 );
setEffRotateKey( spep_5 + 158, tensin, 0 );
setEffAlphaKey( spep_5 + 0, tensin, 255 );
setEffAlphaKey( spep_5 + 158 -2, tensin, 255 );
setEffAlphaKey( spep_5 + 158 -1, tensin, 255 );
setEffAlphaKey( spep_5 + 158, tensin, 0 );

-- ** 音 ** --
--ヤムチャ気弾溜め
SE029 = playSeVer2( spep_5 + 54, 1056, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_5 + 54, 1147, "",spep_5 + 144, 0, 30, -1);
SE031 = playSeVer2( spep_5 + 54, 1128, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_5 + 54, SE031, 84 );
setPitch( spep_5 + 54, SE031, 1200 );
setTimeStretch( SE031, 1.0, 30, 4 );
SE032 = playSeVer2( spep_5 + 54, 1184, "",spep_5 + 164, 0, 42, -1);
setSeVolumeByWorkId( spep_5 + 54, SE032, 80 );
SE033 = playSeVer2( spep_5 + 54, 1227, "",spep_5 + 164, 0, 42, -1);
setSeVolumeByWorkId( spep_5 + 54, SE033, 82 );

--気弾飛んでいく
SE034 = playSeVer2( spep_5 + 144, 1193, "",spep_5 + 220, 10, 24, -1);
setStartTimeMs( SE034,  800 );
SE035 = playSeVer2( spep_5 + 140, 1212, "",spep_5 + 210, 10, 16, -1);
setStartTimeMs( SE035,  600 );

--ヤムチャ気弾発射
SE036 = playSeVer2( spep_5 + 124, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 124, SE036, 71 );
SE037 = playSeVer2( spep_5 + 124, 1145, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 158 + 2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 158;


------------------------------------------------------
-- ３個の気弾が着弾(76F)
------------------------------------------------------
-- ** エフェクト等 ** --
kidan_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --ef_006a
setEffMoveKey( spep_6 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 76, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kidan_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 76, kidan_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kidan_f, 0 );
setEffRotateKey( spep_6 + 76, kidan_f, 0 );
setEffAlphaKey( spep_6 + 0, kidan_f, 255 );
setEffAlphaKey( spep_6 + 76 -2, kidan_f, 255 );
setEffAlphaKey( spep_6 + 76 -1, kidan_f, 255 );
setEffAlphaKey( spep_6 + 76, kidan_f, 0 );

kidan_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --ef_006b
setEffMoveKey( spep_6 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 76, kidan_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kidan_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 76, kidan_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kidan_b, 0 );
setEffRotateKey( spep_6 + 76, kidan_b, 0 );
setEffAlphaKey( spep_6 + 0, kidan_b, 255 );
setEffAlphaKey( spep_6 + 76 -2, kidan_b, 255 );
setEffAlphaKey( spep_6 + 76 -1, kidan_b, 255 );
setEffAlphaKey( spep_6 + 76, kidan_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 39, 1, 0 );
changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, 76.5, -210 , 0 );
setMoveKey( spep_6 + 1, 1, 79.8, -220.1 , 0 );
setMoveKey( spep_6 + 2, 1, 79.8, -220.1 , 0 );
setMoveKey( spep_6 + 3, 1, 81.4, -225.1 , 0 );
setMoveKey( spep_6 + 4, 1, 81.4, -225.1 , 0 );
setMoveKey( spep_6 + 5, 1, 82.6, -228.8 , 0 );
setMoveKey( spep_6 + 6, 1, 82.6, -228.8 , 0 );
setMoveKey( spep_6 + 7, 1, 83.6, -231.8 , 0 );
setMoveKey( spep_6 + 8, 1, 83.6, -231.8 , 0 );
setMoveKey( spep_6 + 9, 1, 84.4, -234.3 , 0 );
setMoveKey( spep_6 + 10, 1, 84.4, -234.3 , 0 );
setMoveKey( spep_6 + 11, 1, 85.1, -236.5 , 0 );
setMoveKey( spep_6 + 12, 1, 85.1, -236.5 , 0 );
setMoveKey( spep_6 + 13, 1, 85.7, -238.3 , 0 );
setMoveKey( spep_6 + 14, 1, 85.7, -238.3 , 0 );
setMoveKey( spep_6 + 15, 1, 86.3, -240 , 0 );
setMoveKey( spep_6 + 16, 1, 86.3, -240 , 0 );
setMoveKey( spep_6 + 17, 1, 86.7, -241.5 , 0 );
setMoveKey( spep_6 + 18, 1, 86.7, -241.5 , 0 );
setMoveKey( spep_6 + 19, 1, 87.2, -242.8 , 0 );
setMoveKey( spep_6 + 20, 1, 87.2, -242.8 , 0 );
setMoveKey( spep_6 + 21, 1, 87.6, -243.9 , 0 );
setMoveKey( spep_6 + 22, 1, 87.6, -243.9 , 0 );
setMoveKey( spep_6 + 23, 1, 87.9, -245 , 0 );
setMoveKey( spep_6 + 24, 1, 87.9, -245 , 0 );
setMoveKey( spep_6 + 25, 1, 88.2, -245.9 , 0 );
setMoveKey( spep_6 + 26, 1, 88.2, -245.9 , 0 );
setMoveKey( spep_6 + 27, 1, 88.4, -246.7 , 0 );
setMoveKey( spep_6 + 28, 1, 88.4, -246.7 , 0 );
setMoveKey( spep_6 + 29, 1, 88.7, -247.4 , 0 );
setMoveKey( spep_6 + 39, 1, 88.7, -247.4 , 0 );

setScaleKey( spep_6 + 0, 1, 0.52, 0.52 );
setScaleKey( spep_6 + 1, 1, 0.57, 0.57 );
setScaleKey( spep_6 + 2, 1, 0.57, 0.57 );
setScaleKey( spep_6 + 3, 1, 0.6, 0.6 );
setScaleKey( spep_6 + 4, 1, 0.6, 0.6 );
setScaleKey( spep_6 + 5, 1, 0.61, 0.61 );
setScaleKey( spep_6 + 6, 1, 0.61, 0.61 );
setScaleKey( spep_6 + 7, 1, 0.63, 0.63 );
setScaleKey( spep_6 + 8, 1, 0.63, 0.63 );
setScaleKey( spep_6 + 9, 1, 0.64, 0.64 );
setScaleKey( spep_6 + 10, 1, 0.64, 0.64 );
setScaleKey( spep_6 + 11, 1, 0.65, 0.65 );
setScaleKey( spep_6 + 12, 1, 0.65, 0.65 );
setScaleKey( spep_6 + 13, 1, 0.66, 0.66 );
setScaleKey( spep_6 + 14, 1, 0.66, 0.66 );
setScaleKey( spep_6 + 15, 1, 0.67, 0.67 );
setScaleKey( spep_6 + 18, 1, 0.67, 0.67 );
setScaleKey( spep_6 + 19, 1, 0.68, 0.68 );
setScaleKey( spep_6 + 22, 1, 0.68, 0.68 );
setScaleKey( spep_6 + 23, 1, 0.69, 0.69 );
setScaleKey( spep_6 + 26, 1, 0.69, 0.69 );
setScaleKey( spep_6 + 27, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 39, 1, 0.7, 0.7 );

setRotateKey( spep_6 + 0, 1, 4.8 );
setRotateKey( spep_6 + 39, 1, 4.8 );

-- ** 音 ** --
--爆発
SE038 = playSeVer2( spep_6 + 34, 1024, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_6 + 38, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 98 + 2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 76;


------------------------------------------------------
-- 悟空衝撃波を放つ(246F)
------------------------------------------------------
-- ** エフェクト等 ** --
gokuu = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --ef_007
setEffMoveKey( spep_7 + 0, gokuu, 0, 0 , 0 );
setEffMoveKey( spep_7 + 246, gokuu, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, gokuu, 1.0, 1.0 );
setEffScaleKey( spep_7 + 246, gokuu, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, gokuu, 0 );
setEffRotateKey( spep_7 + 246, gokuu, 0 );
setEffAlphaKey( spep_7 + 0, gokuu, 255 );
setEffAlphaKey( spep_7 + 246 -2, gokuu, 255 );
setEffAlphaKey( spep_7 + 246 -1, gokuu, 255 );
setEffAlphaKey( spep_7 + 246, gokuu, 0 );

-- ** 音 ** --
--悟空拳アップ
SE040 = playSeVer2( spep_7 + 0, 8, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_7 + 0, 1004, "", 0, 0, 0, -1);

--空気音
SE042 = playSeVer2( spep_7 + 6, 1278, "",spep_7 + 236, 0, 40, -1);
setSeVolumeByWorkId( spep_7 + 6, SE042, 71 );

--イナヅマ
SE043 = playSeVer2( spep_7 + 144, 1148, "",spep_7 + 234, 0, 32, -1);

--イナヅマ天にのぼる
SE044 = playSeVer2( spep_7 + 174, 1145, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_7 + 174, 1114, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_7 + 174, 1126, "", 0, 0, 0, -1);
setPitch( spep_7 + 174, SE046, -600 );
setTimeStretch( SE046, 0.6, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 246 + 2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 246;


------------------------------------------------------
-- 敵衝撃波に包まれる(118F)
------------------------------------------------------
-- ** エフェクト等 ** --
syougeki_f = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 );  --ef_008a
setEffMoveKey( spep_8 + 0, syougeki_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 116, syougeki_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, syougeki_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 116, syougeki_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, syougeki_f, 0 );
setEffRotateKey( spep_8 + 116, syougeki_f, 0 );
setEffAlphaKey( spep_8 + 0, syougeki_f, 255 );
--setEffAlphaKey( spep_8 + 116 -2, syougeki_f, 255 );
--setEffAlphaKey( spep_8 + 116 -1, syougeki_f, 255 );
setEffAlphaKey( spep_8 + 116, syougeki_f, 255 );

syougeki_b = entryEffect( spep_8 + 0, SP_12, 0x80, -1, 0, 0, 0 );  --ef_008b
setEffMoveKey( spep_8 + 0, syougeki_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 116, syougeki_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, syougeki_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 116, syougeki_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, syougeki_b, 0 );
setEffRotateKey( spep_8 + 116, syougeki_b, 0 );
setEffAlphaKey( spep_8 + 0, syougeki_b, 255 );
--setEffAlphaKey( spep_8 + 116 -2, syougeki_b, 255 );
--setEffAlphaKey( spep_8 + 116 -1, syougeki_b, 255 );
setEffAlphaKey( spep_8 + 116, syougeki_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 115 - 4, 1, 0 );
changeAnime( spep_8 + 0, 1, 106 );
changeAnime( spep_8 + 15, 1, 108 );

setMoveKey( spep_8 + 0, 1, -40, -80 , 0 );
setMoveKey( spep_8 + 1, 1, -36.7, -79.6 , 0 );
setMoveKey( spep_8 + 2, 1, -36.7, -79.6 , 0 );
setMoveKey( spep_8 + 3, 1, -29.4, -93.3 , 0 );
setMoveKey( spep_8 + 4, 1, -29.4, -93.3 , 0 );
setMoveKey( spep_8 + 5, 1, -12.1, -82.9 , 0 );
setMoveKey( spep_8 + 6, 1, -12.1, -82.9 , 0 );
setMoveKey( spep_8 + 7, 1, -8.8, -98.5 , 0 );
setMoveKey( spep_8 + 8, 1, -8.8, -98.5 , 0 );
setMoveKey( spep_8 + 9, 1, -3.5, -98.1 , 0 );
setMoveKey( spep_8 + 10, 1, -3.5, -98.1 , 0 );
setMoveKey( spep_8 + 11, 1, -0.1, -97.7 , 0 );
setMoveKey( spep_8 + 12, 1, -0.1, -97.7 , 0 );
setMoveKey( spep_8 + 13, 1, 7.2, -111.3 , 0 );
setMoveKey( spep_8 + 14, 1, 7.2, -111.3 , 0 );
setMoveKey( spep_8 + 15, 1, 18.5, -98 , 0 );
setMoveKey( spep_8 + 16, 1, 18.5, -98 , 0 );
setMoveKey( spep_8 + 17, 1, 19, -113.6 , 0 );
setMoveKey( spep_8 + 18, 1, 19, -113.6 , 0 );
setMoveKey( spep_8 + 19, 1, 21.4, -113.3 , 0 );
setMoveKey( spep_8 + 20, 1, 21.4, -113.3 , 0 );
setMoveKey( spep_8 + 21, 1, 21.9, -113 , 0 );
setMoveKey( spep_8 + 22, 1, 21.9, -113 , 0 );
setMoveKey( spep_8 + 23, 1, 26.3, -126.7 , 0 );
setMoveKey( spep_8 + 24, 1, 26.3, -126.7 , 0 );
setMoveKey( spep_8 + 25, 1, 40.8, -116.4 , 0 );
setMoveKey( spep_8 + 26, 1, 40.8, -116.4 , 0 );
setMoveKey( spep_8 + 27, 1, 41.2, -132 , 0 );
setMoveKey( spep_8 + 28, 1, 41.2, -132 , 0 );
setMoveKey( spep_8 + 29, 1, 43.7, -131.7 , 0 );
setMoveKey( spep_8 + 115 - 4, 1, 43.7, -131.7 , 0 );

setScaleKey( spep_8 + 0, 1, 2, 2 );
setScaleKey( spep_8 + 115 - 4, 1, 2, 2 );

setRotateKey( spep_8 + 0, 1, -30 );
setRotateKey( spep_8 + 14, 1, -30 );
setRotateKey( spep_8 + 15, 1, 20 );
setRotateKey( spep_8 + 115 - 4, 1, 20 );

-- ** 音 ** --
--【全体攻撃】気弾に飲まれる
SE047 = playSeVer2( spep_8 + 0, 1128, "", 0, 8, 0, -1);
setStartTimeMs( SE047,  750 );
setPitch( spep_8 + 0, SE047, -1200 );
setTimeStretch( SE047, 0.2, 30, 4 );
SE048 = playSeVer2( spep_8 + 0, 1144, "", 0, 0, 0, -1);
setPitch( spep_8 + 0, SE048, -1200 );
setTimeStretch( SE048, 0.2, 30, 4 );
SE049 = playSeVer2( spep_8 + 0, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 0, SE049, 77 );
SE050 = playSeVer2( spep_8 + 0, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 0, SE050, 80 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 116 + 2, 0, 0, 0, 0, 255 );  --黒　背景

-- -- ** ダメージ表示 ** --
dealDamage( spep_8 + 6 ); -- ダメージ表示フレーム
endPhase( spep_8 + 116 - 4); -- 終了フレーム



else

------------------------------------------------------
-- 敵側
------------------------------------------------------
--ユニットなので敵側不要

end
else end



------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then

------------------------------------------------------
-- 敵衝撃波に包まれる(118F)
------------------------------------------------------

spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

	if(_IS_DODGE_ == 1) then

	SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

	playSe( SP_dodge-12, 1042);

	speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
	setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

	kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
		if (_IS_PLAYER_SIDE_ == 1) then

			setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

		else

			setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

		end

setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end


-- ** エフェクト等 ** --
syougeki_f = entryEffect( spep_z + 0, SP_11, 0x100, -1, 0, 0, 0 );  --ef_008a
setEffMoveKey( spep_z + 0, syougeki_f, 0, 0 , 0 );
setEffMoveKey( spep_z + 116, syougeki_f, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, syougeki_f, 1.0, 1.0 );
setEffScaleKey( spep_z + 116, syougeki_f, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, syougeki_f, 0 );
setEffRotateKey( spep_z + 116, syougeki_f, 0 );
setEffAlphaKey( spep_z + 0, syougeki_f, 255 );
--setEffAlphaKey( spep_z + 116 -2, syougeki_f, 255 );
--setEffAlphaKey( spep_z + 116 -1, syougeki_f, 255 );
setEffAlphaKey( spep_z + 116, syougeki_f, 255 );

syougeki_b = entryEffect( spep_z + 0, SP_12, 0x80, -1, 0, 0, 0 );  --ef_008b
setEffMoveKey( spep_z + 0, syougeki_b, 0, 0 , 0 );
setEffMoveKey( spep_z + 116, syougeki_b, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, syougeki_b, 1.0, 1.0 );
setEffScaleKey( spep_z + 116, syougeki_b, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, syougeki_b, 0 );
setEffRotateKey( spep_z + 116, syougeki_b, 0 );
setEffAlphaKey( spep_z + 0, syougeki_b, 255 );
--setEffAlphaKey( spep_z + 116 -2, syougeki_b, 255 );
--setEffAlphaKey( spep_z + 116 -1, syougeki_b, 255 );
setEffAlphaKey( spep_z + 116, syougeki_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
setDisp( spep_z + 115 - 4, 1, 0 );
changeAnime( spep_z + 0, 1, 106 );
changeAnime( spep_z + 15, 1, 108 );

setMoveKey( spep_z + 0, 1, -40, -80 , 0 );
setMoveKey( spep_z + 1, 1, -36.7, -79.6 , 0 );
setMoveKey( spep_z + 2, 1, -36.7, -79.6 , 0 );
setMoveKey( spep_z + 3, 1, -29.4, -93.3 , 0 );
setMoveKey( spep_z + 4, 1, -29.4, -93.3 , 0 );
setMoveKey( spep_z + 5, 1, -12.1, -82.9 , 0 );
setMoveKey( spep_z + 6, 1, -12.1, -82.9 , 0 );
setMoveKey( spep_z + 7, 1, -8.8, -98.5 , 0 );
setMoveKey( spep_z + 8, 1, -8.8, -98.5 , 0 );
setMoveKey( spep_z + 9, 1, -3.5, -98.1 , 0 );
setMoveKey( spep_z + 10, 1, -3.5, -98.1 , 0 );
setMoveKey( spep_z + 11, 1, -0.1, -97.7 , 0 );
setMoveKey( spep_z + 12, 1, -0.1, -97.7 , 0 );
setMoveKey( spep_z + 13, 1, 7.2, -111.3 , 0 );
setMoveKey( spep_z + 14, 1, 7.2, -111.3 , 0 );
setMoveKey( spep_z + 15, 1, 18.5, -98 , 0 );
setMoveKey( spep_z + 16, 1, 18.5, -98 , 0 );
setMoveKey( spep_z + 17, 1, 19, -113.6 , 0 );
setMoveKey( spep_z + 18, 1, 19, -113.6 , 0 );
setMoveKey( spep_z + 19, 1, 21.4, -113.3 , 0 );
setMoveKey( spep_z + 20, 1, 21.4, -113.3 , 0 );
setMoveKey( spep_z + 21, 1, 21.9, -113 , 0 );
setMoveKey( spep_z + 22, 1, 21.9, -113 , 0 );
setMoveKey( spep_z + 23, 1, 26.3, -126.7 , 0 );
setMoveKey( spep_z + 24, 1, 26.3, -126.7 , 0 );
setMoveKey( spep_z + 25, 1, 40.8, -116.4 , 0 );
setMoveKey( spep_z + 26, 1, 40.8, -116.4 , 0 );
setMoveKey( spep_z + 27, 1, 41.2, -132 , 0 );
setMoveKey( spep_z + 28, 1, 41.2, -132 , 0 );
setMoveKey( spep_z + 29, 1, 43.7, -131.7 , 0 );
setMoveKey( spep_z + 115 - 4, 1, 43.7, -131.7 , 0 );

setScaleKey( spep_z + 0, 1, 2, 2 );
setScaleKey( spep_z + 115 - 4, 1, 2, 2 );

setRotateKey( spep_z + 0, 1, -30 );
setRotateKey( spep_z + 14, 1, -30 );
setRotateKey( spep_z + 15, 1, 20 );
setRotateKey( spep_z + 115 - 4, 1, 20 );


-- ** 音 ** --
--【全体攻撃】気弾に飲まれる
SE047 = playSeVer2( spep_z + 0, 1128, "", 0, 8, 0, -1);
setStartTimeMs( SE047,  750 );
setPitch( spep_z + 0, SE047, -1200 );
setTimeStretch( SE047, 0.2, 30, 4 );
SE048 = playSeVer2( spep_z + 0, 1144, "", 0, 0, 0, -1);
setPitch( spep_z + 0, SE048, -1200 );
setTimeStretch( SE048, 0.2, 30, 4 );
SE049 = playSeVer2( spep_z + 0, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 0, SE049, 77 );
SE050 = playSeVer2( spep_z + 0, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 0, SE050, 80 );


-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, 116 + 2, 0, 0, 0, 0, 255 );  --黒　背景

-- -- ** ダメージ表示 ** --
dealDamage( spep_z + 6 ); -- ダメージ表示フレーム
endPhase( spep_z + 116 - 4); -- 終了フレーム


else end