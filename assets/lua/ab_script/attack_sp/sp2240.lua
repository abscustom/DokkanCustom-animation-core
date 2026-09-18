--1022870:クリリン_気円烈斬_sp2240
--sp_effect_a6_00018

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
SP_01 = 157883;	--敵との対峙	ef_001_front
SP_02 = 157884;	--敵との対峙	ef_001_back
SP_03 = 157887;	--クリリンズームアップ_セリフカットイン	ef_002
SP_04 = 157889;	--気円斬が発生する	ef_003
SP_05 = 157891;	--気円斬を敵に投げる	ef_004_front
SP_06 = 157892;	--気円斬を敵に投げる	ef_004_back
SP_07 = 157895;	--飛行する気円斬～分裂	ef_005_front
SP_08 = 157896;	--飛行する気円斬～分裂	ef_005_back
SP_09 = 157899;	--着弾～フィニッシュ	ef_006_front
SP_10 = 157900;	--着弾～フィニッシュ	ef_006_back

--敵側
SP_01r = 157885;	--敵との対峙（敵側）	ef_001_r_front
SP_02r = 157886;	--敵との対峙（敵側）	ef_001_r_back
SP_03r = 157888;	--クリリンズームアップ_セリフカットイン（敵側）	ef_002_r
SP_04r = 157890;	--気円斬が発生する（敵側）	ef_003_r
SP_05r = 157893;	--気円斬を敵に投げる（敵側）	ef_004_r_front
SP_06r = 157894;	--気円斬を敵に投げる（敵側）	ef_004_r_back
SP_07r = 157897;	--飛行する気円斬～分裂（敵側）	ef_005_r_front
SP_08r = 157898;	--飛行する気円斬～分裂（敵側）	ef_005_r_back
SP_09r = 157901;	--着弾～フィニッシュ（敵側）	ef_006_r_front
SP_10r = 157902;	--着弾～フィニッシュ（敵側）	ef_006_r_back

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
-- 敵との対峙(56F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 56, 0x100, -1, 0, 0, 0 );  --敵との対峙	ef_001_front
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 56, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 56 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 56, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 56, 0x80, -1, 0, 0, 0 );  --敵との対峙	ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 56, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 56 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 56, first_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 59, 1, 0 );
changeAnime( spep_0 + 0, 1, 102 );

a1 = 90;
b1 = 40;
setMoveKey( spep_0 + 0, 1, 129.5 +a1, 13.3 +b1 , 0 );
setMoveKey( spep_0 + 1, 1, 132.3 +a1, 13.9 +b1 , 0 );
setMoveKey( spep_0 + 2, 1, 135.1 +a1, 14.5 +b1 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 138 +a1, 15.2 +b1 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 138 +a1, 15.2 +b1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 140.9 +a1, 15.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 140.9 +a1, 15.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 143.7 +a1, 16.4 +b1 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 146.6 +a1, 17.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 149.6 +a1, 17.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 152.7 +a1, 18.3 +b1 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 150.9 +a1, 18.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 149.3 +a1, 18.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 147.9 +a1, 19 +b1 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 146.6 +a1, 19.3 +b1 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 145.6 +a1, 19.5 +b1 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 144.6 +a1, 19.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 143.9 +a1, 20 +b1 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 143.3 +a1, 20.2 +b1 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 142.9 +a1, 20.4 +b1 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 142.7 +a1, 20.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 142.7 +a1, 20.9 +b1 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 142.9 +a1, 21.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 143.3 +a1, 21.3 +b1 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 143.9 +a1, 21.5 +b1 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 144.6 +a1, 21.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 145.6 +a1, 22 +b1 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 146.8 +a1, 22.2 +b1 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 148.2 +a1, 22.4 +b1 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 149.9 +a1, 22.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 151.7 +a1, 22.9 +b1 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 153.8 +a1, 23.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 59, 1, 153.8 +a1, 23.1 +b1 , 0 );

setScaleKey( spep_0 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 1, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 2, 1, 1.456, 1.456 );
setScaleKey( spep_0 -3 + 6, 1, 1.456, 1.456 );
setScaleKey( spep_0 -3 + 7, 1, 1.469, 1.469 );
setScaleKey( spep_0 -3 + 8, 1, 1.482, 1.482 );
setScaleKey( spep_0 -3 + 9, 1, 1.495, 1.495 );
setScaleKey( spep_0 -3 + 10, 1, 1.508, 1.508 );
--setScaleKey( spep_0 -3 + 12, 1, 1.56, 1.56 );
setScaleKey( spep_0 -3 + 14, 1, 1.56, 1.56 );
--setScaleKey( spep_0 -3 + 16, 1, 1.612, 1.612 );
setScaleKey( spep_0 -3 + 22, 1, 1.612, 1.612 );
--setScaleKey( spep_0 -3 + 24, 1, 1.664, 1.664 );
setScaleKey( spep_0 -3 + 34, 1, 1.664, 1.664 );
--setScaleKey( spep_0 -3 + 36, 1, 1.716, 1.716 );
setScaleKey( spep_0 -3 + 46, 1, 1.716, 1.716 );
--setScaleKey( spep_0 -3 + 48, 1, 1.768, 1.768 );
setScaleKey( spep_0 -3 + 56, 1, 1.768, 1.768 );
--setScaleKey( spep_0 -3 + 58, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 59, 1, 1.82, 1.82 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 59, 1, 0 );

-- ** 音 ** --
--入り
--SE001 = playSe( spep_0 + 0, 8 );
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;


------------------------------------------------------
-- クリリンズームアップ_セリフカットイン(126F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
zoomup = entryEffectLife( spep_1 + 0, SP_03, 126, 0x100, -1, 0, 0, 0 );  --クリリンズームアップ_セリフカットイン	ef_002
setEffMoveKey( spep_1 + 0, zoomup, 0, 0 , 0 );
setEffMoveKey( spep_1 + 126, zoomup, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, zoomup, 1.0, 1.0 );
setEffScaleKey( spep_1 + 126, zoomup, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, zoomup, 0 );
setEffRotateKey( spep_1 + 126, zoomup, 0 );
setEffAlphaKey( spep_1 + 0, zoomup, 255 );
setEffAlphaKey( spep_1 + 126 -1, zoomup, 255 );
setEffAlphaKey( spep_1 + 126, zoomup, 0 );

spep_x = spep_1 + 8;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -150, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -150, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -150, 515.5 , 0 );
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
--クリリン集中線
--SE002 = playSe( spep_1 + 2, 20 );
SE002 = playSeVer2( spep_1 + 2, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE002, 79 );

--顔カットイン
--SE003 = playSe( spep_1 + 12, 1018 );
SE003 = playSeVer2( spep_1 + 12, 1018, "", 0, 0, 0, -1);

--クリリン手を上げる
--SE004 = playSe( spep_1 + 96, 1189 );
SE004 = playSeVer2( spep_1 + 96, 1189, "", 0, 0, 0, -1);

--クリリン手を上げる
--SE005 = playSe( spep_1 + 100, 1003 );
SE005 = playSeVer2( spep_1 + 100, 1003, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 126 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 126;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--[[
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
]]--
--極限対応
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
    
    shuchusen = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線
    
    setEffMoveKey(  spep_2,  shuchusen,  0,  0);
    setEffScaleKey(  spep_2,  shuchusen,  1.0,  1.0);
    setEffRotateKey(  spep_2,  shuchusen,  0);
    setEffAlphaKey(  spep_2,  shuchusen,  255);
    setEffMoveKey(  spep_2+90,  shuchusen,  0,  0);
    setEffScaleKey(  spep_2+90,  shuchusen,  1.0,  1.0);
    setEffRotateKey(  spep_2+90,  shuchusen,  0);
    setEffAlphaKey(  spep_2+90,  shuchusen,  255);

--気円斬溜め
--SE007 = playSe( spep_2 + 86, 1239 );
--stopSe( spep_2 +94 +76 + 6, SE007, 0 );
SE007 = playSeVer2( spep_2 + 86, 1239, "",spep_2 +94 +76 + 6, 0, 0, -1);

--気円斬溜め
--SE008 = playSe( spep_2 + 86, 1240 );
--stopSe( spep_2 +94 + 66, SE008, 12 );
SE008 = playSeVer2( spep_2 + 86, 1240, "",spep_2 +94 + 78, 0, 12, -1);

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 気円斬が発生する(76F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_3 + 0, SP_04, 76, 0x100, -1, 0, 0, 0 );  --気円斬が発生する	ef_003
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 76, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 76 -1, tame, 255 );
setEffAlphaKey( spep_3 + 76, tame, 0 );

-- ** 音 ** --
--気円斬投げ
--SE009 = playSe( spep_3 + 74, 1241 );
SE009 = playSeVer2( spep_3 + 74, 1241, "", 0, 0, 0, -1);

--気円斬投げ
--SE010 = playSe( spep_3 + 74, 1242 );
--stopSe( spep_3 +126 + 82, SE010, 6 );
SE010 = playSeVer2( spep_3 + 74, 1242, "",spep_3 +126 + 88, 0, 6, -1);

