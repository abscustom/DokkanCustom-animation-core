--1022270:UR_孫悟空_必殺技：神速乱舞
--sp_effect_b1_00156
--sp2228

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

--エフェクト(味方)
SP_01 = 157706; --傘を持った孫悟空、登場
SP_02 = 157707; --傘を空に投げる
SP_03 = 157708; --構え～ダッシュ
SP_04 = 157709; --高速で攻撃
SP_05 = 157710; --高速で攻撃
SP_06 = 157713; --横滑りしてくる孫悟空
SP_07 = 157715; --蹴り～竜巻に変化
SP_08 = 157717; --竜巻～蹴り
SP_09 = 157718; --竜巻～蹴り
SP_10 = 157721; --吹っ飛ぶ敵
SP_11 = 157722; --吹っ飛ぶ敵
SP_12 = 157723; --傘をキャッチ
SP_13 = 157724; --傘をさす孫悟空～フィニッシュ

--エフェクト(敵)
SP_01x = 157706; --傘を持った孫悟空、登場
SP_02x = 157707; --傘を空に投げる
SP_03x = 157708; --構え～ダッシュ
SP_04x = 157711; --高速で攻撃(敵)
SP_05x = 157712; --高速で攻撃(敵)
SP_06x = 157714; --横滑りしてくる孫悟空(敵)
SP_07x = 157716; --蹴り～竜巻に変化(敵)
SP_08x = 157719; --竜巻～蹴り(敵)
SP_09x = 157720; --竜巻～蹴り(敵)
SP_10x = 157721; --吹っ飛ぶ敵
SP_11x = 157722; --吹っ飛ぶ敵
SP_12x = 157723; --傘をキャッチ
SP_13x = 157724; --傘をさす孫悟空～フィニッシュ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 傘を持った孫悟空、登場
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
appearance = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, appearance, 0, 0, 0 );
setEffMoveKey( spep_0 + 120, appearance, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, appearance, 1.0, 1.0 );
setEffScaleKey( spep_0 + 120, appearance, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, appearance, 0 );
setEffRotateKey( spep_0 + 120, appearance, 0 );
setEffAlphaKey( spep_0 + 0, appearance, 255 );
setEffAlphaKey( spep_0 + 120, appearance, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +30;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--入り
SE001 = playSe( spep_0 + 0, 1072 );
SE002 = playSe( spep_0 + 34, 1005 );
setSeVolumeByWorkId( spep_0 + 34, SE002, 68 );
SE003 = playSe( spep_0 + 38, 1013 );
SE003_02 = playSe( spep_0 + 0, 1165 );
setSeVolumeByWorkId( spep_0 + 0, SE003_02, 45 );
setBandpassFilter( spep_0 + 0, SE003_02, 2500, 24000 );
stopSe( spep_0 + 120, SE003_02, 10 );

--顔カットイン
SE004 = playSe( spep_x + 12, 1018 );


-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0,120, 0, 0, 0, 0, 255 );  --白 背景

--白フェード
entryFade( spep_0 + 112, 4, 8,4 , fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+120;
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
spep_2= spep_1 + 94;
------------------------------------------------------
-- 傘を空に投げる
------------------------------------------------------
-- ** エフェクト等 ** --
throw = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, throw, 0, 0, 0 );
setEffMoveKey( spep_2 + 44, throw, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, throw, 1.0, 1.0 );
setEffScaleKey( spep_2 + 44, throw, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, throw, 0 );
setEffRotateKey( spep_2 + 44, throw, 0 );
setEffAlphaKey( spep_2 + 0, throw, 255 );
setEffAlphaKey( spep_2 + 42, throw, 255 );
setEffAlphaKey( spep_2 + 43, throw, 255 );
setEffAlphaKey( spep_2 + 44, throw, 0 );

--SE
--傘飛ばす
SE006 = playSe( spep_2 + 0, 1013 );
setSeVolumeByWorkId( spep_2 + 0, SE006, 122 );
SE007 = playSe( spep_2 + 2, 1027 );
setSeVolumeByWorkId( spep_2 + 2, SE007, 89 );

--雨
SE008 = playSe( spep_2 + 8, 1165 );
setSeVolumeByWorkId( spep_2 + 8, SE008, 45 );
setBandpassFilter( spep_2 + 8, SE008, 2500, 24000 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 50, 0, 0, 0, 0, 255 );  --白 背景

-- ** 次の準備 ** --
spep_3= spep_2 + 44;
------------------------------------------------------
-- 構え～ダッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
dash = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, dash, 0, 0, 0 );
setEffMoveKey( spep_3 + 98, dash, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_3 + 98, dash, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, dash, 0 );
setEffRotateKey( spep_3 + 98, dash, 0 );
setEffAlphaKey( spep_3 + 0, dash, 255 );
setEffAlphaKey( spep_3 + 96, dash, 255 );
setEffAlphaKey( spep_3 + 97, dash, 255 );
setEffAlphaKey( spep_3 + 98, dash, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 50, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 28 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);

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
--SE
--向かってくる
SE009 = playSe( spep_3 + 28, 1182 );
SE010 = playSe( spep_3 + 28, 9 );
stopSe( spep_3 + 90, SE010, 34 );

--瞬間移動
SE011 = playSe( spep_3 + 80, 1109 );

--水しぶき１
SE012 = playSe( spep_3 + 80, 1163 );
setSeVolumeByWorkId( spep_3 + 80, SE012, 145 );


-- ** 次の準備 ** --
spep_4= spep_3 + 96;
------------------------------------------------------
-- 高速で攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
attack_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, attack_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 176, attack_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 176, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, attack_f, 0 );
setEffRotateKey( spep_4 + 176, attack_f, 0 );
setEffAlphaKey( spep_4 + 0, attack_f, 255 );
setEffAlphaKey( spep_4 + 174, attack_f, 255 );
setEffAlphaKey( spep_4 + 175, attack_f, 255 );
setEffAlphaKey( spep_4 + 176, attack_f, 0 );

-- ** エフェクト等 ** --
attack_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, attack_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 176, attack_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 176, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, attack_b, 0 );
setEffRotateKey( spep_4 + 176, attack_b, 0 );
setEffAlphaKey( spep_4 + 0, attack_b, 255 );
setEffAlphaKey( spep_4 + 174, attack_b, 255 );
setEffAlphaKey( spep_4 + 175, attack_b, 255 );
setEffAlphaKey( spep_4 + 176, attack_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 178, 1, 0 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4-3 + 30, 1, 106 );
changeAnime( spep_4-3 + 66, 1, 6 );
changeAnime( spep_4-3 + 88, 1, 108 );
changeAnime( spep_4-3 + 136, 1, 7 );

setMoveKey( spep_4 + 0, 1, 256.2, 14.5 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 245.3, 10.6 , 0 );
setMoveKey( spep_4-3 + 4, 1, 234.4, 6.7 , 0 );
setMoveKey( spep_4-3 + 6, 1, 223.5, 2.8 , 0 );
setMoveKey( spep_4-3 + 8, 1, 212.6, -1.1 , 0 );
setMoveKey( spep_4-3 + 10, 1, 201.7, -5 , 0 );
setMoveKey( spep_4-3 + 12, 1, 190.8, -8.9 , 0 );
setMoveKey( spep_4-3 + 14, 1, 179.9, -12.8 , 0 );
setMoveKey( spep_4-3 + 16, 1, 169, -16.7 , 0 );
setMoveKey( spep_4-3 + 18, 1, 158.1, -20.6 , 0 );
setMoveKey( spep_4-3 + 20, 1, 147.2, -24.5 , 0 );
setMoveKey( spep_4-3 + 22, 1, 136.3, -28.4 , 0 );
setMoveKey( spep_4-3 + 24, 1, 125.5, -32.3 , 0 );
setMoveKey( spep_4-3 + 26, 1, 98.7, -31.2 , 0 );
setMoveKey( spep_4-3 + 29, 1, 160.4, -1.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, 140.5, -93.9 , 0 );
setMoveKey( spep_4-3 + 32, 1, 100.4, -61 , 0 );
setMoveKey( spep_4-3 + 34, 1, 96.7, -86.1 , 0 );
setMoveKey( spep_4-3 + 36, 1, 44.2, -45.5 , 0 );
setMoveKey( spep_4-3 + 38, 1, 32.8, -74.9 , 0 );
setMoveKey( spep_4-3 + 40, 1, 21.9, -49.7 , 0 );
setMoveKey( spep_4-3 + 42, 1, 11.8, -54.9 , 0 );
setMoveKey( spep_4-3 + 44, 1, 2.2, -52.1 , 0 );
setMoveKey( spep_4-3 + 46, 1, -6.7, -49.6 , 0 );
setMoveKey( spep_4-3 + 48, 1, -14.9, -47.4 , 0 );
setMoveKey( spep_4-3 + 50, 1, -22.6, -45.5 , 0 );
setMoveKey( spep_4-3 + 52, 1, -29.5, -43.8 , 0 );
setMoveKey( spep_4-3 + 54, 1, -35.9, -42.3 , 0 );
setMoveKey( spep_4-3 + 56, 1, -41.7, -41.1 , 0 );
setMoveKey( spep_4-3 + 58, 1, -46.7, -40.2 , 0 );
setMoveKey( spep_4-3 + 60, 1, -51.2, -39.6 , 0 );
setMoveKey( spep_4-3 + 62, 1, -55, -39.2 , 0 );
setMoveKey( spep_4-3 + 65, 1, -58.2, -39 , 0 );
setMoveKey( spep_4-3 + 66, 1, -253.1, 30.6 , 0 );
setMoveKey( spep_4-3 + 68, 1, -181.9, -2 , 0 );
setMoveKey( spep_4-3 + 70, 1, -148.9, 34.1 , 0 );
setMoveKey( spep_4-3 + 72, 1, -85.3, 12.3 , 0 );
setMoveKey( spep_4-3 + 74, 1, -58, 41.5 , 0 );
setMoveKey( spep_4-3 + 76, 1, -82.8, 15.6 , 0 );
setMoveKey( spep_4-3 + 78, 1, -74.2, 41.9 , 0 );
setMoveKey( spep_4-3 + 80, 1, -48.9, 21.2 , 0 );
setMoveKey( spep_4-3 + 82, 1, -56.3, 33.4 , 0 );
setMoveKey( spep_4-3 + 84, 1, -52.4, 34.4 , 0 );
setMoveKey( spep_4-3 + 87, 1, -48.2, 35.3 , 0 );
setMoveKey( spep_4-3 + 88, 1, 189.9, 70.9 , 0 );
setMoveKey( spep_4-3 + 90, 1, 128.1, 69.3 , 0 );
setMoveKey( spep_4-3 + 92, 1, 66.2, 67.5 , 0 );
setMoveKey( spep_4-3 + 94, 1, 4, 79.6 , 0 );
setMoveKey( spep_4-3 + 96, 1, -58.4, 50.3 , 0 );
setMoveKey( spep_4-3 + 98, 1, -67.5, 64.3 , 0 );
setMoveKey( spep_4-3 + 100, 1, -43.8, 64.5 , 0 );
setMoveKey( spep_4-3 + 102, 1, -53.3, 70.3 , 0 );
setMoveKey( spep_4-3 + 104, 1, -52, 65 , 0 );
setMoveKey( spep_4-3 + 106, 1, -51, 65.2 , 0 );
setMoveKey( spep_4-3 + 108, 1, -50.2, 65.4 , 0 );
setMoveKey( spep_4-3 + 110, 1, -49.6, 65.5 , 0 );
setMoveKey( spep_4-3 + 112, 1, -49.2, 65.7 , 0 );
setMoveKey( spep_4-3 + 114, 1, -49, 65.8 , 0 );
setMoveKey( spep_4-3 + 116, 1, -49.1, 66 , 0 );
setMoveKey( spep_4-3 + 118, 1, -49.3, 66.1 , 0 );
setMoveKey( spep_4-3 + 120, 1, -49.8, 66.2 , 0 );
setMoveKey( spep_4-3 + 122, 1, -50.5, 66.3 , 0 );
setMoveKey( spep_4-3 + 124, 1, -51.4, 66.3 , 0 );
setMoveKey( spep_4-3 + 126, 1, -52.6, 66.4 , 0 );
setMoveKey( spep_4-3 + 128, 1, -53.9, 66.4 , 0 );
setMoveKey( spep_4-3 + 130, 1, -55.5, 66.5 , 0 );
setMoveKey( spep_4-3 + 132, 1, 64.9, 74.4 , 0 );
setMoveKey( spep_4-3 + 135, 1, 185, 82.4 , 0 );
setMoveKey( spep_4-3 + 136, 1, -161.1, -17.8 , 0 );
setMoveKey( spep_4-3 + 138, 1, -97.8, -18.3 , 0 );
setMoveKey( spep_4-3 + 140, 1, -103.1, -1.8 , 0 );
setMoveKey( spep_4-3 + 142, 1, -108.2, -29.4 , 0 );
setMoveKey( spep_4-3 + 144, 1, -129.5, -10.3 , 0 );
setMoveKey( spep_4-3 + 146, 1, -101.1, -7.8 , 0 );
setMoveKey( spep_4-3 + 148, 1, -122, 5.5 , 0 );
setMoveKey( spep_4-3 + 150, 1, -126.1, -14.2 , 0 );
setMoveKey( spep_4-3 + 152, 1, -138.1, -1 , 0 );
setMoveKey( spep_4-3 + 154, 1, -125.2, 1.1 , 0 );
setMoveKey( spep_4-3 + 156, 1, -136.7, 3 , 0 );
setMoveKey( spep_4-3 + 158, 1, -139.7, 4.9 , 0 );
setMoveKey( spep_4-3 + 160, 1, -142.6, 6.6 , 0 );
setMoveKey( spep_4-3 + 162, 1, -145, 8.3 , 0 );
setMoveKey( spep_4-3 + 164, 1, -147.2, 9.9 , 0 );
setMoveKey( spep_4-3 + 166, 1, -149.1, 11.3 , 0 );
setMoveKey( spep_4-3 + 168, 1, -150.8, 12.6 , 0 );
setMoveKey( spep_4-3 + 170, 1, -152.2, 13.9 , 0 );
setMoveKey( spep_4-3 + 172, 1, -153.3, 15 , 0 );
setMoveKey( spep_4-3 + 174, 1, -154, 16 , 0 );
setMoveKey( spep_4-3 + 176, 1, -154.5, 16.9 , 0 );
setMoveKey( spep_4-1 + 178, 1, -154.7, 17.7 , 0 );

