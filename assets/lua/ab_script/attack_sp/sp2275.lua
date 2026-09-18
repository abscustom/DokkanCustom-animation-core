--1023090:ヒット&超サイヤ人ゴッド孫悟空_悟空とヒットの共同戦線
--sp_effect_b1_00171
--sp2275

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
SP_01 = 158390; --立つ二人〜セリフカットイン ef_001
SP_02 = 158392; --悟空のダッシュ〜右の拳を突き入れる 手前 ef_002
SP_03 = 158394; --悟空のダッシュ〜右の拳を突き入れる 奥 ef_003
SP_04 = 158396; --時とばし〜立ち去るヒット 手前 ef_004
SP_05 = 158398; --時とばし〜立ち去るヒット 奥 ef_005

--敵側
SP_01r = 158391; --立つ二人〜セリフカットイン ef_001r
SP_02r = 158393; --悟空のダッシュ〜右の拳を突き入れる 手前 ef_002r
SP_03r = 158395; --悟空のダッシュ〜右の拳を突き入れる 奥 ef_003r
SP_04r = 158397; --時とばし〜立ち去るヒット 手前 ef_004r
SP_05r = 158399; --時とばし〜立ち去るヒット 奥 ef_005r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

adjustAttackerLabel( 0, 205);

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
-- 立つ二人〜セリフカットイン(146F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 146, 0x100, -1, 0, 0, 0 );  --立つ二人〜セリフカットイン ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 146, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 146 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 146, first_f, 0 );

spep_x = spep_0 + 52;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 55, 515.5 , 0 );
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
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 +146 + 14, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 51 );
setPitch( spep_0 + 0, SE002, -600 );
setTimeStretch( SE002, 0.6, 30, 4 );

SE003 = playSeVer2( spep_0 + 2, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 77 );

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 146;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 悟空のダッシュ〜右の拳を突き入れる(346F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_2 + 0, SP_02, 346, 0x100, -1, 0, 0, 0 );  --悟空のダッシュ〜右の拳を突き入れる 手前 ef_002
setEffMoveKey( spep_2 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 346, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 346, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_f, 0 );
setEffRotateKey( spep_2 + 346, attack_f, 0 );
setEffAlphaKey( spep_2 + 0, attack_f, 255 );
setEffAlphaKey( spep_2 + 346 -1, attack_f, 255 );
setEffAlphaKey( spep_2 + 346, attack_f, 0 );

attack_b = entryEffectLife( spep_2 + 0, SP_03, 346, 0x80, -1, 0, 0, 0 );  --悟空のダッシュ〜右の拳を突き入れる 奥 ef_003
setEffMoveKey( spep_2 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 346, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 346, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_b, 0 );
setEffRotateKey( spep_2 + 346, attack_b, 0 );
setEffAlphaKey( spep_2 + 0, attack_b, 255 );
setEffAlphaKey( spep_2 + 346 -1, attack_b, 255 );
setEffAlphaKey( spep_2 + 346, attack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 60, 1, 1 );
setDisp( spep_2 -3 + 216, 1, 0 );
changeAnime( spep_2 -3 + 60, 1, 117 );
changeAnime( spep_2 -3 + 96, 1, 106 );

setMoveKey( spep_2 -3 + 60, 1, 191.9, -196.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 193.7, -191.8 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 182.2, -194.3 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 169.5, -182.5 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 165.6, -181.9 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 165, -173.7 , 0 );

setScaleKey( spep_2 -3 + 60, 1, 1.155, 1.155 );
setScaleKey( spep_2 -3 + 62, 1, 1.166, 1.166 );
setScaleKey( spep_2 -3 + 64, 1, 1.221, 1.221 );
setScaleKey( spep_2 -3 + 66, 1, 1.309, 1.309 );
setScaleKey( spep_2 -3 + 68, 1, 1.430, 1.430 );
setScaleKey( spep_2 -3 + 70, 1, 1.474, 1.474 );

setRotateKey( spep_2 -3 + 60, 1, 42 );
setRotateKey( spep_2 -3 + 66, 1, 42 );
setRotateKey( spep_2 -3 + 68, 1, 42.1 );

-- ** 音 ** --
--悟空高速移動
SE006 = playSeVer2( spep_2 + 16, 4, "",spep_2 + 32, 0, 6, -1);
SE007 = playSeVer2( spep_2 + 22, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE007, 158 );
SE008 = playSeVer2( spep_2 + 24, 1109, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 24, 44, "", 0, 0, 0, -1);

--悟空突っ込む
SE010 = playSeVer2( spep_2 + 50, 1314, "",spep_2 + 220, 0, 40, -1);
setSeVolumeByWorkId( spep_2 + 50, SE010, 66 );
SE011 = playSeVer2( spep_2 + 50, 9, "",spep_2 + 90, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 50, SE011, 92 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 68 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 165, -173.7 , 0 );
    setMoveKey( SP_dodge + 2, 1, 157.9, -179.2 , 0 );
    setMoveKey( SP_dodge + 4, 1, 153.4, -172.8 , 0 );
    setMoveKey( SP_dodge + 6, 1, 161.5, -180 , 0 );
    setMoveKey( SP_dodge + 8, 1, 161.2, -172 , 0 );
    setMoveKey( SP_dodge + 10, 1, 154.5, -177.7 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.474, 1.474 );
    setScaleKey( SP_dodge + 2, 1, 1.496, 1.496 );
    setScaleKey( SP_dodge + 4, 1, 1.529, 1.529 );
    setScaleKey( SP_dodge + 6, 1, 1.551, 1.551 );
    setScaleKey( SP_dodge + 8, 1, 1.573, 1.573 );
    setScaleKey( SP_dodge + 10, 1, 1.595, 1.595 );

    setRotateKey( SP_dodge + 0, 1, 42.1 );
    setRotateKey( SP_dodge + 10, 1, 42.1 );
    
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

setMoveKey( spep_2 -3 + 72, 1, 157.9, -179.2 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 153.4, -172.8 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 161.5, -180 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 161.2, -172 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 154.5, -177.7 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 150.4, -171.5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 158.9, -178.8 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 159, -171 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 152.7, -176.8 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 149, -170.8 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 157.8, -178.3 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 152.3, -176.6 , 0 );
setMoveKey( spep_2 -3 + 95, 1, 152.3, -176.6 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 118, 16.2 , 0 );--
setMoveKey( spep_2 -3 + 98, 1, 118, 16.2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 111.5, 24.3 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 122.8, 9.7 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 112.1, 9.7 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 123.4, 21 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 111.5, 24.3 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 122.8, 9.7 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 112.1, 9.7 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 123.4, 21 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 124.1, 76.4 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 135.4, 61.8 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 124.7, 61.8 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 136, 73.1 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 124.1, 76.4 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 135.4, 61.8 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 115.1, 71.3 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 126.4, 82.6 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 114.5, 85.9 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 125.8, 71.3 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 115.1, 71.3 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 126.4, 82.6 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 114.5, 85.9 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 125.8, 71.3 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 115.1, 71.3 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 126.4, 82.6 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 96.7, 125.1 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 108.1, 110.5 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 97.4, 110.5 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 108.7, 121.8 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 121, 100.8 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 132.4, 86.2 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 121.7, 86.2 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 133, 97.5 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 121, 100.8 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 132.4, 86.2 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 121.7, 86.2 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 133, 97.5 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 121, 100.8 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 132.4, 86.2 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 124.7, 61.8 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 136, 73.1 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 124.1, 76.4 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 135.4, 61.8 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 124.7, 61.8 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 126.4, 82.6 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 114.5, 85.9 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 125.8, 71.3 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 115.1, 71.3 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 126.4, 82.6 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 114.5, 85.9 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 125.8, 71.3 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 115.1, 71.3 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 126.4, 82.6 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 114.5, 85.9 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 108.1, 110.5 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 97.4, 110.5 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 108.7, 121.8 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 96.7, 125.1 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 103.2, 117 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 103.2, 117 , 0 );

