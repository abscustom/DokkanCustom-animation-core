--1022120:孫悟空&ピッコロ_龍虎旋風乱舞(衣装チェンジ後)
--sp_effect_b1_00155
--sp2225

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
SP_01 = 157481; --開幕 ef_001
SP_02 = 157483; --柱に飛びついて悟空突進 ef_002_ch_w
SP_03 = 157484; --↑敵を挟んで背景 ef_002_bg
SP_04 = 157487; --ピッコロ突進 ef_003_ch_w
SP_05 = 157488; --↑敵を挟んで背景 ef_003_bg
SP_06 = 157491; --敵味方共通の新規書き文字 ef_003_drawtext_common
SP_07 = 157492; --ピッコロとどめの一撃	ef_004_ch_w
SP_08 = 157493; --↑敵を挟んで背景 ef_004_bg
SP_09 = 157496; --悟空上空に舞ってとどめ ef_005_ch
SP_10 = 157497; --↑敵を挟んで背景	ef_005_bg

SP_11 = 157503;  --↑敵味方共通の書き文字 ef_002_drawtext_common
SP_12 = 157504;  --↑書き文字   ef_004_drawtext_common

--敵側
SP_01r = 157482; --開幕　敵側	ef_001_r
SP_02r = 157485; --柱に飛びついて悟空突進　敵側 ef_002_ch_w_r
SP_03r = 157486; --↑敵を挟んで背景 ef_002_bg_r
SP_04r = 157489; --ピッコロ突進　敵側 ef_003_ch_w_r
SP_05r = 157490; --↑敵を挟んで背景 ef_003_bg_r
SP_07r = 157494; --ピッコロとどめの一撃　敵側 ef_004_ch_w_r
SP_08r = 157495; --↑敵を挟んで背景 ef_004_bg_r
SP_09r = 157498; --悟空上空に舞ってとどめ　敵側 ef_005_ch_r
SP_10r = 157499; --↑敵を挟んで背景 ef_005_bg_r

SP_12r = 157505;  --↑書き文字   ef_004_drawtext_common_r

adjustAttackerLabel( 0, 205);

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

ENABLE_AUTO_TIME_STRETCH(0.75);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 開幕(146F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 146, 0x100, -1, 0, 0, 0 );  --開幕	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 146, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 146 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 146, first_f, 0 );

spep_x = spep_0 + 48;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--環境音
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 40 );
stopSe( spep_0 +146 + 2, SE001, 12 );
setPitch( spep_0 + 0, SE001, -300 );
setTimeStretch( SE001, 0.8, 10, 1 );

--入り
SE002 = playSe( spep_0 + 14, 8 );

