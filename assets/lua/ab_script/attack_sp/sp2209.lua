--1022160:超サイヤ人ゴテンクス_スーパーゴーストカミカゼアタック_sp2209
--sp_effect_a9_00085
--sp2209

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
SP_01 = 157558;  --セリフカットイン    ef_001
SP_02 = 157559;  --ゴースト作成  ef_002
SP_03 = 157560;  --ゴースト整列    ef_003
SP_04 = 157562;  --顔アップ    ef_004
SP_05 = 157563;  --幽霊突撃    ef_005_front
SP_06 = 157564;  --幽霊突撃    ef_005_back
SP_07 = 157565;  --フィニッシュ    ef_006
SP_08 = 157566;  --全体攻撃    ef_007_front
SP_09 = 157567;  --全体攻撃    ef_007_back
SP_10 = 157568;  --全体攻撃フィニッシュ  ef_008

--敵側
SP_03r = 157561;  --ゴースト整列    ef_003_r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

changeAnime( 0, 0, 0);
setDisp( 0, 0, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- セリフカットイン(96F)
------------------------------------------------------
spep_0 = 0;

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

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 96, 0x100, -1, 0, 0, 0 );  --セリフカットイン    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 0 );

spep_x = spep_0 + 10;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--顔カットイン
SE001 = playSe( spep_0 + 20, 1018 );

--集中線
SE002 = playSe( spep_0 + 20, 1035 );
setSeVolumeByWorkId( spep_0 + 20, SE002, 115 );
setPitch( spep_0 + 20, SE002, -500 );
setTimeStretch( SE002, 0.67, 10, 1 );