setScaleKey( spep_2 -3 + 72, 1, 1.496, 1.496 );
setScaleKey( spep_2 -3 + 74, 1, 1.529, 1.529 );
setScaleKey( spep_2 -3 + 76, 1, 1.551, 1.551 );
setScaleKey( spep_2 -3 + 78, 1, 1.573, 1.573 );
setScaleKey( spep_2 -3 + 80, 1, 1.595, 1.595 );
setScaleKey( spep_2 -3 + 82, 1, 1.617, 1.617 );
setScaleKey( spep_2 -3 + 84, 1, 1.628, 1.628 );
setScaleKey( spep_2 -3 + 86, 1, 1.639, 1.639 );
setScaleKey( spep_2 -3 + 88, 1, 1.650, 1.650 );
setScaleKey( spep_2 -3 + 90, 1, 1.661, 1.661 );
setScaleKey( spep_2 -3 + 95, 1, 1.661, 1.661 );
setScaleKey( spep_2 -3 + 96, 1, 2.585, 2.585 );
setScaleKey( spep_2 -3 + 216, 1, 2.585, 2.585 );

setRotateKey( spep_2 -3 + 95, 1, 42.1 );
setRotateKey( spep_2 -3 + 96, 1, -57.2 );--
setRotateKey( spep_2 -3 + 114, 1, -57.2 );
setRotateKey( spep_2 -3 + 116, 1, -29.8 );
setRotateKey( spep_2 -3 + 126, 1, -29.8 );
setRotateKey( spep_2 -3 + 128, 1, -38 );
setRotateKey( spep_2 -3 + 146, 1, -38 );
setRotateKey( spep_2 -3 + 148, 1, -48.5 );
setRotateKey( spep_2 -3 + 174, 1, -48.5 );
setRotateKey( spep_2 -3 + 176, 1, -29.8 );
setRotateKey( spep_2 -3 + 184, 1, -29.8 );
setRotateKey( spep_2 -3 + 186, 1, -38 );
setRotateKey( spep_2 -3 + 204, 1, -38 );
setRotateKey( spep_2 -3 + 206, 1, -48.5 );
setRotateKey( spep_2 -3 + 216, 1, -48.5 );


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 280, 1, 1 );
setDisp( spep_2 -3 + 349, 1, 0 );
changeAnime( spep_2 -3 + 280, 1, 108 );

setMoveKey( spep_2 -3 + 280, 1, 378.2, 262.8 , 0 );
setMoveKey( spep_2 -3 + 281, 1, 378.2, 262.8 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 367, 257.7 , 0 );
setMoveKey( spep_2 -3 + 283, 1, 367, 257.7 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 332.9, 241.1 , 0 );
setMoveKey( spep_2 -3 + 285, 1, 332.9, 241.1 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 275.9, 212.9 , 0 );
setMoveKey( spep_2 -3 + 287, 1, 275.9, 212.9 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 196.1, 173.2 , 0 );
setMoveKey( spep_2 -3 + 289, 1, 196.1, 173.2 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 93.3, 122 , 0 );
setMoveKey( spep_2 -3 + 291, 1, 93.3, 122 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 80.4, 62.3 , 0 );
setMoveKey( spep_2 -3 + 293, 1, 80.4, 62.3 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 54, -31 , 0 );
setMoveKey( spep_2 -3 + 295, 1, 54, -31 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 83.6, 61.4 , 0 );
setMoveKey( spep_2 -3 + 297, 1, 83.6, 61.4 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 123, 107.9 , 0 );
setMoveKey( spep_2 -3 + 299, 1, 123, 107.9 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 130.6, 132.2 , 0 );
setMoveKey( spep_2 -3 + 301, 1, 130.6, 132.2 , 0 );
setMoveKey( spep_2 -3 + 302, 1, 116.5, 108.8 , 0 );
setMoveKey( spep_2 -3 + 303, 1, 116.5, 108.8 , 0 );
setMoveKey( spep_2 -3 + 304, 1, 122.1, 131.3 , 0 );
setMoveKey( spep_2 -3 + 305, 1, 122.1, 131.3 , 0 );
setMoveKey( spep_2 -3 + 306, 1, 143.8, 107.9 , 0 );
setMoveKey( spep_2 -3 + 307, 1, 143.8, 107.9 , 0 );
setMoveKey( spep_2 -3 + 308, 1, 146.7, 128.7 , 0 );
setMoveKey( spep_2 -3 + 309, 1, 146.7, 128.7 , 0 );
setMoveKey( spep_2 -3 + 310, 1, 139.3, 117.2 , 0 );
setMoveKey( spep_2 -3 + 311, 1, 139.3, 117.2 , 0 );
setMoveKey( spep_2 -3 + 312, 1, 140.9, 128.7 , 0 );
setMoveKey( spep_2 -3 + 313, 1, 140.9, 128.7 , 0 );
setMoveKey( spep_2 -3 + 314, 1, 151.7, 120.5 , 0 );
setMoveKey( spep_2 -3 + 315, 1, 151.7, 120.5 , 0 );
setMoveKey( spep_2 -3 + 316, 1, 154.5, 128.7 , 0 );
setMoveKey( spep_2 -3 + 317, 1, 154.5, 128.7 , 0 );
setMoveKey( spep_2 -3 + 318, 1, 144.5, 117.2 , 0 );
setMoveKey( spep_2 -3 + 320, 1, 236.7, 147.8 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 226.2, 116.9 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 241.8, 116.2 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 262.3, 113.7 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 260.4, 111.5 , 0 );
setMoveKey( spep_2 -3 + 330, 1, 258.8, 109.4 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 257.4, 107.5 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 256.1, 105.9 , 0 );
setMoveKey( spep_2 -3 + 336, 1, 255.1, 104.5 , 0 );
setMoveKey( spep_2 -3 + 338, 1, 254.2, 103.3 , 0 );
setMoveKey( spep_2 -3 + 340, 1, 253.5, 102.3 , 0 );
setMoveKey( spep_2 -3 + 342, 1, 253.1, 101.5 , 0 );
setMoveKey( spep_2 -3 + 344, 1, 252.8, 101 , 0 );
setMoveKey( spep_2 -3 + 346, 1, 252.7, 100.7 , 0 );
setMoveKey( spep_2 -3 + 348, 1, 252.8, 100.6 , 0 );
setMoveKey( spep_2 -3 + 349, 1, 252.8, 100.6 , 0 );

