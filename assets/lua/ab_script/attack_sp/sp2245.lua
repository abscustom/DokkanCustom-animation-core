--1022810:孫悟飯(幼年期)_お父さんをいじめるな！
--sp_effect_b1_00160
--sp2245

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
SP_01 = 157784;	--構え	ef_001
SP_02 = 157785;	--叫ぶ	ef_002
SP_03 = 157787;	--敵に向かって突っ込む　斜め	ef_003
SP_04 = 157789;	--敵に向かって突っ込む　一人称視点：手前	ef_004_front
SP_05 = 157790;	--敵に向かって突っ込む　一人称視点:手前	ef_004_back
SP_06 = 157791;	--敵に向かって突っ込む　横	ef_005
SP_07 = 157792;	--ヒットエフェクト	ef_006
SP_08 = 157793;	--敵に頭突き（横）～敵に頭突き（後）：手前	ef_007_front
SP_09 = 157795;	--敵に頭突き（横）～敵に頭突き（後）：奥	ef_007_back

--敵側
SP_02r = 157786;	--叫ぶ	ef_002r
SP_03r = 157788;	--敵に向かって突っ込む　斜め	ef_003r
SP_08r = 157794;	--敵に頭突き（横）～敵に頭突き（後）：手前	ef_007r_front

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
-- 構え(86F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 86, 0x100, -1, 0, 0, 0 );  --構え	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 86, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 86 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 86, first_f, 0 );

-- ** 音 ** --
--気を溜める
SE001 = playSe( spep_0 + 4, 1214,"",0.8 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 279 );
stopSe( spep_0 +98 + 0, SE001, 24 );

--気を溜める
SE002 = playSe( spep_0 + 4, 1295 );
setSeVolumeByWorkId( spep_0 + 4, SE002, 133 );
stopSe( spep_0 +98 + 0, SE002, 24 );