--気円斬投げ
--SE011 = playSe( spep_3 + 74, 1027 );
SE011 = playSeVer2( spep_3 + 74, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 74, SE011, 87 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;


------------------------------------------------------
-- 気円斬を敵に投げる(36F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_4 + 0, SP_05, 36, 0x100, -1, 0, 0, 0 );  --気円斬を敵に投げる	ef_004_front
setEffMoveKey( spep_4 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 36, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 36, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot_f, 0 );
setEffRotateKey( spep_4 + 36, shot_f, 0 );
setEffAlphaKey( spep_4 + 0, shot_f, 255 );
setEffAlphaKey( spep_4 + 36 -1, shot_f, 255 );
setEffAlphaKey( spep_4 + 36, shot_f, 0 );

shot_b = entryEffectLife( spep_4 + 0, SP_06, 36, 0x80, -1, 0, 0, 0 );  --気円斬を敵に投げる	ef_004_back
setEffMoveKey( spep_4 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 36, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 36, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot_b, 0 );
setEffRotateKey( spep_4 + 36, shot_b, 0 );
setEffAlphaKey( spep_4 + 0, shot_b, 255 );
setEffAlphaKey( spep_4 + 36 -1, shot_b, 255 );
setEffAlphaKey( spep_4 + 36, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 100 );

setMoveKey( spep_4 + 0, 1, 271.7, 456.4 , 0 );
setMoveKey( spep_4 + 1, 1, 269.8, 457.6 , 0 );
setMoveKey( spep_4 + 2, 1, 266.3, 459.1 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 262.7, 460.6 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 259.1, 462.1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 260.7, 458.5 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 262.3, 454.9 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 263.8, 451.3 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 265.3, 447.7 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 266.9, 444.1 , 0 );


setScaleKey( spep_4 + 0, 1, 0.24, 0.24 );
setScaleKey( spep_4 + 1, 1, 0.24, 0.24 );
--setScaleKey( spep_4 + 2, 1, 0.275, 0.275 );
setScaleKey( spep_4 -3 + 20, 1, 0.3, 0.3 );

setRotateKey( spep_4 + 0, 1, -11.1 );
setRotateKey( spep_4 + 1, 1, -10.9 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 +18 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 268.4, 440.5 , 0 );
    setMoveKey( SP_dodge + 2, 1, 270, 436.9 , 0 );
    setMoveKey( SP_dodge + 4, 1, 271.6, 433.3 , 0 );
    setMoveKey( SP_dodge + 6, 1, 273.1, 429.7 , 0 );
    setMoveKey( SP_dodge + 8, 1, 274.7, 426 , 0 );
    setMoveKey( SP_dodge + 10, 1, 276.2, 422.4 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.3, 0.3 );
    setScaleKey( SP_dodge + 2, 1, 0.3075, 0.3075 );
    setScaleKey( SP_dodge + 4, 1, 0.315, 0.315 );
    setScaleKey( SP_dodge + 6, 1, 0.3225, 0.3225 );
    setScaleKey( SP_dodge + 8, 1, 0.33, 0.33 );
    setScaleKey( SP_dodge + 10, 1, 0.3375, 0.3375 );

    setRotateKey( SP_dodge + 0, 1, -10.9 );
    setRotateKey( SP_dodge + 10, 1, -10.9 );    
    
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
--setDisp( spep_4 + 36, 1, 0 );

setMoveKey( spep_4 -3 + 20, 1, 268.4, 440.5 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 270, 436.9 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 271.6, 433.3 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 273.1, 429.7 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 274.7, 426 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 276.2, 422.4 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 277.8, 418.8 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 279.3, 415.2 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 280.9, 411.6 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 282.5, 408 , 0 );
--setMoveKey( spep_4 -3 + 39, 1, 282.5, 408 , 0 );

setScaleKey( spep_4 -3 + 22, 1, 0.3075, 0.3075 );
setScaleKey( spep_4 -3 + 24, 1, 0.315, 0.315 );
setScaleKey( spep_4 -3 + 26, 1, 0.3225, 0.3225 );
setScaleKey( spep_4 -3 + 28, 1, 0.33, 0.33 );
setScaleKey( spep_4 -3 + 30, 1, 0.3375, 0.3375 );
setScaleKey( spep_4 -3 + 32, 1, 0.345, 0.345 );
setScaleKey( spep_4 -3 + 34, 1, 0.3525, 0.3525 );
setScaleKey( spep_4 -3 + 36, 1, 0.36, 0.36 );
setScaleKey( spep_4 -3 + 38, 1, 0.385, 0.385 );
--setScaleKey( spep_4 -3 + 39, 1, 0.385, 0.385 );

setRotateKey( spep_4 + 35, 1, -10.9 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 36 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 36;


------------------------------------------------------
-- 飛行する気円斬～分裂	ef_005_back(144F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
move_f = entryEffectLife( spep_5 + 0, SP_07, 144, 0x100, -1, 0, 0, 0 );  --飛行する気円斬～分裂	ef_005_front
setEffMoveKey( spep_5 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 144, move_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 144, move_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, move_f, 0 );
setEffRotateKey( spep_5 + 144, move_f, 0 );
setEffAlphaKey( spep_5 + 0, move_f, 255 );
setEffAlphaKey( spep_5 + 144 -1, move_f, 255 );
setEffAlphaKey( spep_5 + 144, move_f, 0 );

move_b = entryEffectLife( spep_5 + 0, SP_08, 144, 0x80, -1, 0, 0, 0 );  --飛行する気円斬～分裂	ef_005_back
setEffMoveKey( spep_5 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 144, move_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 144, move_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, move_b, 0 );
setEffRotateKey( spep_5 + 144, move_b, 0 );
setEffAlphaKey( spep_5 + 0, move_b, 255 );
setEffAlphaKey( spep_5 + 144 -1, move_b, 255 );
setEffAlphaKey( spep_5 + 144, move_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_5 + 0, 1, 1 );
--setDisp( spep_5 + 144, 1, 0 );
changeAnime( spep_5 + 0, 1, 104 );

setMoveKey( spep_5 + 0, 1, 3239.5, 3444.3 , 0 );
setMoveKey( spep_5 + 1, 1, 2801.4, 2981.3 , 0 );
setMoveKey( spep_5 + 2, 1, 2388.7, 2544.6 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 2000.5, 2133.3 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 1636.3, 1746.8 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 1572.2, 1680.3 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 1509.7, 1615.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 1448.8, 1552.3 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 1389.4, 1490.8 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 1331.6, 1430.8 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 1275.3, 1372.5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 1220.6, 1315.7 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 1167.5, 1260.6 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 1115.8, 1207 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 1065.7, 1155 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 1017.1, 1104.5 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 969.9, 1055.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 924.3, 1008.3 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 880.1, 962.5 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 837.5, 918.2 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 796.3, 875.4 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 756.5, 834.2 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 718.3, 794.5 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 681.4, 756.2 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 646, 719.4 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 612, 684.1 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 579.4, 650.3 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 548.2, 617.9 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 518.5, 587 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 490.1, 557.5 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 463.2, 529.5 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 437.5, 502.8 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 413.3, 477.7 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 390.4, 453.8 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 368.8, 431.4 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 348.7, 410.5 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 329.8, 390.8 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 312.3, 372.6 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 296, 355.6 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 281.2, 340.1 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 267.5, 325.9 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 255.2, 313 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 244.2, 301.5 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 234.4, 291.3 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 225.9, 282.4 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 218.7, 274.8 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 212.7, 268.4 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 208, 263.5 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 204.4, 259.7 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 202.2, 257.2 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 201, 256 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 210.6, 268.2 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 200.1, 254.8 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 209.7, 267 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 199.2, 253.6 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 208.7, 265.7 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 198.3, 252.5 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 207.7, 264.5 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 197.4, 251.3 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 196.9, 250.7 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 196.4, 250.1 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 196, 249.5 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 195.5, 248.9 , 0 );
setMoveKey( spep_5 -3 + 126, 1, 195.1, 248.3 , 0 );
setMoveKey( spep_5 -3 + 128, 1, 194.6, 247.7 , 0 );
setMoveKey( spep_5 -3 + 130, 1, 194.2, 247.2 , 0 );
setMoveKey( spep_5 -3 + 132, 1, 193.7, 246.5 , 0 );
setMoveKey( spep_5 -3 + 134, 1, 193.2, 245.9 , 0 );
setMoveKey( spep_5 -3 + 136, 1, 192.7, 245.4 , 0 );
setMoveKey( spep_5 -3 + 138, 1, 192.2, 244.7 , 0 );
setMoveKey( spep_5 -3 + 140, 1, 191.8, 244.2 , 0 );
setMoveKey( spep_5 -3 + 142, 1, 191.3, 243.6 , 0 );
setMoveKey( spep_5 -3 + 144, 1, 190.9, 243 , 0 );
setMoveKey( spep_5 -3 + 146, 1, 190.4, 242.4 , 0 );
--setMoveKey( spep_5 -3 + 147, 1, 190.4, 242.4 , 0 );

setScaleKey( spep_5 + 0, 1, 2.22, 2.22 );
setScaleKey( spep_5 + 1, 1, 1.92, 1.92 );
setScaleKey( spep_5 + 2, 1, 1.68, 1.68 );
setScaleKey( spep_5 -3 + 6, 1, 1.44, 1.44 );
setScaleKey( spep_5 -3 + 8, 1, 0.9, 0.9 );
----setScaleKey( spep_5 -3 + 10, 1, 1.14, 1.14 );
--setScaleKey( spep_5 -3 + 12, 1, 1.14, 1.14 );
----setScaleKey( spep_5 -3 + 14, 1, 1.08, 1.08 );
--setScaleKey( spep_5 -3 + 18, 1, 1.08, 1.08 );
----setScaleKey( spep_5 -3 + 20, 1, 1.02, 1.02 );
--setScaleKey( spep_5 -3 + 22, 1, 1.02, 1.02 );
----setScaleKey( spep_5 -3 + 24, 1, 0.96, 0.96 );
--setScaleKey( spep_5 -3 + 28, 1, 0.96, 0.96 );
----setScaleKey( spep_5 -3 + 30, 1, 0.9, 0.9 );
--setScaleKey( spep_5 -3 + 34, 1, 0.9, 0.9 );
----setScaleKey( spep_5 -3 + 36, 1, 0.84, 0.84 );
--setScaleKey( spep_5 -3 + 42, 1, 0.84, 0.84 );
----setScaleKey( spep_5 -3 + 44, 1, 0.78, 0.78 );
--setScaleKey( spep_5 -3 + 50, 1, 0.78, 0.78 );
----setScaleKey( spep_5 -3 + 52, 1, 0.72, 0.72 );
--setScaleKey( spep_5 -3 + 58, 1, 0.72, 0.72 );
----setScaleKey( spep_5 -3 + 60, 1, 0.66, 0.66 );
--setScaleKey( spep_5 -3 + 70, 1, 0.66, 0.66 );
--setScaleKey( spep_5 -3 + 72, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 90, 1, 0.6, 0.6 );
--setScaleKey( spep_5 -3 + 92, 1, 0.54, 0.54 );
--setScaleKey( spep_5 -3 + 100, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 102, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 104, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 106, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 108, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 110, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 112, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 114, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 116, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 146, 1, 0.52, 0.52 );
--setScaleKey( spep_5 -3 + 147, 1, 0.52, 0.52 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 146, 1, 0 );
--setRotateKey( spep_5 -3 + 147, 1, 0 );

-- ** 音 ** --
--気円斬飛んでいく
--SE012 = playSe( spep_5 + 6, 1202 );
SE012 = playSeVer2( spep_5 + 6, 1202, "", 0, 0, 0, -1);

--気円斬分裂する
--SE013 = playSe( spep_5 + 94, 1052 );
SE013 = playSeVer2( spep_5 + 94, 1052, "", 0, 0, 0, -1);

--気円斬分裂する
--SE014 = playSe( spep_5 + 94, 1046 );
SE014 = playSeVer2( spep_5 + 94, 1046, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 94, SE014, 73 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 144 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 144;


------------------------------------------------------
-- 着弾～フィニッシュ(256F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --着弾～フィニッシュ	ef_006_front
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 256, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 256, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 256, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 256, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --着弾～フィニッシュ	ef_006_back
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 256, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 256, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 256, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 256, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 146, 1, 0 );
changeAnime( spep_6 + 0, 1, 104 );
changeAnime( spep_6 -3 + 40, 1, 108 );
changeAnime( spep_6 -3 + 46, 1, 106 );
changeAnime( spep_6 -3 + 52, 1, 105 );
changeAnime( spep_6 -3 + 64, 1, 108 );
changeAnime( spep_6 -3 + 74, 1, 106 );
changeAnime( spep_6 -3 + 84, 1, 105 );
changeAnime( spep_6 -3 + 94, 1, 108 );
changeAnime( spep_6 -3 + 104, 1, 106 );
changeAnime( spep_6 -3 + 114, 1, 105 );
changeAnime( spep_6 -3 + 126, 1, 108 );
--changeAnime( spep_6 -3 + 146, 1, 105 );

a6 = 15;
b6 = 20;
setMoveKey( spep_6 + 0, 1, 127.1 +a6, 332.4 +b6 , 0 );
setMoveKey( spep_6 + 1, 1, 115.1 +a6, 305.9 +b6 , 0 );
setMoveKey( spep_6 + 2, 1, 103 +a6, 279.4 +b6 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 91 +a6, 252.8 +b6 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 79 +a6, 226.2 +b6 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 66.9 +a6, 199.6 +b6 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 54.8 +a6, 173.1 +b6 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 53.5 +a6, 170.2 +b6 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 52.2 +a6, 167.4 +b6 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 50.9 +a6, 164.6 +b6 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 49.6 +a6, 161.7 +b6 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 48.4 +a6, 158.9 +b6 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 47.1 +a6, 156 +b6 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 45.8 +a6, 153.2 +b6 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 44.4 +a6, 150.3 +b6 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 43.2 +a6, 147.5 +b6 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 41.9 +a6, 144.6 +b6 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 40.6 +a6, 141.8 +b6 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 39.3 +a6, 138.9 +b6 , 0 );
setMoveKey( spep_6 -3 + 39, 1, 38 +a6, 136.1 +b6 , 0 );

a7 = 55;
b7 = 20;
setMoveKey( spep_6 -3 + 40, 1, -15.7 +a7, 97.5 +b7 , 0 );
setMoveKey( spep_6 -3 + 42, 1, -15.9 +a7, 114.2 +b7 , 0 );
setMoveKey( spep_6 -3 + 45, 1, -8.1 +a7, 124.9 +b7 , 0 );

a8 = 20;
b8 = 55;
setMoveKey( spep_6 -3 + 46, 1, 19.7 -a8, 96.1 +b8 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 3.6 -a8, 88.8 +b8 , 0 );
setMoveKey( spep_6 -3 + 51, 1, 19.6 -a8, 93.4 +b8 , 0 );

a9 = 30;
b9 = 0;
setMoveKey( spep_6 -3 + 52, 1, 8.4 +a9, 159.9 +b9 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 8.3 +a9, 142.7 +b9 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 26.2 +a9, 127.5 +b9 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 8.2 +a9, 140.3 +b9 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 0.1 +a9, 151 +b9 , 0 );
setMoveKey( spep_6 -3 + 63, 1, 8 +a9, 137.8 +b9 , 0 );

a10 = 50;
b10 = 20;
setMoveKey( spep_6 -3 + 64, 1, -9.7 +a10, 93.6 +b10 , 0 );
setMoveKey( spep_6 -3 + 66, 1, -17.9 +a10, 98.2 +b10 , 0 );
setMoveKey( spep_6 -3 + 68, 1, -18.1 +a10, 108.9 +b10 , 0 );
setMoveKey( spep_6 -3 + 70, 1, -18.2 +a10, 95.6 +b10 , 0 );
setMoveKey( spep_6 -3 + 73, 1, -28.4 +a10, 82.3 +b10 , 0 );

a11 = 20;
b11 = 70;
setMoveKey( spep_6 -3 + 74, 1, 18.9 -a11, 76.8 +b11 , 0 );
setMoveKey( spep_6 -3 + 76, 1, 18.8 -a11, 85.5 +b11 , 0 );
setMoveKey( spep_6 -3 + 78, 1, 18.8 -a11, 74.1 +b11 , 0 );
setMoveKey( spep_6 -3 + 80, 1, 34.7 -a11, 64.7 +b11 , 0 );
setMoveKey( spep_6 -3 + 83, 1, 18.6 -a11, 71.4 +b11 , 0 );

a12 = 25;
b12 = 0;
setMoveKey( spep_6 -3 + 84, 1, -5 +a12, 130.4 +b12 , 0 );
setMoveKey( spep_6 -3 + 86, 1, 6.9 +a12, 123.2 +b12 , 0 );
setMoveKey( spep_6 -3 + 88, 1, 14.8 +a12, 112 +b12 , 0 );
setMoveKey( spep_6 -3 + 90, 1, 6.7 +a12, 120.7 +b12 , 0 );
setMoveKey( spep_6 -3 + 93, 1, 14.7 +a12, 131.5 +b12 , 0 );

a13 = 55;
b13 = 20;
setMoveKey( spep_6 -3 + 94, 1, -20.2 +a13, 79.6 +b13 , 0 );
setMoveKey( spep_6 -3 + 96, 1, -32.4 +a13, 64.3 +b13 , 0 );
setMoveKey( spep_6 -3 + 98, 1, -20.5 +a13, 77 +b13 , 0 );
setMoveKey( spep_6 -3 + 100, 1, -10.7 +a13, 87.6 +b13 , 0 );
setMoveKey( spep_6 -3 + 103, 1, -20.8 +a13, 74.3 +b13 , 0 );

a14 =25;
b14 = 60;
setMoveKey( spep_6 -3 + 104, 1, 12 -a14, 32.2 +b14 , 0 );
setMoveKey( spep_6 -3 + 106, 1, 18 -a14, 54.8 +b14 , 0 );
setMoveKey( spep_6 -3 + 108, 1, 27.9 -a14, 65.4 +b14 , 0 );
setMoveKey( spep_6 -3 + 110, 1, 17.8 -a14, 52.1 +b14 , 0 );
setMoveKey( spep_6 -3 + 113, 1, 11.8 -a14, 32.7 +b14 , 0 );

a15 = 30;
b15 = 0;
setMoveKey( spep_6 -3 + 114, 1, 5.6 +a15, 106.1 -b15 , 0 );
setMoveKey( spep_6 -3 + 116, 1, 21.6 +a15, 108.9 -b15 , 0 );
setMoveKey( spep_6 -3 + 118, 1, 5.4 +a15, 103.6 -b15 , 0 );
setMoveKey( spep_6 -3 + 120, 1, -6.6 +a15, 96.4 -b15 , 0 );
setMoveKey( spep_6 -3 + 122, 1, 5.3 +a15, 101.2 -b15 , 0 );
setMoveKey( spep_6 -3 + 125, 1, 11.2 +a15, 108 -b15 , 0 );

a16 = 65;
b16 = 20;
setMoveKey( spep_6 -3 + 126, 1, -22.8 +a16, 58.4 +b16 , 0 );
setMoveKey( spep_6 -3 + 128, 1, -35 +a16, 63 +b16 , 0 );
setMoveKey( spep_6 -3 + 130, 1, -23.2 +a16, 45.7 +b16 , 0 );
setMoveKey( spep_6 -3 + 132, 1, -23.4 +a16, 54.4 +b16 , 0 );
setMoveKey( spep_6 -3 + 134, 1, -23.5 +a16, 53 +b16 , 0 );
setMoveKey( spep_6 -3 + 136, 1, -23.7 +a16, 51.7 +b16 , 0 );
setMoveKey( spep_6 -3 + 138, 1, -23.8 +a16, 50.4 +b16 , 0 );
setMoveKey( spep_6 -3 + 140, 1, -24 +a16, 49 +b16 , 0 );
setMoveKey( spep_6 -3 + 142, 1, -24.2 +a16, 47.7 +b16 , 0 );
setMoveKey( spep_6 -3 + 145, 1, -24.4 +a16, 46.4 +b16 , 0 );
setMoveKey( spep_6 -3 + 146, 1, -24.4 +a16, 46.4 +b16 , 0 );
--setMoveKey( spep_6 -3 + 146, 1, 20.2 +a6, 98.5 +b6 , 0 );
--setMoveKey( spep_6 -3 + 148, 1, 4.1 +a6, 85.3 +b6 , 0 );
--setMoveKey( spep_6 -3 + 150, 1, -18 +a6, 62.1 +b6 , 0 );
--setMoveKey( spep_6 -3 + 152, 1, 19.9 +a6, 88.8 +b6 , 0 );
--setMoveKey( spep_6 -3 + 154, 1, 3.8 +a6, 81.6 +b6 , 0 );
--setMoveKey( spep_6 -3 + 156, 1, -8.3 +a6, 68.4 +b6 , 0 );
--setMoveKey( spep_6 -3 + 158, 1, 19.6 +a6, 67.2 +b6 , 0 );
--setMoveKey( spep_6 -3 + 160, 1, -2.5 +a6, 94 +b6 , 0 );
--setMoveKey( spep_6 -3 + 162, 1, 11.5 +a6, 66.7 +b6 , 0 );
--setMoveKey( spep_6 -3 + 164, 1, -6.6 +a6, 83.5 +b6 , 0 );
--setMoveKey( spep_6 -3 + 166, 1, 7.3 +a6, 60.3 +b6 , 0 );
--setMoveKey( spep_6 -3 + 168, 1, -6.8 +a6, 65.1 +b6 , 0 );
--setMoveKey( spep_6 -3 + 170, 1, 9.1 +a6, 81.9 +b6 , 0 );
--setMoveKey( spep_6 -3 + 172, 1, -11 +a6, 70.6 +b6 , 0 );
--setMoveKey( spep_6 -3 + 174, 1, 12.9 +a6, 61.4 +b6 , 0 );
--setMoveKey( spep_6 -3 + 176, 1, -1.1 +a6, 78.2 +b6 , 0 );
--setMoveKey( spep_6 -3 + 177, 1, -1.1 +a6, 78.2 +b6 , 0 );

setScaleKey( spep_6 + 0, 1, 2.34, 2.34 );
setScaleKey( spep_6 + 1, 1, 2.22, 2.22 );
setScaleKey( spep_6 + 2, 1, 2.04, 2.04 );
setScaleKey( spep_6 -3 + 6, 1, 1.86, 1.86 );
setScaleKey( spep_6 -3 + 8, 1, 1.74, 1.74 );
setScaleKey( spep_6 -3 + 10, 1, 1.56, 1.56 );
setScaleKey( spep_6 -3 + 12, 1, 1.44, 1.44 );
--setScaleKey( spep_6 -3 + 14, 1, 1.38, 1.38 );
setScaleKey( spep_6 -3 + 18, 1, 1.38, 1.38 );
--setScaleKey( spep_6 -3 + 20, 1, 1.32, 1.32 );
setScaleKey( spep_6 -3 + 26, 1, 1.32, 1.32 );
--setScaleKey( spep_6 -3 + 28, 1, 1.26, 1.26 );
setScaleKey( spep_6 -3 + 34, 1, 1.26, 1.26 );
--setScaleKey( spep_6 -3 + 36, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 39, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 45, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 46, 1, 1.32, 1.32 );
setScaleKey( spep_6 -3 + 51, 1, 1.32, 1.32 );
setScaleKey( spep_6 -3 + 52, 1, 1.14, 1.14 );
setScaleKey( spep_6 -3 + 56, 1, 1.14, 1.14 );
setScaleKey( spep_6 -3 + 58, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 63, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 64, 1, 1.26, 1.26 );
setScaleKey( spep_6 -3 + 73, 1, 1.26, 1.26 );
setScaleKey( spep_6 -3 + 74, 1, 1.38, 1.38 );
setScaleKey( spep_6 -3 + 83, 1, 1.38, 1.38 );
setScaleKey( spep_6 -3 + 84, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 90, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 93, 1, 1.26, 1.26 );
setScaleKey( spep_6 -3 + 94, 1, 1.32, 1.32 );
setScaleKey( spep_6 -3 + 103, 1, 1.32, 1.32 );
setScaleKey( spep_6 -3 + 104, 1, 1.44, 1.44 );
setScaleKey( spep_6 -3 + 113, 1, 1.44, 1.44 );
setScaleKey( spep_6 -3 + 114, 1, 1.26, 1.26 );
setScaleKey( spep_6 -3 + 125, 1, 1.26, 1.26 );
setScaleKey( spep_6 -3 + 126, 1, 1.38, 1.38 );
setScaleKey( spep_6 -3 + 146, 1, 1.38, 1.38 );
--setScaleKey( spep_6 -3 + 146, 1, 1.32, 1.32 );
--setScaleKey( spep_6 -3 + 160, 1, 1.32, 1.32 );
--setScaleKey( spep_6 -3 + 162, 1, 1.38, 1.38 );
--setScaleKey( spep_6 -3 + 177, 1, 1.38, 1.38 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 -3 + 45, 1, 0 );
setRotateKey( spep_6 -3 + 46, 1, -32 );
setRotateKey( spep_6 -3 + 51, 1, -32 );
setRotateKey( spep_6 -3 + 52, 1, 0 );
setRotateKey( spep_6 -3 + 73, 1, 0 );
setRotateKey( spep_6 -3 + 74, 1, -32 );
setRotateKey( spep_6 -3 + 83, 1, -32 );
setRotateKey( spep_6 -3 + 84, 1, 0 );
setRotateKey( spep_6 -3 + 103, 1, 0 );
setRotateKey( spep_6 -3 + 104, 1, -32 );
setRotateKey( spep_6 -3 + 113, 1, -32 );
setRotateKey( spep_6 -3 + 114, 1, 0 );
setRotateKey( spep_6 -3 + 146, 1, 0 );
--setRotateKey( spep_6 -3 + 177, 1, 0 );

-- ** 音 ** --
--気弾飛んでいく
--SE015 = playSe( spep_6 + 2, 1021 );
SE015 = playSeVer2( spep_6 + 2, 1021, "", 0, 0, 0, -1);

--連続気弾
--SE016 = playSe( spep_6 + 34, 1155 );
--stopSe( spep_6 + 48, SE016, 10 );
SE016 = playSeVer2( spep_6 + 34, 1155, "",spep_6 + 58, 0, 10, -1);

--連続気弾
--SE018 = playSe( spep_6 + 44, 1155 );
--stopSe( spep_6 + 60, SE018, 10 );
SE018 = playSeVer2( spep_6 + 44, 1155, "",spep_6 + 70, 0, 10, -1);

--連続気弾
--SE020 = playSe( spep_6 + 54, 1155 );
--stopSe( spep_6 + 70, SE020, 10 );
SE020 = playSeVer2( spep_6 + 54, 1155, "",spep_6 + 80, 0, 8, -1);
setSeVolumeByWorkId( spep_6 + 54, SE020, 83 );

--連続気弾
--SE021 = playSe( spep_6 + 64, 1155 );
--stopSe( spep_6 + 78, SE021, 10 );
SE021 = playSeVer2( spep_6 + 64, 1155, "",spep_6 + 88, 0, 6, -1);

--連続気弾
--SE023 = playSe( spep_6 + 74, 1155 );
--stopSe( spep_6 + 92, SE023, 10 );
SE023 = playSeVer2( spep_6 + 74, 1155, "",spep_6 + 102, 0, 6, -1);
setSeVolumeByWorkId( spep_6 + 74, SE023, 83 );

--連続気弾
--SE025 = playSe( spep_6 + 86, 1155 );
--stopSe( spep_6 + 106, SE025, 10 );
SE025 = playSeVer2( spep_6 + 86, 1155, "",spep_6 + 106, 0, 8, -1);

--連続気弾
--SE026 = playSe( spep_6 + 98, 1155 );
--stopSe( spep_6 + 112, SE026, 10 );
SE026 = playSeVer2( spep_6 + 98, 1155, "",spep_6 + 122, 0, 8, -1);
setSeVolumeByWorkId( spep_6 + 98, SE026, 84 );

--連続気弾
--SE028 = playSe( spep_6 + 108, 1155 );
--stopSe( spep_6 + 126, SE028, 10 );
SE028 = playSeVer2( spep_6 + 108, 1155, "",spep_6 + 136, 0, 8, -1);

--連続気弾
--SE029 = playSe( spep_6 + 120, 1155 );
--stopSe( spep_6 + 134, SE029, 10 );
SE029 = playSeVer2( spep_6 + 120, 1155, "",spep_6 + 144, 0, 8, -1);

--連続気弾
--SE031 = playSe( spep_6 + 130, 1155 );
--stopSe( spep_6 + 144, SE031, 10 );
SE031 = playSeVer2( spep_6 + 130, 1155, "",spep_6 + 154, 0, 10, -1);

--連続爆発
--SE017 = playSe( spep_6 + 34, 1023 );
--stopSe( spep_6 + 94, SE017, 20 );
SE017 = playSeVer2( spep_6 + 34, 1023, "",spep_6 + 114, 0, 20, -1);

--連続爆発
--SE019 = playSe( spep_6 + 50, 1023 );
--stopSe( spep_6 + 132, SE019, 20 );
SE019 = playSeVer2( spep_6 + 50, 1023, "",spep_6 + 152, 0, 20, -1);

--連続爆発
--SE022 = playSe( spep_6 + 64, 1023 );
--stopSe( spep_6 + 124, SE022, 22 );
SE022 = playSeVer2( spep_6 + 64, 1023, "",spep_6 + 166, 0, 22, -1);
setSeVolumeByWorkId( spep_6 + 64, SE022, 85 );

--連続爆発
--SE024 = playSe( spep_6 + 84, 1023 );
--stopSe( spep_6 + 146, SE024, 16 );
SE024 = playSeVer2( spep_6 + 84, 1023, "",spep_6 + 162, 0, 16, -1);

--連続爆発
--SE027 = playSe( spep_6 + 102, 1023 );
--stopSe( spep_6 + 164, SE027, 16 );
SE027 = playSeVer2( spep_6 + 102, 1023, "",spep_6 + 180, 0, 16, -1);
setSeVolumeByWorkId( spep_6 + 102, SE027, 74 );

--連続爆発
--SE030 = playSe( spep_6 + 120, 1023 );
--stopSe( spep_6 + 182, SE030, 16 );
SE030 = playSeVer2( spep_6 + 120, 1023, "",spep_6 + 198, 0, 16, -1);
setSeVolumeByWorkId( spep_6 + 120, SE030, 87 );

--ラスト爆発
--SE032 = playSe( spep_6 + 134, 1023 );
SE032 = playSeVer2( spep_6 + 134, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 134, SE032, 89 );

--ラスト爆発
--SE033 = playSe( spep_6 + 134, 1024 );
SE033 = playSeVer2( spep_6 + 134, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 256 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 146 );
endPhase( spep_6 + 246 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 敵との対峙(56F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 56, 0x100, -1, 0, 0, 0 );  --敵との対峙    ef_001_front
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 56, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 56 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 56, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02r, 56, 0x80, -1, 0, 0, 0 );  --敵との対峙 ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 56, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 56 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 56, first_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 59, 1, 0 );
changeAnime( spep_0 + 0, 1, 102 );

a1 = 90;
b1 = 40;
setMoveKey( spep_0 + 0, 1, 129.5 +a1, 13.3 +b1 , 0 );
setMoveKey( spep_0 + 1, 1, 132.3 +a1, 13.9 +b1 , 0 );
setMoveKey( spep_0 + 2, 1, 135.1 +a1, 14.5 +b1 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 138 +a1, 15.2 +b1 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 138 +a1, 15.2 +b1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 140.9 +a1, 15.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 140.9 +a1, 15.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 143.7 +a1, 16.4 +b1 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 146.6 +a1, 17.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 149.6 +a1, 17.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 152.7 +a1, 18.3 +b1 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 150.9 +a1, 18.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 149.3 +a1, 18.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 147.9 +a1, 19 +b1 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 146.6 +a1, 19.3 +b1 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 145.6 +a1, 19.5 +b1 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 144.6 +a1, 19.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 143.9 +a1, 20 +b1 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 143.3 +a1, 20.2 +b1 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 142.9 +a1, 20.4 +b1 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 142.7 +a1, 20.6 +b1 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 142.7 +a1, 20.9 +b1 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 142.9 +a1, 21.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 143.3 +a1, 21.3 +b1 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 143.9 +a1, 21.5 +b1 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 144.6 +a1, 21.8 +b1 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 145.6 +a1, 22 +b1 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 146.8 +a1, 22.2 +b1 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 148.2 +a1, 22.4 +b1 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 149.9 +a1, 22.7 +b1 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 151.7 +a1, 22.9 +b1 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 153.8 +a1, 23.1 +b1 , 0 );
setMoveKey( spep_0 -3 + 59, 1, 153.8 +a1, 23.1 +b1 , 0 );

setScaleKey( spep_0 + 0, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 1, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 2, 1, 1.456, 1.456 );
setScaleKey( spep_0 -3 + 6, 1, 1.456, 1.456 );
setScaleKey( spep_0 -3 + 7, 1, 1.469, 1.469 );
setScaleKey( spep_0 -3 + 8, 1, 1.482, 1.482 );
setScaleKey( spep_0 -3 + 9, 1, 1.495, 1.495 );
setScaleKey( spep_0 -3 + 10, 1, 1.508, 1.508 );
--setScaleKey( spep_0 -3 + 12, 1, 1.56, 1.56 );
setScaleKey( spep_0 -3 + 14, 1, 1.56, 1.56 );
--setScaleKey( spep_0 -3 + 16, 1, 1.612, 1.612 );
setScaleKey( spep_0 -3 + 22, 1, 1.612, 1.612 );
--setScaleKey( spep_0 -3 + 24, 1, 1.664, 1.664 );
setScaleKey( spep_0 -3 + 34, 1, 1.664, 1.664 );
--setScaleKey( spep_0 -3 + 36, 1, 1.716, 1.716 );
setScaleKey( spep_0 -3 + 46, 1, 1.716, 1.716 );
--setScaleKey( spep_0 -3 + 48, 1, 1.768, 1.768 );
setScaleKey( spep_0 -3 + 56, 1, 1.768, 1.768 );
--setScaleKey( spep_0 -3 + 58, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 59, 1, 1.82, 1.82 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 59, 1, 0 );

-- ** 音 ** --
--入り
--SE001 = playSe( spep_0 + 0, 8 );
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;


------------------------------------------------------
-- クリリンズームアップ_セリフカットイン(126F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
zoomup = entryEffectLife( spep_1 + 0, SP_03r, 126, 0x100, -1, 0, 0, 0 );  --クリリンズームアップ_セリフカットイン  ef_002
setEffMoveKey( spep_1 + 0, zoomup, 0, 0 , 0 );
setEffMoveKey( spep_1 + 126, zoomup, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, zoomup, 1.0, 1.0 );
setEffScaleKey( spep_1 + 126, zoomup, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, zoomup, 0 );
setEffRotateKey( spep_1 + 126, zoomup, 0 );
setEffAlphaKey( spep_1 + 0, zoomup, 255 );
setEffAlphaKey( spep_1 + 126 -1, zoomup, 255 );
setEffAlphaKey( spep_1 + 126, zoomup, 0 );

spep_x = spep_1 + 8;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -150, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -150, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -150, 515.5 , 0 );
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
--クリリン集中線
--SE002 = playSe( spep_1 + 2, 20 );
SE002 = playSeVer2( spep_1 + 2, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE002, 79 );

--顔カットイン
--SE003 = playSe( spep_1 + 12, 1018 );
SE003 = playSeVer2( spep_1 + 12, 1018, "", 0, 0, 0, -1);

--クリリン手を上げる
--SE004 = playSe( spep_1 + 96, 1189 );
SE004 = playSeVer2( spep_1 + 96, 1189, "", 0, 0, 0, -1);

--クリリン手を上げる
--SE005 = playSe( spep_1 + 100, 1003 );
SE005 = playSeVer2( spep_1 + 100, 1003, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 126 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 126;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--[[
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
]]--
--極限対応
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
    
    shuchusen = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線
    
    setEffMoveKey(  spep_2,  shuchusen,  0,  0);
    setEffScaleKey(  spep_2,  shuchusen,  1.0,  1.0);
    setEffRotateKey(  spep_2,  shuchusen,  0);
    setEffAlphaKey(  spep_2,  shuchusen,  255);
    setEffMoveKey(  spep_2+90,  shuchusen,  0,  0);
    setEffScaleKey(  spep_2+90,  shuchusen,  1.0,  1.0);
    setEffRotateKey(  spep_2+90,  shuchusen,  0);
    setEffAlphaKey(  spep_2+90,  shuchusen,  255);

--気円斬溜め
--SE007 = playSe( spep_2 + 86, 1239 );
--stopSe( spep_2 +94 +76 + 6, SE007, 0 );
SE007 = playSeVer2( spep_2 + 86, 1239, "",spep_2 +94 +76 + 6, 0, 0, -1);

--気円斬溜め
--SE008 = playSe( spep_2 + 86, 1240 );
--stopSe( spep_2 +94 + 66, SE008, 12 );
SE008 = playSeVer2( spep_2 + 86, 1240, "",spep_2 +94 + 78, 0, 12, -1);

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 気円斬が発生する(76F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_3 + 0, SP_04r, 76, 0x100, -1, 0, 0, 0 );  --気円斬が発生する    ef_003
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 76, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 76 -1, tame, 255 );
setEffAlphaKey( spep_3 + 76, tame, 0 );

-- ** 音 ** --
--気円斬投げ
--SE009 = playSe( spep_3 + 74, 1241 );
SE009 = playSeVer2( spep_3 + 74, 1241, "", 0, 0, 0, -1);

--気円斬投げ
--SE010 = playSe( spep_3 + 74, 1242 );
--stopSe( spep_3 +126 + 82, SE010, 6 );
SE010 = playSeVer2( spep_3 + 74, 1242, "",spep_3 +126 + 88, 0, 6, -1);

--気円斬投げ
--SE011 = playSe( spep_3 + 74, 1027 );
SE011 = playSeVer2( spep_3 + 74, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 74, SE011, 87 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;


------------------------------------------------------
-- 気円斬を敵に投げる(36F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_4 + 0, SP_05r, 36, 0x100, -1, 0, 0, 0 );  --気円斬を敵に投げる ef_004_front
setEffMoveKey( spep_4 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 36, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 36, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot_f, 0 );
setEffRotateKey( spep_4 + 36, shot_f, 0 );
setEffAlphaKey( spep_4 + 0, shot_f, 255 );
setEffAlphaKey( spep_4 + 36 -1, shot_f, 255 );
setEffAlphaKey( spep_4 + 36, shot_f, 0 );

shot_b = entryEffectLife( spep_4 + 0, SP_06r, 36, 0x80, -1, 0, 0, 0 );  --気円斬を敵に投げる  ef_004_back
setEffMoveKey( spep_4 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 36, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 36, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot_b, 0 );
setEffRotateKey( spep_4 + 36, shot_b, 0 );
setEffAlphaKey( spep_4 + 0, shot_b, 255 );
setEffAlphaKey( spep_4 + 36 -1, shot_b, 255 );
setEffAlphaKey( spep_4 + 36, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 100 );

setMoveKey( spep_4 + 0, 1, 271.7, 456.4 , 0 );
setMoveKey( spep_4 + 1, 1, 269.8, 457.6 , 0 );
setMoveKey( spep_4 + 2, 1, 266.3, 459.1 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 262.7, 460.6 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 259.1, 462.1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 260.7, 458.5 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 262.3, 454.9 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 263.8, 451.3 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 265.3, 447.7 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 266.9, 444.1 , 0 );


setScaleKey( spep_4 + 0, 1, 0.24, 0.24 );
setScaleKey( spep_4 + 1, 1, 0.24, 0.24 );
--setScaleKey( spep_4 + 2, 1, 0.275, 0.275 );
setScaleKey( spep_4 -3 + 20, 1, 0.3, 0.3 );

setRotateKey( spep_4 + 0, 1, -11.1 );
setRotateKey( spep_4 + 1, 1, -10.9 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 +18 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 268.4, 440.5 , 0 );
    setMoveKey( SP_dodge + 2, 1, 270, 436.9 , 0 );
    setMoveKey( SP_dodge + 4, 1, 271.6, 433.3 , 0 );
    setMoveKey( SP_dodge + 6, 1, 273.1, 429.7 , 0 );
    setMoveKey( SP_dodge + 8, 1, 274.7, 426 , 0 );
    setMoveKey( SP_dodge + 10, 1, 276.2, 422.4 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.3, 0.3 );
    setScaleKey( SP_dodge + 2, 1, 0.3075, 0.3075 );
    setScaleKey( SP_dodge + 4, 1, 0.315, 0.315 );
    setScaleKey( SP_dodge + 6, 1, 0.3225, 0.3225 );
    setScaleKey( SP_dodge + 8, 1, 0.33, 0.33 );
    setScaleKey( SP_dodge + 10, 1, 0.3375, 0.3375 );

    setRotateKey( SP_dodge + 0, 1, -10.9 );
    setRotateKey( SP_dodge + 10, 1, -10.9 );    
    
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
--setDisp( spep_4 + 36, 1, 0 );

setMoveKey( spep_4 -3 + 20, 1, 268.4, 440.5 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 270, 436.9 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 271.6, 433.3 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 273.1, 429.7 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 274.7, 426 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 276.2, 422.4 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 277.8, 418.8 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 279.3, 415.2 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 280.9, 411.6 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 282.5, 408 , 0 );
--setMoveKey( spep_4 -3 + 39, 1, 282.5, 408 , 0 );

setScaleKey( spep_4 -3 + 22, 1, 0.3075, 0.3075 );
setScaleKey( spep_4 -3 + 24, 1, 0.315, 0.315 );
setScaleKey( spep_4 -3 + 26, 1, 0.3225, 0.3225 );
setScaleKey( spep_4 -3 + 28, 1, 0.33, 0.33 );
setScaleKey( spep_4 -3 + 30, 1, 0.3375, 0.3375 );
setScaleKey( spep_4 -3 + 32, 1, 0.345, 0.345 );
setScaleKey( spep_4 -3 + 34, 1, 0.3525, 0.3525 );
setScaleKey( spep_4 -3 + 36, 1, 0.36, 0.36 );
setScaleKey( spep_4 -3 + 38, 1, 0.385, 0.385 );
--setScaleKey( spep_4 -3 + 39, 1, 0.385, 0.385 );

setRotateKey( spep_4 + 35, 1, -10.9 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 36 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 36;


------------------------------------------------------
-- 飛行する気円斬～分裂   ef_005_back(144F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
move_f = entryEffectLife( spep_5 + 0, SP_07r, 144, 0x100, -1, 0, 0, 0 );  --飛行する気円斬～分裂   ef_005_front
setEffMoveKey( spep_5 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 144, move_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 144, move_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, move_f, 0 );
setEffRotateKey( spep_5 + 144, move_f, 0 );
setEffAlphaKey( spep_5 + 0, move_f, 255 );
setEffAlphaKey( spep_5 + 144 -1, move_f, 255 );
setEffAlphaKey( spep_5 + 144, move_f, 0 );

move_b = entryEffectLife( spep_5 + 0, SP_08r, 144, 0x80, -1, 0, 0, 0 );  --飛行する気円斬～分裂    ef_005_back
setEffMoveKey( spep_5 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 144, move_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 144, move_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, move_b, 0 );
setEffRotateKey( spep_5 + 144, move_b, 0 );
setEffAlphaKey( spep_5 + 0, move_b, 255 );
setEffAlphaKey( spep_5 + 144 -1, move_b, 255 );
setEffAlphaKey( spep_5 + 144, move_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_5 + 0, 1, 1 );
--setDisp( spep_5 + 144, 1, 0 );
changeAnime( spep_5 + 0, 1, 104 );

setMoveKey( spep_5 + 0, 1, 3239.5, 3444.3 , 0 );
setMoveKey( spep_5 + 1, 1, 2801.4, 2981.3 , 0 );
setMoveKey( spep_5 + 2, 1, 2388.7, 2544.6 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 2000.5, 2133.3 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 1636.3, 1746.8 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 1572.2, 1680.3 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 1509.7, 1615.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 1448.8, 1552.3 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 1389.4, 1490.8 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 1331.6, 1430.8 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 1275.3, 1372.5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 1220.6, 1315.7 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 1167.5, 1260.6 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 1115.8, 1207 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 1065.7, 1155 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 1017.1, 1104.5 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 969.9, 1055.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 924.3, 1008.3 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 880.1, 962.5 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 837.5, 918.2 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 796.3, 875.4 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 756.5, 834.2 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 718.3, 794.5 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 681.4, 756.2 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 646, 719.4 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 612, 684.1 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 579.4, 650.3 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 548.2, 617.9 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 518.5, 587 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 490.1, 557.5 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 463.2, 529.5 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 437.5, 502.8 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 413.3, 477.7 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 390.4, 453.8 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 368.8, 431.4 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 348.7, 410.5 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 329.8, 390.8 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 312.3, 372.6 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 296, 355.6 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 281.2, 340.1 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 267.5, 325.9 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 255.2, 313 , 0 );
setMoveKey( spep_5 -3 + 84, 1, 244.2, 301.5 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 234.4, 291.3 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 225.9, 282.4 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 218.7, 274.8 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 212.7, 268.4 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 208, 263.5 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 204.4, 259.7 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 202.2, 257.2 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 201, 256 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 210.6, 268.2 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 200.1, 254.8 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 209.7, 267 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 199.2, 253.6 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 208.7, 265.7 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 198.3, 252.5 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 207.7, 264.5 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 197.4, 251.3 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 196.9, 250.7 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 196.4, 250.1 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 196, 249.5 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 195.5, 248.9 , 0 );
setMoveKey( spep_5 -3 + 126, 1, 195.1, 248.3 , 0 );
setMoveKey( spep_5 -3 + 128, 1, 194.6, 247.7 , 0 );
setMoveKey( spep_5 -3 + 130, 1, 194.2, 247.2 , 0 );
setMoveKey( spep_5 -3 + 132, 1, 193.7, 246.5 , 0 );
setMoveKey( spep_5 -3 + 134, 1, 193.2, 245.9 , 0 );
setMoveKey( spep_5 -3 + 136, 1, 192.7, 245.4 , 0 );
setMoveKey( spep_5 -3 + 138, 1, 192.2, 244.7 , 0 );
setMoveKey( spep_5 -3 + 140, 1, 191.8, 244.2 , 0 );
setMoveKey( spep_5 -3 + 142, 1, 191.3, 243.6 , 0 );
setMoveKey( spep_5 -3 + 144, 1, 190.9, 243 , 0 );
setMoveKey( spep_5 -3 + 146, 1, 190.4, 242.4 , 0 );
--setMoveKey( spep_5 -3 + 147, 1, 190.4, 242.4 , 0 );

setScaleKey( spep_5 + 0, 1, 2.22, 2.22 );
setScaleKey( spep_5 + 1, 1, 1.92, 1.92 );
setScaleKey( spep_5 + 2, 1, 1.68, 1.68 );
setScaleKey( spep_5 -3 + 6, 1, 1.44, 1.44 );
setScaleKey( spep_5 -3 + 8, 1, 0.9, 0.9 );
----setScaleKey( spep_5 -3 + 10, 1, 1.14, 1.14 );
--setScaleKey( spep_5 -3 + 12, 1, 1.14, 1.14 );
----setScaleKey( spep_5 -3 + 14, 1, 1.08, 1.08 );
--setScaleKey( spep_5 -3 + 18, 1, 1.08, 1.08 );
----setScaleKey( spep_5 -3 + 20, 1, 1.02, 1.02 );
--setScaleKey( spep_5 -3 + 22, 1, 1.02, 1.02 );
----setScaleKey( spep_5 -3 + 24, 1, 0.96, 0.96 );
--setScaleKey( spep_5 -3 + 28, 1, 0.96, 0.96 );
----setScaleKey( spep_5 -3 + 30, 1, 0.9, 0.9 );
--setScaleKey( spep_5 -3 + 34, 1, 0.9, 0.9 );
----setScaleKey( spep_5 -3 + 36, 1, 0.84, 0.84 );
--setScaleKey( spep_5 -3 + 42, 1, 0.84, 0.84 );
----setScaleKey( spep_5 -3 + 44, 1, 0.78, 0.78 );
--setScaleKey( spep_5 -3 + 50, 1, 0.78, 0.78 );
----setScaleKey( spep_5 -3 + 52, 1, 0.72, 0.72 );
--setScaleKey( spep_5 -3 + 58, 1, 0.72, 0.72 );
----setScaleKey( spep_5 -3 + 60, 1, 0.66, 0.66 );
--setScaleKey( spep_5 -3 + 70, 1, 0.66, 0.66 );
--setScaleKey( spep_5 -3 + 72, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 90, 1, 0.6, 0.6 );
--setScaleKey( spep_5 -3 + 92, 1, 0.54, 0.54 );
--setScaleKey( spep_5 -3 + 100, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 102, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 104, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 106, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 108, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 110, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 112, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 114, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 116, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 146, 1, 0.52, 0.52 );
--setScaleKey( spep_5 -3 + 147, 1, 0.52, 0.52 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 146, 1, 0 );
--setRotateKey( spep_5 -3 + 147, 1, 0 );

-- ** 音 ** --
--気円斬飛んでいく
--SE012 = playSe( spep_5 + 6, 1202 );
SE012 = playSeVer2( spep_5 + 6, 1202, "", 0, 0, 0, -1);

--気円斬分裂する
--SE013 = playSe( spep_5 + 94, 1052 );
SE013 = playSeVer2( spep_5 + 94, 1052, "", 0, 0, 0, -1);

--気円斬分裂する
--SE014 = playSe( spep_5 + 94, 1046 );
SE014 = playSeVer2( spep_5 + 94, 1046, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 94, SE014, 73 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 144 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 144;


------------------------------------------------------
-- 着弾～フィニッシュ(256F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_09r, 0x100, -1, 0, 0, 0 );  --着弾～フィニッシュ   ef_006_front
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 256, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 256, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 256, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 256, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_10r, 0x80, -1, 0, 0, 0 );  --着弾～フィニッシュ    ef_006_back
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 256, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 256, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 256, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 256, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 146, 1, 0 );
changeAnime( spep_6 + 0, 1, 104 );
changeAnime( spep_6 -3 + 40, 1, 108 );
changeAnime( spep_6 -3 + 46, 1, 106 );
changeAnime( spep_6 -3 + 52, 1, 105 );
changeAnime( spep_6 -3 + 64, 1, 108 );
changeAnime( spep_6 -3 + 74, 1, 106 );
changeAnime( spep_6 -3 + 84, 1, 105 );
changeAnime( spep_6 -3 + 94, 1, 108 );
changeAnime( spep_6 -3 + 104, 1, 106 );
changeAnime( spep_6 -3 + 114, 1, 105 );
changeAnime( spep_6 -3 + 126, 1, 108 );
--changeAnime( spep_6 -3 + 146, 1, 105 );

a6 = 15;
b6 = 20;
setMoveKey( spep_6 + 0, 1, 127.1 +a6, 332.4 +b6 , 0 );
setMoveKey( spep_6 + 1, 1, 115.1 +a6, 305.9 +b6 , 0 );
setMoveKey( spep_6 + 2, 1, 103 +a6, 279.4 +b6 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 91 +a6, 252.8 +b6 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 79 +a6, 226.2 +b6 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 66.9 +a6, 199.6 +b6 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 54.8 +a6, 173.1 +b6 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 53.5 +a6, 170.2 +b6 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 52.2 +a6, 167.4 +b6 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 50.9 +a6, 164.6 +b6 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 49.6 +a6, 161.7 +b6 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 48.4 +a6, 158.9 +b6 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 47.1 +a6, 156 +b6 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 45.8 +a6, 153.2 +b6 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 44.4 +a6, 150.3 +b6 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 43.2 +a6, 147.5 +b6 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 41.9 +a6, 144.6 +b6 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 40.6 +a6, 141.8 +b6 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 39.3 +a6, 138.9 +b6 , 0 );
setMoveKey( spep_6 -3 + 39, 1, 38 +a6, 136.1 +b6 , 0 );

a7 = 55;
b7 = 20;
setMoveKey( spep_6 -3 + 40, 1, -15.7 +a7, 97.5 +b7 , 0 );
setMoveKey( spep_6 -3 + 42, 1, -15.9 +a7, 114.2 +b7 , 0 );
setMoveKey( spep_6 -3 + 45, 1, -8.1 +a7, 124.9 +b7 , 0 );

a8 = 20;
b8 = 55;
setMoveKey( spep_6 -3 + 46, 1, 19.7 -a8, 96.1 +b8 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 3.6 -a8, 88.8 +b8 , 0 );
setMoveKey( spep_6 -3 + 51, 1, 19.6 -a8, 93.4 +b8 , 0 );

a9 = 30;
b9 = 0;
setMoveKey( spep_6 -3 + 52, 1, 8.4 +a9, 159.9 +b9 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 8.3 +a9, 142.7 +b9 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 26.2 +a9, 127.5 +b9 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 8.2 +a9, 140.3 +b9 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 0.1 +a9, 151 +b9 , 0 );
setMoveKey( spep_6 -3 + 63, 1, 8 +a9, 137.8 +b9 , 0 );

a10 = 50;
b10 = 20;
setMoveKey( spep_6 -3 + 64, 1, -9.7 +a10, 93.6 +b10 , 0 );
setMoveKey( spep_6 -3 + 66, 1, -17.9 +a10, 98.2 +b10 , 0 );
setMoveKey( spep_6 -3 + 68, 1, -18.1 +a10, 108.9 +b10 , 0 );
setMoveKey( spep_6 -3 + 70, 1, -18.2 +a10, 95.6 +b10 , 0 );
setMoveKey( spep_6 -3 + 73, 1, -28.4 +a10, 82.3 +b10 , 0 );

a11 = 20;
b11 = 70;
setMoveKey( spep_6 -3 + 74, 1, 18.9 -a11, 76.8 +b11 , 0 );
setMoveKey( spep_6 -3 + 76, 1, 18.8 -a11, 85.5 +b11 , 0 );
setMoveKey( spep_6 -3 + 78, 1, 18.8 -a11, 74.1 +b11 , 0 );
setMoveKey( spep_6 -3 + 80, 1, 34.7 -a11, 64.7 +b11 , 0 );
setMoveKey( spep_6 -3 + 83, 1, 18.6 -a11, 71.4 +b11 , 0 );

a12 = 25;
b12 = 0;
setMoveKey( spep_6 -3 + 84, 1, -5 +a12, 130.4 +b12 , 0 );
setMoveKey( spep_6 -3 + 86, 1, 6.9 +a12, 123.2 +b12 , 0 );
setMoveKey( spep_6 -3 + 88, 1, 14.8 +a12, 112 +b12 , 0 );
setMoveKey( spep_6 -3 + 90, 1, 6.7 +a12, 120.7 +b12 , 0 );
setMoveKey( spep_6 -3 + 93, 1, 14.7 +a12, 131.5 +b12 , 0 );

a13 = 55;
b13 = 20;
setMoveKey( spep_6 -3 + 94, 1, -20.2 +a13, 79.6 +b13 , 0 );
setMoveKey( spep_6 -3 + 96, 1, -32.4 +a13, 64.3 +b13 , 0 );
setMoveKey( spep_6 -3 + 98, 1, -20.5 +a13, 77 +b13 , 0 );
setMoveKey( spep_6 -3 + 100, 1, -10.7 +a13, 87.6 +b13 , 0 );
setMoveKey( spep_6 -3 + 103, 1, -20.8 +a13, 74.3 +b13 , 0 );

a14 =25;
b14 = 60;
setMoveKey( spep_6 -3 + 104, 1, 12 -a14, 32.2 +b14 , 0 );
setMoveKey( spep_6 -3 + 106, 1, 18 -a14, 54.8 +b14 , 0 );
setMoveKey( spep_6 -3 + 108, 1, 27.9 -a14, 65.4 +b14 , 0 );
setMoveKey( spep_6 -3 + 110, 1, 17.8 -a14, 52.1 +b14 , 0 );
setMoveKey( spep_6 -3 + 113, 1, 11.8 -a14, 32.7 +b14 , 0 );

a15 = 30;
b15 = 0;
setMoveKey( spep_6 -3 + 114, 1, 5.6 +a15, 106.1 -b15 , 0 );
setMoveKey( spep_6 -3 + 116, 1, 21.6 +a15, 108.9 -b15 , 0 );
setMoveKey( spep_6 -3 + 118, 1, 5.4 +a15, 103.6 -b15 , 0 );
setMoveKey( spep_6 -3 + 120, 1, -6.6 +a15, 96.4 -b15 , 0 );
setMoveKey( spep_6 -3 + 122, 1, 5.3 +a15, 101.2 -b15 , 0 );
setMoveKey( spep_6 -3 + 125, 1, 11.2 +a15, 108 -b15 , 0 );

a16 = 65;
b16 = 20;
setMoveKey( spep_6 -3 + 126, 1, -22.8 +a16, 58.4 +b16 , 0 );
setMoveKey( spep_6 -3 + 128, 1, -35 +a16, 63 +b16 , 0 );
setMoveKey( spep_6 -3 + 130, 1, -23.2 +a16, 45.7 +b16 , 0 );
setMoveKey( spep_6 -3 + 132, 1, -23.4 +a16, 54.4 +b16 , 0 );
setMoveKey( spep_6 -3 + 134, 1, -23.5 +a16, 53 +b16 , 0 );
setMoveKey( spep_6 -3 + 136, 1, -23.7 +a16, 51.7 +b16 , 0 );
setMoveKey( spep_6 -3 + 138, 1, -23.8 +a16, 50.4 +b16 , 0 );
setMoveKey( spep_6 -3 + 140, 1, -24 +a16, 49 +b16 , 0 );
setMoveKey( spep_6 -3 + 142, 1, -24.2 +a16, 47.7 +b16 , 0 );
setMoveKey( spep_6 -3 + 145, 1, -24.4 +a16, 46.4 +b16 , 0 );
setMoveKey( spep_6 -3 + 146, 1, -24.4 +a16, 46.4 +b16 , 0 );
--setMoveKey( spep_6 -3 + 146, 1, 20.2 +a6, 98.5 +b6 , 0 );
--setMoveKey( spep_6 -3 + 148, 1, 4.1 +a6, 85.3 +b6 , 0 );
--setMoveKey( spep_6 -3 + 150, 1, -18 +a6, 62.1 +b6 , 0 );
--setMoveKey( spep_6 -3 + 152, 1, 19.9 +a6, 88.8 +b6 , 0 );
--setMoveKey( spep_6 -3 + 154, 1, 3.8 +a6, 81.6 +b6 , 0 );
--setMoveKey( spep_6 -3 + 156, 1, -8.3 +a6, 68.4 +b6 , 0 );
--setMoveKey( spep_6 -3 + 158, 1, 19.6 +a6, 67.2 +b6 , 0 );
--setMoveKey( spep_6 -3 + 160, 1, -2.5 +a6, 94 +b6 , 0 );
--setMoveKey( spep_6 -3 + 162, 1, 11.5 +a6, 66.7 +b6 , 0 );
--setMoveKey( spep_6 -3 + 164, 1, -6.6 +a6, 83.5 +b6 , 0 );
--setMoveKey( spep_6 -3 + 166, 1, 7.3 +a6, 60.3 +b6 , 0 );
--setMoveKey( spep_6 -3 + 168, 1, -6.8 +a6, 65.1 +b6 , 0 );
--setMoveKey( spep_6 -3 + 170, 1, 9.1 +a6, 81.9 +b6 , 0 );
--setMoveKey( spep_6 -3 + 172, 1, -11 +a6, 70.6 +b6 , 0 );
--setMoveKey( spep_6 -3 + 174, 1, 12.9 +a6, 61.4 +b6 , 0 );
--setMoveKey( spep_6 -3 + 176, 1, -1.1 +a6, 78.2 +b6 , 0 );
--setMoveKey( spep_6 -3 + 177, 1, -1.1 +a6, 78.2 +b6 , 0 );

setScaleKey( spep_6 + 0, 1, 2.34, 2.34 );
setScaleKey( spep_6 + 1, 1, 2.22, 2.22 );
setScaleKey( spep_6 + 2, 1, 2.04, 2.04 );
setScaleKey( spep_6 -3 + 6, 1, 1.86, 1.86 );
setScaleKey( spep_6 -3 + 8, 1, 1.74, 1.74 );
setScaleKey( spep_6 -3 + 10, 1, 1.56, 1.56 );
setScaleKey( spep_6 -3 + 12, 1, 1.44, 1.44 );
--setScaleKey( spep_6 -3 + 14, 1, 1.38, 1.38 );
setScaleKey( spep_6 -3 + 18, 1, 1.38, 1.38 );
--setScaleKey( spep_6 -3 + 20, 1, 1.32, 1.32 );
setScaleKey( spep_6 -3 + 26, 1, 1.32, 1.32 );
--setScaleKey( spep_6 -3 + 28, 1, 1.26, 1.26 );
setScaleKey( spep_6 -3 + 34, 1, 1.26, 1.26 );
--setScaleKey( spep_6 -3 + 36, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 39, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 45, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 46, 1, 1.32, 1.32 );
setScaleKey( spep_6 -3 + 51, 1, 1.32, 1.32 );
setScaleKey( spep_6 -3 + 52, 1, 1.14, 1.14 );
setScaleKey( spep_6 -3 + 56, 1, 1.14, 1.14 );
setScaleKey( spep_6 -3 + 58, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 63, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 64, 1, 1.26, 1.26 );
setScaleKey( spep_6 -3 + 73, 1, 1.26, 1.26 );
setScaleKey( spep_6 -3 + 74, 1, 1.38, 1.38 );
setScaleKey( spep_6 -3 + 83, 1, 1.38, 1.38 );
setScaleKey( spep_6 -3 + 84, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 90, 1, 1.2, 1.2 );
setScaleKey( spep_6 -3 + 93, 1, 1.26, 1.26 );
setScaleKey( spep_6 -3 + 94, 1, 1.32, 1.32 );
setScaleKey( spep_6 -3 + 103, 1, 1.32, 1.32 );
setScaleKey( spep_6 -3 + 104, 1, 1.44, 1.44 );
setScaleKey( spep_6 -3 + 113, 1, 1.44, 1.44 );
setScaleKey( spep_6 -3 + 114, 1, 1.26, 1.26 );
setScaleKey( spep_6 -3 + 125, 1, 1.26, 1.26 );
setScaleKey( spep_6 -3 + 126, 1, 1.38, 1.38 );
setScaleKey( spep_6 -3 + 146, 1, 1.38, 1.38 );
--setScaleKey( spep_6 -3 + 146, 1, 1.32, 1.32 );
--setScaleKey( spep_6 -3 + 160, 1, 1.32, 1.32 );
--setScaleKey( spep_6 -3 + 162, 1, 1.38, 1.38 );
--setScaleKey( spep_6 -3 + 177, 1, 1.38, 1.38 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 -3 + 45, 1, 0 );
setRotateKey( spep_6 -3 + 46, 1, -32 );
setRotateKey( spep_6 -3 + 51, 1, -32 );
setRotateKey( spep_6 -3 + 52, 1, 0 );
setRotateKey( spep_6 -3 + 73, 1, 0 );
setRotateKey( spep_6 -3 + 74, 1, -32 );
setRotateKey( spep_6 -3 + 83, 1, -32 );
setRotateKey( spep_6 -3 + 84, 1, 0 );
setRotateKey( spep_6 -3 + 103, 1, 0 );
setRotateKey( spep_6 -3 + 104, 1, -32 );
setRotateKey( spep_6 -3 + 113, 1, -32 );
setRotateKey( spep_6 -3 + 114, 1, 0 );
setRotateKey( spep_6 -3 + 146, 1, 0 );
--setRotateKey( spep_6 -3 + 177, 1, 0 );

-- ** 音 ** --
--気弾飛んでいく
--SE015 = playSe( spep_6 + 2, 1021 );
SE015 = playSeVer2( spep_6 + 2, 1021, "", 0, 0, 0, -1);

--連続気弾
--SE016 = playSe( spep_6 + 34, 1155 );
--stopSe( spep_6 + 48, SE016, 10 );
SE016 = playSeVer2( spep_6 + 34, 1155, "",spep_6 + 58, 0, 10, -1);

--連続気弾
--SE018 = playSe( spep_6 + 44, 1155 );
--stopSe( spep_6 + 60, SE018, 10 );
SE018 = playSeVer2( spep_6 + 44, 1155, "",spep_6 + 70, 0, 10, -1);

--連続気弾
--SE020 = playSe( spep_6 + 54, 1155 );
--stopSe( spep_6 + 70, SE020, 10 );
SE020 = playSeVer2( spep_6 + 54, 1155, "",spep_6 + 80, 0, 8, -1);
setSeVolumeByWorkId( spep_6 + 54, SE020, 83 );

--連続気弾
--SE021 = playSe( spep_6 + 64, 1155 );
--stopSe( spep_6 + 78, SE021, 10 );
SE021 = playSeVer2( spep_6 + 64, 1155, "",spep_6 + 88, 0, 6, -1);

--連続気弾
--SE023 = playSe( spep_6 + 74, 1155 );
--stopSe( spep_6 + 92, SE023, 10 );
SE023 = playSeVer2( spep_6 + 74, 1155, "",spep_6 + 102, 0, 6, -1);
setSeVolumeByWorkId( spep_6 + 74, SE023, 83 );

--連続気弾
--SE025 = playSe( spep_6 + 86, 1155 );
--stopSe( spep_6 + 106, SE025, 10 );
SE025 = playSeVer2( spep_6 + 86, 1155, "",spep_6 + 106, 0, 8, -1);

--連続気弾
--SE026 = playSe( spep_6 + 98, 1155 );
--stopSe( spep_6 + 112, SE026, 10 );
SE026 = playSeVer2( spep_6 + 98, 1155, "",spep_6 + 122, 0, 8, -1);
setSeVolumeByWorkId( spep_6 + 98, SE026, 84 );

--連続気弾
--SE028 = playSe( spep_6 + 108, 1155 );
--stopSe( spep_6 + 126, SE028, 10 );
SE028 = playSeVer2( spep_6 + 108, 1155, "",spep_6 + 136, 0, 8, -1);

--連続気弾
--SE029 = playSe( spep_6 + 120, 1155 );
--stopSe( spep_6 + 134, SE029, 10 );
SE029 = playSeVer2( spep_6 + 120, 1155, "",spep_6 + 144, 0, 8, -1);

--連続気弾
--SE031 = playSe( spep_6 + 130, 1155 );
--stopSe( spep_6 + 144, SE031, 10 );
SE031 = playSeVer2( spep_6 + 130, 1155, "",spep_6 + 154, 0, 10, -1);

--連続爆発
--SE017 = playSe( spep_6 + 34, 1023 );
--stopSe( spep_6 + 94, SE017, 20 );
SE017 = playSeVer2( spep_6 + 34, 1023, "",spep_6 + 114, 0, 20, -1);

--連続爆発
--SE019 = playSe( spep_6 + 50, 1023 );
--stopSe( spep_6 + 132, SE019, 20 );
SE019 = playSeVer2( spep_6 + 50, 1023, "",spep_6 + 152, 0, 20, -1);

--連続爆発
--SE022 = playSe( spep_6 + 64, 1023 );
--stopSe( spep_6 + 124, SE022, 22 );
SE022 = playSeVer2( spep_6 + 64, 1023, "",spep_6 + 166, 0, 22, -1);
setSeVolumeByWorkId( spep_6 + 64, SE022, 85 );

--連続爆発
--SE024 = playSe( spep_6 + 84, 1023 );
--stopSe( spep_6 + 146, SE024, 16 );
SE024 = playSeVer2( spep_6 + 84, 1023, "",spep_6 + 162, 0, 16, -1);

--連続爆発
--SE027 = playSe( spep_6 + 102, 1023 );
--stopSe( spep_6 + 164, SE027, 16 );
SE027 = playSeVer2( spep_6 + 102, 1023, "",spep_6 + 180, 0, 16, -1);
setSeVolumeByWorkId( spep_6 + 102, SE027, 74 );

--連続爆発
--SE030 = playSe( spep_6 + 120, 1023 );
--stopSe( spep_6 + 182, SE030, 16 );
SE030 = playSeVer2( spep_6 + 120, 1023, "",spep_6 + 198, 0, 16, -1);
setSeVolumeByWorkId( spep_6 + 120, SE030, 87 );

--ラスト爆発
--SE032 = playSe( spep_6 + 134, 1023 );
SE032 = playSeVer2( spep_6 + 134, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 134, SE032, 89 );

--ラスト爆発
--SE033 = playSe( spep_6 + 134, 1024 );
SE033 = playSeVer2( spep_6 + 134, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 256 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 146 );
endPhase( spep_6 + 246 );

end