setScaleKey( spep_2 -3 + 280, 1, 2.453, 2.453 );
setScaleKey( spep_2 -3 + 281, 1, 2.453, 2.453 );
setScaleKey( spep_2 -3 + 282, 1, 2.596, 2.596 );
setScaleKey( spep_2 -3 + 283, 1, 2.596, 2.596 );
setScaleKey( spep_2 -3 + 284, 1, 2.728, 2.728 );
setScaleKey( spep_2 -3 + 285, 1, 2.728, 2.728 );
setScaleKey( spep_2 -3 + 286, 1, 2.871, 2.871 );
setScaleKey( spep_2 -3 + 287, 1, 2.871, 2.871 );
setScaleKey( spep_2 -3 + 288, 1, 3.014, 3.014 );
setScaleKey( spep_2 -3 + 289, 1, 3.014, 3.014 );
setScaleKey( spep_2 -3 + 290, 1, 3.146, 3.146 );
setScaleKey( spep_2 -3 + 291, 1, 3.146, 3.146 );
setScaleKey( spep_2 -3 + 292, 1, 4.653, 4.653 );
setScaleKey( spep_2 -3 + 293, 1, 4.653, 4.653 );
setScaleKey( spep_2 -3 + 294, 1, 6.017, 6.017 );
setScaleKey( spep_2 -3 + 295, 1, 6.017, 6.017 );
setScaleKey( spep_2 -3 + 296, 1, 4.653, 4.653 );
setScaleKey( spep_2 -3 + 297, 1, 4.653, 4.653 );
setScaleKey( spep_2 -3 + 298, 1, 3.289, 3.289 );
setScaleKey( spep_2 -3 + 318, 1, 3.289, 3.289 );
setScaleKey( spep_2 -3 + 320, 1, 1.584, 1.584 );
setScaleKey( spep_2 -3 + 322, 1, 1.287, 1.287 );
setScaleKey( spep_2 -3 + 324, 1, 0.968, 0.968 );
setScaleKey( spep_2 -3 + 326, 1, 0.638, 0.638 );
setScaleKey( spep_2 -3 + 328, 1, 0.638, 0.638 );
setScaleKey( spep_2 -3 + 330, 1, 0.627, 0.627 );
setScaleKey( spep_2 -3 + 332, 1, 0.627, 0.627 );
setScaleKey( spep_2 -3 + 334, 1, 0.616, 0.616 );
setScaleKey( spep_2 -3 + 336, 1, 0.616, 0.616 );
setScaleKey( spep_2 -3 + 338, 1, 0.605, 0.605 );
setScaleKey( spep_2 -3 + 342, 1, 0.605, 0.605 );
setScaleKey( spep_2 -3 + 344, 1, 0.594, 0.594 );
setScaleKey( spep_2 -3 + 349, 1, 0.594, 0.594 );

setRotateKey( spep_2 -3 + 280, 1, 0.8 );
setRotateKey( spep_2 -3 + 349, 1, 0.8 );

-- ** 音 ** --
--悟空ラッシュ
SE012 = playSeVer2( spep_2 + 82, 1189, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 86, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE013, 86 );
SE014 = playSeVer2( spep_2 + 86, 1000, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 102, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 102, SE015, 85 );
SE016 = playSeVer2( spep_2 + 102, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 102, SE016, 87 );
setPitch( spep_2 + 102, SE016, -200 );
setTimeStretch( SE016, 0.87, 30, 4 );
SE017 = playSeVer2( spep_2 + 102, 1013, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 116, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE018, 89 );
SE019 = playSeVer2( spep_2 + 116, 1000, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 136, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 136, SE020, 87 );
SE021 = playSeVer2( spep_2 + 136, 1009, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 148, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE022, 88 );
setPitch( spep_2 + 148, SE022, -200 );
setTimeStretch( SE022, 0.87, 30, 4 );
SE023 = playSeVer2( spep_2 + 148, 1010, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 164, 1001, "", 0, 0, 0, -1);
setPitch( spep_2 + 164, SE024, -200 );
setTimeStretch( SE024, 0.87, 30, 4 );
SE025 = playSeVer2( spep_2 + 168, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 168, SE025, 85 );
SE026 = playSeVer2( spep_2 + 168, 1006, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 174, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 174, SE027, 84 );
SE028 = playSeVer2( spep_2 + 176, 1010, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 194, 1009, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 194, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 194, SE030, 92 );
SE031 = playSeVer2( spep_2 + 194, 1110, "", 0, 0, 0, -1);

--悟空ブルー化
SE032 = playSeVer2( spep_2 + 210, 1017, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE032, 54 );
setStartTimeMs( SE032,  83 );
SE033 = playSeVer2( spep_2 + 222, 1033, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 222, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 222, SE034, 126 );

--ブロー
SE035 = playSeVer2( spep_2 + 274, 1003, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 280, 1009, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 280, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 280, SE037, 87 );
SE038 = playSeVer2( spep_2 + 280, 1190, "", 0, 0, 0, -1);

--ブルー解除
SE039 = playSeVer2( spep_2 + 306, 1026, "", 0, 6, 0, -1);
setStartTimeMs( SE039,  100 );
SE041 = playSeVer2( spep_2 + 306, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 306, SE041, 83 );

--時とばし
SE040 = playSeVer2( spep_2 + 340, 1329, "",spep_2 +346 + 70, 4, 20, -1);
setSeVolumeByWorkId( spep_2 + 340, SE040, 221 );
setStartTimeMs( SE040,  667 );
SE042 = playSeVer2( spep_2 + 338, 1264, "",spep_2 +346 + 130, 0, 80, -1);
setSeVolumeByWorkId( spep_2 + 338, SE042, 105 );
setPitch( spep_2 + 338, SE042, 300 );
setTimeStretch( SE042, 1.2, 30, 4 );
setBandpassFilter  ( spep_2 + 338, SE042, 800, 24000 );
SE043 = playSeVer2( spep_2 + 338, 1059, "",spep_2 +346 + 78, 0, 72, -1);
setSeVolumeByWorkId( spep_2 + 338, SE043, 54 );
setPitch( spep_2 + 338, SE043, 300 );
setTimeStretch( SE043, 1.2, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 346 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 346;


------------------------------------------------------
-- 時とばし〜立ち去るヒット(386F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --時とばし〜立ち去るヒット 手前 ef_004
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 386, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 386, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 386, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 386, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --時とばし〜立ち去るヒット 奥 ef_005
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 386, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 386, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 386, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 386, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 60, 1, 1 );
setDisp( spep_3 -3 + 120, 1, 0 );
changeAnime( spep_3 -3 + 60, 1, 106 );

setBlendColor( spep_3 -3 + 60, 1, 3, 0.53, 0.53, 0.54, 0.6 );
setBlendColor( spep_3 -3 + 119, 1, 3, 0.53, 0.53, 0.54, 0.6 );
setBlendColor( spep_3 -3 + 120, 1, 3, 0.53, 0.53, 0.54, 0 );

setMoveKey( spep_3 -3 + 60, 1, -297.5, -319.3 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -297.2, -318.9 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -296.7, -318.6 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -296.3, -318.3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -295.8, -317.9 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -295.3, -317.5 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -294.7, -317 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -294.2, -316.6 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -293.5, -316.1 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -292.9, -315.6 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -291.8, -315.5 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -290.6, -315.3 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -289.3, -315.2 , 0 );
setMoveKey( spep_3 -3 + 86, 1, -288, -315.1 , 0 );
setMoveKey( spep_3 -3 + 88, 1, -286.6, -314.9 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -285.2, -314.7 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -283.7, -314.6 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -282.2, -314.4 , 0 );
setMoveKey( spep_3 -3 + 96, 1, -280.6, -314.2 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -278.9, -314.1 , 0 );
setMoveKey( spep_3 -3 + 100, 1, -277, -314.3 , 0 );
setMoveKey( spep_3 -3 + 102, 1, -275.2, -314.6 , 0 );
setMoveKey( spep_3 -3 + 104, 1, -273.6, -314.8 , 0 );
setMoveKey( spep_3 -3 + 106, 1, -272.1, -315 , 0 );
setMoveKey( spep_3 -3 + 108, 1, -270.8, -315.1 , 0 );
setMoveKey( spep_3 -3 + 110, 1, -269.6, -315.3 , 0 );
setMoveKey( spep_3 -3 + 112, 1, -268.6, -315.4 , 0 );
setMoveKey( spep_3 -3 + 114, 1, -267.8, -315.5 , 0 );
setMoveKey( spep_3 -3 + 116, 1, -267.1, -315.6 , 0 );
setMoveKey( spep_3 -3 + 118, 1, -266.6, -315.7 , 0 );
setMoveKey( spep_3 -3 + 120, 1, -266.6, -315.7 , 0 );

setScaleKey( spep_3 -3 + 60, 1, 5.62, 5.62 );
setScaleKey( spep_3 -3 + 120, 1, 5.62, 5.62 );

setRotateKey( spep_3 -3 + 60, 1, -50 );
setRotateKey( spep_3 -3 + 120, 1, -50 );


-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 146, 1, 1 );
setDisp( spep_3 -3 + 166, 1, 0 );
changeAnime( spep_3 -3 + 146, 1, 6 );