setScaleKey( spep_4 + 0, 1, 1.72, 1.72 );
setScaleKey( spep_4-3 + 130, 1, 1.72, 1.72 );
setScaleKey( spep_4-3 + 131, 1, 1.72, 1.72 );
setScaleKey( spep_4-3 + 135, 1, 2.24,2.24);
setScaleKey( spep_4-3 + 136, 1, 1.02,1.02);
setScaleKey( spep_4-3 + 138, 1, 1.12,1.12);
setScaleKey( spep_4-3 + 140, 1, 1.15,1.15);
setScaleKey( spep_4-1 + 178, 1, 1.18,1.18);

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 29, 1, 0 );
setRotateKey( spep_4-3 + 30, 1, -38 );
setRotateKey( spep_4-3 + 32, 1, -35.9 );
setRotateKey( spep_4-3 + 34, 1, -34 );
setRotateKey( spep_4-3 + 36, 1, -32.2 );
setRotateKey( spep_4-3 + 38, 1, -30.5 );
setRotateKey( spep_4-3 + 40, 1, -29 );
setRotateKey( spep_4-3 + 42, 1, -27.5 );
setRotateKey( spep_4-3 + 44, 1, -26.2 );
setRotateKey( spep_4-3 + 46, 1, -25 );
setRotateKey( spep_4-3 + 48, 1, -24 );
setRotateKey( spep_4-3 + 50, 1, -23.1 );
setRotateKey( spep_4-3 + 52, 1, -22.3 );
setRotateKey( spep_4-3 + 54, 1, -21.6 );
setRotateKey( spep_4-3 + 56, 1, -21 );
setRotateKey( spep_4-3 + 58, 1, -20.6 );
setRotateKey( spep_4-3 + 60, 1, -20.3 );
setRotateKey( spep_4-3 + 62, 1, -20.1 );
setRotateKey( spep_4-3 + 65, 1, -20 );
setRotateKey( spep_4-3 + 66, 1, 53 );
setRotateKey( spep_4-3 + 68, 1, 51 );
setRotateKey( spep_4-3 + 70, 1, 49.1 );
setRotateKey( spep_4-3 + 72, 1, 47.4 );
setRotateKey( spep_4-3 + 74, 1, 45.8 );
setRotateKey( spep_4-3 + 76, 1, 44.3 );
setRotateKey( spep_4-3 + 78, 1, 43 );
setRotateKey( spep_4-3 + 80, 1, 41.7 );
setRotateKey( spep_4-3 + 82, 1, 40.6 );
setRotateKey( spep_4-3 + 84, 1, 39.7 );
setRotateKey( spep_4-3 + 87, 1, 38.8 );
setRotateKey( spep_4-3 + 88, 1, 19 );
setRotateKey( spep_4-3 + 90, 1, 20 );
setRotateKey( spep_4-3 + 92, 1, 21 );
setRotateKey( spep_4-3 + 94, 1, 22 );
setRotateKey( spep_4-3 + 96, 1, 22.9 );
setRotateKey( spep_4-3 + 98, 1, 23.7 );
setRotateKey( spep_4-3 + 100, 1, 24.5 );
setRotateKey( spep_4-3 + 102, 1, 25.3 );
setRotateKey( spep_4-3 + 104, 1, 26 );
setRotateKey( spep_4-3 + 106, 1, 26.7 );
setRotateKey( spep_4-3 + 108, 1, 27.3 );
setRotateKey( spep_4-3 + 110, 1, 27.9 );
setRotateKey( spep_4-3 + 112, 1, 28.4 );
setRotateKey( spep_4-3 + 114, 1, 28.9 );
setRotateKey( spep_4-3 + 116, 1, 29.3 );
setRotateKey( spep_4-3 + 118, 1, 29.7 );
setRotateKey( spep_4-3 + 120, 1, 30.1 );
setRotateKey( spep_4-3 + 122, 1, 30.4 );
setRotateKey( spep_4-3 + 124, 1, 30.6 );
setRotateKey( spep_4-3 + 126, 1, 30.8 );
setRotateKey( spep_4-3 + 128, 1, 31 );
setRotateKey( spep_4-3 + 130, 1, 31.1 );
setRotateKey( spep_4-3 + 132, 1, 31.2 );
setRotateKey( spep_4-3 + 135, 1, 31.2 );
setRotateKey( spep_4-3 + 136, 1, 60.5 );
setRotateKey( spep_4-1 + 178, 1, 60.5 );

--SE
--水しぶき１
SE013 = playSe( spep_4 + 0, 1166 );
setSeVolumeByWorkId( spep_4 + 0, SE013, 133 );
stopSe( spep_4 + 38, SE013, 26 );

--ヒット１
SE014 = playSe( spep_4 + 26, 1009 );
SE015 = playSe( spep_4 + 26, 1110 );
setSeVolumeByWorkId( spep_4 + 26, SE015, 83 );

--水しぶき２
SE016 = playSe( spep_4 + 26, 1163 );
setSeVolumeByWorkId( spep_4 + 26, SE016, 160 );
SE017 = playSe( spep_4 + 42, 1166 );
setSeVolumeByWorkId( spep_4 + 42, SE017, 153 );
stopSe( spep_4 + 74, SE017, 20 );
SE018 = playSe( spep_4 + 52, 1163 );
setSeVolumeByWorkId( spep_4 + 52, SE018, 164 );

--ヒット２
SE019 = playSe( spep_4 + 64, 1009 );
SE020 = playSe( spep_4 + 64, 1110 );
setSeVolumeByWorkId( spep_4 + 64, SE020, 85 );

--水しぶき３
SE021 = playSe( spep_4 + 70, 1166 );
setSeVolumeByWorkId( spep_4 + 70, SE021, 132 );
stopSe( spep_4 + 106, SE021, 28 );

--ヒット３
SE022 = playSe( spep_4 + 86, 1009 );
SE023 = playSe( spep_4 + 86, 1110 );

--水しぶき４
SE024 = playSe( spep_4 + 98, 1163 );
setSeVolumeByWorkId( spep_4 + 98, SE024, 160 );
SE025 = playSe( spep_4 + 114, 1166 );
setSeVolumeByWorkId( spep_4 + 114, SE025, 160 );
stopSe( spep_4 + 150, SE025, 28 );

--ヒット４
SE026 = playSe( spep_4 + 134, 1009 );
SE027 = playSe( spep_4 + 134, 1110 );
setSeVolumeByWorkId( spep_4 + 134, SE027, 79 );
SE028 = playSe( spep_4 + 134, 1187 );
setSeVolumeByWorkId( spep_4 + 134, SE028, 61 );