--気を溜める
SE003 = playSe( spep_0 + 6, 1240 );
setSeVolumeByWorkId( spep_0 + 6, SE003, 157 );
stopSe( spep_0 + 76, SE003, 34 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;


------------------------------------------------------
-- 叫ぶ(98F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
shout = entryEffectLife( spep_1 + 0, SP_02, 98, 0x100, -1, 0, 0, 0 );  --叫ぶ	ef_002
setEffMoveKey( spep_1 + 0, shout, 0, 0 , 0 );
setEffMoveKey( spep_1 + 98, shout, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shout, 1.0, 1.0 );
setEffScaleKey( spep_1 + 98, shout, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, shout, 0 );
setEffRotateKey( spep_1 + 98, shout, 0 );
setEffAlphaKey( spep_1 + 0, shout, 255 );
setEffAlphaKey( spep_1 + 98 -1, shout, 255 );
setEffAlphaKey( spep_1 + 98, shout, 0 );

spep_x = spep_1 + 10;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -0, 515.5 , 0 );
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
--叫ぶ
SE004 = playSe( spep_1 + 14, 1189 );

--顔カットイン
SE005 = playSe( spep_1 + 20, 1018 );

--叫ぶ
SE006 = playSe( spep_1 + 20, 20 );
stopSe( spep_1 + 98, SE006, 8 );

--叫ぶ
SE007 = playSe( spep_1 + 20, 1067 );
setSeVolumeByWorkId( spep_1 + 20, SE007, 71 );
stopSe( spep_1 + 98, SE007, 8 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 98 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_1 + 88, 8, 2 +2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 98;

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
spep_c = spep_2

-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_c, SE_05);
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
entryFadeBg( spep_c + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--飛んでいく
SE009 = playSe( spep_c + 90, 1025 );
SE010 = playSe( spep_c + 90, 1117 );
SE011 = playSe( spep_c + 90, 1121 );
stopSe( spep_c +94 +86 +56 +26 + 4, SE011, 4 );

-- ** 次の準備 ** --
spep_3 = spep_c + 94;

------------------------------------------------------
-- 敵に向かって突っ込む　斜め(86F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
charge = entryEffectLife( spep_3 + 0, SP_03, 86, 0x100, -1, 0, 0, 0 );  --敵に向かって突っ込む　斜め	ef_003
setEffMoveKey( spep_3 + 0, charge, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, charge, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, charge, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, charge, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, charge, 0 );
setEffRotateKey( spep_3 + 86, charge, 0 );
setEffAlphaKey( spep_3 + 0, charge, 255 );
setEffAlphaKey( spep_3 + 86 -1, charge, 255 );
setEffAlphaKey( spep_3 + 86, charge, 0 );

-- ** 音 ** --
--加速する
SE012 = playSe( spep_3 + 52, 1202 );
setSeVolumeByWorkId( spep_3 + 52, SE012, 141 );

--加速する
SE013 = playSe( spep_3 + 52, 1116 );
stopSe( spep_3 + 76, SE013, 18 );

--加速する
SE014 = playSe( spep_3 + 52, 1183 );
stopSe( spep_3 +86 +56 +26 + 4, SE014, 4 );

--加速する
SE015 = playSe( spep_3 + 64, 1109 );
setSeVolumeByWorkId( spep_3 + 64, SE015, 123 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 86;


------------------------------------------------------
-- 敵に向かって突っ込む　一人称視点(56F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
chgview_f = entryEffectLife( spep_4 + 0, SP_04, 56, 0x100, -1, 0, 0, 0 );  --敵に向かって突っ込む　一人称視点：手前	ef_004_front
setEffMoveKey( spep_4 + 0, chgview_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, chgview_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, chgview_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, chgview_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, chgview_f, 0 );
setEffRotateKey( spep_4 + 56, chgview_f, 0 );
setEffAlphaKey( spep_4 + 0, chgview_f, 255 );
setEffAlphaKey( spep_4 + 56 -1, chgview_f, 255 );
setEffAlphaKey( spep_4 + 56, chgview_f, 0 );

chgview_b = entryEffectLife( spep_4 + 0, SP_05, 56, 0x80, -1, 0, 0, 0 );  --敵に向かって突っ込む　一人称視点:手前	ef_004_back
setEffMoveKey( spep_4 + 0, chgview_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, chgview_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, chgview_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 56, chgview_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, chgview_b, 0 );
setEffRotateKey( spep_4 + 56, chgview_b, 0 );
setEffAlphaKey( spep_4 + 0, chgview_b, 255 );
setEffAlphaKey( spep_4 + 56 -1, chgview_b, 255 );
setEffAlphaKey( spep_4 + 56, chgview_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 56, 1, 0 );
changeAnime( spep_4 + 0, 1, 117 );

setMoveKey( spep_4 + 0, 1, 9.6, 26 , 0 );
setMoveKey( spep_4 + 1, 1, 9.6, 25.8 , 0 );
setMoveKey( spep_4 + 2, 1, 9.6, 25.5 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 9.6, 24.8 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 9.6, 23.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 14.7, 26.4 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 8.7, 20.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 14.1, 17.7 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 7.6, 20.2 , 0 );

setScaleKey( spep_4 + 0, 1, 0.87, 0.87 );
setScaleKey( spep_4 + 1, 1, 0.87, 0.87 );
setScaleKey( spep_4 + 2, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 6, 1, 0.91, 0.91 );
setScaleKey( spep_4 -3 + 8, 1, 0.94, 0.94 );
setScaleKey( spep_4 -3 + 10, 1, 0.98, 0.98 );
setScaleKey( spep_4 -3 + 12, 1, 1.03, 1.03 );
setScaleKey( spep_4 -3 + 14, 1, 1.08, 1.08 );
setScaleKey( spep_4 -3 + 16, 1, 1.15, 1.15 );

setRotateKey( spep_4 + 0, 1, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 7.6, 20.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 11.9, 11.8 , 0 );
    setMoveKey( SP_dodge + 4, 1, 9.8, 12.6 , 0 );
    setMoveKey( SP_dodge + 6, 1, 12.4, 10.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 9.6, 4.3 , 0 );
    setMoveKey( SP_dodge + 10, 1, 13.9, 7.1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.15, 1.15 );
    setScaleKey( SP_dodge + 2, 1, 1.23, 1.23 );
    setScaleKey( SP_dodge + 4, 1, 1.31, 1.31 );
    setScaleKey( SP_dodge + 6, 1, 1.41, 1.41 );
    setScaleKey( SP_dodge + 8, 1, 1.52, 1.52 );
    setScaleKey( SP_dodge + 10, 1, 1.63, 1.63 );

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

setMoveKey( spep_4 -3 + 18, 1, 11.9, 11.8 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 9.8, 12.6 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 12.4, 10.6 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 9.6, 4.3 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 13.9, 7.1 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 9.6, -1.1 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 16.1, -11.8 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 9.6, -9.9 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 18.6, -5.8 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 8.7, -21 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 14.1, -31.5 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 5.1, -26.9 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -12.9, -43.8 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 15.5, -37.4 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -9.9, -55 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 19.1, -51.7 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -8.6, -79.2 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 24.6, -88.1 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -12.4, -76.2 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 26.4, -111.2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 9.8, -114.1 , 0 );
setMoveKey( spep_4 -3 + 59, 1, 9.8, -114.1 , 0 );

setScaleKey( spep_4 -3 + 18, 1, 1.23, 1.23 );
setScaleKey( spep_4 -3 + 20, 1, 1.31, 1.31 );
setScaleKey( spep_4 -3 + 22, 1, 1.41, 1.41 );
setScaleKey( spep_4 -3 + 24, 1, 1.52, 1.52 );
setScaleKey( spep_4 -3 + 26, 1, 1.63, 1.63 );
setScaleKey( spep_4 -3 + 28, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 30, 1, 1.9, 1.9 );
setScaleKey( spep_4 -3 + 32, 1, 2.05, 2.05 );
setScaleKey( spep_4 -3 + 34, 1, 2.21, 2.21 );
setScaleKey( spep_4 -3 + 36, 1, 2.38, 2.38 );
setScaleKey( spep_4 -3 + 38, 1, 2.57, 2.57 );
setScaleKey( spep_4 -3 + 40, 1, 2.77, 2.77 );
setScaleKey( spep_4 -3 + 42, 1, 2.98, 2.98 );
setScaleKey( spep_4 -3 + 44, 1, 3.21, 3.2 );
setScaleKey( spep_4 -3 + 46, 1, 3.45, 3.45 );
setScaleKey( spep_4 -3 + 48, 1, 3.71, 3.7 );
setScaleKey( spep_4 -3 + 50, 1, 3.98, 3.98 );
setScaleKey( spep_4 -3 + 52, 1, 4.28, 4.28 );
setScaleKey( spep_4 -3 + 54, 1, 4.6, 4.59 );
setScaleKey( spep_4 -3 + 56, 1, 4.94, 4.94 );
setScaleKey( spep_4 -3 + 58, 1, 5.32, 5.32 );
setScaleKey( spep_4 -3 + 59, 1, 5.32, 5.32 );

setRotateKey( spep_4 -3 + 59, 1, 0 );

-- ** 音 ** --
--横向きダッシュ
SE016 = playSe( spep_4 + 48, 1109 );

--横向きダッシュ
SE017 = playSe( spep_4 + 48, 1304 );
stopSe( spep_4 +56 +50 , SE017, 6 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


------------------------------------------------------
-- 敵に向かって突っ込む　横(26F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
chgsaide = entryEffectLife( spep_5 + 0, SP_06, 26, 0x100, -1, 0, 0, 0 );  --敵に向かって突っ込む　横	ef_005
setEffMoveKey( spep_5 + 0, chgsaide, 0, 0 , 0 );
setEffMoveKey( spep_5 + 26, chgsaide, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, chgsaide, 1.0, 1.0 );
setEffScaleKey( spep_5 + 26, chgsaide, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, chgsaide, 0 );
setEffRotateKey( spep_5 + 26, chgsaide, 0 );
setEffAlphaKey( spep_5 + 0, chgsaide, 255 );
setEffAlphaKey( spep_5 + 26 -1, chgsaide, 255 );
setEffAlphaKey( spep_5 + 26, chgsaide, 0 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 26 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 26;


------------------------------------------------------
-- ヒットエフェクト(6F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
hit = entryEffectLife( spep_6 + 0, SP_07, 6, 0x100, -1, 0, 0, 0 );  --ヒットエフェクト	ef_006
setEffMoveKey( spep_6 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_6 + 6, hit, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_6 + 6, hit, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit, 0 );
setEffRotateKey( spep_6 + 6, hit, 0 );
setEffAlphaKey( spep_6 + 0, hit, 255 );
setEffAlphaKey( spep_6 + 6 -1, hit, 255 );
setEffAlphaKey( spep_6 + 6, hit, 0 );

-- ** 音 ** --
--頭突き
SE018 = playSe( spep_6 + 2, 1017 );
setSeVolumeByWorkId( spep_6 + 2, SE018, 78 );

--頭突き
SE019 = playSe( spep_6 + 4, 1153 );
setSeVolumeByWorkId( spep_6 + 4, SE019, 75 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 6 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 6;


------------------------------------------------------
-- 敵に頭突き（横）～敵に頭突き（後）(166F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --敵に頭突き（横）～敵に頭突き（後）：手前	ef_007_front
setEffMoveKey( spep_7 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 166, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 166, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 166, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 166, finish_f, 255 );

finish_b = entryEffect( spep_7 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --敵に頭突き（横）～敵に頭突き（後）：奥	ef_007_back
setEffMoveKey( spep_7 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 166, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 166, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 166, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 166, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
changeAnime( spep_7 + 0, 1, 108 );
changeAnime( spep_7 -3 + 80, 1, 105 );

setMoveKey( spep_7 + 0, 1, 159.5, -124.2 , 0 );
setMoveKey( spep_7 + 1, 1, 179.3, -123.9 , 0 );
setMoveKey( spep_7 + 2, 1, 174.7, -128 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 197.7, -141.9 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 201.5, -144.4 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 189.5, -130.8 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 172.9, -117.5 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 160.7, -108.8 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 143.5, -95.2 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 129.7, -86.4 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 130.3, -84.6 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 132, -83.8 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 133.7, -83.1 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 135.2, -84.4 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 136.8, -85.7 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 136.3, -86.8 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 135.8, -88 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 135.4, -87.1 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 135.1, -86.2 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 135.9, -86.4 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 136.6, -86.7 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 137.4, -86.9 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 138.2, -87.1 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 139, -87.3 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 139.8, -87.5 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 140.6, -87.8 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 141.4, -88 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 142.2, -88.2 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 143, -88.4 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 143.7, -88.7 , 0 );
setMoveKey( spep_7 -3 + 60, 1, 144.4, -88.8 , 0 );
setMoveKey( spep_7 -3 + 62, 1, 145.1, -89 , 0 );
setMoveKey( spep_7 -3 + 64, 1, 145.8, -89.1 , 0 );
setMoveKey( spep_7 -3 + 66, 1, 146.5, -89.3 , 0 );
setMoveKey( spep_7 -3 + 68, 1, 147.2, -89.5 , 0 );
setMoveKey( spep_7 -3 + 70, 1, 147.8, -89.6 , 0 );
setMoveKey( spep_7 -3 + 72, 1, 148.5, -89.8 , 0 );
setMoveKey( spep_7 -3 + 74, 1, 149.2, -89.9 , 0 );
setMoveKey( spep_7 -3 + 76, 1, 149.9, -90.1 , 0 );
setMoveKey( spep_7 -3 + 79, 1, 150.6, -90.3 , 0 );
setMoveKey( spep_7 -3 + 80, 1, -53.2, -59.7 , 0 );
setMoveKey( spep_7 -3 + 82, 1, -55.2, -61.1 , 0 );
setMoveKey( spep_7 -3 + 84, 1, -56.8, -62 , 0 );
setMoveKey( spep_7 -3 + 86, 1, -57.8, -62.5 , 0 );
setMoveKey( spep_7 -3 + 88, 1, -58.4, -62.5 , 0 );
setMoveKey( spep_7 -3 + 90, 1, -58.5, -62.1 , 0 );
setMoveKey( spep_7 -3 + 92, 1, -58.1, -61.2 , 0 );
setMoveKey( spep_7 -3 + 94, 1, -61.4, -64.2 , 0 );
setMoveKey( spep_7 -3 + 96, 1, -64.6, -67.3 , 0 );
setMoveKey( spep_7 -3 + 98, 1, -67.9, -70.2 , 0 );
setMoveKey( spep_7 -3 + 100, 1, -71.1, -73.2 , 0 );
setMoveKey( spep_7 -3 + 102, 1, -74.3, -76.1 , 0 );
setMoveKey( spep_7 -3 + 104, 1, -77.4, -79.1 , 0 );
setMoveKey( spep_7 -3 + 106, 1, -80.6, -82 , 0 );
setMoveKey( spep_7 -3 + 108, 1, -83.7, -84.9 , 0 );
setMoveKey( spep_7 -3 + 110, 1, -86.9, -87.8 , 0 );
setMoveKey( spep_7 -3 + 112, 1, -90, -90.7 , 0 );
setMoveKey( spep_7 -3 + 114, 1, -93.1, -93.5 , 0 );
setMoveKey( spep_7 -3 + 116, 1, -96.1, -96.3 , 0 );
setMoveKey( spep_7 -3 + 118, 1, -99.2, -99.1 , 0 );
setMoveKey( spep_7 -3 + 120, 1, -102.2, -101.9 , 0 );
setMoveKey( spep_7 -3 + 122, 1, -105.2, -104.7 , 0 );
setMoveKey( spep_7 -3 + 124, 1, -108.2, -107.5 , 0 );
setMoveKey( spep_7 -3 + 126, 1, -111.2, -110.2 , 0 );
setMoveKey( spep_7 -3 + 128, 1, -114.2, -113 , 0 );
setMoveKey( spep_7 -3 + 130, 1, -117.1, -115.7 , 0 );
setMoveKey( spep_7 -3 + 132, 1, -120, -118.4 , 0 );
setMoveKey( spep_7 -3 + 134, 1, -122.9, -121 , 0 );
setMoveKey( spep_7 -3 + 136, 1, -125.8, -123.7 , 0 );
setMoveKey( spep_7 -3 + 138, 1, -128.7, -126.4 , 0 );
setMoveKey( spep_7 -3 + 140, 1, -131.6, -129 , 0 );
setMoveKey( spep_7 -3 + 142, 1, -134.4, -131.6 , 0 );
setMoveKey( spep_7 -3 + 144, 1, -137.2, -134.2 , 0 );
setMoveKey( spep_7 -3 + 146, 1, -140, -136.8 , 0 );
setMoveKey( spep_7 -3 + 148, 1, -142.8, -139.4 , 0 );
setMoveKey( spep_7 -3 + 150, 1, -145.6, -141.9 , 0 );
setMoveKey( spep_7 -3 + 152, 1, -148.3, -144.4 , 0 );
setMoveKey( spep_7 -3 + 154, 1, -151.1, -146.9 , 0 );
setMoveKey( spep_7 -3 + 156, 1, -153.8, -149.5 , 0 );
setMoveKey( spep_7 -3 + 158, 1, -156.5, -151.9 , 0 );
setMoveKey( spep_7 -3 + 160, 1, -159.1, -154.4 , 0 );
setMoveKey( spep_7 -3 + 162, 1, -161.8, -156.8 , 0 );
setMoveKey( spep_7 -3 + 164, 1, -164.4, -159.3 , 0 );
setMoveKey( spep_7 -3 + 166, 1, -167, -161.7 , 0 );
setMoveKey( spep_7 -3 + 168, 1, -169.6, -164.1 , 0 );
setMoveKey( spep_7 -3 + 169, 1, -169.6, -164.1 , 0 );

setScaleKey( spep_7 + 0, 1, 5.27, 5.27 );
setScaleKey( spep_7 -3 + 8, 1, 5.27, 5.27 );
setScaleKey( spep_7 -3 + 10, 1, 4.86, 4.86 );
setScaleKey( spep_7 -3 + 12, 1, 4.45, 4.45 );
setScaleKey( spep_7 -3 + 14, 1, 4.04, 4.04 );
setScaleKey( spep_7 -3 + 16, 1, 3.62, 3.62 );
setScaleKey( spep_7 -3 + 18, 1, 3.21, 3.21 );
setScaleKey( spep_7 -3 + 79, 1, 3.21, 3.21 );
setScaleKey( spep_7 -3 + 80, 1, 4.24, 4.24 );
setScaleKey( spep_7 -3 + 82, 1, 3.97, 3.97 );
setScaleKey( spep_7 -3 + 84, 1, 3.72, 3.72 );
setScaleKey( spep_7 -3 + 86, 1, 3.47, 3.47 );
setScaleKey( spep_7 -3 + 88, 1, 3.22, 3.22 );
setScaleKey( spep_7 -3 + 90, 1, 2.98, 2.98 );
setScaleKey( spep_7 -3 + 92, 1, 2.74, 2.74 );
setScaleKey( spep_7 -3 + 94, 1, 2.7, 2.7 );
setScaleKey( spep_7 -3 + 96, 1, 2.65, 2.65 );
setScaleKey( spep_7 -3 + 98, 1, 2.6, 2.6 );
setScaleKey( spep_7 -3 + 100, 1, 2.56, 2.56 );
setScaleKey( spep_7 -3 + 102, 1, 2.51, 2.51 );
setScaleKey( spep_7 -3 + 104, 1, 2.46, 2.46 );
setScaleKey( spep_7 -3 + 106, 1, 2.42, 2.42 );
setScaleKey( spep_7 -3 + 108, 1, 2.37, 2.37 );
setScaleKey( spep_7 -3 + 110, 1, 2.33, 2.33 );
setScaleKey( spep_7 -3 + 112, 1, 2.28, 2.28 );
setScaleKey( spep_7 -3 + 114, 1, 2.23, 2.23 );
setScaleKey( spep_7 -3 + 116, 1, 2.19, 2.19 );
setScaleKey( spep_7 -3 + 118, 1, 2.15, 2.15 );
setScaleKey( spep_7 -3 + 120, 1, 2.1, 2.1 );
setScaleKey( spep_7 -3 + 122, 1, 2.06, 2.06 );
setScaleKey( spep_7 -3 + 124, 1, 2.01, 2.01 );
setScaleKey( spep_7 -3 + 126, 1, 1.97, 1.97 );
setScaleKey( spep_7 -3 + 128, 1, 1.92, 1.92 );
setScaleKey( spep_7 -3 + 130, 1, 1.88, 1.88 );
setScaleKey( spep_7 -3 + 132, 1, 1.84, 1.84 );
setScaleKey( spep_7 -3 + 134, 1, 1.79, 1.79 );
setScaleKey( spep_7 -3 + 136, 1, 1.75, 1.75 );
setScaleKey( spep_7 -3 + 138, 1, 1.71, 1.71 );
setScaleKey( spep_7 -3 + 140, 1, 1.67, 1.67 );
setScaleKey( spep_7 -3 + 142, 1, 1.62, 1.62 );
setScaleKey( spep_7 -3 + 144, 1, 1.58, 1.58 );
setScaleKey( spep_7 -3 + 146, 1, 1.54, 1.54 );
setScaleKey( spep_7 -3 + 148, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 150, 1, 1.46, 1.46 );
setScaleKey( spep_7 -3 + 152, 1, 1.42, 1.42 );
setScaleKey( spep_7 -3 + 154, 1, 1.38, 1.38 );
setScaleKey( spep_7 -3 + 156, 1, 1.34, 1.34 );
setScaleKey( spep_7 -3 + 158, 1, 1.3, 1.3 );
setScaleKey( spep_7 -3 + 160, 1, 1.25, 1.25 );
setScaleKey( spep_7 -3 + 162, 1, 1.21, 1.21 );
setScaleKey( spep_7 -3 + 164, 1, 1.17, 1.17 );
setScaleKey( spep_7 -3 + 166, 1, 1.14, 1.14 );
setScaleKey( spep_7 -3 + 168, 1, 1.1, 1.1 );
setScaleKey( spep_7 -3 + 169, 1, 1.1, 1.1 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 -3 + 80, 1, 0 );
setRotateKey( spep_7 -3 + 82, 1, -0.4 );
setRotateKey( spep_7 -3 + 84, 1, -0.8 );
setRotateKey( spep_7 -3 + 86, 1, -1.2 );
setRotateKey( spep_7 -3 + 88, 1, -1.6 );
setRotateKey( spep_7 -3 + 90, 1, -2 );
setRotateKey( spep_7 -3 + 92, 1, -2.5 );
setRotateKey( spep_7 -3 + 94, 1, -2.9 );
setRotateKey( spep_7 -3 + 96, 1, -3.3 );
setRotateKey( spep_7 -3 + 98, 1, -3.7 );
setRotateKey( spep_7 -3 + 100, 1, -4.1 );
setRotateKey( spep_7 -3 + 102, 1, -4.5 );
setRotateKey( spep_7 -3 + 104, 1, -4.9 );
setRotateKey( spep_7 -3 + 106, 1, -5.3 );
setRotateKey( spep_7 -3 + 108, 1, -5.7 );
setRotateKey( spep_7 -3 + 110, 1, -6.1 );
setRotateKey( spep_7 -3 + 112, 1, -6.5 );
setRotateKey( spep_7 -3 + 114, 1, -7 );
setRotateKey( spep_7 -3 + 116, 1, -7.4 );
setRotateKey( spep_7 -3 + 118, 1, -7.8 );
setRotateKey( spep_7 -3 + 120, 1, -8.2 );
setRotateKey( spep_7 -3 + 122, 1, -8.6 );
setRotateKey( spep_7 -3 + 124, 1, -9 );
setRotateKey( spep_7 -3 + 126, 1, -9.4 );
setRotateKey( spep_7 -3 + 128, 1, -9.8 );
setRotateKey( spep_7 -3 + 130, 1, -10.2 );
setRotateKey( spep_7 -3 + 132, 1, -10.6 );
setRotateKey( spep_7 -3 + 134, 1, -11 );
setRotateKey( spep_7 -3 + 136, 1, -11.5 );
setRotateKey( spep_7 -3 + 138, 1, -11.9 );
setRotateKey( spep_7 -3 + 140, 1, -12.3 );
setRotateKey( spep_7 -3 + 142, 1, -12.7 );
setRotateKey( spep_7 -3 + 144, 1, -13.1 );
setRotateKey( spep_7 -3 + 146, 1, -13.5 );
setRotateKey( spep_7 -3 + 148, 1, -13.9 );
setRotateKey( spep_7 -3 + 150, 1, -14.3 );
setRotateKey( spep_7 -3 + 152, 1, -14.7 );
setRotateKey( spep_7 -3 + 154, 1, -15.1 );
setRotateKey( spep_7 -3 + 156, 1, -15.5 );
setRotateKey( spep_7 -3 + 158, 1, -16 );
setRotateKey( spep_7 -3 + 160, 1, -16.4 );
setRotateKey( spep_7 -3 + 162, 1, -16.8 );
setRotateKey( spep_7 -3 + 164, 1, -17.2 );
setRotateKey( spep_7 -3 + 166, 1, -17.6 );
setRotateKey( spep_7 -3 + 168, 1, -18 );
setRotateKey( spep_7 -3 + 169, 1, -18 );

-- ** 音 ** --
--頭突き
SE020 = playSe( spep_7 + 0, 1187 );
setSeVolumeByWorkId( spep_7 + 0, SE020, 83 );

--頭突き
SE021 = playSe( spep_7 + 0, 1110 );
setSeVolumeByWorkId( spep_7 + 0, SE021, 85 );

--敵飛んでいく
SE022 = playSe( spep_7 + 90, 1183 );
setSeVolumeByWorkId( spep_7 + 90, SE022, 25 );
setSeVolumeByWorkId( spep_7 + 92, SE022, 50 );
setSeVolumeByWorkId( spep_7 + 94, SE022, 75 );
setSeVolumeByWorkId( spep_7 + 96, SE022, 100 );
setStartTimeMs( SE022,  800 );

--敵飛んでいく
SE023 = playSe( spep_7 + 76, 1027 );

--敵飛んでいく
SE024 = playSe( spep_7 + 76, 1052 );

--敵飛んでいく
SE025 = playSe( spep_7 + 90, 1232 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 46 );
endPhase( spep_7 + 156 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 構え(86F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 86, 0x100, -1, 0, 0, 0 );  --構え	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 86, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 86, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 86, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 86 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 86, first_f, 0 );

-- ** 音 ** --
--気を溜める
SE001 = playSe( spep_0 + 4, 1214,"",0.8 );
setSeVolumeByWorkId( spep_0 + 4, SE001, 279 );
stopSe( spep_0 +98 + 0, SE001, 24 );

--気を溜める
SE002 = playSe( spep_0 + 4, 1295 );
setSeVolumeByWorkId( spep_0 + 4, SE002, 133 );
stopSe( spep_0 +98 + 0, SE002, 24 );

--気を溜める
SE003 = playSe( spep_0 + 6, 1240 );
setSeVolumeByWorkId( spep_0 + 6, SE003, 157 );
stopSe( spep_0 + 76, SE003, 34 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 86;


------------------------------------------------------
-- 叫ぶ(98F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
shout = entryEffectLife( spep_1 + 0, SP_02r, 98, 0x100, -1, 0, 0, 0 );  --叫ぶ	ef_002
setEffMoveKey( spep_1 + 0, shout, 0, 0 , 0 );
setEffMoveKey( spep_1 + 98, shout, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shout, -1.0, 1.0 );
setEffScaleKey( spep_1 + 98, shout, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, shout, 0 );
setEffRotateKey( spep_1 + 98, shout, 0 );
setEffAlphaKey( spep_1 + 0, shout, 255 );
setEffAlphaKey( spep_1 + 98 -1, shout, 255 );
setEffAlphaKey( spep_1 + 98, shout, 0 );

spep_x = spep_1 + 10;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -0, 515.5 , 0 );
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
--叫ぶ
SE004 = playSe( spep_1 + 14, 1189 );

--顔カットイン
SE005 = playSe( spep_1 + 20, 1018 );

--叫ぶ
SE006 = playSe( spep_1 + 20, 20 );
stopSe( spep_1 + 98, SE006, 8 );

--叫ぶ
SE007 = playSe( spep_1 + 20, 1067 );
setSeVolumeByWorkId( spep_1 + 20, SE007, 71 );
stopSe( spep_1 + 98, SE007, 8 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 98 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_1 + 88, 8, 2 +2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 98;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_2 = 0;
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

--飛んでいく
SE009 = playSe( spep_2 + 90, 1025 );
SE010 = playSe( spep_2 + 90, 1117 );
SE011 = playSe( spep_2 + 90, 1121 );
stopSe( spep_2 +94 +86 +56 +26 + 4, SE011, 4 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 敵に向かって突っ込む　斜め(86F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
charge = entryEffectLife( spep_3 + 0, SP_03r, 86, 0x100, -1, 0, 0, 0 );  --敵に向かって突っ込む　斜め	ef_003
setEffMoveKey( spep_3 + 0, charge, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, charge, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, charge, -1.0, 1.0 );
setEffScaleKey( spep_3 + 86, charge, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, charge, 0 );
setEffRotateKey( spep_3 + 86, charge, 0 );
setEffAlphaKey( spep_3 + 0, charge, 255 );
setEffAlphaKey( spep_3 + 86 -1, charge, 255 );
setEffAlphaKey( spep_3 + 86, charge, 0 );

-- ** 音 ** --
--加速する
SE012 = playSe( spep_3 + 52, 1202 );
setSeVolumeByWorkId( spep_3 + 52, SE012, 141 );

--加速する
SE013 = playSe( spep_3 + 52, 1116 );
stopSe( spep_3 + 76, SE013, 18 );

--加速する
SE014 = playSe( spep_3 + 52, 1183 );
stopSe( spep_3 +86 +56 +26 + 4, SE014, 4 );

--加速する
SE015 = playSe( spep_3 + 64, 1109 );
setSeVolumeByWorkId( spep_3 + 64, SE015, 123 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 86;


------------------------------------------------------
-- 敵に向かって突っ込む　一人称視点(56F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
chgview_f = entryEffectLife( spep_4 + 0, SP_04, 56, 0x100, -1, 0, 0, 0 );  --敵に向かって突っ込む　一人称視点：手前	ef_004_front
setEffMoveKey( spep_4 + 0, chgview_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, chgview_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, chgview_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, chgview_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, chgview_f, 0 );
setEffRotateKey( spep_4 + 56, chgview_f, 0 );
setEffAlphaKey( spep_4 + 0, chgview_f, 255 );
setEffAlphaKey( spep_4 + 56 -1, chgview_f, 255 );
setEffAlphaKey( spep_4 + 56, chgview_f, 0 );

chgview_b = entryEffectLife( spep_4 + 0, SP_05, 56, 0x80, -1, 0, 0, 0 );  --敵に向かって突っ込む　一人称視点:手前	ef_004_back
setEffMoveKey( spep_4 + 0, chgview_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, chgview_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, chgview_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 56, chgview_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, chgview_b, 0 );
setEffRotateKey( spep_4 + 56, chgview_b, 0 );
setEffAlphaKey( spep_4 + 0, chgview_b, 255 );
setEffAlphaKey( spep_4 + 56 -1, chgview_b, 255 );
setEffAlphaKey( spep_4 + 56, chgview_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 56, 1, 0 );
changeAnime( spep_4 + 0, 1, 117 );

setMoveKey( spep_4 + 0, 1, 9.6, 26 , 0 );
setMoveKey( spep_4 + 1, 1, 9.6, 25.8 , 0 );
setMoveKey( spep_4 + 2, 1, 9.6, 25.5 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 9.6, 24.8 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 9.6, 23.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 14.7, 26.4 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 8.7, 20.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 14.1, 17.7 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 7.6, 20.2 , 0 );

setScaleKey( spep_4 + 0, 1, 0.87, 0.87 );
setScaleKey( spep_4 + 1, 1, 0.87, 0.87 );
setScaleKey( spep_4 + 2, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 6, 1, 0.91, 0.91 );
setScaleKey( spep_4 -3 + 8, 1, 0.94, 0.94 );
setScaleKey( spep_4 -3 + 10, 1, 0.98, 0.98 );
setScaleKey( spep_4 -3 + 12, 1, 1.03, 1.03 );
setScaleKey( spep_4 -3 + 14, 1, 1.08, 1.08 );
setScaleKey( spep_4 -3 + 16, 1, 1.15, 1.15 );

setRotateKey( spep_4 + 0, 1, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 7.6, 20.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 11.9, 11.8 , 0 );
    setMoveKey( SP_dodge + 4, 1, 9.8, 12.6 , 0 );
    setMoveKey( SP_dodge + 6, 1, 12.4, 10.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 9.6, 4.3 , 0 );
    setMoveKey( SP_dodge + 10, 1, 13.9, 7.1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.15, 1.15 );
    setScaleKey( SP_dodge + 2, 1, 1.23, 1.23 );
    setScaleKey( SP_dodge + 4, 1, 1.31, 1.31 );
    setScaleKey( SP_dodge + 6, 1, 1.41, 1.41 );
    setScaleKey( SP_dodge + 8, 1, 1.52, 1.52 );
    setScaleKey( SP_dodge + 10, 1, 1.63, 1.63 );

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

setMoveKey( spep_4 -3 + 18, 1, 11.9, 11.8 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 9.8, 12.6 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 12.4, 10.6 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 9.6, 4.3 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 13.9, 7.1 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 9.6, -1.1 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 16.1, -11.8 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 9.6, -9.9 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 18.6, -5.8 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 8.7, -21 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 14.1, -31.5 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 5.1, -26.9 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -12.9, -43.8 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 15.5, -37.4 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -9.9, -55 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 19.1, -51.7 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -8.6, -79.2 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 24.6, -88.1 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -12.4, -76.2 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 26.4, -111.2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 9.8, -114.1 , 0 );
setMoveKey( spep_4 -3 + 59, 1, 9.8, -114.1 , 0 );

setScaleKey( spep_4 -3 + 18, 1, 1.23, 1.23 );
setScaleKey( spep_4 -3 + 20, 1, 1.31, 1.31 );
setScaleKey( spep_4 -3 + 22, 1, 1.41, 1.41 );
setScaleKey( spep_4 -3 + 24, 1, 1.52, 1.52 );
setScaleKey( spep_4 -3 + 26, 1, 1.63, 1.63 );
setScaleKey( spep_4 -3 + 28, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 30, 1, 1.9, 1.9 );
setScaleKey( spep_4 -3 + 32, 1, 2.05, 2.05 );
setScaleKey( spep_4 -3 + 34, 1, 2.21, 2.21 );
setScaleKey( spep_4 -3 + 36, 1, 2.38, 2.38 );
setScaleKey( spep_4 -3 + 38, 1, 2.57, 2.57 );
setScaleKey( spep_4 -3 + 40, 1, 2.77, 2.77 );
setScaleKey( spep_4 -3 + 42, 1, 2.98, 2.98 );
setScaleKey( spep_4 -3 + 44, 1, 3.21, 3.2 );
setScaleKey( spep_4 -3 + 46, 1, 3.45, 3.45 );
setScaleKey( spep_4 -3 + 48, 1, 3.71, 3.7 );
setScaleKey( spep_4 -3 + 50, 1, 3.98, 3.98 );
setScaleKey( spep_4 -3 + 52, 1, 4.28, 4.28 );
setScaleKey( spep_4 -3 + 54, 1, 4.6, 4.59 );
setScaleKey( spep_4 -3 + 56, 1, 4.94, 4.94 );
setScaleKey( spep_4 -3 + 58, 1, 5.32, 5.32 );
setScaleKey( spep_4 -3 + 59, 1, 5.32, 5.32 );

setRotateKey( spep_4 -3 + 59, 1, 0 );

-- ** 音 ** --
--横向きダッシュ
SE016 = playSe( spep_4 + 48, 1109 );

--横向きダッシュ
SE017 = playSe( spep_4 + 48, 1304 );
stopSe( spep_4 +56 +50 , SE017, 6 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


------------------------------------------------------
-- 敵に向かって突っ込む　横(26F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
chgsaide = entryEffectLife( spep_5 + 0, SP_06, 26, 0x100, -1, 0, 0, 0 );  --敵に向かって突っ込む　横	ef_005
setEffMoveKey( spep_5 + 0, chgsaide, 0, 0 , 0 );
setEffMoveKey( spep_5 + 26, chgsaide, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, chgsaide, 1.0, 1.0 );
setEffScaleKey( spep_5 + 26, chgsaide, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, chgsaide, 0 );
setEffRotateKey( spep_5 + 26, chgsaide, 0 );
setEffAlphaKey( spep_5 + 0, chgsaide, 255 );
setEffAlphaKey( spep_5 + 26 -1, chgsaide, 255 );
setEffAlphaKey( spep_5 + 26, chgsaide, 0 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 26 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 26;


------------------------------------------------------
-- ヒットエフェクト(6F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
hit = entryEffectLife( spep_6 + 0, SP_07, 6, 0x100, -1, 0, 0, 0 );  --ヒットエフェクト	ef_006
setEffMoveKey( spep_6 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_6 + 6, hit, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_6 + 6, hit, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit, 0 );
setEffRotateKey( spep_6 + 6, hit, 0 );
setEffAlphaKey( spep_6 + 0, hit, 255 );
setEffAlphaKey( spep_6 + 6 -1, hit, 255 );
setEffAlphaKey( spep_6 + 6, hit, 0 );

-- ** 音 ** --
--頭突き
SE018 = playSe( spep_6 + 2, 1017 );
setSeVolumeByWorkId( spep_6 + 2, SE018, 78 );

--頭突き
SE019 = playSe( spep_6 + 4, 1153 );
setSeVolumeByWorkId( spep_6 + 4, SE019, 75 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 6 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 6;


------------------------------------------------------
-- 敵に頭突き（横）～敵に頭突き（後）(166F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_08r, 0x100, -1, 0, 0, 0 );  --敵に頭突き（横）～敵に頭突き（後）：手前	ef_007_front
setEffMoveKey( spep_7 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 166, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_7 + 166, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 166, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 166, finish_f, 255 );

finish_b = entryEffect( spep_7 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --敵に頭突き（横）～敵に頭突き（後）：奥	ef_007_back
setEffMoveKey( spep_7 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 166, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 166, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 166, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 166, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
changeAnime( spep_7 + 0, 1, 108 );
changeAnime( spep_7 -3 + 80, 1, 105 );

setMoveKey( spep_7 + 0, 1, 159.5, -124.2 , 0 );
setMoveKey( spep_7 + 1, 1, 179.3, -123.9 , 0 );
setMoveKey( spep_7 + 2, 1, 174.7, -128 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 197.7, -141.9 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 201.5, -144.4 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 189.5, -130.8 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 172.9, -117.5 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 160.7, -108.8 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 143.5, -95.2 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 129.7, -86.4 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 130.3, -84.6 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 132, -83.8 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 133.7, -83.1 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 135.2, -84.4 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 136.8, -85.7 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 136.3, -86.8 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 135.8, -88 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 135.4, -87.1 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 135.1, -86.2 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 135.9, -86.4 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 136.6, -86.7 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 137.4, -86.9 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 138.2, -87.1 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 139, -87.3 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 139.8, -87.5 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 140.6, -87.8 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 141.4, -88 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 142.2, -88.2 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 143, -88.4 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 143.7, -88.7 , 0 );
setMoveKey( spep_7 -3 + 60, 1, 144.4, -88.8 , 0 );
setMoveKey( spep_7 -3 + 62, 1, 145.1, -89 , 0 );
setMoveKey( spep_7 -3 + 64, 1, 145.8, -89.1 , 0 );
setMoveKey( spep_7 -3 + 66, 1, 146.5, -89.3 , 0 );
setMoveKey( spep_7 -3 + 68, 1, 147.2, -89.5 , 0 );
setMoveKey( spep_7 -3 + 70, 1, 147.8, -89.6 , 0 );
setMoveKey( spep_7 -3 + 72, 1, 148.5, -89.8 , 0 );
setMoveKey( spep_7 -3 + 74, 1, 149.2, -89.9 , 0 );
setMoveKey( spep_7 -3 + 76, 1, 149.9, -90.1 , 0 );
setMoveKey( spep_7 -3 + 79, 1, 150.6, -90.3 , 0 );
setMoveKey( spep_7 -3 + 80, 1, -53.2, -59.7 , 0 );
setMoveKey( spep_7 -3 + 82, 1, -55.2, -61.1 , 0 );
setMoveKey( spep_7 -3 + 84, 1, -56.8, -62 , 0 );
setMoveKey( spep_7 -3 + 86, 1, -57.8, -62.5 , 0 );
setMoveKey( spep_7 -3 + 88, 1, -58.4, -62.5 , 0 );
setMoveKey( spep_7 -3 + 90, 1, -58.5, -62.1 , 0 );
setMoveKey( spep_7 -3 + 92, 1, -58.1, -61.2 , 0 );
setMoveKey( spep_7 -3 + 94, 1, -61.4, -64.2 , 0 );
setMoveKey( spep_7 -3 + 96, 1, -64.6, -67.3 , 0 );
setMoveKey( spep_7 -3 + 98, 1, -67.9, -70.2 , 0 );
setMoveKey( spep_7 -3 + 100, 1, -71.1, -73.2 , 0 );
setMoveKey( spep_7 -3 + 102, 1, -74.3, -76.1 , 0 );
setMoveKey( spep_7 -3 + 104, 1, -77.4, -79.1 , 0 );
setMoveKey( spep_7 -3 + 106, 1, -80.6, -82 , 0 );
setMoveKey( spep_7 -3 + 108, 1, -83.7, -84.9 , 0 );
setMoveKey( spep_7 -3 + 110, 1, -86.9, -87.8 , 0 );
setMoveKey( spep_7 -3 + 112, 1, -90, -90.7 , 0 );
setMoveKey( spep_7 -3 + 114, 1, -93.1, -93.5 , 0 );
setMoveKey( spep_7 -3 + 116, 1, -96.1, -96.3 , 0 );
setMoveKey( spep_7 -3 + 118, 1, -99.2, -99.1 , 0 );
setMoveKey( spep_7 -3 + 120, 1, -102.2, -101.9 , 0 );
setMoveKey( spep_7 -3 + 122, 1, -105.2, -104.7 , 0 );
setMoveKey( spep_7 -3 + 124, 1, -108.2, -107.5 , 0 );
setMoveKey( spep_7 -3 + 126, 1, -111.2, -110.2 , 0 );
setMoveKey( spep_7 -3 + 128, 1, -114.2, -113 , 0 );
setMoveKey( spep_7 -3 + 130, 1, -117.1, -115.7 , 0 );
setMoveKey( spep_7 -3 + 132, 1, -120, -118.4 , 0 );
setMoveKey( spep_7 -3 + 134, 1, -122.9, -121 , 0 );
setMoveKey( spep_7 -3 + 136, 1, -125.8, -123.7 , 0 );
setMoveKey( spep_7 -3 + 138, 1, -128.7, -126.4 , 0 );
setMoveKey( spep_7 -3 + 140, 1, -131.6, -129 , 0 );
setMoveKey( spep_7 -3 + 142, 1, -134.4, -131.6 , 0 );
setMoveKey( spep_7 -3 + 144, 1, -137.2, -134.2 , 0 );
setMoveKey( spep_7 -3 + 146, 1, -140, -136.8 , 0 );
setMoveKey( spep_7 -3 + 148, 1, -142.8, -139.4 , 0 );
setMoveKey( spep_7 -3 + 150, 1, -145.6, -141.9 , 0 );
setMoveKey( spep_7 -3 + 152, 1, -148.3, -144.4 , 0 );
setMoveKey( spep_7 -3 + 154, 1, -151.1, -146.9 , 0 );
setMoveKey( spep_7 -3 + 156, 1, -153.8, -149.5 , 0 );
setMoveKey( spep_7 -3 + 158, 1, -156.5, -151.9 , 0 );
setMoveKey( spep_7 -3 + 160, 1, -159.1, -154.4 , 0 );
setMoveKey( spep_7 -3 + 162, 1, -161.8, -156.8 , 0 );
setMoveKey( spep_7 -3 + 164, 1, -164.4, -159.3 , 0 );
setMoveKey( spep_7 -3 + 166, 1, -167, -161.7 , 0 );
setMoveKey( spep_7 -3 + 168, 1, -169.6, -164.1 , 0 );
setMoveKey( spep_7 -3 + 169, 1, -169.6, -164.1 , 0 );

setScaleKey( spep_7 + 0, 1, 5.27, 5.27 );
setScaleKey( spep_7 -3 + 8, 1, 5.27, 5.27 );
setScaleKey( spep_7 -3 + 10, 1, 4.86, 4.86 );
setScaleKey( spep_7 -3 + 12, 1, 4.45, 4.45 );
setScaleKey( spep_7 -3 + 14, 1, 4.04, 4.04 );
setScaleKey( spep_7 -3 + 16, 1, 3.62, 3.62 );
setScaleKey( spep_7 -3 + 18, 1, 3.21, 3.21 );
setScaleKey( spep_7 -3 + 79, 1, 3.21, 3.21 );
setScaleKey( spep_7 -3 + 80, 1, 4.24, 4.24 );
setScaleKey( spep_7 -3 + 82, 1, 3.97, 3.97 );
setScaleKey( spep_7 -3 + 84, 1, 3.72, 3.72 );
setScaleKey( spep_7 -3 + 86, 1, 3.47, 3.47 );
setScaleKey( spep_7 -3 + 88, 1, 3.22, 3.22 );
setScaleKey( spep_7 -3 + 90, 1, 2.98, 2.98 );
setScaleKey( spep_7 -3 + 92, 1, 2.74, 2.74 );
setScaleKey( spep_7 -3 + 94, 1, 2.7, 2.7 );
setScaleKey( spep_7 -3 + 96, 1, 2.65, 2.65 );
setScaleKey( spep_7 -3 + 98, 1, 2.6, 2.6 );
setScaleKey( spep_7 -3 + 100, 1, 2.56, 2.56 );
setScaleKey( spep_7 -3 + 102, 1, 2.51, 2.51 );
setScaleKey( spep_7 -3 + 104, 1, 2.46, 2.46 );
setScaleKey( spep_7 -3 + 106, 1, 2.42, 2.42 );
setScaleKey( spep_7 -3 + 108, 1, 2.37, 2.37 );
setScaleKey( spep_7 -3 + 110, 1, 2.33, 2.33 );
setScaleKey( spep_7 -3 + 112, 1, 2.28, 2.28 );
setScaleKey( spep_7 -3 + 114, 1, 2.23, 2.23 );
setScaleKey( spep_7 -3 + 116, 1, 2.19, 2.19 );
setScaleKey( spep_7 -3 + 118, 1, 2.15, 2.15 );
setScaleKey( spep_7 -3 + 120, 1, 2.1, 2.1 );
setScaleKey( spep_7 -3 + 122, 1, 2.06, 2.06 );
setScaleKey( spep_7 -3 + 124, 1, 2.01, 2.01 );
setScaleKey( spep_7 -3 + 126, 1, 1.97, 1.97 );
setScaleKey( spep_7 -3 + 128, 1, 1.92, 1.92 );
setScaleKey( spep_7 -3 + 130, 1, 1.88, 1.88 );
setScaleKey( spep_7 -3 + 132, 1, 1.84, 1.84 );
setScaleKey( spep_7 -3 + 134, 1, 1.79, 1.79 );
setScaleKey( spep_7 -3 + 136, 1, 1.75, 1.75 );
setScaleKey( spep_7 -3 + 138, 1, 1.71, 1.71 );
setScaleKey( spep_7 -3 + 140, 1, 1.67, 1.67 );
setScaleKey( spep_7 -3 + 142, 1, 1.62, 1.62 );
setScaleKey( spep_7 -3 + 144, 1, 1.58, 1.58 );
setScaleKey( spep_7 -3 + 146, 1, 1.54, 1.54 );
setScaleKey( spep_7 -3 + 148, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 150, 1, 1.46, 1.46 );
setScaleKey( spep_7 -3 + 152, 1, 1.42, 1.42 );
setScaleKey( spep_7 -3 + 154, 1, 1.38, 1.38 );
setScaleKey( spep_7 -3 + 156, 1, 1.34, 1.34 );
setScaleKey( spep_7 -3 + 158, 1, 1.3, 1.3 );
setScaleKey( spep_7 -3 + 160, 1, 1.25, 1.25 );
setScaleKey( spep_7 -3 + 162, 1, 1.21, 1.21 );
setScaleKey( spep_7 -3 + 164, 1, 1.17, 1.17 );
setScaleKey( spep_7 -3 + 166, 1, 1.14, 1.14 );
setScaleKey( spep_7 -3 + 168, 1, 1.1, 1.1 );
setScaleKey( spep_7 -3 + 169, 1, 1.1, 1.1 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 -3 + 80, 1, 0 );
setRotateKey( spep_7 -3 + 82, 1, -0.4 );
setRotateKey( spep_7 -3 + 84, 1, -0.8 );
setRotateKey( spep_7 -3 + 86, 1, -1.2 );
setRotateKey( spep_7 -3 + 88, 1, -1.6 );
setRotateKey( spep_7 -3 + 90, 1, -2 );
setRotateKey( spep_7 -3 + 92, 1, -2.5 );
setRotateKey( spep_7 -3 + 94, 1, -2.9 );
setRotateKey( spep_7 -3 + 96, 1, -3.3 );
setRotateKey( spep_7 -3 + 98, 1, -3.7 );
setRotateKey( spep_7 -3 + 100, 1, -4.1 );
setRotateKey( spep_7 -3 + 102, 1, -4.5 );
setRotateKey( spep_7 -3 + 104, 1, -4.9 );
setRotateKey( spep_7 -3 + 106, 1, -5.3 );
setRotateKey( spep_7 -3 + 108, 1, -5.7 );
setRotateKey( spep_7 -3 + 110, 1, -6.1 );
setRotateKey( spep_7 -3 + 112, 1, -6.5 );
setRotateKey( spep_7 -3 + 114, 1, -7 );
setRotateKey( spep_7 -3 + 116, 1, -7.4 );
setRotateKey( spep_7 -3 + 118, 1, -7.8 );
setRotateKey( spep_7 -3 + 120, 1, -8.2 );
setRotateKey( spep_7 -3 + 122, 1, -8.6 );
setRotateKey( spep_7 -3 + 124, 1, -9 );
setRotateKey( spep_7 -3 + 126, 1, -9.4 );
setRotateKey( spep_7 -3 + 128, 1, -9.8 );
setRotateKey( spep_7 -3 + 130, 1, -10.2 );
setRotateKey( spep_7 -3 + 132, 1, -10.6 );
setRotateKey( spep_7 -3 + 134, 1, -11 );
setRotateKey( spep_7 -3 + 136, 1, -11.5 );
setRotateKey( spep_7 -3 + 138, 1, -11.9 );
setRotateKey( spep_7 -3 + 140, 1, -12.3 );
setRotateKey( spep_7 -3 + 142, 1, -12.7 );
setRotateKey( spep_7 -3 + 144, 1, -13.1 );
setRotateKey( spep_7 -3 + 146, 1, -13.5 );
setRotateKey( spep_7 -3 + 148, 1, -13.9 );
setRotateKey( spep_7 -3 + 150, 1, -14.3 );
setRotateKey( spep_7 -3 + 152, 1, -14.7 );
setRotateKey( spep_7 -3 + 154, 1, -15.1 );
setRotateKey( spep_7 -3 + 156, 1, -15.5 );
setRotateKey( spep_7 -3 + 158, 1, -16 );
setRotateKey( spep_7 -3 + 160, 1, -16.4 );
setRotateKey( spep_7 -3 + 162, 1, -16.8 );
setRotateKey( spep_7 -3 + 164, 1, -17.2 );
setRotateKey( spep_7 -3 + 166, 1, -17.6 );
setRotateKey( spep_7 -3 + 168, 1, -18 );
setRotateKey( spep_7 -3 + 169, 1, -18 );

-- ** 音 ** --
--頭突き
SE020 = playSe( spep_7 + 0, 1187 );
setSeVolumeByWorkId( spep_7 + 0, SE020, 83 );

--頭突き
SE021 = playSe( spep_7 + 0, 1110 );
setSeVolumeByWorkId( spep_7 + 0, SE021, 85 );

--敵飛んでいく
SE022 = playSe( spep_7 + 90, 1183 );
setSeVolumeByWorkId( spep_7 + 90, SE022, 25 );
setSeVolumeByWorkId( spep_7 + 92, SE022, 50 );
setSeVolumeByWorkId( spep_7 + 94, SE022, 75 );
setSeVolumeByWorkId( spep_7 + 96, SE022, 100 );
setStartTimeMs( SE022,  800 );

--敵飛んでいく
SE023 = playSe( spep_7 + 76, 1027 );

--敵飛んでいく
SE024 = playSe( spep_7 + 76, 1052 );

--敵飛んでいく
SE025 = playSe( spep_7 + 90, 1232 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 46 );
endPhase( spep_7 + 156 );

end