setMoveKey( spep_3 -3 + 146, 1, 238.9, 73.8 , 0 );
setMoveKey( spep_3 -3 + 147, 1, 238.9, 73.8 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 303.9, 108 , 0 );
setMoveKey( spep_3 -3 + 149, 1, 303.9, 108 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 337.4, 110.8 , 0 );
setMoveKey( spep_3 -3 + 151, 1, 337.4, 110.8 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 430.9, 147.4 , 0 );
setMoveKey( spep_3 -3 + 153, 1, 430.9, 147.4 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 358, 94.5 , 0 );
setMoveKey( spep_3 -3 + 155, 1, 358, 94.5 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 257, 85 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 390.9, 102 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 542.8, 165.2 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 721.6, 180.5 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 873.5, 239.5 , 0 );
setMoveKey( spep_3 -3 + 166, 1, 873.5, 239.5 , 0 );

setScaleKey( spep_3 -3 + 146, 1, 3.486, 3.486 );
setScaleKey( spep_3 -3 + 147, 1, 3.486, 3.486 );
setScaleKey( spep_3 -3 + 148, 1, 5.418, 5.418 );
setScaleKey( spep_3 -3 + 149, 1, 5.418, 5.418 );
setScaleKey( spep_3 -3 + 150, 1, 7.35, 7.35 );
setScaleKey( spep_3 -3 + 151, 1, 7.35, 7.35 );
setScaleKey( spep_3 -3 + 152, 1, 5.544, 5.544 );
setScaleKey( spep_3 -3 + 153, 1, 5.544, 5.544 );
setScaleKey( spep_3 -3 + 154, 1, 4.508, 4.508 );
setScaleKey( spep_3 -3 + 155, 1, 4.508, 4.508 );
setScaleKey( spep_3 -3 + 156, 1, 3.486, 3.486 );
setScaleKey( spep_3 -3 + 166, 1, 3.486, 3.486 );

setRotateKey( spep_3 -3 + 146, 1, 44 );
setRotateKey( spep_3 -3 + 166, 1, 44 );


-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 180, 1, 1 );
setDisp( spep_3 -3 + 218, 1, 0 );
changeAnime( spep_3 -3 + 180, 1, 5 );

setMoveKey( spep_3 -3 + 180, 1, 36.9, 149 , 0 );
setMoveKey( spep_3 -3 + 182, 1, 12.3, 126.8 , 0 );
setMoveKey( spep_3 -3 + 184, 1, 61.5, 115.2 , 0 );
setMoveKey( spep_3 -3 + 186, 1, 174.2, 89.2 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 174.1, 81.2 , 0 );
setMoveKey( spep_3 -3 + 190, 1, 164.2, 86.1 , 0 );
setMoveKey( spep_3 -3 + 192, 1, 159.2, 84.7 , 0 );
setMoveKey( spep_3 -3 + 194, 1, 154.2, 83.4 , 0 );
setMoveKey( spep_3 -3 + 196, 1, 149.5, 82.3 , 0 );
setMoveKey( spep_3 -3 + 198, 1, 145, 81.2 , 0 );
setMoveKey( spep_3 -3 + 200, 1, 140.9, 80.3 , 0 );
setMoveKey( spep_3 -3 + 202, 1, 137.3, 79.4 , 0 );
setMoveKey( spep_3 -3 + 204, 1, 134.1, 78.7 , 0 );
setMoveKey( spep_3 -3 + 206, 1, 131.5, 78.1 , 0 );
setMoveKey( spep_3 -3 + 208, 1, 129.4, 77.6 , 0 );
setMoveKey( spep_3 -3 + 210, 1, 128, 77.2 , 0 );
setMoveKey( spep_3 -3 + 212, 1, 127.3, 77 , 0 );
setMoveKey( spep_3 -3 + 214, 1, 127.2, 76.8 , 0 );
setMoveKey( spep_3 -3 + 216, 1, 127.8, 76.7 , 0 );
setMoveKey( spep_3 -3 + 218, 1, 127.8, 76.7 , 0 );

setScaleKey( spep_3 -3 + 180, 1, 4.2, 4.2 );
setScaleKey( spep_3 -3 + 182, 1, 3.64, 3.64 );
setScaleKey( spep_3 -3 + 184, 1, 2.55, 2.55 );
setScaleKey( spep_3 -3 + 186, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 188, 1, 0.95, 0.95 );
setScaleKey( spep_3 -3 + 190, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 192, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 194, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 196, 1, 0.66, 0.66 );
setScaleKey( spep_3 -3 + 198, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 200, 1, 0.55, 0.55 );
setScaleKey( spep_3 -3 + 202, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 204, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 206, 1, 0.43, 0.43 );
setScaleKey( spep_3 -3 + 208, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 210, 1, 0.38, 0.38 );
setScaleKey( spep_3 -3 + 212, 1, 0.37, 0.37 );
setScaleKey( spep_3 -3 + 214, 1, 0.36, 0.36 );
setScaleKey( spep_3 -3 + 216, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 218, 1, 0.35, 0.35 );

setRotateKey( spep_3 -3 + 180, 1, 84.5 );
setRotateKey( spep_3 -3 + 218, 1, 84.5 );

-- ** 音 ** --
--回り込む
SE044 = playSeVer2( spep_3 + 52, 1116, "",spep_3 + 88, 0, 12, -1);
SE045 = playSeVer2( spep_3 + 52, 1025, "", 0, 14, 0, -1);
SE046 = playSeVer2( spep_3 + 52, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 52, SE046, 84 );
setPitch( spep_3 + 52, SE046, -400 );
setTimeStretch( SE046, 0.73, 30, 4 );

--ヒットパンチ
SE047 = playSeVer2( spep_3 + 116, 1011, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_3 + 116, 1109, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_3 + 116, 1026, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_3 + 140, 1027, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_3 + 140, 1017, "", 0, 0, 0, -1);

--敵飛んでいく
SE052 = playSeVer2( spep_3 + 164, 1121, "",spep_3 + 218, 0, 10, -1);
SE053 = playSeVer2( spep_3 + 164, 1183, "",spep_3 + 218, 0, 10, -1);

--岩衝突
SE054 = playSeVer2( spep_3 + 206, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 206, SE054, 71 );
SE055 = playSeVer2( spep_3 + 206, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 206, SE055, 83 );

--いわなだれ
SE056 = playSeVer2( spep_3 + 274, 1168, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_3 + 274, SE056, 73 );
setStartTimeMs( SE056,  600 );
SE059 = playSeVer2( spep_3 + 272, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 272, SE059, 61 );
SE060 = playSeVer2( spep_3 + 272, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 272, SE060, 71 );

--ヒット歩いてくる
SE057 = playSeVer2( spep_3 + 270, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 270, SE057, 251 );
SE058 = playSeVer2( spep_3 + 270, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 270, SE058, 200 );

