--1022750:フリーザ(フルパワー)_とことん肉弾戦_sp2232
--sp_effect_b1_00162
--sp2232

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
SP_01 = 157914;	--キャラ対峙（味方側）	ef_001_ch
SP_02 = 157916;	--敵にかかる煙（味方側）	ef_001_bg_smoke
SP_03 = 157918;	--↑背景（味方側）	ef_001_bg
SP_04 = 157920;	--突進_ボディブローから膝（味方側）	ef_002_ch
SP_05 = 157922;	--敵をつかんでいる裏側の手（味方側）	ef_002_ch_ura
SP_06 = 157924;	--↑背景（味方側）	ef_002_bg
SP_07 = 157926;	--空中でラッシュ→蹴り込み（味方側）	ef_003_ch
SP_08 = 157928;	--↑背景（味方側）	ef_003_bg
SP_09 = 157930;	--敵が水しぶきをあげて海に激突（味方側）	ef_004


--敵側
SP_01r = 157915;	--キャラ対峙（敵側）	ef_001_ch_r
SP_02r = 157917;	--敵にかかる煙（敵側）	ef_001_bg_smoke_r
SP_03r = 157919;	--↑背景（敵側）	ef_001_bg_r
SP_04r = 157921;	--突進_ボディブローから膝（敵側）	ef_002_ch_r
SP_05r = 157923;	--敵をつかんでいる裏側の手（敵側）	ef_002_ch_r_ura
SP_06r = 157925;	--↑背景（敵側）	ef_002_bg_r
SP_07r = 157927;	--空中でラッシュ→蹴り込み（敵側）	ef_003_ch_r
SP_08r = 157929;	--↑背景（敵側）	ef_003_bg_r
SP_09r = 157931;	--敵が水しぶきをあげて海に激突（敵側）	ef_004_r

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
-- キャラ対峙(78F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 86, 0x100, -1, 0, 0, 0 );  --キャラ対峙（味方側）	ef_001_ch
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 86, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 86 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 86, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_03, 86, 0x80, -1, 0, 0, 0 );  --敵にかかる煙（味方側）	ef_001_bg_smoke
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 86, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 86 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 86, first_b, 0 );

first_e = entryEffectLife( spep_0 + 0, SP_02, 86, 0x80, -1, 0, 0, 0 );  --↑背景（味方側）	ef_001_bg
setEffMoveKey( spep_0 + 0, first_e, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, first_e, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_e, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, first_e, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_e, 0 );
setEffRotateKey( spep_0 + 86, first_e, 0 );
setEffAlphaKey( spep_0 + 0, first_e, 255 );
setEffAlphaKey( spep_0 + 86 -1, first_e, 255 );
setEffAlphaKey( spep_0 + 86, first_e, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 165, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 165, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 165, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 89, 1, 0 );
changeAnime( spep_0 + 0, 1, 100 );

setBlendColor( spep_0 + 40 -1, 1, 3, 0.20, 0.23, 0.53, 0.6 );
setBlendColor( spep_0 + 44 -1, 1, 3, 0.20, 0.23, 0.53, 0.8 );
setBlendColor( spep_0 + 52 -1, 1, 3, 0.20, 0.23, 0.53, 0.6 );
setBlendColor( spep_0 + 56 -1, 1, 3, 0.20, 0.23, 0.53, 0.8 );
setBlendColor( spep_0 + 62 -1, 1, 3, 0.20, 0.23, 0.53, 0.6 );
setBlendColor( spep_0 + 64 -1, 1, 3, 0.20, 0.23, 0.53, 0 );

setMoveKey( spep_0 + 0, 1, 238.6, -223 , 0 );
setMoveKey( spep_0 + 1, 1, 238.1, -223 , 0 );
setMoveKey( spep_0 + 2, 1, 237.6, -223 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 237.1, -223 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 237.1, -223 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 236.6, -223 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 236.6, -223 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 236.1, -223 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 235.6, -223 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 235.1, -223 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 234.6, -223 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 234.1, -223 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 233.6, -223 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 233.1, -223 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 232.6, -223 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 232.1, -223 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 231.6, -223 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 231.1, -223 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 230.6, -223 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 230.1, -223 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 229.6, -223 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 229.1, -223 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 228.6, -223 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 228.1, -223 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 227.6, -223 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 227.1, -223 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 226.6, -223 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 226.1, -263 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 225.6, -257 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 225.1, -193 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 224.6, -235 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 224.1, -203 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 223.6, -233 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 223.1, -211 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 222.6, -227 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 222.1, -223 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 221.6, -223 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 221.1, -223 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 220.6, -223 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 220.1, -223 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 219.6, -223 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 219.1, -223 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 218.6, -223 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 218.1, -223 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 217.6, -223 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 217.1, -223 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 216.6, -223 , 0 );
setMoveKey( spep_0 -3 + 89, 1, 216.6, -223 , 0 );