--顔カットイン
SE003 = playSe( spep_0 + 52, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 146;


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
-- 悟空突進(196F)
------------------------------------------------------

-- ** エフェクト等 ** --
charge_f = entryEffectLife( spep_2 + 0, SP_02, 196, 0x100, -1, 0, 0, 0 );  --柱に飛びついて悟空突進　	ef_002_ch_w
setEffMoveKey( spep_2 + 0, charge_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 196, charge_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, charge_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 196, charge_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, charge_f, 0 );
setEffRotateKey( spep_2 + 196, charge_f, 0 );
setEffAlphaKey( spep_2 + 0, charge_f, 255 );
setEffAlphaKey( spep_2 + 196 -1, charge_f, 255 );
setEffAlphaKey( spep_2 + 196, charge_f, 0 );

charge_b = entryEffectLife( spep_2 + 0, SP_11, 196, 0x100, -1, 0, 0, 0 );  --柱に飛びついて悟空突進　   ef_002_ch_w
setEffMoveKey( spep_2 + 0, charge_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 196, charge_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, charge_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 196, charge_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, charge_b, 0 );
setEffRotateKey( spep_2 + 196, charge_b, 0 );
setEffAlphaKey( spep_2 + 0, charge_b, 255 );
setEffAlphaKey( spep_2 + 196 -1, charge_b, 255 );
setEffAlphaKey( spep_2 + 196, charge_b, 0 );

charge_e = entryEffectLife( spep_2 + 0, SP_03, 196, 0x80, -1, 0, 0, 0 );  --↑敵を挟んで背景    ef_002_bg
setEffMoveKey( spep_2 + 0, charge_e, 0, 0 , 0 );
setEffMoveKey( spep_2 + 196, charge_e, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, charge_e, 1.0, 1.0 );
setEffScaleKey( spep_2 + 196, charge_e, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, charge_e, 0 );
setEffRotateKey( spep_2 + 196, charge_e, 0 );
setEffAlphaKey( spep_2 + 0, charge_e, 255 );
setEffAlphaKey( spep_2 + 196 -1, charge_e, 255 );
setEffAlphaKey( spep_2 + 196, charge_e, 0 );

-- ** 音 ** --
--悟空飛び上がる
SE005 = playSe( spep_2 + 22, 1117 );
stopSe( spep_2 + 50, SE005, 10 );

--悟空飛び上がる
SE006 = playSe( spep_2 + 22, 1003 );

--悟空飛び上がる
SE007 = playSe( spep_2 + 22, 1108 );
setSeVolumeByWorkId( spep_2 + 22, SE007, 158 );

--悟空飛び上がる
SE008 = playSe( spep_2 + 26, 1108 );
setSeVolumeByWorkId( spep_2 + 26, SE008, 132 );

--悟空空中ダッシュ
SE009 = playSe( spep_2 + 50, 1182 );

--悟空空中ダッシュ
SE010 = playSe( spep_2 + 52, 9 );
stopSe( spep_2 + 98, SE010, 8 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 196 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 74 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
   
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
setDisp( spep_2 -3 + 92, 1, 1 );
setDisp( spep_2 -3 + 174, 1, 0 );
changeAnime( spep_2 -3 + 92, 1, 100 );
changeAnime( spep_2 -3 + 104, 1, 106 );
changeAnime( spep_2 -3 + 114, 1, 108 );
changeAnime( spep_2 -3 + 128, 1, 106 );
changeAnime( spep_2 -3 + 142, 1, 108 );
changeAnime( spep_2 -3 + 156, 1, 106 );
changeAnime( spep_2 -3 + 162, 1, 108 );

setMoveKey( spep_2 -3 + 92, 1, 414.7, 340.5 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 364.7, 290.5 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 314.7, 240.5 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 264.7, 190.5 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 214.7, 140.5 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 164.7, 90.6 , 0 );
setMoveKey( spep_2 -3 + 103, 1, 164.7, 90.6 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 76.7, 66.4 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 119.4, 109 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 101.9, 94 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 107, 101.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 106.9, 106.4 , 0 );
setMoveKey( spep_2 -3 + 113, 1, 106.9, 106.4 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 107.8, 173.4 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 134.5, 192.2 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 121.2, 170.9 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 127.9, 169.7 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 134.5, 168.4 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 141.2, 167.2 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 147.9, 165.9 , 0 );
setMoveKey( spep_2 -3 + 127, 1, 147.9, 165.9 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 76.7, 116.4 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 99.4, 144 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 76.9, 129 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 79.4, 123.9 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 79.3, 121.4 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 76.8, 118.8 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 76.8, 135.7 , 0 );
setMoveKey( spep_2 -3 + 141, 1, 76.8, 135.7 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 97.8, 163.4 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 104.6, 178.8 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 83.4, 170.1 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 79.2, 178.5 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 75, 186.8 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 70.9, 195.1 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 66.7, 203.5 , 0 );
setMoveKey( spep_2 -3 + 155, 1, 66.7, 203.5 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 20.1, 150.8 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 41.2, 172.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 29.2, 159.8 , 0 );
setMoveKey( spep_2 -3 + 161, 1, 29.2, 159.8 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 137.1, 214.7 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 162.2, 264.7 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 187.3, 314.7 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 338, 439.7 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 463.5, 589.7 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 563.9, 689.7 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 714.5, 839.7 , 0 );

s1 = 0.4;
s2 = 0.8;
setScaleKey( spep_2 -3 + 92, 1, 2.51 +s1, 2.5 +s1 );
setScaleKey( spep_2 -3 + 113, 1, 2.51 +s1, 2.5 +s1 );
setScaleKey( spep_2 -3 + 114, 1, 2.51 +s2, 2.5 +s2 );
setScaleKey( spep_2 -3 + 127, 1, 2.51 +s2, 2.5 +s2 );
setScaleKey( spep_2 -3 + 128, 1, 2.51 +s1, 2.5 +s1 );
setScaleKey( spep_2 -3 + 141, 1, 2.51 +s1, 2.5 +s1 );
setScaleKey( spep_2 -3 + 142, 1, 2.51 +s2, 2.5 +s2 );
setScaleKey( spep_2 -3 + 155, 1, 2.51 +s2, 2.5 +s2 );
setScaleKey( spep_2 -3 + 156, 1, 2.51 +s1, 2.5 +s1 );
setScaleKey( spep_2 -3 + 161, 1, 2.51 +s1, 2.5 +s1 );
setScaleKey( spep_2 -3 + 162, 1, 2.51 +s2, 2.5 +s2 );
setScaleKey( spep_2 -3 + 174, 1, 2.51 +s2, 2.5 +s2 );

setRotateKey( spep_2 -3 + 92, 1, 0 );
setRotateKey( spep_2 -3 + 103, 1, 0 );
setRotateKey( spep_2 -3 + 104, 1, -57.5 );
setRotateKey( spep_2 -3 + 106, 1, -55.7 );
setRotateKey( spep_2 -3 + 108, 1, -55.7 );
setRotateKey( spep_2 -3 + 110, 1, -54.3 );
setRotateKey( spep_2 -3 + 112, 1, -53.1 );
setRotateKey( spep_2 -3 + 113, 1, -53.1 );
setRotateKey( spep_2 -3 + 114, 1, -10 );
setRotateKey( spep_2 -3 + 116, 1, -8.5 );
setRotateKey( spep_2 -3 + 118, 1, -7.1 );
setRotateKey( spep_2 -3 + 120, 1, -5.6 );
setRotateKey( spep_2 -3 + 122, 1, -4.2 );
setRotateKey( spep_2 -3 + 124, 1, -2.7 );
setRotateKey( spep_2 -3 + 126, 1, -1.3 );
setRotateKey( spep_2 -3 + 127, 1, -1.3 );
setRotateKey( spep_2 -3 + 128, 1, -57.5 );
setRotateKey( spep_2 -3 + 130, 1, -55.7 );
setRotateKey( spep_2 -3 + 132, 1, -55.7 );
setRotateKey( spep_2 -3 + 134, 1, -54.3 );
setRotateKey( spep_2 -3 + 136, 1, -53.1 );
setRotateKey( spep_2 -3 + 138, 1, -51.6 );
setRotateKey( spep_2 -3 + 140, 1, -46 );
setRotateKey( spep_2 -3 + 141, 1, -46 );
setRotateKey( spep_2 -3 + 142, 1, -10 );
setRotateKey( spep_2 -3 + 144, 1, -11.1 );
setRotateKey( spep_2 -3 + 146, 1, -12.2 );
setRotateKey( spep_2 -3 + 148, 1, -13.2 );
setRotateKey( spep_2 -3 + 150, 1, -14.3 );
setRotateKey( spep_2 -3 + 152, 1, -15.4 );
setRotateKey( spep_2 -3 + 154, 1, -16.5 );
setRotateKey( spep_2 -3 + 155, 1, -16.5 );
setRotateKey( spep_2 -3 + 156, 1, -46 );
setRotateKey( spep_2 -3 + 161, 1, -46 );
setRotateKey( spep_2 -3 + 162, 1, -5 );
setRotateKey( spep_2 -3 + 174, 1, -5 );

-- ** 音 ** --
--悟空ラッシュ
SE011 = playSe( spep_2 + 92, 1189 );

--悟空ラッシュ
SE012 = playSe( spep_2 + 96, 1009 );
stopSe( spep_2 + 106, SE012, 10 );

--悟空ラッシュ
SE013 = playSe( spep_2 + 98, 1110 );

--悟空ラッシュ
SE014 = playSe( spep_2 + 98, 1000 );

--悟空ラッシュ
SE015 = playSe( spep_2 + 110, 1010 );
stopSe( spep_2 + 118, SE015, 10 );

--悟空ラッシュ
SE016 = playSe( spep_2 + 112, 1110 );

--悟空ラッシュ
SE017 = playSe( spep_2 + 112, 1000 );
setSeVolumeByWorkId( spep_2 + 112, SE017, 84 );

--悟空ラッシュ
SE018 = playSe( spep_2 + 122, 1009 );
stopSe( spep_2 + 132, SE018, 8 );

--悟空ラッシュ
SE019 = playSe( spep_2 + 122, 1000 );
setSeVolumeByWorkId( spep_2 + 122, SE019, 87 );

--悟空ラッシュ
SE020 = playSe( spep_2 + 124, 1110 );
setSeVolumeByWorkId( spep_2 + 124, SE020, 92 );

--悟空ラッシュ
SE021 = playSe( spep_2 + 136, 1009 );

--悟空ラッシュ
SE022 = playSe( spep_2 + 136, 1000 );
setSeVolumeByWorkId( spep_2 + 140, SE022, 73 );

--悟空ラッシュ
SE023 = playSe( spep_2 + 138, 1110 );
setSeVolumeByWorkId( spep_2 + 138, SE023, 69 );

--悟空蹴り
SE024 = playSe( spep_2 + 152, 1187 );

--悟空蹴り
SE025 = playSe( spep_2 + 152, 1153 );
setSeVolumeByWorkId( spep_2 + 152, SE025, 74 );
stopSe( spep_2 + 174, SE025, 8 );

--悟空ジャンプ
SE026 = playSe( spep_2 + 180, 1207 );
setSeVolumeByWorkId( spep_2 + 180, SE026, 20 );
setSeVolumeByWorkId( spep_2 + 182, SE026, 40 );
setSeVolumeByWorkId( spep_2 + 184, SE026, 60 );
setSeVolumeByWorkId( spep_2 + 186, SE026, 80 );
stopSe( spep_2 +196 + 8, SE026, 42 );
setStartTimeMs( SE026,  100 );

--悟空ジャンプ
SE027 = playSe( spep_2 + 176, 1189 );
setSeVolumeByWorkId( spep_2 + 176, SE027, 279 );

--悟空ジャンプ
SE028 = playSe( spep_2 + 178, 1003 );
setSeVolumeByWorkId( spep_2 + 178, SE028, 72 );

--ピッコロ横ダッシュ
SE029 = playSe( spep_2 + 190, 9 );
setTimeStretch( SE029, 1.18, 10, 1 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 196;


------------------------------------------------------
-- ピッコロ突進(164F)
------------------------------------------------------

-- ** エフェクト等 ** --
prush_b = entryEffectLife( spep_3 + 0, SP_04, 164, 0x100, -1, 0, 0, 0 );  --ピッコロ突進	ef_003_ch_w
setEffMoveKey( spep_3 + 0, prush_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 164, prush_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, prush_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 164, prush_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, prush_b, 0 );
setEffRotateKey( spep_3 + 164, prush_b, 0 );
setEffAlphaKey( spep_3 + 0, prush_b, 255 );
setEffAlphaKey( spep_3 + 164 -1, prush_b, 255 );
setEffAlphaKey( spep_3 + 164, prush_b, 0 );

prush_f = entryEffectLife( spep_3 + 0, SP_06, 164, 0x100, -1, 0, 0, 0 );  --ピッコロ突進	ef_003_ch_w
setEffMoveKey( spep_3 + 0, prush_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 164, prush_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, prush_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 164, prush_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, prush_f, 0 );
setEffRotateKey( spep_3 + 164, prush_f, 0 );
setEffAlphaKey( spep_3 + 0, prush_f, 255 );
setEffAlphaKey( spep_3 + 164 -1, prush_f, 255 );
setEffAlphaKey( spep_3 + 164, prush_f, 0 );

prush_e = entryEffectLife( spep_3 + 0, SP_05, 164, 0x80, -1, 0, 0, 0 );  --↑敵を挟んで背景	ef_003_bg
setEffMoveKey( spep_3 + 0, prush_e, 0, 0 , 0 );
setEffMoveKey( spep_3 + 164, prush_e, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, prush_e, 1.0, 1.0 );
setEffScaleKey( spep_3 + 164, prush_e, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, prush_e, 0 );
setEffRotateKey( spep_3 + 164, prush_e, 0 );
setEffAlphaKey( spep_3 + 0, prush_e, 255 );
setEffAlphaKey( spep_3 + 164 -1, prush_e, 255 );
setEffAlphaKey( spep_3 + 164, prush_e, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 66, 1, 1 );
setDisp( spep_3 -3 + 167, 1, 0 );
changeAnime( spep_3 -3 + 64, 1, 106 );
changeAnime( spep_3 -3 + 82, 1, 108 );
changeAnime( spep_3 -3 + 88, 1, 106 );
changeAnime( spep_3 -3 + 90, 1, 108 );
changeAnime( spep_3 -3 + 96, 1, 106 );
changeAnime( spep_3 -3 + 98, 1, 108 );
changeAnime( spep_3 -3 + 104, 1, 106 );
changeAnime( spep_3 -3 + 106, 1, 108 );
changeAnime( spep_3 -3 + 112, 1, 106 );
changeAnime( spep_3 -3 + 116, 1, 108 );
changeAnime( spep_3 -3 + 122, 1, 106 );
changeAnime( spep_3 -3 + 126, 1, 108 );
changeAnime( spep_3 -3 + 132, 1, 106 );
changeAnime( spep_3 -3 + 134, 1, 108 );
changeAnime( spep_3 -3 + 140, 1, 106 );
changeAnime( spep_3 -3 + 144, 1, 108 );
changeAnime( spep_3 -3 + 150, 1, 106 );
changeAnime( spep_3 -3 + 152, 1, 108 );
changeAnime( spep_3 -3 + 158, 1, 106 );
changeAnime( spep_3 -3 + 162, 1, 108 );

setMoveKey( spep_3 -3 + 64, 1, -380.7, 27.1 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -280.7, 27.1 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -180.7, 27.1 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -100.7, 24.1 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -10.7, 27.1 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 49.3, 24.1 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 59.3, 27.1 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 59.2, 24.1 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 69.3, 27.1 , 0 );
setMoveKey( spep_3 -3 + 81, 1, 69.3, 27.1 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 199.3, 34.2 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 200.2, 47.2 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 181.2, 24.2 , 0 );
setMoveKey( spep_3 -3 + 87, 1, 181.2, 24.2 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 92.2, 27.2 , 0 );
setMoveKey( spep_3 -3 + 89, 1, 92.2, 27.2 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 203.2, 44.2 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 214.1, 47.2 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 205.1, 44.2 , 0 );
setMoveKey( spep_3 -3 + 95, 1, 205.1, 44.2 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 94.1, 31.2 , 0 );
setMoveKey( spep_3 -3 + 97, 1, 94.1, 31.2 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 207.1, 44.2 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 218, 47.2 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 207, 42.2 , 0 );
setMoveKey( spep_3 -3 + 103, 1, 207, 42.2 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 70, 17.2 , 0 );
setMoveKey( spep_3 -3 + 105, 1, 70, 17.2 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 141, 124.2 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 152, 147.2 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 143, 105.2 , 0 );
setMoveKey( spep_3 -3 + 111, 1, 143, 105.2 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 69, 27.2 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 70, 25.2 , 0 );
setMoveKey( spep_3 -3 + 115, 1, 70, 25.2 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 165.8, 47.2 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 169.8, 48.2 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 157.8, 37.2 , 0 );
setMoveKey( spep_3 -3 + 121, 1, 157.8, 37.2 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 72.8, -4.8 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 73.8, -2.8 , 0 );
setMoveKey( spep_3 -3 + 125, 1, 73.8, -2.8 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 150.8, 125.2 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 161.7, 147.2 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 152.7, 104.2 , 0 );
setMoveKey( spep_3 -3 + 131, 1, 152.7, 104.2 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 77.7, -2.8 , 0 );
setMoveKey( spep_3 -3 + 133, 1, 77.7, -2.8 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 274.6, 45.2 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 275.6, 58.2 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 256.6, 46.2 , 0 );
setMoveKey( spep_3 -3 + 139, 1, 256.6, 46.2 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 117.6, 28.2 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 118.6, 26.2 , 0 );
setMoveKey( spep_3 -3 + 143, 1, 118.6, 26.2 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 229.5, 48.2 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 230.5, 46.2 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 241.4, 51 , 0 );
setMoveKey( spep_3 -3 + 149, 1, 241.4, 51 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 92.5, 19 , 0 );
setMoveKey( spep_3 -3 + 151, 1, 92.5, 19 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 233.4, 51 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 237.4, 53 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 225.3, 41 , 0 );
setMoveKey( spep_3 -3 + 157, 1, 225.3, 41 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 113.4, 28 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 102.4, 31 , 0 );
setMoveKey( spep_3 -3 + 161, 1, 102.4, 31 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 168.3, 129 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 169.3, 131 , 0 );
setMoveKey( spep_3 -3 + 167, 1, 169.3, 129 , 0 );

s3 = 0.3;
s4 = 0.6;
setScaleKey( spep_3 -3 + 64, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 81, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 82, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 87, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 88, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 89, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 90, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 95, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 96, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 97, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 98, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 103, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 104, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 105, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 106, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 111, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 112, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 115, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 116, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 121, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 122, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 125, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 126, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 131, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 132, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 133, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 134, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 139, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 140, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 143, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 144, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 149, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 150, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 151, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 152, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 157, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 158, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 161, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 162, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 167, 1, 2.4 +s4, 2.4 +s4 );

setRotateKey( spep_3 -3 + 64, 1, -30 );
setRotateKey( spep_3 -3 + 80, 1, -30 );
setRotateKey( spep_3 -3 + 81, 1, -30 );
setRotateKey( spep_3 -3 + 82, 1, -2.2 );
setRotateKey( spep_3 -3 + 84, 1, -4.5 );
setRotateKey( spep_3 -3 + 86, 1, -2.7 );
setRotateKey( spep_3 -3 + 87, 1, -2.7 );
setRotateKey( spep_3 -3 + 88, 1, -35.4 );
setRotateKey( spep_3 -3 + 89, 1, -35.4 );
setRotateKey( spep_3 -3 + 90, 1, 0 );
setRotateKey( spep_3 -3 + 92, 1, 0 );
setRotateKey( spep_3 -3 + 94, 1, -2.5 );
setRotateKey( spep_3 -3 + 95, 1, -2.5 );
setRotateKey( spep_3 -3 + 96, 1, -56.6 );
setRotateKey( spep_3 -3 + 97, 1, -56.6 );
setRotateKey( spep_3 -3 + 98, 1, -3 );
setRotateKey( spep_3 -3 + 100, 1, -1.7 );
setRotateKey( spep_3 -3 + 102, 1, -1.7 );
setRotateKey( spep_3 -3 + 103, 1, -1.7 );
setRotateKey( spep_3 -3 + 104, 1, -52.9 );
setRotateKey( spep_3 -3 + 105, 1, -52.9 );
setRotateKey( spep_3 -3 + 106, 1, -18 );
setRotateKey( spep_3 -3 + 108, 1, -19.5 );
setRotateKey( spep_3 -3 + 110, 1, -15 );
setRotateKey( spep_3 -3 + 111, 1, -15 );
setRotateKey( spep_3 -3 + 112, 1, -57.9 );
setRotateKey( spep_3 -3 + 114, 1, -57.9 );
setRotateKey( spep_3 -3 + 115, 1, -57.9 );
setRotateKey( spep_3 -3 + 116, 1, -6.7 );
setRotateKey( spep_3 -3 + 120, 1, -6.7 );
setRotateKey( spep_3 -3 + 121, 1, -6.7 );
setRotateKey( spep_3 -3 + 122, 1, -57.1 );
setRotateKey( spep_3 -3 + 124, 1, -57.1 );
setRotateKey( spep_3 -3 + 125, 1, -57.1 );
setRotateKey( spep_3 -3 + 126, 1, -18 );
setRotateKey( spep_3 -3 + 128, 1, -19.5 );
setRotateKey( spep_3 -3 + 130, 1, -15 );
setRotateKey( spep_3 -3 + 131, 1, -15 );
setRotateKey( spep_3 -3 + 132, 1, -57.1 );
setRotateKey( spep_3 -3 + 133, 1, -57.1 );
setRotateKey( spep_3 -3 + 134, 1, -2.2 );
setRotateKey( spep_3 -3 + 136, 1, -4.5 );
setRotateKey( spep_3 -3 + 138, 1, -2.7 );
setRotateKey( spep_3 -3 + 139, 1, -2.7 );
setRotateKey( spep_3 -3 + 140, 1, -35.4 );
setRotateKey( spep_3 -3 + 143, 1, -35.4 );
setRotateKey( spep_3 -3 + 144, 1, 0 );
setRotateKey( spep_3 -3 + 149, 1, 0 );
setRotateKey( spep_3 -3 + 150, 1, -52.9 );
setRotateKey( spep_3 -3 + 151, 1, -52.9 );
setRotateKey( spep_3 -3 + 152, 1, -6.7 );
setRotateKey( spep_3 -3 + 157, 1, -6.7 );
setRotateKey( spep_3 -3 + 158, 1, -57.9 );
setRotateKey( spep_3 -3 + 161, 1, -57.9 );
setRotateKey( spep_3 -3 + 162, 1, -18 );
setRotateKey( spep_3 -3 + 167, 1, -18 );

-- ** 音 ** --
--ピッコロラッシュ
SE030 = playSe( spep_3 + 56, 44 );
stopSe( spep_3 + 68, SE030, 10 );

--ピッコロラッシュ
SE031 = playSe( spep_3 + 68, 1189 );

--ピッコロラッシュ
SE032 = playSe( spep_3 + 72, 1170 );
stopSe( spep_3 + 86, SE032, 10 );

--ピッコロラッシュ
SE033 = playSe( spep_3 + 74, 1110 );

--ピッコロラッシュ
SE034 = playSe( spep_3 + 74, 1000 );

--ピッコロラッシュ
SE035 = playSe( spep_3 + 82, 1110 );

--ピッコロラッシュ
SE036 = playSe( spep_3 + 82, 1000 );
setSeVolumeByWorkId( spep_3 + 82, SE036, 82 );

--ピッコロラッシュ
SE037 = playSe( spep_3 + 90, 1170 );
stopSe( spep_3 + 104, SE037, 10 );

--ピッコロラッシュ
SE038 = playSe( spep_3 + 90, 1110 );
setSeVolumeByWorkId( spep_3 + 90, SE038, 80 );

--ピッコロラッシュ
SE039 = playSe( spep_3 + 98, 1010 );

--ピッコロラッシュ
SE040 = playSe( spep_3 + 108, 1110 );

--ピッコロラッシュ
SE041 = playSe( spep_3 + 108, 1000 );
setSeVolumeByWorkId( spep_3 + 108, SE041, 84 );

--ピッコロラッシュ
SE042 = playSe( spep_3 + 118, 1170 );
stopSe( spep_3 + 132, SE042, 10 );

--ピッコロラッシュ
SE043 = playSe( spep_3 + 118, 1110 );

--ピッコロラッシュ
SE044 = playSe( spep_3 + 126, 1110 );
setSeVolumeByWorkId( spep_3 + 126, SE044, 80 );

--ピッコロラッシュ
SE045 = playSe( spep_3 + 126, 1000 );
setSeVolumeByWorkId( spep_3 + 126, SE045, 94 );

--ピッコロラッシュ
SE046 = playSe( spep_3 + 134, 1110 );
setSeVolumeByWorkId( spep_3 + 134, SE046, 77 );

--ピッコロラッシュ
SE047 = playSe( spep_3 + 134, 1000 );
setSeVolumeByWorkId( spep_3 + 134, SE047, 97 );

--ピッコロラッシュ
SE048 = playSe( spep_3 + 142, 1110 );
setSeVolumeByWorkId( spep_3 + 142, SE048, 87 );

--ピッコロラッシュ
SE049 = playSe( spep_3 + 142, 1000 );

--ピッコロラッシュ
SE050 = playSe( spep_3 + 152, 1170 );
stopSe( spep_3 +164 + 2, SE050, 10 );

--ピッコロラッシュ
SE051 = playSe( spep_3 + 152, 1110 );

--ピッコロ振りかぶる
SE052 = playSe( spep_3 + 156, 1330 );
stopSe( spep_3 +164 + 50, SE052, 10 );

--ピッコロ振りかぶる
SE053 = playSe( spep_3 + 156, 1116 );
stopSe( spep_3 +164 + 18, SE053, 16 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 164 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 164;


------------------------------------------------------
-- ピッコロとどめの一撃(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_4 + 0, SP_07, 96, 0x100, -1, 0, 0, 0 );  --ピッコロとどめの一撃	ef_004_ch_w
setEffMoveKey( spep_4 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, punch_f, 0 );
setEffRotateKey( spep_4 + 96, punch_f, 0 );
setEffAlphaKey( spep_4 + 0, punch_f, 255 );
setEffAlphaKey( spep_4 + 96 -1, punch_f, 255 );
setEffAlphaKey( spep_4 + 96, punch_f, 0 );

punch_b = entryEffectLife( spep_4 + 0, SP_12, 96, 0x100, -1, 0, 0, 0 );  --↑敵を挟んで背景  ef_004_bg
setEffMoveKey( spep_4 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, punch_b, 0 );
setEffRotateKey( spep_4 + 96, punch_b, 0 );
setEffAlphaKey( spep_4 + 0, punch_b, 255 );
setEffAlphaKey( spep_4 + 96 -1, punch_b, 255 );
setEffAlphaKey( spep_4 + 96, punch_b, 0 );

punch_e = entryEffectLife( spep_4 + 0, SP_08, 96, 0x80, -1, 0, 0, 0 );  --↑敵を挟んで背景	ef_004_bg
setEffMoveKey( spep_4 + 0, punch_e, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, punch_e, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, punch_e, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, punch_e, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, punch_e, 0 );
setEffRotateKey( spep_4 + 96, punch_e, 0 );
setEffAlphaKey( spep_4 + 0, punch_e, 255 );
setEffAlphaKey( spep_4 + 96 -1, punch_e, 255 );
setEffAlphaKey( spep_4 + 96, punch_e, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 60, 1, 1 );
setDisp( spep_4 -3 + 88, 1, 0 );
changeAnime( spep_4 -3 + 60, 1, 106 );

setMoveKey( spep_4 -3 + 60, 1, 27.8, 68.9 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 27.8, 68.9 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 67.8, 68.9 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 27.8, 68.9 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 257.8, 68.9 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 339.5, 92.1 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 722.4, 87.5 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 998.5, 82.9 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 1165, 79.5 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 1220.6, 78.3 , 0 );

s5 = 0.2;
setScaleKey( spep_4 -3 + 60, 1, 2.5 +s5, 2.5 +s5 );
setScaleKey( spep_4 -3 + 88, 1, 2.5 +s5, 2.5 +s5 );

setRotateKey( spep_4 -3 + 60, 1, -35.5 );
setRotateKey( spep_4 -3 + 78, 1, -35.5 );
setRotateKey( spep_4 -3 + 80, 1, -17.7 );
setRotateKey( spep_4 -3 + 82, 1, -3.6 );
setRotateKey( spep_4 -3 + 84, 1, 6.5 );
setRotateKey( spep_4 -3 + 86, 1, 12.5 );
setRotateKey( spep_4 -3 + 88, 1, 14.5 );

-- ** 音 ** --
--ピッコロパンチ
SE054 = playSe( spep_4 + 56, 1003 );

--ピッコロパンチ
SE055 = playSe( spep_4 + 56, 1120 );

--悟空飛んでくる
SE056 = playSe( spep_4 + 90, 1117 );

--悟空飛んでくる
SE057 = playSe( spep_4 + 90, 1004 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 96;


------------------------------------------------------
-- 悟空上空に舞ってとどめ(220F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --悟空上空に舞ってとどめ	ef_005_ch
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 226, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 226, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 226, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 226, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --ef_005_bg
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 226, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 226, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 226, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 226, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 82, 1, 1 );
setDisp( spep_5 -3 + 134, 1, 0 );
changeAnime( spep_5 -3 + 82, 1, 106 );
changeAnime( spep_5 -3 + 108, 1, 108 );

setMoveKey( spep_5 -3 + 82, 1, -260, -45.8 , 0 );
setMoveKey( spep_5 -3 + 84, 1, -7.5, -33.6 , 0 );
setMoveKey( spep_5 -3 + 86, 1, -4.1, -33.6 , 0 );
setMoveKey( spep_5 -3 + 88, 1, -0.9, -33.6 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 2, -33.6 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 4.6, -33.6 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 6.8, -33.6 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 8.8, -33.6 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 10.5, -33.6 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 11.9, -33.6 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 12.9, -33.6 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 13.7, -33.6 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 14.1, -33.7 , 0 );
setMoveKey( spep_5 -3 + 107, 1, 14.1, -33.7 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 24.2, -83.8 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 144.2, -363.8 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 150.9, -376.9 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 141.7, -359.1 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 151.4, -383.2 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 143.2, -356.4 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 152.9, -379.5 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 154.7, -382.7 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 156.5, -385.9 , 0 );
setMoveKey( spep_5 -3 + 126, 1, 307.2, -557.2 , 0 );
setMoveKey( spep_5 -3 + 128, 1, 424.4, -690.4 , 0 );
setMoveKey( spep_5 -3 + 130, 1, 508.2, -785.6 , 0 );
setMoveKey( spep_5 -3 + 132, 1, 558.4, -842.7 , 0 );
setMoveKey( spep_5 -3 + 134, 1, 575.2, -861.8 , 0 );

s6 = 0.15;
s7 = 0.45;
setScaleKey( spep_5 -3 + 82, 1, 2 +s6, 2 +s6 );
setScaleKey( spep_5 -3 + 107, 1, 2 +s6, 2 +s6 );
setScaleKey( spep_5 -3 + 108, 1, 2 +s7, 2 +s7 );
setScaleKey( spep_5 -3 + 134, 1, 2 +s7, 2 +s7 );

setRotateKey( spep_5 -3 + 82, 1, 27.5 );
setRotateKey( spep_5 -3 + 84, 1, 28 );
setRotateKey( spep_5 -3 + 107, 1, 28 );
setRotateKey( spep_5 -3 + 108, 1, 78 );
setRotateKey( spep_5 -3 + 110, 1, 78 );
setRotateKey( spep_5 -3 + 112, 1, 78.1 );
setRotateKey( spep_5 -3 + 114, 1, 78.2 );
setRotateKey( spep_5 -3 + 116, 1, 78.3 );
setRotateKey( spep_5 -3 + 118, 1, 78.4 );
setRotateKey( spep_5 -3 + 120, 1, 78.5 );
setRotateKey( spep_5 -3 + 122, 1, 78.6 );
setRotateKey( spep_5 -3 + 124, 1, 78.7 );
setRotateKey( spep_5 -3 + 126, 1, 78.9 );
setRotateKey( spep_5 -3 + 128, 1, 79 );
setRotateKey( spep_5 -3 + 130, 1, 79.1 );
setRotateKey( spep_5 -3 + 132, 1, 79.2 );
setRotateKey( spep_5 -3 + 134, 1, 79.2 );

-- ** 音 ** --
--悟空飛んでくる
SE058 = playSe( spep_5 + 6, 1207 );
setSeVolumeByWorkId( spep_5 + 6, SE058, 25 );
setSeVolumeByWorkId( spep_5 + 8, SE058, 50 );
setSeVolumeByWorkId( spep_5 + 10, SE058, 75 );
setSeVolumeByWorkId( spep_5 + 12, SE058, 100 );
setStartTimeMs( SE058,  100 );

--悟空飛んでくる
SE059 = playSe( spep_5 + 8, 1116 );

--岩崩れ音
SE060 = playSe( spep_5 + 126, 1168 );
setSeVolumeByWorkId( spep_5 + 126, SE060, 20 );
setSeVolumeByWorkId( spep_5 + 127, SE060, 40 );
setSeVolumeByWorkId( spep_5 + 128, SE060, 60 );
setSeVolumeByWorkId( spep_5 + 129, SE060, 80 );
setSeVolumeByWorkId( spep_5 + 130, SE060, 100 );
setStartTimeMs( SE060,  1183 );

--悟空ラスト蹴り
SE061 = playSe( spep_5 + 98, 1123 );
setSeVolumeByWorkId( spep_5 + 98, SE061, 79 );

--悟空ラスト蹴り
SE062 = playSe( spep_5 + 102, 1190 );
setSeVolumeByWorkId( spep_5 + 102, SE062, 88 );

--悟空ラスト蹴り
SE063 = playSe( spep_5 + 102, 1153 );
setSeVolumeByWorkId( spep_5 + 102, SE063, 92 );

--悟空ラスト蹴り
SE064 = playSe( spep_5 + 102, 1187 );
setSeVolumeByWorkId( spep_5 + 102, SE064, 91 );

--悟空ラスト蹴り
SE065 = playSe( spep_5 + 102, 1011 );
setSeVolumeByWorkId( spep_5 + 102, SE065, 90 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 226 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 110 );
endPhase( spep_5 + 216 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕(146F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 146, 0x100, -1, 0, 0, 0 );  --開幕  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 146, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 146, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 146 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 146, first_f, 0 );

spep_x = spep_0 + 48;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--環境音
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 40 );
stopSe( spep_0 +146 + 2, SE001, 12 );
setPitch( spep_0 + 0, SE001, -300 );
setTimeStretch( SE001, 0.8, 10, 1 );

--入り
SE002 = playSe( spep_0 + 14, 8 );

--顔カットイン
SE003 = playSe( spep_0 + 52, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

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
playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 悟空突進(196F)
------------------------------------------------------

-- ** エフェクト等 ** --
charge_f = entryEffectLife( spep_2 + 0, SP_02r, 196, 0x100, -1, 0, 0, 0 );  --柱に飛びついて悟空突進　   ef_002_ch_w
setEffMoveKey( spep_2 + 0, charge_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 196, charge_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, charge_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 196, charge_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, charge_f, 0 );
setEffRotateKey( spep_2 + 196, charge_f, 0 );
setEffAlphaKey( spep_2 + 0, charge_f, 255 );
setEffAlphaKey( spep_2 + 196 -1, charge_f, 255 );
setEffAlphaKey( spep_2 + 196, charge_f, 0 );

charge_b = entryEffectLife( spep_2 + 0, SP_11, 196, 0x100, -1, 0, 0, 0 );  --柱に飛びついて悟空突進　   ef_002_ch_w
setEffMoveKey( spep_2 + 0, charge_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 196, charge_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, charge_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 196, charge_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, charge_b, 0 );
setEffRotateKey( spep_2 + 196, charge_b, 0 );
setEffAlphaKey( spep_2 + 0, charge_b, 255 );
setEffAlphaKey( spep_2 + 196 -1, charge_b, 255 );
setEffAlphaKey( spep_2 + 196, charge_b, 0 );

charge_e = entryEffectLife( spep_2 + 0, SP_03r, 196, 0x80, -1, 0, 0, 0 );  --↑敵を挟んで背景    ef_002_bg
setEffMoveKey( spep_2 + 0, charge_e, 0, 0 , 0 );
setEffMoveKey( spep_2 + 196, charge_e, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, charge_e, -1.0, 1.0 );
setEffScaleKey( spep_2 + 196, charge_e, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, charge_e, 0 );
setEffRotateKey( spep_2 + 196, charge_e, 0 );
setEffAlphaKey( spep_2 + 0, charge_e, 255 );
setEffAlphaKey( spep_2 + 196 -1, charge_e, 255 );
setEffAlphaKey( spep_2 + 196, charge_e, 0 );

-- ** 音 ** --
--悟空飛び上がる
SE005 = playSe( spep_2 + 22, 1117 );
stopSe( spep_2 + 50, SE005, 10 );

--悟空飛び上がる
SE006 = playSe( spep_2 + 22, 1003 );

--悟空飛び上がる
SE007 = playSe( spep_2 + 22, 1108 );
setSeVolumeByWorkId( spep_2 + 22, SE007, 158 );

--悟空飛び上がる
SE008 = playSe( spep_2 + 26, 1108 );
setSeVolumeByWorkId( spep_2 + 26, SE008, 132 );

--悟空空中ダッシュ
SE009 = playSe( spep_2 + 50, 1182 );

--悟空空中ダッシュ
SE010 = playSe( spep_2 + 52, 9 );
stopSe( spep_2 + 98, SE010, 8 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 196 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 74 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
   
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
setDisp( spep_2 -3 + 92, 1, 1 );
setDisp( spep_2 -3 + 174, 1, 0 );
changeAnime( spep_2 -3 + 92, 1, 100 );
changeAnime( spep_2 -3 + 104, 1, 106 );
changeAnime( spep_2 -3 + 114, 1, 108 );
changeAnime( spep_2 -3 + 128, 1, 106 );
changeAnime( spep_2 -3 + 142, 1, 108 );
changeAnime( spep_2 -3 + 156, 1, 106 );
changeAnime( spep_2 -3 + 162, 1, 108 );

setMoveKey( spep_2 -3 + 92, 1, 414.7, 340.5 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 364.7, 290.5 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 314.7, 240.5 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 264.7, 190.5 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 214.7, 140.5 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 164.7, 90.6 , 0 );
setMoveKey( spep_2 -3 + 103, 1, 164.7, 90.6 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 76.7, 66.4 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 119.4, 109 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 101.9, 94 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 107, 101.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 106.9, 106.4 , 0 );
setMoveKey( spep_2 -3 + 113, 1, 106.9, 106.4 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 107.8, 173.4 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 134.5, 192.2 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 121.2, 170.9 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 127.9, 169.7 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 134.5, 168.4 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 141.2, 167.2 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 147.9, 165.9 , 0 );
setMoveKey( spep_2 -3 + 127, 1, 147.9, 165.9 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 76.7, 116.4 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 99.4, 144 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 76.9, 129 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 79.4, 123.9 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 79.3, 121.4 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 76.8, 118.8 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 76.8, 135.7 , 0 );
setMoveKey( spep_2 -3 + 141, 1, 76.8, 135.7 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 97.8, 163.4 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 104.6, 178.8 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 83.4, 170.1 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 79.2, 178.5 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 75, 186.8 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 70.9, 195.1 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 66.7, 203.5 , 0 );
setMoveKey( spep_2 -3 + 155, 1, 66.7, 203.5 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 20.1, 150.8 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 41.2, 172.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 29.2, 159.8 , 0 );
setMoveKey( spep_2 -3 + 161, 1, 29.2, 159.8 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 137.1, 214.7 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 162.2, 264.7 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 187.3, 314.7 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 338, 439.7 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 463.5, 589.7 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 563.9, 689.7 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 714.5, 839.7 , 0 );

s1 = 0.4;
s2 = 0.8;
setScaleKey( spep_2 -3 + 92, 1, 2.51 +s1, 2.5 +s1 );
setScaleKey( spep_2 -3 + 113, 1, 2.51 +s1, 2.5 +s1 );
setScaleKey( spep_2 -3 + 114, 1, 2.51 +s2, 2.5 +s2 );
setScaleKey( spep_2 -3 + 127, 1, 2.51 +s2, 2.5 +s2 );
setScaleKey( spep_2 -3 + 128, 1, 2.51 +s1, 2.5 +s1 );
setScaleKey( spep_2 -3 + 141, 1, 2.51 +s1, 2.5 +s1 );
setScaleKey( spep_2 -3 + 142, 1, 2.51 +s2, 2.5 +s2 );
setScaleKey( spep_2 -3 + 155, 1, 2.51 +s2, 2.5 +s2 );
setScaleKey( spep_2 -3 + 156, 1, 2.51 +s1, 2.5 +s1 );
setScaleKey( spep_2 -3 + 161, 1, 2.51 +s1, 2.5 +s1 );
setScaleKey( spep_2 -3 + 162, 1, 2.51 +s2, 2.5 +s2 );
setScaleKey( spep_2 -3 + 174, 1, 2.51 +s2, 2.5 +s2 );

setRotateKey( spep_2 -3 + 92, 1, 0 );
setRotateKey( spep_2 -3 + 103, 1, 0 );
setRotateKey( spep_2 -3 + 104, 1, -57.5 );
setRotateKey( spep_2 -3 + 106, 1, -55.7 );
setRotateKey( spep_2 -3 + 108, 1, -55.7 );
setRotateKey( spep_2 -3 + 110, 1, -54.3 );
setRotateKey( spep_2 -3 + 112, 1, -53.1 );
setRotateKey( spep_2 -3 + 113, 1, -53.1 );
setRotateKey( spep_2 -3 + 114, 1, -10 );
setRotateKey( spep_2 -3 + 116, 1, -8.5 );
setRotateKey( spep_2 -3 + 118, 1, -7.1 );
setRotateKey( spep_2 -3 + 120, 1, -5.6 );
setRotateKey( spep_2 -3 + 122, 1, -4.2 );
setRotateKey( spep_2 -3 + 124, 1, -2.7 );
setRotateKey( spep_2 -3 + 126, 1, -1.3 );
setRotateKey( spep_2 -3 + 127, 1, -1.3 );
setRotateKey( spep_2 -3 + 128, 1, -57.5 );
setRotateKey( spep_2 -3 + 130, 1, -55.7 );
setRotateKey( spep_2 -3 + 132, 1, -55.7 );
setRotateKey( spep_2 -3 + 134, 1, -54.3 );
setRotateKey( spep_2 -3 + 136, 1, -53.1 );
setRotateKey( spep_2 -3 + 138, 1, -51.6 );
setRotateKey( spep_2 -3 + 140, 1, -46 );
setRotateKey( spep_2 -3 + 141, 1, -46 );
setRotateKey( spep_2 -3 + 142, 1, -10 );
setRotateKey( spep_2 -3 + 144, 1, -11.1 );
setRotateKey( spep_2 -3 + 146, 1, -12.2 );
setRotateKey( spep_2 -3 + 148, 1, -13.2 );
setRotateKey( spep_2 -3 + 150, 1, -14.3 );
setRotateKey( spep_2 -3 + 152, 1, -15.4 );
setRotateKey( spep_2 -3 + 154, 1, -16.5 );
setRotateKey( spep_2 -3 + 155, 1, -16.5 );
setRotateKey( spep_2 -3 + 156, 1, -46 );
setRotateKey( spep_2 -3 + 161, 1, -46 );
setRotateKey( spep_2 -3 + 162, 1, -5 );
setRotateKey( spep_2 -3 + 174, 1, -5 );

-- ** 音 ** --
--悟空ラッシュ
SE011 = playSe( spep_2 + 92, 1189 );

--悟空ラッシュ
SE012 = playSe( spep_2 + 96, 1009 );
stopSe( spep_2 + 106, SE012, 10 );

--悟空ラッシュ
SE013 = playSe( spep_2 + 98, 1110 );

--悟空ラッシュ
SE014 = playSe( spep_2 + 98, 1000 );

--悟空ラッシュ
SE015 = playSe( spep_2 + 110, 1010 );
stopSe( spep_2 + 118, SE015, 10 );

--悟空ラッシュ
SE016 = playSe( spep_2 + 112, 1110 );

--悟空ラッシュ
SE017 = playSe( spep_2 + 112, 1000 );
setSeVolumeByWorkId( spep_2 + 112, SE017, 84 );

--悟空ラッシュ
SE018 = playSe( spep_2 + 122, 1009 );
stopSe( spep_2 + 132, SE018, 8 );

--悟空ラッシュ
SE019 = playSe( spep_2 + 122, 1000 );
setSeVolumeByWorkId( spep_2 + 122, SE019, 87 );

--悟空ラッシュ
SE020 = playSe( spep_2 + 124, 1110 );
setSeVolumeByWorkId( spep_2 + 124, SE020, 92 );

--悟空ラッシュ
SE021 = playSe( spep_2 + 136, 1009 );

--悟空ラッシュ
SE022 = playSe( spep_2 + 136, 1000 );
setSeVolumeByWorkId( spep_2 + 140, SE022, 73 );

--悟空ラッシュ
SE023 = playSe( spep_2 + 138, 1110 );
setSeVolumeByWorkId( spep_2 + 138, SE023, 69 );

--悟空蹴り
SE024 = playSe( spep_2 + 152, 1187 );

--悟空蹴り
SE025 = playSe( spep_2 + 152, 1153 );
setSeVolumeByWorkId( spep_2 + 152, SE025, 74 );
stopSe( spep_2 + 174, SE025, 8 );

--悟空ジャンプ
SE026 = playSe( spep_2 + 180, 1207 );
setSeVolumeByWorkId( spep_2 + 180, SE026, 20 );
setSeVolumeByWorkId( spep_2 + 182, SE026, 40 );
setSeVolumeByWorkId( spep_2 + 184, SE026, 60 );
setSeVolumeByWorkId( spep_2 + 186, SE026, 80 );
stopSe( spep_2 +196 + 8, SE026, 42 );
setStartTimeMs( SE026,  100 );

--悟空ジャンプ
SE027 = playSe( spep_2 + 176, 1189 );
setSeVolumeByWorkId( spep_2 + 176, SE027, 279 );

--悟空ジャンプ
SE028 = playSe( spep_2 + 178, 1003 );
setSeVolumeByWorkId( spep_2 + 178, SE028, 72 );

--ピッコロ横ダッシュ
SE029 = playSe( spep_2 + 190, 9 );
setTimeStretch( SE029, 1.18, 10, 1 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 196;


------------------------------------------------------
-- ピッコロ突進(164F)
------------------------------------------------------

-- ** エフェクト等 ** --
prush_b = entryEffectLife( spep_3 + 0, SP_04r, 164, 0x100, -1, 0, 0, 0 );  --ピッコロ突進  ef_003_ch_w
setEffMoveKey( spep_3 + 0, prush_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 164, prush_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, prush_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 164, prush_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, prush_b, 0 );
setEffRotateKey( spep_3 + 164, prush_b, 0 );
setEffAlphaKey( spep_3 + 0, prush_b, 255 );
setEffAlphaKey( spep_3 + 164 -1, prush_b, 255 );
setEffAlphaKey( spep_3 + 164, prush_b, 0 );

prush_f = entryEffectLife( spep_3 + 0, SP_06, 164, 0x100, -1, 0, 0, 0 );  --ピッコロ突進  ef_003_ch_w
setEffMoveKey( spep_3 + 0, prush_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 164, prush_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, prush_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 164, prush_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, prush_f, 0 );
setEffRotateKey( spep_3 + 164, prush_f, 0 );
setEffAlphaKey( spep_3 + 0, prush_f, 255 );
setEffAlphaKey( spep_3 + 164 -1, prush_f, 255 );
setEffAlphaKey( spep_3 + 164, prush_f, 0 );

prush_e = entryEffectLife( spep_3 + 0, SP_05r, 164, 0x80, -1, 0, 0, 0 );  --↑敵を挟んで背景 ef_003_bg
setEffMoveKey( spep_3 + 0, prush_e, 0, 0 , 0 );
setEffMoveKey( spep_3 + 164, prush_e, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, prush_e, -1.0, 1.0 );
setEffScaleKey( spep_3 + 164, prush_e, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, prush_e, 0 );
setEffRotateKey( spep_3 + 164, prush_e, 0 );
setEffAlphaKey( spep_3 + 0, prush_e, 255 );
setEffAlphaKey( spep_3 + 164 -1, prush_e, 255 );
setEffAlphaKey( spep_3 + 164, prush_e, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 66, 1, 1 );
setDisp( spep_3 -3 + 167, 1, 0 );
changeAnime( spep_3 -3 + 64, 1, 106 );
changeAnime( spep_3 -3 + 82, 1, 108 );
changeAnime( spep_3 -3 + 88, 1, 106 );
changeAnime( spep_3 -3 + 90, 1, 108 );
changeAnime( spep_3 -3 + 96, 1, 106 );
changeAnime( spep_3 -3 + 98, 1, 108 );
changeAnime( spep_3 -3 + 104, 1, 106 );
changeAnime( spep_3 -3 + 106, 1, 108 );
changeAnime( spep_3 -3 + 112, 1, 106 );
changeAnime( spep_3 -3 + 116, 1, 108 );
changeAnime( spep_3 -3 + 122, 1, 106 );
changeAnime( spep_3 -3 + 126, 1, 108 );
changeAnime( spep_3 -3 + 132, 1, 106 );
changeAnime( spep_3 -3 + 134, 1, 108 );
changeAnime( spep_3 -3 + 140, 1, 106 );
changeAnime( spep_3 -3 + 144, 1, 108 );
changeAnime( spep_3 -3 + 150, 1, 106 );
changeAnime( spep_3 -3 + 152, 1, 108 );
changeAnime( spep_3 -3 + 158, 1, 106 );
changeAnime( spep_3 -3 + 162, 1, 108 );

setMoveKey( spep_3 -3 + 64, 1, -380.7, 27.1 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -280.7, 27.1 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -180.7, 27.1 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -100.7, 24.1 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -10.7, 27.1 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 49.3, 24.1 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 59.3, 27.1 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 59.2, 24.1 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 69.3, 27.1 , 0 );
setMoveKey( spep_3 -3 + 81, 1, 69.3, 27.1 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 199.3, 34.2 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 200.2, 47.2 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 181.2, 24.2 , 0 );
setMoveKey( spep_3 -3 + 87, 1, 181.2, 24.2 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 92.2, 27.2 , 0 );
setMoveKey( spep_3 -3 + 89, 1, 92.2, 27.2 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 203.2, 44.2 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 214.1, 47.2 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 205.1, 44.2 , 0 );
setMoveKey( spep_3 -3 + 95, 1, 205.1, 44.2 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 94.1, 31.2 , 0 );
setMoveKey( spep_3 -3 + 97, 1, 94.1, 31.2 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 207.1, 44.2 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 218, 47.2 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 207, 42.2 , 0 );
setMoveKey( spep_3 -3 + 103, 1, 207, 42.2 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 70, 17.2 , 0 );
setMoveKey( spep_3 -3 + 105, 1, 70, 17.2 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 141, 124.2 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 152, 147.2 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 143, 105.2 , 0 );
setMoveKey( spep_3 -3 + 111, 1, 143, 105.2 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 69, 27.2 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 70, 25.2 , 0 );
setMoveKey( spep_3 -3 + 115, 1, 70, 25.2 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 165.8, 47.2 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 169.8, 48.2 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 157.8, 37.2 , 0 );
setMoveKey( spep_3 -3 + 121, 1, 157.8, 37.2 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 72.8, -4.8 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 73.8, -2.8 , 0 );
setMoveKey( spep_3 -3 + 125, 1, 73.8, -2.8 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 150.8, 125.2 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 161.7, 147.2 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 152.7, 104.2 , 0 );
setMoveKey( spep_3 -3 + 131, 1, 152.7, 104.2 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 77.7, -2.8 , 0 );
setMoveKey( spep_3 -3 + 133, 1, 77.7, -2.8 , 0 );
setMoveKey( spep_3 -3 + 134, 1, 274.6, 45.2 , 0 );
setMoveKey( spep_3 -3 + 136, 1, 275.6, 58.2 , 0 );
setMoveKey( spep_3 -3 + 138, 1, 256.6, 46.2 , 0 );
setMoveKey( spep_3 -3 + 139, 1, 256.6, 46.2 , 0 );
setMoveKey( spep_3 -3 + 140, 1, 117.6, 28.2 , 0 );
setMoveKey( spep_3 -3 + 142, 1, 118.6, 26.2 , 0 );
setMoveKey( spep_3 -3 + 143, 1, 118.6, 26.2 , 0 );
setMoveKey( spep_3 -3 + 144, 1, 229.5, 48.2 , 0 );
setMoveKey( spep_3 -3 + 146, 1, 230.5, 46.2 , 0 );
setMoveKey( spep_3 -3 + 148, 1, 241.4, 51 , 0 );
setMoveKey( spep_3 -3 + 149, 1, 241.4, 51 , 0 );
setMoveKey( spep_3 -3 + 150, 1, 92.5, 19 , 0 );
setMoveKey( spep_3 -3 + 151, 1, 92.5, 19 , 0 );
setMoveKey( spep_3 -3 + 152, 1, 233.4, 51 , 0 );
setMoveKey( spep_3 -3 + 154, 1, 237.4, 53 , 0 );
setMoveKey( spep_3 -3 + 156, 1, 225.3, 41 , 0 );
setMoveKey( spep_3 -3 + 157, 1, 225.3, 41 , 0 );
setMoveKey( spep_3 -3 + 158, 1, 113.4, 28 , 0 );
setMoveKey( spep_3 -3 + 160, 1, 102.4, 31 , 0 );
setMoveKey( spep_3 -3 + 161, 1, 102.4, 31 , 0 );
setMoveKey( spep_3 -3 + 162, 1, 168.3, 129 , 0 );
setMoveKey( spep_3 -3 + 164, 1, 169.3, 131 , 0 );
setMoveKey( spep_3 -3 + 167, 1, 169.3, 129 , 0 );

s3 = 0.3;
s4 = 0.6;
setScaleKey( spep_3 -3 + 64, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 81, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 82, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 87, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 88, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 89, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 90, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 95, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 96, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 97, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 98, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 103, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 104, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 105, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 106, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 111, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 112, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 115, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 116, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 121, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 122, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 125, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 126, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 131, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 132, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 133, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 134, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 139, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 140, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 143, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 144, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 149, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 150, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 151, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 152, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 157, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 158, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 161, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_3 -3 + 162, 1, 2.4 +s4, 2.4 +s4 );
setScaleKey( spep_3 -3 + 167, 1, 2.4 +s4, 2.4 +s4 );

setRotateKey( spep_3 -3 + 64, 1, -30 );
setRotateKey( spep_3 -3 + 80, 1, -30 );
setRotateKey( spep_3 -3 + 81, 1, -30 );
setRotateKey( spep_3 -3 + 82, 1, -2.2 );
setRotateKey( spep_3 -3 + 84, 1, -4.5 );
setRotateKey( spep_3 -3 + 86, 1, -2.7 );
setRotateKey( spep_3 -3 + 87, 1, -2.7 );
setRotateKey( spep_3 -3 + 88, 1, -35.4 );
setRotateKey( spep_3 -3 + 89, 1, -35.4 );
setRotateKey( spep_3 -3 + 90, 1, 0 );
setRotateKey( spep_3 -3 + 92, 1, 0 );
setRotateKey( spep_3 -3 + 94, 1, -2.5 );
setRotateKey( spep_3 -3 + 95, 1, -2.5 );
setRotateKey( spep_3 -3 + 96, 1, -56.6 );
setRotateKey( spep_3 -3 + 97, 1, -56.6 );
setRotateKey( spep_3 -3 + 98, 1, -3 );
setRotateKey( spep_3 -3 + 100, 1, -1.7 );
setRotateKey( spep_3 -3 + 102, 1, -1.7 );
setRotateKey( spep_3 -3 + 103, 1, -1.7 );
setRotateKey( spep_3 -3 + 104, 1, -52.9 );
setRotateKey( spep_3 -3 + 105, 1, -52.9 );
setRotateKey( spep_3 -3 + 106, 1, -18 );
setRotateKey( spep_3 -3 + 108, 1, -19.5 );
setRotateKey( spep_3 -3 + 110, 1, -15 );
setRotateKey( spep_3 -3 + 111, 1, -15 );
setRotateKey( spep_3 -3 + 112, 1, -57.9 );
setRotateKey( spep_3 -3 + 114, 1, -57.9 );
setRotateKey( spep_3 -3 + 115, 1, -57.9 );
setRotateKey( spep_3 -3 + 116, 1, -6.7 );
setRotateKey( spep_3 -3 + 120, 1, -6.7 );
setRotateKey( spep_3 -3 + 121, 1, -6.7 );
setRotateKey( spep_3 -3 + 122, 1, -57.1 );
setRotateKey( spep_3 -3 + 124, 1, -57.1 );
setRotateKey( spep_3 -3 + 125, 1, -57.1 );
setRotateKey( spep_3 -3 + 126, 1, -18 );
setRotateKey( spep_3 -3 + 128, 1, -19.5 );
setRotateKey( spep_3 -3 + 130, 1, -15 );
setRotateKey( spep_3 -3 + 131, 1, -15 );
setRotateKey( spep_3 -3 + 132, 1, -57.1 );
setRotateKey( spep_3 -3 + 133, 1, -57.1 );
setRotateKey( spep_3 -3 + 134, 1, -2.2 );
setRotateKey( spep_3 -3 + 136, 1, -4.5 );
setRotateKey( spep_3 -3 + 138, 1, -2.7 );
setRotateKey( spep_3 -3 + 139, 1, -2.7 );
setRotateKey( spep_3 -3 + 140, 1, -35.4 );
setRotateKey( spep_3 -3 + 143, 1, -35.4 );
setRotateKey( spep_3 -3 + 144, 1, 0 );
setRotateKey( spep_3 -3 + 149, 1, 0 );
setRotateKey( spep_3 -3 + 150, 1, -52.9 );
setRotateKey( spep_3 -3 + 151, 1, -52.9 );
setRotateKey( spep_3 -3 + 152, 1, -6.7 );
setRotateKey( spep_3 -3 + 157, 1, -6.7 );
setRotateKey( spep_3 -3 + 158, 1, -57.9 );
setRotateKey( spep_3 -3 + 161, 1, -57.9 );
setRotateKey( spep_3 -3 + 162, 1, -18 );
setRotateKey( spep_3 -3 + 167, 1, -18 );

-- ** 音 ** --
--ピッコロラッシュ
SE030 = playSe( spep_3 + 56, 44 );
stopSe( spep_3 + 68, SE030, 10 );

--ピッコロラッシュ
SE031 = playSe( spep_3 + 68, 1189 );

--ピッコロラッシュ
SE032 = playSe( spep_3 + 72, 1170 );
stopSe( spep_3 + 86, SE032, 10 );

--ピッコロラッシュ
SE033 = playSe( spep_3 + 74, 1110 );

--ピッコロラッシュ
SE034 = playSe( spep_3 + 74, 1000 );

--ピッコロラッシュ
SE035 = playSe( spep_3 + 82, 1110 );

--ピッコロラッシュ
SE036 = playSe( spep_3 + 82, 1000 );
setSeVolumeByWorkId( spep_3 + 82, SE036, 82 );

--ピッコロラッシュ
SE037 = playSe( spep_3 + 90, 1170 );
stopSe( spep_3 + 104, SE037, 10 );

--ピッコロラッシュ
SE038 = playSe( spep_3 + 90, 1110 );
setSeVolumeByWorkId( spep_3 + 90, SE038, 80 );

--ピッコロラッシュ
SE039 = playSe( spep_3 + 98, 1010 );

--ピッコロラッシュ
SE040 = playSe( spep_3 + 108, 1110 );

--ピッコロラッシュ
SE041 = playSe( spep_3 + 108, 1000 );
setSeVolumeByWorkId( spep_3 + 108, SE041, 84 );

--ピッコロラッシュ
SE042 = playSe( spep_3 + 118, 1170 );
stopSe( spep_3 + 132, SE042, 10 );

--ピッコロラッシュ
SE043 = playSe( spep_3 + 118, 1110 );

--ピッコロラッシュ
SE044 = playSe( spep_3 + 126, 1110 );
setSeVolumeByWorkId( spep_3 + 126, SE044, 80 );

--ピッコロラッシュ
SE045 = playSe( spep_3 + 126, 1000 );
setSeVolumeByWorkId( spep_3 + 126, SE045, 94 );

--ピッコロラッシュ
SE046 = playSe( spep_3 + 134, 1110 );
setSeVolumeByWorkId( spep_3 + 134, SE046, 77 );

--ピッコロラッシュ
SE047 = playSe( spep_3 + 134, 1000 );
setSeVolumeByWorkId( spep_3 + 134, SE047, 97 );

--ピッコロラッシュ
SE048 = playSe( spep_3 + 142, 1110 );
setSeVolumeByWorkId( spep_3 + 142, SE048, 87 );

--ピッコロラッシュ
SE049 = playSe( spep_3 + 142, 1000 );

--ピッコロラッシュ
SE050 = playSe( spep_3 + 152, 1170 );
stopSe( spep_3 +164 + 2, SE050, 10 );

--ピッコロラッシュ
SE051 = playSe( spep_3 + 152, 1110 );

--ピッコロ振りかぶる
SE052 = playSe( spep_3 + 156, 1330 );
stopSe( spep_3 +164 + 50, SE052, 10 );

--ピッコロ振りかぶる
SE053 = playSe( spep_3 + 156, 1116 );
stopSe( spep_3 +164 + 18, SE053, 16 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 164 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 164;


------------------------------------------------------
-- ピッコロとどめの一撃(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_4 + 0, SP_07r, 96, 0x100, -1, 0, 0, 0 );  --ピッコロとどめの一撃   ef_004_ch_w
setEffMoveKey( spep_4 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, punch_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 96, punch_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, punch_f, 0 );
setEffRotateKey( spep_4 + 96, punch_f, 0 );
setEffAlphaKey( spep_4 + 0, punch_f, 255 );
setEffAlphaKey( spep_4 + 96 -1, punch_f, 255 );
setEffAlphaKey( spep_4 + 96, punch_f, 0 );

punch_b = entryEffectLife( spep_4 + 0, SP_12r, 96, 0x100, -1, 0, 0, 0 );  --↑敵を挟んで背景  ef_004_bg
setEffMoveKey( spep_4 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, punch_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 96, punch_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, punch_b, 0 );
setEffRotateKey( spep_4 + 96, punch_b, 0 );
setEffAlphaKey( spep_4 + 0, punch_b, 255 );
setEffAlphaKey( spep_4 + 96 -1, punch_b, 255 );
setEffAlphaKey( spep_4 + 96, punch_b, 0 );

punch_e = entryEffectLife( spep_4 + 0, SP_08r, 96, 0x80, -1, 0, 0, 0 );  --↑敵を挟んで背景  ef_004_bg
setEffMoveKey( spep_4 + 0, punch_e, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, punch_e, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, punch_e, -1.0, 1.0 );
setEffScaleKey( spep_4 + 96, punch_e, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, punch_e, 0 );
setEffRotateKey( spep_4 + 96, punch_e, 0 );
setEffAlphaKey( spep_4 + 0, punch_e, 255 );
setEffAlphaKey( spep_4 + 96 -1, punch_e, 255 );
setEffAlphaKey( spep_4 + 96, punch_e, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 60, 1, 1 );
setDisp( spep_4 -3 + 88, 1, 0 );
changeAnime( spep_4 -3 + 60, 1, 106 );

setMoveKey( spep_4 -3 + 60, 1, 27.8, 68.9 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 27.8, 68.9 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 67.8, 68.9 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 27.8, 68.9 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 257.8, 68.9 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 339.5, 92.1 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 722.4, 87.5 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 998.5, 82.9 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 1165, 79.5 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 1220.6, 78.3 , 0 );

s5 = 0.2;
setScaleKey( spep_4 -3 + 60, 1, 2.5 +s5, 2.5 +s5 );
setScaleKey( spep_4 -3 + 88, 1, 2.5 +s5, 2.5 +s5 );

setRotateKey( spep_4 -3 + 60, 1, -35.5 );
setRotateKey( spep_4 -3 + 78, 1, -35.5 );
setRotateKey( spep_4 -3 + 80, 1, -17.7 );
setRotateKey( spep_4 -3 + 82, 1, -3.6 );
setRotateKey( spep_4 -3 + 84, 1, 6.5 );
setRotateKey( spep_4 -3 + 86, 1, 12.5 );
setRotateKey( spep_4 -3 + 88, 1, 14.5 );

-- ** 音 ** --
--ピッコロパンチ
SE054 = playSe( spep_4 + 56, 1003 );

--ピッコロパンチ
SE055 = playSe( spep_4 + 56, 1120 );

--悟空飛んでくる
SE056 = playSe( spep_4 + 90, 1117 );

--悟空飛んでくる
SE057 = playSe( spep_4 + 90, 1004 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 96;


------------------------------------------------------
-- 悟空上空に舞ってとどめ(220F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_09r, 0x100, -1, 0, 0, 0 );  --悟空上空に舞ってとどめ ef_005_ch
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 226, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 226, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 226, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 226, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_10r, 0x80, -1, 0, 0, 0 );  --ef_005_bg
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 226, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 226, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 226, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 226, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 82, 1, 1 );
setDisp( spep_5 -3 + 134, 1, 0 );
changeAnime( spep_5 -3 + 82, 1, 106 );
changeAnime( spep_5 -3 + 108, 1, 108 );

setMoveKey( spep_5 -3 + 82, 1, -260, -45.8 , 0 );
setMoveKey( spep_5 -3 + 84, 1, -7.5, -33.6 , 0 );
setMoveKey( spep_5 -3 + 86, 1, -4.1, -33.6 , 0 );
setMoveKey( spep_5 -3 + 88, 1, -0.9, -33.6 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 2, -33.6 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 4.6, -33.6 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 6.8, -33.6 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 8.8, -33.6 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 10.5, -33.6 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 11.9, -33.6 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 12.9, -33.6 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 13.7, -33.6 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 14.1, -33.7 , 0 );
setMoveKey( spep_5 -3 + 107, 1, 14.1, -33.7 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 24.2, -83.8 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 144.2, -363.8 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 150.9, -376.9 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 141.7, -359.1 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 151.4, -383.2 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 143.2, -356.4 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 152.9, -379.5 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 154.7, -382.7 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 156.5, -385.9 , 0 );
setMoveKey( spep_5 -3 + 126, 1, 307.2, -557.2 , 0 );
setMoveKey( spep_5 -3 + 128, 1, 424.4, -690.4 , 0 );
setMoveKey( spep_5 -3 + 130, 1, 508.2, -785.6 , 0 );
setMoveKey( spep_5 -3 + 132, 1, 558.4, -842.7 , 0 );
setMoveKey( spep_5 -3 + 134, 1, 575.2, -861.8 , 0 );

s6 = 0.15;
s7 = 0.45;
setScaleKey( spep_5 -3 + 82, 1, 2 +s6, 2 +s6 );
setScaleKey( spep_5 -3 + 107, 1, 2 +s6, 2 +s6 );
setScaleKey( spep_5 -3 + 108, 1, 2 +s7, 2 +s7 );
setScaleKey( spep_5 -3 + 134, 1, 2 +s7, 2 +s7 );

setRotateKey( spep_5 -3 + 82, 1, 27.5 );
setRotateKey( spep_5 -3 + 84, 1, 28 );
setRotateKey( spep_5 -3 + 107, 1, 28 );
setRotateKey( spep_5 -3 + 108, 1, 78 );
setRotateKey( spep_5 -3 + 110, 1, 78 );
setRotateKey( spep_5 -3 + 112, 1, 78.1 );
setRotateKey( spep_5 -3 + 114, 1, 78.2 );
setRotateKey( spep_5 -3 + 116, 1, 78.3 );
setRotateKey( spep_5 -3 + 118, 1, 78.4 );
setRotateKey( spep_5 -3 + 120, 1, 78.5 );
setRotateKey( spep_5 -3 + 122, 1, 78.6 );
setRotateKey( spep_5 -3 + 124, 1, 78.7 );
setRotateKey( spep_5 -3 + 126, 1, 78.9 );
setRotateKey( spep_5 -3 + 128, 1, 79 );
setRotateKey( spep_5 -3 + 130, 1, 79.1 );
setRotateKey( spep_5 -3 + 132, 1, 79.2 );
setRotateKey( spep_5 -3 + 134, 1, 79.2 );

-- ** 音 ** --
--悟空飛んでくる
SE058 = playSe( spep_5 + 6, 1207 );
setSeVolumeByWorkId( spep_5 + 6, SE058, 25 );
setSeVolumeByWorkId( spep_5 + 8, SE058, 50 );
setSeVolumeByWorkId( spep_5 + 10, SE058, 75 );
setSeVolumeByWorkId( spep_5 + 12, SE058, 100 );
setStartTimeMs( SE058,  100 );

--悟空飛んでくる
SE059 = playSe( spep_5 + 8, 1116 );

--岩崩れ音
SE060 = playSe( spep_5 + 126, 1168 );
setSeVolumeByWorkId( spep_5 + 126, SE060, 20 );
setSeVolumeByWorkId( spep_5 + 127, SE060, 40 );
setSeVolumeByWorkId( spep_5 + 128, SE060, 60 );
setSeVolumeByWorkId( spep_5 + 129, SE060, 80 );
setSeVolumeByWorkId( spep_5 + 130, SE060, 100 );
setStartTimeMs( SE060,  1183 );

--悟空ラスト蹴り
SE061 = playSe( spep_5 + 98, 1123 );
setSeVolumeByWorkId( spep_5 + 98, SE061, 79 );

--悟空ラスト蹴り
SE062 = playSe( spep_5 + 102, 1190 );
setSeVolumeByWorkId( spep_5 + 102, SE062, 88 );

--悟空ラスト蹴り
SE063 = playSe( spep_5 + 102, 1153 );
setSeVolumeByWorkId( spep_5 + 102, SE063, 92 );

--悟空ラスト蹴り
SE064 = playSe( spep_5 + 102, 1187 );
setSeVolumeByWorkId( spep_5 + 102, SE064, 91 );

--悟空ラスト蹴り
SE065 = playSe( spep_5 + 102, 1011 );
setSeVolumeByWorkId( spep_5 + 102, SE065, 90 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 226 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 110 );
endPhase( spep_5 + 216 );

end