--ヒット歩いてくる
SE061 = playSeVer2( spep_3 + 298, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 298, SE061, 251 );
SE062 = playSeVer2( spep_3 + 298, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 298, SE062, 200 );
SE063 = playSeVer2( spep_3 + 326, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 326, SE063, 251 );
SE064 = playSeVer2( spep_3 + 326, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 326, SE064, 200 );
SE065 = playSeVer2( spep_3 + 354, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 354, SE065, 251 );
SE066 = playSeVer2( spep_3 + 354, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 354, SE066, 200 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 386 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景


-- ** ダメージ表示 ** --
dealDamage( spep_3 + 276 );
endPhase( spep_3 + 376 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 立つ二人〜セリフカットイン(146F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 146, 0x100, -1, 0, 0, 0 );  --立つ二人〜セリフカットイン ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 146, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 146 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 146, first_f, 0 );

spep_x = spep_0 + 52;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 55, 515.5 , 0 );
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
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 +146 + 14, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 51 );
setPitch( spep_0 + 0, SE002, -600 );
setTimeStretch( SE002, 0.6, 30, 4 );

SE003 = playSeVer2( spep_0 + 2, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 77 );

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 146;

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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 悟空のダッシュ〜右の拳を突き入れる(346F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_2 + 0, SP_02r, 346, 0x100, -1, 0, 0, 0 );  --悟空のダッシュ〜右の拳を突き入れる 手前 ef_002
setEffMoveKey( spep_2 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 346, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 346, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_f, 0 );
setEffRotateKey( spep_2 + 346, attack_f, 0 );
setEffAlphaKey( spep_2 + 0, attack_f, 255 );
setEffAlphaKey( spep_2 + 346 -1, attack_f, 255 );
setEffAlphaKey( spep_2 + 346, attack_f, 0 );

attack_b = entryEffectLife( spep_2 + 0, SP_03r, 346, 0x80, -1, 0, 0, 0 );  --悟空のダッシュ〜右の拳を突き入れる 奥 ef_003
setEffMoveKey( spep_2 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 346, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 346, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_b, 0 );
setEffRotateKey( spep_2 + 346, attack_b, 0 );
setEffAlphaKey( spep_2 + 0, attack_b, 255 );
setEffAlphaKey( spep_2 + 346 -1, attack_b, 255 );
setEffAlphaKey( spep_2 + 346, attack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 60, 1, 1 );
setDisp( spep_2 -3 + 216, 1, 0 );
changeAnime( spep_2 -3 + 60, 1, 117 );
changeAnime( spep_2 -3 + 96, 1, 106 );

setMoveKey( spep_2 -3 + 60, 1, 191.9, -196.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 193.7, -191.8 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 182.2, -194.3 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 169.5, -182.5 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 165.6, -181.9 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 165, -173.7 , 0 );

setScaleKey( spep_2 -3 + 60, 1, 1.155, 1.155 );
setScaleKey( spep_2 -3 + 62, 1, 1.166, 1.166 );
setScaleKey( spep_2 -3 + 64, 1, 1.221, 1.221 );
setScaleKey( spep_2 -3 + 66, 1, 1.309, 1.309 );
setScaleKey( spep_2 -3 + 68, 1, 1.430, 1.430 );
setScaleKey( spep_2 -3 + 70, 1, 1.474, 1.474 );

setRotateKey( spep_2 -3 + 60, 1, 42 );
setRotateKey( spep_2 -3 + 66, 1, 42 );
setRotateKey( spep_2 -3 + 68, 1, 42.1 );

-- ** 音 ** --
--悟空高速移動
SE006 = playSeVer2( spep_2 + 16, 4, "",spep_2 + 32, 0, 6, -1);
SE007 = playSeVer2( spep_2 + 22, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE007, 158 );
SE008 = playSeVer2( spep_2 + 24, 1109, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 24, 44, "", 0, 0, 0, -1);

--悟空突っ込む
SE010 = playSeVer2( spep_2 + 50, 1314, "",spep_2 + 220, 0, 40, -1);
setSeVolumeByWorkId( spep_2 + 50, SE010, 66 );
SE011 = playSeVer2( spep_2 + 50, 9, "",spep_2 + 90, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 50, SE011, 92 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 68 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 165, -173.7 , 0 );
    setMoveKey( SP_dodge + 2, 1, 157.9, -179.2 , 0 );
    setMoveKey( SP_dodge + 4, 1, 153.4, -172.8 , 0 );
    setMoveKey( SP_dodge + 6, 1, 161.5, -180 , 0 );
    setMoveKey( SP_dodge + 8, 1, 161.2, -172 , 0 );
    setMoveKey( SP_dodge + 10, 1, 154.5, -177.7 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.474, 1.474 );
    setScaleKey( SP_dodge + 2, 1, 1.496, 1.496 );
    setScaleKey( SP_dodge + 4, 1, 1.529, 1.529 );
    setScaleKey( SP_dodge + 6, 1, 1.551, 1.551 );
    setScaleKey( SP_dodge + 8, 1, 1.573, 1.573 );
    setScaleKey( SP_dodge + 10, 1, 1.595, 1.595 );

    setRotateKey( SP_dodge + 0, 1, 42.1 );
    setRotateKey( SP_dodge + 10, 1, 42.1 );
    
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

setMoveKey( spep_2 -3 + 72, 1, 157.9, -179.2 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 153.4, -172.8 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 161.5, -180 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 161.2, -172 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 154.5, -177.7 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 150.4, -171.5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 158.9, -178.8 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 159, -171 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 152.7, -176.8 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 149, -170.8 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 157.8, -178.3 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 152.3, -176.6 , 0 );
setMoveKey( spep_2 -3 + 95, 1, 152.3, -176.6 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 118, 16.2 , 0 );--
setMoveKey( spep_2 -3 + 98, 1, 118, 16.2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 111.5, 24.3 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 122.8, 9.7 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 112.1, 9.7 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 123.4, 21 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 111.5, 24.3 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 122.8, 9.7 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 112.1, 9.7 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 123.4, 21 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 124.1, 76.4 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 135.4, 61.8 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 124.7, 61.8 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 136, 73.1 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 124.1, 76.4 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 135.4, 61.8 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 115.1, 71.3 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 126.4, 82.6 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 114.5, 85.9 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 125.8, 71.3 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 115.1, 71.3 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 126.4, 82.6 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 114.5, 85.9 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 125.8, 71.3 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 115.1, 71.3 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 126.4, 82.6 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 96.7, 125.1 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 108.1, 110.5 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 97.4, 110.5 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 108.7, 121.8 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 121, 100.8 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 132.4, 86.2 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 121.7, 86.2 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 133, 97.5 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 121, 100.8 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 132.4, 86.2 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 121.7, 86.2 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 133, 97.5 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 121, 100.8 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 132.4, 86.2 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 124.7, 61.8 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 136, 73.1 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 124.1, 76.4 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 135.4, 61.8 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 124.7, 61.8 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 126.4, 82.6 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 114.5, 85.9 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 125.8, 71.3 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 115.1, 71.3 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 126.4, 82.6 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 114.5, 85.9 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 125.8, 71.3 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 115.1, 71.3 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 126.4, 82.6 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 114.5, 85.9 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 108.1, 110.5 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 97.4, 110.5 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 108.7, 121.8 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 96.7, 125.1 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 103.2, 117 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 103.2, 117 , 0 );