--水走り
SE029 = playSe( spep_4 + 162, 1166 );
setSeVolumeByWorkId( spep_4 + 162, SE029, 126 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+176;
------------------------------------------------------
-- 横滑りしてくる孫悟空
------------------------------------------------------
-- ** エフェクト等 ** --
sliding = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, sliding, 0, 0, 0 );
setEffMoveKey( spep_5 + 64, sliding, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, sliding, 1.0, 1.0 );
setEffScaleKey( spep_5 + 64, sliding, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, sliding, 0 );
setEffRotateKey( spep_5 + 64, sliding, 0 );
setEffAlphaKey( spep_5 + 0, sliding, 255 );
setEffAlphaKey( spep_5 + 62, sliding, 255 );
setEffAlphaKey( spep_5 + 63, sliding, 255 );
setEffAlphaKey( spep_5 + 64, sliding, 0 );

--SE
--水走り
stopSe( spep_5 + 36, SE029, 18 );

--水走り止まる
SE030 = playSe( spep_5 + 24, 1192 );
setSeVolumeByWorkId( spep_5 + 24, SE030, 257 );

--雨
SE031 = playSe( spep_5 + 18, 1165 );
setSeVolumeByWorkId( spep_5 + 18, SE031, 45 );
setBandpassFilter   ( spep_5 + 18, SE031, 2500, 24000 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 68, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_6=spep_5+64;
------------------------------------------------------
-- 蹴り～竜巻に変化
------------------------------------------------------
-- ** エフェクト等 ** --
tornado = entryEffect( spep_6 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, tornado, 0, 0, 0 );
setEffMoveKey( spep_6 + 94, tornado, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, tornado, 1.0, 1.0 );
setEffScaleKey( spep_6 + 94, tornado, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tornado, 0 );
setEffRotateKey( spep_6 + 94, tornado, 0 );
setEffAlphaKey( spep_6 + 0, tornado, 255 );
setEffAlphaKey( spep_6 + 52, tornado, 255 );
setEffAlphaKey( spep_6 + 93, tornado, 255 );
setEffAlphaKey( spep_6 + 94, tornado, 0 );

--SE
--振りかぶり
SE032 = playSe( spep_6 + 4, 1117 );
stopSe( spep_6 + 48, SE032, 18 );

--竜巻になるA
SE033 = playSe( spep_6-16 + 70, 1116 );
setPitch( spep_6-16 + 70, SE033, -600 );
setTimeStretch( SE033, 0.6, 10, 1 );

--竜巻になるB
SE034 = playSe( spep_6-16 + 70, 1117 );
setSeVolumeByWorkId( spep_6-16 + 70, SE034, 112 );
stopSe( spep_6-16 + 88, SE034, 18 );
setPitch( spep_6-16 + 70, SE034, -600 );
setTimeStretch( SE034, 0.6, 10, 1 );

--竜巻になるA
SE035 = playSe( spep_6-16 + 92, 1116 );
setPitch( spep_6-16 + 92, SE035, -600 );
setTimeStretch( SE035, 0.6, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_7=spep_6+92;
------------------------------------------------------
-- 竜巻～蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 116, kick_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 116, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, kick_f, 0 );
setEffRotateKey( spep_7 + 116, kick_f, 0 );
setEffAlphaKey( spep_7 + 0, kick_f, 255 );
setEffAlphaKey( spep_7 + 114, kick_f, 255 );
setEffAlphaKey( spep_7 + 115, kick_f, 255 );
setEffAlphaKey( spep_7 + 116, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_7 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 116, kick_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 116, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, kick_b, 0 );
setEffRotateKey( spep_7 + 116, kick_b, 0 );
setEffAlphaKey( spep_7 + 0, kick_b, 255 );
setEffAlphaKey( spep_7 + 114, kick_b, 255 );
setEffAlphaKey( spep_7 + 115, kick_b, 255 );
setEffAlphaKey( spep_7 + 116, kick_b, 0 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7-3 + 60, 1, 0 );

changeAnime( spep_7 + 0, 1, 7 );
changeAnime( spep_7-3 + 56, 1, 107 );

a=100;
b=70;

setMoveKey( spep_7 + 0, 1, 580.2+b, -182.5+a , 0 );
--setMoveKey( spep_7-3 + 2, 1, 554.8, -196.1 , 0 );
setMoveKey( spep_7-3 + 4, 1, 528.9+b, -209.4+a , 0 );
setMoveKey( spep_7-3 + 6, 1, 502.8+b, -222.6+a , 0 );
setMoveKey( spep_7-3 + 8, 1, 476.4+b, -235.4+a , 0 );
setMoveKey( spep_7-3 + 10, 1, 449.5+b, -248+a , 0 );
setMoveKey( spep_7-3 + 12, 1, 422.2+b, -260.3+a , 0 );
setMoveKey( spep_7-3 + 14, 1, 394.7+b, -272.4+a , 0 );
setMoveKey( spep_7-3 + 16, 1, 366.9+b, -284+a , 0 );
setMoveKey( spep_7-3 + 18, 1, 338.8+b, -295.4+a , 0 );
setMoveKey( spep_7-3 + 20, 1, 332.3+b, -298.8+a , 0 );
setMoveKey( spep_7-3 + 22, 1, 325.9+b, -302+a , 0 );
setMoveKey( spep_7-3 + 24, 1, 319.7+b, -304.8+a , 0 );
setMoveKey( spep_7-3 + 26, 1, 313.7+b, -307.2+a , 0 );
setMoveKey( spep_7-3 + 28, 1, 340.6+b, -312.8+a , 0 );
setMoveKey( spep_7-3 + 30, 1, 367.7+b, -318.1+a , 0 );
setMoveKey( spep_7-3 + 32, 1, 395+b, -323+a , 0 );
setMoveKey( spep_7-3 + 34, 1, 422.4+b, -327.4+a , 0 );
setMoveKey( spep_7-3 + 36, 1, 449.9+b, -331.6+a , 0 );
setMoveKey( spep_7-3 + 38, 1, 477.6+b, -335.3+a , 0 );
setMoveKey( spep_7-3 + 40, 1, 505.4+b, -338.6+a , 0 );
setMoveKey( spep_7-3 + 42, 1, 533.4+b, -341.5+a , 0 );
setMoveKey( spep_7-3 + 44, 1, 561.3+b, -343.9+a , 0 );
setMoveKey( spep_7-3 + 46, 1, 565.8+b, -345+a , 0 );
setMoveKey( spep_7-3 + 48, 1, 570.4+b, -345.8+a , 0 );
setMoveKey( spep_7-3 + 50, 1, 575.1+b, -346+a , 0 );
setMoveKey( spep_7-3 + 52, 1, 579.8+b, -345.7+a , 0 );
setMoveKey( spep_7-3 + 55, 1, 584.7+b, -345+a , 0 );
setMoveKey( spep_7-3 + 56, 1, 400.9, -421.7 , 0 );
setMoveKey( spep_7-3 + 58, 1, 500.5, -484.3 , 0 );
setMoveKey( spep_7-3 + 60, 1, 1239.7, -463.3 , 0 );

setScaleKey( spep_7 + 0, 1, 1.02,1.02);
setScaleKey( spep_7-3 + 4, 1, 1.12,1.12);
setScaleKey( spep_7-3 + 6, 1, 1.18,1.18);
setScaleKey( spep_7-3 + 8, 1, 1.22,1.22);
setScaleKey( spep_7-3 + 10, 1, 1.28,1.28);
setScaleKey( spep_7-3 + 12, 1, 1.32,1.32);
setScaleKey( spep_7-3 + 14, 1, 1.35,1.35);
setScaleKey( spep_7-3 + 16, 1, 1.41,1.41);
setScaleKey( spep_7-3 + 18, 1, 1.45,1.45);
setScaleKey( spep_7-3 + 20, 1, 1.48,1.48);
setScaleKey( spep_7-3 + 22, 1, 1.51,1.51);
setScaleKey( spep_7-3 + 24, 1, 1.55,1.55);
setScaleKey( spep_7-3 + 26, 1, 1.58,1.58);
setScaleKey( spep_7-3 + 28, 1, 1.61,1.61);
setScaleKey( spep_7-3 + 30, 1, 1.65,1.65);
setScaleKey( spep_7-3 + 32, 1, 1.68,1.68);
setScaleKey( spep_7-3 + 34, 1, 1.71,1.71);
setScaleKey( spep_7-3 + 36, 1, 1.74,1.74);
setScaleKey( spep_7-3 + 38, 1, 1.78,1.78);
setScaleKey( spep_7-3 + 40, 1, 1.81,1.81);
setScaleKey( spep_7-3 + 42, 1, 1.81,1.81);
setScaleKey( spep_7-3 + 44, 1, 1.84,1.84);
setScaleKey( spep_7-3 + 46, 1, 1.88,1.88);
setScaleKey( spep_7-3 + 48, 1, 1.88,1.88);
setScaleKey( spep_7-3 + 50, 1, 1.91,1.91);
setScaleKey( spep_7-3 + 52, 1, 1.91,1.91);
setScaleKey( spep_7-3 + 55, 1, 1.94,1.94);
setScaleKey( spep_7-3 + 56, 1, 2.24,2.24);
setScaleKey( spep_7-3 + 58, 1, 2.64,2.64);
setScaleKey( spep_7-3 + 60, 1, 3.76,3.76);

setRotateKey( spep_7-3 + 0, 1, -21.6 );
setRotateKey( spep_7-3 + 2, 1, -20.7 );
setRotateKey( spep_7-3 + 4, 1, -19.8 );
setRotateKey( spep_7-3 + 6, 1, -18.9 );
setRotateKey( spep_7-3 + 8, 1, -18 );
setRotateKey( spep_7-3 + 10, 1, -17.1 );
setRotateKey( spep_7-3 + 12, 1, -16.2 );
setRotateKey( spep_7-3 + 14, 1, -15.3 );
setRotateKey( spep_7-3 + 16, 1, -14.3 );
setRotateKey( spep_7-3 + 18, 1, -13.4 );
setRotateKey( spep_7-3 + 20, 1, -13.9 );
setRotateKey( spep_7-3 + 22, 1, -14.3 );
setRotateKey( spep_7-3 + 24, 1, -14.8 );
setRotateKey( spep_7-3 + 26, 1, -15.3 );
setRotateKey( spep_7-3 + 28, 1, -15.7 );
setRotateKey( spep_7-3 + 30, 1, -16.2 );
setRotateKey( spep_7-3 + 32, 1, -16.6 );
setRotateKey( spep_7-3 + 34, 1, -17.1 );
setRotateKey( spep_7-3 + 36, 1, -17.5 );
setRotateKey( spep_7-3 + 38, 1, -18 );
setRotateKey( spep_7-3 + 40, 1, -18.5 );
setRotateKey( spep_7-3 + 42, 1, -18.9 );
setRotateKey( spep_7-3 + 44, 1, -19.4 );
setRotateKey( spep_7-3 + 46, 1, -19.8 );
setRotateKey( spep_7-3 + 48, 1, -20.3 );
setRotateKey( spep_7-3 + 50, 1, -20.7 );
setRotateKey( spep_7-3 + 52, 1, -21.2 );
setRotateKey( spep_7-3 + 55, 1, -21.7 );
setRotateKey( spep_7-3 + 56, 1, -37.1 );
setRotateKey( spep_7-3 + 58, 1, -40.3 );
setRotateKey( spep_7-3 + 60, 1, -49.9 );

--SE
--竜巻になるA
stopSe( spep_7-16 + 0, SE033, 10 );
stopSe( spep_7-16 + 20, SE035, 10 );

--竜巻になるB
SE036 = playSe( spep_7-16 + 0, 1117 );
setSeVolumeByWorkId( spep_7-16 + 0, SE036, 115 );
stopSe( spep_7-16 + 18, SE036, 18 );
setPitch( spep_7-16 + 0, SE036, -500 );
setTimeStretch( SE036, 0.67, 10, 1 );

--竜巻になるA
SE037 = playSe( spep_7-16 + 18, 1116 );
stopSe( spep_7-16 + 40, SE037, 10 );
setPitch( spep_7-16 + 18, SE037, -600 );
setTimeStretch( SE037, 0.6, 10, 1 );

--竜巻になるB
SE038 = playSe( spep_7-16 + 18, 1117 );
setSeVolumeByWorkId( spep_7-16 + 18, SE038, 135 );
stopSe( spep_7-16 + 36, SE038, 18 );
setPitch( spep_7-16 + 18, SE038, -400 );
setTimeStretch( SE038, 0.73, 10, 1 );

--竜巻になるA
SE039 = playSe( spep_7-16 + 32, 1116 );
stopSe( spep_7-16 + 54, SE039, 10 );
setPitch( spep_7-16 + 32, SE039, -600 );
setTimeStretch( SE039, 0.6, 10, 1 );

--竜巻になるB
SE040 = playSe( spep_7-16 + 32, 1117 );
setSeVolumeByWorkId( spep_7-16 + 32, SE040, 141 );
stopSe( spep_7-16 + 50, SE040, 18 );
setPitch( spep_7-16 + 32, SE040, -200 );
setTimeStretch( SE040, 0.87, 10, 1 );

--竜巻になるB
SE041 = playSe( spep_7-16 + 44, 1117 );
setSeVolumeByWorkId( spep_7-16 + 44, SE041, 172 );
stopSe( spep_7-16 + 62, SE041, 16 );

--竜巻になるA
SE042 = playSe( spep_7-16 + 46, 1116 );
stopSe( spep_7-16 + 68, SE042, 10 );
setPitch( spep_7-16 + 46, SE042, -600 );
setTimeStretch( SE042, 0.6, 10, 1 );

--蹴り
SE043 = playSe( spep_7 + 54, 1003 );
SE044 = playSe( spep_7 + 60, 1120 );

--雨
SE031_2 = playSe( spep_7 + 0, 1165 );
setSeVolumeByWorkId( spep_7 + 0, SE031_2, 45 );
setBandpassFilter( spep_7 + 0, SE031_2, 2500, 24000 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_8=spep_7+116;
------------------------------------------------------
-- 吹っ飛ぶ敵
------------------------------------------------------
-- ** エフェクト等 ** --
fly_f = entryEffect( spep_8 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, fly_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 46 -2, fly_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, fly_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 46 -2, fly_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, fly_f, 0 );
setEffRotateKey( spep_8 + 46 -2, fly_f, 0 );
setEffAlphaKey( spep_8 + 0, fly_f, 255 );
setEffAlphaKey( spep_8 + 44 -2, fly_f, 255 );
setEffAlphaKey( spep_8 + 45 -2, fly_f, 255 );
setEffAlphaKey( spep_8 + 46 -2, fly_f, 0 );

-- ** エフェクト等 ** --
fly_b = entryEffect( spep_8 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, fly_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 46 -2, fly_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, fly_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 46 -2, fly_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, fly_b, 0 );
setEffRotateKey( spep_8 + 46 -2, fly_b, 0 );
setEffAlphaKey( spep_8 + 0, fly_b, 255 );
setEffAlphaKey( spep_8 + 44 -2, fly_b, 255 );
setEffAlphaKey( spep_8 + 45 -2, fly_b, 255 );
setEffAlphaKey( spep_8 + 46 -2, fly_b, 0 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 48, 1, 0 );

changeAnime( spep_8 + 0, 1, 5 );

c=200;
d=-150;

setMoveKey( spep_8 + 0, 1, -872.5+d, -839.9+c , 0 );
setMoveKey( spep_8 + 2, 1, -781.4+d, -749.6+c , 0 );
setMoveKey( spep_8 + 4, 1, -630.6+d, -597.3+c , 0 );
--setMoveKey( spep_8 + 6, 1, -434.2+d, -397.8+c , 0 );
--setMoveKey( spep_8 + 8, 1, -206.6+d, -166.1+c , 0 );
setMoveKey( spep_8 + 10, 1, 41, 90.4 , 0 );
setMoveKey( spep_8 + 12, 1, 41.4, 90.5 , 0 );
setMoveKey( spep_8 + 14, 1, 41.8, 90.5 , 0 );
setMoveKey( spep_8 + 16, 1, 42.1, 90.5 , 0 );
setMoveKey( spep_8 + 18, 1, 42.3, 90.3 , 0 );
setMoveKey( spep_8 + 20, 1, 42.6, 90.3 , 0 );
setMoveKey( spep_8 + 22, 1, 42.8, 90.1 , 0 );
setMoveKey( spep_8 + 24, 1, 42.9, 89.9 , 0 );
setMoveKey( spep_8 + 26, 1, 43, 89.7 , 0 );
setMoveKey( spep_8 + 28, 1, 43, 89.4 , 0 );
setMoveKey( spep_8 + 30, 1, 43.1, 89 , 0 );
setMoveKey( spep_8 + 32, 1, 43, 88.7 , 0 );
setMoveKey( spep_8 + 34, 1, 43, 88.3 , 0 );
setMoveKey( spep_8 + 36, 1, 42.9, 87.8 , 0 );
setMoveKey( spep_8 + 38, 1, 42.8, 87.4 , 0 );
setMoveKey( spep_8 + 40, 1, 42.6, 86.8 , 0 );
setMoveKey( spep_8 + 42, 1, 42.4, 86.3 , 0 );
setMoveKey( spep_8 + 44, 1, 42.2, 85.7 , 0 );
setMoveKey( spep_8 + 46, 1, 41.8, 85.1 , 0 );
setMoveKey( spep_8 + 48, 1, 41.5, 84.5 , 0 );

setScaleKey( spep_8 + 0, 1, 14.34,14.34);
setScaleKey( spep_8 + 2, 1, 12.9,12.9);
setScaleKey( spep_8 + 4, 1, 10.62,10.62);
setScaleKey( spep_8 + 6, 1, 7.68,7.68);
setScaleKey( spep_8 + 8, 1, 4.32,4.32);
setScaleKey( spep_8 + 10, 1, 0.78,0.78);
--setScaleKey( spep_8 + 12, 1, 0.72,0.72);
setScaleKey( spep_8 + 20, 1, 0.72,0.72);
--setScaleKey( spep_8 + 22, 1, 0.66,0.66);
setScaleKey( spep_8 + 32, 1, 0.66,0.66);
--setScaleKey( spep_8 + 34, 1, 0.6,0.6);
setScaleKey( spep_8 + 48, 1, 0.6,0.6);

setRotateKey( spep_8 + 0, 1, 44.7 );
setRotateKey( spep_8 + 16, 1, 44.7 );
setRotateKey( spep_8 + 18, 1, 44.6 );
setRotateKey( spep_8 + 48, 1, 44.6 );

--SE
--敵飛んでいく
SE045 = playSe( spep_8 + 0, 1183 );
setSeVolumeByWorkId( spep_8 + 0, SE045, 100 );
stopSe( spep_8 + 42, SE045, 60 );
SE046 = playSe( spep_8 + 0, 1121 );
setSeVolumeByWorkId( spep_8 + 0, SE046, 60 );
stopSe( spep_8 + 42, SE046, 60 );

--[[
SE045 = playSe( spep_8 + 0, 1183 );
setSeVolumeByWorkId( spep_8 + 0, SE045, 90 );
stopSe( spep_8 + 42, SE045, 60 );
SE046 = playSe( spep_8 + 0, 1121 );
setSeVolumeByWorkId( spep_8 + 0, SE046, 60 );
stopSe( spep_8 + 42, SE046, 60 );
]]--
-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_9=spep_8+46 -2;
------------------------------------------------------
-- 傘をキャッチ
------------------------------------------------------
-- ** エフェクト等 ** --
catch = entryEffect( spep_9 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, catch, 0, 0, 0 );
setEffMoveKey( spep_9 + 46 -2, catch, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, catch, 1.0, 1.0 );
setEffScaleKey( spep_9 + 46 -2, catch, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, catch, 0 );
setEffRotateKey( spep_9 + 46 -2, catch, 0 );
setEffAlphaKey( spep_9 + 0, catch, 255 );
setEffAlphaKey( spep_9 + 44 -2, catch, 255 );
setEffAlphaKey( spep_9 + 45 -2, catch, 255 );
setEffAlphaKey( spep_9 + 46 -2, catch, 0 );

--SE
--傘キャッチ
SE047 = playSe( spep_9 + 0, 1317 );
SE048 = playSe( spep_9 + 2, 1013 );
setSeVolumeByWorkId( spep_9 + 2, SE048, 81 );
stopSe( spep_9 + 12, SE048, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_10=spep_9+46 -2;
------------------------------------------------------
-- 傘をさす孫悟空～フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_10 + 0, SP_13, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_10 + 130, finish, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_10 + 130, finish, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, finish, 0 );
setEffRotateKey( spep_10 + 130, finish, 0 );
setEffAlphaKey( spep_10 + 0, finish, 255 );
setEffAlphaKey( spep_10 + 130, finish, 255 );

--SE
--ラスト決め
SE049 = playSe( spep_10 + 0, 1072 );
setSeVolumeByWorkId( spep_10 + 0, SE049, 0 );
setSeVolumeByWorkId( spep_10 + 1, SE049, 7.1 );
setSeVolumeByWorkId( spep_10 + 2, SE049, 14.2 );
setSeVolumeByWorkId( spep_10 + 3, SE049, 21.3 );
setSeVolumeByWorkId( spep_10 + 4, SE049, 28.4 );
setSeVolumeByWorkId( spep_10 + 5, SE049, 35.5 );
setSeVolumeByWorkId( spep_10 + 6, SE049, 42.6 );
setSeVolumeByWorkId( spep_10 + 7, SE049, 49.7 );
setSeVolumeByWorkId( spep_10 + 8, SE049, 56.8 );
setSeVolumeByWorkId( spep_10 + 9, SE049, 63.9 );
setSeVolumeByWorkId( spep_10 + 10, SE049, 71 );
setSeVolumeByWorkId( spep_10 + 11, SE049, 78.1 );
setSeVolumeByWorkId( spep_10 + 12, SE049, 85.2 );
setSeVolumeByWorkId( spep_10 + 13, SE049, 92.3 );
setSeVolumeByWorkId( spep_10 + 14, SE049, 100 );
setStartTimeMs( SE049,  317 );

-- ** ダメージ表示 ** --
dealDamage( spep_10 + 10 );
endPhase( spep_10 + 120 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 傘を持った孫悟空、登場
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
appearance = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, appearance, 0, 0, 0 );
setEffMoveKey( spep_0 + 120, appearance, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, appearance, -1.0, 1.0 );
setEffScaleKey( spep_0 + 120, appearance, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, appearance, 0 );
setEffRotateKey( spep_0 + 120, appearance, 0 );
setEffAlphaKey( spep_0 + 0, appearance, 255 );
setEffAlphaKey( spep_0 + 120, appearance, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +30;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--入り
SE001 = playSe( spep_0 + 0, 1072 );
SE002 = playSe( spep_0 + 34, 1005 );
setSeVolumeByWorkId( spep_0 + 34, SE002, 68 );
SE003 = playSe( spep_0 + 38, 1013 );
SE003_02 = playSe( spep_0 + 0, 1165 );
setSeVolumeByWorkId( spep_0 + 0, SE003_02, 45 );
setBandpassFilter( spep_0 + 0, SE003_02, 2500, 24000 );
stopSe( spep_0 + 120, SE003_02, 10 );

--顔カットイン
--SE004 = playSe( spep_x + 12, 1018 );


-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0,120, 0, 0, 0, 0, 255 );  --白 背景

--白フェード
entryFade( spep_0 + 112, 4, 8,4 , fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+120;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
-- 傘を空に投げる
------------------------------------------------------
-- ** エフェクト等 ** --
throw = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, throw, 0, 0, 0 );
setEffMoveKey( spep_2 + 44, throw, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, throw, -1.0, 1.0 );
setEffScaleKey( spep_2 + 44, throw, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, throw, 0 );
setEffRotateKey( spep_2 + 44, throw, 0 );
setEffAlphaKey( spep_2 + 0, throw, 255 );
setEffAlphaKey( spep_2 + 42, throw, 255 );
setEffAlphaKey( spep_2 + 43, throw, 255 );
setEffAlphaKey( spep_2 + 44, throw, 0 );

--SE
--傘飛ばす
SE006 = playSe( spep_2 + 0, 1013 );
setSeVolumeByWorkId( spep_2 + 0, SE006, 122 );
SE007 = playSe( spep_2 + 2, 1027 );
setSeVolumeByWorkId( spep_2 + 2, SE007, 89 );

--雨
SE008 = playSe( spep_2 + 8, 1165 );
setSeVolumeByWorkId( spep_2 + 8, SE008, 45 );
setBandpassFilter( spep_2 + 8, SE008, 2500, 24000 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 50, 0, 0, 0, 0, 255 );  --白 背景

-- ** 次の準備 ** --
spep_3= spep_2 + 44;
------------------------------------------------------
-- 構え～ダッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
dash = entryEffect( spep_3 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, dash, 0, 0, 0 );
setEffMoveKey( spep_3 + 98, dash, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, dash, -1.0, 1.0 );
setEffScaleKey( spep_3 + 98, dash, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, dash, 0 );
setEffRotateKey( spep_3 + 98, dash, 0 );
setEffAlphaKey( spep_3 + 0, dash, 255 );
setEffAlphaKey( spep_3 + 96, dash, 255 );
setEffAlphaKey( spep_3 + 97, dash, 255 );
setEffAlphaKey( spep_3 + 98, dash, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 50, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 28 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);

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
--SE
--向かってくる
SE009 = playSe( spep_3 + 28, 1182 );
SE010 = playSe( spep_3 + 28, 9 );
stopSe( spep_3 + 90, SE010, 34 );

--瞬間移動
SE011 = playSe( spep_3 + 80, 1109 );

--水しぶき１
SE012 = playSe( spep_3 + 80, 1163 );
setSeVolumeByWorkId( spep_3 + 80, SE012, 145 );


-- ** 次の準備 ** --
spep_4= spep_3 + 96;
------------------------------------------------------
-- 高速で攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
attack_f = entryEffect( spep_4 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, attack_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 176, attack_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 176, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, attack_f, 0 );
setEffRotateKey( spep_4 + 176, attack_f, 0 );
setEffAlphaKey( spep_4 + 0, attack_f, 255 );
setEffAlphaKey( spep_4 + 174, attack_f, 255 );
setEffAlphaKey( spep_4 + 175, attack_f, 255 );
setEffAlphaKey( spep_4 + 176, attack_f, 0 );

-- ** エフェクト等 ** --
attack_b = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, attack_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 176, attack_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 176, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, attack_b, 0 );
setEffRotateKey( spep_4 + 176, attack_b, 0 );
setEffAlphaKey( spep_4 + 0, attack_b, 255 );
setEffAlphaKey( spep_4 + 174, attack_b, 255 );
setEffAlphaKey( spep_4 + 175, attack_b, 255 );
setEffAlphaKey( spep_4 + 176, attack_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 178, 1, 0 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4-3 + 30, 1, 106 );
changeAnime( spep_4-3 + 66, 1, 6 );
changeAnime( spep_4-3 + 88, 1, 108 );
changeAnime( spep_4-3 + 136, 1, 7 );

setMoveKey( spep_4 + 0, 1, 256.2, 14.5 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 245.3, 10.6 , 0 );
setMoveKey( spep_4-3 + 4, 1, 234.4, 6.7 , 0 );
setMoveKey( spep_4-3 + 6, 1, 223.5, 2.8 , 0 );
setMoveKey( spep_4-3 + 8, 1, 212.6, -1.1 , 0 );
setMoveKey( spep_4-3 + 10, 1, 201.7, -5 , 0 );
setMoveKey( spep_4-3 + 12, 1, 190.8, -8.9 , 0 );
setMoveKey( spep_4-3 + 14, 1, 179.9, -12.8 , 0 );
setMoveKey( spep_4-3 + 16, 1, 169, -16.7 , 0 );
setMoveKey( spep_4-3 + 18, 1, 158.1, -20.6 , 0 );
setMoveKey( spep_4-3 + 20, 1, 147.2, -24.5 , 0 );
setMoveKey( spep_4-3 + 22, 1, 136.3, -28.4 , 0 );
setMoveKey( spep_4-3 + 24, 1, 125.5, -32.3 , 0 );
setMoveKey( spep_4-3 + 26, 1, 98.7, -31.2 , 0 );
setMoveKey( spep_4-3 + 29, 1, 160.4, -1.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, 140.5, -93.9 , 0 );
setMoveKey( spep_4-3 + 32, 1, 100.4, -61 , 0 );
setMoveKey( spep_4-3 + 34, 1, 96.7, -86.1 , 0 );
setMoveKey( spep_4-3 + 36, 1, 44.2, -45.5 , 0 );
setMoveKey( spep_4-3 + 38, 1, 32.8, -74.9 , 0 );
setMoveKey( spep_4-3 + 40, 1, 21.9, -49.7 , 0 );
setMoveKey( spep_4-3 + 42, 1, 11.8, -54.9 , 0 );
setMoveKey( spep_4-3 + 44, 1, 2.2, -52.1 , 0 );
setMoveKey( spep_4-3 + 46, 1, -6.7, -49.6 , 0 );
setMoveKey( spep_4-3 + 48, 1, -14.9, -47.4 , 0 );
setMoveKey( spep_4-3 + 50, 1, -22.6, -45.5 , 0 );
setMoveKey( spep_4-3 + 52, 1, -29.5, -43.8 , 0 );
setMoveKey( spep_4-3 + 54, 1, -35.9, -42.3 , 0 );
setMoveKey( spep_4-3 + 56, 1, -41.7, -41.1 , 0 );
setMoveKey( spep_4-3 + 58, 1, -46.7, -40.2 , 0 );
setMoveKey( spep_4-3 + 60, 1, -51.2, -39.6 , 0 );
setMoveKey( spep_4-3 + 62, 1, -55, -39.2 , 0 );
setMoveKey( spep_4-3 + 65, 1, -58.2, -39 , 0 );
setMoveKey( spep_4-3 + 66, 1, -253.1, 30.6 , 0 );
setMoveKey( spep_4-3 + 68, 1, -181.9, -2 , 0 );
setMoveKey( spep_4-3 + 70, 1, -148.9, 34.1 , 0 );
setMoveKey( spep_4-3 + 72, 1, -85.3, 12.3 , 0 );
setMoveKey( spep_4-3 + 74, 1, -58, 41.5 , 0 );
setMoveKey( spep_4-3 + 76, 1, -82.8, 15.6 , 0 );
setMoveKey( spep_4-3 + 78, 1, -74.2, 41.9 , 0 );
setMoveKey( spep_4-3 + 80, 1, -48.9, 21.2 , 0 );
setMoveKey( spep_4-3 + 82, 1, -56.3, 33.4 , 0 );
setMoveKey( spep_4-3 + 84, 1, -52.4, 34.4 , 0 );
setMoveKey( spep_4-3 + 87, 1, -48.2, 35.3 , 0 );
setMoveKey( spep_4-3 + 88, 1, 189.9, 70.9 , 0 );
setMoveKey( spep_4-3 + 90, 1, 128.1, 69.3 , 0 );
setMoveKey( spep_4-3 + 92, 1, 66.2, 67.5 , 0 );
setMoveKey( spep_4-3 + 94, 1, 4, 79.6 , 0 );
setMoveKey( spep_4-3 + 96, 1, -58.4, 50.3 , 0 );
setMoveKey( spep_4-3 + 98, 1, -67.5, 64.3 , 0 );
setMoveKey( spep_4-3 + 100, 1, -43.8, 64.5 , 0 );
setMoveKey( spep_4-3 + 102, 1, -53.3, 70.3 , 0 );
setMoveKey( spep_4-3 + 104, 1, -52, 65 , 0 );
setMoveKey( spep_4-3 + 106, 1, -51, 65.2 , 0 );
setMoveKey( spep_4-3 + 108, 1, -50.2, 65.4 , 0 );
setMoveKey( spep_4-3 + 110, 1, -49.6, 65.5 , 0 );
setMoveKey( spep_4-3 + 112, 1, -49.2, 65.7 , 0 );
setMoveKey( spep_4-3 + 114, 1, -49, 65.8 , 0 );
setMoveKey( spep_4-3 + 116, 1, -49.1, 66 , 0 );
setMoveKey( spep_4-3 + 118, 1, -49.3, 66.1 , 0 );
setMoveKey( spep_4-3 + 120, 1, -49.8, 66.2 , 0 );
setMoveKey( spep_4-3 + 122, 1, -50.5, 66.3 , 0 );
setMoveKey( spep_4-3 + 124, 1, -51.4, 66.3 , 0 );
setMoveKey( spep_4-3 + 126, 1, -52.6, 66.4 , 0 );
setMoveKey( spep_4-3 + 128, 1, -53.9, 66.4 , 0 );
setMoveKey( spep_4-3 + 130, 1, -55.5, 66.5 , 0 );
setMoveKey( spep_4-3 + 132, 1, 64.9, 74.4 , 0 );
setMoveKey( spep_4-3 + 135, 1, 185, 82.4 , 0 );
setMoveKey( spep_4-3 + 136, 1, -161.1, -17.8 , 0 );
setMoveKey( spep_4-3 + 138, 1, -97.8, -18.3 , 0 );
setMoveKey( spep_4-3 + 140, 1, -103.1, -1.8 , 0 );
setMoveKey( spep_4-3 + 142, 1, -108.2, -29.4 , 0 );
setMoveKey( spep_4-3 + 144, 1, -129.5, -10.3 , 0 );
setMoveKey( spep_4-3 + 146, 1, -101.1, -7.8 , 0 );
setMoveKey( spep_4-3 + 148, 1, -122, 5.5 , 0 );
setMoveKey( spep_4-3 + 150, 1, -126.1, -14.2 , 0 );
setMoveKey( spep_4-3 + 152, 1, -138.1, -1 , 0 );
setMoveKey( spep_4-3 + 154, 1, -125.2, 1.1 , 0 );
setMoveKey( spep_4-3 + 156, 1, -136.7, 3 , 0 );
setMoveKey( spep_4-3 + 158, 1, -139.7, 4.9 , 0 );
setMoveKey( spep_4-3 + 160, 1, -142.6, 6.6 , 0 );
setMoveKey( spep_4-3 + 162, 1, -145, 8.3 , 0 );
setMoveKey( spep_4-3 + 164, 1, -147.2, 9.9 , 0 );
setMoveKey( spep_4-3 + 166, 1, -149.1, 11.3 , 0 );
setMoveKey( spep_4-3 + 168, 1, -150.8, 12.6 , 0 );
setMoveKey( spep_4-3 + 170, 1, -152.2, 13.9 , 0 );
setMoveKey( spep_4-3 + 172, 1, -153.3, 15 , 0 );
setMoveKey( spep_4-3 + 174, 1, -154, 16 , 0 );
setMoveKey( spep_4-3 + 176, 1, -154.5, 16.9 , 0 );
setMoveKey( spep_4-1 + 178, 1, -154.7, 17.7 , 0 );

setScaleKey( spep_4 + 0, 1, 1.72, 1.72 );
setScaleKey( spep_4-3 + 130, 1, 1.72, 1.72 );
setScaleKey( spep_4-3 + 131, 1, 1.72, 1.72 );
setScaleKey( spep_4-3 + 135, 1, 2.24,2.24);
setScaleKey( spep_4-3 + 136, 1, 1.02,1.02);
setScaleKey( spep_4-3 + 138, 1, 1.12,1.12);
setScaleKey( spep_4-3 + 140, 1, 1.15,1.15);
setScaleKey( spep_4-1 + 178, 1, 1.18,1.18);

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 29, 1, 0 );
setRotateKey( spep_4-3 + 30, 1, -38 );
setRotateKey( spep_4-3 + 32, 1, -35.9 );
setRotateKey( spep_4-3 + 34, 1, -34 );
setRotateKey( spep_4-3 + 36, 1, -32.2 );
setRotateKey( spep_4-3 + 38, 1, -30.5 );
setRotateKey( spep_4-3 + 40, 1, -29 );
setRotateKey( spep_4-3 + 42, 1, -27.5 );
setRotateKey( spep_4-3 + 44, 1, -26.2 );
setRotateKey( spep_4-3 + 46, 1, -25 );
setRotateKey( spep_4-3 + 48, 1, -24 );
setRotateKey( spep_4-3 + 50, 1, -23.1 );
setRotateKey( spep_4-3 + 52, 1, -22.3 );
setRotateKey( spep_4-3 + 54, 1, -21.6 );
setRotateKey( spep_4-3 + 56, 1, -21 );
setRotateKey( spep_4-3 + 58, 1, -20.6 );
setRotateKey( spep_4-3 + 60, 1, -20.3 );
setRotateKey( spep_4-3 + 62, 1, -20.1 );
setRotateKey( spep_4-3 + 65, 1, -20 );
setRotateKey( spep_4-3 + 66, 1, 53 );
setRotateKey( spep_4-3 + 68, 1, 51 );
setRotateKey( spep_4-3 + 70, 1, 49.1 );
setRotateKey( spep_4-3 + 72, 1, 47.4 );
setRotateKey( spep_4-3 + 74, 1, 45.8 );
setRotateKey( spep_4-3 + 76, 1, 44.3 );
setRotateKey( spep_4-3 + 78, 1, 43 );
setRotateKey( spep_4-3 + 80, 1, 41.7 );
setRotateKey( spep_4-3 + 82, 1, 40.6 );
setRotateKey( spep_4-3 + 84, 1, 39.7 );
setRotateKey( spep_4-3 + 87, 1, 38.8 );
setRotateKey( spep_4-3 + 88, 1, 19 );
setRotateKey( spep_4-3 + 90, 1, 20 );
setRotateKey( spep_4-3 + 92, 1, 21 );
setRotateKey( spep_4-3 + 94, 1, 22 );
setRotateKey( spep_4-3 + 96, 1, 22.9 );
setRotateKey( spep_4-3 + 98, 1, 23.7 );
setRotateKey( spep_4-3 + 100, 1, 24.5 );
setRotateKey( spep_4-3 + 102, 1, 25.3 );
setRotateKey( spep_4-3 + 104, 1, 26 );
setRotateKey( spep_4-3 + 106, 1, 26.7 );
setRotateKey( spep_4-3 + 108, 1, 27.3 );
setRotateKey( spep_4-3 + 110, 1, 27.9 );
setRotateKey( spep_4-3 + 112, 1, 28.4 );
setRotateKey( spep_4-3 + 114, 1, 28.9 );
setRotateKey( spep_4-3 + 116, 1, 29.3 );
setRotateKey( spep_4-3 + 118, 1, 29.7 );
setRotateKey( spep_4-3 + 120, 1, 30.1 );
setRotateKey( spep_4-3 + 122, 1, 30.4 );
setRotateKey( spep_4-3 + 124, 1, 30.6 );
setRotateKey( spep_4-3 + 126, 1, 30.8 );
setRotateKey( spep_4-3 + 128, 1, 31 );
setRotateKey( spep_4-3 + 130, 1, 31.1 );
setRotateKey( spep_4-3 + 132, 1, 31.2 );
setRotateKey( spep_4-3 + 135, 1, 31.2 );
setRotateKey( spep_4-3 + 136, 1, 60.5 );
setRotateKey( spep_4-1 + 178, 1, 60.5 );