--集中線
SE003 = playSe( spep_0 + 20, 20 );
setSeVolumeByWorkId( spep_0 + 20, SE003, 78 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


------------------------------------------------------
-- ゴースト作成(136F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
gcreate = entryEffectLife( spep_1 + 0, SP_02, 136, 0x100, -1, 0, 0, 0 );  --ゴースト作成  ef_002
setEffMoveKey( spep_1 + 0, gcreate, 0, 0 , 0 );
setEffMoveKey( spep_1 + 136, gcreate, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, gcreate, 1.0, 1.0 );
setEffScaleKey( spep_1 + 136, gcreate, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, gcreate, 0 );
setEffRotateKey( spep_1 + 136, gcreate, 0 );
setEffAlphaKey( spep_1 + 0, gcreate, 255 );
setEffAlphaKey( spep_1 + 136 -1, gcreate, 255 );
setEffAlphaKey( spep_1 + 136, gcreate, 0 );

-- ** 音 ** --
--息吸い込む
SE004 = playSe( spep_1 + 14, 44 );
setSeVolumeByWorkId( spep_1 + 14, SE004, 20 );
setSeVolumeByWorkId( spep_1 + 18, SE004, 40 );
setSeVolumeByWorkId( spep_1 + 22, SE004, 60 );
setSeVolumeByWorkId( spep_1 + 26, SE004, 80 );
setSeVolumeByWorkId( spep_1 + 30, SE004, 100 );
stopSe( spep_1 + 46, SE004, 16 );

--息吸い込む
SE005 = playSe( spep_1 + 20, 1246 );
stopSe( spep_1 + 34, SE005, 4 );

--おばけ飛び出す
SE006 = playSe( spep_1 + 68, 1294,"",0.6 );
setSeVolumeByWorkId( spep_1 + 68, SE006, 27 );
setSeVolumeByWorkId( spep_1 + 69, SE006, 54 );
setSeVolumeByWorkId( spep_1 + 70, SE006, 81 );
setSeVolumeByWorkId( spep_1 + 71, SE006, 108 );
setSeVolumeByWorkId( spep_1 + 72, SE006, 135 );
setSeVolumeByWorkId( spep_1 + 73, SE006, 162 );
setSeVolumeByWorkId( spep_1 + 74, SE006, 188 );
setStartTimeMs( SE006,  283 );

--おばけ飛び出す
SE007 = playSe( spep_1 + 60, 1257 );
stopSe( spep_1 + 78, SE007, 8 );
setPitch( spep_1 + 60, SE007, -800 );
setTimeStretch( SE007, 0.47, 10, 1 );

--おばけ飛び出す
SE008 = playSe( spep_1 + 60, 1293 );
setSeVolumeByWorkId( spep_1 + 60, SE008, 27 );
setSeVolumeByWorkId( spep_1 + 62, SE008, 54 );
setSeVolumeByWorkId( spep_1 + 64, SE008, 82 );
setSeVolumeByWorkId( spep_1 + 66, SE008, 110 );
setSeVolumeByWorkId( spep_1 + 68, SE008, 136 );
setSeVolumeByWorkId( spep_1 + 74, SE008, 143 );

--おばけ飛び出す
SE009 = playSe( spep_1 + 70, 1292 );
setSeVolumeByWorkId( spep_1 + 70, SE009, 174 );
stopSe( spep_1 + 84, SE009, 16 );

--おばけ飛び出す
SE010 = playSe( spep_1 + 100, 1294,"",0.6 );
setSeVolumeByWorkId( spep_1 + 100, SE010, 27 );
setSeVolumeByWorkId( spep_1 + 101, SE010, 54 );
setSeVolumeByWorkId( spep_1 + 102, SE010, 81 );
setSeVolumeByWorkId( spep_1 + 103, SE010, 108 );
setSeVolumeByWorkId( spep_1 + 104, SE010, 135 );
setStartTimeMs( SE010,  300 );

--おばけ飛び出す
SE011 = playSe( spep_1 + 88, 1257 );
setSeVolumeByWorkId( spep_1 +88, SE011, 200 );
stopSe( spep_1 + 100, SE011, 10 );
setPitch( spep_1 + 88, SE011, -400 );
setTimeStretch( SE011, 0.73, 10, 1 );

--おばけ飛び出す
SE012 = playSe( spep_1 + 88, 1293 );
setSeVolumeByWorkId( spep_1 + 88, SE012, 45 );
setSeVolumeByWorkId( spep_1 + 90, SE012, 90 );
setSeVolumeByWorkId( spep_1 + 92, SE012, 135 );
setSeVolumeByWorkId( spep_1 + 94, SE012, 180 );

--おばけ飛び出す
SE013 = playSe( spep_1 + 96, 1292 );
setSeVolumeByWorkId( spep_1 + 96, SE013, 141 );
stopSe( spep_1 + 110, SE013, 18 );

--おばけ飛び出す
SE014 = playSe( spep_1 + 126, 1294,"",0.6 );
setSeVolumeByWorkId( spep_1 + 126, SE014, 32 );
setSeVolumeByWorkId( spep_1 + 127, SE014, 64 );
setSeVolumeByWorkId( spep_1 + 128, SE014, 96 );
setSeVolumeByWorkId( spep_1 + 129, SE014, 128 );
setSeVolumeByWorkId( spep_1 + 130, SE014, 162 );
setStartTimeMs( SE014,  283 );

--おばけ飛び出す
SE015 = playSe( spep_1 + 116, 1257 );
setSeVolumeByWorkId( spep_1 + 116, SE015, 214 );
stopSe( spep_1 + 130, SE015, 8 );

--おばけ飛び出す
SE016 = playSe( spep_1 + 116, 1293 );
setSeVolumeByWorkId( spep_1 + 116, SE016, 27 );
setSeVolumeByWorkId( spep_1 + 118, SE016, 54 );
setSeVolumeByWorkId( spep_1 + 120, SE016, 81 );
setSeVolumeByWorkId( spep_1 + 122, SE016, 108 );
setSeVolumeByWorkId( spep_1 + 124, SE016, 136 );
setSeVolumeByWorkId( spep_1 + 126, SE016, 164 );

--おばけ飛び出す
SE017 = playSe( spep_1 + 124, 1292 );
setSeVolumeByWorkId( spep_1 + 124, SE017, 184 );
stopSe( spep_1 +136 + 4, SE017, 16 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 136;


------------------------------------------------------
-- ゴースト整列(136F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
parade = entryEffectLife( spep_2 + 0, SP_03, 136, 0x100, -1, 0, 0, 0 );  --ゴースト整列    ef_003
setEffMoveKey( spep_2 + 0, parade, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, parade, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, parade, 1.0, 1.0 );
setEffScaleKey( spep_2 + 136, parade, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, parade, 0 );
setEffRotateKey( spep_2 + 136, parade, 0 );
setEffAlphaKey( spep_2 + 0, parade, 255 );
setEffAlphaKey( spep_2 + 136 -1, parade, 255 );
setEffAlphaKey( spep_2 + 136, parade, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 音 ** --
--おばけ飛び出す
SE018 = playSe( spep_2 + 20, 1294 );
setSeVolumeByWorkId( spep_2 + 20, SE018, 38 );
setSeVolumeByWorkId( spep_2 + 21, SE018, 76 );
setSeVolumeByWorkId( spep_2 + 22, SE018, 114 );
setSeVolumeByWorkId( spep_2 + 23, SE018, 154 );
setSeVolumeByWorkId( spep_2 + 24, SE018, 193 );
setStartTimeMs( SE018,  283 );

--おばけ飛び出す
SE019 = playSe( spep_2 + 8, 1257 );
setSeVolumeByWorkId( spep_2 + 8, SE019, 224 );
stopSe( spep_2 + 22, SE019, 8 );

--おばけ飛び出す
SE020 = playSe( spep_2 + 8, 1293 );
setSeVolumeByWorkId( spep_2 + 8, SE020, 28 );
setSeVolumeByWorkId( spep_2 + 10, SE020, 56 );
setSeVolumeByWorkId( spep_2 + 12, SE020, 86 );
setSeVolumeByWorkId( spep_2 + 14, SE020, 116 );
setSeVolumeByWorkId( spep_2 + 16, SE020, 144 );
setSeVolumeByWorkId( spep_2 + 18, SE020, 172 );

--おばけ飛び出す
SE021 = playSe( spep_2 + 16, 1292 );
setSeVolumeByWorkId( spep_2 + 16, SE021, 145 );
stopSe( spep_2 + 30, SE021, 18 );

--おばけ整列
SE022 = playSe( spep_2 + 16, 1117,"",0.6 );
stopSe( spep_2 + 36, SE022, 18 );

--おばけ整列
SE023 = playSe( spep_2 + 32, 1117,"",0.6 );
stopSe( spep_2 + 52, SE023, 18 );

--おばけ整列
SE024 = playSe( spep_2 + 44, 1117,"",0.6 );
setSeVolumeByWorkId( spep_2 + 44, SE024, 87 );
stopSe( spep_2 + 64, SE024, 18 );

--おばけ整列
SE025 = playSe( spep_2 + 58, 1117 );
stopSe( spep_2 + 78, SE025, 16 );

--おばけ整列
SE026 = playSe( spep_2 + 60, 1113 );

--おばけ整列
SE027 = playSe( spep_2 + 74, 1117 );

--おばけ整列
SE028 = playSe( spep_2 + 74, 1113 );

--おばけ整列
SE029 = playSe( spep_2 + 90, 1113 );

--おばけ整列
SE030 = playSe( spep_2 + 104, 1113 );

--おばけ整列
SE031 = playSe( spep_2 + 120, 1113 );

--おばけ整列
--SE032 = playSe( spep_2 + 134, 1113 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 136;


------------------------------------------------------
-- 顔アップ(56F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
faceup = entryEffectLife( spep_3 + 0, SP_04, 56, 0x100, -1, 0, 0, 0 );  --顔アップ    ef_004
setEffMoveKey( spep_3 + 0, faceup, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, faceup, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, faceup, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, faceup, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, faceup, 0 );
setEffRotateKey( spep_3 + 56, faceup, 0 );
setEffAlphaKey( spep_3 + 0, faceup, 255 );
setEffAlphaKey( spep_3 + 56 -1, faceup, 255 );
setEffAlphaKey( spep_3 + 56, faceup, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 音 ** --
--号令
SE033 = playSe( spep_3 + 16, 20 );
stopSe( spep_3 + 54, SE033, 8 );

--号令
SE034 = playSe( spep_3 + 16, 1237 );
setSeVolumeByWorkId( spep_3 + 16, SE034, 79 );
stopSe( spep_3 + 54, SE034, 8 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_c = spep_4;

-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE05 = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE05 = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE05 = playSe( spep_c, SE_05);
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
--おばけ飛んでくる  
SE036 = playSe( spep_c + 90, 1116 );
--おばけ飛んでくる
SE037 = playSe( spep_c + 90, 1278,"",0.5 );
stopSe( spep_4 +96 +136 + 2, SE037, 6 );    
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_5 = spep_c + 94;

------------------------------------------------------
-- 幽霊突撃(146F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
gattack_f = entryEffectLife( spep_5 + 0, SP_05, 145, 0x100, -1, 0, 0, 0 );  --幽霊突撃    ef_005_front
setEffMoveKey( spep_5 + 0, gattack_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 145, gattack_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gattack_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 145, gattack_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gattack_f, 0 );
setEffRotateKey( spep_5 + 145, gattack_f, 0 );
setEffAlphaKey( spep_5 + 0, gattack_f, 255 );
setEffAlphaKey( spep_5 + 145 -1, gattack_f, 255 );
setEffAlphaKey( spep_5 + 145, gattack_f, 0 );

gattack_b = entryEffectLife( spep_5 + 0, SP_06, 145, 0x80, -1, 0, 0, 0 );  --幽霊突撃    ef_005_back
setEffMoveKey( spep_5 + 0, gattack_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 145, gattack_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gattack_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 145, gattack_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gattack_b, 0 );
setEffRotateKey( spep_5 + 145, gattack_b, 0 );
setEffAlphaKey( spep_5 + 0, gattack_b, 255 );
setEffAlphaKey( spep_5 + 145 -1, gattack_b, 255 );
setEffAlphaKey( spep_5 + 145, gattack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 118 );

a1 = 60;
b1 = 25;
setMoveKey( spep_5 + 0, 1, 242.5 +a1, -1255.2 +b1  , 0 );
setMoveKey( spep_5 + 1, 1, 219.6 +a1, -1003.8 +b1  , 0 );
setMoveKey( spep_5 + 2, 1, 199.4 +a1, -804.3 +b1  , 0 );
setMoveKey( spep_5 -3 + 6, 1, 181.7 +a1, -650.7 +b1  , 0 );
setMoveKey( spep_5 -3 + 8, 1, 166 +a1, -537.5 +b1  , 0 );
setMoveKey( spep_5 -3 + 10, 1, 152.1 +a1, -459.1 +b1  , 0 );
setMoveKey( spep_5 -3 + 12, 1, 139.6 +a1, -409.5 +b1  , 0 );

setScaleKey( spep_5 + 0, 1, 6.06, 6.06 );
setScaleKey( spep_5 + 1, 1, 5.25, 5.25 );
setScaleKey( spep_5 + 2, 1, 4.56, 4.56 );
setScaleKey( spep_5 -3 + 6, 1, 4.02, 4.02 );
setScaleKey( spep_5 -3 + 8, 1, 3.57, 3.57 );
setScaleKey( spep_5 -3 + 10, 1, 3.21, 3.21 );
setScaleKey( spep_5 -3 + 12, 1, 2.91, 2.91 );

setRotateKey( spep_5 + 0, 1, 15.3 );
setRotateKey( spep_5 + 1, 1, 15.3 );
setRotateKey( spep_5 + 2, 1, 15.4 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE05, 0);
    stopSe( SP_dodge - 12, SE036, 0);
    stopSe( SP_dodge - 12, SE037, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 139.6 +a1, -409.5 +b1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 139.6 +a1, -409.5 +b1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2.91, 2.91 );
    setScaleKey( SP_dodge + 10, 1, 2.91, 2.91 );

    setRotateKey( SP_dodge + 0, 1, 15.4 );
    setRotateKey( SP_dodge + 10, 1, 15.4 );    
    
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
setDisp( spep_5 + 120, 1, 0 );

setMoveKey( spep_5 -3 + 78, 1, 139.6 +a1 +2, -409.5 +b1 +2  , 0 );
setMoveKey( spep_5 -3 + 80, 1, 153.1 +a1 +4, -428.2 +b1 +4  , 0 );
setMoveKey( spep_5 -3 + 82, 1, 168.9 +a1 +6, -449.4 +b1 +6  , 0 );
setMoveKey( spep_5 -3 + 84, 1, 187.3 +a1 +8, -473.2 +b1 +8  , 0 );
setMoveKey( spep_5 -3 + 86, 1, 208.4 +a1 +10, -499.9 +b1 +10 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 232.4 +a1 +10, -529.6 +b1 +10  , 0 );
setMoveKey( spep_5 -3 + 90, 1, 259.4 +a1 +15, -562.4 +b1 +10  , 0 );
setMoveKey( spep_5 -3 + 92, 1, 289.6 +a1 +20, -598.7 +b1 +12  , 0 );
setMoveKey( spep_5 -3 + 94, 1, 323.3 +a1 +25, -638.5 +b1 +14  , 0 );
setMoveKey( spep_5 -3 + 96, 1, 360.5 +a1 +35, -682 +b1 +20  , 0 );
setMoveKey( spep_5 -3 + 98, 1, 401.4 +a1 +40, -729.4 +b1 +25  , 0 );
setMoveKey( spep_5 -3 + 100, 1, 446.4 +a1 +50, -780.9 +b1 +32  , 0 );
setMoveKey( spep_5 -3 + 102, 1, 495.3 +a1 +60, -836.7 +b1 +35  , 0 );
setMoveKey( spep_5 -3 + 104, 1, 548.5 +a1 +70, -897 +b1 +40  , 0 );
setMoveKey( spep_5 -3 + 106, 1, 606.1 +a1 +80, -961.8 +b1 +45  , 0 );
setMoveKey( spep_5 -3 + 108, 1, 668.5 +a1 +90, -1031.5 +b1 +50  , 0 );
setMoveKey( spep_5 -3 + 110, 1, 735.5 +a1 +100, -1106.2 +b1 +60  , 0 );
setMoveKey( spep_5 -3 + 112, 1, 807.5 +a1 +110, -1186.1 +b1 +70  , 0 );
setMoveKey( spep_5 -3 + 114, 1, 884.6 +a1 +120, -1271.3 +b1 +80  , 0 );
setMoveKey( spep_5 -3 + 116, 1, 967.1 +a1 +130, -1362.1 +b1 +100  , 0 );
setMoveKey( spep_5 -3 + 118, 1, 1055.1 +a1 +140, -1458.6 +b1 +110  , 0 );
setMoveKey( spep_5 -3 + 120, 1, 1148.6 +a1 +150, -1561 +b1 +120  , 0 );
setMoveKey( spep_5 -3 + 122, 1, 1248 +a1 +160, -1669.5 +b1 +130  , 0 );
setMoveKey( spep_5 -3 + 123, 1, 1248 +a1 +160, -1669.5 +b1 +130  , 0 );

setScaleKey( spep_5 -3 + 78, 1, 2.91, 2.91 );
setScaleKey( spep_5 -3 + 80, 1, 3, 3 );
setScaleKey( spep_5 -3 + 82, 1, 3.15, 3.15 );
setScaleKey( spep_5 -3 + 84, 1, 3.3, 3.3 );
setScaleKey( spep_5 -3 + 86, 1, 3.48, 3.48 );
setScaleKey( spep_5 -3 + 88, 1, 3.72, 3.72 );
setScaleKey( spep_5 -3 + 90, 1, 3.99, 3.99 );
setScaleKey( spep_5 -3 + 92, 1, 4.32, 4.32 );
setScaleKey( spep_5 -3 + 94, 1, 4.68, 4.68 );
setScaleKey( spep_5 -3 + 96, 1, 5.1, 5.1 );
setScaleKey( spep_5 -3 + 98, 1, 5.55, 5.55 );
setScaleKey( spep_5 -3 + 100, 1, 6.06, 6.06 );
setScaleKey( spep_5 -3 + 102, 1, 6.63, 6.63 );
setScaleKey( spep_5 -3 + 104, 1, 7.26, 7.26 );
--setScaleKey( spep_5 -3 + 106, 1, 7.95, 7.95 );
--setScaleKey( spep_5 -3 + 108, 1, 8.7, 8.7 );
--setScaleKey( spep_5 -3 + 110, 1, 9.51, 9.51 );
--setScaleKey( spep_5 -3 + 112, 1, 10.41, 10.41 );
--setScaleKey( spep_5 -3 + 114, 1, 11.34, 11.34 );
--setScaleKey( spep_5 -3 + 116, 1, 12.36, 12.36 );
--setScaleKey( spep_5 -3 + 118, 1, 13.47, 13.47 );
--setScaleKey( spep_5 -3 + 120, 1, 14.64, 14.64 );
--setScaleKey( spep_5 -3 + 122, 1, 15.87, 15.87 );
setScaleKey( spep_5 -3 + 122, 1, 7.5, 7.5 );

setRotateKey( spep_5 -3 + 110, 1, 15.4 );
setRotateKey( spep_5 -3 + 112, 1, 15.3 );
setRotateKey( spep_5 -3 + 123, 1, 15.3 );

-- ** 音 ** --
--おばけ飛んでくる
SE038 = playSe( spep_5 + 40, 1277 );
stopSe( spep_5 + 90,SE038, 20);

--おばけ飛んでくる
SE039 = playSe( spep_5 + 40, 1290 );
setSeVolumeByWorkId( spep_5 + 40, SE039, 89 );

--おばけ飛んでくる
SE040 = playSe( spep_5 + 60, 1277 );
setPitch( spep_5 + 60, SE040, -400 );
setTimeStretch( SE040, 0.73, 10, 1 );

--おばけ飛んでくる
SE041 = playSe( spep_5 + 68, 1290 );
setSeVolumeByWorkId( spep_5 + 68, SE041, 63 );

--おばけ飛んでくる
SE042 = playSe( spep_5 + 82, 1277 );
setPitch( spep_5 + 82, SE042, -200 );
setTimeStretch( SE042, 0.87, 10, 1 );

--おばけヒット
SE043 = playSe( spep_5 + 138, 1112 );
setSeVolumeByWorkId( spep_5 + 138, SE043, 126 );
stopSe( spep_5 +146 + 18, SE043, 16 );
setPitch( spep_5 + 138, SE043, -900 );
setTimeStretch( SE043, 0.4, 10, 1 );

--おばけヒット
SE044 = playSe( spep_5 + 138, 31 );
setSeVolumeByWorkId( spep_5 + 138, SE044, 16 );
setSeVolumeByWorkId( spep_5 + 140, SE044, 30 );
setSeVolumeByWorkId( spep_5 + 142, SE044, 46 );
setSeVolumeByWorkId( spep_5 + 144, SE044, 62 );
setSeVolumeByWorkId( spep_5 + 146, SE044, 78 );
setSeVolumeByWorkId( spep_5 + 148, SE044, 94 );
setSeVolumeByWorkId( spep_5 + 150, SE044, 110 );
setSeVolumeByWorkId( spep_5 + 152, SE044, 126 );

--おばけヒット
SE045 = playSe( spep_5 + 138, 1291 );
setSeVolumeByWorkId( spep_5 + 138, SE045, 126 );
setPitch( spep_5 + 138, SE045, -200 );
setTimeStretch( SE045, 0.87, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 145 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 145;


------------------------------------------------------
-- フィニッシュ(116F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --フィニッシュ    ef_006
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 116, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 116, finish_f, 255 );

-- ** 音 ** --
--おばけ爆発
SE046 = playSe( spep_6 + 20, 1023 );
setSeVolumeByWorkId( spep_6 + 20, SE046, 89 );

--おばけ爆発
SE047 = playSe( spep_6 + 20, 1011 );
setSeVolumeByWorkId( spep_6 + 20, SE047, 89 );

--おばけ爆発
SE048 = playSe( spep_6 + 20, 1302 );
setSeVolumeByWorkId( spep_6 + 20, SE048, 18 );
setPitch( spep_6 + 20, SE048, -800 );
setTimeStretch( SE048, 0.47, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 6 );
endPhase( spep_6 + 106 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- セリフカットイン(96F)
------------------------------------------------------
spep_0 = 0;

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

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 96, 0x100, -1, 0, 0, 0 );  --セリフカットイン    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 96, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 96, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 96 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 96, first_f, 0 );

spep_x = spep_0 + 10;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--顔カットイン
SE001 = playSe( spep_0 + 20, 1018 );

--集中線
SE002 = playSe( spep_0 + 20, 1035 );
setSeVolumeByWorkId( spep_0 + 20, SE002, 115 );
setPitch( spep_0 + 20, SE002, -500 );
setTimeStretch( SE002, 0.67, 10, 1 );

--集中線
SE003 = playSe( spep_0 + 20, 20 );
setSeVolumeByWorkId( spep_0 + 20, SE003, 78 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;


------------------------------------------------------
-- ゴースト作成(136F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
gcreate = entryEffectLife( spep_1 + 0, SP_02, 136, 0x100, -1, 0, 0, 0 );  --ゴースト作成  ef_002
setEffMoveKey( spep_1 + 0, gcreate, 0, 0 , 0 );
setEffMoveKey( spep_1 + 136, gcreate, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, gcreate, -1.0, 1.0 );
setEffScaleKey( spep_1 + 136, gcreate, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, gcreate, 0 );
setEffRotateKey( spep_1 + 136, gcreate, 0 );
setEffAlphaKey( spep_1 + 0, gcreate, 255 );
setEffAlphaKey( spep_1 + 136 -1, gcreate, 255 );
setEffAlphaKey( spep_1 + 136, gcreate, 0 );

-- ** 音 ** --
--息吸い込む
SE004 = playSe( spep_1 + 14, 44 );
setSeVolumeByWorkId( spep_1 + 14, SE004, 20 );
setSeVolumeByWorkId( spep_1 + 18, SE004, 40 );
setSeVolumeByWorkId( spep_1 + 22, SE004, 60 );
setSeVolumeByWorkId( spep_1 + 26, SE004, 80 );
setSeVolumeByWorkId( spep_1 + 30, SE004, 100 );
stopSe( spep_1 + 46, SE004, 16 );

--息吸い込む
SE005 = playSe( spep_1 + 20, 1246 );
stopSe( spep_1 + 34, SE005, 4 );

--おばけ飛び出す
SE006 = playSe( spep_1 + 68, 1294,"",0.6 );
setSeVolumeByWorkId( spep_1 + 68, SE006, 27 );
setSeVolumeByWorkId( spep_1 + 69, SE006, 54 );
setSeVolumeByWorkId( spep_1 + 70, SE006, 81 );
setSeVolumeByWorkId( spep_1 + 71, SE006, 108 );
setSeVolumeByWorkId( spep_1 + 72, SE006, 135 );
setSeVolumeByWorkId( spep_1 + 73, SE006, 162 );
setSeVolumeByWorkId( spep_1 + 74, SE006, 188 );
setStartTimeMs( SE006,  283 );

--おばけ飛び出す
SE007 = playSe( spep_1 + 60, 1257 );
stopSe( spep_1 + 78, SE007, 8 );
setPitch( spep_1 + 60, SE007, -800 );
setTimeStretch( SE007, 0.47, 10, 1 );

--おばけ飛び出す
SE008 = playSe( spep_1 + 60, 1293 );
setSeVolumeByWorkId( spep_1 + 60, SE008, 27 );
setSeVolumeByWorkId( spep_1 + 62, SE008, 54 );
setSeVolumeByWorkId( spep_1 + 64, SE008, 82 );
setSeVolumeByWorkId( spep_1 + 66, SE008, 110 );
setSeVolumeByWorkId( spep_1 + 68, SE008, 136 );
setSeVolumeByWorkId( spep_1 + 74, SE008, 143 );

--おばけ飛び出す
SE009 = playSe( spep_1 + 70, 1292 );
setSeVolumeByWorkId( spep_1 + 70, SE009, 174 );
stopSe( spep_1 + 84, SE009, 16 );

--おばけ飛び出す
SE010 = playSe( spep_1 + 100, 1294,"",0.6 );
setSeVolumeByWorkId( spep_1 + 100, SE010, 27 );
setSeVolumeByWorkId( spep_1 + 101, SE010, 54 );
setSeVolumeByWorkId( spep_1 + 102, SE010, 81 );
setSeVolumeByWorkId( spep_1 + 103, SE010, 108 );
setSeVolumeByWorkId( spep_1 + 104, SE010, 135 );
setStartTimeMs( SE010,  300 );

--おばけ飛び出す
SE011 = playSe( spep_1 + 88, 1257 );
setSeVolumeByWorkId( spep_1 +88, SE011, 200 );
stopSe( spep_1 + 100, SE011, 10 );
setPitch( spep_1 + 88, SE011, -400 );
setTimeStretch( SE011, 0.73, 10, 1 );

--おばけ飛び出す
SE012 = playSe( spep_1 + 88, 1293 );
setSeVolumeByWorkId( spep_1 + 88, SE012, 45 );
setSeVolumeByWorkId( spep_1 + 90, SE012, 90 );
setSeVolumeByWorkId( spep_1 + 92, SE012, 135 );
setSeVolumeByWorkId( spep_1 + 94, SE012, 180 );

--おばけ飛び出す
SE013 = playSe( spep_1 + 96, 1292 );
setSeVolumeByWorkId( spep_1 + 96, SE013, 141 );
stopSe( spep_1 + 110, SE013, 18 );

--おばけ飛び出す
SE014 = playSe( spep_1 + 126, 1294,"",0.6 );
setSeVolumeByWorkId( spep_1 + 126, SE014, 32 );
setSeVolumeByWorkId( spep_1 + 127, SE014, 64 );
setSeVolumeByWorkId( spep_1 + 128, SE014, 96 );
setSeVolumeByWorkId( spep_1 + 129, SE014, 128 );
setSeVolumeByWorkId( spep_1 + 130, SE014, 162 );
setStartTimeMs( SE014,  283 );

--おばけ飛び出す
SE015 = playSe( spep_1 + 116, 1257 );
setSeVolumeByWorkId( spep_1 + 116, SE015, 214 );
stopSe( spep_1 + 130, SE015, 8 );

--おばけ飛び出す
SE016 = playSe( spep_1 + 116, 1293 );
setSeVolumeByWorkId( spep_1 + 116, SE016, 27 );
setSeVolumeByWorkId( spep_1 + 118, SE016, 54 );
setSeVolumeByWorkId( spep_1 + 120, SE016, 81 );
setSeVolumeByWorkId( spep_1 + 122, SE016, 108 );
setSeVolumeByWorkId( spep_1 + 124, SE016, 136 );
setSeVolumeByWorkId( spep_1 + 126, SE016, 164 );

--おばけ飛び出す
SE017 = playSe( spep_1 + 124, 1292 );
setSeVolumeByWorkId( spep_1 + 124, SE017, 184 );
stopSe( spep_1 +136 + 4, SE017, 16 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 136;


------------------------------------------------------
-- ゴースト整列(136F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
parade = entryEffectLife( spep_2 + 0, SP_03r, 136, 0x100, -1, 0, 0, 0 );  --ゴースト整列    ef_003
setEffMoveKey( spep_2 + 0, parade, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, parade, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, parade, 1.0, 1.0 );
setEffScaleKey( spep_2 + 136, parade, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, parade, 0 );
setEffRotateKey( spep_2 + 136, parade, 0 );
setEffAlphaKey( spep_2 + 0, parade, 255 );
setEffAlphaKey( spep_2 + 136 -1, parade, 255 );
setEffAlphaKey( spep_2 + 136, parade, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 音 ** --
--おばけ飛び出す
SE018 = playSe( spep_2 + 20, 1294 );
setSeVolumeByWorkId( spep_2 + 20, SE018, 38 );
setSeVolumeByWorkId( spep_2 + 21, SE018, 76 );
setSeVolumeByWorkId( spep_2 + 22, SE018, 114 );
setSeVolumeByWorkId( spep_2 + 23, SE018, 154 );
setSeVolumeByWorkId( spep_2 + 24, SE018, 193 );
setStartTimeMs( SE018,  283 );

--おばけ飛び出す
SE019 = playSe( spep_2 + 8, 1257 );
setSeVolumeByWorkId( spep_2 + 8, SE019, 224 );
stopSe( spep_2 + 22, SE019, 8 );

--おばけ飛び出す
SE020 = playSe( spep_2 + 8, 1293 );
setSeVolumeByWorkId( spep_2 + 8, SE020, 28 );
setSeVolumeByWorkId( spep_2 + 10, SE020, 56 );
setSeVolumeByWorkId( spep_2 + 12, SE020, 86 );
setSeVolumeByWorkId( spep_2 + 14, SE020, 116 );
setSeVolumeByWorkId( spep_2 + 16, SE020, 144 );
setSeVolumeByWorkId( spep_2 + 18, SE020, 172 );

--おばけ飛び出す
SE021 = playSe( spep_2 + 16, 1292 );
setSeVolumeByWorkId( spep_2 + 16, SE021, 145 );
stopSe( spep_2 + 30, SE021, 18 );

--おばけ整列
SE022 = playSe( spep_2 + 16, 1117,"",0.6 );
stopSe( spep_2 + 36, SE022, 18 );

--おばけ整列
SE023 = playSe( spep_2 + 32, 1117,"",0.6 );
stopSe( spep_2 + 52, SE023, 18 );

--おばけ整列
SE024 = playSe( spep_2 + 44, 1117,"",0.6 );
setSeVolumeByWorkId( spep_2 + 44, SE024, 87 );
stopSe( spep_2 + 64, SE024, 18 );

--おばけ整列
SE025 = playSe( spep_2 + 58, 1117 );
stopSe( spep_2 + 78, SE025, 16 );

--おばけ整列
SE026 = playSe( spep_2 + 60, 1113 );

--おばけ整列
SE027 = playSe( spep_2 + 74, 1117 );

--おばけ整列
SE028 = playSe( spep_2 + 74, 1113 );

--おばけ整列
SE029 = playSe( spep_2 + 90, 1113 );

--おばけ整列
SE030 = playSe( spep_2 + 104, 1113 );

--おばけ整列
SE031 = playSe( spep_2 + 120, 1113 );

--おばけ整列
--SE032 = playSe( spep_2 + 134, 1113 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 136;


------------------------------------------------------
-- 顔アップ(56F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
faceup = entryEffectLife( spep_3 + 0, SP_04, 56, 0x100, -1, 0, 0, 0 );  --顔アップ    ef_004
setEffMoveKey( spep_3 + 0, faceup, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, faceup, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, faceup, -1.0, 1.0 );
setEffScaleKey( spep_3 + 56, faceup, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, faceup, 0 );
setEffRotateKey( spep_3 + 56, faceup, 0 );
setEffAlphaKey( spep_3 + 0, faceup, 255 );
setEffAlphaKey( spep_3 + 56 -1, faceup, 255 );
setEffAlphaKey( spep_3 + 56, faceup, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 音 ** --
--号令
SE033 = playSe( spep_3 + 16, 20 );
stopSe( spep_3 + 54, SE033, 8 );

--号令
SE034 = playSe( spep_3 + 16, 1237 );
setSeVolumeByWorkId( spep_3 + 16, SE034, 79 );
stopSe( spep_3 + 54, SE034, 8 );

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
SE05 = playSe( spep_4 + 0, SE_05 );

--おばけ飛んでくる  
SE036 = playSe( spep_4 + 90, 1116 );

--おばけ飛んでくる
SE037 = playSe( spep_4 + 90, 1278,"",0.5 );
stopSe( spep_4 +96 +136 + 2, SE037, 6 );    

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- 幽霊突撃(146F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
gattack_f = entryEffectLife( spep_5 + 0, SP_05, 145, 0x100, -1, 0, 0, 0 );  --幽霊突撃    ef_005_front
setEffMoveKey( spep_5 + 0, gattack_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 145, gattack_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gattack_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 145, gattack_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gattack_f, 0 );
setEffRotateKey( spep_5 + 145, gattack_f, 0 );
setEffAlphaKey( spep_5 + 0, gattack_f, 255 );
setEffAlphaKey( spep_5 + 145 -1, gattack_f, 255 );
setEffAlphaKey( spep_5 + 145, gattack_f, 0 );

gattack_b = entryEffectLife( spep_5 + 0, SP_06, 145, 0x80, -1, 0, 0, 0 );  --幽霊突撃    ef_005_back
setEffMoveKey( spep_5 + 0, gattack_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 145, gattack_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gattack_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 145, gattack_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gattack_b, 0 );
setEffRotateKey( spep_5 + 145, gattack_b, 0 );
setEffAlphaKey( spep_5 + 0, gattack_b, 255 );
setEffAlphaKey( spep_5 + 145 -1, gattack_b, 255 );
setEffAlphaKey( spep_5 + 145, gattack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 118 );

a1 = 60;
b1 = 25;
setMoveKey( spep_5 + 0, 1, 242.5 +a1, -1255.2 +b1  , 0 );
setMoveKey( spep_5 + 1, 1, 219.6 +a1, -1003.8 +b1  , 0 );
setMoveKey( spep_5 + 2, 1, 199.4 +a1, -804.3 +b1  , 0 );
setMoveKey( spep_5 -3 + 6, 1, 181.7 +a1, -650.7 +b1  , 0 );
setMoveKey( spep_5 -3 + 8, 1, 166 +a1, -537.5 +b1  , 0 );
setMoveKey( spep_5 -3 + 10, 1, 152.1 +a1, -459.1 +b1  , 0 );
setMoveKey( spep_5 -3 + 12, 1, 139.6 +a1, -409.5 +b1  , 0 );

setScaleKey( spep_5 + 0, 1, 6.06, 6.06 );
setScaleKey( spep_5 + 1, 1, 5.25, 5.25 );
setScaleKey( spep_5 + 2, 1, 4.56, 4.56 );
setScaleKey( spep_5 -3 + 6, 1, 4.02, 4.02 );
setScaleKey( spep_5 -3 + 8, 1, 3.57, 3.57 );
setScaleKey( spep_5 -3 + 10, 1, 3.21, 3.21 );
setScaleKey( spep_5 -3 + 12, 1, 2.91, 2.91 );

setRotateKey( spep_5 + 0, 1, 15.3 );
setRotateKey( spep_5 + 1, 1, 15.3 );
setRotateKey( spep_5 + 2, 1, 15.4 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE05, 0);
    stopSe( SP_dodge - 12, SE036, 0);
    stopSe( SP_dodge - 12, SE037, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 139.6 +a1, -409.5 +b1 , 0 );
    setMoveKey( SP_dodge + 10, 1, 139.6 +a1, -409.5 +b1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2.91, 2.91 );
    setScaleKey( SP_dodge + 10, 1, 2.91, 2.91 );

    setRotateKey( SP_dodge + 0, 1, 15.4 );
    setRotateKey( SP_dodge + 10, 1, 15.4 );    
    
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
setDisp( spep_5 + 120, 1, 0 );

setMoveKey( spep_5 -3 + 78, 1, 139.6 +a1 +2, -409.5 +b1 +2  , 0 );
setMoveKey( spep_5 -3 + 80, 1, 153.1 +a1 +4, -428.2 +b1 +4  , 0 );
setMoveKey( spep_5 -3 + 82, 1, 168.9 +a1 +6, -449.4 +b1 +6  , 0 );
setMoveKey( spep_5 -3 + 84, 1, 187.3 +a1 +8, -473.2 +b1 +8  , 0 );
setMoveKey( spep_5 -3 + 86, 1, 208.4 +a1 +10, -499.9 +b1 +10 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 232.4 +a1 +10, -529.6 +b1 +10  , 0 );
setMoveKey( spep_5 -3 + 90, 1, 259.4 +a1 +15, -562.4 +b1 +10  , 0 );
setMoveKey( spep_5 -3 + 92, 1, 289.6 +a1 +20, -598.7 +b1 +12  , 0 );
setMoveKey( spep_5 -3 + 94, 1, 323.3 +a1 +25, -638.5 +b1 +14  , 0 );
setMoveKey( spep_5 -3 + 96, 1, 360.5 +a1 +35, -682 +b1 +20  , 0 );
setMoveKey( spep_5 -3 + 98, 1, 401.4 +a1 +40, -729.4 +b1 +25  , 0 );
setMoveKey( spep_5 -3 + 100, 1, 446.4 +a1 +50, -780.9 +b1 +32  , 0 );
setMoveKey( spep_5 -3 + 102, 1, 495.3 +a1 +60, -836.7 +b1 +35  , 0 );
setMoveKey( spep_5 -3 + 104, 1, 548.5 +a1 +70, -897 +b1 +40  , 0 );
setMoveKey( spep_5 -3 + 106, 1, 606.1 +a1 +80, -961.8 +b1 +45  , 0 );
setMoveKey( spep_5 -3 + 108, 1, 668.5 +a1 +90, -1031.5 +b1 +50  , 0 );
setMoveKey( spep_5 -3 + 110, 1, 735.5 +a1 +100, -1106.2 +b1 +60  , 0 );
setMoveKey( spep_5 -3 + 112, 1, 807.5 +a1 +110, -1186.1 +b1 +70  , 0 );
setMoveKey( spep_5 -3 + 114, 1, 884.6 +a1 +120, -1271.3 +b1 +80  , 0 );
setMoveKey( spep_5 -3 + 116, 1, 967.1 +a1 +130, -1362.1 +b1 +100  , 0 );
setMoveKey( spep_5 -3 + 118, 1, 1055.1 +a1 +140, -1458.6 +b1 +110  , 0 );
setMoveKey( spep_5 -3 + 120, 1, 1148.6 +a1 +150, -1561 +b1 +120  , 0 );
setMoveKey( spep_5 -3 + 122, 1, 1248 +a1 +160, -1669.5 +b1 +130  , 0 );
setMoveKey( spep_5 -3 + 123, 1, 1248 +a1 +160, -1669.5 +b1 +130  , 0 );

setScaleKey( spep_5 -3 + 78, 1, 2.91, 2.91 );
setScaleKey( spep_5 -3 + 80, 1, 3, 3 );
setScaleKey( spep_5 -3 + 82, 1, 3.15, 3.15 );
setScaleKey( spep_5 -3 + 84, 1, 3.3, 3.3 );
setScaleKey( spep_5 -3 + 86, 1, 3.48, 3.48 );
setScaleKey( spep_5 -3 + 88, 1, 3.72, 3.72 );
setScaleKey( spep_5 -3 + 90, 1, 3.99, 3.99 );
setScaleKey( spep_5 -3 + 92, 1, 4.32, 4.32 );
setScaleKey( spep_5 -3 + 94, 1, 4.68, 4.68 );
setScaleKey( spep_5 -3 + 96, 1, 5.1, 5.1 );
setScaleKey( spep_5 -3 + 98, 1, 5.55, 5.55 );
setScaleKey( spep_5 -3 + 100, 1, 6.06, 6.06 );
setScaleKey( spep_5 -3 + 102, 1, 6.63, 6.63 );
setScaleKey( spep_5 -3 + 104, 1, 7.26, 7.26 );
--setScaleKey( spep_5 -3 + 106, 1, 7.95, 7.95 );
--setScaleKey( spep_5 -3 + 108, 1, 8.7, 8.7 );
--setScaleKey( spep_5 -3 + 110, 1, 9.51, 9.51 );
--setScaleKey( spep_5 -3 + 112, 1, 10.41, 10.41 );
--setScaleKey( spep_5 -3 + 114, 1, 11.34, 11.34 );
--setScaleKey( spep_5 -3 + 116, 1, 12.36, 12.36 );
--setScaleKey( spep_5 -3 + 118, 1, 13.47, 13.47 );
--setScaleKey( spep_5 -3 + 120, 1, 14.64, 14.64 );
--setScaleKey( spep_5 -3 + 122, 1, 15.87, 15.87 );
setScaleKey( spep_5 -3 + 122, 1, 7.5, 7.5 );

setRotateKey( spep_5 -3 + 110, 1, 15.4 );
setRotateKey( spep_5 -3 + 112, 1, 15.3 );
setRotateKey( spep_5 -3 + 123, 1, 15.3 );

-- ** 音 ** --
--おばけ飛んでくる
SE038 = playSe( spep_5 + 40, 1277 );
stopSe( spep_5 + 90,SE038, 20);

--おばけ飛んでくる
SE039 = playSe( spep_5 + 40, 1290 );
setSeVolumeByWorkId( spep_5 + 40, SE039, 89 );

--おばけ飛んでくる
SE040 = playSe( spep_5 + 60, 1277 );
setPitch( spep_5 + 60, SE040, -400 );
setTimeStretch( SE040, 0.73, 10, 1 );

--おばけ飛んでくる
SE041 = playSe( spep_5 + 68, 1290 );
setSeVolumeByWorkId( spep_5 + 68, SE041, 63 );

--おばけ飛んでくる
SE042 = playSe( spep_5 + 82, 1277 );
setPitch( spep_5 + 82, SE042, -200 );
setTimeStretch( SE042, 0.87, 10, 1 );

--おばけヒット
SE043 = playSe( spep_5 + 138, 1112 );
setSeVolumeByWorkId( spep_5 + 138, SE043, 126 );
stopSe( spep_5 +146 + 18, SE043, 16 );
setPitch( spep_5 + 138, SE043, -900 );
setTimeStretch( SE043, 0.4, 10, 1 );

--おばけヒット
SE044 = playSe( spep_5 + 138, 31 );
setSeVolumeByWorkId( spep_5 + 138, SE044, 16 );
setSeVolumeByWorkId( spep_5 + 140, SE044, 30 );
setSeVolumeByWorkId( spep_5 + 142, SE044, 46 );
setSeVolumeByWorkId( spep_5 + 144, SE044, 62 );
setSeVolumeByWorkId( spep_5 + 146, SE044, 78 );
setSeVolumeByWorkId( spep_5 + 148, SE044, 94 );
setSeVolumeByWorkId( spep_5 + 150, SE044, 110 );
setSeVolumeByWorkId( spep_5 + 152, SE044, 126 );

--おばけヒット
SE045 = playSe( spep_5 + 138, 1291 );
setSeVolumeByWorkId( spep_5 + 138, SE045, 126 );
setPitch( spep_5 + 138, SE045, -200 );
setTimeStretch( SE045, 0.87, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 145 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 145;


------------------------------------------------------
-- フィニッシュ(116F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --フィニッシュ    ef_006
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 116, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 116, finish_f, 255 );

-- ** 音 ** --
--おばけ爆発
SE046 = playSe( spep_6 + 20, 1023 );
setSeVolumeByWorkId( spep_6 + 20, SE046, 89 );

--おばけ爆発
SE047 = playSe( spep_6 + 20, 1011 );
setSeVolumeByWorkId( spep_6 + 20, SE047, 89 );

--おばけ爆発
SE048 = playSe( spep_6 + 20, 1302 );
setSeVolumeByWorkId( spep_6 + 20, SE048, 18 );
setPitch( spep_6 + 20, SE048, -800 );
setTimeStretch( SE048, 0.47, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 6 );
endPhase( spep_6 + 106 );

end

end

------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then
------------------------------------------------------
-- 全体攻撃 (46F)
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
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_z + 0, SP_08, 45, 0x100, -1, 0, 0, 0 );  --全体攻撃    ef_007_front
setEffMoveKey( spep_z + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_z + 45, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_z + 45, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, hit_f, 0 );
setEffRotateKey( spep_z + 45, hit_f, 0 );
setEffAlphaKey( spep_z + 0, hit_f, 255 );
setEffAlphaKey( spep_z + 45 -1, hit_f, 255 );
setEffAlphaKey( spep_z + 45, hit_f, 0 );

hit_b = entryEffectLife( spep_z + 0, SP_09, 45, 0x80, -1, 0, 0, 0 );  --全体攻撃    ef_007_back
setEffMoveKey( spep_z + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_z + 45, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_z + 45, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, hit_b, 0 );
setEffRotateKey( spep_z + 45, hit_b, 0 );
setEffAlphaKey( spep_z + 0, hit_b, 255 );
setEffAlphaKey( spep_z + 45 -1, hit_b, 255 );
setEffAlphaKey( spep_z + 45, hit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
setDisp( spep_z + 45, 1, 0 );
changeAnime( spep_z + 0, 1, 118 );

az = 10;
bz = 35;
setMoveKey( spep_z + 0, 1, 176.5 +az, -263.5 +bz , 0 );
setMoveKey( spep_z + 1, 1, 177 +az, -264.3 +bz , 0 );
setMoveKey( spep_z + 2, 1, 177.5 +az, -265.1 +bz , 0 );
setMoveKey( spep_z -3 + 6, 1, 178 +az, -265.8 +bz , 0 );
setMoveKey( spep_z -3 + 8, 1, 178.6 +az, -266.6 +bz , 0 );
setMoveKey( spep_z -3 + 10, 1, 179.1 +az, -267.3 +bz , 0 );
setMoveKey( spep_z -3 + 12, 1, 179.6 +az, -268.1 +bz , 0 );
setMoveKey( spep_z -3 + 14, 1, 180.1 +az, -268.9 +bz , 0 );
setMoveKey( spep_z -3 + 16, 1, 180.6 +az, -269.6 +bz , 0 );
setMoveKey( spep_z -3 + 18, 1, 181.1 +az, -270.4 +bz , 0 );
setMoveKey( spep_z -3 + 20, 1, 181.6 +az, -271.1 +bz , 0 );
setMoveKey( spep_z -3 + 22, 1, 182.1 +az, -271.9 +bz , 0 );
setMoveKey( spep_z -3 + 24, 1, 182.6 +az, -272.7 +bz , 0 );
setMoveKey( spep_z -3 + 26, 1, 183.1 +az, -273.4 +bz , 0 );
setMoveKey( spep_z -3 + 28, 1, 183.6 +az, -274.2 +bz , 0 );
setMoveKey( spep_z -3 + 30, 1, 184.2 +az, -274.9 +bz , 0 );
setMoveKey( spep_z -3 + 32, 1, 184.7 +az, -275.7 +bz , 0 );
setMoveKey( spep_z -3 + 34, 1, 185.2 +az, -276.5 +bz , 0 );
setMoveKey( spep_z -3 + 36, 1, 185.7 +az, -277.2 +bz , 0 );
setMoveKey( spep_z -3 + 38, 1, 186.2 +az, -278 +bz , 0 );
setMoveKey( spep_z -3 + 40, 1, 186.7 +az, -278.7 +bz , 0 );
setMoveKey( spep_z -3 + 42, 1, 187.2 +az, -279.5 +bz , 0 );
setMoveKey( spep_z -3 + 44, 1, 187.7 +az, -280.3 +bz , 0 );
setMoveKey( spep_z -3 + 46, 1, 188.2 +az, -281 +bz , 0 );
setMoveKey( spep_z -3 + 48, 1, 188.7 +az, -281.8 +bz , 0 );
--setMoveKey( spep_z -3 + 49, 1, 188.7 +az, -281.8 +bz , 0 );

setScaleKey( spep_z + 0, 1, 2.4, 2.4 );
--setScaleKey( spep_z -3 + 16, 1, 2.4000000000000004, 2.4000000000000004 );
--setScaleKey( spep_z -3 + 18, 1, 2.46, 2.46 );
--setScaleKey( spep_z -3 + 34, 1, 2.46, 2.46 );
--setScaleKey( spep_z -3 + 36, 1, 2.52, 2.52 );
setScaleKey( spep_z -3 + 48, 1, 2.52, 2.52 );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z + 45, 1, 0 );

-- ** 音 ** --
--全体_おばけ飛んでくる
SE049 = playSe( spep_z + 0, 1277 );
setPitch( spep_z + 0, SE049, -400 );
setTimeStretch( SE049, 0.73, 10, 1 );

--全体_おばけ飛んでくる
SE050 = playSe( spep_z + 0, 1277 );

--全体_おばけ飛んでくる
SE051 = playSe( spep_z + 0, 1290 );
setSeVolumeByWorkId( spep_z + 0, SE051, 89 );

--全体_おばけ飛んでくる
SE052 = playSe( spep_z + 24, 1290 );
setSeVolumeByWorkId( spep_z + 24, SE052, 63 );

--全体_おばけヒット
SE054 = playSe( spep_z + 38, 1112 );
setSeVolumeByWorkId( spep_z + 38, SE054, 126 );
stopSe( spep_z + 64, SE054, 16 );
setPitch( spep_z + 38, SE054, -900 );
setTimeStretch( SE054, 0.4, 10, 1 );

--全体_おばけヒット
SE055 = playSe( spep_z + 38, 31 );
setSeVolumeByWorkId( spep_z + 38, SE055, 14 );
setSeVolumeByWorkId( spep_z + 40, SE055, 26 );
setSeVolumeByWorkId( spep_z + 42, SE055, 39 );
setSeVolumeByWorkId( spep_z + 44, SE055, 52 );
setSeVolumeByWorkId( spep_z + 46, SE055, 65 );
setSeVolumeByWorkId( spep_z + 48, SE055, 78 );
setSeVolumeByWorkId( spep_z + 50, SE055, 91 );
setSeVolumeByWorkId( spep_z + 52, SE055, 100 );

--全体_おばけヒット
SE056 = playSe( spep_z + 38, 1291 );
setSeVolumeByWorkId( spep_z + 38, SE056, 126 );
setPitch( spep_z + 38, SE056, -200 );
setTimeStretch( SE056, 0.87, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, 45 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_z1 = spep_z + 45;


------------------------------------------------------
-- 全体攻撃フィニッシュ(86F)
------------------------------------------------------
-- ** エフェクト等 ** --
out_f = entryEffect( spep_z1 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --全体攻撃フィニッシュ  ef_008
setEffMoveKey( spep_z1 + 0, out_f, 0, 0 , 0 );
setEffMoveKey( spep_z1 + 110, out_f, 0, 0 , 0 );
setEffScaleKey( spep_z1 + 0, out_f, 1.0, 1.0 );
setEffScaleKey( spep_z1 + 110, out_f, 1.0, 1.0 );
setEffRotateKey( spep_z1 + 0, out_f, 0 );
setEffRotateKey( spep_z1 + 110, out_f, 0 );
setEffAlphaKey( spep_z1 + 0, out_f, 255 );
setEffAlphaKey( spep_z1 + 110, out_f, 255 );

-- ** 音 ** --
--全体_おばけ爆発
SE057 = playSe( spep_z1 + 20, 1023 );
setSeVolumeByWorkId( spep_z1 + 20, SE057, 89 );

--全体_おばけ爆発
SE058 = playSe( spep_z1 + 20, 1011 );
setSeVolumeByWorkId( spep_z1 + 20, SE058, 89 );

--全体_おばけ爆発
SE059 = playSe( spep_z1 + 20, 1302 );
setSeVolumeByWorkId( spep_z1 + 20, SE059, 18 );
setPitch( spep_z1 + 20, SE059, -800 );
setTimeStretch( SE059, 0.47, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_z1 + 0, 0, 110 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_z1 + 0 );
--entryFade( spep_z1 +100, 2,  8, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_z1 + 100 );

end