setScaleKey( spep_2 -3 + 72, 1, 1.496, 1.496 );
setScaleKey( spep_2 -3 + 74, 1, 1.529, 1.529 );
setScaleKey( spep_2 -3 + 76, 1, 1.551, 1.551 );
setScaleKey( spep_2 -3 + 78, 1, 1.573, 1.573 );
setScaleKey( spep_2 -3 + 80, 1, 1.595, 1.595 );
setScaleKey( spep_2 -3 + 82, 1, 1.617, 1.617 );
setScaleKey( spep_2 -3 + 84, 1, 1.628, 1.628 );
setScaleKey( spep_2 -3 + 86, 1, 1.639, 1.639 );
setScaleKey( spep_2 -3 + 88, 1, 1.650, 1.650 );
setScaleKey( spep_2 -3 + 90, 1, 1.661, 1.661 );
setScaleKey( spep_2 -3 + 95, 1, 1.661, 1.661 );
setScaleKey( spep_2 -3 + 96, 1, 2.585, 2.585 );
setScaleKey( spep_2 -3 + 216, 1, 2.585, 2.585 );

setRotateKey( spep_2 -3 + 95, 1, 42.1 );
setRotateKey( spep_2 -3 + 96, 1, -57.2 );--
setRotateKey( spep_2 -3 + 114, 1, -57.2 );
setRotateKey( spep_2 -3 + 116, 1, -29.8 );
setRotateKey( spep_2 -3 + 126, 1, -29.8 );
setRotateKey( spep_2 -3 + 128, 1, -38 );
setRotateKey( spep_2 -3 + 146, 1, -38 );
setRotateKey( spep_2 -3 + 148, 1, -48.5 );
setRotateKey( spep_2 -3 + 174, 1, -48.5 );
setRotateKey( spep_2 -3 + 176, 1, -29.8 );
setRotateKey( spep_2 -3 + 184, 1, -29.8 );
setRotateKey( spep_2 -3 + 186, 1, -38 );
setRotateKey( spep_2 -3 + 204, 1, -38 );
setRotateKey( spep_2 -3 + 206, 1, -48.5 );
setRotateKey( spep_2 -3 + 216, 1, -48.5 );


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 280, 1, 1 );
setDisp( spep_2 -3 + 349, 1, 0 );
changeAnime( spep_2 -3 + 280, 1, 108 );

setMoveKey( spep_2 -3 + 280, 1, 378.2, 262.8 , 0 );
setMoveKey( spep_2 -3 + 281, 1, 378.2, 262.8 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 367, 257.7 , 0 );
setMoveKey( spep_2 -3 + 283, 1, 367, 257.7 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 332.9, 241.1 , 0 );
setMoveKey( spep_2 -3 + 285, 1, 332.9, 241.1 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 275.9, 212.9 , 0 );
setMoveKey( spep_2 -3 + 287, 1, 275.9, 212.9 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 196.1, 173.2 , 0 );
setMoveKey( spep_2 -3 + 289, 1, 196.1, 173.2 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 93.3, 122 , 0 );
setMoveKey( spep_2 -3 + 291, 1, 93.3, 122 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 80.4, 62.3 , 0 );
setMoveKey( spep_2 -3 + 293, 1, 80.4, 62.3 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 54, -31 , 0 );
setMoveKey( spep_2 -3 + 295, 1, 54, -31 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 83.6, 61.4 , 0 );
setMoveKey( spep_2 -3 + 297, 1, 83.6, 61.4 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 123, 107.9 , 0 );
setMoveKey( spep_2 -3 + 299, 1, 123, 107.9 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 130.6, 132.2 , 0 );
setMoveKey( spep_2 -3 + 301, 1, 130.6, 132.2 , 0 );
setMoveKey( spep_2 -3 + 302, 1, 116.5, 108.8 , 0 );
setMoveKey( spep_2 -3 + 303, 1, 116.5, 108.8 , 0 );
setMoveKey( spep_2 -3 + 304, 1, 122.1, 131.3 , 0 );
setMoveKey( spep_2 -3 + 305, 1, 122.1, 131.3 , 0 );
setMoveKey( spep_2 -3 + 306, 1, 143.8, 107.9 , 0 );
setMoveKey( spep_2 -3 + 307, 1, 143.8, 107.9 , 0 );
setMoveKey( spep_2 -3 + 308, 1, 146.7, 128.7 , 0 );
setMoveKey( spep_2 -3 + 309, 1, 146.7, 128.7 , 0 );
setMoveKey( spep_2 -3 + 310, 1, 139.3, 117.2 , 0 );
setMoveKey( spep_2 -3 + 311, 1, 139.3, 117.2 , 0 );
setMoveKey( spep_2 -3 + 312, 1, 140.9, 128.7 , 0 );
setMoveKey( spep_2 -3 + 313, 1, 140.9, 128.7 , 0 );
setMoveKey( spep_2 -3 + 314, 1, 151.7, 120.5 , 0 );
setMoveKey( spep_2 -3 + 315, 1, 151.7, 120.5 , 0 );
setMoveKey( spep_2 -3 + 316, 1, 154.5, 128.7 , 0 );
setMoveKey( spep_2 -3 + 317, 1, 154.5, 128.7 , 0 );
setMoveKey( spep_2 -3 + 318, 1, 144.5, 117.2 , 0 );
setMoveKey( spep_2 -3 + 320, 1, 236.7, 147.8 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 226.2, 116.9 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 241.8, 116.2 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 262.3, 113.7 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 260.4, 111.5 , 0 );
setMoveKey( spep_2 -3 + 330, 1, 258.8, 109.4 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 257.4, 107.5 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 256.1, 105.9 , 0 );
setMoveKey( spep_2 -3 + 336, 1, 255.1, 104.5 , 0 );
setMoveKey( spep_2 -3 + 338, 1, 254.2, 103.3 , 0 );
setMoveKey( spep_2 -3 + 340, 1, 253.5, 102.3 , 0 );
setMoveKey( spep_2 -3 + 342, 1, 253.1, 101.5 , 0 );
setMoveKey( spep_2 -3 + 344, 1, 252.8, 101 , 0 );
setMoveKey( spep_2 -3 + 346, 1, 252.7, 100.7 , 0 );
setMoveKey( spep_2 -3 + 348, 1, 252.8, 100.6 , 0 );
setMoveKey( spep_2 -3 + 349, 1, 252.8, 100.6 , 0 );

setScaleKey( spep_2 -3 + 280, 1, 2.453, 2.453 );
setScaleKey( spep_2 -3 + 281, 1, 2.453, 2.453 );
setScaleKey( spep_2 -3 + 282, 1, 2.596, 2.596 );
setScaleKey( spep_2 -3 + 283, 1, 2.596, 2.596 );
setScaleKey( spep_2 -3 + 284, 1, 2.728, 2.728 );
setScaleKey( spep_2 -3 + 285, 1, 2.728, 2.728 );
setScaleKey( spep_2 -3 + 286, 1, 2.871, 2.871 );
setScaleKey( spep_2 -3 + 287, 1, 2.871, 2.871 );
setScaleKey( spep_2 -3 + 288, 1, 3.014, 3.014 );
setScaleKey( spep_2 -3 + 289, 1, 3.014, 3.014 );
setScaleKey( spep_2 -3 + 290, 1, 3.146, 3.146 );
setScaleKey( spep_2 -3 + 291, 1, 3.146, 3.146 );
setScaleKey( spep_2 -3 + 292, 1, 4.653, 4.653 );
setScaleKey( spep_2 -3 + 293, 1, 4.653, 4.653 );
setScaleKey( spep_2 -3 + 294, 1, 6.017, 6.017 );
setScaleKey( spep_2 -3 + 295, 1, 6.017, 6.017 );
setScaleKey( spep_2 -3 + 296, 1, 4.653, 4.653 );
setScaleKey( spep_2 -3 + 297, 1, 4.653, 4.653 );
setScaleKey( spep_2 -3 + 298, 1, 3.289, 3.289 );
setScaleKey( spep_2 -3 + 318, 1, 3.289, 3.289 );
setScaleKey( spep_2 -3 + 320, 1, 1.584, 1.584 );
setScaleKey( spep_2 -3 + 322, 1, 1.287, 1.287 );
setScaleKey( spep_2 -3 + 324, 1, 0.968, 0.968 );
setScaleKey( spep_2 -3 + 326, 1, 0.638, 0.638 );
setScaleKey( spep_2 -3 + 328, 1, 0.638, 0.638 );
setScaleKey( spep_2 -3 + 330, 1, 0.627, 0.627 );
setScaleKey( spep_2 -3 + 332, 1, 0.627, 0.627 );
setScaleKey( spep_2 -3 + 334, 1, 0.616, 0.616 );
setScaleKey( spep_2 -3 + 336, 1, 0.616, 0.616 );
setScaleKey( spep_2 -3 + 338, 1, 0.605, 0.605 );
setScaleKey( spep_2 -3 + 342, 1, 0.605, 0.605 );
setScaleKey( spep_2 -3 + 344, 1, 0.594, 0.594 );
setScaleKey( spep_2 -3 + 349, 1, 0.594, 0.594 );