--SE
--水しぶき１
SE013 = playSe( spep_4 + 0, 1166 );
setSeVolumeByWorkId( spep_4 + 0, SE013, 133 );
stopSe( spep_4 + 38, SE013, 26 );

--ヒット１
SE014 = playSe( spep_4 + 26, 1009 );
SE015 = playSe( spep_4 + 26, 1110 );
setSeVolumeByWorkId( spep_4 + 26, SE015, 83 );

--水しぶき２
SE016 = playSe( spep_4 + 26, 1163 );
setSeVolumeByWorkId( spep_4 + 26, SE016, 160 );
SE017 = playSe( spep_4 + 42, 1166 );
setSeVolumeByWorkId( spep_4 + 42, SE017, 153 );
stopSe( spep_4 + 74, SE017, 20 );
SE018 = playSe( spep_4 + 52, 1163 );
setSeVolumeByWorkId( spep_4 + 52, SE018, 164 );

--ヒット２
SE019 = playSe( spep_4 + 64, 1009 );
SE020 = playSe( spep_4 + 64, 1110 );
setSeVolumeByWorkId( spep_4 + 64, SE020, 85 );

--水しぶき３
SE021 = playSe( spep_4 + 70, 1166 );
setSeVolumeByWorkId( spep_4 + 70, SE021, 132 );
stopSe( spep_4 + 106, SE021, 28 );