setScaleKey( spep_0 + 0, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 1, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 2, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 3, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 4, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 5, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 6, 1, 1.44, 1.44 );
setScaleKey( spep_0 -3 + 89, 1, 1.44, 1.44 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 89, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setPitch( spep_0 + 0, SE001, -600 );
setTimeStretch( SE001, 0.6, 30, 4 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1229, "",spep_0 +86 + 10, 0, 4, -1);

--顔カットイン
SE003 = playSeVer2( spep_0 + 4, 1018, "", 0, 0, 0, -1);

--雷
SE004 = playSeVer2( spep_0 + 40, 1231, "",spep_0 +78 + 86, 0, 4, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
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
--playSe( spep_1 + 0, SE_05 );

--踏ん張る
SE006 = playSeVer2( spep_1 + 84, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE006, 80 );

--踏ん張る
SE007 = playSeVer2( spep_1 + 84, 1033, "",spep_1 +94 + 26, 0, 14, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 突進_ボディブローから膝(300F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
charge_f = entryEffectLife( spep_2 + 0, SP_04, 300, 0x100, -1, 0, 0, 0 );  --突進_ボディブローから膝（味方側）	ef_002_ch
setEffMoveKey( spep_2 + 0, charge_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 300, charge_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, charge_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 300, charge_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, charge_f, 0 );
setEffRotateKey( spep_2 + 300, charge_f, 0 );
setEffAlphaKey( spep_2 + 0, charge_f, 255 );
setEffAlphaKey( spep_2 + 300 -1, charge_f, 255 );
setEffAlphaKey( spep_2 + 300, charge_f, 0 );

charge_b = entryEffectLife( spep_2 + 0, SP_06, 300, 0x80, -1, 0, 0, 0 );  --↑背景（味方側）	ef_002_bg
setEffMoveKey( spep_2 + 0, charge_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 300, charge_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, charge_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 300, charge_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, charge_b, 0 );
setEffRotateKey( spep_2 + 300, charge_b, 0 );
setEffAlphaKey( spep_2 + 0, charge_b, 255 );
setEffAlphaKey( spep_2 + 300 -1, charge_b, 255 );
setEffAlphaKey( spep_2 + 300, charge_b, 0 );

charge_e = entryEffectLife( spep_2 + 0, SP_05, 300, 0x80, -1, 0, 0, 0 );  --敵をつかんでいる裏側の手（味方側）	ef_002_ch_ura
setEffMoveKey( spep_2 + 0, charge_e, 0, 0 , 0 );
setEffMoveKey( spep_2 + 300, charge_e, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, charge_e, 1.0, 1.0 );
setEffScaleKey( spep_2 + 300, charge_e, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, charge_e, 0 );
setEffRotateKey( spep_2 + 300, charge_e, 0 );
setEffAlphaKey( spep_2 + 0, charge_e, 255 );
setEffAlphaKey( spep_2 + 300 -1, charge_e, 255 );
setEffAlphaKey( spep_2 + 300, charge_e, 0 );

-- ** 音 ** --
--飛び上がる
SE008 = playSeVer2( spep_2 + 18, 1182, "", 0, 0, 0, -1);

--飛び上がる
SE009 = playSeVer2( spep_2 + 18, 9, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 300 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 60 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);
    
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
setDisp( spep_2 -3 + 80, 1, 1 );
setDisp( spep_2 -3 + 100, 1, 0 );
setDisp( spep_2 -3 + 126, 1, 1 );
setDisp( spep_2 -3 + 302+1, 1, 0 );

changeAnime( spep_2 -3 + 80, 1, 100 );
changeAnime( spep_2 -3 + 126, 1, 108 );
changeAnime( spep_2 -3 + 174, 1, 107 );
changeAnime( spep_2 -3 + 236, 1, 118 );
changeAnime( spep_2 -3 + 242, 1, 106 );
changeAnime( spep_2 -3 + 264, 1, 107 );
changeAnime( spep_2 -3 + 268, 1, 106 );
changeAnime( spep_2 -3 + 272, 1, 5 );

setMoveKey( spep_2 -3 + 80, 1, 298.9, -176 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 295.2, -174.5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 291.4, -172.9 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 287.7, -171.4 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 283.9, -169.9 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 280.7, -167.4 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 271, -159.8 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 254.8, -147.1 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 232.1, -129.4 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 203, -106.7 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 203, -106.7 , 0 );

a2 = 0;
b2 = 40;
setMoveKey( spep_2 -3 + 126, 1, 225 -a2, 227.5 -b2 , 0 );
setMoveKey( spep_2 -3 + 129, 1, 225 -a2, 227.5 -b2 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 204.5 -a2, 67.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 135, 1, 204.5 -a2, 67.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 225 -a2, 227.5 -b2 , 0 );
setMoveKey( spep_2 -3 + 139, 1, 225 -a2, 227.5 -b2 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 141, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 145, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 147, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 149, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 153, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 155, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 157, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 159, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 163, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 165, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 167, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 169, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 173, 1, 214.6 -a2, 37.6 -b2 , 0 );

a3 = 0;
b3 = 230;
setMoveKey( spep_2 -3 + 174, 1, 23 +a3, -513.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 23 +a3, -513.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 12 +a3, -503.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 12 +a3, -503.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 2 +a3, -503.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 190, 1, -27 +a3, -513.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 192, 1, -27 +a3, -513.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 194, 1, -17 +a3, -503.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 198, 1, -17 +a3, -503.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 3 +a3, -483.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 3 +a3, -483.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 13 +a3, -473.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 13 +a3, -473.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 23 +a3, -463.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 23 +a3, -463.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 33 +a3, -453.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 33 +a3, -453.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 218, 1, -37 +a3, -503.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 222, 1, -37 +a3, -503.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 224, 1, -277 +a3, -703.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 226, 1, -277 +a3, -703.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 228, 1, -437 +a3, -933.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 230, 1, -437 +a3, -933.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 232, 1, -547 +a3, -1213.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 235, 1, -547 +a3, -1213.6 +b3 , 0 );

a4 = 60;
b4 = 30;
setMoveKey( spep_2 -3 + 236, 1, 131.7 -a4, -72.3 +b4 , 0 );
setMoveKey( spep_2 -3 + 241, 1, 131.7 -a4, -72.3 +b4 , 0 );
--
setMoveKey( spep_2 -3 + 242, 1, 38.2, 68.5 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 104.1, 98.7 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 163, 125.7 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 215, 149.6 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 260, 170.3 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 298.2, 187.7 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 329.4, 202 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 353.7, 213.2 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 371, 221.1 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 381.4, 225.9 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 384.9, 227.5 , 0 );
setMoveKey( spep_2 -3 + 263, 1, 384.9, 227.5 , 0 );
--
setMoveKey( spep_2 -3 + 264, 1, -124.1, -745.4 , 0 );
setMoveKey( spep_2 -3 + 267, 1, -124.1, -745.4 , 0 );
--
setMoveKey( spep_2 -3 + 268, 1, -269.7, -13.8 , 0 );
setMoveKey( spep_2 -3 + 271, 1, -269.7, -13.8 , 0 );
--
setMoveKey( spep_2 -3 + 272, 1, -70.5, 156.1 , 0 );
setMoveKey( spep_2 -3 + 276, 1, -70.5, 156.1 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 39.5, 156 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 39.5, 156 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 125.5, 154 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 125.5, 154 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 157.5, 139 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 157.5, 139 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 173.4, 129.1 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 173.4, 129.1 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 193.3, 109.2 , 0 );
setMoveKey( spep_2 -3 + 302+1, 1, 193.3, 109.2 , 0 );

setScaleKey( spep_2 -3 + 80, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 82, 1, 1.491, 1.491 );
setScaleKey( spep_2 -3 + 84, 1, 1.5225, 1.5225 );
setScaleKey( spep_2 -3 + 86, 1, 1.554, 1.554 );
setScaleKey( spep_2 -3 + 88, 1, 1.575, 1.575 );
setScaleKey( spep_2 -3 + 90, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 92, 1, 1.995, 1.995 );
setScaleKey( spep_2 -3 + 94, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 96, 1, 3.255, 3.255 );
setScaleKey( spep_2 -3 + 98, 1, 4.2, 4.2 );
setScaleKey( spep_2 -3 + 100, 1, 4.2, 4.2 );
--
setScaleKey( spep_2 -3 + 126, 1, 9.4395, 9.4395 );
setScaleKey( spep_2 -3 + 129, 1, 9.4395, 9.4395 );
setScaleKey( spep_2 -3 + 130, 1, 3.78, 3.78 );
setScaleKey( spep_2 -3 + 135, 1, 3.78, 3.78 );
setScaleKey( spep_2 -3 + 136, 1, 9.4395, 9.4395 );
setScaleKey( spep_2 -3 + 139, 1, 9.4395, 9.4395 );
setScaleKey( spep_2 -3 + 140, 1, 3.78, 3.78 );
setScaleKey( spep_2 -3 + 173, 1, 3.78, 3.78 );
--
setScaleKey( spep_2 -3 + 174, 1, 4.55, 4.55 );
setScaleKey( spep_2 -3 + 235, 1, 4.55, 4.55 );
--
setScaleKey( spep_2 -3 + 236, 1, 2.625, 2.625 );
setScaleKey( spep_2 -3 + 241, 1, 2.625, 2.625 );
--
setScaleKey( spep_2 -3 + 242, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 263, 1, 2.73, 2.73 );
--
setScaleKey( spep_2 -3 + 264, 1, 5.775, 5.775 );
setScaleKey( spep_2 -3 + 267, 1, 5.775, 5.775 );
--
setScaleKey( spep_2 -3 + 268, 1, 6.3, 6.3 );
setScaleKey( spep_2 -3 + 271, 1, 6.3, 6.3 );
--
setScaleKey( spep_2 -3 + 272, 1, 3.15, 3.15 );
setScaleKey( spep_2 -3 + 276, 1, 3.15, 3.15 );
setScaleKey( spep_2 -3 + 278, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 282, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 284, 1, 1.995, 1.995 );
setScaleKey( spep_2 -3 + 286, 1, 1.995, 1.995 );
setScaleKey( spep_2 -3 + 288, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 292, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 294, 1, 1.785, 1.785 );
setScaleKey( spep_2 -3 + 298, 1, 1.785, 1.785 );
setScaleKey( spep_2 -3 + 300, 1, 1.6275, 1.6275 );
setScaleKey( spep_2 -3 + 302+1, 1, 1.6275, 1.6275 );


setRotateKey( spep_2 -3 + 80, 1, 0 );
setRotateKey( spep_2 -3 + 88, 1, 0 );
setRotateKey( spep_2 -3 + 90, 1, -0.3 );
setRotateKey( spep_2 -3 + 92, 1, -1.1 );
setRotateKey( spep_2 -3 + 94, 1, -2.5 );
setRotateKey( spep_2 -3 + 96, 1, -4.5 );
setRotateKey( spep_2 -3 + 98, 1, -7 );
setRotateKey( spep_2 -3 + 100, 1, -7 );
--
setRotateKey( spep_2 -3 + 126, 1, -26 );
setRotateKey( spep_2 -3 + 173, 1, -26 );
--
setRotateKey( spep_2 -3 + 174, 1, -99.7 );
setRotateKey( spep_2 -3 + 216, 1, -99.7 );
setRotateKey( spep_2 -3 + 218, 1, -101.2 );
setRotateKey( spep_2 -3 + 235, 1, -101.2 );
--
setRotateKey( spep_2 -3 + 236, 1, -5.8 );
setRotateKey( spep_2 -3 + 241, 1, -5.8 );
--
setRotateKey( spep_2 -3 + 242, 1, -23.8 );
setRotateKey( spep_2 -3 + 244, 1, -19.6 );
setRotateKey( spep_2 -3 + 246, 1, -15.9 );
setRotateKey( spep_2 -3 + 248, 1, -12.6 );
setRotateKey( spep_2 -3 + 250, 1, -9.7 );
setRotateKey( spep_2 -3 + 252, 1, -7.3 );
setRotateKey( spep_2 -3 + 254, 1, -5.3 );
setRotateKey( spep_2 -3 + 256, 1, -3.8 );
setRotateKey( spep_2 -3 + 258, 1, -2.7 );
setRotateKey( spep_2 -3 + 260, 1, -2 );
setRotateKey( spep_2 -3 + 262, 1, -1.8 );
setRotateKey( spep_2 -3 + 263, 1, -1.8 );
--
setRotateKey( spep_2 -3 + 264, 1, -101 );
setRotateKey( spep_2 -3 + 267, 1, -101 );
--
setRotateKey( spep_2 -3 + 268, 1, -11.2 );
setRotateKey( spep_2 -3 + 271, 1, -11.2 );
--
setRotateKey( spep_2 -3 + 272, 1, 60 );
setRotateKey( spep_2 -3 + 276, 1, 60 );
setRotateKey( spep_2 -3 + 278, 1, 64.9 );
setRotateKey( spep_2 -3 + 282, 1, 64.9 );
setRotateKey( spep_2 -3 + 284, 1, 65 );
setRotateKey( spep_2 -3 + 286, 1, 65 );
setRotateKey( spep_2 -3 + 288, 1, 70.5 );
setRotateKey( spep_2 -3 + 292, 1, 70.5 );
setRotateKey( spep_2 -3 + 294, 1, 78.7 );
setRotateKey( spep_2 -3 + 298, 1, 78.7 );
setRotateKey( spep_2 -3 + 300, 1, 86.2 );
setRotateKey( spep_2 -3 + 302+1, 1, 86.2 );

-- ** 音 ** --
--向かっていく
SE010 = playSeVer2( spep_2 + 60, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE010, 51 );

--向かっていく
SE011 = playSeVer2( spep_2 + 88, 1116, "",spep_2 + 122, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 88, SE011, 127 );

--パンチ
SE012 = playSeVer2( spep_2 + 116, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE012, 83 );

--パンチ
SE013 = playSeVer2( spep_2 + 116, 1170, "", 0, 0, 0, -1);

--パンチ
SE014 = playSeVer2( spep_2 + 118, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE014, 87 );

--パンチ
SE015 = playSeVer2( spep_2 + 120, 1153, "", 0, 0, 0, -1);

--掴む
SE016 = playSeVer2( spep_2 + 182, 1007, "", 0, 0, 0, -1);

--掴む
SE017 = playSeVer2( spep_2 + 182, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 182, SE017, 84 );

--引き寄せる
SE018 = playSeVer2( spep_2 + 202, 1004, "", 0, 0, 0, -1);

--膝蹴り
SE019 = playSeVer2( spep_2 + 232, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 232, SE019, 87 );

--膝蹴り
SE020 = playSeVer2( spep_2 + 234, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 234, SE020, 83 );

--膝蹴り
SE021 = playSeVer2( spep_2 + 234, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 234, SE021, 82 );

--敵飛んでいく
SE022 = playSeVer2( spep_2 + 254, 1183, "",spep_2 +300 + 38, 0, 12, -1);

--瞬間移動
SE023 = playSeVer2( spep_2 + 296, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 300;


------------------------------------------------------
-- 空中でラッシュ→蹴り込み(456F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
rush_f = entryEffectLife( spep_3 + 0, SP_07, 456, 0x100, -1, 0, 0, 0 );  --空中でラッシュ→蹴り込み（味方側）	ef_003_ch
setEffMoveKey( spep_3 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 456, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 456, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_f, 0 );
setEffRotateKey( spep_3 + 456, rush_f, 0 );
setEffAlphaKey( spep_3 + 0, rush_f, 255 );
setEffAlphaKey( spep_3 + 456 -1, rush_f, 255 );
setEffAlphaKey( spep_3 + 456, rush_f, 0 );

rush_b = entryEffectLife( spep_3 + 0, SP_08, 456, 0x80, -1, 0, 0, 0 );  --↑背景（味方側）	ef_003_bg
setEffMoveKey( spep_3 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 456, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 456, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_b, 0 );
setEffRotateKey( spep_3 + 456, rush_b, 0 );
setEffAlphaKey( spep_3 + 0, rush_b, 255 );
setEffAlphaKey( spep_3 + 456 -1, rush_b, 255 );
setEffAlphaKey( spep_3 + 456, rush_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 46, 1, 1 );
setDisp( spep_3 -3 + 118, 1, 0 );

setDisp( spep_3 -3 + 184, 1, 1 );
setDisp( spep_3 -3 + 246, 1, 0 );

setDisp( spep_3 -3 + 422, 1, 1 );
--setDisp( spep_3 -3 + 459, 1, 0 );

changeAnime( spep_3 -3 + 46, 1, 106 );
changeAnime( spep_3 -3 + 50, 1, 108 );
changeAnime( spep_3 -3 + 54, 1, 106 );
changeAnime( spep_3 -3 + 58, 1, 108 );
changeAnime( spep_3 -3 + 62, 1, 106 );
changeAnime( spep_3 -3 + 66, 1, 108 );
changeAnime( spep_3 -3 + 70, 1, 106 );
changeAnime( spep_3 -3 + 74, 1, 108 );
changeAnime( spep_3 -3 + 78, 1, 106 );
changeAnime( spep_3 -3 + 82, 1, 108 );
changeAnime( spep_3 -3 + 90, 1, 106 );
changeAnime( spep_3 -3 + 94, 1, 108 );
changeAnime( spep_3 -3 + 102, 1, 106 );
changeAnime( spep_3 -3 + 106, 1, 108 );
changeAnime( spep_3 -3 + 114, 1, 106 );

changeAnime( spep_3 -3 + 184, 1, 7 );
changeAnime( spep_3 -3 + 200, 1, 107 );
changeAnime( spep_3 -3 + 202, 1, 105 );
changeAnime( spep_3 -3 + 210, 1, 107 );
changeAnime( spep_3 -3 + 228, 1, 7 );
changeAnime( spep_3 -3 + 242, 1, 107 );
changeAnime( spep_3 -3 + 244, 1, 105 );

changeAnime( spep_3 -3 + 422, 1, 108 );
changeAnime( spep_3 -3 + 426, 1, 106 );
changeAnime( spep_3 -3 + 428, 1, 5 );

setMoveKey( spep_3 -3 + 46, 1, 20.5, 49.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 20.5, 49.2 , 0 );
setMoveKey( spep_3 -3 + 49, 1, 20.5, 49.2 , 0 );
--
setMoveKey( spep_3 -3 + 50, 1, 98.8, 70.5 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 98.8, 70.5 , 0 );
setMoveKey( spep_3 -3 + 53, 1, 98.8, 70.5 , 0 );
--
setMoveKey( spep_3 -3 + 54, 1, 62.6, 22 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 62.6, 22 , 0 );
setMoveKey( spep_3 -3 + 57, 1, 62.6, 22 , 0 );
--
setMoveKey( spep_3 -3 + 58, 1, 98.8, 70.5 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 98.8, 70.5 , 0 );
setMoveKey( spep_3 -3 + 61, 1, 98.8, 70.5 , 0 );
--
setMoveKey( spep_3 -3 + 62, 1, 34.3, 17 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 34.3, 17 , 0 );
setMoveKey( spep_3 -3 + 65, 1, 34.3, 17 , 0 );
--
setMoveKey( spep_3 -3 + 66, 1, 120.2, 59.8 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 120.2, 59.8 , 0 );
setMoveKey( spep_3 -3 + 69, 1, 120.2, 59.8 , 0 );

setMoveKey( spep_3 -3 + 70, 1, 44.4, 61.4 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 44.4, 61.4 , 0 );
setMoveKey( spep_3 -3 + 73, 1, 44.4, 61.4 , 0 );
--
setMoveKey( spep_3 -3 + 74, 1, 98.8, 91.9 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 98.8, 91.9 , 0 );
setMoveKey( spep_3 -3 + 77, 1, 98.8, 91.9 , 0 );
--
setMoveKey( spep_3 -3 + 78, 1, 73.3, 54.1 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 73.3, 54.1 , 0 );
setMoveKey( spep_3 -3 + 81, 1, 73.3, 54.1 , 0 );
--
setMoveKey( spep_3 -3 + 82, 1, 87.1, 45.4 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 87.1, 45.4 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 109.5, 113.3 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 109.5, 113.3 , 0 );
setMoveKey( spep_3 -3 + 89, 1, 109.5, 113.3 , 0 );
--
setMoveKey( spep_3 -3 + 90, 1, 84, 75.5 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 84, 75.5 , 0 );
setMoveKey( spep_3 -3 + 93, 1, 84, 75.5 , 0 );

setMoveKey( spep_3 -3 + 94, 1, 97.8, 66.8 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 97.8, 66.8 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 109.5, 124 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 109.5, 124 , 0 );
setMoveKey( spep_3 -3 + 101, 1, 109.5, 124 , 0 );
--
setMoveKey( spep_3 -3 + 102, 1, 84, 75.5 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 84, 75.5 , 0 );
setMoveKey( spep_3 -3 + 105, 1, 84, 75.5 , 0 );
--
setMoveKey( spep_3 -3 + 106, 1, 97.8, 66.8 , 0 );
setMoveKey( spep_3 -3 + 109, 1, 97.8, 66.8 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 109.5, 124 , 0 );
setMoveKey( spep_3 -3 + 113, 1, 109.5, 124 , 0 );
--
setMoveKey( spep_3 -3 + 114, 1, 94.7, 86.2 , 0 );
setMoveKey( spep_3 -3 + 117, 1, 94.7, 86.2 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 94.7, 86.2 , 0 );

a5 = 150;
b5 = 540;
setMoveKey( spep_3 -3 + 184, 1, 501.6 +a5, -556.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 186, 1, 501.6 +a5, -556.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 561.6 +a5, -506.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 190, 1, 381.6 +a5, -506.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 192, 1, 31.6 +a5, -756.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 194, 1, -28.4 +a5, -896.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 196, 1, -28.4 +a5, -896.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 198, 1, 61.5 +a5, -986.6 +b5 , 0 );
setMoveKey( spep_3 -3 + 199, 1, 61.5 +a5, -986.6 +b5 , 0 );

a6 = 300;
--b6 = 540;
setMoveKey( spep_3 -3 + 200, 1, 220.8 -a6, -456.9 , 0 );
setMoveKey( spep_3 -3 + 201, 1, 220.8 -a6, -456.9 , 0 );
--
setMoveKey( spep_3 -3 + 202, 1, 44.7, 8.6 , 0 );
setMoveKey( spep_3 -3 + 204, 1, 104.6, 48.5 , 0 );
setMoveKey( spep_3 -3 + 206, 1, 104.6, 48.5 , 0 );
setMoveKey( spep_3 -3 + 208, 1, 104.7, 48.5 , 0 );
setMoveKey( spep_3 -3 + 209, 1, 104.7, 48.5 , 0 );

a7 =350;
setMoveKey( spep_3 -3 + 210, 1, 170.8 -a7, 63.1 , 0 );
setMoveKey( spep_3 -3 + 212, 1, 170.8 -a7, 263.1 , 0 );
setMoveKey( spep_3 -3 + 214, 1, 170.8 -a7, 133.1 , 0 );
setMoveKey( spep_3 -3 + 216, 1, 200.7 -a7, -272 , 0 );
setMoveKey( spep_3 -3 + 218, 1, 200.7 -a7, -272 , 0 );
setMoveKey( spep_3 -3 + 220, 1, 287.7 -a7, -554 , 0 );
setMoveKey( spep_3 -3 + 222, 1, 224.8 -a7, -420.9 , 0 );
setMoveKey( spep_3 -3 + 224, 1, 209.8 -a7, -235.9 , 0 );
setMoveKey( spep_3 -3 + 226, 1, 209.8 -a7, -235.9 , 0 );
setMoveKey( spep_3 -3 + 227, 1, 209.8 -a7, -235.9 , 0 );
--
setMoveKey( spep_3 -3 + 228, 1, 501.6 +a5, -556.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 230, 1, 561.6 +a5, -506.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 232, 1, 381.6 +a5, -506.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 234, 1, 31.6 +a5, -756.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 236, 1, 31.6 +a5, -756.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 238, 1, -28.4 +a5, -896.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 240, 1, 61.5 +a5, -986.6 +b5 , 0 );
setMoveKey( spep_3 -3 + 241, 1, 61.5 +a5, -986.6 +b5 , 0 );
--
setMoveKey( spep_3 -3 + 242, 1, 220.8 -a6, -456.9 , 0 );
setMoveKey( spep_3 -3 + 243, 1, 220.8 -a6, -456.9 , 0 );
--
setMoveKey( spep_3 -3 + 244, 1, 44.7, 8.6 , 0 );
setMoveKey( spep_3 -3 + 246, 1, 44.7, 8.6 , 0 );

setMoveKey( spep_3 -3 + 422, 1, -25.4, -31.9 , 0 );
setMoveKey( spep_3 -3 + 425, 1, -25.4, -31.9 , 0 );
--
setMoveKey( spep_3 -3 + 426, 1, 47.1, 143 , 0 );
setMoveKey( spep_3 -3 + 427, 1, 47.1, 143 , 0 );
--
setMoveKey( spep_3 -3 + 428, 1, 84.6, -100.9 , 0 );
setMoveKey( spep_3 -3 + 430, 1, 101.9, 153.9 , 0 );
setMoveKey( spep_3 -3 + 432, 1, 120.8, -35 , 0 );
setMoveKey( spep_3 -3 + 434, 1, 139.3, 123.1 , 0 );
setMoveKey( spep_3 -3 + 436, 1, 156.3, 9.4 , 0 );
setMoveKey( spep_3 -3 + 438, 1, 171.2, 104.2 , 0 );
setMoveKey( spep_3 -3 + 440, 1, 183.4, 31.4 , 0 );
setMoveKey( spep_3 -3 + 442, 1, 192.9, 93.3 , 0 );
setMoveKey( spep_3 -3 + 444, 1, 200.6, 42 , 0 );
setMoveKey( spep_3 -3 + 446, 1, 206.7, 86.5 , 0 );
setMoveKey( spep_3 -3 + 448, 1, 211.6, 51.9 , 0 );
setMoveKey( spep_3 -3 + 450, 1, 215.4, 52.2 , 0 );
setMoveKey( spep_3 -3 + 452, 1, 218.4, 52.4 , 0 );
setMoveKey( spep_3 -3 + 454, 1, 220.7, 52.6 , 0 );
setMoveKey( spep_3 -3 + 456, 1, 222.6, 52.7 , 0 );
setMoveKey( spep_3 -3 + 458, 1, 222.6, 52.7 , 0 );
--setMoveKey( spep_3 -3 + 459, 1, 224.2, 52.9 , 0 );



setScaleKey( spep_3 -3 + 46, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 48, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 49, 1, 2.112, 2.112 );
--
setScaleKey( spep_3 -3 + 50, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 52, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 53, 1, 2.304, 2.304 );
--
setScaleKey( spep_3 -3 + 54, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 56, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 57, 1, 2.112, 2.112 );
--
setScaleKey( spep_3 -3 + 58, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 60, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 61, 1, 2.304, 2.304 );
--
setScaleKey( spep_3 -3 + 62, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 64, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 65, 1, 2.112, 2.112 );
--
setScaleKey( spep_3 -3 + 66, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 68, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 69, 1, 2.304, 2.304 );
--
setScaleKey( spep_3 -3 + 70, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 72, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 73, 1, 2.112, 2.112 );
--
setScaleKey( spep_3 -3 + 74, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 76, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 77, 1, 2.304, 2.304 );
--
setScaleKey( spep_3 -3 + 78, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 80, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 81, 1, 2.112, 2.112 );
--
setScaleKey( spep_3 -3 + 82, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 84, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 86, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 88, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 89, 1, 2.304, 2.304 );
--
setScaleKey( spep_3 -3 + 90, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 92, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 93, 1, 2.112, 2.112 );
--
setScaleKey( spep_3 -3 + 94, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 96, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 98, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 100, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 101, 1, 2.304, 2.304 );
--
setScaleKey( spep_3 -3 + 102, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 104, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 105, 1, 2.112, 2.112 );
--
setScaleKey( spep_3 -3 + 106, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 109, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 110, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 113, 1, 2.304, 2.304 );
--
setScaleKey( spep_3 -3 + 114, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 117, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 118, 1, 2.112, 2.112 );

setScaleKey( spep_3 -3 + 184, 1, 6.392, 6.392 );
setScaleKey( spep_3 -3 + 190, 1, 6.392, 6.392 );
setScaleKey( spep_3 -3 + 192, 1, 5.592, 5.592 );
setScaleKey( spep_3 -3 + 198, 1, 5.592, 5.592 );
setScaleKey( spep_3 -3 + 199, 1, 5.592, 5.592 );
--
setScaleKey( spep_3 -3 + 200, 1, 5.592, 5.592 );
setScaleKey( spep_3 -3 + 201, 1, 5.592, 5.592 );
--
setScaleKey( spep_3 -3 + 202, 1, 9.588, 9.588 );
setScaleKey( spep_3 -3 + 204, 1, 9.348, 9.348 );
setScaleKey( spep_3 -3 + 206, 1, 9.348, 9.348 );
setScaleKey( spep_3 -3 + 208, 1, 8.988, 8.988 );
setScaleKey( spep_3 -3 + 209, 1, 8.239, 8.239 );
--
setScaleKey( spep_3 -3 + 210, 1, 5.592, 5.592 );
setScaleKey( spep_3 -3 + 214, 1, 5.592, 5.592 );
setScaleKey( spep_3 -3 + 216, 1, 6.392, 6.392 );
setScaleKey( spep_3 -3 + 220, 1, 6.392, 6.392 );
setScaleKey( spep_3 -3 + 222, 1, 4.792, 4.792 );
setScaleKey( spep_3 -3 + 226, 1, 4.792, 4.792 );
setScaleKey( spep_3 -3 + 227, 1, 4.792, 4.792 );

setScaleKey( spep_3 -3 + 228, 1, 6.392, 6.392 );
setScaleKey( spep_3 -3 + 232, 1, 6.392, 6.392 );
setScaleKey( spep_3 -3 + 234, 1, 5.592, 5.592 );
setScaleKey( spep_3 -3 + 241, 1, 5.592, 5.592 );
--
setScaleKey( spep_3 -3 + 242, 1, 5.592, 5.592 );
setScaleKey( spep_3 -3 + 243, 1, 5.592, 5.592 );
--
setScaleKey( spep_3 -3 + 244, 1, 9.588, 9.588 );
setScaleKey( spep_3 -3 + 246, 1, 9.588, 9.588 );

setScaleKey( spep_3 -3 + 422, 1,  2.16, 2.16 );
setScaleKey( spep_3 -3 + 425, 1,  2.16, 2.16 );
--
setScaleKey( spep_3 -3 + 426, 1, 1.89, 1.89 );
setScaleKey( spep_3 -3 + 427, 1, 1.89, 1.89 );
--
setScaleKey( spep_3 -3 + 428, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 430, 1, 1.56, 1.56 );
setScaleKey( spep_3 -3 + 432, 1, 1.356, 1.356 );
setScaleKey( spep_3 -3 + 434, 1, 1.188, 1.188 );
setScaleKey( spep_3 -3 + 436, 1, 1.032, 1.032 );
setScaleKey( spep_3 -3 + 438, 1, 0.912, 0.912 );
setScaleKey( spep_3 -3 + 440, 1, 0.816, 0.816 );
setScaleKey( spep_3 -3 + 442, 1, 0.744, 0.744 );
setScaleKey( spep_3 -3 + 444, 1, 0.684, 0.684 );
setScaleKey( spep_3 -3 + 446, 1, 0.636, 0.636 );
setScaleKey( spep_3 -3 + 448, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 450, 1, 0.576, 0.576 );
setScaleKey( spep_3 -3 + 452, 1, 0.552, 0.552 );
setScaleKey( spep_3 -3 + 454, 1, 0.54, 0.54 );
setScaleKey( spep_3 -3 + 456, 1, 0.528, 0.528 );
setScaleKey( spep_3 -3 + 458, 1, 0.516, 0.516 );
--setScaleKey( spep_3 -3 + 459, 1, 0.516, 0.516 );



setRotateKey( spep_3 -3 + 46, 1, -35 );
setRotateKey( spep_3 -3 + 48, 1, -35 );
setRotateKey( spep_3 -3 + 49, 1, -35 );
--
setRotateKey( spep_3 -3 + 50, 1, -1.9 );
setRotateKey( spep_3 -3 + 52, 1, -1.9 );
setRotateKey( spep_3 -3 + 53, 1, -1.9 );
--
setRotateKey( spep_3 -3 + 54, 1, -51.4 );
setRotateKey( spep_3 -3 + 56, 1, -51.4 );
setRotateKey( spep_3 -3 + 57, 1, -51.4 );
--
setRotateKey( spep_3 -3 + 58, 1, 14.8 );
setRotateKey( spep_3 -3 + 60, 1, 14.8 );
setRotateKey( spep_3 -3 + 61, 1, 14.8 );
--
setRotateKey( spep_3 -3 + 62, 1, -67.4 );
setRotateKey( spep_3 -3 + 64, 1, -67.4 );
setRotateKey( spep_3 -3 + 65, 1, -67.4 );
--
setRotateKey( spep_3 -3 + 66, 1, 14.8 );
setRotateKey( spep_3 -3 + 68, 1, 14.8 );
setRotateKey( spep_3 -3 + 69, 1, 14.8 );

setRotateKey( spep_3 -3 + 70, 1, -65.6 );
setRotateKey( spep_3 -3 + 72, 1, -65.6 );
setRotateKey( spep_3 -3 + 73, 1, -65.6 );
--
setRotateKey( spep_3 -3 + 74, 1, -1.9 );
setRotateKey( spep_3 -3 + 76, 1, -1.9 );
setRotateKey( spep_3 -3 + 77, 1, -1.9 );
--
setRotateKey( spep_3 -3 + 78, 1, -51.4 );
setRotateKey( spep_3 -3 + 80, 1, -51.4 );
setRotateKey( spep_3 -3 + 81, 1, -51.4 );
--
setRotateKey( spep_3 -3 + 82, 1, 14.5 );
setRotateKey( spep_3 -3 + 84, 1, 14.5 );
setRotateKey( spep_3 -3 + 86, 1, -1.9 );
setRotateKey( spep_3 -3 + 88, 1, -1.9 );
setRotateKey( spep_3 -3 + 89, 1, -1.9 );
--
setRotateKey( spep_3 -3 + 90, 1, -51.4 );
setRotateKey( spep_3 -3 + 92, 1, -51.4 );
setRotateKey( spep_3 -3 + 93, 1, -51.4 );
--
setRotateKey( spep_3 -3 + 94, 1, 14.5 );
setRotateKey( spep_3 -3 + 96, 1, 14.5 );
setRotateKey( spep_3 -3 + 98, 1, -1.9 );
setRotateKey( spep_3 -3 + 100, 1, -1.9 );
setRotateKey( spep_3 -3 + 101, 1, -1.9 );
--
setRotateKey( spep_3 -3 + 102, 1, -51.4 );
setRotateKey( spep_3 -3 + 104, 1, -51.4 );
setRotateKey( spep_3 -3 + 105, 1, -51.4 );
--
setRotateKey( spep_3 -3 + 106, 1, 14.5 );
setRotateKey( spep_3 -3 + 109, 1, 14.5 );
setRotateKey( spep_3 -3 + 110, 1, -1.9 );
setRotateKey( spep_3 -3 + 113, 1, -1.9 );
--
setRotateKey( spep_3 -3 + 114, 1, -51.4 );
setRotateKey( spep_3 -3 + 118, 1, -51.4 );

setRotateKey( spep_3 -3 + 184, 1, 60.7 );
setRotateKey( spep_3 -3 + 186, 1, 60.7 );
setRotateKey( spep_3 -3 + 188, 1, 52.7 );
setRotateKey( spep_3 -3 + 190, 1, 60.7 );
setRotateKey( spep_3 -3 + 196, 1, 60.7 );
setRotateKey( spep_3 -3 + 198, 1, 48.2 );
setRotateKey( spep_3 -3 + 199, 1, 48.2 );
--
setRotateKey( spep_3 -3 + 200, 1, -130.8 );
setRotateKey( spep_3 -3 + 201, 1, -130.8 );
--
setRotateKey( spep_3 -3 + 202, 1, 14.6 );
setRotateKey( spep_3 -3 + 204, 1, 19 );
setRotateKey( spep_3 -3 + 208, 1, 19 );
setRotateKey( spep_3 -3 + 209, 1, 19 );
--
setRotateKey( spep_3 -3 + 210, 1, -130.8 );
setRotateKey( spep_3 -3 + 220, 1, -130.8 );
setRotateKey( spep_3 -3 + 222, 1, -130.9 );
setRotateKey( spep_3 -3 + 226, 1, -130.9 );
setRotateKey( spep_3 -3 + 227, 1, -130.9 );
--
setRotateKey( spep_3 -3 + 228, 1, 60.7 );
setRotateKey( spep_3 -3 + 230, 1, 52.7 );
setRotateKey( spep_3 -3 + 232, 1, 60.7 );
setRotateKey( spep_3 -3 + 238, 1, 60.7 );
setRotateKey( spep_3 -3 + 240, 1, 48.2 );
setRotateKey( spep_3 -3 + 241, 1, 48.2 );
--
setRotateKey( spep_3 -3 + 242, 1, -130.8 );
setRotateKey( spep_3 -3 + 243, 1, -130.8 );
--
setRotateKey( spep_3 -3 + 244, 1, 14.6 );
setRotateKey( spep_3 -3 + 246, 1, 14.6 );

setRotateKey( spep_3 -3 + 422, 1, 42.6 );
setRotateKey( spep_3 -3 + 425, 1, 42.6 );
--
setRotateKey( spep_3 -3 + 426, 1, 0.3 );
setRotateKey( spep_3 -3 + 427, 1, 0.3 );
--
setRotateKey( spep_3 -3 + 428, 1, 62.7 );
setRotateKey( spep_3 -3 + 458, 1, 62.7 );
--setRotateKey( spep_3 -3 + 459, 1, 62.7 );

-- ** 音 ** --
--振りかぶる
SE024 = playSeVer2( spep_3 + 24, 1004, "", 0, 0, 0, -1);
setPitch( spep_3 + 24, SE024, -400 );
setTimeStretch( SE024, 0.73, 30, 4 );

--俯瞰ラッシュ
SE025 = playSeVer2( spep_3 + 38, 1000, "", 0, 0, 0, -1);

--俯瞰ラッシュ
SE026 = playSeVer2( spep_3 + 38, 1187, "",spep_3 + 60, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 38, SE026, 81 );

--俯瞰ラッシュ
SE027 = playSeVer2( spep_3 + 46, 1187, "",spep_3 + 68, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 46, SE027, 84 );

--俯瞰ラッシュ
SE028 = playSeVer2( spep_3 + 52, 1009, "", 0, 0, 0, -1);

--俯瞰ラッシュ
SE029 = playSeVer2( spep_3 + 58, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 58, SE029, 89 );

--俯瞰ラッシュ
SE030 = playSeVer2( spep_3 + 58, 1187, "",spep_3 + 80, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 58, SE030, 81 );

--俯瞰ラッシュ
SE031 = playSeVer2( spep_3 + 70, 1187, "",spep_3 + 92, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 70, SE031, 85 );

--俯瞰ラッシュ
SE032 = playSeVer2( spep_3 + 78, 1187, "",spep_3 + 102, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 78, SE032, 76 );

--俯瞰ラッシュ
SE033 = playSeVer2( spep_3 + 86, 1187, "",spep_3 + 108, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 86, SE033, 78 );

--俯瞰ラッシュ
SE034 = playSeVer2( spep_3 + 86, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 86, SE034, 92 );

--俯瞰ラッシュ
SE035 = playSeVer2( spep_3 + 96, 1187, "",spep_3 + 118, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 96, SE035, 82 );

--俯瞰ラッシュ
SE036 = playSeVer2( spep_3 + 96, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 96, SE036, 89 );

--正面ラッシュ
SE037 = playSeVer2( spep_3 + 106, 1187, "",spep_3 + 138, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 106, SE037, 68 );

--正面ラッシュ
SE038 = playSeVer2( spep_3 + 108, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 108, SE038, 97 );

--正面ラッシュ
SE039 = playSeVer2( spep_3 + 114, 1187, "",spep_3 + 146, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 114, SE039, 82 );

--正面ラッシュ
SE040 = playSeVer2( spep_3 + 114, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 114, SE040, 95 );

--正面ラッシュ
SE041 = playSeVer2( spep_3 + 126, 1187, "",spep_3 + 158, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 126, SE041, 84 );

--正面ラッシュ
SE042 = playSeVer2( spep_3 + 138, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 138, SE042, 89 );

--正面ラッシュ
SE043 = playSeVer2( spep_3 + 140, 1187, "",spep_3 + 172, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 140, SE043, 91 );
setPitch( spep_3 + 140, SE043, -200 );
setTimeStretch( SE043, 0.87, 30, 4 );

--正面ラッシュ
SE044 = playSeVer2( spep_3 + 154, 1187, "",spep_3 + 186, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 154, SE044, 89 );

--正面ラッシュ
SE045 = playSeVer2( spep_3 + 162, 1010, "", 0, 0, 0, -1);

--正面ラッシュ
SE046 = playSeVer2( spep_3 + 164, 1187, "",spep_3 + 196, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 164, SE046, 83 );

--敵側ラッシュ
SE047 = playSeVer2( spep_3 + 176, 1187, "",spep_3 + 198, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 176, SE047, 74 );
setPitch( spep_3 + 176, SE047, -200 );
setTimeStretch( SE047, 0.87, 30, 4 );

--敵側ラッシュ
SE048 = playSeVer2( spep_3 + 176, 1000, "", 0, 0, 0, -1);

--敵側ラッシュ
SE049 = playSeVer2( spep_3 + 192, 1187, "",spep_3 + 214, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 192, SE049, 86 );

--敵側ラッシュ
SE050 = playSeVer2( spep_3 + 194, 1190, "", 0, 0, 0, -1);

--敵側ラッシュ
SE051 = playSeVer2( spep_3 + 202, 1187, "",spep_3 + 224, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 202, SE051, 81 );

--敵側ラッシュ
SE052 = playSeVer2( spep_3 + 224, 1110, "", 0, 0, 0, -1);

--敵側ラッシュ
SE053 = playSeVer2( spep_3 + 224, 1187, "",spep_3 + 246, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 224, SE053, 82 );
setPitch( spep_3 + 224, SE053, -200 );
setTimeStretch( SE053, 0.87, 30, 4 );

--大振りラッシュ
SE054 = playSeVer2( spep_3 + 228, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 228, SE054, 157 );

--大振りラッシュ
SE055 = playSeVer2( spep_3 + 234, 1187, "",spep_3 + 294, 0, 36, -1);
setSeVolumeByWorkId( spep_3 + 234, SE055, 84 );

--大振りラッシュ
SE056 = playSeVer2( spep_3 + 234, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 234, SE056, 94 );

--大振りラッシュ
SE057 = playSeVer2( spep_3 + 258, 1003, "", 0, 0, 0, -1);

--大振りラッシュ
SE058 = playSeVer2( spep_3 + 266, 1187, "",spep_3 + 326, 0, 48, -1);
setSeVolumeByWorkId( spep_3 + 266, SE058, 84 );
setPitch( spep_3 + 266, SE058, -200 );
setTimeStretch( SE058, 0.87, 30, 4 );

--大振りラッシュ
SE059 = playSeVer2( spep_3 + 266, 1001, "", 0, 0, 0, -1);

--大振りラッシュ
SE060 = playSeVer2( spep_3 + 286, 1187, "",spep_3 + 346, 0, 48, -1);
setSeVolumeByWorkId( spep_3 + 286, SE060, 85 );

--大振りラッシュ
SE061 = playSeVer2( spep_3 + 286, 1153, "",spep_3 + 318, 0, 12, -1);

--大振りラッシュ
SE062 = playSeVer2( spep_3 + 298, 1003, "", 0, 0, 0, -1);

--大振りラッシュ
SE063 = playSeVer2( spep_3 + 310, 1187, "",spep_3 + 368, 0, 46, -1);
setPitch( spep_3 + 310, SE063, -200 );
setTimeStretch( SE063, 0.87, 30, 4 );

--大振りラッシュ
SE064 = playSeVer2( spep_3 + 310, 1000, "", 0, 0, 0, -1);

--大振りラッシュ
SE065 = playSeVer2( spep_3 + 328, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 328, SE065, 141 );

--大振りラッシュ
SE066 = playSeVer2( spep_3 + 334, 1187, "",spep_3 + 402, 0, 56, -1);

--大振りラッシュ
SE067 = playSeVer2( spep_3 + 334, 1009, "", 0, 0, 0, -1);

--振りかぶる
SE068 = playSeVer2( spep_3 + 362, 1116, "",spep_3 + 398, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 362, SE068, 124 );
setPitch( spep_3 + 362, SE068, -300 );
setTimeStretch( SE068, 0.8, 30, 4 );

--振りかぶる
SE069 = playSeVer2( spep_3 + 362, 1004, "", 0, 0, 0, -1);

--蹴る
SE071 = playSeVer2( spep_3 + 404, 1003, "", 0, 0, 0, -1);

--蹴る
SE073 = playSeVer2( spep_3 + 416, 1187, "",spep_3 + 438, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 416, SE073, 75 );

--蹴る
SE074 = playSeVer2( spep_3 + 416, 1120, "",spep_3 +456 + 30, 0, 14, -1);

--敵飛んでいく
SE075 = playSeVer2( spep_3 + 434, 1183, "", 0, 0, 0, -1);

--敵飛んでいく
SE076 = playSeVer2( spep_3 + 434, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 434, SE076, 56 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 456 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 456;


------------------------------------------------------
-- 敵が水しぶきをあげて海に激突(326F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --敵が水しぶきをあげて海に激突（味方側）	ef_004
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 326, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 326, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 326, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 326, finish_b, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 64, 1, 0 );

setDisp( spep_4 -3 + 106, 1, 1 );
setDisp( spep_4 -3 + 116, 1, 0 );
changeAnime( spep_4 + 0, 1, 107 );
changeAnime( spep_4 -3 + 106, 1, 5 );

setMoveKey( spep_4 + 0, 1, -145.8, 98.4 , 0 );
setMoveKey( spep_4 + 1, 1, -145.7, 98.4 , 0 );
setMoveKey( spep_4 + 2, 1, -145.5, 98.5 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -145.4, 98.5 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -145.2, 98.5 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -145.1, 98.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -144.9, 98.7 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -144.6, 98.9 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -144.4, 99.1 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -144.2, 99.2 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -144, 99.4 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -143.7, 99.6 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -143.5, 99.7 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -143.3, 99.9 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -139.3, 96.9 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -135.3, 95.9 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -117.8, 89.4 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -14.8, 37.2 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -13.8, 38.2 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 256.2, -92.4 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 251.2, -116.7 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -98.8, 42.8 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -98.8, 42.8 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -97.8, 44.8 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -98.8, 42.8 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -97.8, 44.8 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -97.8, 41.8 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -96.8, 43.8 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -97.8, 41.8 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -97.8, 43.8 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -97.8, 41.8 , 0 );
--
setMoveKey( spep_4 -3 + 106, 1, -598.4, 450.1 , 0 );
setMoveKey( spep_4 -3 + 108, 1, -303.2, 235.4 , 0 );
setMoveKey( spep_4 -3 + 110, 1, -29, 60.2 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 79, -22.6 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 79.9, -23.5 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 79.9, -23.5 , 0 );


setScaleKey( spep_4 + 0, 1, 0.07, 0.07 );
setScaleKey( spep_4 + 1, 1, 0.07, 0.07 );
setScaleKey( spep_4 + 2, 1, 0.077, 0.077 );
setScaleKey( spep_4 -3 + 6, 1, 0.077, 0.077 );
setScaleKey( spep_4 -3 + 8, 1, 0.084, 0.084 );
--setScaleKey( spep_4 -3 + 16, 1, 0.084, 0.084 );
setScaleKey( spep_4 -3 + 18, 1, 0.091, 0.091 );
--setScaleKey( spep_4 -3 + 26, 1, 0.091, 0.091 );
setScaleKey( spep_4 -3 + 28, 1, 0.098, 0.098 );
setScaleKey( spep_4 -3 + 30, 1, 0.112, 0.112 );
setScaleKey( spep_4 -3 + 32, 1, 0.119, 0.119 );
setScaleKey( spep_4 -3 + 34, 1, 0.28, 0.28 );
setScaleKey( spep_4 -3 + 36, 1, 0.28, 0.28 );
setScaleKey( spep_4 -3 + 38, 1, 1.19, 1.19 );
setScaleKey( spep_4 -3 + 40, 1, 1.54, 1.54 );
setScaleKey( spep_4 -3 + 42, 1, 2.31, 2.31 );
setScaleKey( spep_4 -3 + 63, 1, 2.31, 2.31 );
setScaleKey( spep_4 -3 + 64, 1, 2.31, 2.31 );
--
setScaleKey( spep_4 -3 + 106, 1, 10, 10 );
setScaleKey( spep_4 -3 + 108, 1, 5, 5 );
setScaleKey( spep_4 -3 + 110, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 112, 1, 0.16, 0.16 );
setScaleKey( spep_4 -3 + 116, 1, 0.15, 0.15 );


setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 64, 1, 0 );
--
setRotateKey( spep_4 -3 + 106, 1, 92.3 );
setRotateKey( spep_4 -3 + 116, 1, 92.3 );

-- ** 音 ** --
--敵横切る
SE070 = playSeVer2( spep_4 + 16, 1175, "",spep_4 + 80, 14, 40, -1);
setSeVolumeByWorkId( spep_4 + 16, SE070, 24 );
setStartTimeMs( SE070,  1233 );

--敵横切る
SE072 = playSeVer2( spep_4 + 12, 1278, "",spep_4 + 80, 18, 40, -1);
setSeVolumeByWorkId( spep_4 + 12, SE072, 45 );
setStartTimeMs( SE072,  1067 );
setPitch( spep_4 + 12, SE072, -400 );
setTimeStretch( SE072, 0.73, 30, 4 );

--稲光
SE077 = playSeVer2( spep_4 + 60, 1147, "",spep_4 + 170, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 60, SE077, 64 );

--敵飛んでいく加速
SE078 = playSeVer2( spep_4 + 102, 1277, "", 0, 0, 0, -1);

--水切りして爆発
SE079 = playSeVer2( spep_4 + 154, 1163, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_4 + 154, SE079, 119 );
setStartTimeMs( SE079,  317 );

--水切りして爆発
SE080 = playSeVer2( spep_4 + 174, 1163, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_4 + 174, SE080, 135 );
setStartTimeMs( SE080,  317 );

--水切りして爆発
SE081 = playSeVer2( spep_4 + 156, 1023, "", 0, 0, 0, -1);

--水切りして爆発
SE082 = playSeVer2( spep_4 + 180, 1163, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_4 + 180, SE082, 126 );
setStartTimeMs( SE082,  300 );

--水切りして爆発
SE083 = playSeVer2( spep_4 + 182, 1024, "", 0, 0, 0, -1);

--水切りして爆発
SE084 = playSeVer2( spep_4 + 192, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 192, SE084, 83 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 326 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景


-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_4 + 88 );
--entryFade( spep_4 +210 - 4, 2,  4, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_4 + 210 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- キャラ対峙(78F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 86, 0x100, -1, 0, 0, 0 );  --キャラ対峙（味方側）   ef_001_ch
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 86, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 86, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 86 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 86, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_03r, 86, 0x80, -1, 0, 0, 0 );  --敵にかかる煙（味方側）   ef_001_bg_smoke
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 86, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 86, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 86 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 86, first_b, 0 );

first_e = entryEffectLife( spep_0 + 0, SP_02r, 86, 0x80, -1, 0, 0, 0 );  --↑背景（味方側）  ef_001_bg
setEffMoveKey( spep_0 + 0, first_e, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, first_e, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_e, -1.0, 1.0 );
setEffScaleKey( spep_0 + 86, first_e, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_e, 0 );
setEffRotateKey( spep_0 + 86, first_e, 0 );
setEffAlphaKey( spep_0 + 0, first_e, 255 );
setEffAlphaKey( spep_0 + 86 -1, first_e, 255 );
setEffAlphaKey( spep_0 + 86, first_e, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 155, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 155, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 155, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 89, 1, 0 );
changeAnime( spep_0 + 0, 1, 100 );

setBlendColor( spep_0 + 40 -1, 1, 3, 0.20, 0.23, 0.53, 0.6 );
setBlendColor( spep_0 + 44 -1, 1, 3, 0.20, 0.23, 0.53, 0.8 );
setBlendColor( spep_0 + 52 -1, 1, 3, 0.20, 0.23, 0.53, 0.6 );
setBlendColor( spep_0 + 56 -1, 1, 3, 0.20, 0.23, 0.53, 0.8 );
setBlendColor( spep_0 + 62 -1, 1, 3, 0.20, 0.23, 0.53, 0.6 );
setBlendColor( spep_0 + 64 -1, 1, 3, 0.20, 0.23, 0.53, 0 );

setMoveKey( spep_0 + 0, 1, 238.6, -223 , 0 );
setMoveKey( spep_0 + 1, 1, 238.1, -223 , 0 );
setMoveKey( spep_0 + 2, 1, 237.6, -223 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 237.1, -223 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 237.1, -223 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 236.6, -223 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 236.6, -223 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 236.1, -223 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 235.6, -223 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 235.1, -223 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 234.6, -223 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 234.1, -223 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 233.6, -223 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 233.1, -223 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 232.6, -223 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 232.1, -223 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 231.6, -223 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 231.1, -223 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 230.6, -223 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 230.1, -223 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 229.6, -223 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 229.1, -223 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 228.6, -223 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 228.1, -223 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 227.6, -223 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 227.1, -223 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 226.6, -223 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 226.1, -263 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 225.6, -257 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 225.1, -193 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 224.6, -235 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 224.1, -203 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 223.6, -233 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 223.1, -211 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 222.6, -227 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 222.1, -223 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 221.6, -223 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 221.1, -223 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 220.6, -223 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 220.1, -223 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 219.6, -223 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 219.1, -223 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 218.6, -223 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 218.1, -223 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 217.6, -223 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 217.1, -223 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 216.6, -223 , 0 );
setMoveKey( spep_0 -3 + 89, 1, 216.6, -223 , 0 );

setScaleKey( spep_0 + 0, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 1, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 2, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 3, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 4, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 5, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 6, 1, 1.44, 1.44 );
setScaleKey( spep_0 -3 + 89, 1, 1.44, 1.44 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 89, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setPitch( spep_0 + 0, SE001, -600 );
setTimeStretch( SE001, 0.6, 30, 4 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1229, "",spep_0 +86 + 10, 0, 4, -1);

--顔カットイン
SE003 = playSeVer2( spep_0 + 4, 1018, "", 0, 0, 0, -1);

--雷
SE004 = playSeVer2( spep_0 + 40, 1231, "",spep_0 +78 + 86, 0, 4, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;


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
SE_CUTIN = playSe( spep_1 + 0, SE_05 );

--踏ん張る
SE006 = playSeVer2( spep_1 + 84, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE006, 80 );

--踏ん張る
SE007 = playSeVer2( spep_1 + 84, 1033, "",spep_1 +94 + 26, 0, 14, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 突進_ボディブローから膝(300F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
charge_f = entryEffectLife( spep_2 + 0, SP_04r, 300, 0x100, -1, 0, 0, 0 );  --突進_ボディブローから膝（味方側）  ef_002_ch
setEffMoveKey( spep_2 + 0, charge_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 300, charge_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, charge_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 300, charge_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, charge_f, 0 );
setEffRotateKey( spep_2 + 300, charge_f, 0 );
setEffAlphaKey( spep_2 + 0, charge_f, 255 );
setEffAlphaKey( spep_2 + 300 -1, charge_f, 255 );
setEffAlphaKey( spep_2 + 300, charge_f, 0 );

charge_b = entryEffectLife( spep_2 + 0, SP_06r, 300, 0x80, -1, 0, 0, 0 );  --↑背景（味方側）    ef_002_bg
setEffMoveKey( spep_2 + 0, charge_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 300, charge_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, charge_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 300, charge_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, charge_b, 0 );
setEffRotateKey( spep_2 + 300, charge_b, 0 );
setEffAlphaKey( spep_2 + 0, charge_b, 255 );
setEffAlphaKey( spep_2 + 300 -1, charge_b, 255 );
setEffAlphaKey( spep_2 + 300, charge_b, 0 );

charge_e = entryEffectLife( spep_2 + 0, SP_05r, 300, 0x80, -1, 0, 0, 0 );  --敵をつかんでいる裏側の手（味方側）   ef_002_ch_ura
setEffMoveKey( spep_2 + 0, charge_e, 0, 0 , 0 );
setEffMoveKey( spep_2 + 300, charge_e, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, charge_e, -1.0, 1.0 );
setEffScaleKey( spep_2 + 300, charge_e, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, charge_e, 0 );
setEffRotateKey( spep_2 + 300, charge_e, 0 );
setEffAlphaKey( spep_2 + 0, charge_e, 255 );
setEffAlphaKey( spep_2 + 300 -1, charge_e, 255 );
setEffAlphaKey( spep_2 + 300, charge_e, 0 );

-- ** 音 ** --
--飛び上がる
SE008 = playSeVer2( spep_2 + 18, 1182, "", 0, 0, 0, -1);

--飛び上がる
SE009 = playSeVer2( spep_2 + 18, 9, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 300 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 60 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);
    
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
setDisp( spep_2 -3 + 80, 1, 1 );
setDisp( spep_2 -3 + 100, 1, 0 );
setDisp( spep_2 -3 + 126, 1, 1 );
setDisp( spep_2 -3 + 302+1, 1, 0 );

changeAnime( spep_2 -3 + 80, 1, 100 );
changeAnime( spep_2 -3 + 126, 1, 108 );
changeAnime( spep_2 -3 + 174, 1, 107 );
changeAnime( spep_2 -3 + 236, 1, 118 );
changeAnime( spep_2 -3 + 242, 1, 106 );
changeAnime( spep_2 -3 + 264, 1, 107 );
changeAnime( spep_2 -3 + 268, 1, 106 );
changeAnime( spep_2 -3 + 272, 1, 5 );

setMoveKey( spep_2 -3 + 80, 1, 298.9, -176 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 295.2, -174.5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 291.4, -172.9 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 287.7, -171.4 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 283.9, -169.9 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 280.7, -167.4 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 271, -159.8 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 254.8, -147.1 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 232.1, -129.4 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 203, -106.7 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 203, -106.7 , 0 );

a2 = 0;
b2 = 40;
setMoveKey( spep_2 -3 + 126, 1, 225 -a2, 227.5 -b2 , 0 );
setMoveKey( spep_2 -3 + 129, 1, 225 -a2, 227.5 -b2 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 204.5 -a2, 67.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 135, 1, 204.5 -a2, 67.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 225 -a2, 227.5 -b2 , 0 );
setMoveKey( spep_2 -3 + 139, 1, 225 -a2, 227.5 -b2 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 141, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 145, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 147, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 149, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 153, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 155, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 157, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 159, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 163, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 165, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 167, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 169, 1, 214.6 -a2, 57.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 214.6 -a2, 37.6 -b2 , 0 );
setMoveKey( spep_2 -3 + 173, 1, 214.6 -a2, 37.6 -b2 , 0 );

a3 = 0;
b3 = 230;
setMoveKey( spep_2 -3 + 174, 1, 23 +a3, -513.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 23 +a3, -513.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 12 +a3, -503.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 12 +a3, -503.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 2 +a3, -503.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 190, 1, -27 +a3, -513.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 192, 1, -27 +a3, -513.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 194, 1, -17 +a3, -503.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 198, 1, -17 +a3, -503.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 3 +a3, -483.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 3 +a3, -483.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 13 +a3, -473.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 13 +a3, -473.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 23 +a3, -463.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 23 +a3, -463.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 33 +a3, -453.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 33 +a3, -453.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 218, 1, -37 +a3, -503.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 222, 1, -37 +a3, -503.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 224, 1, -277 +a3, -703.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 226, 1, -277 +a3, -703.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 228, 1, -437 +a3, -933.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 230, 1, -437 +a3, -933.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 232, 1, -547 +a3, -1213.6 +b3 , 0 );
setMoveKey( spep_2 -3 + 235, 1, -547 +a3, -1213.6 +b3 , 0 );

a4 = 60;
b4 = 30;
setMoveKey( spep_2 -3 + 236, 1, 131.7 -a4, -72.3 +b4 , 0 );
setMoveKey( spep_2 -3 + 241, 1, 131.7 -a4, -72.3 +b4 , 0 );
--
setMoveKey( spep_2 -3 + 242, 1, 38.2, 68.5 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 104.1, 98.7 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 163, 125.7 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 215, 149.6 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 260, 170.3 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 298.2, 187.7 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 329.4, 202 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 353.7, 213.2 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 371, 221.1 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 381.4, 225.9 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 384.9, 227.5 , 0 );
setMoveKey( spep_2 -3 + 263, 1, 384.9, 227.5 , 0 );
--
setMoveKey( spep_2 -3 + 264, 1, -124.1, -745.4 , 0 );
setMoveKey( spep_2 -3 + 267, 1, -124.1, -745.4 , 0 );
--
setMoveKey( spep_2 -3 + 268, 1, -269.7, -13.8 , 0 );
setMoveKey( spep_2 -3 + 271, 1, -269.7, -13.8 , 0 );
--
setMoveKey( spep_2 -3 + 272, 1, -70.5, 156.1 , 0 );
setMoveKey( spep_2 -3 + 276, 1, -70.5, 156.1 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 39.5, 156 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 39.5, 156 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 125.5, 154 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 125.5, 154 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 157.5, 139 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 157.5, 139 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 173.4, 129.1 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 173.4, 129.1 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 193.3, 109.2 , 0 );
setMoveKey( spep_2 -3 + 302+1, 1, 193.3, 109.2 , 0 );

setScaleKey( spep_2 -3 + 80, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 82, 1, 1.491, 1.491 );
setScaleKey( spep_2 -3 + 84, 1, 1.5225, 1.5225 );
setScaleKey( spep_2 -3 + 86, 1, 1.554, 1.554 );
setScaleKey( spep_2 -3 + 88, 1, 1.575, 1.575 );
setScaleKey( spep_2 -3 + 90, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 92, 1, 1.995, 1.995 );
setScaleKey( spep_2 -3 + 94, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 96, 1, 3.255, 3.255 );
setScaleKey( spep_2 -3 + 98, 1, 4.2, 4.2 );
setScaleKey( spep_2 -3 + 100, 1, 4.2, 4.2 );
--
setScaleKey( spep_2 -3 + 126, 1, 9.4395, 9.4395 );
setScaleKey( spep_2 -3 + 129, 1, 9.4395, 9.4395 );
setScaleKey( spep_2 -3 + 130, 1, 3.78, 3.78 );
setScaleKey( spep_2 -3 + 135, 1, 3.78, 3.78 );
setScaleKey( spep_2 -3 + 136, 1, 9.4395, 9.4395 );
setScaleKey( spep_2 -3 + 139, 1, 9.4395, 9.4395 );
setScaleKey( spep_2 -3 + 140, 1, 3.78, 3.78 );
setScaleKey( spep_2 -3 + 173, 1, 3.78, 3.78 );
--
setScaleKey( spep_2 -3 + 174, 1, 4.55, 4.55 );
setScaleKey( spep_2 -3 + 235, 1, 4.55, 4.55 );
--
setScaleKey( spep_2 -3 + 236, 1, 2.625, 2.625 );
setScaleKey( spep_2 -3 + 241, 1, 2.625, 2.625 );
--
setScaleKey( spep_2 -3 + 242, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 263, 1, 2.73, 2.73 );
--
setScaleKey( spep_2 -3 + 264, 1, 5.775, 5.775 );
setScaleKey( spep_2 -3 + 267, 1, 5.775, 5.775 );
--
setScaleKey( spep_2 -3 + 268, 1, 6.3, 6.3 );
setScaleKey( spep_2 -3 + 271, 1, 6.3, 6.3 );
--
setScaleKey( spep_2 -3 + 272, 1, 3.15, 3.15 );
setScaleKey( spep_2 -3 + 276, 1, 3.15, 3.15 );
setScaleKey( spep_2 -3 + 278, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 282, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 284, 1, 1.995, 1.995 );
setScaleKey( spep_2 -3 + 286, 1, 1.995, 1.995 );
setScaleKey( spep_2 -3 + 288, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 292, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 294, 1, 1.785, 1.785 );
setScaleKey( spep_2 -3 + 298, 1, 1.785, 1.785 );
setScaleKey( spep_2 -3 + 300, 1, 1.6275, 1.6275 );
setScaleKey( spep_2 -3 + 302+1, 1, 1.6275, 1.6275 );


setRotateKey( spep_2 -3 + 80, 1, 0 );
setRotateKey( spep_2 -3 + 88, 1, 0 );
setRotateKey( spep_2 -3 + 90, 1, -0.3 );
setRotateKey( spep_2 -3 + 92, 1, -1.1 );
setRotateKey( spep_2 -3 + 94, 1, -2.5 );
setRotateKey( spep_2 -3 + 96, 1, -4.5 );
setRotateKey( spep_2 -3 + 98, 1, -7 );
setRotateKey( spep_2 -3 + 100, 1, -7 );
--
setRotateKey( spep_2 -3 + 126, 1, -26 );
setRotateKey( spep_2 -3 + 173, 1, -26 );
--
setRotateKey( spep_2 -3 + 174, 1, -99.7 );
setRotateKey( spep_2 -3 + 216, 1, -99.7 );
setRotateKey( spep_2 -3 + 218, 1, -101.2 );
setRotateKey( spep_2 -3 + 235, 1, -101.2 );
--
setRotateKey( spep_2 -3 + 236, 1, -5.8 );
setRotateKey( spep_2 -3 + 241, 1, -5.8 );
--
setRotateKey( spep_2 -3 + 242, 1, -23.8 );
setRotateKey( spep_2 -3 + 244, 1, -19.6 );
setRotateKey( spep_2 -3 + 246, 1, -15.9 );
setRotateKey( spep_2 -3 + 248, 1, -12.6 );
setRotateKey( spep_2 -3 + 250, 1, -9.7 );
setRotateKey( spep_2 -3 + 252, 1, -7.3 );
setRotateKey( spep_2 -3 + 254, 1, -5.3 );
setRotateKey( spep_2 -3 + 256, 1, -3.8 );
setRotateKey( spep_2 -3 + 258, 1, -2.7 );
setRotateKey( spep_2 -3 + 260, 1, -2 );
setRotateKey( spep_2 -3 + 262, 1, -1.8 );
setRotateKey( spep_2 -3 + 263, 1, -1.8 );
--
setRotateKey( spep_2 -3 + 264, 1, -101 );
setRotateKey( spep_2 -3 + 267, 1, -101 );
--
setRotateKey( spep_2 -3 + 268, 1, -11.2 );
setRotateKey( spep_2 -3 + 271, 1, -11.2 );
--
setRotateKey( spep_2 -3 + 272, 1, 60 );
setRotateKey( spep_2 -3 + 276, 1, 60 );
setRotateKey( spep_2 -3 + 278, 1, 64.9 );
setRotateKey( spep_2 -3 + 282, 1, 64.9 );
setRotateKey( spep_2 -3 + 284, 1, 65 );
setRotateKey( spep_2 -3 + 286, 1, 65 );
setRotateKey( spep_2 -3 + 288, 1, 70.5 );
setRotateKey( spep_2 -3 + 292, 1, 70.5 );
setRotateKey( spep_2 -3 + 294, 1, 78.7 );
setRotateKey( spep_2 -3 + 298, 1, 78.7 );
setRotateKey( spep_2 -3 + 300, 1, 86.2 );
setRotateKey( spep_2 -3 + 302+1, 1, 86.2 );

-- ** 音 ** --
--向かっていく
SE010 = playSeVer2( spep_2 + 60, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE010, 51 );

--向かっていく
SE011 = playSeVer2( spep_2 + 88, 1116, "",spep_2 + 122, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 88, SE011, 127 );

--パンチ
SE012 = playSeVer2( spep_2 + 116, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE012, 83 );

--パンチ
SE013 = playSeVer2( spep_2 + 116, 1170, "", 0, 0, 0, -1);

--パンチ
SE014 = playSeVer2( spep_2 + 118, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE014, 87 );

--パンチ
SE015 = playSeVer2( spep_2 + 120, 1153, "", 0, 0, 0, -1);

--掴む
SE016 = playSeVer2( spep_2 + 182, 1007, "", 0, 0, 0, -1);

--掴む
SE017 = playSeVer2( spep_2 + 182, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 182, SE017, 84 );

--引き寄せる
SE018 = playSeVer2( spep_2 + 202, 1004, "", 0, 0, 0, -1);

--膝蹴り
SE019 = playSeVer2( spep_2 + 232, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 232, SE019, 87 );

--膝蹴り
SE020 = playSeVer2( spep_2 + 234, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 234, SE020, 83 );

--膝蹴り
SE021 = playSeVer2( spep_2 + 234, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 234, SE021, 82 );

--敵飛んでいく
SE022 = playSeVer2( spep_2 + 254, 1183, "",spep_2 +300 + 38, 0, 12, -1);

--瞬間移動
SE023 = playSeVer2( spep_2 + 296, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 300;


------------------------------------------------------
-- 空中でラッシュ→蹴り込み(456F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
rush_f = entryEffectLife( spep_3 + 0, SP_07r, 456, 0x100, -1, 0, 0, 0 );  --空中でラッシュ→蹴り込み（味方側）    ef_003_ch
setEffMoveKey( spep_3 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 456, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rush_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 456, rush_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_f, 0 );
setEffRotateKey( spep_3 + 456, rush_f, 0 );
setEffAlphaKey( spep_3 + 0, rush_f, 255 );
setEffAlphaKey( spep_3 + 456 -1, rush_f, 255 );
setEffAlphaKey( spep_3 + 456, rush_f, 0 );

rush_b = entryEffectLife( spep_3 + 0, SP_08r, 456, 0x80, -1, 0, 0, 0 );  --↑背景（味方側）  ef_003_bg
setEffMoveKey( spep_3 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 456, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, rush_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 456, rush_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_b, 0 );
setEffRotateKey( spep_3 + 456, rush_b, 0 );
setEffAlphaKey( spep_3 + 0, rush_b, 255 );
setEffAlphaKey( spep_3 + 456 -1, rush_b, 255 );
setEffAlphaKey( spep_3 + 456, rush_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 46, 1, 1 );
setDisp( spep_3 -3 + 118, 1, 0 );

setDisp( spep_3 -3 + 184, 1, 1 );
setDisp( spep_3 -3 + 246, 1, 0 );

setDisp( spep_3 -3 + 422, 1, 1 );
--setDisp( spep_3 -3 + 459, 1, 0 );

changeAnime( spep_3 -3 + 46, 1, 106 );
changeAnime( spep_3 -3 + 50, 1, 108 );
changeAnime( spep_3 -3 + 54, 1, 106 );
changeAnime( spep_3 -3 + 58, 1, 108 );
changeAnime( spep_3 -3 + 62, 1, 106 );
changeAnime( spep_3 -3 + 66, 1, 108 );
changeAnime( spep_3 -3 + 70, 1, 106 );
changeAnime( spep_3 -3 + 74, 1, 108 );
changeAnime( spep_3 -3 + 78, 1, 106 );
changeAnime( spep_3 -3 + 82, 1, 108 );
changeAnime( spep_3 -3 + 90, 1, 106 );
changeAnime( spep_3 -3 + 94, 1, 108 );
changeAnime( spep_3 -3 + 102, 1, 106 );
changeAnime( spep_3 -3 + 106, 1, 108 );
changeAnime( spep_3 -3 + 114, 1, 106 );

changeAnime( spep_3 -3 + 184, 1, 7 );
changeAnime( spep_3 -3 + 200, 1, 107 );
changeAnime( spep_3 -3 + 202, 1, 105 );
changeAnime( spep_3 -3 + 210, 1, 107 );
changeAnime( spep_3 -3 + 228, 1, 7 );
changeAnime( spep_3 -3 + 242, 1, 107 );
changeAnime( spep_3 -3 + 244, 1, 105 );

changeAnime( spep_3 -3 + 422, 1, 108 );
changeAnime( spep_3 -3 + 426, 1, 106 );
changeAnime( spep_3 -3 + 428, 1, 5 );

setMoveKey( spep_3 -3 + 46, 1, 20.5, 49.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 20.5, 49.2 , 0 );
setMoveKey( spep_3 -3 + 49, 1, 20.5, 49.2 , 0 );
--
setMoveKey( spep_3 -3 + 50, 1, 98.8, 70.5 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 98.8, 70.5 , 0 );
setMoveKey( spep_3 -3 + 53, 1, 98.8, 70.5 , 0 );
--
setMoveKey( spep_3 -3 + 54, 1, 62.6, 22 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 62.6, 22 , 0 );
setMoveKey( spep_3 -3 + 57, 1, 62.6, 22 , 0 );
--
setMoveKey( spep_3 -3 + 58, 1, 98.8, 70.5 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 98.8, 70.5 , 0 );
setMoveKey( spep_3 -3 + 61, 1, 98.8, 70.5 , 0 );
--
setMoveKey( spep_3 -3 + 62, 1, 34.3, 17 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 34.3, 17 , 0 );
setMoveKey( spep_3 -3 + 65, 1, 34.3, 17 , 0 );
--
setMoveKey( spep_3 -3 + 66, 1, 120.2, 59.8 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 120.2, 59.8 , 0 );
setMoveKey( spep_3 -3 + 69, 1, 120.2, 59.8 , 0 );

setMoveKey( spep_3 -3 + 70, 1, 44.4, 61.4 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 44.4, 61.4 , 0 );
setMoveKey( spep_3 -3 + 73, 1, 44.4, 61.4 , 0 );
--
setMoveKey( spep_3 -3 + 74, 1, 98.8, 91.9 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 98.8, 91.9 , 0 );
setMoveKey( spep_3 -3 + 77, 1, 98.8, 91.9 , 0 );
--
setMoveKey( spep_3 -3 + 78, 1, 73.3, 54.1 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 73.3, 54.1 , 0 );
setMoveKey( spep_3 -3 + 81, 1, 73.3, 54.1 , 0 );
--
setMoveKey( spep_3 -3 + 82, 1, 87.1, 45.4 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 87.1, 45.4 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 109.5, 113.3 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 109.5, 113.3 , 0 );
setMoveKey( spep_3 -3 + 89, 1, 109.5, 113.3 , 0 );
--
setMoveKey( spep_3 -3 + 90, 1, 84, 75.5 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 84, 75.5 , 0 );
setMoveKey( spep_3 -3 + 93, 1, 84, 75.5 , 0 );

setMoveKey( spep_3 -3 + 94, 1, 97.8, 66.8 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 97.8, 66.8 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 109.5, 124 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 109.5, 124 , 0 );
setMoveKey( spep_3 -3 + 101, 1, 109.5, 124 , 0 );
--
setMoveKey( spep_3 -3 + 102, 1, 84, 75.5 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 84, 75.5 , 0 );
setMoveKey( spep_3 -3 + 105, 1, 84, 75.5 , 0 );
--
setMoveKey( spep_3 -3 + 106, 1, 97.8, 66.8 , 0 );
setMoveKey( spep_3 -3 + 109, 1, 97.8, 66.8 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 109.5, 124 , 0 );
setMoveKey( spep_3 -3 + 113, 1, 109.5, 124 , 0 );
--
setMoveKey( spep_3 -3 + 114, 1, 94.7, 86.2 , 0 );
setMoveKey( spep_3 -3 + 117, 1, 94.7, 86.2 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 94.7, 86.2 , 0 );

a5 = 150;
b5 = 540;
setMoveKey( spep_3 -3 + 184, 1, 501.6 +a5, -556.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 186, 1, 501.6 +a5, -556.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 561.6 +a5, -506.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 190, 1, 381.6 +a5, -506.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 192, 1, 31.6 +a5, -756.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 194, 1, -28.4 +a5, -896.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 196, 1, -28.4 +a5, -896.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 198, 1, 61.5 +a5, -986.6 +b5 , 0 );
setMoveKey( spep_3 -3 + 199, 1, 61.5 +a5, -986.6 +b5 , 0 );

a6 = 300;
--b6 = 540;
setMoveKey( spep_3 -3 + 200, 1, 220.8 -a6, -456.9 , 0 );
setMoveKey( spep_3 -3 + 201, 1, 220.8 -a6, -456.9 , 0 );
--
setMoveKey( spep_3 -3 + 202, 1, 44.7, 8.6 , 0 );
setMoveKey( spep_3 -3 + 204, 1, 104.6, 48.5 , 0 );
setMoveKey( spep_3 -3 + 206, 1, 104.6, 48.5 , 0 );
setMoveKey( spep_3 -3 + 208, 1, 104.7, 48.5 , 0 );
setMoveKey( spep_3 -3 + 209, 1, 104.7, 48.5 , 0 );

a7 =350;
setMoveKey( spep_3 -3 + 210, 1, 170.8 -a7, 63.1 , 0 );
setMoveKey( spep_3 -3 + 212, 1, 170.8 -a7, 263.1 , 0 );
setMoveKey( spep_3 -3 + 214, 1, 170.8 -a7, 133.1 , 0 );
setMoveKey( spep_3 -3 + 216, 1, 200.7 -a7, -272 , 0 );
setMoveKey( spep_3 -3 + 218, 1, 200.7 -a7, -272 , 0 );
setMoveKey( spep_3 -3 + 220, 1, 287.7 -a7, -554 , 0 );
setMoveKey( spep_3 -3 + 222, 1, 224.8 -a7, -420.9 , 0 );
setMoveKey( spep_3 -3 + 224, 1, 209.8 -a7, -235.9 , 0 );
setMoveKey( spep_3 -3 + 226, 1, 209.8 -a7, -235.9 , 0 );
setMoveKey( spep_3 -3 + 227, 1, 209.8 -a7, -235.9 , 0 );
--
setMoveKey( spep_3 -3 + 228, 1, 501.6 +a5, -556.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 230, 1, 561.6 +a5, -506.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 232, 1, 381.6 +a5, -506.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 234, 1, 31.6 +a5, -756.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 236, 1, 31.6 +a5, -756.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 238, 1, -28.4 +a5, -896.7 +b5 , 0 );
setMoveKey( spep_3 -3 + 240, 1, 61.5 +a5, -986.6 +b5 , 0 );
setMoveKey( spep_3 -3 + 241, 1, 61.5 +a5, -986.6 +b5 , 0 );
--
setMoveKey( spep_3 -3 + 242, 1, 220.8 -a6, -456.9 , 0 );
setMoveKey( spep_3 -3 + 243, 1, 220.8 -a6, -456.9 , 0 );
--
setMoveKey( spep_3 -3 + 244, 1, 44.7, 8.6 , 0 );
setMoveKey( spep_3 -3 + 246, 1, 44.7, 8.6 , 0 );

setMoveKey( spep_3 -3 + 422, 1, -25.4, -31.9 , 0 );
setMoveKey( spep_3 -3 + 425, 1, -25.4, -31.9 , 0 );
--
setMoveKey( spep_3 -3 + 426, 1, 47.1, 143 , 0 );
setMoveKey( spep_3 -3 + 427, 1, 47.1, 143 , 0 );
--
setMoveKey( spep_3 -3 + 428, 1, 84.6, -100.9 , 0 );
setMoveKey( spep_3 -3 + 430, 1, 101.9, 153.9 , 0 );
setMoveKey( spep_3 -3 + 432, 1, 120.8, -35 , 0 );
setMoveKey( spep_3 -3 + 434, 1, 139.3, 123.1 , 0 );
setMoveKey( spep_3 -3 + 436, 1, 156.3, 9.4 , 0 );
setMoveKey( spep_3 -3 + 438, 1, 171.2, 104.2 , 0 );
setMoveKey( spep_3 -3 + 440, 1, 183.4, 31.4 , 0 );
setMoveKey( spep_3 -3 + 442, 1, 192.9, 93.3 , 0 );
setMoveKey( spep_3 -3 + 444, 1, 200.6, 42 , 0 );
setMoveKey( spep_3 -3 + 446, 1, 206.7, 86.5 , 0 );
setMoveKey( spep_3 -3 + 448, 1, 211.6, 51.9 , 0 );
setMoveKey( spep_3 -3 + 450, 1, 215.4, 52.2 , 0 );
setMoveKey( spep_3 -3 + 452, 1, 218.4, 52.4 , 0 );
setMoveKey( spep_3 -3 + 454, 1, 220.7, 52.6 , 0 );
setMoveKey( spep_3 -3 + 456, 1, 222.6, 52.7 , 0 );
setMoveKey( spep_3 -3 + 458, 1, 222.6, 52.7 , 0 );
--setMoveKey( spep_3 -3 + 459, 1, 224.2, 52.9 , 0 );



setScaleKey( spep_3 -3 + 46, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 48, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 49, 1, 2.112, 2.112 );
--
setScaleKey( spep_3 -3 + 50, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 52, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 53, 1, 2.304, 2.304 );
--
setScaleKey( spep_3 -3 + 54, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 56, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 57, 1, 2.112, 2.112 );
--
setScaleKey( spep_3 -3 + 58, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 60, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 61, 1, 2.304, 2.304 );
--
setScaleKey( spep_3 -3 + 62, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 64, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 65, 1, 2.112, 2.112 );
--
setScaleKey( spep_3 -3 + 66, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 68, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 69, 1, 2.304, 2.304 );
--
setScaleKey( spep_3 -3 + 70, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 72, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 73, 1, 2.112, 2.112 );
--
setScaleKey( spep_3 -3 + 74, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 76, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 77, 1, 2.304, 2.304 );
--
setScaleKey( spep_3 -3 + 78, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 80, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 81, 1, 2.112, 2.112 );
--
setScaleKey( spep_3 -3 + 82, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 84, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 86, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 88, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 89, 1, 2.304, 2.304 );
--
setScaleKey( spep_3 -3 + 90, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 92, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 93, 1, 2.112, 2.112 );
--
setScaleKey( spep_3 -3 + 94, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 96, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 98, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 100, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 101, 1, 2.304, 2.304 );
--
setScaleKey( spep_3 -3 + 102, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 104, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 105, 1, 2.112, 2.112 );
--
setScaleKey( spep_3 -3 + 106, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 109, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 110, 1, 2.304, 2.304 );
setScaleKey( spep_3 -3 + 113, 1, 2.304, 2.304 );
--
setScaleKey( spep_3 -3 + 114, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 117, 1, 2.112, 2.112 );
setScaleKey( spep_3 -3 + 118, 1, 2.112, 2.112 );

setScaleKey( spep_3 -3 + 184, 1, 6.392, 6.392 );
setScaleKey( spep_3 -3 + 190, 1, 6.392, 6.392 );
setScaleKey( spep_3 -3 + 192, 1, 5.592, 5.592 );
setScaleKey( spep_3 -3 + 198, 1, 5.592, 5.592 );
setScaleKey( spep_3 -3 + 199, 1, 5.592, 5.592 );
--
setScaleKey( spep_3 -3 + 200, 1, 5.592, 5.592 );
setScaleKey( spep_3 -3 + 201, 1, 5.592, 5.592 );
--
setScaleKey( spep_3 -3 + 202, 1, 9.588, 9.588 );
setScaleKey( spep_3 -3 + 204, 1, 9.348, 9.348 );
setScaleKey( spep_3 -3 + 206, 1, 9.348, 9.348 );
setScaleKey( spep_3 -3 + 208, 1, 8.988, 8.988 );
setScaleKey( spep_3 -3 + 209, 1, 8.239, 8.239 );
--
setScaleKey( spep_3 -3 + 210, 1, 5.592, 5.592 );
setScaleKey( spep_3 -3 + 214, 1, 5.592, 5.592 );
setScaleKey( spep_3 -3 + 216, 1, 6.392, 6.392 );
setScaleKey( spep_3 -3 + 220, 1, 6.392, 6.392 );
setScaleKey( spep_3 -3 + 222, 1, 4.792, 4.792 );
setScaleKey( spep_3 -3 + 226, 1, 4.792, 4.792 );
setScaleKey( spep_3 -3 + 227, 1, 4.792, 4.792 );

setScaleKey( spep_3 -3 + 228, 1, 6.392, 6.392 );
setScaleKey( spep_3 -3 + 232, 1, 6.392, 6.392 );
setScaleKey( spep_3 -3 + 234, 1, 5.592, 5.592 );
setScaleKey( spep_3 -3 + 241, 1, 5.592, 5.592 );
--
setScaleKey( spep_3 -3 + 242, 1, 5.592, 5.592 );
setScaleKey( spep_3 -3 + 243, 1, 5.592, 5.592 );
--
setScaleKey( spep_3 -3 + 244, 1, 9.588, 9.588 );
setScaleKey( spep_3 -3 + 246, 1, 9.588, 9.588 );

setScaleKey( spep_3 -3 + 422, 1,  2.16, 2.16 );
setScaleKey( spep_3 -3 + 425, 1,  2.16, 2.16 );
--
setScaleKey( spep_3 -3 + 426, 1, 1.89, 1.89 );
setScaleKey( spep_3 -3 + 427, 1, 1.89, 1.89 );
--
setScaleKey( spep_3 -3 + 428, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 430, 1, 1.56, 1.56 );
setScaleKey( spep_3 -3 + 432, 1, 1.356, 1.356 );
setScaleKey( spep_3 -3 + 434, 1, 1.188, 1.188 );
setScaleKey( spep_3 -3 + 436, 1, 1.032, 1.032 );
setScaleKey( spep_3 -3 + 438, 1, 0.912, 0.912 );
setScaleKey( spep_3 -3 + 440, 1, 0.816, 0.816 );
setScaleKey( spep_3 -3 + 442, 1, 0.744, 0.744 );
setScaleKey( spep_3 -3 + 444, 1, 0.684, 0.684 );
setScaleKey( spep_3 -3 + 446, 1, 0.636, 0.636 );
setScaleKey( spep_3 -3 + 448, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 450, 1, 0.576, 0.576 );
setScaleKey( spep_3 -3 + 452, 1, 0.552, 0.552 );
setScaleKey( spep_3 -3 + 454, 1, 0.54, 0.54 );
setScaleKey( spep_3 -3 + 456, 1, 0.528, 0.528 );
setScaleKey( spep_3 -3 + 458, 1, 0.516, 0.516 );
--setScaleKey( spep_3 -3 + 459, 1, 0.516, 0.516 );



setRotateKey( spep_3 -3 + 46, 1, -35 );
setRotateKey( spep_3 -3 + 48, 1, -35 );
setRotateKey( spep_3 -3 + 49, 1, -35 );
--
setRotateKey( spep_3 -3 + 50, 1, -1.9 );
setRotateKey( spep_3 -3 + 52, 1, -1.9 );
setRotateKey( spep_3 -3 + 53, 1, -1.9 );
--
setRotateKey( spep_3 -3 + 54, 1, -51.4 );
setRotateKey( spep_3 -3 + 56, 1, -51.4 );
setRotateKey( spep_3 -3 + 57, 1, -51.4 );
--
setRotateKey( spep_3 -3 + 58, 1, 14.8 );
setRotateKey( spep_3 -3 + 60, 1, 14.8 );
setRotateKey( spep_3 -3 + 61, 1, 14.8 );
--
setRotateKey( spep_3 -3 + 62, 1, -67.4 );
setRotateKey( spep_3 -3 + 64, 1, -67.4 );
setRotateKey( spep_3 -3 + 65, 1, -67.4 );
--
setRotateKey( spep_3 -3 + 66, 1, 14.8 );
setRotateKey( spep_3 -3 + 68, 1, 14.8 );
setRotateKey( spep_3 -3 + 69, 1, 14.8 );

setRotateKey( spep_3 -3 + 70, 1, -65.6 );
setRotateKey( spep_3 -3 + 72, 1, -65.6 );
setRotateKey( spep_3 -3 + 73, 1, -65.6 );
--
setRotateKey( spep_3 -3 + 74, 1, -1.9 );
setRotateKey( spep_3 -3 + 76, 1, -1.9 );
setRotateKey( spep_3 -3 + 77, 1, -1.9 );
--
setRotateKey( spep_3 -3 + 78, 1, -51.4 );
setRotateKey( spep_3 -3 + 80, 1, -51.4 );
setRotateKey( spep_3 -3 + 81, 1, -51.4 );
--
setRotateKey( spep_3 -3 + 82, 1, 14.5 );
setRotateKey( spep_3 -3 + 84, 1, 14.5 );
setRotateKey( spep_3 -3 + 86, 1, -1.9 );
setRotateKey( spep_3 -3 + 88, 1, -1.9 );
setRotateKey( spep_3 -3 + 89, 1, -1.9 );
--
setRotateKey( spep_3 -3 + 90, 1, -51.4 );
setRotateKey( spep_3 -3 + 92, 1, -51.4 );
setRotateKey( spep_3 -3 + 93, 1, -51.4 );
--
setRotateKey( spep_3 -3 + 94, 1, 14.5 );
setRotateKey( spep_3 -3 + 96, 1, 14.5 );
setRotateKey( spep_3 -3 + 98, 1, -1.9 );
setRotateKey( spep_3 -3 + 100, 1, -1.9 );
setRotateKey( spep_3 -3 + 101, 1, -1.9 );
--
setRotateKey( spep_3 -3 + 102, 1, -51.4 );
setRotateKey( spep_3 -3 + 104, 1, -51.4 );
setRotateKey( spep_3 -3 + 105, 1, -51.4 );
--
setRotateKey( spep_3 -3 + 106, 1, 14.5 );
setRotateKey( spep_3 -3 + 109, 1, 14.5 );
setRotateKey( spep_3 -3 + 110, 1, -1.9 );
setRotateKey( spep_3 -3 + 113, 1, -1.9 );
--
setRotateKey( spep_3 -3 + 114, 1, -51.4 );
setRotateKey( spep_3 -3 + 118, 1, -51.4 );

setRotateKey( spep_3 -3 + 184, 1, 60.7 );
setRotateKey( spep_3 -3 + 186, 1, 60.7 );
setRotateKey( spep_3 -3 + 188, 1, 52.7 );
setRotateKey( spep_3 -3 + 190, 1, 60.7 );
setRotateKey( spep_3 -3 + 196, 1, 60.7 );
setRotateKey( spep_3 -3 + 198, 1, 48.2 );
setRotateKey( spep_3 -3 + 199, 1, 48.2 );
--
setRotateKey( spep_3 -3 + 200, 1, -130.8 );
setRotateKey( spep_3 -3 + 201, 1, -130.8 );
--
setRotateKey( spep_3 -3 + 202, 1, 14.6 );
setRotateKey( spep_3 -3 + 204, 1, 19 );
setRotateKey( spep_3 -3 + 208, 1, 19 );
setRotateKey( spep_3 -3 + 209, 1, 19 );
--
setRotateKey( spep_3 -3 + 210, 1, -130.8 );
setRotateKey( spep_3 -3 + 220, 1, -130.8 );
setRotateKey( spep_3 -3 + 222, 1, -130.9 );
setRotateKey( spep_3 -3 + 226, 1, -130.9 );
setRotateKey( spep_3 -3 + 227, 1, -130.9 );
--
setRotateKey( spep_3 -3 + 228, 1, 60.7 );
setRotateKey( spep_3 -3 + 230, 1, 52.7 );
setRotateKey( spep_3 -3 + 232, 1, 60.7 );
setRotateKey( spep_3 -3 + 238, 1, 60.7 );
setRotateKey( spep_3 -3 + 240, 1, 48.2 );
setRotateKey( spep_3 -3 + 241, 1, 48.2 );
--
setRotateKey( spep_3 -3 + 242, 1, -130.8 );
setRotateKey( spep_3 -3 + 243, 1, -130.8 );
--
setRotateKey( spep_3 -3 + 244, 1, 14.6 );
setRotateKey( spep_3 -3 + 246, 1, 14.6 );

setRotateKey( spep_3 -3 + 422, 1, 42.6 );
setRotateKey( spep_3 -3 + 425, 1, 42.6 );
--
setRotateKey( spep_3 -3 + 426, 1, 0.3 );
setRotateKey( spep_3 -3 + 427, 1, 0.3 );
--
setRotateKey( spep_3 -3 + 428, 1, 62.7 );
setRotateKey( spep_3 -3 + 458, 1, 62.7 );
--setRotateKey( spep_3 -3 + 459, 1, 62.7 );

-- ** 音 ** --
--振りかぶる
SE024 = playSeVer2( spep_3 + 24, 1004, "", 0, 0, 0, -1);
setPitch( spep_3 + 24, SE024, -400 );
setTimeStretch( SE024, 0.73, 30, 4 );

--俯瞰ラッシュ
SE025 = playSeVer2( spep_3 + 38, 1000, "", 0, 0, 0, -1);

--俯瞰ラッシュ
SE026 = playSeVer2( spep_3 + 38, 1187, "",spep_3 + 60, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 38, SE026, 81 );

--俯瞰ラッシュ
SE027 = playSeVer2( spep_3 + 46, 1187, "",spep_3 + 68, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 46, SE027, 84 );

--俯瞰ラッシュ
SE028 = playSeVer2( spep_3 + 52, 1009, "", 0, 0, 0, -1);

--俯瞰ラッシュ
SE029 = playSeVer2( spep_3 + 58, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 58, SE029, 89 );

--俯瞰ラッシュ
SE030 = playSeVer2( spep_3 + 58, 1187, "",spep_3 + 80, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 58, SE030, 81 );

--俯瞰ラッシュ
SE031 = playSeVer2( spep_3 + 70, 1187, "",spep_3 + 92, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 70, SE031, 85 );

--俯瞰ラッシュ
SE032 = playSeVer2( spep_3 + 78, 1187, "",spep_3 + 102, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 78, SE032, 76 );

--俯瞰ラッシュ
SE033 = playSeVer2( spep_3 + 86, 1187, "",spep_3 + 108, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 86, SE033, 78 );

--俯瞰ラッシュ
SE034 = playSeVer2( spep_3 + 86, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 86, SE034, 92 );

--俯瞰ラッシュ
SE035 = playSeVer2( spep_3 + 96, 1187, "",spep_3 + 118, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 96, SE035, 82 );

--俯瞰ラッシュ
SE036 = playSeVer2( spep_3 + 96, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 96, SE036, 89 );

--正面ラッシュ
SE037 = playSeVer2( spep_3 + 106, 1187, "",spep_3 + 138, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 106, SE037, 68 );

--正面ラッシュ
SE038 = playSeVer2( spep_3 + 108, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 108, SE038, 97 );

--正面ラッシュ
SE039 = playSeVer2( spep_3 + 114, 1187, "",spep_3 + 146, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 114, SE039, 82 );

--正面ラッシュ
SE040 = playSeVer2( spep_3 + 114, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 114, SE040, 95 );

--正面ラッシュ
SE041 = playSeVer2( spep_3 + 126, 1187, "",spep_3 + 158, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 126, SE041, 84 );

--正面ラッシュ
SE042 = playSeVer2( spep_3 + 138, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 138, SE042, 89 );

--正面ラッシュ
SE043 = playSeVer2( spep_3 + 140, 1187, "",spep_3 + 172, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 140, SE043, 91 );
setPitch( spep_3 + 140, SE043, -200 );
setTimeStretch( SE043, 0.87, 30, 4 );

--正面ラッシュ
SE044 = playSeVer2( spep_3 + 154, 1187, "",spep_3 + 186, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 154, SE044, 89 );

--正面ラッシュ
SE045 = playSeVer2( spep_3 + 162, 1010, "", 0, 0, 0, -1);

--正面ラッシュ
SE046 = playSeVer2( spep_3 + 164, 1187, "",spep_3 + 196, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 164, SE046, 83 );

--敵側ラッシュ
SE047 = playSeVer2( spep_3 + 176, 1187, "",spep_3 + 198, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 176, SE047, 74 );
setPitch( spep_3 + 176, SE047, -200 );
setTimeStretch( SE047, 0.87, 30, 4 );

--敵側ラッシュ
SE048 = playSeVer2( spep_3 + 176, 1000, "", 0, 0, 0, -1);

--敵側ラッシュ
SE049 = playSeVer2( spep_3 + 192, 1187, "",spep_3 + 214, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 192, SE049, 86 );

--敵側ラッシュ
SE050 = playSeVer2( spep_3 + 194, 1190, "", 0, 0, 0, -1);

--敵側ラッシュ
SE051 = playSeVer2( spep_3 + 202, 1187, "",spep_3 + 224, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 202, SE051, 81 );

--敵側ラッシュ
SE052 = playSeVer2( spep_3 + 224, 1110, "", 0, 0, 0, -1);

--敵側ラッシュ
SE053 = playSeVer2( spep_3 + 224, 1187, "",spep_3 + 246, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 224, SE053, 82 );
setPitch( spep_3 + 224, SE053, -200 );
setTimeStretch( SE053, 0.87, 30, 4 );

--大振りラッシュ
SE054 = playSeVer2( spep_3 + 228, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 228, SE054, 157 );

--大振りラッシュ
SE055 = playSeVer2( spep_3 + 234, 1187, "",spep_3 + 294, 0, 36, -1);
setSeVolumeByWorkId( spep_3 + 234, SE055, 84 );

--大振りラッシュ
SE056 = playSeVer2( spep_3 + 234, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 234, SE056, 94 );

--大振りラッシュ
SE057 = playSeVer2( spep_3 + 258, 1003, "", 0, 0, 0, -1);

--大振りラッシュ
SE058 = playSeVer2( spep_3 + 266, 1187, "",spep_3 + 326, 0, 48, -1);
setSeVolumeByWorkId( spep_3 + 266, SE058, 84 );
setPitch( spep_3 + 266, SE058, -200 );
setTimeStretch( SE058, 0.87, 30, 4 );

--大振りラッシュ
SE059 = playSeVer2( spep_3 + 266, 1001, "", 0, 0, 0, -1);

--大振りラッシュ
SE060 = playSeVer2( spep_3 + 286, 1187, "",spep_3 + 346, 0, 48, -1);
setSeVolumeByWorkId( spep_3 + 286, SE060, 85 );

--大振りラッシュ
SE061 = playSeVer2( spep_3 + 286, 1153, "",spep_3 + 318, 0, 12, -1);

--大振りラッシュ
SE062 = playSeVer2( spep_3 + 298, 1003, "", 0, 0, 0, -1);

--大振りラッシュ
SE063 = playSeVer2( spep_3 + 310, 1187, "",spep_3 + 368, 0, 46, -1);
setPitch( spep_3 + 310, SE063, -200 );
setTimeStretch( SE063, 0.87, 30, 4 );

--大振りラッシュ
SE064 = playSeVer2( spep_3 + 310, 1000, "", 0, 0, 0, -1);

--大振りラッシュ
SE065 = playSeVer2( spep_3 + 328, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 328, SE065, 141 );

--大振りラッシュ
SE066 = playSeVer2( spep_3 + 334, 1187, "",spep_3 + 402, 0, 56, -1);

--大振りラッシュ
SE067 = playSeVer2( spep_3 + 334, 1009, "", 0, 0, 0, -1);

--振りかぶる
SE068 = playSeVer2( spep_3 + 362, 1116, "",spep_3 + 398, 0, 12, -1);
setSeVolumeByWorkId( spep_3 + 362, SE068, 124 );
setPitch( spep_3 + 362, SE068, -300 );
setTimeStretch( SE068, 0.8, 30, 4 );

--振りかぶる
SE069 = playSeVer2( spep_3 + 362, 1004, "", 0, 0, 0, -1);

--蹴る
SE071 = playSeVer2( spep_3 + 404, 1003, "", 0, 0, 0, -1);

--蹴る
SE073 = playSeVer2( spep_3 + 416, 1187, "",spep_3 + 438, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 416, SE073, 75 );

--蹴る
SE074 = playSeVer2( spep_3 + 416, 1120, "",spep_3 +456 + 30, 0, 14, -1);

--敵飛んでいく
SE075 = playSeVer2( spep_3 + 434, 1183, "", 0, 0, 0, -1);

--敵飛んでいく
SE076 = playSeVer2( spep_3 + 434, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 434, SE076, 56 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 456 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 456;


------------------------------------------------------
-- 敵が水しぶきをあげて海に激突(326F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_09r, 0x80, -1, 0, 0, 0 );  --敵が水しぶきをあげて海に激突（味方側）  ef_004
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 326, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 326, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 326, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 326, finish_b, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 64, 1, 0 );

setDisp( spep_4 -3 + 106, 1, 1 );
setDisp( spep_4 -3 + 116, 1, 0 );
changeAnime( spep_4 + 0, 1, 107 );
changeAnime( spep_4 -3 + 106, 1, 5 );

setMoveKey( spep_4 + 0, 1, -145.8, 98.4 , 0 );
setMoveKey( spep_4 + 1, 1, -145.7, 98.4 , 0 );
setMoveKey( spep_4 + 2, 1, -145.5, 98.5 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -145.4, 98.5 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -145.2, 98.5 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -145.1, 98.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -144.9, 98.7 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -144.6, 98.9 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -144.4, 99.1 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -144.2, 99.2 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -144, 99.4 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -143.7, 99.6 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -143.5, 99.7 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -143.3, 99.9 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -139.3, 96.9 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -135.3, 95.9 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -117.8, 89.4 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -14.8, 37.2 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -13.8, 38.2 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 256.2, -92.4 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 251.2, -116.7 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -98.8, 42.8 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -98.8, 42.8 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -97.8, 44.8 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -98.8, 42.8 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -97.8, 44.8 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -97.8, 41.8 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -96.8, 43.8 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -97.8, 41.8 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -97.8, 43.8 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -97.8, 41.8 , 0 );
--
setMoveKey( spep_4 -3 + 106, 1, -598.4, 450.1 , 0 );
setMoveKey( spep_4 -3 + 108, 1, -303.2, 235.4 , 0 );
setMoveKey( spep_4 -3 + 110, 1, -29, 60.2 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 79, -22.6 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 79.9, -23.5 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 79.9, -23.5 , 0 );


setScaleKey( spep_4 + 0, 1, 0.07, 0.07 );
setScaleKey( spep_4 + 1, 1, 0.07, 0.07 );
setScaleKey( spep_4 + 2, 1, 0.077, 0.077 );
setScaleKey( spep_4 -3 + 6, 1, 0.077, 0.077 );
setScaleKey( spep_4 -3 + 8, 1, 0.084, 0.084 );
--setScaleKey( spep_4 -3 + 16, 1, 0.084, 0.084 );
setScaleKey( spep_4 -3 + 18, 1, 0.091, 0.091 );
--setScaleKey( spep_4 -3 + 26, 1, 0.091, 0.091 );
setScaleKey( spep_4 -3 + 28, 1, 0.098, 0.098 );
setScaleKey( spep_4 -3 + 30, 1, 0.112, 0.112 );
setScaleKey( spep_4 -3 + 32, 1, 0.119, 0.119 );
setScaleKey( spep_4 -3 + 34, 1, 0.28, 0.28 );
setScaleKey( spep_4 -3 + 36, 1, 0.28, 0.28 );
setScaleKey( spep_4 -3 + 38, 1, 1.19, 1.19 );
setScaleKey( spep_4 -3 + 40, 1, 1.54, 1.54 );
setScaleKey( spep_4 -3 + 42, 1, 2.31, 2.31 );
setScaleKey( spep_4 -3 + 63, 1, 2.31, 2.31 );
setScaleKey( spep_4 -3 + 64, 1, 2.31, 2.31 );
--
setScaleKey( spep_4 -3 + 106, 1, 10, 10 );
setScaleKey( spep_4 -3 + 108, 1, 5, 5 );
setScaleKey( spep_4 -3 + 110, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 112, 1, 0.16, 0.16 );
setScaleKey( spep_4 -3 + 116, 1, 0.15, 0.15 );


setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 64, 1, 0 );
--
setRotateKey( spep_4 -3 + 106, 1, 92.3 );
setRotateKey( spep_4 -3 + 116, 1, 92.3 );

-- ** 音 ** --
--敵横切る
SE070 = playSeVer2( spep_4 + 16, 1175, "",spep_4 + 80, 14, 40, -1);
setSeVolumeByWorkId( spep_4 + 16, SE070, 24 );
setStartTimeMs( SE070,  1233 );

--敵横切る
SE072 = playSeVer2( spep_4 + 12, 1278, "",spep_4 + 80, 18, 40, -1);
setSeVolumeByWorkId( spep_4 + 12, SE072, 45 );
setStartTimeMs( SE072,  1067 );
setPitch( spep_4 + 12, SE072, -400 );
setTimeStretch( SE072, 0.73, 30, 4 );

--稲光
SE077 = playSeVer2( spep_4 + 60, 1147, "",spep_4 + 170, 0, 14, -1);
setSeVolumeByWorkId( spep_4 + 60, SE077, 64 );

--敵飛んでいく加速
SE078 = playSeVer2( spep_4 + 102, 1277, "", 0, 0, 0, -1);

--水切りして爆発
SE079 = playSeVer2( spep_4 + 154, 1163, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_4 + 154, SE079, 119 );
setStartTimeMs( SE079,  317 );

--水切りして爆発
SE080 = playSeVer2( spep_4 + 174, 1163, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_4 + 174, SE080, 135 );
setStartTimeMs( SE080,  317 );

--水切りして爆発
SE081 = playSeVer2( spep_4 + 156, 1023, "", 0, 0, 0, -1);

--水切りして爆発
SE082 = playSeVer2( spep_4 + 180, 1163, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_4 + 180, SE082, 126 );
setStartTimeMs( SE082,  300 );

--水切りして爆発
SE083 = playSeVer2( spep_4 + 182, 1024, "", 0, 0, 0, -1);

--水切りして爆発
SE084 = playSeVer2( spep_4 + 192, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 192, SE084, 83 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 326 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景


-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_4 + 88 );
--entryFade( spep_4 +210 - 4, 2,  4, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_4 + 210 );

end