setRotateKey( spep_2 -3 + 280, 1, 0.8 );
setRotateKey( spep_2 -3 + 349, 1, 0.8 );

-- ** 音 ** --
--悟空ラッシュ
SE012 = playSeVer2( spep_2 + 82, 1189, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 86, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE013, 86 );
SE014 = playSeVer2( spep_2 + 86, 1000, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 102, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 102, SE015, 85 );
SE016 = playSeVer2( spep_2 + 102, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 102, SE016, 87 );
setPitch( spep_2 + 102, SE016, -200 );
setTimeStretch( SE016, 0.87, 30, 4 );
SE017 = playSeVer2( spep_2 + 102, 1013, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 116, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE018, 89 );
SE019 = playSeVer2( spep_2 + 116, 1000, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 136, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 136, SE020, 87 );
SE021 = playSeVer2( spep_2 + 136, 1009, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 148, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE022, 88 );
setPitch( spep_2 + 148, SE022, -200 );
setTimeStretch( SE022, 0.87, 30, 4 );
SE023 = playSeVer2( spep_2 + 148, 1010, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 164, 1001, "", 0, 0, 0, -1);
setPitch( spep_2 + 164, SE024, -200 );
setTimeStretch( SE024, 0.87, 30, 4 );
SE025 = playSeVer2( spep_2 + 168, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 168, SE025, 85 );
SE026 = playSeVer2( spep_2 + 168, 1006, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 174, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 174, SE027, 84 );
SE028 = playSeVer2( spep_2 + 176, 1010, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 194, 1009, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 194, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 194, SE030, 92 );
SE031 = playSeVer2( spep_2 + 194, 1110, "", 0, 0, 0, -1);

--悟空ブルー化
SE032 = playSeVer2( spep_2 + 210, 1017, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE032, 54 );
setStartTimeMs( SE032,  83 );
SE033 = playSeVer2( spep_2 + 222, 1033, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 222, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 222, SE034, 126 );

--ブロー
SE035 = playSeVer2( spep_2 + 274, 1003, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 280, 1009, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 280, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 280, SE037, 87 );
SE038 = playSeVer2( spep_2 + 280, 1190, "", 0, 0, 0, -1);

--ブルー解除
SE039 = playSeVer2( spep_2 + 306, 1026, "", 0, 6, 0, -1);
setStartTimeMs( SE039,  100 );
SE041 = playSeVer2( spep_2 + 306, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 306, SE041, 83 );

--時とばし
SE040 = playSeVer2( spep_2 + 340, 1329, "",spep_2 +346 + 70, 4, 20, -1);
setSeVolumeByWorkId( spep_2 + 340, SE040, 221 );
setStartTimeMs( SE040,  667 );
SE042 = playSeVer2( spep_2 + 338, 1264, "",spep_2 +346 + 130, 0, 80, -1);
setSeVolumeByWorkId( spep_2 + 338, SE042, 105 );
setPitch( spep_2 + 338, SE042, 300 );
setTimeStretch( SE042, 1.2, 30, 4 );
setBandpassFilter  ( spep_2 + 338, SE042, 800, 24000 );
SE043 = playSeVer2( spep_2 + 338, 1059, "",spep_2 +346 + 78, 0, 72, -1);
setSeVolumeByWorkId( spep_2 + 338, SE043, 54 );
setPitch( spep_2 + 338, SE043, 300 );
setTimeStretch( SE043, 1.2, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 346 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 346;


------------------------------------------------------
-- 時とばし〜立ち去るヒット(386F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04r, 0x100, -1, 0, 0, 0 );  --時とばし〜立ち去るヒット 手前 ef_004
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 386, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 386, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 386, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 386, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_05r, 0x80, -1, 0, 0, 0 );  --時とばし〜立ち去るヒット 奥 ef_005
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 386, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 386, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 386, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 386, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 60, 1, 1 );
setDisp( spep_3 -3 + 120, 1, 0 );
changeAnime( spep_3 -3 + 60, 1, 106 );

setBlendColor( spep_3 -3 + 60, 1, 3, 0.53, 0.53, 0.54, 0.6 );
setBlendColor( spep_3 -3 + 119, 1, 3, 0.53, 0.53, 0.54, 0.6 );
setBlendColor( spep_3 -3 + 120, 1, 3, 0.53, 0.53, 0.54, 0 );

setMoveKey( spep_3 -3 + 60, 1, -297.5, -319.3 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -297.2, -318.9 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -296.7, -318.6 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -296.3, -318.3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -295.8, -317.9 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -295.3, -317.5 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -294.7, -317 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -294.2, -316.6 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -293.5, -316.1 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -292.9, -315.6 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -291.8, -315.5 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -290.6, -315.3 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -289.3, -315.2 , 0 );
setMoveKey( spep_3 -3 + 86, 1, -288, -315.1 , 0 );
setMoveKey( spep_3 -3 + 88, 1, -286.6, -314.9 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -285.2, -314.7 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -283.7, -314.6 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -282.2, -314.4 , 0 );
setMoveKey( spep_3 -3 + 96, 1, -280.6, -314.2 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -278.9, -314.1 , 0 );
setMoveKey( spep_3 -3 + 100, 1, -277, -314.3 , 0 );
setMoveKey( spep_3 -3 + 102, 1, -275.2, -314.6 , 0 );
setMoveKey( spep_3 -3 + 104, 1, -273.6, -314.8 , 0 );
setMoveKey( spep_3 -3 + 106, 1, -272.1, -315 , 0 );
setMoveKey( spep_3 -3 + 108, 1, -270.8, -315.1 , 0 );
setMoveKey( spep_3 -3 + 110, 1, -269.6, -315.3 , 0 );
setMoveKey( spep_3 -3 + 112, 1, -268.6, -315.4 , 0 );
setMoveKey( spep_3 -3 + 114, 1, -267.8, -315.5 , 0 );
setMoveKey( spep_3 -3 + 116, 1, -267.1, -315.6 , 0 );
setMoveKey( spep_3 -3 + 118, 1, -266.6, -315.7 , 0 );
setMoveKey( spep_3 -3 + 120, 1, -266.6, -315.7 , 0 );

setScaleKey( spep_3 -3 + 60, 1, 5.62, 5.62 );
setScaleKey( spep_3 -3 + 120, 1, 5.62, 5.62 );

setRotateKey( spep_3 -3 + 60, 1, -50 );
setRotateKey( spep_3 -3 + 120, 1, -50 );


-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 146, 1, 1 );
setDisp( spep_3 -3 + 166, 1, 0 );
changeAnime( spep_3 -3 + 146, 1, 6 );

