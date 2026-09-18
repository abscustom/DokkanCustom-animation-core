--4022390:超サイヤ人ゴッドSS孫悟空&超サイヤ人ゴッドSSベジータ_蒼神光牙
--sp_effect_b1_00177
--sp2271

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
SP_01 = 158728; --構える   ef_001
SP_02 = 158729; --画面手前に飛ぶ〜フィニッシュ    ef_002_front
SP_03 = 158731; --画面手前に飛ぶ〜フィニッシュ    ef_002_back

--敵側
SP_02r = 158730;    --画面手前に飛ぶ〜フィニッシュ    ef_002_front_re
SP_03r = 158732;    --画面手前に飛ぶ〜フィニッシュ    ef_002_back_re

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
-- 構える(122F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 122 -2, 0x100, -1, 0, 0, 0 );  --構える ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 122 -2, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 122 -2, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 122 -2, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 122 -2 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 122 -2, first_f, 0 );

spep_x = spep_0 + 22;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 5, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 5, 515.5 , 0 );
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
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 +122 -2 + 14, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );

--構える
SE002 = playSeVer2( spep_0 + 16, 1233, "", 0, 0, 0, -1);

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気ダメ
SE004 = playSeVer2( spep_0 + 30, 1298, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE004, 87 );
SE006 = playSeVer2( spep_0 + 32, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE006, 132 );