--ヒット３
SE022 = playSe( spep_4 + 86, 1009 );
SE023 = playSe( spep_4 + 86, 1110 );

--水しぶき４
SE024 = playSe( spep_4 + 98, 1163 );
setSeVolumeByWorkId( spep_4 + 98, SE024, 160 );
SE025 = playSe( spep_4 + 114, 1166 );
setSeVolumeByWorkId( spep_4 + 114, SE025, 160 );
stopSe( spep_4 + 150, SE025, 28 );

--ヒット４
SE026 = playSe( spep_4 + 134, 1009 );
SE027 = playSe( spep_4 + 134, 1110 );
setSeVolumeByWorkId( spep_4 + 134, SE027, 79 );
SE028 = playSe( spep_4 + 134, 1187 );
setSeVolumeByWorkId( spep_4 + 134, SE028, 61 );

--水走り
SE029 = playSe( spep_4 + 162, 1166 );
setSeVolumeByWorkId( spep_4 + 162, SE029, 126 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 180, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+176;
------------------------------------------------------
-- 横滑りしてくる孫悟空
------------------------------------------------------
-- ** エフェクト等 ** --
sliding = entryEffect( spep_5 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, sliding, 0, 0, 0 );
setEffMoveKey( spep_5 + 64, sliding, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, sliding, 1.0, 1.0 );
setEffScaleKey( spep_5 + 64, sliding, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, sliding, 0 );
setEffRotateKey( spep_5 + 64, sliding, 0 );
setEffAlphaKey( spep_5 + 0, sliding, 255 );
setEffAlphaKey( spep_5 + 62, sliding, 255 );
setEffAlphaKey( spep_5 + 63, sliding, 255 );
setEffAlphaKey( spep_5 + 64, sliding, 0 );

--SE
--水走り
stopSe( spep_5 + 36, SE029, 18 );

--水走り止まる
SE030 = playSe( spep_5 + 24, 1192 );
setSeVolumeByWorkId( spep_5 + 24, SE030, 257 );

--雨
SE031 = playSe( spep_5 + 18, 1165 );
setSeVolumeByWorkId( spep_5 + 18, SE031, 45 );
setBandpassFilter   ( spep_5 + 18, SE031, 2500, 24000 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 68, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_6=spep_5+64;
------------------------------------------------------
-- 蹴り～竜巻に変化
------------------------------------------------------
-- ** エフェクト等 ** --
tornado = entryEffect( spep_6 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, tornado, 0, 0, 0 );
setEffMoveKey( spep_6 + 94, tornado, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, tornado, 1.0, 1.0 );
setEffScaleKey( spep_6 + 94, tornado, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tornado, 0 );
setEffRotateKey( spep_6 + 94, tornado, 0 );
setEffAlphaKey( spep_6 + 0, tornado, 255 );
setEffAlphaKey( spep_6 + 52, tornado, 255 );
setEffAlphaKey( spep_6 + 93, tornado, 255 );
setEffAlphaKey( spep_6 + 94, tornado, 0 );

--SE
--振りかぶり
SE032 = playSe( spep_6 + 4, 1117 );
stopSe( spep_6 + 48, SE032, 18 );

--竜巻になるA
SE033 = playSe( spep_6-16 + 70, 1116 );
setPitch( spep_6-16 + 70, SE033, -600 );
setTimeStretch( SE033, 0.6, 10, 1 );

--竜巻になるB
SE034 = playSe( spep_6-16 + 70, 1117 );
setSeVolumeByWorkId( spep_6-16 + 70, SE034, 112 );
stopSe( spep_6-16 + 88, SE034, 18 );
setPitch( spep_6-16 + 70, SE034, -600 );
setTimeStretch( SE034, 0.6, 10, 1 );

--竜巻になるA
SE035 = playSe( spep_6-16 + 92, 1116 );
setPitch( spep_6-16 + 92, SE035, -600 );
setTimeStretch( SE035, 0.6, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_7=spep_6+92;
------------------------------------------------------
-- 竜巻～蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_7 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 116, kick_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 116, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, kick_f, 0 );
setEffRotateKey( spep_7 + 116, kick_f, 0 );
setEffAlphaKey( spep_7 + 0, kick_f, 255 );
setEffAlphaKey( spep_7 + 114, kick_f, 255 );
setEffAlphaKey( spep_7 + 115, kick_f, 255 );
setEffAlphaKey( spep_7 + 116, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_7 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 116, kick_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 116, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, kick_b, 0 );
setEffRotateKey( spep_7 + 116, kick_b, 0 );
setEffAlphaKey( spep_7 + 0, kick_b, 255 );
setEffAlphaKey( spep_7 + 114, kick_b, 255 );
setEffAlphaKey( spep_7 + 115, kick_b, 255 );
setEffAlphaKey( spep_7 + 116, kick_b, 0 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7-3 + 60, 1, 0 );

changeAnime( spep_7 + 0, 1, 7 );
changeAnime( spep_7-3 + 56, 1, 107 );

a=100;
b=70;

setMoveKey( spep_7 + 0, 1, 580.2+b, -182.5+a , 0 );
--setMoveKey( spep_7-3 + 2, 1, 554.8, -196.1 , 0 );
setMoveKey( spep_7-3 + 4, 1, 528.9+b, -209.4+a , 0 );
setMoveKey( spep_7-3 + 6, 1, 502.8+b, -222.6+a , 0 );
setMoveKey( spep_7-3 + 8, 1, 476.4+b, -235.4+a , 0 );
setMoveKey( spep_7-3 + 10, 1, 449.5+b, -248+a , 0 );
setMoveKey( spep_7-3 + 12, 1, 422.2+b, -260.3+a , 0 );
setMoveKey( spep_7-3 + 14, 1, 394.7+b, -272.4+a , 0 );
setMoveKey( spep_7-3 + 16, 1, 366.9+b, -284+a , 0 );
setMoveKey( spep_7-3 + 18, 1, 338.8+b, -295.4+a , 0 );
setMoveKey( spep_7-3 + 20, 1, 332.3+b, -298.8+a , 0 );
setMoveKey( spep_7-3 + 22, 1, 325.9+b, -302+a , 0 );
setMoveKey( spep_7-3 + 24, 1, 319.7+b, -304.8+a , 0 );
setMoveKey( spep_7-3 + 26, 1, 313.7+b, -307.2+a , 0 );
setMoveKey( spep_7-3 + 28, 1, 340.6+b, -312.8+a , 0 );
setMoveKey( spep_7-3 + 30, 1, 367.7+b, -318.1+a , 0 );
setMoveKey( spep_7-3 + 32, 1, 395+b, -323+a , 0 );
setMoveKey( spep_7-3 + 34, 1, 422.4+b, -327.4+a , 0 );
setMoveKey( spep_7-3 + 36, 1, 449.9+b, -331.6+a , 0 );
setMoveKey( spep_7-3 + 38, 1, 477.6+b, -335.3+a , 0 );
setMoveKey( spep_7-3 + 40, 1, 505.4+b, -338.6+a , 0 );
setMoveKey( spep_7-3 + 42, 1, 533.4+b, -341.5+a , 0 );
setMoveKey( spep_7-3 + 44, 1, 561.3+b, -343.9+a , 0 );
setMoveKey( spep_7-3 + 46, 1, 565.8+b, -345+a , 0 );
setMoveKey( spep_7-3 + 48, 1, 570.4+b, -345.8+a , 0 );
setMoveKey( spep_7-3 + 50, 1, 575.1+b, -346+a , 0 );
setMoveKey( spep_7-3 + 52, 1, 579.8+b, -345.7+a , 0 );
setMoveKey( spep_7-3 + 55, 1, 584.7+b, -345+a , 0 );
setMoveKey( spep_7-3 + 56, 1, 400.9, -421.7 , 0 );
setMoveKey( spep_7-3 + 58, 1, 500.5, -484.3 , 0 );
setMoveKey( spep_7-3 + 60, 1, 1239.7, -463.3 , 0 );

setScaleKey( spep_7 + 0, 1, 1.02,1.02);
setScaleKey( spep_7-3 + 4, 1, 1.12,1.12);
setScaleKey( spep_7-3 + 6, 1, 1.18,1.18);
setScaleKey( spep_7-3 + 8, 1, 1.22,1.22);
setScaleKey( spep_7-3 + 10, 1, 1.28,1.28);
setScaleKey( spep_7-3 + 12, 1, 1.32,1.32);
setScaleKey( spep_7-3 + 14, 1, 1.35,1.35);
setScaleKey( spep_7-3 + 16, 1, 1.41,1.41);
setScaleKey( spep_7-3 + 18, 1, 1.45,1.45);
setScaleKey( spep_7-3 + 20, 1, 1.48,1.48);
setScaleKey( spep_7-3 + 22, 1, 1.51,1.51);
setScaleKey( spep_7-3 + 24, 1, 1.55,1.55);
setScaleKey( spep_7-3 + 26, 1, 1.58,1.58);
setScaleKey( spep_7-3 + 28, 1, 1.61,1.61);
setScaleKey( spep_7-3 + 30, 1, 1.65,1.65);
setScaleKey( spep_7-3 + 32, 1, 1.68,1.68);
setScaleKey( spep_7-3 + 34, 1, 1.71,1.71);
setScaleKey( spep_7-3 + 36, 1, 1.74,1.74);
setScaleKey( spep_7-3 + 38, 1, 1.78,1.78);
setScaleKey( spep_7-3 + 40, 1, 1.81,1.81);
setScaleKey( spep_7-3 + 42, 1, 1.81,1.81);
setScaleKey( spep_7-3 + 44, 1, 1.84,1.84);
setScaleKey( spep_7-3 + 46, 1, 1.88,1.88);
setScaleKey( spep_7-3 + 48, 1, 1.88,1.88);
setScaleKey( spep_7-3 + 50, 1, 1.91,1.91);
setScaleKey( spep_7-3 + 52, 1, 1.91,1.91);
setScaleKey( spep_7-3 + 55, 1, 1.94,1.94);
setScaleKey( spep_7-3 + 56, 1, 2.24,2.24);
setScaleKey( spep_7-3 + 58, 1, 2.64,2.64);
setScaleKey( spep_7-3 + 60, 1, 3.76,3.76);

setRotateKey( spep_7-3 + 0, 1, -21.6 );
setRotateKey( spep_7-3 + 2, 1, -20.7 );
setRotateKey( spep_7-3 + 4, 1, -19.8 );
setRotateKey( spep_7-3 + 6, 1, -18.9 );
setRotateKey( spep_7-3 + 8, 1, -18 );
setRotateKey( spep_7-3 + 10, 1, -17.1 );
setRotateKey( spep_7-3 + 12, 1, -16.2 );
setRotateKey( spep_7-3 + 14, 1, -15.3 );
setRotateKey( spep_7-3 + 16, 1, -14.3 );
setRotateKey( spep_7-3 + 18, 1, -13.4 );
setRotateKey( spep_7-3 + 20, 1, -13.9 );
setRotateKey( spep_7-3 + 22, 1, -14.3 );
setRotateKey( spep_7-3 + 24, 1, -14.8 );
setRotateKey( spep_7-3 + 26, 1, -15.3 );
setRotateKey( spep_7-3 + 28, 1, -15.7 );
setRotateKey( spep_7-3 + 30, 1, -16.2 );
setRotateKey( spep_7-3 + 32, 1, -16.6 );
setRotateKey( spep_7-3 + 34, 1, -17.1 );
setRotateKey( spep_7-3 + 36, 1, -17.5 );
setRotateKey( spep_7-3 + 38, 1, -18 );
setRotateKey( spep_7-3 + 40, 1, -18.5 );
setRotateKey( spep_7-3 + 42, 1, -18.9 );
setRotateKey( spep_7-3 + 44, 1, -19.4 );
setRotateKey( spep_7-3 + 46, 1, -19.8 );
setRotateKey( spep_7-3 + 48, 1, -20.3 );
setRotateKey( spep_7-3 + 50, 1, -20.7 );
setRotateKey( spep_7-3 + 52, 1, -21.2 );
setRotateKey( spep_7-3 + 55, 1, -21.7 );
setRotateKey( spep_7-3 + 56, 1, -37.1 );
setRotateKey( spep_7-3 + 58, 1, -40.3 );
setRotateKey( spep_7-3 + 60, 1, -49.9 );

--SE
--竜巻になるA
stopSe( spep_7-16 + 0, SE033, 10 );
stopSe( spep_7-16 + 20, SE035, 10 );

--竜巻になるB
SE036 = playSe( spep_7-16 + 0, 1117 );
setSeVolumeByWorkId( spep_7-16 + 0, SE036, 115 );
stopSe( spep_7-16 + 18, SE036, 18 );
setPitch( spep_7-16 + 0, SE036, -500 );
setTimeStretch( SE036, 0.67, 10, 1 );

--竜巻になるA
SE037 = playSe( spep_7-16 + 18, 1116 );
stopSe( spep_7-16 + 40, SE037, 10 );
setPitch( spep_7-16 + 18, SE037, -600 );
setTimeStretch( SE037, 0.6, 10, 1 );

--竜巻になるB
SE038 = playSe( spep_7-16 + 18, 1117 );
setSeVolumeByWorkId( spep_7-16 + 18, SE038, 135 );
stopSe( spep_7-16 + 36, SE038, 18 );
setPitch( spep_7-16 + 18, SE038, -400 );
setTimeStretch( SE038, 0.73, 10, 1 );

--竜巻になるA
SE039 = playSe( spep_7-16 + 32, 1116 );
stopSe( spep_7-16 + 54, SE039, 10 );
setPitch( spep_7-16 + 32, SE039, -600 );
setTimeStretch( SE039, 0.6, 10, 1 );

--竜巻になるB
SE040 = playSe( spep_7-16 + 32, 1117 );
setSeVolumeByWorkId( spep_7-16 + 32, SE040, 141 );
stopSe( spep_7-16 + 50, SE040, 18 );
setPitch( spep_7-16 + 32, SE040, -200 );
setTimeStretch( SE040, 0.87, 10, 1 );

--竜巻になるB
SE041 = playSe( spep_7-16 + 44, 1117 );
setSeVolumeByWorkId( spep_7-16 + 44, SE041, 172 );
stopSe( spep_7-16 + 62, SE041, 16 );

--竜巻になるA
SE042 = playSe( spep_7-16 + 46, 1116 );
stopSe( spep_7-16 + 68, SE042, 10 );
setPitch( spep_7-16 + 46, SE042, -600 );
setTimeStretch( SE042, 0.6, 10, 1 );

--蹴り
SE043 = playSe( spep_7 + 54, 1003 );
SE044 = playSe( spep_7 + 60, 1120 );

--雨
SE031_2 = playSe( spep_7 + 0, 1165 );
setSeVolumeByWorkId( spep_7 + 0, SE031_2, 45 );
setBandpassFilter( spep_7 + 0, SE031_2, 2500, 24000 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_8=spep_7+116;
------------------------------------------------------
-- 吹っ飛ぶ敵
------------------------------------------------------
-- ** エフェクト等 ** --
fly_f = entryEffect( spep_8 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, fly_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 46 -2, fly_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, fly_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 46 -2, fly_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, fly_f, 0 );
setEffRotateKey( spep_8 + 46 -2, fly_f, 0 );
setEffAlphaKey( spep_8 + 0, fly_f, 255 );
setEffAlphaKey( spep_8 + 44 -2, fly_f, 255 );
setEffAlphaKey( spep_8 + 45 -2, fly_f, 255 );
setEffAlphaKey( spep_8 + 46 -2, fly_f, 0 );

-- ** エフェクト等 ** --
fly_b = entryEffect( spep_8 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, fly_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 46 -2, fly_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, fly_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 46 -2, fly_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, fly_b, 0 );
setEffRotateKey( spep_8 + 46 -2, fly_b, 0 );
setEffAlphaKey( spep_8 + 0, fly_b, 255 );
setEffAlphaKey( spep_8 + 44 -2, fly_b, 255 );
setEffAlphaKey( spep_8 + 45 -2, fly_b, 255 );
setEffAlphaKey( spep_8 + 46 -2, fly_b, 0 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 48, 1, 0 );

changeAnime( spep_8 + 0, 1, 5 );

c=200;
d=-150;

setMoveKey( spep_8 + 0, 1, -872.5+d, -839.9+c , 0 );
setMoveKey( spep_8 + 2, 1, -781.4+d, -749.6+c , 0 );
setMoveKey( spep_8 + 4, 1, -630.6+d, -597.3+c , 0 );
--setMoveKey( spep_8 + 6, 1, -434.2+d, -397.8+c , 0 );
--setMoveKey( spep_8 + 8, 1, -206.6+d, -166.1+c , 0 );
setMoveKey( spep_8 + 10, 1, 41, 90.4 , 0 );
setMoveKey( spep_8 + 12, 1, 41.4, 90.5 , 0 );
setMoveKey( spep_8 + 14, 1, 41.8, 90.5 , 0 );
setMoveKey( spep_8 + 16, 1, 42.1, 90.5 , 0 );
setMoveKey( spep_8 + 18, 1, 42.3, 90.3 , 0 );
setMoveKey( spep_8 + 20, 1, 42.6, 90.3 , 0 );
setMoveKey( spep_8 + 22, 1, 42.8, 90.1 , 0 );
setMoveKey( spep_8 + 24, 1, 42.9, 89.9 , 0 );
setMoveKey( spep_8 + 26, 1, 43, 89.7 , 0 );
setMoveKey( spep_8 + 28, 1, 43, 89.4 , 0 );
setMoveKey( spep_8 + 30, 1, 43.1, 89 , 0 );
setMoveKey( spep_8 + 32, 1, 43, 88.7 , 0 );
setMoveKey( spep_8 + 34, 1, 43, 88.3 , 0 );
setMoveKey( spep_8 + 36, 1, 42.9, 87.8 , 0 );
setMoveKey( spep_8 + 38, 1, 42.8, 87.4 , 0 );
setMoveKey( spep_8 + 40, 1, 42.6, 86.8 , 0 );
setMoveKey( spep_8 + 42, 1, 42.4, 86.3 , 0 );
setMoveKey( spep_8 + 44, 1, 42.2, 85.7 , 0 );
setMoveKey( spep_8 + 46, 1, 41.8, 85.1 , 0 );
setMoveKey( spep_8 + 48, 1, 41.5, 84.5 , 0 );

setScaleKey( spep_8 + 0, 1, 14.34,14.34);
setScaleKey( spep_8 + 2, 1, 12.9,12.9);
setScaleKey( spep_8 + 4, 1, 10.62,10.62);
setScaleKey( spep_8 + 6, 1, 7.68,7.68);
setScaleKey( spep_8 + 8, 1, 4.32,4.32);
setScaleKey( spep_8 + 10, 1, 0.78,0.78);
--setScaleKey( spep_8 + 12, 1, 0.72,0.72);
setScaleKey( spep_8 + 20, 1, 0.72,0.72);
--setScaleKey( spep_8 + 22, 1, 0.66,0.66);
setScaleKey( spep_8 + 32, 1, 0.66,0.66);
--setScaleKey( spep_8 + 34, 1, 0.6,0.6);
setScaleKey( spep_8 + 48, 1, 0.6,0.6);

setRotateKey( spep_8 + 0, 1, 44.7 );
setRotateKey( spep_8 + 16, 1, 44.7 );
setRotateKey( spep_8 + 18, 1, 44.6 );
setRotateKey( spep_8 + 48, 1, 44.6 );

--SE
--敵飛んでいく
SE045 = playSe( spep_8 + 0, 1183 );
setSeVolumeByWorkId( spep_8 + 0, SE045, 100 );
stopSe( spep_8 + 42, SE045, 60 );
SE046 = playSe( spep_8 + 0, 1121 );
setSeVolumeByWorkId( spep_8 + 0, SE046, 60 );
stopSe( spep_8 + 42, SE046, 60 );

--[[
SE045 = playSe( spep_8 + 0, 1183 );
setSeVolumeByWorkId( spep_8 + 0, SE045, 90 );
stopSe( spep_8 + 42, SE045, 60 );
SE046 = playSe( spep_8 + 0, 1121 );
setSeVolumeByWorkId( spep_8 + 0, SE046, 60 );
stopSe( spep_8 + 42, SE046, 60 );
]]--
-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_9=spep_8+46 -2;
------------------------------------------------------
-- 傘をキャッチ
------------------------------------------------------
-- ** エフェクト等 ** --
catch = entryEffect( spep_9 + 0, SP_12x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, catch, 0, 0, 0 );
setEffMoveKey( spep_9 + 46 -2, catch, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, catch, -1.0, 1.0 );
setEffScaleKey( spep_9 + 46 -2, catch, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, catch, 0 );
setEffRotateKey( spep_9 + 46 -2, catch, 0 );
setEffAlphaKey( spep_9 + 0, catch, 255 );
setEffAlphaKey( spep_9 + 44 -2, catch, 255 );
setEffAlphaKey( spep_9 + 45 -2, catch, 255 );
setEffAlphaKey( spep_9 + 46 -2, catch, 0 );

--SE
--傘キャッチ
SE047 = playSe( spep_9 + 0, 1317 );
SE048 = playSe( spep_9 + 2, 1013 );
setSeVolumeByWorkId( spep_9 + 2, SE048, 81 );
stopSe( spep_9 + 12, SE048, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_10=spep_9+46 -2;
------------------------------------------------------
-- 傘をさす孫悟空～フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_10 + 0, SP_13x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_10 + 130, finish, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_10 + 130, finish, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0, finish, 0 );
setEffRotateKey( spep_10 + 130, finish, 0 );
setEffAlphaKey( spep_10 + 0, finish, 255 );
setEffAlphaKey( spep_10 + 130, finish, 255 );

--SE
--ラスト決め
SE049 = playSe( spep_10 + 0, 1072 );
setSeVolumeByWorkId( spep_10 + 0, SE049, 0 );
setSeVolumeByWorkId( spep_10 + 1, SE049, 7.1 );
setSeVolumeByWorkId( spep_10 + 2, SE049, 14.2 );
setSeVolumeByWorkId( spep_10 + 3, SE049, 21.3 );
setSeVolumeByWorkId( spep_10 + 4, SE049, 28.4 );
setSeVolumeByWorkId( spep_10 + 5, SE049, 35.5 );
setSeVolumeByWorkId( spep_10 + 6, SE049, 42.6 );
setSeVolumeByWorkId( spep_10 + 7, SE049, 49.7 );
setSeVolumeByWorkId( spep_10 + 8, SE049, 56.8 );
setSeVolumeByWorkId( spep_10 + 9, SE049, 63.9 );
setSeVolumeByWorkId( spep_10 + 10, SE049, 71 );
setSeVolumeByWorkId( spep_10 + 11, SE049, 78.1 );
setSeVolumeByWorkId( spep_10 + 12, SE049, 85.2 );
setSeVolumeByWorkId( spep_10 + 13, SE049, 92.3 );
setSeVolumeByWorkId( spep_10 + 14, SE049, 100 );
setStartTimeMs( SE049,  317 );

-- ** ダメージ表示 ** --
dealDamage( spep_10 + 10 );
endPhase( spep_10 + 120 );
end