setMoveKey( spep_3 -3 + 146, 1, 238.9, 73.8 , 0 );
setMoveKey( spep_3 -3 + 147, 1, 238.9, 73.8 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 303.9, 108 , 0 );
setMoveKey( spep_3 -3 + 149, 1, 303.9, 108 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 337.4, 110.8 , 0 );
setMoveKey( spep_3 -3 + 151, 1, 337.4, 110.8 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 430.9, 147.4 , 0 );
setMoveKey( spep_3 -3 + 153, 1, 430.9, 147.4 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 358, 94.5 , 0 );
setMoveKey( spep_3 -3 + 155, 1, 358, 94.5 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 257, 85 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 390.9, 102 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 542.8, 165.2 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 721.6, 180.5 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 873.5, 239.5 , 0 );
setMoveKey( spep_3 -3 + 166, 1, 873.5, 239.5 , 0 );

setScaleKey( spep_3 -3 + 146, 1, 3.486, 3.486 );
setScaleKey( spep_3 -3 + 147, 1, 3.486, 3.486 );
setScaleKey( spep_3 -3 + 148, 1, 5.418, 5.418 );
setScaleKey( spep_3 -3 + 149, 1, 5.418, 5.418 );
setScaleKey( spep_3 -3 + 150, 1, 7.35, 7.35 );
setScaleKey( spep_3 -3 + 151, 1, 7.35, 7.35 );
setScaleKey( spep_3 -3 + 152, 1, 5.544, 5.544 );
setScaleKey( spep_3 -3 + 153, 1, 5.544, 5.544 );
setScaleKey( spep_3 -3 + 154, 1, 4.508, 4.508 );
setScaleKey( spep_3 -3 + 155, 1, 4.508, 4.508 );
setScaleKey( spep_3 -3 + 156, 1, 3.486, 3.486 );
setScaleKey( spep_3 -3 + 166, 1, 3.486, 3.486 );

setRotateKey( spep_3 -3 + 146, 1, 44 );
setRotateKey( spep_3 -3 + 166, 1, 44 );


-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 180, 1, 1 );
setDisp( spep_3 -3 + 218, 1, 0 );
changeAnime( spep_3 -3 + 180, 1, 5 );

setMoveKey( spep_3 -3 + 180, 1, 36.9, 149 , 0 );
setMoveKey( spep_3 -3 + 182, 1, 12.3, 126.8 , 0 );
setMoveKey( spep_3 -3 + 184, 1, 61.5, 115.2 , 0 );
setMoveKey( spep_3 -3 + 186, 1, 174.2, 89.2 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 174.1, 81.2 , 0 );
setMoveKey( spep_3 -3 + 190, 1, 164.2, 86.1 , 0 );
setMoveKey( spep_3 -3 + 192, 1, 159.2, 84.7 , 0 );
setMoveKey( spep_3 -3 + 194, 1, 154.2, 83.4 , 0 );
setMoveKey( spep_3 -3 + 196, 1, 149.5, 82.3 , 0 );
setMoveKey( spep_3 -3 + 198, 1, 145, 81.2 , 0 );
setMoveKey( spep_3 -3 + 200, 1, 140.9, 80.3 , 0 );
setMoveKey( spep_3 -3 + 202, 1, 137.3, 79.4 , 0 );
setMoveKey( spep_3 -3 + 204, 1, 134.1, 78.7 , 0 );
setMoveKey( spep_3 -3 + 206, 1, 131.5, 78.1 , 0 );
setMoveKey( spep_3 -3 + 208, 1, 129.4, 77.6 , 0 );
setMoveKey( spep_3 -3 + 210, 1, 128, 77.2 , 0 );
setMoveKey( spep_3 -3 + 212, 1, 127.3, 77 , 0 );
setMoveKey( spep_3 -3 + 214, 1, 127.2, 76.8 , 0 );
setMoveKey( spep_3 -3 + 216, 1, 127.8, 76.7 , 0 );
setMoveKey( spep_3 -3 + 218, 1, 127.8, 76.7 , 0 );

setScaleKey( spep_3 -3 + 180, 1, 4.2, 4.2 );
setScaleKey( spep_3 -3 + 182, 1, 3.64, 3.64 );
setScaleKey( spep_3 -3 + 184, 1, 2.55, 2.55 );
setScaleKey( spep_3 -3 + 186, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 188, 1, 0.95, 0.95 );
setScaleKey( spep_3 -3 + 190, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 192, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 194, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 196, 1, 0.66, 0.66 );
setScaleKey( spep_3 -3 + 198, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 200, 1, 0.55, 0.55 );
setScaleKey( spep_3 -3 + 202, 1, 0.5, 0.5 );
setScaleKey( spep_3 -3 + 204, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 206, 1, 0.43, 0.43 );
setScaleKey( spep_3 -3 + 208, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 210, 1, 0.38, 0.38 );
setScaleKey( spep_3 -3 + 212, 1, 0.37, 0.37 );
setScaleKey( spep_3 -3 + 214, 1, 0.36, 0.36 );
setScaleKey( spep_3 -3 + 216, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 218, 1, 0.35, 0.35 );

setRotateKey( spep_3 -3 + 180, 1, 84.5 );
setRotateKey( spep_3 -3 + 218, 1, 84.5 );

-- ** 音 ** --
--回り込む
SE044 = playSeVer2( spep_3 + 52, 1116, "",spep_3 + 88, 0, 12, -1);
SE045 = playSeVer2( spep_3 + 52, 1025, "", 0, 14, 0, -1);
SE046 = playSeVer2( spep_3 + 52, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 52, SE046, 84 );
setPitch( spep_3 + 52, SE046, -400 );
setTimeStretch( SE046, 0.73, 30, 4 );

--ヒットパンチ
SE047 = playSeVer2( spep_3 + 116, 1011, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_3 + 116, 1109, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_3 + 116, 1026, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_3 + 140, 1027, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_3 + 140, 1017, "", 0, 0, 0, -1);

--敵飛んでいく
SE052 = playSeVer2( spep_3 + 164, 1121, "",spep_3 + 218, 0, 10, -1);
SE053 = playSeVer2( spep_3 + 164, 1183, "",spep_3 + 218, 0, 10, -1);

--岩衝突
SE054 = playSeVer2( spep_3 + 206, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 206, SE054, 71 );
SE055 = playSeVer2( spep_3 + 206, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 206, SE055, 83 );

--いわなだれ
SE056 = playSeVer2( spep_3 + 274, 1168, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_3 + 274, SE056, 73 );
setStartTimeMs( SE056,  600 );
SE059 = playSeVer2( spep_3 + 272, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 272, SE059, 61 );
SE060 = playSeVer2( spep_3 + 272, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 272, SE060, 71 );

--ヒット歩いてくる
SE057 = playSeVer2( spep_3 + 270, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 270, SE057, 251 );
SE058 = playSeVer2( spep_3 + 270, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 270, SE058, 200 );

--ヒット歩いてくる
SE061 = playSeVer2( spep_3 + 298, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 298, SE061, 251 );
SE062 = playSeVer2( spep_3 + 298, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 298, SE062, 200 );
SE063 = playSeVer2( spep_3 + 326, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 326, SE063, 251 );
SE064 = playSeVer2( spep_3 + 326, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 326, SE064, 200 );
SE065 = playSeVer2( spep_3 + 354, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 354, SE065, 251 );
SE066 = playSeVer2( spep_3 + 354, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 354, SE066, 200 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 386 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景


-- ** ダメージ表示 ** --
dealDamage( spep_3 + 276 );
endPhase( spep_3 + 376 );

end