--構える
SE005 = playSeVer2( spep_0 + 30, 1006, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 122 -2 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 122 -2;

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

--気を爆発させる
SE008 = playSeVer2( spep_1 + 86, 1264, "",spep_1 +94 + 84, 8, 32, -1);
setSeVolumeByWorkId( spep_1 + 86, SE008, 72 );
setStartTimeMs( SE008,  633 );
SE009 = playSeVer2( spep_1 + 86, 1176, "",spep_1 +94 + 104, 0, 40, -1);
setSeVolumeByWorkId( spep_1 + 86, SE009, 84 );
SE010 = playSeVer2( spep_1 + 86, 1011, "", 0, 24, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 画面手前に飛ぶ〜フィニッシュ(974F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
effect03 = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --画面手前に飛ぶ〜フィニッシュ ef_002_front
setEffMoveKey( spep_2 + 0, effect03, 0, 0 , 0 );
setEffMoveKey( spep_2 + 974, effect03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, effect03, 1.0, 1.0 );
setEffScaleKey( spep_2 + 974, effect03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, effect03, 0 );
setEffRotateKey( spep_2 + 974, effect03, 0 );
setEffAlphaKey( spep_2 + 0, effect03, 255 );
setEffAlphaKey( spep_2 + 974, effect03, 255 );

effect04 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --画面手前に飛ぶ〜フィニッシュ  ef_002_back
setEffMoveKey( spep_2 + 0, effect04, 0, 0 , 0 );
setEffMoveKey( spep_2 + 974, effect04, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, effect04, 1.0, 1.0 );
setEffScaleKey( spep_2 + 974, effect04, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, effect04, 0 );
setEffRotateKey( spep_2 + 974, effect04, 0 );
setEffAlphaKey( spep_2 + 0, effect04, 255 );
setEffAlphaKey( spep_2 + 974, effect04, 255 );

-- ** 音 ** --
--突っ込んでくる
SE011 = playSeVer2( spep_2 + 36, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE011, 143 );
SE012 = playSeVer2( spep_2 + 42, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE012, 122 );
SE013 = playSeVer2( spep_2 + 42, 1278, "",spep_2 + 230, 0, 88, -1);
SE014 = playSeVer2( spep_2 + 42, 1314, "",spep_2 + 152, 0, 12, -1);
SE015 = playSeVer2( spep_2 + 48, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE015, 132 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 974 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 70 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
   
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

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 134, 1, 1 );
setDisp( spep_2 -3 + 688, 1, 0 );
changeAnime( spep_2 -3 + 134, 1, 0 );
changeAnime( spep_2 -3 + 148, 1, 6 );
changeAnime( spep_2 -3 + 222, 1, 5 );
changeAnime( spep_2 -3 + 288, 1, 107 );
changeAnime( spep_2 -3 + 316, 1, 5 );
changeAnime( spep_2 -3 + 328, 1, 106 );
changeAnime( spep_2 -3 + 334, 1, 6 );
changeAnime( spep_2 -3 + 338, 1, 106 );
changeAnime( spep_2 -3 + 342, 1, 6 );
changeAnime( spep_2 -3 + 348, 1, 106 );
changeAnime( spep_2 -3 + 354, 1, 108 );
changeAnime( spep_2 -3 + 358, 1, 106 );
changeAnime( spep_2 -3 + 362, 1, 5 );
changeAnime( spep_2 -3 + 372, 1, 6 );
changeAnime( spep_2 -3 + 382, 1, 8 );
changeAnime( spep_2 -3 + 384, 1, 108 );
changeAnime( spep_2 -3 + 402, 1, 5 );
changeAnime( spep_2 -3 + 504, 1, 108 );

setMoveKey( spep_2 -3 + 134, 1, 156.7, 456.3 , 0 );
setMoveKey( spep_2 -3 + 135, 1, 156.7, 456.3 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 123.3, 374.5 , 0 );
setMoveKey( spep_2 -3 + 137, 1, 123.3, 374.5 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 92.1, 293.5 , 0 );
setMoveKey( spep_2 -3 + 139, 1, 92.1, 293.5 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 66.9, 218.4 , 0 );
setMoveKey( spep_2 -3 + 141, 1, 66.9, 218.4 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 42.6, 145.3 , 0 );
setMoveKey( spep_2 -3 + 143, 1, 42.6, 145.3 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 18.2, 74.5 , 0 );
setMoveKey( spep_2 -3 + 145, 1, 18.2, 74.5 , 0 );
setMoveKey( spep_2 -3 + 146, 1, -7.2, 6.2 , 0 );
setMoveKey( spep_2 -3 + 147, 1, -7.2, 6.2 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -47.8, 6.4 , 0 );--
setMoveKey( spep_2 -3 + 150, 1, -43.7, 14.5 , 0 );
setMoveKey( spep_2 -3 + 152, 1, -48.9, 7.4 , 0 );
setMoveKey( spep_2 -3 + 154, 1, -75.2, -5.6 , 0 );
setMoveKey( spep_2 -3 + 156, 1, -61.3, 8.6 , 0 );
setMoveKey( spep_2 -3 + 158, 1, -85.2, 12.5 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -86.9, 2.9 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -65.6, 1.2 , 0 );
setMoveKey( spep_2 -3 + 164, 1, -71.4, 3.8 , 0 );
setMoveKey( spep_2 -3 + 166, 1, -87.3, -13.9 , 0 );
setMoveKey( spep_2 -3 + 168, 1, -89, 28.8 , 0 );
setMoveKey( spep_2 -3 + 170, 1, -90.5, 24.8 , 0 );
setMoveKey( spep_2 -3 + 172, 1, -91.9, 20.9 , 0 );
setMoveKey( spep_2 -3 + 174, 1, -93, 16.9 , 0 );
setMoveKey( spep_2 -3 + 176, 1, -94, 13 , 0 );
setMoveKey( spep_2 -3 + 178, 1, -94.7, 9.1 , 0 );
setMoveKey( spep_2 -3 + 180, 1, -95.4, 5.2 , 0 );
setMoveKey( spep_2 -3 + 182, 1, -96.7, 5.2 , 0 );
setMoveKey( spep_2 -3 + 184, 1, -105.9, 6.5 , 0 );
setMoveKey( spep_2 -3 + 186, 1, -119, 7.8 , 0 );
setMoveKey( spep_2 -3 + 188, 1, -119.8, 7.8 , 0 );
setMoveKey( spep_2 -3 + 190, 1, -127.3, 7.7 , 0 );
setMoveKey( spep_2 -3 + 192, 1, -127.9, 7.7 , 0 );
setMoveKey( spep_2 -3 + 194, 1, -132.5, 10.4 , 0 );
setMoveKey( spep_2 -3 + 196, 1, -139.6, 17.1 , 0 );
setMoveKey( spep_2 -3 + 198, 1, -137.3, 23.9 , 0 );
setMoveKey( spep_2 -3 + 200, 1, -137.5, 23.9 , 0 );
setMoveKey( spep_2 -3 + 202, 1, -131, 30.6 , 0 );
setMoveKey( spep_2 -3 + 204, 1, -123, 34.7 , 0 );
setMoveKey( spep_2 -3 + 206, 1, -113.7, 37.4 , 0 );
setMoveKey( spep_2 -3 + 208, 1, -105.6, 41.4 , 0 );
setMoveKey( spep_2 -3 + 210, 1, -105.6, 41.4 , 0 );
setMoveKey( spep_2 -3 + 212, 1, -94.9, 41.4 , 0 );
setMoveKey( spep_2 -3 + 214, 1, -94.9, 41.4 , 0 );
setMoveKey( spep_2 -3 + 215, 1, -94.9, 41.4 , 0 );
setMoveKey( spep_2 -3 + 216, 1, -48.5, 20.6 , 0 );
setMoveKey( spep_2 -3 + 218, 1, -48.5, 20.6 , 0 );
setMoveKey( spep_2 -3 + 220, 1, -132.5, 44.6 , 0 );
setMoveKey( spep_2 -3 + 221, 1, -132.5, 44.6 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 4.4, -14.5 , 0 );--
setMoveKey( spep_2 -3 + 224, 1, 96.8, 54.6 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 110.2, 58.5 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 167.6, 35.7 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 161.2, 26.2 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 160.8, 33.9 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 155.7, 39 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 181.2, 51 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 177.6, 37.3 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 186.3, 37.4 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 186.5, 31.3 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 189.1, 33.3 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 172.9, 27 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 155.2, 13.4 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 83.7, -34.9 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 76.2, -58.3 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 69.7, -78.6 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 64.1, -96 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 59.4, -110.8 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 55.4, -123.1 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 52.2, -133.2 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 49.6, -141.2 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 47.6, -147.5 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 46, -152.2 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 44.9, -155.6 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 44.2, -157.9 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 43.8, -159.2 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 43.5, -160 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 43.5, -160.2 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 43.4, -160.3 , 0 );
setMoveKey( spep_2 -3 + 281, 1, 43.4, -160.3 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 11.2, -143.9 , 0 );
setMoveKey( spep_2 -3 + 284, 1, -14.2, -166.2 , 0 );
setMoveKey( spep_2 -3 + 286, 1, -39.1, -187.9 , 0 );
setMoveKey( spep_2 -3 + 287, 1, -39.1, -187.9 , 0 );--

a1 = 40;
b1 = 30;
setMoveKey( spep_2 -3 + 288, 1, -29.8 + a1, -78.1 -b1 , 0 );
setMoveKey( spep_2 -3 + 290, 1, -28.6 + a1, -77.3 -b1 , 0 );
setMoveKey( spep_2 -3 + 292, 1, -19.3 + a1, -81.9 -b1 , 0 );
setMoveKey( spep_2 -3 + 294, 1, -18.2 + a1, -81.1 -b1 , 0 );
setMoveKey( spep_2 -3 + 296, 1, -22.4 + a1, -73.6 -b1 , 0 );
setMoveKey( spep_2 -3 + 298, 1, -13.1 + a1, -89 -b1 , 0 );
setMoveKey( spep_2 -3 + 300, 1, -11.9 + a1, -88.1 -b1 , 0 );
setMoveKey( spep_2 -3 + 302, 1, -1.3 + a1, -76.5 -b1 , 0 );
setMoveKey( spep_2 -3 + 304, 1, -16.3 + a1, -69 -b1 , 0 );
setMoveKey( spep_2 -3 + 306, 1, -0.3 + a1, -62.8 -b1 , 0 );
setMoveKey( spep_2 -3 + 308, 1, -15.3 + a1, -70.1 -b1 , 0 );
setMoveKey( spep_2 -3 + 310, 1, -10.1 + a1, -65.2 -b1 , 0 );
setMoveKey( spep_2 -3 + 312, 1, 221.7 + a1, -85 -b1 , 0 );
setMoveKey( spep_2 -3 + 315, 1, 221.7 + a1, -85 -b1 , 0 );--

setMoveKey( spep_2 -3 + 316, 1, 79.7, -136 , 0 );
setMoveKey( spep_2 -3 + 318, 1, 93, -76.5 , 0 );
setMoveKey( spep_2 -3 + 320, 1, 93, -76.5 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 90.4, -77.2 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 91.9, -69.5 , 0 );
setMoveKey( spep_2 -3 + 327, 1, 91.9, -69.5 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 84.7, 33.1 , 0 );--
setMoveKey( spep_2 -3 + 330, 1, 84.7, 33.1 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 82, 29.1 , 0 );
setMoveKey( spep_2 -3 + 333, 1, 82, 29.1 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 80.7, 54.6 , 0 );--
setMoveKey( spep_2 -3 + 336, 1, 73.9, 49.2 , 0 );
setMoveKey( spep_2 -3 + 337, 1, 73.9, 49.2 , 0 );
setMoveKey( spep_2 -3 + 338, 1, 81.4, 63.1 , 0 );--
setMoveKey( spep_2 -3 + 340, 1, 81.4, 63.1 , 0 );
setMoveKey( spep_2 -3 + 341, 1, 81.4, 63.1 , 0 );
setMoveKey( spep_2 -3 + 342, 1, 91.1, 83.7 , 0 );--
setMoveKey( spep_2 -3 + 346, 1, 91.1, 83.7 , 0 );
setMoveKey( spep_2 -3 + 347, 1, 91.1, 83.7 , 0 );
setMoveKey( spep_2 -3 + 348, 1, 103.4, 106.3 , 0 );--
setMoveKey( spep_2 -3 + 352, 1, 103.4, 106.3 , 0 );
setMoveKey( spep_2 -3 + 353, 1, 103.4, 106.3 , 0 );
setMoveKey( spep_2 -3 + 354, 1, 115.5, 118.9 , 0 );--
setMoveKey( spep_2 -3 + 356, 1, 115.5, 118.9 , 0 );
setMoveKey( spep_2 -3 + 357, 1, 115.5, 118.9 , 0 );
setMoveKey( spep_2 -3 + 358, 1, 126.3, 136.2 , 0 );--
setMoveKey( spep_2 -3 + 361, 1, 126.3, 136.2 , 0 );
setMoveKey( spep_2 -3 + 362, 1, 127.7, 142.3 , 0 );--
setMoveKey( spep_2 -3 + 366, 1, 127.7, 142.3 , 0 );
setMoveKey( spep_2 -3 + 368, 1, 127.6, 137.2 , 0 );
setMoveKey( spep_2 -3 + 370, 1, 127.6, 137.2 , 0 );
setMoveKey( spep_2 -3 + 371, 1, 127.6, 137.2 , 0 );
setMoveKey( spep_2 -3 + 372, 1, 125.8, 129.8 , 0 );--
setMoveKey( spep_2 -3 + 381, 1, 125.8, 129.8 , 0 );
setMoveKey( spep_2 -3 + 382, 1, 90.5, 63.5 , 0 );--
setMoveKey( spep_2 -3 + 383, 1, 90.5, 63.5 , 0 );
setMoveKey( spep_2 -3 + 384, 1, 90.9, 11.1 , 0 );--
setMoveKey( spep_2 -3 + 386, 1, 90.8, 39.8 , 0 );
setMoveKey( spep_2 -3 + 388, 1, 65.6, -2.7 , 0 );
setMoveKey( spep_2 -3 + 390, 1, 81.3, 12.4 , 0 );
setMoveKey( spep_2 -3 + 392, 1, 109.4, 57.3 , 0 );
setMoveKey( spep_2 -3 + 394, 1, 115.6, 79.6 , 0 );
setMoveKey( spep_2 -3 + 396, 1, 135.4, 100.6 , 0 );
setMoveKey( spep_2 -3 + 398, 1, 138.6, 114 , 0 );
setMoveKey( spep_2 -3 + 400, 1, 139.1, 114.7 , 0 );
setMoveKey( spep_2 -3 + 401, 1, 139.1, 114.7 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 127.7, 143.4 , 0 );--
setMoveKey( spep_2 -3 + 404, 1, 141.3, 168.6 , 0 );
setMoveKey( spep_2 -3 + 406, 1, 141.3, 168.6 , 0 );
setMoveKey( spep_2 -3 + 408, 1, -13.9, -174.1 , 0 );
setMoveKey( spep_2 -3 + 410, 1, 106.1, 67.8 , 0 );
setMoveKey( spep_2 -3 + 412, 1, 191.2, 199.9 , 0 );
setMoveKey( spep_2 -3 + 414, 1, 238.6, 319.7 , 0 );
setMoveKey( spep_2 -3 + 416, 1, 284.3, 377.9 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 295.3, 425 , 0 );
setMoveKey( spep_2 -3 + 420, 1, 335.7, 439.3 , 0 );
setMoveKey( spep_2 -3 + 422, 1, 308.5, 390.5 , 0 );
setMoveKey( spep_2 -3 + 424, 1, 305.3, 361.9 , 0 );
setMoveKey( spep_2 -3 + 426, 1, 300.2, 330.1 , 0 );
setMoveKey( spep_2 -3 + 428, 1, 294.3, 296.9 , 0 );
setMoveKey( spep_2 -3 + 430, 1, 288, 263.2 , 0 );
setMoveKey( spep_2 -3 + 432, 1, 281.7, 229.5 , 0 );
setMoveKey( spep_2 -3 + 434, 1, 275.7, 196.6 , 0 );
setMoveKey( spep_2 -3 + 436, 1, 269.7, 164.1 , 0 );
setMoveKey( spep_2 -3 + 438, 1, 263.7, 132.1 , 0 );
setMoveKey( spep_2 -3 + 440, 1, 257.9, 100.7 , 0 );
setMoveKey( spep_2 -3 + 442, 1, 252.2, 69.8 , 0 );
setMoveKey( spep_2 -3 + 444, 1, 246.7, 39.7 , 0 );
setMoveKey( spep_2 -3 + 446, 1, 241.3, 10.4 , 0 );
setMoveKey( spep_2 -3 + 448, 1, 236.1, -17.9 , 0 );
setMoveKey( spep_2 -3 + 450, 1, 231.1, -45.2 , 0 );
setMoveKey( spep_2 -3 + 452, 1, 226.4, -71.1 , 0 );
setMoveKey( spep_2 -3 + 454, 1, 222, -95.5 , 0 );
setMoveKey( spep_2 -3 + 456, 1, 218, -117.9 , 0 );
setMoveKey( spep_2 -3 + 458, 1, 214.4, -138.2 , 0 );
setMoveKey( spep_2 -3 + 460, 1, 211.3, -155.7 , 0 );
setMoveKey( spep_2 -3 + 462, 1, 208.8, -170.4 , 0 );
setMoveKey( spep_2 -3 + 464, 1, 206.9, -182.5 , 0 );
setMoveKey( spep_2 -3 + 466, 1, 205.3, -192.8 , 0 );
setMoveKey( spep_2 -3 + 468, 1, 203.6, -203.3 , 0 );
setMoveKey( spep_2 -3 + 470, 1, 201.6, -215.6 , 0 );
setMoveKey( spep_2 -3 + 472, 1, 198.9, -230.9 , 0 );
setMoveKey( spep_2 -3 + 474, 1, 197.4, -227 , 0 );
setMoveKey( spep_2 -3 + 476, 1, 195.5, -221.5 , 0 );
setMoveKey( spep_2 -3 + 478, 1, 193, -214 , 0 );
setMoveKey( spep_2 -3 + 480, 1, 189.7, -203.8 , 0 );
setMoveKey( spep_2 -3 + 482, 1, 185.2, -189.8 , 0 );
setMoveKey( spep_2 -3 + 484, 1, 179.2, -170.5 , 0 );
setMoveKey( spep_2 -3 + 486, 1, 170.7, -143.1 , 0 );
setMoveKey( spep_2 -3 + 488, 1, 158.4, -102.6 , 0 );
setMoveKey( spep_2 -3 + 490, 1, 139.2, -39 , 0 );
setMoveKey( spep_2 -3 + 492, 1, 106.2, 70.8 , 0 );
setMoveKey( spep_2 -3 + 494, 1, 91.4, 101.7 , 0 );
setMoveKey( spep_2 -3 + 496, 1, 82.3, 120.4 , 0 );
setMoveKey( spep_2 -3 + 498, 1, 77.6, 130 , 0 );
setMoveKey( spep_2 -3 + 500, 1, 75.6, 133.5 , 0 );
setMoveKey( spep_2 -3 + 502, 1, 75.1, 133.9 , 0 );
setMoveKey( spep_2 -3 + 504, 1, 77.3, 80.1 , 0 );--
setMoveKey( spep_2 -3 + 506, 1, 94.9, 79.7 , 0 );
setMoveKey( spep_2 -3 + 508, 1, 78.5, 88.5 , 0 );
setMoveKey( spep_2 -3 + 510, 1, 90.9, 75.3 , 0 );
setMoveKey( spep_2 -3 + 512, 1, 102.7, 86.9 , 0 );
setMoveKey( spep_2 -3 + 514, 1, 91.6, 77.1 , 0 );
setMoveKey( spep_2 -3 + 516, 1, 220.7, -129.1 , 0 );
setMoveKey( spep_2 -3 + 518, 1, 320.4, -327.9 , 0 );
setMoveKey( spep_2 -3 + 520, 1, 423.5, -535.8 , 0 );
setMoveKey( spep_2 -3 + 522, 1, 549.7, -732.7 , 0 );
setMoveKey( spep_2 -3 + 524, 1, 645.8, -939.4 , 0 );
setMoveKey( spep_2 -3 + 525, 1, 645.8, -939.4 , 0 );
setMoveKey( spep_2 -3 + 526, 1, -32.5, 261.6 , 0 );--
setMoveKey( spep_2 -3 + 528, 1, -26, 228.4 , 0 );
setMoveKey( spep_2 -3 + 530, 1, -19.4, 195.1 , 0 );
setMoveKey( spep_2 -3 + 532, 1, -12.8, 161.8 , 0 );
setMoveKey( spep_2 -3 + 534, 1, -6.3, 128.6 , 0 );
setMoveKey( spep_2 -3 + 536, 1, 0.3, 95.3 , 0 );
setMoveKey( spep_2 -3 + 538, 1, 6.8, 62 , 0 );
setMoveKey( spep_2 -3 + 540, 1, 13.4, 28.8 , 0 );
setMoveKey( spep_2 -3 + 542, 1, 19.9, -4.5 , 0 );
setMoveKey( spep_2 -3 + 544, 1, 26.5, -37.8 , 0 );
setMoveKey( spep_2 -3 + 546, 1, 33, -71.1 , 0 );
setMoveKey( spep_2 -3 + 548, 1, 39.6, -104.3 , 0 );
setMoveKey( spep_2 -3 + 550, 1, 46.2, -137.6 , 0 );
setMoveKey( spep_2 -3 + 552, 1, 52.7, -170.9 , 0 );
setMoveKey( spep_2 -3 + 554, 1, 59.3, -204.1 , 0 );
setMoveKey( spep_2 -3 + 556, 1, 65.9, -237.4 , 0 );
setMoveKey( spep_2 -3 + 557, 1, 65.9, -237.4 , 0 );
setMoveKey( spep_2 -3 + 558, 1, 196.2, 515.6 , 0 );
setMoveKey( spep_2 -3 + 560, 1, 215.7, 453.1 , 0 );
setMoveKey( spep_2 -3 + 562, 1, 235.2, 390.6 , 0 );
setMoveKey( spep_2 -3 + 564, 1, 254.7, 328 , 0 );
setMoveKey( spep_2 -3 + 566, 1, 274.2, 265.4 , 0 );
setMoveKey( spep_2 -3 + 568, 1, 293.8, 202.9 , 0 );
setMoveKey( spep_2 -3 + 570, 1, 313.3, 140.3 , 0 );
setMoveKey( spep_2 -3 + 572, 1, 332.8, 77.6 , 0 );
setMoveKey( spep_2 -3 + 573, 1, 332.8, 77.6 , 0 );
setMoveKey( spep_2 -3 + 574, 1, 490.7, 31.8 , 0 );
setMoveKey( spep_2 -3 + 576, 1, 490.7, 31.8 , 0 );
setMoveKey( spep_2 -3 + 578, 1, 261.8, 64.8 , 0 );
setMoveKey( spep_2 -3 + 580, 1, 261.8, 72.8 , 0 );
setMoveKey( spep_2 -3 + 582, 1, 261.8, 70.8 , 0 );
setMoveKey( spep_2 -3 + 584, 1, 265.7, 66.8 , 0 );
setMoveKey( spep_2 -3 + 586, 1, 265.7, 70.8 , 0 );
setMoveKey( spep_2 -3 + 588, 1, 269.7, 64.8 , 0 );
setMoveKey( spep_2 -3 + 590, 1, 271.7, 64.8 , 0 );
setMoveKey( spep_2 -3 + 592, 1, 275.7, 68.8 , 0 );
setMoveKey( spep_2 -3 + 594, 1, 277.7, 62.8 , 0 );
setMoveKey( spep_2 -3 + 596, 1, 271.7, 68.8 , 0 );
setMoveKey( spep_2 -3 + 598, 1, 277.7, 62.8 , 0 );
setMoveKey( spep_2 -3 + 600, 1, 277.7, 62.8 , 0 );
setMoveKey( spep_2 -3 + 601, 1, 277.7, 62.8 , 0 );
setMoveKey( spep_2 -3 + 602, 1, -179.9, -78.1 , 0 );
setMoveKey( spep_2 -3 + 604, 1, -180.4, -78.4 , 0 );
setMoveKey( spep_2 -3 + 606, 1, -181.1, -78.7 , 0 );
setMoveKey( spep_2 -3 + 608, 1, -181.6, -79 , 0 );
setMoveKey( spep_2 -3 + 610, 1, -182.2, -79.3 , 0 );
setMoveKey( spep_2 -3 + 612, 1, -182.7, -79.6 , 0 );
setMoveKey( spep_2 -3 + 614, 1, -183.3, -79.9 , 0 );
setMoveKey( spep_2 -3 + 616, 1, -183.9, -80.3 , 0 );
setMoveKey( spep_2 -3 + 618, 1, -184.5, -80.6 , 0 );
setMoveKey( spep_2 -3 + 620, 1, -185, -80.9 , 0 );
setMoveKey( spep_2 -3 + 622, 1, -185.6, -81.2 , 0 );
setMoveKey( spep_2 -3 + 624, 1, -186.1, -81.5 , 0 );
setMoveKey( spep_2 -3 + 626, 1, -186.7, -81.8 , 0 );
setMoveKey( spep_2 -3 + 628, 1, -187.3, -82.1 , 0 );
setMoveKey( spep_2 -3 + 630, 1, -187.8, -82.4 , 0 );
setMoveKey( spep_2 -3 + 632, 1, -188.4, -82.7 , 0 );
setMoveKey( spep_2 -3 + 634, 1, -189, -83 , 0 );
setMoveKey( spep_2 -3 + 636, 1, -189.5, -83.4 , 0 );
setMoveKey( spep_2 -3 + 638, 1, -190.1, -83.7 , 0 );
setMoveKey( spep_2 -3 + 640, 1, -190.7, -84 , 0 );
setMoveKey( spep_2 -3 + 642, 1, -191.2, -84.3 , 0 );
setMoveKey( spep_2 -3 + 644, 1, -191.8, -84.6 , 0 );
setMoveKey( spep_2 -3 + 646, 1, -192.4, -84.9 , 0 );
setMoveKey( spep_2 -3 + 648, 1, -192.9, -85.2 , 0 );
setMoveKey( spep_2 -3 + 650, 1, -193.5, -85.5 , 0 );
setMoveKey( spep_2 -3 + 652, 1, -194.1, -85.8 , 0 );
setMoveKey( spep_2 -3 + 654, 1, -194.6, -86.1 , 0 );
setMoveKey( spep_2 -3 + 656, 1, -195.2, -86.5 , 0 );
setMoveKey( spep_2 -3 + 658, 1, -195.8, -86.8 , 0 );
setMoveKey( spep_2 -3 + 663, 1, -195.8, -86.8 , 0 );
setMoveKey( spep_2 -3 + 664, 1, -196.4, -147.1 , 0 );--
setMoveKey( spep_2 -3 + 665, 1, -196.4, -147.1 , 0 );--
setMoveKey( spep_2 -3 + 666, 1, -202.4, -27.1 , 0 );
setMoveKey( spep_2 -3 + 667, 1, -202.4, -27.1 , 0 );
setMoveKey( spep_2 -3 + 668, 1, -202.4, -27.1 , 0 );
setMoveKey( spep_2 -3 + 669, 1, -202.4, -27.1 , 0 );
setMoveKey( spep_2 -3 + 670, 1, -170.4, -107.1 , 0 );
setMoveKey( spep_2 -3 + 671, 1, -170.4, -107.1 , 0 );
setMoveKey( spep_2 -3 + 672, 1, -214.4, -61.1 , 0 );
setMoveKey( spep_2 -3 + 673, 1, -214.4, -61.1 , 0 );
setMoveKey( spep_2 -3 + 674, 1, -206.4, -115.1 , 0 );
setMoveKey( spep_2 -3 + 675, 1, -206.4, -115.1 , 0 );
setMoveKey( spep_2 -3 + 676, 1, -200.4, -55.1 , 0 );
setMoveKey( spep_2 -3 + 677, 1, -200.4, -55.1 , 0 );
setMoveKey( spep_2 -3 + 678, 1, -200.4, -55.1 , 0 );
setMoveKey( spep_2 -3 + 679, 1, -200.4, -55.1 , 0 );
setMoveKey( spep_2 -3 + 680, 1, -200.4, -97.1 , 0 );
setMoveKey( spep_2 -3 + 681, 1, -200.4, -97.1 , 0 );
setMoveKey( spep_2 -3 + 682, 1, -200.4, -69.1 , 0 );
setMoveKey( spep_2 -3 + 683, 1, -200.4, -69.1 , 0 );
setMoveKey( spep_2 -3 + 684, 1, -200.5, -69.1 , 0 );
setMoveKey( spep_2 -3 + 685, 1, -200.5, -69.1 , 0 );
setMoveKey( spep_2 -3 + 686, 1, -340.5, -195.1 , 0 );
setMoveKey( spep_2 -3 + 687, 1, -340.5, -195.1 , 0 );
setMoveKey( spep_2 -3 + 688, 1, -340.5, -195.1 , 0 );


setScaleKey( spep_2 -3 + 134, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 135, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 136, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 137, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 138, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 139, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 140, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 141, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 142, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 143, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 144, 1, 0.75, 0.75 );
setScaleKey( spep_2 -3 + 145, 1, 0.75, 0.75 );
setScaleKey( spep_2 -3 + 146, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 147, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 148, 1, 0.92, 0.92 );--
setScaleKey( spep_2 -3 + 150, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 152, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 154, 1, 0.89, 0.89 );
setScaleKey( spep_2 -3 + 156, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 158, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 160, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 162, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 164, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 166, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 168, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 170, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 172, 1, 0.83, 0.83 );
setScaleKey( spep_2 -3 + 174, 1, 0.83, 0.83 );
setScaleKey( spep_2 -3 + 176, 1, 0.82, 0.82 );
setScaleKey( spep_2 -3 + 180, 1, 0.82, 0.82 );
setScaleKey( spep_2 -3 + 182, 1, 0.81, 0.81 );
setScaleKey( spep_2 -3 + 194, 1, 0.81, 0.81 );
setScaleKey( spep_2 -3 + 196, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 214, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 215, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 216, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 221, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 222, 1, 1.75, 1.75 );--
setScaleKey( spep_2 -3 + 224, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 226, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 228, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 230, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 232, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 234, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 236, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 238, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 240, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 242, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 244, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 246, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 248, 1, 0.65, 0.65 );
setScaleKey( spep_2 -3 + 250, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 252, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 254, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 256, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 258, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 260, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 262, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 264, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 266, 1, 2.02, 2.02 );
setScaleKey( spep_2 -3 + 268, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 270, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 272, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 274, 1, 2.1, 2.1 );
setScaleKey( spep_2 -3 + 276, 1, 2.1, 2.1 );
setScaleKey( spep_2 -3 + 278, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 281, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 282, 1, 2.01, 2.01 );
setScaleKey( spep_2 -3 + 284, 1, 2.84, 2.84 );
setScaleKey( spep_2 -3 + 286, 1, 3.66, 3.66 );
setScaleKey( spep_2 -3 + 287, 1, 3.66, 3.66 );--

setScaleKey( spep_2 -3 + 288, 1, 1.3875, 1.3875 );
setScaleKey( spep_2 -3 + 290, 1, 1.4025, 1.4025 );
setScaleKey( spep_2 -3 + 292, 1, 1.4175, 1.4175 );
setScaleKey( spep_2 -3 + 294, 1, 1.425, 1.425 );
setScaleKey( spep_2 -3 + 296, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 298, 1, 1.455, 1.455 );
setScaleKey( spep_2 -3 + 300, 1, 1.4625, 1.4625 );
setScaleKey( spep_2 -3 + 302, 1, 1.4775, 1.4775 );
setScaleKey( spep_2 -3 + 304, 1, 1.4925, 1.4925 );
setScaleKey( spep_2 -3 + 306, 1, 1.5075, 1.5075 );
setScaleKey( spep_2 -3 + 308, 1, 1.515, 1.515 );
setScaleKey( spep_2 -3 + 310, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 312, 1, 1.5225, 1.5225 );
setScaleKey( spep_2 -3 + 315, 1, 1.5225, 1.5225 );

setScaleKey( spep_2 -3 + 316, 1, 2.03, 2.03 );--
setScaleKey( spep_2 -3 + 318, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 320, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 322, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 324, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 327, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 328, 1, 0.25, 0.25 );--
setScaleKey( spep_2 -3 + 332, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 333, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 334, 1, 0.25, 0.25 );--
setScaleKey( spep_2 -3 + 336, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 337, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 338, 1, 0.25, 0.25 );--
setScaleKey( spep_2 -3 + 340, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 341, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 342, 1, 0.25, 0.25 );--
setScaleKey( spep_2 -3 + 346, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 347, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 348, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 352, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 353, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 354, 1, 0.25, 0.25 );--
setScaleKey( spep_2 -3 + 356, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 357, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 358, 1, 0.25, 0.25 );--
setScaleKey( spep_2 -3 + 361, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 362, 1, 0.25, 0.25 );--
setScaleKey( spep_2 -3 + 366, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 368, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 370, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 371, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 372, 1, 0.54, 0.54 );--
setScaleKey( spep_2 -3 + 381, 1, 0.54, 0.54 );
setScaleKey( spep_2 -3 + 382, 1, 1.82, 1.82 );--
setScaleKey( spep_2 -3 + 383, 1, 1.82, 1.82 );
setScaleKey( spep_2 -3 + 384, 1, 2.18, 2.18 );--
setScaleKey( spep_2 -3 + 386, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 388, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 390, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 392, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 394, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 400, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 401, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 402, 1, 2.18, 2.18 );--
setScaleKey( spep_2 -3 + 404, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 406, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 408, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 410, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 412, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 414, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 416, 1, 0.78, 0.78 );
setScaleKey( spep_2 -3 + 418, 1, 0.72, 0.72 );
setScaleKey( spep_2 -3 + 420, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 422, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 424, 1, 0.65, 0.65 );
setScaleKey( spep_2 -3 + 436, 1, 0.65, 0.65 );
setScaleKey( spep_2 -3 + 438, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 442, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 444, 1, 0.67, 0.67 );
setScaleKey( spep_2 -3 + 446, 1, 0.67, 0.67 );
setScaleKey( spep_2 -3 + 448, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 450, 1, 0.69, 0.69 );
setScaleKey( spep_2 -3 + 452, 1, 0.7, 0.7 );
setScaleKey( spep_2 -3 + 454, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 456, 1, 0.73, 0.73 );
setScaleKey( spep_2 -3 + 458, 1, 0.74, 0.74 );
setScaleKey( spep_2 -3 + 460, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 462, 1, 0.79, 0.79 );
setScaleKey( spep_2 -3 + 464, 1, 0.82, 0.82 );
setScaleKey( spep_2 -3 + 466, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 468, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 470, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 472, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 474, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 476, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 478, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 480, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 482, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 484, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 486, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 488, 1, 1.09, 1.09 );
setScaleKey( spep_2 -3 + 490, 1, 1.17, 1.17 );
setScaleKey( spep_2 -3 + 492, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 494, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 496, 1, 2.1, 2.1 );
setScaleKey( spep_2 -3 + 498, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 500, 1, 2.31, 2.31 );
setScaleKey( spep_2 -3 + 502, 1, 2.32, 2.32 );
setScaleKey( spep_2 -3 + 504, 1, 2.32, 2.32 );--
setScaleKey( spep_2 -3 + 514, 1, 2.32, 2.32 );
setScaleKey( spep_2 -3 + 516, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 518, 1, 2.35, 2.35 );
setScaleKey( spep_2 -3 + 520, 1, 2.36, 2.36 );
setScaleKey( spep_2 -3 + 522, 1, 2.38, 2.38 );
setScaleKey( spep_2 -3 + 524, 1, 2.4, 2.4 );
setScaleKey( spep_2 -3 + 525, 1, 2.4, 2.4 );
setScaleKey( spep_2 -3 + 526, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 556, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 557, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 558, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 560, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 562, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 564, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 566, 1, 1.71, 1.71 );
setScaleKey( spep_2 -3 + 568, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 570, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 572, 1, 2.36, 2.36 );
setScaleKey( spep_2 -3 + 573, 1, 2.36, 2.36 );
setScaleKey( spep_2 -3 + 574, 1, 5.11, 5.11 );
setScaleKey( spep_2 -3 + 600, 1, 5.11, 5.11 );
setScaleKey( spep_2 -3 + 601, 1, 5.11, 5.11 );


setScaleKey( spep_2 -3 + 602, 1, 0.272, 0.272 );
setScaleKey( spep_2 -3 + 606, 1, 0.272, 0.272 );
--[[setScaleKey( spep_2 -3 + 608, 1, 0.27999999999999997, 0.27999999999999997 );
setScaleKey( spep_2 -3 + 626, 1, 0.27999999999999997, 0.27999999999999997 );
setScaleKey( spep_2 -3 + 628, 1, 0.288, 0.288 );
setScaleKey( spep_2 -3 + 644, 1, 0.288, 0.288 );]]
setScaleKey( spep_2 -3 + 646, 1, 0.296, 0.296 );
setScaleKey( spep_2 -3 + 658, 1, 0.296, 0.296 );
setScaleKey( spep_2 -3 + 663, 1, 0.296, 0.296 );
setScaleKey( spep_2 -3 + 664, 1, 0.296, 0.296 );
setScaleKey( spep_2 -3 + 686, 1, 0.296, 0.296 );
setScaleKey( spep_2 -3 + 688, 1, 0.296, 0.296 );


setRotateKey( spep_2 -3 + 134, 1, 56.9 );
setRotateKey( spep_2 -3 + 135, 1, 56.9 );
setRotateKey( spep_2 -3 + 136, 1, 47.9 );
setRotateKey( spep_2 -3 + 137, 1, 47.9 );
setRotateKey( spep_2 -3 + 138, 1, 38.9 );
setRotateKey( spep_2 -3 + 139, 1, 38.9 );
setRotateKey( spep_2 -3 + 140, 1, 29.9 );
setRotateKey( spep_2 -3 + 141, 1, 29.9 );
setRotateKey( spep_2 -3 + 142, 1, 20.9 );
setRotateKey( spep_2 -3 + 143, 1, 20.9 );
setRotateKey( spep_2 -3 + 144, 1, 11.9 );
setRotateKey( spep_2 -3 + 145, 1, 11.9 );
setRotateKey( spep_2 -3 + 146, 1, 2.9 );
setRotateKey( spep_2 -3 + 147, 1, 2.9 );
setRotateKey( spep_2 -3 + 148, 1, 36.3 );--
setRotateKey( spep_2 -3 + 150, 1, 35.4 );
setRotateKey( spep_2 -3 + 152, 1, 34.6 );
setRotateKey( spep_2 -3 + 154, 1, 33.9 );
setRotateKey( spep_2 -3 + 156, 1, 33.2 );
setRotateKey( spep_2 -3 + 158, 1, 32.5 );
setRotateKey( spep_2 -3 + 160, 1, 31.9 );
setRotateKey( spep_2 -3 + 162, 1, 31.3 );
setRotateKey( spep_2 -3 + 164, 1, 30.8 );
setRotateKey( spep_2 -3 + 166, 1, 30.3 );
setRotateKey( spep_2 -3 + 168, 1, 29.9 );
setRotateKey( spep_2 -3 + 170, 1, 29.5 );
setRotateKey( spep_2 -3 + 172, 1, 29.1 );
setRotateKey( spep_2 -3 + 174, 1, 28.8 );
setRotateKey( spep_2 -3 + 176, 1, 28.5 );
setRotateKey( spep_2 -3 + 178, 1, 28.2 );
setRotateKey( spep_2 -3 + 180, 1, 27.9 );
setRotateKey( spep_2 -3 + 182, 1, 27.7 );
setRotateKey( spep_2 -3 + 184, 1, 27.5 );
setRotateKey( spep_2 -3 + 186, 1, 27.4 );
setRotateKey( spep_2 -3 + 188, 1, 27.2 );
setRotateKey( spep_2 -3 + 190, 1, 27.1 );
setRotateKey( spep_2 -3 + 192, 1, 27 );
setRotateKey( spep_2 -3 + 194, 1, 26.9 );
setRotateKey( spep_2 -3 + 196, 1, 26.8 );
setRotateKey( spep_2 -3 + 198, 1, 26.8 );
setRotateKey( spep_2 -3 + 200, 1, 26.7 );
setRotateKey( spep_2 -3 + 204, 1, 26.7 );
setRotateKey( spep_2 -3 + 206, 1, 26.6 );
setRotateKey( spep_2 -3 + 214, 1, 26.6 );
setRotateKey( spep_2 -3 + 215, 1, 26.6 );
setRotateKey( spep_2 -3 + 216, 1, 51.3 );
setRotateKey( spep_2 -3 + 221, 1, 51.3 );
setRotateKey( spep_2 -3 + 222, 1, 37.8 );--
setRotateKey( spep_2 -3 + 224, 1, 37.6 );
setRotateKey( spep_2 -3 + 226, 1, 37.4 );
setRotateKey( spep_2 -3 + 228, 1, 38 );
setRotateKey( spep_2 -3 + 230, 1, 38.5 );
setRotateKey( spep_2 -3 + 232, 1, 38.9 );
setRotateKey( spep_2 -3 + 234, 1, 39.2 );
setRotateKey( spep_2 -3 + 236, 1, 39.4 );
setRotateKey( spep_2 -3 + 238, 1, 39.6 );
setRotateKey( spep_2 -3 + 240, 1, 39.8 );
setRotateKey( spep_2 -3 + 242, 1, 40 );
setRotateKey( spep_2 -3 + 248, 1, 40 );
setRotateKey( spep_2 -3 + 250, 1, 40.1 );
setRotateKey( spep_2 -3 + 252, 1, 39 );
setRotateKey( spep_2 -3 + 254, 1, 38 );
setRotateKey( spep_2 -3 + 256, 1, 37.2 );
setRotateKey( spep_2 -3 + 258, 1, 36.5 );
setRotateKey( spep_2 -3 + 260, 1, 35.9 );
setRotateKey( spep_2 -3 + 262, 1, 35.4 );
setRotateKey( spep_2 -3 + 264, 1, 35 );
setRotateKey( spep_2 -3 + 266, 1, 34.7 );
setRotateKey( spep_2 -3 + 268, 1, 34.5 );
setRotateKey( spep_2 -3 + 270, 1, 34.3 );
setRotateKey( spep_2 -3 + 272, 1, 34.2 );
setRotateKey( spep_2 -3 + 274, 1, 34.1 );
setRotateKey( spep_2 -3 + 281, 1, 34.1 );
setRotateKey( spep_2 -3 + 282, 1, 34.1 );
setRotateKey( spep_2 -3 + 284, 1, 37.9 );
setRotateKey( spep_2 -3 + 286, 1, 41.7 );
setRotateKey( spep_2 -3 + 287, 1, 41.7 );
setRotateKey( spep_2 -3 + 288, 1, -50 );--
setRotateKey( spep_2 -3 + 290, 1, -48.7 );
setRotateKey( spep_2 -3 + 292, 1, -47.5 );
setRotateKey( spep_2 -3 + 294, 1, -46.2 );
setRotateKey( spep_2 -3 + 296, 1, -44.9 );
setRotateKey( spep_2 -3 + 298, 1, -43.6 );
setRotateKey( spep_2 -3 + 300, 1, -42.4 );
setRotateKey( spep_2 -3 + 302, 1, -41.1 );
setRotateKey( spep_2 -3 + 304, 1, -39.8 );
setRotateKey( spep_2 -3 + 306, 1, -38.5 );
setRotateKey( spep_2 -3 + 308, 1, -37.3 );
setRotateKey( spep_2 -3 + 310, 1, -36 );
setRotateKey( spep_2 -3 + 312, 1, -8 );
setRotateKey( spep_2 -3 + 315, 1, -8 );
setRotateKey( spep_2 -3 + 316, 1, 75.7 );--
setRotateKey( spep_2 -3 + 318, 1, 61.3 );
setRotateKey( spep_2 -3 + 322, 1, 61.3 );
setRotateKey( spep_2 -3 + 324, 1, 47.5 );
setRotateKey( spep_2 -3 + 327, 1, 47.5 );
setRotateKey( spep_2 -3 + 328, 1, 17.2 );--
setRotateKey( spep_2 -3 + 332, 1, 17.2 );
setRotateKey( spep_2 -3 + 333, 1, 17.2 );
setRotateKey( spep_2 -3 + 334, 1, 138.2 );--
setRotateKey( spep_2 -3 + 336, 1, 138.2 );
setRotateKey( spep_2 -3 + 337, 1, 138.2 );
setRotateKey( spep_2 -3 + 338, 1, 17.2 );--
setRotateKey( spep_2 -3 + 340, 1, 17.2 );
setRotateKey( spep_2 -3 + 341, 1, 17.2 );
setRotateKey( spep_2 -3 + 342, 1, 138.2 );--
setRotateKey( spep_2 -3 + 346, 1, 138.2 );
setRotateKey( spep_2 -3 + 347, 1, 138.2 );
setRotateKey( spep_2 -3 + 348, 1, 30.9 );--
setRotateKey( spep_2 -3 + 352, 1, 30.9 );
setRotateKey( spep_2 -3 + 353, 1, 30.9 );
setRotateKey( spep_2 -3 + 354, 1, 38 );--
setRotateKey( spep_2 -3 + 356, 1, 38 );
setRotateKey( spep_2 -3 + 357, 1, 38 );
setRotateKey( spep_2 -3 + 358, 1, -5.3 );--
setRotateKey( spep_2 -3 + 361, 1, -5.3 );
setRotateKey( spep_2 -3 + 362, 1, 89.7 );--
setRotateKey( spep_2 -3 + 370, 1, 89.7 );
setRotateKey( spep_2 -3 + 371, 1, 89.7 );
setRotateKey( spep_2 -3 + 372, 1, 110.9 );--
setRotateKey( spep_2 -3 + 381, 1, 110.9 );
setRotateKey( spep_2 -3 + 382, 1, 31.7 );--
setRotateKey( spep_2 -3 + 383, 1, 31.7 );
setRotateKey( spep_2 -3 + 384, 1, -32 );--
setRotateKey( spep_2 -3 + 400, 1, -32 );
setRotateKey( spep_2 -3 + 401, 1, -32 );
setRotateKey( spep_2 -3 + 402, 1, 20.7 );--
setRotateKey( spep_2 -3 + 406, 1, 20.7 );
setRotateKey( spep_2 -3 + 408, 1, 31.9 );
setRotateKey( spep_2 -3 + 410, 1, 31.8 );
setRotateKey( spep_2 -3 + 412, 1, 31.7 );
setRotateKey( spep_2 -3 + 434, 1, 31.7 );
setRotateKey( spep_2 -3 + 436, 1, 31.8 );
setRotateKey( spep_2 -3 + 438, 1, 31.9 );
setRotateKey( spep_2 -3 + 440, 1, 32 );
setRotateKey( spep_2 -3 + 442, 1, 32.1 );
setRotateKey( spep_2 -3 + 444, 1, 32.3 );
setRotateKey( spep_2 -3 + 446, 1, 32.5 );
setRotateKey( spep_2 -3 + 448, 1, 32.8 );
setRotateKey( spep_2 -3 + 450, 1, 33.2 );
setRotateKey( spep_2 -3 + 452, 1, 33.6 );
setRotateKey( spep_2 -3 + 454, 1, 34.1 );
setRotateKey( spep_2 -3 + 456, 1, 34.7 );
setRotateKey( spep_2 -3 + 458, 1, 35.4 );
setRotateKey( spep_2 -3 + 460, 1, 36.2 );
setRotateKey( spep_2 -3 + 462, 1, 37.2 );
setRotateKey( spep_2 -3 + 464, 1, 38.4 );
setRotateKey( spep_2 -3 + 466, 1, 39.6 );
setRotateKey( spep_2 -3 + 468, 1, 40.8 );
setRotateKey( spep_2 -3 + 470, 1, 41.9 );
setRotateKey( spep_2 -3 + 472, 1, 42.9 );
setRotateKey( spep_2 -3 + 476, 1, 42.9 );
setRotateKey( spep_2 -3 + 478, 1, 43 );
setRotateKey( spep_2 -3 + 480, 1, 43 );
setRotateKey( spep_2 -3 + 482, 1, 43.1 );
setRotateKey( spep_2 -3 + 484, 1, 43.1 );
setRotateKey( spep_2 -3 + 486, 1, 43.2 );
setRotateKey( spep_2 -3 + 488, 1, 43.4 );
setRotateKey( spep_2 -3 + 490, 1, 43.6 );
setRotateKey( spep_2 -3 + 492, 1, 44 );
setRotateKey( spep_2 -3 + 494, 1, 45.6 );
setRotateKey( spep_2 -3 + 496, 1, 46.6 );
setRotateKey( spep_2 -3 + 498, 1, 47 );
setRotateKey( spep_2 -3 + 500, 1, 47.2 );
setRotateKey( spep_2 -3 + 502, 1, 47.3 );
setRotateKey( spep_2 -3 + 504, 1, 50 );--
setRotateKey( spep_2 -3 + 514, 1, 50 );
setRotateKey( spep_2 -3 + 516, 1, 53.5 );
setRotateKey( spep_2 -3 + 518, 1, 56.9 );
setRotateKey( spep_2 -3 + 520, 1, 60.4 );
setRotateKey( spep_2 -3 + 522, 1, 63.8 );
setRotateKey( spep_2 -3 + 524, 1, 67.3 );
setRotateKey( spep_2 -3 + 525, 1, 67.3 );
setRotateKey( spep_2 -3 + 526, 1, 59.2 );
setRotateKey( spep_2 -3 + 558, 1, 59.2 );
setRotateKey( spep_2 -3 + 560, 1, 60.5 );
setRotateKey( spep_2 -3 + 562, 1, 61.7 );
setRotateKey( spep_2 -3 + 564, 1, 63 );
setRotateKey( spep_2 -3 + 566, 1, 64.2 );
setRotateKey( spep_2 -3 + 568, 1, 65.5 );
setRotateKey( spep_2 -3 + 570, 1, 66.7 );
setRotateKey( spep_2 -3 + 572, 1, 68 );
setRotateKey( spep_2 -3 + 573, 1, 68 );
setRotateKey( spep_2 -3 + 574, 1, -6 );
setRotateKey( spep_2 -3 + 600, 1, -6 );
setRotateKey( spep_2 -3 + 601, 1, -6 );
setRotateKey( spep_2 -3 + 602, 1, -29.7 );
setRotateKey( spep_2 -3 + 658, 1, -29.7 );
setRotateKey( spep_2 -3 + 663, 1, -29.7 );
setRotateKey( spep_2 -3 + 664, 1, -29.7 );--
setRotateKey( spep_2 -3 + 686, 1, -29.7 );
setRotateKey( spep_2 -3 + 688, 1, -29.7 );


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 702, 1, 1 );
setDisp( spep_2 -3 + 742, 1, 0 );
changeAnime( spep_2 -3 + 702, 1, 108 );

setMoveKey( spep_2 -3 + 702, 1, 427.3, 270.5 , 0 );--
setMoveKey( spep_2 -3 + 704, 1, 375.3, 205.4 , 0 );
setMoveKey( spep_2 -3 + 706, 1, 383.1, 238.5 , 0 );
setMoveKey( spep_2 -3 + 708, 1, 364.2, 201.9 , 0 );
setMoveKey( spep_2 -3 + 710, 1, 365.4, 203.2 , 0 );
setMoveKey( spep_2 -3 + 712, 1, 366.5, 220.6 , 0 );
setMoveKey( spep_2 -3 + 714, 1, 337.6, 172 , 0 );
setMoveKey( spep_2 -3 + 716, 1, 338.8, 173.4 , 0 );
setMoveKey( spep_2 -3 + 718, 1, 331.8, 194.8 , 0 );
setMoveKey( spep_2 -3 + 720, 1, 315, 154.2 , 0 );
setMoveKey( spep_2 -3 + 722, 1, 310.1, 169.5 , 0 );
setMoveKey( spep_2 -3 + 724, 1, 309.2, 146.9 , 0 );
setMoveKey( spep_2 -3 + 726, 1, 290.4, 158.3 , 0 );
setMoveKey( spep_2 -3 + 728, 1, 283.5, 139.7 , 0 );
setMoveKey( spep_2 -3 + 730, 1, 290.6, 147.1 , 0 );
setMoveKey( spep_2 -3 + 732, 1, 291.7, 148.5 , 0 );
setMoveKey( spep_2 -3 + 734, 1, 285.7, 122.5 , 0 );
setMoveKey( spep_2 -3 + 736, 1, 269.7, 136.5 , 0 );
setMoveKey( spep_2 -3 + 738, 1, 269.7, 136.5 , 0 );
setMoveKey( spep_2 -3 + 740, 1, 263.7, 116.5 , 0 );
setMoveKey( spep_2 -3 + 742, 1, 263.7, 116.5 , 0 );

setScaleKey( spep_2 -3 + 702, 1, 0.333, 0.333 );
setScaleKey( spep_2 -3 + 742, 1, 0.333, 0.333 );

setRotateKey( spep_2 -3 + 702, 1, -17.5 );
setRotateKey( spep_2 -3 + 742, 1, -17.5 );


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 790, 1, 1 );
setDisp( spep_2 -3 + 828, 1, 0 );
changeAnime( spep_2 -3 + 702, 1, 5 );

setMoveKey( spep_2 -3 + 790, 1, 115.2, 11.2 , 0 );
setMoveKey( spep_2 -3 + 792, 1, 115.5, 11.2 , 0 );
setMoveKey( spep_2 -3 + 794, 1, 115.7, 11.3 , 0 );
setMoveKey( spep_2 -3 + 796, 1, 115.9, 11.3 , 0 );
setMoveKey( spep_2 -3 + 798, 1, 116.2, 11.3 , 0 );
setMoveKey( spep_2 -3 + 800, 1, 116.5, 11.4 , 0 );
setMoveKey( spep_2 -3 + 802, 1, 116.7, 11.4 , 0 );
setMoveKey( spep_2 -3 + 804, 1, 117, 11.4 , 0 );
setMoveKey( spep_2 -3 + 806, 1, 117.3, 11.5 , 0 );
setMoveKey( spep_2 -3 + 808, 1, 117.5, 11.5 , 0 );
setMoveKey( spep_2 -3 + 810, 1, 117.7, 11.5 , 0 );
setMoveKey( spep_2 -3 + 812, 1, 118, 11.6 , 0 );
setMoveKey( spep_2 -3 + 814, 1, 118.3, 11.6 , 0 );
setMoveKey( spep_2 -3 + 816, 1, 118.5, 11.7 , 0 );
setMoveKey( spep_2 -3 + 818, 1, 118.8, 11.7 , 0 );
setMoveKey( spep_2 -3 + 820, 1, 119, 11.8 , 0 );
setMoveKey( spep_2 -3 + 822, 1, 119.3, 11.8 , 0 );
setMoveKey( spep_2 -3 + 824, 1, 119.6, 11.9 , 0 );
setMoveKey( spep_2 -3 + 826, 1, 119.8, 11.9 , 0 );
setMoveKey( spep_2 -3 + 828, 1, 119.8, 11.9 , 0 );

setScaleKey( spep_2 -3 + 790, 1, 0.05, 0.05 );
setScaleKey( spep_2 -3 + 798, 1, 0.05, 0.05 );
setScaleKey( spep_2 -3 + 800, 1, 0.04, 0.04 );
setScaleKey( spep_2 -3 + 816, 1, 0.04, 0.04 );
setScaleKey( spep_2 -3 + 818, 1, 0.03, 0.03 );
setScaleKey( spep_2 -3 + 828, 1, 0.03, 0.03 );

setRotateKey( spep_2 -3 + 790, 1, 56.9 );
setRotateKey( spep_2 -3 + 828, 1, 56.9 );

-- ** 音 ** --
--突っ込んでくる
SE016 = playSeVer2( spep_2 + 60, 1121, "",spep_2 + 142, 0, 6, -1);

--ベジータパンチ
SE017 = playSeVer2( spep_2 + 132, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE017, 153 );
SE018 = playSeVer2( spep_2 + 136, 1359, "",spep_2 + 186, 0, 22, -1);
SE019 = playSeVer2( spep_2 + 138, 1000, "", 0, 0, 0, -1);

--ベジータ回転
SE020 = playSeVer2( spep_2 + 176, 1004, "",spep_2 + 200, 0, 14, -1);
SE021 = playSeVer2( spep_2 + 182, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 182, SE021, 202 );
setPitch( spep_2 + 182, SE021, 200 );
setTimeStretch( SE021, 1.13, 30, 4 );

--ベジータ振りかぶり
SE022 = playSeVer2( spep_2 + 196, 1116, "",spep_2 + 220, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 196, SE022, 120 );

--ベジータ足払い
SE023 = playSeVer2( spep_2 + 216, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 216, SE023, 100 );
SE024 = playSeVer2( spep_2 + 216, 1009, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 216, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 218, SE025, 92 );

--敵飛んでいく
SE026 = playSeVer2( spep_2 + 238, 1183, "",spep_2 + 336, 0, 38, -1);

--悟空パンチ
SE027 = playSeVer2( spep_2 + 272, 1189, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 278, 1359, "",spep_2 + 324, 0, 30, -1);
SE029 = playSeVer2( spep_2 + 280, 1187, "",spep_2 + 320, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 280, SE029, 94 );
setPitch( spep_2 + 280, SE029, -200 );
setTimeStretch( SE029, 0.87, 30, 4 );

--岩衝突
SE030 = playSeVer2( spep_2 + 312, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 312, SE030, 93 );
SE031 = playSeVer2( spep_2 + 312, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 312, SE031, 79 );

--悟空向かっていく
SE032 = playSeVer2( spep_2 + 344, 1182, "",spep_2 + 390, 0, 22, -1);

--悟空膝蹴り
SE033 = playSeVer2( spep_2 + 364, 1003, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 374, 1359, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 376, 1153, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 376, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 376, SE036, 84 );

--気弾溜め
SE037 = playSeVer2( spep_2 + 554, 1174, "",spep_2 + 656, 10, 18, -1);
setSeVolumeByWorkId( spep_2 + 554, SE037, 166 );
setStartTimeMs( SE037,  2933 );

--敵吹き飛ぶ
SE038 = playSeVer2( spep_2 + 396, 1027, "", 0, 0, 0, -1);

--ベジータ追いかける
SE039 = playSeVer2( spep_2 + 422, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 422, SE039, 129 );
SE040 = playSeVer2( spep_2 + 422, 1277, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 442, 1117, "",spep_2 + 490, 0, 28, -1);

--蹴り落とし
SE042 = playSeVer2( spep_2 + 482, 1004, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 492, 1359, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 494, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 494, SE044, 77 );
SE045 = playSeVer2( spep_2 + 494, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 494, SE045, 65 );

--気弾溜め
SE046 = playSeVer2( spep_2 + 552, 1210, "",spep_2 + 658, 12, 12, 0.6);
setStartTimeMs( SE046,  800 );
setPitch( spep_2 + 552, SE046, 300 );
setTimeStretch( SE046, 1.2, 30, 4 );
setBandpassFilter( spep_2 + 552, SE046, 24, 1200 );

--敵飛んでいく
SE047 = playSeVer2( spep_2 + 522, 1121, "",spep_2 + 616, 0, 46, -1);

--気弾溜め
SE048 = playSeVer2( spep_2 + 554, 1265, "",spep_2 + 664, 2, 16, -1);
setStartTimeMs( SE048,  433 );
SE049 = playSeVer2( spep_2 + 554, 1290, "",spep_2 + 584, 2, 12, -1);
setStartTimeMs( SE049,  117 );
setPitch( spep_2 + 554, SE049, 200 );
setTimeStretch( SE049, 1.13, 30, 4 );
SE050 = playSeVer2( spep_2 + 556, 1257, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 556, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 556, SE051, 224 );
SE052 = playSeVer2( spep_2 + 570, 1290, "", 0, 4, 0, -1);
setStartTimeMs( SE052,  100 );
setPitch( spep_2 + 570, SE052, 200 );
setTimeStretch( SE052, 1.13, 30, 4 );
SE053 = playSeVer2( spep_2 + 642, 1258, "",spep_2 + 750, 0, 52, -1);
setSeVolumeByWorkId( spep_2 + 642, SE053, 69 );
SE054 = playSeVer2( spep_2 + 652, 1027, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 652, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 652, SE055, 168 );
SE056 = playSeVer2( spep_2 + 652, 1316, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 652, SE056, 126 );

--敵吹っ飛ぶ
SE057 = playSeVer2( spep_2 + 686, 1027, "", 0, 0, 0, -1);

--画面遷移
SE058 = playSeVer2( spep_2 + 724, 1072, "", 0, 0, 0, 0.5);

--オーラ
SE059 = playSeVer2( spep_2 + 732, 1181, "",spep_2 + 826, 0, 20, -1);
SE060 = playSeVer2( spep_2 + 732, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 732, SE060, 50 );
SE061 = playSeVer2( spep_2 + 756, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 756, SE061, 50 );
SE062 = playSeVer2( spep_2 + 780, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 780, SE062, 46 );
SE063 = playSeVer2( spep_2 + 804, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 804, SE063, 38 );

--オーラ消える
SE064 = playSeVer2( spep_2 + 804, 1026, "", 0, 0, 0, -1);

--岩激突
SE065 = playSeVer2( spep_2 + 816, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 816, SE065, 70 );
SE066 = playSeVer2( spep_2 + 816, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 816, SE066, 69 );

--ベジータフレームイン
SE067 = playSeVer2( spep_2 + 846, 44, "",spep_2 + 878, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 846, SE067, 117 );
setBandpassFilter( spep_2 + 846, SE067, 24, 2161 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 864 );
endPhase( spep_2 + 964 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 構える(122F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 122 -2, 0x100, -1, 0, 0, 0 );  --構える ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 122 -2, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 122 -2, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 122 -2, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 122 -2 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 122 -2, first_f, 0 );

spep_x = spep_0 + 22;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 5, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 5, 515.5 , 0 );
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
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 +122 -2 + 14, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );

--構える
SE002 = playSeVer2( spep_0 + 16, 1233, "", 0, 0, 0, -1);

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気ダメ
SE004 = playSeVer2( spep_0 + 30, 1298, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE004, 87 );
SE006 = playSeVer2( spep_0 + 32, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE006, 132 );

--構える
SE005 = playSeVer2( spep_0 + 30, 1006, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 122 -2 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 122 -2;


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
playSe( spep_1 + 0, SE_05 );

--気を爆発させる
SE008 = playSeVer2( spep_1 + 86, 1264, "",spep_1 +94 + 84, 8, 32, -1);
setSeVolumeByWorkId( spep_1 + 86, SE008, 72 );
setStartTimeMs( SE008,  633 );
SE009 = playSeVer2( spep_1 + 86, 1176, "",spep_1 +94 + 104, 0, 40, -1);
setSeVolumeByWorkId( spep_1 + 86, SE009, 84 );
SE010 = playSeVer2( spep_1 + 86, 1011, "", 0, 24, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 画面手前に飛ぶ〜フィニッシュ(974F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
effect03 = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --画面手前に飛ぶ〜フィニッシュ ef_002_front
setEffMoveKey( spep_2 + 0, effect03, 0, 0 , 0 );
setEffMoveKey( spep_2 + 974, effect03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, effect03, -1.0, 1.0 );
setEffScaleKey( spep_2 + 974, effect03, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, effect03, 0 );
setEffRotateKey( spep_2 + 974, effect03, 0 );
setEffAlphaKey( spep_2 + 0, effect03, 255 );
setEffAlphaKey( spep_2 + 974, effect03, 255 );

effect04 = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --画面手前に飛ぶ〜フィニッシュ  ef_002_back
setEffMoveKey( spep_2 + 0, effect04, 0, 0 , 0 );
setEffMoveKey( spep_2 + 974, effect04, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, effect04, -1.0, 1.0 );
setEffScaleKey( spep_2 + 974, effect04, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, effect04, 0 );
setEffRotateKey( spep_2 + 974, effect04, 0 );
setEffAlphaKey( spep_2 + 0, effect04, 255 );
setEffAlphaKey( spep_2 + 974, effect04, 255 );

-- ** 音 ** --
--突っ込んでくる
SE011 = playSeVer2( spep_2 + 36, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE011, 143 );
SE012 = playSeVer2( spep_2 + 42, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE012, 122 );
SE013 = playSeVer2( spep_2 + 42, 1278, "",spep_2 + 230, 0, 88, -1);
SE014 = playSeVer2( spep_2 + 42, 1314, "",spep_2 + 152, 0, 12, -1);
SE015 = playSeVer2( spep_2 + 48, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE015, 132 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 974 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 70 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
   
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

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 134, 1, 1 );
setDisp( spep_2 -3 + 688, 1, 0 );
changeAnime( spep_2 -3 + 134, 1, 0 );
changeAnime( spep_2 -3 + 148, 1, 6 );
changeAnime( spep_2 -3 + 222, 1, 5 );
changeAnime( spep_2 -3 + 288, 1, 107 );
changeAnime( spep_2 -3 + 316, 1, 5 );
changeAnime( spep_2 -3 + 328, 1, 106 );
changeAnime( spep_2 -3 + 334, 1, 6 );
changeAnime( spep_2 -3 + 338, 1, 106 );
changeAnime( spep_2 -3 + 342, 1, 6 );
changeAnime( spep_2 -3 + 348, 1, 106 );
changeAnime( spep_2 -3 + 354, 1, 108 );
changeAnime( spep_2 -3 + 358, 1, 106 );
changeAnime( spep_2 -3 + 362, 1, 5 );
changeAnime( spep_2 -3 + 372, 1, 6 );
changeAnime( spep_2 -3 + 382, 1, 8 );
changeAnime( spep_2 -3 + 384, 1, 108 );
changeAnime( spep_2 -3 + 402, 1, 5 );
changeAnime( spep_2 -3 + 504, 1, 108 );

setMoveKey( spep_2 -3 + 134, 1, 156.7, 456.3 , 0 );
setMoveKey( spep_2 -3 + 135, 1, 156.7, 456.3 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 123.3, 374.5 , 0 );
setMoveKey( spep_2 -3 + 137, 1, 123.3, 374.5 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 92.1, 293.5 , 0 );
setMoveKey( spep_2 -3 + 139, 1, 92.1, 293.5 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 66.9, 218.4 , 0 );
setMoveKey( spep_2 -3 + 141, 1, 66.9, 218.4 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 42.6, 145.3 , 0 );
setMoveKey( spep_2 -3 + 143, 1, 42.6, 145.3 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 18.2, 74.5 , 0 );
setMoveKey( spep_2 -3 + 145, 1, 18.2, 74.5 , 0 );
setMoveKey( spep_2 -3 + 146, 1, -7.2, 6.2 , 0 );
setMoveKey( spep_2 -3 + 147, 1, -7.2, 6.2 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -47.8, 6.4 , 0 );--
setMoveKey( spep_2 -3 + 150, 1, -43.7, 14.5 , 0 );
setMoveKey( spep_2 -3 + 152, 1, -48.9, 7.4 , 0 );
setMoveKey( spep_2 -3 + 154, 1, -75.2, -5.6 , 0 );
setMoveKey( spep_2 -3 + 156, 1, -61.3, 8.6 , 0 );
setMoveKey( spep_2 -3 + 158, 1, -85.2, 12.5 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -86.9, 2.9 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -65.6, 1.2 , 0 );
setMoveKey( spep_2 -3 + 164, 1, -71.4, 3.8 , 0 );
setMoveKey( spep_2 -3 + 166, 1, -87.3, -13.9 , 0 );
setMoveKey( spep_2 -3 + 168, 1, -89, 28.8 , 0 );
setMoveKey( spep_2 -3 + 170, 1, -90.5, 24.8 , 0 );
setMoveKey( spep_2 -3 + 172, 1, -91.9, 20.9 , 0 );
setMoveKey( spep_2 -3 + 174, 1, -93, 16.9 , 0 );
setMoveKey( spep_2 -3 + 176, 1, -94, 13 , 0 );
setMoveKey( spep_2 -3 + 178, 1, -94.7, 9.1 , 0 );
setMoveKey( spep_2 -3 + 180, 1, -95.4, 5.2 , 0 );
setMoveKey( spep_2 -3 + 182, 1, -96.7, 5.2 , 0 );
setMoveKey( spep_2 -3 + 184, 1, -105.9, 6.5 , 0 );
setMoveKey( spep_2 -3 + 186, 1, -119, 7.8 , 0 );
setMoveKey( spep_2 -3 + 188, 1, -119.8, 7.8 , 0 );
setMoveKey( spep_2 -3 + 190, 1, -127.3, 7.7 , 0 );
setMoveKey( spep_2 -3 + 192, 1, -127.9, 7.7 , 0 );
setMoveKey( spep_2 -3 + 194, 1, -132.5, 10.4 , 0 );
setMoveKey( spep_2 -3 + 196, 1, -139.6, 17.1 , 0 );
setMoveKey( spep_2 -3 + 198, 1, -137.3, 23.9 , 0 );
setMoveKey( spep_2 -3 + 200, 1, -137.5, 23.9 , 0 );
setMoveKey( spep_2 -3 + 202, 1, -131, 30.6 , 0 );
setMoveKey( spep_2 -3 + 204, 1, -123, 34.7 , 0 );
setMoveKey( spep_2 -3 + 206, 1, -113.7, 37.4 , 0 );
setMoveKey( spep_2 -3 + 208, 1, -105.6, 41.4 , 0 );
setMoveKey( spep_2 -3 + 210, 1, -105.6, 41.4 , 0 );
setMoveKey( spep_2 -3 + 212, 1, -94.9, 41.4 , 0 );
setMoveKey( spep_2 -3 + 214, 1, -94.9, 41.4 , 0 );
setMoveKey( spep_2 -3 + 215, 1, -94.9, 41.4 , 0 );
setMoveKey( spep_2 -3 + 216, 1, -48.5, 20.6 , 0 );
setMoveKey( spep_2 -3 + 218, 1, -48.5, 20.6 , 0 );
setMoveKey( spep_2 -3 + 220, 1, -132.5, 44.6 , 0 );
setMoveKey( spep_2 -3 + 221, 1, -132.5, 44.6 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 4.4, -14.5 , 0 );--
setMoveKey( spep_2 -3 + 224, 1, 96.8, 54.6 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 110.2, 58.5 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 167.6, 35.7 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 161.2, 26.2 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 160.8, 33.9 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 155.7, 39 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 181.2, 51 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 177.6, 37.3 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 186.3, 37.4 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 186.5, 31.3 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 189.1, 33.3 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 172.9, 27 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 155.2, 13.4 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 83.7, -34.9 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 76.2, -58.3 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 69.7, -78.6 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 64.1, -96 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 59.4, -110.8 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 55.4, -123.1 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 52.2, -133.2 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 49.6, -141.2 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 47.6, -147.5 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 46, -152.2 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 44.9, -155.6 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 44.2, -157.9 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 43.8, -159.2 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 43.5, -160 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 43.5, -160.2 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 43.4, -160.3 , 0 );
setMoveKey( spep_2 -3 + 281, 1, 43.4, -160.3 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 11.2, -143.9 , 0 );
setMoveKey( spep_2 -3 + 284, 1, -14.2, -166.2 , 0 );
setMoveKey( spep_2 -3 + 286, 1, -39.1, -187.9 , 0 );
setMoveKey( spep_2 -3 + 287, 1, -39.1, -187.9 , 0 );--

        
a1 = 40;
b1 = 30;
setMoveKey( spep_2 -3 + 288, 1, -29.8 + a1, -78.1 -b1 , 0 );
setMoveKey( spep_2 -3 + 290, 1, -28.6 + a1, -77.3 -b1 , 0 );
setMoveKey( spep_2 -3 + 292, 1, -19.3 + a1, -81.9 -b1 , 0 );
setMoveKey( spep_2 -3 + 294, 1, -18.2 + a1, -81.1 -b1 , 0 );
setMoveKey( spep_2 -3 + 296, 1, -22.4 + a1, -73.6 -b1 , 0 );
setMoveKey( spep_2 -3 + 298, 1, -13.1 + a1, -89 -b1 , 0 );
setMoveKey( spep_2 -3 + 300, 1, -11.9 + a1, -88.1 -b1 , 0 );
setMoveKey( spep_2 -3 + 302, 1, -1.3 + a1, -76.5 -b1 , 0 );
setMoveKey( spep_2 -3 + 304, 1, -16.3 + a1, -69 -b1 , 0 );
setMoveKey( spep_2 -3 + 306, 1, -0.3 + a1, -62.8 -b1 , 0 );
setMoveKey( spep_2 -3 + 308, 1, -15.3 + a1, -70.1 -b1 , 0 );
setMoveKey( spep_2 -3 + 310, 1, -10.1 + a1, -65.2 -b1 , 0 );
setMoveKey( spep_2 -3 + 312, 1, 221.7 + a1, -85 -b1 , 0 );
setMoveKey( spep_2 -3 + 315, 1, 221.7 + a1, -85 -b1 , 0 );--

setMoveKey( spep_2 -3 + 316, 1, 79.7, -136 , 0 );
setMoveKey( spep_2 -3 + 318, 1, 93, -76.5 , 0 );
setMoveKey( spep_2 -3 + 320, 1, 93, -76.5 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 90.4, -77.2 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 91.9, -69.5 , 0 );
setMoveKey( spep_2 -3 + 327, 1, 91.9, -69.5 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 84.7, 33.1 , 0 );--
setMoveKey( spep_2 -3 + 330, 1, 84.7, 33.1 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 82, 29.1 , 0 );
setMoveKey( spep_2 -3 + 333, 1, 82, 29.1 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 80.7, 54.6 , 0 );--
setMoveKey( spep_2 -3 + 336, 1, 73.9, 49.2 , 0 );
setMoveKey( spep_2 -3 + 337, 1, 73.9, 49.2 , 0 );
setMoveKey( spep_2 -3 + 338, 1, 81.4, 63.1 , 0 );--
setMoveKey( spep_2 -3 + 340, 1, 81.4, 63.1 , 0 );
setMoveKey( spep_2 -3 + 341, 1, 81.4, 63.1 , 0 );
setMoveKey( spep_2 -3 + 342, 1, 91.1, 83.7 , 0 );--
setMoveKey( spep_2 -3 + 346, 1, 91.1, 83.7 , 0 );
setMoveKey( spep_2 -3 + 347, 1, 91.1, 83.7 , 0 );
setMoveKey( spep_2 -3 + 348, 1, 103.4, 106.3 , 0 );--
setMoveKey( spep_2 -3 + 352, 1, 103.4, 106.3 , 0 );
setMoveKey( spep_2 -3 + 353, 1, 103.4, 106.3 , 0 );
setMoveKey( spep_2 -3 + 354, 1, 115.5, 118.9 , 0 );--
setMoveKey( spep_2 -3 + 356, 1, 115.5, 118.9 , 0 );
setMoveKey( spep_2 -3 + 357, 1, 115.5, 118.9 , 0 );
setMoveKey( spep_2 -3 + 358, 1, 126.3, 136.2 , 0 );--
setMoveKey( spep_2 -3 + 361, 1, 126.3, 136.2 , 0 );
setMoveKey( spep_2 -3 + 362, 1, 127.7, 142.3 , 0 );--
setMoveKey( spep_2 -3 + 366, 1, 127.7, 142.3 , 0 );
setMoveKey( spep_2 -3 + 368, 1, 127.6, 137.2 , 0 );
setMoveKey( spep_2 -3 + 370, 1, 127.6, 137.2 , 0 );
setMoveKey( spep_2 -3 + 371, 1, 127.6, 137.2 , 0 );
setMoveKey( spep_2 -3 + 372, 1, 125.8, 129.8 , 0 );--
setMoveKey( spep_2 -3 + 381, 1, 125.8, 129.8 , 0 );
setMoveKey( spep_2 -3 + 382, 1, 90.5, 63.5 , 0 );--
setMoveKey( spep_2 -3 + 383, 1, 90.5, 63.5 , 0 );
setMoveKey( spep_2 -3 + 384, 1, 90.9, 11.1 , 0 );--
setMoveKey( spep_2 -3 + 386, 1, 90.8, 39.8 , 0 );
setMoveKey( spep_2 -3 + 388, 1, 65.6, -2.7 , 0 );
setMoveKey( spep_2 -3 + 390, 1, 81.3, 12.4 , 0 );
setMoveKey( spep_2 -3 + 392, 1, 109.4, 57.3 , 0 );
setMoveKey( spep_2 -3 + 394, 1, 115.6, 79.6 , 0 );
setMoveKey( spep_2 -3 + 396, 1, 135.4, 100.6 , 0 );
setMoveKey( spep_2 -3 + 398, 1, 138.6, 114 , 0 );
setMoveKey( spep_2 -3 + 400, 1, 139.1, 114.7 , 0 );
setMoveKey( spep_2 -3 + 401, 1, 139.1, 114.7 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 127.7, 143.4 , 0 );--
setMoveKey( spep_2 -3 + 404, 1, 141.3, 168.6 , 0 );
setMoveKey( spep_2 -3 + 406, 1, 141.3, 168.6 , 0 );
setMoveKey( spep_2 -3 + 408, 1, -13.9, -174.1 , 0 );
setMoveKey( spep_2 -3 + 410, 1, 106.1, 67.8 , 0 );
setMoveKey( spep_2 -3 + 412, 1, 191.2, 199.9 , 0 );
setMoveKey( spep_2 -3 + 414, 1, 238.6, 319.7 , 0 );
setMoveKey( spep_2 -3 + 416, 1, 284.3, 377.9 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 295.3, 425 , 0 );
setMoveKey( spep_2 -3 + 420, 1, 335.7, 439.3 , 0 );
setMoveKey( spep_2 -3 + 422, 1, 308.5, 390.5 , 0 );
setMoveKey( spep_2 -3 + 424, 1, 305.3, 361.9 , 0 );
setMoveKey( spep_2 -3 + 426, 1, 300.2, 330.1 , 0 );
setMoveKey( spep_2 -3 + 428, 1, 294.3, 296.9 , 0 );
setMoveKey( spep_2 -3 + 430, 1, 288, 263.2 , 0 );
setMoveKey( spep_2 -3 + 432, 1, 281.7, 229.5 , 0 );
setMoveKey( spep_2 -3 + 434, 1, 275.7, 196.6 , 0 );
setMoveKey( spep_2 -3 + 436, 1, 269.7, 164.1 , 0 );
setMoveKey( spep_2 -3 + 438, 1, 263.7, 132.1 , 0 );
setMoveKey( spep_2 -3 + 440, 1, 257.9, 100.7 , 0 );
setMoveKey( spep_2 -3 + 442, 1, 252.2, 69.8 , 0 );
setMoveKey( spep_2 -3 + 444, 1, 246.7, 39.7 , 0 );
setMoveKey( spep_2 -3 + 446, 1, 241.3, 10.4 , 0 );
setMoveKey( spep_2 -3 + 448, 1, 236.1, -17.9 , 0 );
setMoveKey( spep_2 -3 + 450, 1, 231.1, -45.2 , 0 );
setMoveKey( spep_2 -3 + 452, 1, 226.4, -71.1 , 0 );
setMoveKey( spep_2 -3 + 454, 1, 222, -95.5 , 0 );
setMoveKey( spep_2 -3 + 456, 1, 218, -117.9 , 0 );
setMoveKey( spep_2 -3 + 458, 1, 214.4, -138.2 , 0 );
setMoveKey( spep_2 -3 + 460, 1, 211.3, -155.7 , 0 );
setMoveKey( spep_2 -3 + 462, 1, 208.8, -170.4 , 0 );
setMoveKey( spep_2 -3 + 464, 1, 206.9, -182.5 , 0 );
setMoveKey( spep_2 -3 + 466, 1, 205.3, -192.8 , 0 );
setMoveKey( spep_2 -3 + 468, 1, 203.6, -203.3 , 0 );
setMoveKey( spep_2 -3 + 470, 1, 201.6, -215.6 , 0 );
setMoveKey( spep_2 -3 + 472, 1, 198.9, -230.9 , 0 );
setMoveKey( spep_2 -3 + 474, 1, 197.4, -227 , 0 );
setMoveKey( spep_2 -3 + 476, 1, 195.5, -221.5 , 0 );
setMoveKey( spep_2 -3 + 478, 1, 193, -214 , 0 );
setMoveKey( spep_2 -3 + 480, 1, 189.7, -203.8 , 0 );
setMoveKey( spep_2 -3 + 482, 1, 185.2, -189.8 , 0 );
setMoveKey( spep_2 -3 + 484, 1, 179.2, -170.5 , 0 );
setMoveKey( spep_2 -3 + 486, 1, 170.7, -143.1 , 0 );
setMoveKey( spep_2 -3 + 488, 1, 158.4, -102.6 , 0 );
setMoveKey( spep_2 -3 + 490, 1, 139.2, -39 , 0 );
setMoveKey( spep_2 -3 + 492, 1, 106.2, 70.8 , 0 );
setMoveKey( spep_2 -3 + 494, 1, 91.4, 101.7 , 0 );
setMoveKey( spep_2 -3 + 496, 1, 82.3, 120.4 , 0 );
setMoveKey( spep_2 -3 + 498, 1, 77.6, 130 , 0 );
setMoveKey( spep_2 -3 + 500, 1, 75.6, 133.5 , 0 );
setMoveKey( spep_2 -3 + 502, 1, 75.1, 133.9 , 0 );
setMoveKey( spep_2 -3 + 504, 1, 77.3, 80.1 , 0 );--
setMoveKey( spep_2 -3 + 506, 1, 94.9, 79.7 , 0 );
setMoveKey( spep_2 -3 + 508, 1, 78.5, 88.5 , 0 );
setMoveKey( spep_2 -3 + 510, 1, 90.9, 75.3 , 0 );
setMoveKey( spep_2 -3 + 512, 1, 102.7, 86.9 , 0 );
setMoveKey( spep_2 -3 + 514, 1, 91.6, 77.1 , 0 );
setMoveKey( spep_2 -3 + 516, 1, 220.7, -129.1 , 0 );
setMoveKey( spep_2 -3 + 518, 1, 320.4, -327.9 , 0 );
setMoveKey( spep_2 -3 + 520, 1, 423.5, -535.8 , 0 );
setMoveKey( spep_2 -3 + 522, 1, 549.7, -732.7 , 0 );
setMoveKey( spep_2 -3 + 524, 1, 645.8, -939.4 , 0 );
setMoveKey( spep_2 -3 + 525, 1, 645.8, -939.4 , 0 );
setMoveKey( spep_2 -3 + 526, 1, -32.5, 261.6 , 0 );--
setMoveKey( spep_2 -3 + 528, 1, -26, 228.4 , 0 );
setMoveKey( spep_2 -3 + 530, 1, -19.4, 195.1 , 0 );
setMoveKey( spep_2 -3 + 532, 1, -12.8, 161.8 , 0 );
setMoveKey( spep_2 -3 + 534, 1, -6.3, 128.6 , 0 );
setMoveKey( spep_2 -3 + 536, 1, 0.3, 95.3 , 0 );
setMoveKey( spep_2 -3 + 538, 1, 6.8, 62 , 0 );
setMoveKey( spep_2 -3 + 540, 1, 13.4, 28.8 , 0 );
setMoveKey( spep_2 -3 + 542, 1, 19.9, -4.5 , 0 );
setMoveKey( spep_2 -3 + 544, 1, 26.5, -37.8 , 0 );
setMoveKey( spep_2 -3 + 546, 1, 33, -71.1 , 0 );
setMoveKey( spep_2 -3 + 548, 1, 39.6, -104.3 , 0 );
setMoveKey( spep_2 -3 + 550, 1, 46.2, -137.6 , 0 );
setMoveKey( spep_2 -3 + 552, 1, 52.7, -170.9 , 0 );
setMoveKey( spep_2 -3 + 554, 1, 59.3, -204.1 , 0 );
setMoveKey( spep_2 -3 + 556, 1, 65.9, -237.4 , 0 );
setMoveKey( spep_2 -3 + 557, 1, 65.9, -237.4 , 0 );
setMoveKey( spep_2 -3 + 558, 1, 196.2, 515.6 , 0 );
setMoveKey( spep_2 -3 + 560, 1, 215.7, 453.1 , 0 );
setMoveKey( spep_2 -3 + 562, 1, 235.2, 390.6 , 0 );
setMoveKey( spep_2 -3 + 564, 1, 254.7, 328 , 0 );
setMoveKey( spep_2 -3 + 566, 1, 274.2, 265.4 , 0 );
setMoveKey( spep_2 -3 + 568, 1, 293.8, 202.9 , 0 );
setMoveKey( spep_2 -3 + 570, 1, 313.3, 140.3 , 0 );
setMoveKey( spep_2 -3 + 572, 1, 332.8, 77.6 , 0 );
setMoveKey( spep_2 -3 + 573, 1, 332.8, 77.6 , 0 );
setMoveKey( spep_2 -3 + 574, 1, 490.7, 31.8 , 0 );
setMoveKey( spep_2 -3 + 576, 1, 490.7, 31.8 , 0 );
setMoveKey( spep_2 -3 + 578, 1, 261.8, 64.8 , 0 );
setMoveKey( spep_2 -3 + 580, 1, 261.8, 72.8 , 0 );
setMoveKey( spep_2 -3 + 582, 1, 261.8, 70.8 , 0 );
setMoveKey( spep_2 -3 + 584, 1, 265.7, 66.8 , 0 );
setMoveKey( spep_2 -3 + 586, 1, 265.7, 70.8 , 0 );
setMoveKey( spep_2 -3 + 588, 1, 269.7, 64.8 , 0 );
setMoveKey( spep_2 -3 + 590, 1, 271.7, 64.8 , 0 );
setMoveKey( spep_2 -3 + 592, 1, 275.7, 68.8 , 0 );
setMoveKey( spep_2 -3 + 594, 1, 277.7, 62.8 , 0 );
setMoveKey( spep_2 -3 + 596, 1, 271.7, 68.8 , 0 );
setMoveKey( spep_2 -3 + 598, 1, 277.7, 62.8 , 0 );
setMoveKey( spep_2 -3 + 600, 1, 277.7, 62.8 , 0 );
setMoveKey( spep_2 -3 + 601, 1, 277.7, 62.8 , 0 );
setMoveKey( spep_2 -3 + 602, 1, -179.9, -78.1 , 0 );
setMoveKey( spep_2 -3 + 604, 1, -180.4, -78.4 , 0 );
setMoveKey( spep_2 -3 + 606, 1, -181.1, -78.7 , 0 );
setMoveKey( spep_2 -3 + 608, 1, -181.6, -79 , 0 );
setMoveKey( spep_2 -3 + 610, 1, -182.2, -79.3 , 0 );
setMoveKey( spep_2 -3 + 612, 1, -182.7, -79.6 , 0 );
setMoveKey( spep_2 -3 + 614, 1, -183.3, -79.9 , 0 );
setMoveKey( spep_2 -3 + 616, 1, -183.9, -80.3 , 0 );
setMoveKey( spep_2 -3 + 618, 1, -184.5, -80.6 , 0 );
setMoveKey( spep_2 -3 + 620, 1, -185, -80.9 , 0 );
setMoveKey( spep_2 -3 + 622, 1, -185.6, -81.2 , 0 );
setMoveKey( spep_2 -3 + 624, 1, -186.1, -81.5 , 0 );
setMoveKey( spep_2 -3 + 626, 1, -186.7, -81.8 , 0 );
setMoveKey( spep_2 -3 + 628, 1, -187.3, -82.1 , 0 );
setMoveKey( spep_2 -3 + 630, 1, -187.8, -82.4 , 0 );
setMoveKey( spep_2 -3 + 632, 1, -188.4, -82.7 , 0 );
setMoveKey( spep_2 -3 + 634, 1, -189, -83 , 0 );
setMoveKey( spep_2 -3 + 636, 1, -189.5, -83.4 , 0 );
setMoveKey( spep_2 -3 + 638, 1, -190.1, -83.7 , 0 );
setMoveKey( spep_2 -3 + 640, 1, -190.7, -84 , 0 );
setMoveKey( spep_2 -3 + 642, 1, -191.2, -84.3 , 0 );
setMoveKey( spep_2 -3 + 644, 1, -191.8, -84.6 , 0 );
setMoveKey( spep_2 -3 + 646, 1, -192.4, -84.9 , 0 );
setMoveKey( spep_2 -3 + 648, 1, -192.9, -85.2 , 0 );
setMoveKey( spep_2 -3 + 650, 1, -193.5, -85.5 , 0 );
setMoveKey( spep_2 -3 + 652, 1, -194.1, -85.8 , 0 );
setMoveKey( spep_2 -3 + 654, 1, -194.6, -86.1 , 0 );
setMoveKey( spep_2 -3 + 656, 1, -195.2, -86.5 , 0 );
setMoveKey( spep_2 -3 + 658, 1, -195.8, -86.8 , 0 );
setMoveKey( spep_2 -3 + 663, 1, -195.8, -86.8 , 0 );
setMoveKey( spep_2 -3 + 664, 1, -196.4, -147.1 , 0 );--
setMoveKey( spep_2 -3 + 665, 1, -196.4, -147.1 , 0 );--
setMoveKey( spep_2 -3 + 666, 1, -202.4, -27.1 , 0 );
setMoveKey( spep_2 -3 + 667, 1, -202.4, -27.1 , 0 );
setMoveKey( spep_2 -3 + 668, 1, -202.4, -27.1 , 0 );
setMoveKey( spep_2 -3 + 669, 1, -202.4, -27.1 , 0 );
setMoveKey( spep_2 -3 + 670, 1, -170.4, -107.1 , 0 );
setMoveKey( spep_2 -3 + 671, 1, -170.4, -107.1 , 0 );
setMoveKey( spep_2 -3 + 672, 1, -214.4, -61.1 , 0 );
setMoveKey( spep_2 -3 + 673, 1, -214.4, -61.1 , 0 );
setMoveKey( spep_2 -3 + 674, 1, -206.4, -115.1 , 0 );
setMoveKey( spep_2 -3 + 675, 1, -206.4, -115.1 , 0 );
setMoveKey( spep_2 -3 + 676, 1, -200.4, -55.1 , 0 );
setMoveKey( spep_2 -3 + 677, 1, -200.4, -55.1 , 0 );
setMoveKey( spep_2 -3 + 678, 1, -200.4, -55.1 , 0 );
setMoveKey( spep_2 -3 + 679, 1, -200.4, -55.1 , 0 );
setMoveKey( spep_2 -3 + 680, 1, -200.4, -97.1 , 0 );
setMoveKey( spep_2 -3 + 681, 1, -200.4, -97.1 , 0 );
setMoveKey( spep_2 -3 + 682, 1, -200.4, -69.1 , 0 );
setMoveKey( spep_2 -3 + 683, 1, -200.4, -69.1 , 0 );
setMoveKey( spep_2 -3 + 684, 1, -200.5, -69.1 , 0 );
setMoveKey( spep_2 -3 + 685, 1, -200.5, -69.1 , 0 );
setMoveKey( spep_2 -3 + 686, 1, -340.5, -195.1 , 0 );
setMoveKey( spep_2 -3 + 687, 1, -340.5, -195.1 , 0 );
setMoveKey( spep_2 -3 + 688, 1, -340.5, -195.1 , 0 );


setScaleKey( spep_2 -3 + 134, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 135, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 136, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 137, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 138, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 139, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 140, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 141, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 142, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 143, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 144, 1, 0.75, 0.75 );
setScaleKey( spep_2 -3 + 145, 1, 0.75, 0.75 );
setScaleKey( spep_2 -3 + 146, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 147, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 148, 1, 0.92, 0.92 );--
setScaleKey( spep_2 -3 + 150, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 152, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 154, 1, 0.89, 0.89 );
setScaleKey( spep_2 -3 + 156, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 158, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 160, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 162, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 164, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 166, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 168, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 170, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 172, 1, 0.83, 0.83 );
setScaleKey( spep_2 -3 + 174, 1, 0.83, 0.83 );
setScaleKey( spep_2 -3 + 176, 1, 0.82, 0.82 );
setScaleKey( spep_2 -3 + 180, 1, 0.82, 0.82 );
setScaleKey( spep_2 -3 + 182, 1, 0.81, 0.81 );
setScaleKey( spep_2 -3 + 194, 1, 0.81, 0.81 );
setScaleKey( spep_2 -3 + 196, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 214, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 215, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 216, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 221, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 222, 1, 1.75, 1.75 );--
setScaleKey( spep_2 -3 + 224, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 226, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 228, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 230, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 232, 1, 0.42, 0.42 );
setScaleKey( spep_2 -3 + 234, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 236, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 238, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 240, 1, 0.34, 0.34 );
setScaleKey( spep_2 -3 + 242, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 244, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 246, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 248, 1, 0.65, 0.65 );
setScaleKey( spep_2 -3 + 250, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 252, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 254, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 256, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 258, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 260, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 262, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 264, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 266, 1, 2.02, 2.02 );
setScaleKey( spep_2 -3 + 268, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 270, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 272, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 274, 1, 2.1, 2.1 );
setScaleKey( spep_2 -3 + 276, 1, 2.1, 2.1 );
setScaleKey( spep_2 -3 + 278, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 281, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 282, 1, 2.01, 2.01 );
setScaleKey( spep_2 -3 + 284, 1, 2.84, 2.84 );
setScaleKey( spep_2 -3 + 286, 1, 3.66, 3.66 );
setScaleKey( spep_2 -3 + 287, 1, 3.66, 3.66 );--

setScaleKey( spep_2 -3 + 288, 1, 1.3875, 1.3875 );
setScaleKey( spep_2 -3 + 290, 1, 1.4025, 1.4025 );
setScaleKey( spep_2 -3 + 292, 1, 1.4175, 1.4175 );
setScaleKey( spep_2 -3 + 294, 1, 1.425, 1.425 );
setScaleKey( spep_2 -3 + 296, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 298, 1, 1.455, 1.455 );
setScaleKey( spep_2 -3 + 300, 1, 1.4625, 1.4625 );
setScaleKey( spep_2 -3 + 302, 1, 1.4775, 1.4775 );
setScaleKey( spep_2 -3 + 304, 1, 1.4925, 1.4925 );
setScaleKey( spep_2 -3 + 306, 1, 1.5075, 1.5075 );
setScaleKey( spep_2 -3 + 308, 1, 1.515, 1.515 );
setScaleKey( spep_2 -3 + 310, 1, 1.53, 1.53 );
setScaleKey( spep_2 -3 + 312, 1, 1.5225, 1.5225 );
setScaleKey( spep_2 -3 + 315, 1, 1.5225, 1.5225 );--

setScaleKey( spep_2 -3 + 316, 1, 2.03, 2.03 );
setScaleKey( spep_2 -3 + 318, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 320, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 322, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 324, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 327, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 328, 1, 0.25, 0.25 );--
setScaleKey( spep_2 -3 + 332, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 333, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 334, 1, 0.25, 0.25 );--
setScaleKey( spep_2 -3 + 336, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 337, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 338, 1, 0.25, 0.25 );--
setScaleKey( spep_2 -3 + 340, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 341, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 342, 1, 0.25, 0.25 );--
setScaleKey( spep_2 -3 + 346, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 347, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 348, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 352, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 353, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 354, 1, 0.25, 0.25 );--
setScaleKey( spep_2 -3 + 356, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 357, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 358, 1, 0.25, 0.25 );--
setScaleKey( spep_2 -3 + 361, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 362, 1, 0.25, 0.25 );--
setScaleKey( spep_2 -3 + 366, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 368, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 370, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 371, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 372, 1, 0.54, 0.54 );--
setScaleKey( spep_2 -3 + 381, 1, 0.54, 0.54 );
setScaleKey( spep_2 -3 + 382, 1, 1.82, 1.82 );--
setScaleKey( spep_2 -3 + 383, 1, 1.82, 1.82 );
setScaleKey( spep_2 -3 + 384, 1, 2.18, 2.18 );--
setScaleKey( spep_2 -3 + 386, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 388, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 390, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 392, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 394, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 400, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 401, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 402, 1, 2.18, 2.18 );--
setScaleKey( spep_2 -3 + 404, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 406, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 408, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 410, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 412, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 414, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 416, 1, 0.78, 0.78 );
setScaleKey( spep_2 -3 + 418, 1, 0.72, 0.72 );
setScaleKey( spep_2 -3 + 420, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 422, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 424, 1, 0.65, 0.65 );
setScaleKey( spep_2 -3 + 436, 1, 0.65, 0.65 );
setScaleKey( spep_2 -3 + 438, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 442, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 444, 1, 0.67, 0.67 );
setScaleKey( spep_2 -3 + 446, 1, 0.67, 0.67 );
setScaleKey( spep_2 -3 + 448, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 450, 1, 0.69, 0.69 );
setScaleKey( spep_2 -3 + 452, 1, 0.7, 0.7 );
setScaleKey( spep_2 -3 + 454, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 456, 1, 0.73, 0.73 );
setScaleKey( spep_2 -3 + 458, 1, 0.74, 0.74 );
setScaleKey( spep_2 -3 + 460, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 462, 1, 0.79, 0.79 );
setScaleKey( spep_2 -3 + 464, 1, 0.82, 0.82 );
setScaleKey( spep_2 -3 + 466, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 468, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 470, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 472, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 474, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 476, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 478, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 480, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 482, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 484, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 486, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 488, 1, 1.09, 1.09 );
setScaleKey( spep_2 -3 + 490, 1, 1.17, 1.17 );
setScaleKey( spep_2 -3 + 492, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 494, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 496, 1, 2.1, 2.1 );
setScaleKey( spep_2 -3 + 498, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 500, 1, 2.31, 2.31 );
setScaleKey( spep_2 -3 + 502, 1, 2.32, 2.32 );
setScaleKey( spep_2 -3 + 504, 1, 2.32, 2.32 );--
setScaleKey( spep_2 -3 + 514, 1, 2.32, 2.32 );
setScaleKey( spep_2 -3 + 516, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 518, 1, 2.35, 2.35 );
setScaleKey( spep_2 -3 + 520, 1, 2.36, 2.36 );
setScaleKey( spep_2 -3 + 522, 1, 2.38, 2.38 );
setScaleKey( spep_2 -3 + 524, 1, 2.4, 2.4 );
setScaleKey( spep_2 -3 + 525, 1, 2.4, 2.4 );
setScaleKey( spep_2 -3 + 526, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 556, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 557, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 558, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 560, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 562, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 564, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 566, 1, 1.71, 1.71 );
setScaleKey( spep_2 -3 + 568, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 570, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 572, 1, 2.36, 2.36 );
setScaleKey( spep_2 -3 + 573, 1, 2.36, 2.36 );
setScaleKey( spep_2 -3 + 574, 1, 5.11, 5.11 );
setScaleKey( spep_2 -3 + 600, 1, 5.11, 5.11 );
setScaleKey( spep_2 -3 + 601, 1, 5.11, 5.11 );

setScaleKey( spep_2 -3 + 602, 1, 0.272, 0.272 );
setScaleKey( spep_2 -3 + 606, 1, 0.272, 0.272 );
--[[setScaleKey( spep_2 -3 + 608, 1, 0.27999999999999997, 0.27999999999999997 );
setScaleKey( spep_2 -3 + 626, 1, 0.27999999999999997, 0.27999999999999997 );
setScaleKey( spep_2 -3 + 628, 1, 0.288, 0.288 );
setScaleKey( spep_2 -3 + 644, 1, 0.288, 0.288 );]]
setScaleKey( spep_2 -3 + 646, 1, 0.296, 0.296 );
setScaleKey( spep_2 -3 + 658, 1, 0.296, 0.296 );
setScaleKey( spep_2 -3 + 663, 1, 0.296, 0.296 );
setScaleKey( spep_2 -3 + 664, 1, 0.296, 0.296 );
setScaleKey( spep_2 -3 + 686, 1, 0.296, 0.296 );
setScaleKey( spep_2 -3 + 688, 1, 0.296, 0.296 );

setRotateKey( spep_2 -3 + 134, 1, 56.9 );
setRotateKey( spep_2 -3 + 135, 1, 56.9 );
setRotateKey( spep_2 -3 + 136, 1, 47.9 );
setRotateKey( spep_2 -3 + 137, 1, 47.9 );
setRotateKey( spep_2 -3 + 138, 1, 38.9 );
setRotateKey( spep_2 -3 + 139, 1, 38.9 );
setRotateKey( spep_2 -3 + 140, 1, 29.9 );
setRotateKey( spep_2 -3 + 141, 1, 29.9 );
setRotateKey( spep_2 -3 + 142, 1, 20.9 );
setRotateKey( spep_2 -3 + 143, 1, 20.9 );
setRotateKey( spep_2 -3 + 144, 1, 11.9 );
setRotateKey( spep_2 -3 + 145, 1, 11.9 );
setRotateKey( spep_2 -3 + 146, 1, 2.9 );
setRotateKey( spep_2 -3 + 147, 1, 2.9 );
setRotateKey( spep_2 -3 + 148, 1, 36.3 );--
setRotateKey( spep_2 -3 + 150, 1, 35.4 );
setRotateKey( spep_2 -3 + 152, 1, 34.6 );
setRotateKey( spep_2 -3 + 154, 1, 33.9 );
setRotateKey( spep_2 -3 + 156, 1, 33.2 );
setRotateKey( spep_2 -3 + 158, 1, 32.5 );
setRotateKey( spep_2 -3 + 160, 1, 31.9 );
setRotateKey( spep_2 -3 + 162, 1, 31.3 );
setRotateKey( spep_2 -3 + 164, 1, 30.8 );
setRotateKey( spep_2 -3 + 166, 1, 30.3 );
setRotateKey( spep_2 -3 + 168, 1, 29.9 );
setRotateKey( spep_2 -3 + 170, 1, 29.5 );
setRotateKey( spep_2 -3 + 172, 1, 29.1 );
setRotateKey( spep_2 -3 + 174, 1, 28.8 );
setRotateKey( spep_2 -3 + 176, 1, 28.5 );
setRotateKey( spep_2 -3 + 178, 1, 28.2 );
setRotateKey( spep_2 -3 + 180, 1, 27.9 );
setRotateKey( spep_2 -3 + 182, 1, 27.7 );
setRotateKey( spep_2 -3 + 184, 1, 27.5 );
setRotateKey( spep_2 -3 + 186, 1, 27.4 );
setRotateKey( spep_2 -3 + 188, 1, 27.2 );
setRotateKey( spep_2 -3 + 190, 1, 27.1 );
setRotateKey( spep_2 -3 + 192, 1, 27 );
setRotateKey( spep_2 -3 + 194, 1, 26.9 );
setRotateKey( spep_2 -3 + 196, 1, 26.8 );
setRotateKey( spep_2 -3 + 198, 1, 26.8 );
setRotateKey( spep_2 -3 + 200, 1, 26.7 );
setRotateKey( spep_2 -3 + 204, 1, 26.7 );
setRotateKey( spep_2 -3 + 206, 1, 26.6 );
setRotateKey( spep_2 -3 + 214, 1, 26.6 );
setRotateKey( spep_2 -3 + 215, 1, 26.6 );
setRotateKey( spep_2 -3 + 216, 1, 51.3 );
setRotateKey( spep_2 -3 + 221, 1, 51.3 );
setRotateKey( spep_2 -3 + 222, 1, 37.8 );--
setRotateKey( spep_2 -3 + 224, 1, 37.6 );
setRotateKey( spep_2 -3 + 226, 1, 37.4 );
setRotateKey( spep_2 -3 + 228, 1, 38 );
setRotateKey( spep_2 -3 + 230, 1, 38.5 );
setRotateKey( spep_2 -3 + 232, 1, 38.9 );
setRotateKey( spep_2 -3 + 234, 1, 39.2 );
setRotateKey( spep_2 -3 + 236, 1, 39.4 );
setRotateKey( spep_2 -3 + 238, 1, 39.6 );
setRotateKey( spep_2 -3 + 240, 1, 39.8 );
setRotateKey( spep_2 -3 + 242, 1, 40 );
setRotateKey( spep_2 -3 + 248, 1, 40 );
setRotateKey( spep_2 -3 + 250, 1, 40.1 );
setRotateKey( spep_2 -3 + 252, 1, 39 );
setRotateKey( spep_2 -3 + 254, 1, 38 );
setRotateKey( spep_2 -3 + 256, 1, 37.2 );
setRotateKey( spep_2 -3 + 258, 1, 36.5 );
setRotateKey( spep_2 -3 + 260, 1, 35.9 );
setRotateKey( spep_2 -3 + 262, 1, 35.4 );
setRotateKey( spep_2 -3 + 264, 1, 35 );
setRotateKey( spep_2 -3 + 266, 1, 34.7 );
setRotateKey( spep_2 -3 + 268, 1, 34.5 );
setRotateKey( spep_2 -3 + 270, 1, 34.3 );
setRotateKey( spep_2 -3 + 272, 1, 34.2 );
setRotateKey( spep_2 -3 + 274, 1, 34.1 );
setRotateKey( spep_2 -3 + 281, 1, 34.1 );
setRotateKey( spep_2 -3 + 282, 1, 34.1 );
setRotateKey( spep_2 -3 + 284, 1, 37.9 );
setRotateKey( spep_2 -3 + 286, 1, 41.7 );
setRotateKey( spep_2 -3 + 287, 1, 41.7 );
setRotateKey( spep_2 -3 + 288, 1, -50 );--
setRotateKey( spep_2 -3 + 290, 1, -48.7 );
setRotateKey( spep_2 -3 + 292, 1, -47.5 );
setRotateKey( spep_2 -3 + 294, 1, -46.2 );
setRotateKey( spep_2 -3 + 296, 1, -44.9 );
setRotateKey( spep_2 -3 + 298, 1, -43.6 );
setRotateKey( spep_2 -3 + 300, 1, -42.4 );
setRotateKey( spep_2 -3 + 302, 1, -41.1 );
setRotateKey( spep_2 -3 + 304, 1, -39.8 );
setRotateKey( spep_2 -3 + 306, 1, -38.5 );
setRotateKey( spep_2 -3 + 308, 1, -37.3 );
setRotateKey( spep_2 -3 + 310, 1, -36 );
setRotateKey( spep_2 -3 + 312, 1, -8 );
setRotateKey( spep_2 -3 + 315, 1, -8 );
setRotateKey( spep_2 -3 + 316, 1, 75.7 );--
setRotateKey( spep_2 -3 + 318, 1, 61.3 );
setRotateKey( spep_2 -3 + 322, 1, 61.3 );
setRotateKey( spep_2 -3 + 324, 1, 47.5 );
setRotateKey( spep_2 -3 + 327, 1, 47.5 );
setRotateKey( spep_2 -3 + 328, 1, 17.2 );--
setRotateKey( spep_2 -3 + 332, 1, 17.2 );
setRotateKey( spep_2 -3 + 333, 1, 17.2 );
setRotateKey( spep_2 -3 + 334, 1, 138.2 );--
setRotateKey( spep_2 -3 + 336, 1, 138.2 );
setRotateKey( spep_2 -3 + 337, 1, 138.2 );
setRotateKey( spep_2 -3 + 338, 1, 17.2 );--
setRotateKey( spep_2 -3 + 340, 1, 17.2 );
setRotateKey( spep_2 -3 + 341, 1, 17.2 );
setRotateKey( spep_2 -3 + 342, 1, 138.2 );--
setRotateKey( spep_2 -3 + 346, 1, 138.2 );
setRotateKey( spep_2 -3 + 347, 1, 138.2 );
setRotateKey( spep_2 -3 + 348, 1, 30.9 );--
setRotateKey( spep_2 -3 + 352, 1, 30.9 );
setRotateKey( spep_2 -3 + 353, 1, 30.9 );
setRotateKey( spep_2 -3 + 354, 1, 38 );--
setRotateKey( spep_2 -3 + 356, 1, 38 );
setRotateKey( spep_2 -3 + 357, 1, 38 );
setRotateKey( spep_2 -3 + 358, 1, -5.3 );--
setRotateKey( spep_2 -3 + 361, 1, -5.3 );
setRotateKey( spep_2 -3 + 362, 1, 89.7 );--
setRotateKey( spep_2 -3 + 370, 1, 89.7 );
setRotateKey( spep_2 -3 + 371, 1, 89.7 );
setRotateKey( spep_2 -3 + 372, 1, 110.9 );--
setRotateKey( spep_2 -3 + 381, 1, 110.9 );
setRotateKey( spep_2 -3 + 382, 1, 31.7 );--
setRotateKey( spep_2 -3 + 383, 1, 31.7 );
setRotateKey( spep_2 -3 + 384, 1, -32 );--
setRotateKey( spep_2 -3 + 400, 1, -32 );
setRotateKey( spep_2 -3 + 401, 1, -32 );
setRotateKey( spep_2 -3 + 402, 1, 20.7 );--
setRotateKey( spep_2 -3 + 406, 1, 20.7 );
setRotateKey( spep_2 -3 + 408, 1, 31.9 );
setRotateKey( spep_2 -3 + 410, 1, 31.8 );
setRotateKey( spep_2 -3 + 412, 1, 31.7 );
setRotateKey( spep_2 -3 + 434, 1, 31.7 );
setRotateKey( spep_2 -3 + 436, 1, 31.8 );
setRotateKey( spep_2 -3 + 438, 1, 31.9 );
setRotateKey( spep_2 -3 + 440, 1, 32 );
setRotateKey( spep_2 -3 + 442, 1, 32.1 );
setRotateKey( spep_2 -3 + 444, 1, 32.3 );
setRotateKey( spep_2 -3 + 446, 1, 32.5 );
setRotateKey( spep_2 -3 + 448, 1, 32.8 );
setRotateKey( spep_2 -3 + 450, 1, 33.2 );
setRotateKey( spep_2 -3 + 452, 1, 33.6 );
setRotateKey( spep_2 -3 + 454, 1, 34.1 );
setRotateKey( spep_2 -3 + 456, 1, 34.7 );
setRotateKey( spep_2 -3 + 458, 1, 35.4 );
setRotateKey( spep_2 -3 + 460, 1, 36.2 );
setRotateKey( spep_2 -3 + 462, 1, 37.2 );
setRotateKey( spep_2 -3 + 464, 1, 38.4 );
setRotateKey( spep_2 -3 + 466, 1, 39.6 );
setRotateKey( spep_2 -3 + 468, 1, 40.8 );
setRotateKey( spep_2 -3 + 470, 1, 41.9 );
setRotateKey( spep_2 -3 + 472, 1, 42.9 );
setRotateKey( spep_2 -3 + 476, 1, 42.9 );
setRotateKey( spep_2 -3 + 478, 1, 43 );
setRotateKey( spep_2 -3 + 480, 1, 43 );
setRotateKey( spep_2 -3 + 482, 1, 43.1 );
setRotateKey( spep_2 -3 + 484, 1, 43.1 );
setRotateKey( spep_2 -3 + 486, 1, 43.2 );
setRotateKey( spep_2 -3 + 488, 1, 43.4 );
setRotateKey( spep_2 -3 + 490, 1, 43.6 );
setRotateKey( spep_2 -3 + 492, 1, 44 );
setRotateKey( spep_2 -3 + 494, 1, 45.6 );
setRotateKey( spep_2 -3 + 496, 1, 46.6 );
setRotateKey( spep_2 -3 + 498, 1, 47 );
setRotateKey( spep_2 -3 + 500, 1, 47.2 );
setRotateKey( spep_2 -3 + 502, 1, 47.3 );
setRotateKey( spep_2 -3 + 504, 1, 50 );--
setRotateKey( spep_2 -3 + 514, 1, 50 );
setRotateKey( spep_2 -3 + 516, 1, 53.5 );
setRotateKey( spep_2 -3 + 518, 1, 56.9 );
setRotateKey( spep_2 -3 + 520, 1, 60.4 );
setRotateKey( spep_2 -3 + 522, 1, 63.8 );
setRotateKey( spep_2 -3 + 524, 1, 67.3 );
setRotateKey( spep_2 -3 + 525, 1, 67.3 );
setRotateKey( spep_2 -3 + 526, 1, 59.2 );
setRotateKey( spep_2 -3 + 558, 1, 59.2 );
setRotateKey( spep_2 -3 + 560, 1, 60.5 );
setRotateKey( spep_2 -3 + 562, 1, 61.7 );
setRotateKey( spep_2 -3 + 564, 1, 63 );
setRotateKey( spep_2 -3 + 566, 1, 64.2 );
setRotateKey( spep_2 -3 + 568, 1, 65.5 );
setRotateKey( spep_2 -3 + 570, 1, 66.7 );
setRotateKey( spep_2 -3 + 572, 1, 68 );
setRotateKey( spep_2 -3 + 573, 1, 68 );
setRotateKey( spep_2 -3 + 574, 1, -6 );
setRotateKey( spep_2 -3 + 600, 1, -6 );
setRotateKey( spep_2 -3 + 601, 1, -6 );
setRotateKey( spep_2 -3 + 602, 1, -29.7 );
setRotateKey( spep_2 -3 + 658, 1, -29.7 );
setRotateKey( spep_2 -3 + 663, 1, -29.7 );
setRotateKey( spep_2 -3 + 664, 1, -29.7 );--
setRotateKey( spep_2 -3 + 686, 1, -29.7 );
setRotateKey( spep_2 -3 + 688, 1, -29.7 );


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 702, 1, 1 );
setDisp( spep_2 -3 + 742, 1, 0 );
changeAnime( spep_2 -3 + 702, 1, 108 );

setMoveKey( spep_2 -3 + 702, 1, 427.3, 270.5 , 0 );--
setMoveKey( spep_2 -3 + 704, 1, 375.3, 205.4 , 0 );
setMoveKey( spep_2 -3 + 706, 1, 383.1, 238.5 , 0 );
setMoveKey( spep_2 -3 + 708, 1, 364.2, 201.9 , 0 );
setMoveKey( spep_2 -3 + 710, 1, 365.4, 203.2 , 0 );
setMoveKey( spep_2 -3 + 712, 1, 366.5, 220.6 , 0 );
setMoveKey( spep_2 -3 + 714, 1, 337.6, 172 , 0 );
setMoveKey( spep_2 -3 + 716, 1, 338.8, 173.4 , 0 );
setMoveKey( spep_2 -3 + 718, 1, 331.8, 194.8 , 0 );
setMoveKey( spep_2 -3 + 720, 1, 315, 154.2 , 0 );
setMoveKey( spep_2 -3 + 722, 1, 310.1, 169.5 , 0 );
setMoveKey( spep_2 -3 + 724, 1, 309.2, 146.9 , 0 );
setMoveKey( spep_2 -3 + 726, 1, 290.4, 158.3 , 0 );
setMoveKey( spep_2 -3 + 728, 1, 283.5, 139.7 , 0 );
setMoveKey( spep_2 -3 + 730, 1, 290.6, 147.1 , 0 );
setMoveKey( spep_2 -3 + 732, 1, 291.7, 148.5 , 0 );
setMoveKey( spep_2 -3 + 734, 1, 285.7, 122.5 , 0 );
setMoveKey( spep_2 -3 + 736, 1, 269.7, 136.5 , 0 );
setMoveKey( spep_2 -3 + 738, 1, 269.7, 136.5 , 0 );
setMoveKey( spep_2 -3 + 740, 1, 263.7, 116.5 , 0 );
setMoveKey( spep_2 -3 + 742, 1, 263.7, 116.5 , 0 );

setScaleKey( spep_2 -3 + 702, 1, 0.333, 0.333 );
setScaleKey( spep_2 -3 + 742, 1, 0.333, 0.333 );

setRotateKey( spep_2 -3 + 702, 1, -17.5 );
setRotateKey( spep_2 -3 + 742, 1, -17.5 );


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 790, 1, 1 );
setDisp( spep_2 -3 + 828, 1, 0 );
changeAnime( spep_2 -3 + 702, 1, 5 );

setMoveKey( spep_2 -3 + 790, 1, 115.2, 11.2 , 0 );
setMoveKey( spep_2 -3 + 792, 1, 115.5, 11.2 , 0 );
setMoveKey( spep_2 -3 + 794, 1, 115.7, 11.3 , 0 );
setMoveKey( spep_2 -3 + 796, 1, 115.9, 11.3 , 0 );
setMoveKey( spep_2 -3 + 798, 1, 116.2, 11.3 , 0 );
setMoveKey( spep_2 -3 + 800, 1, 116.5, 11.4 , 0 );
setMoveKey( spep_2 -3 + 802, 1, 116.7, 11.4 , 0 );
setMoveKey( spep_2 -3 + 804, 1, 117, 11.4 , 0 );
setMoveKey( spep_2 -3 + 806, 1, 117.3, 11.5 , 0 );
setMoveKey( spep_2 -3 + 808, 1, 117.5, 11.5 , 0 );
setMoveKey( spep_2 -3 + 810, 1, 117.7, 11.5 , 0 );
setMoveKey( spep_2 -3 + 812, 1, 118, 11.6 , 0 );
setMoveKey( spep_2 -3 + 814, 1, 118.3, 11.6 , 0 );
setMoveKey( spep_2 -3 + 816, 1, 118.5, 11.7 , 0 );
setMoveKey( spep_2 -3 + 818, 1, 118.8, 11.7 , 0 );
setMoveKey( spep_2 -3 + 820, 1, 119, 11.8 , 0 );
setMoveKey( spep_2 -3 + 822, 1, 119.3, 11.8 , 0 );
setMoveKey( spep_2 -3 + 824, 1, 119.6, 11.9 , 0 );
setMoveKey( spep_2 -3 + 826, 1, 119.8, 11.9 , 0 );
setMoveKey( spep_2 -3 + 828, 1, 119.8, 11.9 , 0 );

setScaleKey( spep_2 -3 + 790, 1, 0.05, 0.05 );
setScaleKey( spep_2 -3 + 798, 1, 0.05, 0.05 );
setScaleKey( spep_2 -3 + 800, 1, 0.04, 0.04 );
setScaleKey( spep_2 -3 + 816, 1, 0.04, 0.04 );
setScaleKey( spep_2 -3 + 818, 1, 0.03, 0.03 );
setScaleKey( spep_2 -3 + 828, 1, 0.03, 0.03 );

setRotateKey( spep_2 -3 + 790, 1, 56.9 );
setRotateKey( spep_2 -3 + 828, 1, 56.9 );

-- ** 音 ** --
--突っ込んでくる
SE016 = playSeVer2( spep_2 + 60, 1121, "",spep_2 + 142, 0, 6, -1);

--ベジータパンチ
SE017 = playSeVer2( spep_2 + 132, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE017, 153 );
SE018 = playSeVer2( spep_2 + 136, 1359, "",spep_2 + 186, 0, 22, -1);
SE019 = playSeVer2( spep_2 + 138, 1000, "", 0, 0, 0, -1);

--ベジータ回転
SE020 = playSeVer2( spep_2 + 176, 1004, "",spep_2 + 200, 0, 14, -1);
SE021 = playSeVer2( spep_2 + 182, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 182, SE021, 202 );
setPitch( spep_2 + 182, SE021, 200 );
setTimeStretch( SE021, 1.13, 30, 4 );

--ベジータ振りかぶり
SE022 = playSeVer2( spep_2 + 196, 1116, "",spep_2 + 220, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 196, SE022, 120 );

--ベジータ足払い
SE023 = playSeVer2( spep_2 + 216, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 216, SE023, 100 );
SE024 = playSeVer2( spep_2 + 216, 1009, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 216, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 218, SE025, 92 );

--敵飛んでいく
SE026 = playSeVer2( spep_2 + 238, 1183, "",spep_2 + 336, 0, 38, -1);

--悟空パンチ
SE027 = playSeVer2( spep_2 + 272, 1189, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 278, 1359, "",spep_2 + 324, 0, 30, -1);
SE029 = playSeVer2( spep_2 + 280, 1187, "",spep_2 + 320, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 280, SE029, 94 );
setPitch( spep_2 + 280, SE029, -200 );
setTimeStretch( SE029, 0.87, 30, 4 );

--岩衝突
SE030 = playSeVer2( spep_2 + 312, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 312, SE030, 93 );
SE031 = playSeVer2( spep_2 + 312, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 312, SE031, 79 );

--悟空向かっていく
SE032 = playSeVer2( spep_2 + 344, 1182, "",spep_2 + 390, 0, 22, -1);

--悟空膝蹴り
SE033 = playSeVer2( spep_2 + 364, 1003, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 374, 1359, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 376, 1153, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 376, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 376, SE036, 84 );

--気弾溜め
SE037 = playSeVer2( spep_2 + 554, 1174, "",spep_2 + 656, 10, 18, -1);
setSeVolumeByWorkId( spep_2 + 554, SE037, 166 );
setStartTimeMs( SE037,  2933 );

--敵吹き飛ぶ
SE038 = playSeVer2( spep_2 + 396, 1027, "", 0, 0, 0, -1);

--ベジータ追いかける
SE039 = playSeVer2( spep_2 + 422, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 422, SE039, 129 );
SE040 = playSeVer2( spep_2 + 422, 1277, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 442, 1117, "",spep_2 + 490, 0, 28, -1);

--蹴り落とし
SE042 = playSeVer2( spep_2 + 482, 1004, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 492, 1359, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 494, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 494, SE044, 77 );
SE045 = playSeVer2( spep_2 + 494, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 494, SE045, 65 );

--気弾溜め
SE046 = playSeVer2( spep_2 + 552, 1210, "",spep_2 + 658, 12, 12, 0.6);
setStartTimeMs( SE046,  800 );
setPitch( spep_2 + 552, SE046, 300 );
setTimeStretch( SE046, 1.2, 30, 4 );
setBandpassFilter( spep_2 + 552, SE046, 24, 1200 );

--敵飛んでいく
SE047 = playSeVer2( spep_2 + 522, 1121, "",spep_2 + 616, 0, 46, -1);

--気弾溜め
SE048 = playSeVer2( spep_2 + 554, 1265, "",spep_2 + 664, 2, 16, -1);
setStartTimeMs( SE048,  433 );
SE049 = playSeVer2( spep_2 + 554, 1290, "",spep_2 + 584, 2, 12, -1);
setStartTimeMs( SE049,  117 );
setPitch( spep_2 + 554, SE049, 200 );
setTimeStretch( SE049, 1.13, 30, 4 );
SE050 = playSeVer2( spep_2 + 556, 1257, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 556, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 556, SE051, 224 );
SE052 = playSeVer2( spep_2 + 570, 1290, "", 0, 4, 0, -1);
setStartTimeMs( SE052,  100 );
setPitch( spep_2 + 570, SE052, 200 );
setTimeStretch( SE052, 1.13, 30, 4 );
SE053 = playSeVer2( spep_2 + 642, 1258, "",spep_2 + 750, 0, 52, -1);
setSeVolumeByWorkId( spep_2 + 642, SE053, 69 );
SE054 = playSeVer2( spep_2 + 652, 1027, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 652, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 652, SE055, 168 );
SE056 = playSeVer2( spep_2 + 652, 1316, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 652, SE056, 126 );

--敵吹っ飛ぶ
SE057 = playSeVer2( spep_2 + 686, 1027, "", 0, 0, 0, -1);

--画面遷移
SE058 = playSeVer2( spep_2 + 724, 1072, "", 0, 0, 0, 0.5);

--オーラ
SE059 = playSeVer2( spep_2 + 732, 1181, "",spep_2 + 826, 0, 20, -1);
SE060 = playSeVer2( spep_2 + 732, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 732, SE060, 50 );
SE061 = playSeVer2( spep_2 + 756, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 756, SE061, 50 );
SE062 = playSeVer2( spep_2 + 780, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 780, SE062, 46 );
SE063 = playSeVer2( spep_2 + 804, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 804, SE063, 38 );

--オーラ消える
SE064 = playSeVer2( spep_2 + 804, 1026, "", 0, 0, 0, -1);

--岩激突
SE065 = playSeVer2( spep_2 + 816, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 816, SE065, 70 );
SE066 = playSeVer2( spep_2 + 816, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 816, SE066, 69 );

--ベジータフレームイン
SE067 = playSeVer2( spep_2 + 846, 44, "",spep_2 + 878, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 846, SE067, 117 );
setBandpassFilter( spep_2 + 846, SE067, 24, 2161 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 864 );
endPhase( spep_2 + 964 );

end