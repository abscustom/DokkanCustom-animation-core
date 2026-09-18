--4025120:孫悟空_メテオスマッシュ
--sp_effect_a1_00371

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
SP_01=	160405	;--	冒頭気拡大
SP_02=	160406	;--	地面から空中突進
SP_03=	160407	;--	接近パンチ：敵より前
SP_04=	160408	;--	接近パンチ：敵より後
SP_05=	160409	;--	吹き飛ばしキック：敵より前
SP_06=	160410	;--	吹き飛ばしキック：敵より後
SP_07=	160411	;--	回転下がり気弾発射
SP_08=	160412	;--	ビーム：敵より前
SP_09=	160413	;--	ビーム：敵より後

--エフェクト(敵)
SP_01x=	160405	;--	冒頭気拡大	
SP_02x=	160406	;--	地面から空中突進	
SP_03x=	160407	;--	接近パンチ：敵より前	
SP_04x=	160408	;--	接近パンチ：敵より後	
SP_05x=	160414	;--	吹き飛ばしキック：敵より前	(敵)
SP_06x=	160410	;--	吹き飛ばしキック：敵より後	
SP_07x=	160415	;--	回転下がり気弾発射	(敵)
SP_08x=	160412	;--	ビーム：敵より前	
SP_09x=	160413	;--	ビーム：敵より後	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.9);

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
changeAnime( 0, 1, 0);


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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--冒頭気拡大
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 100, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 100, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 18,  906, 80, 0x100, -1, 0, 0, 8.8 );
setEffShake( spep_0-3 + 18, shuchusen1, 80, 20 );
setEffMoveKey( spep_0-3 + 18, shuchusen1, 0, 8.8 , 0 );
setEffMoveKey( spep_0-3 + 98, shuchusen1, 0, 8.8 , 0 );

setEffScaleKey( spep_0-3 + 18, shuchusen1, 1.45, 1.45 );
setEffScaleKey( spep_0-3 + 98, shuchusen1, 1.45, 1.45 );

setEffRotateKey( spep_0-3 + 18, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 98, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 18, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 98, shuchusen1, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +10;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 100,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  100,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

--SE
--入り
SE001 = playSeVer2( spep_0 + 4, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE001, 75 );

--構える
SE002 = playSeVer2( spep_0 + 6, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 83 );

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気ダメ
SE004 = playSeVer2( spep_0 + 42, 1024, "",spep_0 + 110, 0, 8, -1);
SE005 = playSeVer2( spep_0 + 42, 1035, "",spep_0 + 110, 0, 8, -1);
SE006 = playSeVer2( spep_0 + 44, 1179, "",spep_0 + 110, 0, 8, -1);

--白フェード
entryFade( spep_0 +96 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1= spep_0 + 100;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );]]

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

-- ** 極限用 ** --
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

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;
------------------------------------------------------
--地面から空中突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, rush, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, rush, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush, 0 );
setEffRotateKey( spep_2 + 56, rush, 0 );
setEffAlphaKey( spep_2 + 0, rush, 255 );
setEffAlphaKey( spep_2 + 54, rush, 255 );
setEffAlphaKey( spep_2 + 55, rush, 255 );
setEffAlphaKey( spep_2 + 56, rush, 0 );

--SE
--オーラ
SE008 = playSeVer2( spep_2 + 0, 1181, "",spep_2 + 60, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 0, SE008, 178 );
SE009 = playSeVer2( spep_2 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE009, 40 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    
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
--SE
--オーラ
SE010 = playSeVer2( spep_2 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE010, 40 );

--向かってくる
SE011 = playSeVer2( spep_2 + 26, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 26, 9, "", 0, 0, 0, -1);

--オーラ
SE013 = playSeVer2( spep_2 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE013, 40 );

-- ** 次の準備 ** --
spep_3= spep_2 + 56;
------------------------------------------------------
--接近パンチ
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 84, panting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 84, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_f, 0 );
setEffRotateKey( spep_3 + 84, panting_f, 0 );
setEffAlphaKey( spep_3 + 0, panting_f, 255 );
setEffAlphaKey( spep_3 + 82, panting_f, 255 );
setEffAlphaKey( spep_3 + 83, panting_f, 255 );
setEffAlphaKey( spep_3 + 84, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 84, panting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 84, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_b, 0 );
setEffRotateKey( spep_3 + 84, panting_b, 0 );
setEffAlphaKey( spep_3 + 0, panting_b, 255 );
setEffAlphaKey( spep_3 + 82, panting_b, 255 );
setEffAlphaKey( spep_3 + 83, panting_b, 255 );
setEffAlphaKey( spep_3 + 84, panting_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3-3 + 36, 1, 6 );
changeAnime( spep_3-3 + 54, 1, 108 );

setMoveKey( spep_3 + 0, 1, 167.2, 68.1 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 158.9, 65.8 , 0 );
setMoveKey( spep_3-3 + 4, 1, 150.7, 63.5 , 0 );
setMoveKey( spep_3-3 + 6, 1, 142.4, 61.2 , 0 );
setMoveKey( spep_3-3 + 8, 1, 134.1, 58.9 , 0 );
setMoveKey( spep_3-3 + 10, 1, 125.9, 56.6 , 0 );
setMoveKey( spep_3-3 + 12, 1, 117.6, 54.3 , 0 );
setMoveKey( spep_3-3 + 14, 1, 109.4, 52 , 0 );
setMoveKey( spep_3-3 + 16, 1, 101.1, 49.7 , 0 );
setMoveKey( spep_3-3 + 18, 1, 92.8, 47.4 , 0 );
setMoveKey( spep_3-3 + 20, 1, 84.6, 45 , 0 );
setMoveKey( spep_3-3 + 22, 1, 76.3, 42.7 , 0 );
setMoveKey( spep_3-3 + 24, 1, 68, 40.4 , 0 );
setMoveKey( spep_3-3 + 26, 1, 59.8, 38.1 , 0 );
setMoveKey( spep_3-3 + 28, 1, 51.5, 35.7 , 0 );
setMoveKey( spep_3-3 + 30, 1, 43.3, 33.4 , 0 );
setMoveKey( spep_3-3 + 32, 1, 35, 31.1 , 0 );
setMoveKey( spep_3-3 + 35, 1, 26.7, 28.8 , 0 );
setMoveKey( spep_3-3 + 36, 1, -41.5, 78.3 , 0 );
setMoveKey( spep_3-3 + 38, 1, -16.7, 115.1 , 0 );
setMoveKey( spep_3-3 + 40, 1, -65.7, 59.3 , 0 );
setMoveKey( spep_3-3 + 42, 1, -58.6, 92.3 , 0 );
setMoveKey( spep_3-3 + 44, 1, -59.6, 93.5 , 0 );
setMoveKey( spep_3-3 + 46, 1, -60.5, 94.7 , 0 );
setMoveKey( spep_3-3 + 48, 1, -61.5, 95.9 , 0 );
setMoveKey( spep_3-3 + 50, 1, -62.4, 97 , 0 );
setMoveKey( spep_3-3 + 53, 1, -63.3, 98.2 , 0 );
setMoveKey( spep_3-3 + 54, 1, -29.4, 101.1 , 0 );
setMoveKey( spep_3-3 + 56, 1, 3.6, 117.9 , 0 );
setMoveKey( spep_3-3 + 58, 1, -15, 142.2 , 0 );
setMoveKey( spep_3-3 + 60, 1, 46.3, 143.5 , 0 );
setMoveKey( spep_3-3 + 62, 1, -0.3, 87.9 , 0 );
setMoveKey( spep_3-3 + 64, 1, -11, 145.9 , 0 );
setMoveKey( spep_3-3 + 66, 1, 50.3, 147.2 , 0 );
setMoveKey( spep_3-3 + 68, 1, 3.7, 91.6 , 0 );
setMoveKey( spep_3-3 + 70, 1, 13, 128.7 , 0 );
setMoveKey( spep_3-3 + 72, 1, 14.4, 129.9 , 0 );
setMoveKey( spep_3-3 + 74, 1, 15.7, 131.2 , 0 );
setMoveKey( spep_3-3 + 76, 1, 17, 132.4 , 0 );
setMoveKey( spep_3-3 + 78, 1, 18.4, 133.6 , 0 );
setMoveKey( spep_3-3 + 80, 1, 19.7, 134.9 , 0 );
setMoveKey( spep_3-3 + 82, 1, 21.1, 136.1 , 0 );
setMoveKey( spep_3-3 + 84, 1, 22.4, 137.4 , 0 );
setMoveKey( spep_3-3 + 86, 1, 23.7, 138.6 , 0 );

setScaleKey( spep_3 + 0, 1, 1.5, 1.5 );
--setScaleKey( spep_3-3 + 2, 1, 1.63, 1.63 );
setScaleKey( spep_3-3 + 4, 1, 1.76, 1.76 );
setScaleKey( spep_3-3 + 6, 1, 1.89, 1.89 );
setScaleKey( spep_3-3 + 8, 1, 2.02, 2.02 );
setScaleKey( spep_3-3 + 10, 1, 2.15, 2.15 );
setScaleKey( spep_3-3 + 12, 1, 2.28, 2.28 );
setScaleKey( spep_3-3 + 14, 1, 2.41, 2.41 );
setScaleKey( spep_3-3 + 16, 1, 2.54, 2.54 );
setScaleKey( spep_3-3 + 18, 1, 2.66, 2.66 );
setScaleKey( spep_3-3 + 20, 1, 2.79, 2.79 );
setScaleKey( spep_3-3 + 22, 1, 2.92, 2.92 );
setScaleKey( spep_3-3 + 24, 1, 3.05, 3.05 );
setScaleKey( spep_3-3 + 26, 1, 3.18, 3.18 );
setScaleKey( spep_3-3 + 28, 1, 3.31, 3.31 );
setScaleKey( spep_3-3 + 30, 1, 3.44, 3.44 );
setScaleKey( spep_3-3 + 32, 1, 3.57, 3.57 );
setScaleKey( spep_3-3 + 35, 1, 3.7, 3.7 );
setScaleKey( spep_3-3 + 36, 1, 4.09, 4.09 );
setScaleKey( spep_3-3 + 38, 1, 4.1, 4.1 );
setScaleKey( spep_3-3 + 53, 1, 4.1, 4.1 );
setScaleKey( spep_3-3 + 54, 1, 4.5, 4.5 );
setScaleKey( spep_3-3 + 86, 1, 4.5, 4.5 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 35, 1, 0 );
setRotateKey( spep_3-3 + 36, 1, 64 );
setRotateKey( spep_3-3 + 38, 1, 63.8 );
setRotateKey( spep_3-3 + 53, 1, 63.8 );
setRotateKey( spep_3-3 + 54, 1, -10 );
setRotateKey( spep_3-3 + 86, 1, -10 );

--SE
--振りかぶる
SE014 = playSeVer2( spep_3 + 10, 1116, "",spep_3 + 52, 0, 20, -1);

--パンチ
SE015 = playSeVer2( spep_3 + 34, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 34, 1110, "", 0, 0, 0, -1);

--パンチ２
SE017 = playSeVer2( spep_3 + 52, 1010, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 52, 1110, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4= spep_3 + 84;
------------------------------------------------------
--吹き飛ばしキック
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 44, kick_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 44, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_f, 0 );
setEffRotateKey( spep_4 + 44, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 42, kick_f, 255 );
setEffAlphaKey( spep_4 + 43, kick_f, 255 );
setEffAlphaKey( spep_4 + 44, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 44, kick_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 44, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_b, 0 );
setEffRotateKey( spep_4 + 44, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 42, kick_b, 255 );
setEffAlphaKey( spep_4 + 43, kick_b, 255 );
setEffAlphaKey( spep_4 + 44, kick_b, 0 );

--敵の動き
setDisp( spep_4-3 + 40, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4-3 + 14, 1, 106 );

setMoveKey( spep_4 + 0, 1, 132.8, 25.7 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 137, 29.9 , 0 );
setMoveKey( spep_4-3 + 4, 1, 141.2, 34.1 , 0 );
setMoveKey( spep_4-3 + 6, 1, 145.4, 38.3 , 0 );
setMoveKey( spep_4-3 + 8, 1, 149.6, 42.5 , 0 );
setMoveKey( spep_4-3 + 10, 1, 153.8, 46.6 , 0 );
setMoveKey( spep_4-3 + 13, 1, 158, 50.8 , 0 );
setMoveKey( spep_4-3 + 14, 1, 95.6, 63.7 , 0 );
setMoveKey( spep_4-3 + 16, 1, 81.5, 82 , 0 );
setMoveKey( spep_4-3 + 18, 1, 144.9, 93.9 , 0 );
setMoveKey( spep_4-3 + 20, 1, 75.9, 53.6 , 0 );
setMoveKey( spep_4-3 + 22, 1, 126, 100.9 , 0 );
setMoveKey( spep_4-3 + 24, 1, 107.4, 82.3 , 0 );
setMoveKey( spep_4-3 + 26, 1, 103.8, 86.9 , 0 );
setMoveKey( spep_4-3 + 28, 1, 114.3, 92.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, 251, 86.8 , 0 );
setMoveKey( spep_4-3 + 32, 1, 387.7, 90 , 0 );
setMoveKey( spep_4-3 + 34, 1, 524.4, 84.1 , 0 );
setMoveKey( spep_4-3 + 36, 1, 661, 82.7 , 0 );
setMoveKey( spep_4-3 + 38, 1, 797.7, 81.3 , 0 );
setMoveKey( spep_4-3 + 40, 1, 934.3, 80 , 0 );

setScaleKey( spep_4 + 0, 1, 2.2, 2.2 );
setScaleKey( spep_4-3 + 13, 1, 2.2, 2.2 );
setScaleKey( spep_4-3 + 14, 1, 1.9, 1.9 );
setScaleKey( spep_4-3 + 40, 1, 1.9, 1.9 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 13, 1, 0 );
setRotateKey( spep_4-3 + 14, 1, -39 );
setRotateKey( spep_4-3 + 16, 1, -39 );
setRotateKey( spep_4-3 + 18, 1, -38.5 );
setRotateKey( spep_4-3 + 20, 1, -38 );
setRotateKey( spep_4-3 + 22, 1, -37.5 );
setRotateKey( spep_4-3 + 24, 1, -37 );
setRotateKey( spep_4-3 + 26, 1, -36.5 );
setRotateKey( spep_4-3 + 28, 1, -36 );
setRotateKey( spep_4-3 + 30, 1, -28.6 );
setRotateKey( spep_4-3 + 32, 1, -21.2 );
setRotateKey( spep_4-3 + 34, 1, -13.8 );
setRotateKey( spep_4-3 + 36, 1, -6.4 );
setRotateKey( spep_4-3 + 38, 1, 1 );
setRotateKey( spep_4-3 + 40, 1, 8.4 );

--SE
--振りかぶる
SE019 = playSeVer2( spep_4 + 0, 1004, "", 0, 0, 0, -1);

--蹴り
SE020 = playSeVer2( spep_4 + 12, 1120, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 44;
------------------------------------------------------
--回転下がり気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_5 + 164, beam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 164, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 164, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 162, beam, 255 );
setEffAlphaKey( spep_5 + 163, beam, 255 );
setEffAlphaKey( spep_5 + 164, beam, 0 );

--SE
--構える
SE021 = playSeVer2( spep_5 + 36, 1007, "", 0, 0, 0, -1);

--腕広げる
SE022 = playSeVer2( spep_5 + 70, 1189, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_5 + 78, 1012, "", 0, 0, 0, -1);

--気ダメ
SE024 = playSeVer2( spep_5 + 102, 1035, "", 0, 0, 0, -1);

--気弾発射
SE025 = playSeVer2( spep_5 + 138, 1133, "",spep_5 + 258, 0, 16, -1);
setSeVolumeByWorkId( spep_5 + 138, SE025, 79 );
SE026 = playSeVer2( spep_5 + 138, 1177, "",spep_5 + 258, 0, 16, -1);
setSeVolumeByWorkId( spep_5 + 138, SE026, 70 );
SE027 = playSeVer2( spep_5 + 138, 1145, "",spep_5 + 258, 0, 16, -1);
setSeVolumeByWorkId( spep_5 + 138, SE027, 66 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 170, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6= spep_5 + 164;
------------------------------------------------------
--ビーム
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 194, finish_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 194, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 194, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 194, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 194, finish_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 194, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 194, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 194, finish_b, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_6-1 + 62,  906, 130, 0x100, -1, 0, 0, 4 );
setEffShake( spep_6-1 + 62, shuchusen2, 130, 20 );
setEffMoveKey( spep_6-1 + 62, shuchusen2, 0, 4 , 0 );
setEffMoveKey( spep_6-1 + 192, shuchusen2, 0, 4 , 0 );

setEffScaleKey( spep_6-1 + 62, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_6-1 + 192, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_6-1 + 62, shuchusen2, 180 );
setEffRotateKey( spep_6-1 + 192, shuchusen2, 180 );

setEffAlphaKey( spep_6-1 + 62, shuchusen2, 219 );
setEffAlphaKey( spep_6-1 + 192, shuchusen2, 219 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 58, 1, 0 );

changeAnime( spep_6 + 0, 1, 105 );

setMoveKey( spep_6 + 0, 1, 0.4, 87.5 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 0.4, 87.3 , 0 );
setMoveKey( spep_6-3 + 4, 1, 0.4, 87.1 , 0 );
setMoveKey( spep_6-3 + 6, 1, 0.4, 86.9 , 0 );
setMoveKey( spep_6-3 + 8, 1, 0.4, 86.6 , 0 );
setMoveKey( spep_6-3 + 10, 1, 0.4, 86.4 , 0 );
setMoveKey( spep_6-3 + 12, 1, 0.4, 86.1 , 0 );
setMoveKey( spep_6-3 + 14, 1, 0.4, 85.8 , 0 );
setMoveKey( spep_6-3 + 16, 1, 0.4, 85.5 , 0 );
setMoveKey( spep_6-3 + 18, 1, 0.4, 85.1 , 0 );
setMoveKey( spep_6-3 + 20, 1, 0.4, 84.8 , 0 );
setMoveKey( spep_6-3 + 22, 1, 0.3, 84.3 , 0 );
setMoveKey( spep_6-3 + 24, 1, 0.3, 83.9 , 0 );
setMoveKey( spep_6-3 + 26, 1, 0.3, 83.4 , 0 );
setMoveKey( spep_6-3 + 28, 1, 0.3, 82.8 , 0 );
setMoveKey( spep_6-3 + 30, 1, 0.3, 82.2 , 0 );
setMoveKey( spep_6-3 + 32, 1, 0.3, 81.5 , 0 );
setMoveKey( spep_6-3 + 34, 1, 0.3, 80.7 , 0 );
setMoveKey( spep_6-3 + 36, 1, 0.3, 79.8 , 0 );
setMoveKey( spep_6-3 + 38, 1, 0.2, 78.7 , 0 );
setMoveKey( spep_6-3 + 40, 1, 0.2, 77.4 , 0 );
setMoveKey( spep_6-3 + 42, 1, 0.2, 75.9 , 0 );
setMoveKey( spep_6-3 + 44, 1, 0.1, 73.9 , 0 );
setMoveKey( spep_6-3 + 46, 1, 0.1, 71.4 , 0 );
setMoveKey( spep_6-3 + 48, 1, 0, 68.2 , 0 );
setMoveKey( spep_6-3 + 50, 1, -0.1, 63.6 , 0 );
setMoveKey( spep_6-3 + 52, 1, -0.2, 57 , 0 );
setMoveKey( spep_6-3 + 54, 1, -0.5, 47.6 , 0 );
setMoveKey( spep_6-3 + 56, 1, -0.7, 35.6 , 0 );
setMoveKey( spep_6-1 + 58, 1, -1, 27.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.2, 0.2 );
--setScaleKey( spep_6-3 + 2, 1, 0.21, 0.21 );
setScaleKey( spep_6-3 + 4, 1, 0.21, 0.21 );
setScaleKey( spep_6-3 + 6, 1, 0.22, 0.22 );
setScaleKey( spep_6-3 + 8, 1, 0.22, 0.22 );
setScaleKey( spep_6-3 + 10, 1, 0.23, 0.23 );
setScaleKey( spep_6-3 + 12, 1, 0.24, 0.24 );
setScaleKey( spep_6-3 + 14, 1, 0.25, 0.25 );
setScaleKey( spep_6-3 + 16, 1, 0.26, 0.26 );
setScaleKey( spep_6-3 + 18, 1, 0.27, 0.27 );
setScaleKey( spep_6-3 + 20, 1, 0.28, 0.28 );
setScaleKey( spep_6-3 + 22, 1, 0.29, 0.29 );
setScaleKey( spep_6-3 + 24, 1, 0.31, 0.31 );
setScaleKey( spep_6-3 + 26, 1, 0.32, 0.32 );
setScaleKey( spep_6-3 + 28, 1, 0.34, 0.34 );
setScaleKey( spep_6-3 + 30, 1, 0.36, 0.36 );
setScaleKey( spep_6-3 + 32, 1, 0.39, 0.39 );
setScaleKey( spep_6-3 + 34, 1, 0.42, 0.42 );
setScaleKey( spep_6-3 + 36, 1, 0.45, 0.45 );
setScaleKey( spep_6-3 + 38, 1, 0.49, 0.49 );
setScaleKey( spep_6-3 + 40, 1, 0.54, 0.54 );
setScaleKey( spep_6-3 + 42, 1, 0.6, 0.6 );
setScaleKey( spep_6-3 + 44, 1, 0.68, 0.68 );
setScaleKey( spep_6-3 + 46, 1, 0.77, 0.77 );
setScaleKey( spep_6-3 + 48, 1, 0.9, 0.9 );
setScaleKey( spep_6-3 + 50, 1, 1.08, 1.08 );
setScaleKey( spep_6-3 + 52, 1, 1.34, 1.34 );
setScaleKey( spep_6-3 + 54, 1, 1.72, 1.72 );
setScaleKey( spep_6-3 + 56, 1, 2.2, 2.2 );
setScaleKey( spep_6-1 + 58, 1, 2.7, 2.7 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6-1 + 58, 1, 0 );

--SE
--気弾飛んでいく
SE028 = playSeVer2( spep_6 + 0, 1202, "",spep_6 + 84, 0, 16, -1);
setSeVolumeByWorkId( spep_6 + 0, SE028, 184 );

--爆発
SE029 = playSeVer2( spep_6 + 62, 1023, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_6 + 62, 1024, "", 0, 0, 0, -1);

-- 終わり
dealDamage(spep_6+64);
endPhase( spep_6 + 184 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--冒頭気拡大
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 100, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 100, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 100, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 18,  906, 80, 0x100, -1, 0, 0, 8.8 );
setEffShake( spep_0-3 + 18, shuchusen1, 80, 20 );
setEffMoveKey( spep_0-3 + 18, shuchusen1, 0, 8.8 , 0 );
setEffMoveKey( spep_0-3 + 98, shuchusen1, 0, 8.8 , 0 );

setEffScaleKey( spep_0-3 + 18, shuchusen1, 1.45, 1.45 );
setEffScaleKey( spep_0-3 + 98, shuchusen1, 1.45, 1.45 );

setEffRotateKey( spep_0-3 + 18, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 98, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 18, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 98, shuchusen1, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 100,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  100,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--SE
--入り
SE001 = playSeVer2( spep_0 + 4, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE001, 75 );

--構える
SE002 = playSeVer2( spep_0 + 6, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 83 );

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気ダメ
SE004 = playSeVer2( spep_0 + 42, 1024, "",spep_0 + 110, 0, 8, -1);
SE005 = playSeVer2( spep_0 + 42, 1035, "",spep_0 + 110, 0, 8, -1);
SE006 = playSeVer2( spep_0 + 44, 1179, "",spep_0 + 110, 0, 8, -1);

--白フェード
entryFade( spep_0 +96 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1= spep_0 + 100;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );]]

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

-- ** 極限用 ** --
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

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;
------------------------------------------------------
--地面から空中突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, rush, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_2 + 56, rush, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush, 0 );
setEffRotateKey( spep_2 + 56, rush, 0 );
setEffAlphaKey( spep_2 + 0, rush, 255 );
setEffAlphaKey( spep_2 + 54, rush, 255 );
setEffAlphaKey( spep_2 + 55, rush, 255 );
setEffAlphaKey( spep_2 + 56, rush, 0 );

--SE
--オーラ
SE008 = playSeVer2( spep_2 + 0, 1181, "",spep_2 + 60, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 0, SE008, 178 );
SE009 = playSeVer2( spep_2 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE009, 40 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    
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
--SE
--オーラ
SE010 = playSeVer2( spep_2 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE010, 40 );

--向かってくる
SE011 = playSeVer2( spep_2 + 26, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 26, 9, "", 0, 0, 0, -1);

--オーラ
SE013 = playSeVer2( spep_2 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE013, 40 );

-- ** 次の準備 ** --
spep_3= spep_2 + 56;
------------------------------------------------------
--接近パンチ
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 84, panting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 84, panting_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_f, 0 );
setEffRotateKey( spep_3 + 84, panting_f, 0 );
setEffAlphaKey( spep_3 + 0, panting_f, 255 );
setEffAlphaKey( spep_3 + 82, panting_f, 255 );
setEffAlphaKey( spep_3 + 83, panting_f, 255 );
setEffAlphaKey( spep_3 + 84, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 84, panting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 84, panting_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_b, 0 );
setEffRotateKey( spep_3 + 84, panting_b, 0 );
setEffAlphaKey( spep_3 + 0, panting_b, 255 );
setEffAlphaKey( spep_3 + 82, panting_b, 255 );
setEffAlphaKey( spep_3 + 83, panting_b, 255 );
setEffAlphaKey( spep_3 + 84, panting_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 0 );
changeAnime( spep_3-3 + 36, 1, 106 );
changeAnime( spep_3-3 + 54, 1, 8 );

setMoveKey( spep_3 + 0, 1, -167.2, 68.1 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 158.9, 65.8 , 0 );
setMoveKey( spep_3-3 + 4, 1, -150.7, 63.5 , 0 );
setMoveKey( spep_3-3 + 6, 1, -142.4, 61.2 , 0 );
setMoveKey( spep_3-3 + 8, 1, -134.1, 58.9 , 0 );
setMoveKey( spep_3-3 + 10, 1, -125.9, 56.6 , 0 );
setMoveKey( spep_3-3 + 12, 1, -117.6, 54.3 , 0 );
setMoveKey( spep_3-3 + 14, 1, -109.4, 52 , 0 );
setMoveKey( spep_3-3 + 16, 1, -101.1, 49.7 , 0 );
setMoveKey( spep_3-3 + 18, 1, -92.8, 47.4 , 0 );
setMoveKey( spep_3-3 + 20, 1, -84.6, 45 , 0 );
setMoveKey( spep_3-3 + 22, 1, -76.3, 42.7 , 0 );
setMoveKey( spep_3-3 + 24, 1, -68, 40.4 , 0 );
setMoveKey( spep_3-3 + 26, 1, -59.8, 38.1 , 0 );
setMoveKey( spep_3-3 + 28, 1, -51.5, 35.7 , 0 );
setMoveKey( spep_3-3 + 30, 1, -43.3, 33.4 , 0 );
setMoveKey( spep_3-3 + 32, 1, -35, 31.1 , 0 );
setMoveKey( spep_3-3 + 35, 1, -26.7, 28.8 , 0 );
setMoveKey( spep_3-3 + 36, 1, 41.5, 78.3 , 0 );
setMoveKey( spep_3-3 + 38, 1, 16.7, 115.1 , 0 );
setMoveKey( spep_3-3 + 40, 1, 65.7, 59.3 , 0 );
setMoveKey( spep_3-3 + 42, 1, 58.6, 92.3 , 0 );
setMoveKey( spep_3-3 + 44, 1, 59.6, 93.5 , 0 );
setMoveKey( spep_3-3 + 46, 1, 60.5, 94.7 , 0 );
setMoveKey( spep_3-3 + 48, 1, 61.5, 95.9 , 0 );
setMoveKey( spep_3-3 + 50, 1, 62.4, 97 , 0 );
setMoveKey( spep_3-3 + 53, 1, 63.3, 98.2 , 0 );
setMoveKey( spep_3-3 + 54, 1, 29.4, 101.1 , 0 );
setMoveKey( spep_3-3 + 56, 1, -3.6, 117.9 , 0 );
setMoveKey( spep_3-3 + 58, 1, 15, 142.2 , 0 );
setMoveKey( spep_3-3 + 60, 1, -46.3, 143.5 , 0 );
setMoveKey( spep_3-3 + 62, 1, 0.3, 87.9 , 0 );
setMoveKey( spep_3-3 + 64, 1, 11, 145.9 , 0 );
setMoveKey( spep_3-3 + 66, 1, -50.3, 147.2 , 0 );
setMoveKey( spep_3-3 + 68, 1, -3.7, 91.6 , 0 );
setMoveKey( spep_3-3 + 70, 1, -13, 128.7 , 0 );
setMoveKey( spep_3-3 + 72, 1, -14.4, 129.9 , 0 );
setMoveKey( spep_3-3 + 74, 1, -15.7, 131.2 , 0 );
setMoveKey( spep_3-3 + 76, 1, -17, 132.4 , 0 );
setMoveKey( spep_3-3 + 78, 1, -18.4, 133.6 , 0 );
setMoveKey( spep_3-3 + 80, 1, -19.7, 134.9 , 0 );
setMoveKey( spep_3-3 + 82, 1, -21.1, 136.1 , 0 );
setMoveKey( spep_3-3 + 84, 1, -22.4, 137.4 , 0 );
setMoveKey( spep_3-3 + 86, 1, -23.7, 138.6 , 0 );

setScaleKey( spep_3 + 0, 1, 1.5, 1.5 );
--setScaleKey( spep_3-3 + 2, 1, 1.63, 1.63 );
setScaleKey( spep_3-3 + 4, 1, 1.76, 1.76 );
setScaleKey( spep_3-3 + 6, 1, 1.89, 1.89 );
setScaleKey( spep_3-3 + 8, 1, 2.02, 2.02 );
setScaleKey( spep_3-3 + 10, 1, 2.15, 2.15 );
setScaleKey( spep_3-3 + 12, 1, 2.28, 2.28 );
setScaleKey( spep_3-3 + 14, 1, 2.41, 2.41 );
setScaleKey( spep_3-3 + 16, 1, 2.54, 2.54 );
setScaleKey( spep_3-3 + 18, 1, 2.66, 2.66 );
setScaleKey( spep_3-3 + 20, 1, 2.79, 2.79 );
setScaleKey( spep_3-3 + 22, 1, 2.92, 2.92 );
setScaleKey( spep_3-3 + 24, 1, 3.05, 3.05 );
setScaleKey( spep_3-3 + 26, 1, 3.18, 3.18 );
setScaleKey( spep_3-3 + 28, 1, 3.31, 3.31 );
setScaleKey( spep_3-3 + 30, 1, 3.44, 3.44 );
setScaleKey( spep_3-3 + 32, 1, 3.57, 3.57 );
setScaleKey( spep_3-3 + 35, 1, 3.7, 3.7 );
setScaleKey( spep_3-3 + 36, 1, 4.09, 4.09 );
setScaleKey( spep_3-3 + 38, 1, 4.1, 4.1 );
setScaleKey( spep_3-3 + 53, 1, 4.1, 4.1 );
setScaleKey( spep_3-3 + 54, 1, 4.5, 4.5 );
setScaleKey( spep_3-3 + 86, 1, 4.5, 4.5 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 35, 1, 0 );
setRotateKey( spep_3-3 + 36, 1, -64 );
setRotateKey( spep_3-3 + 38, 1, -63.8 );
setRotateKey( spep_3-3 + 53, 1, -63.8 );
setRotateKey( spep_3-3 + 54, 1, 10 );
setRotateKey( spep_3-3 + 86, 1, 10 );

--SE
--振りかぶる
SE014 = playSeVer2( spep_3 + 10, 1116, "",spep_3 + 52, 0, 20, -1);

--パンチ
SE015 = playSeVer2( spep_3 + 34, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 34, 1110, "", 0, 0, 0, -1);

--パンチ２
SE017 = playSeVer2( spep_3 + 52, 1010, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 52, 1110, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4= spep_3 + 84;
------------------------------------------------------
--吹き飛ばしキック
------------------------------------------------------
kick_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 44, kick_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 44, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_f, 0 );
setEffRotateKey( spep_4 + 44, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 42, kick_f, 255 );
setEffAlphaKey( spep_4 + 43, kick_f, 255 );
setEffAlphaKey( spep_4 + 44, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 44, kick_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 44, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_b, 0 );
setEffRotateKey( spep_4 + 44, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 42, kick_b, 255 );
setEffAlphaKey( spep_4 + 43, kick_b, 255 );
setEffAlphaKey( spep_4 + 44, kick_b, 0 );

--敵の動き
setDisp( spep_4-3 + 40, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4-3 + 14, 1, 106 );

setMoveKey( spep_4 + 0, 1, 132.8, 25.7 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 137, 29.9 , 0 );
setMoveKey( spep_4-3 + 4, 1, 141.2, 34.1 , 0 );
setMoveKey( spep_4-3 + 6, 1, 145.4, 38.3 , 0 );
setMoveKey( spep_4-3 + 8, 1, 149.6, 42.5 , 0 );
setMoveKey( spep_4-3 + 10, 1, 153.8, 46.6 , 0 );
setMoveKey( spep_4-3 + 13, 1, 158, 50.8 , 0 );
setMoveKey( spep_4-3 + 14, 1, 95.6, 63.7 , 0 );
setMoveKey( spep_4-3 + 16, 1, 81.5, 82 , 0 );
setMoveKey( spep_4-3 + 18, 1, 144.9, 93.9 , 0 );
setMoveKey( spep_4-3 + 20, 1, 75.9, 53.6 , 0 );
setMoveKey( spep_4-3 + 22, 1, 126, 100.9 , 0 );
setMoveKey( spep_4-3 + 24, 1, 107.4, 82.3 , 0 );
setMoveKey( spep_4-3 + 26, 1, 103.8, 86.9 , 0 );
setMoveKey( spep_4-3 + 28, 1, 114.3, 92.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, 251, 86.8 , 0 );
setMoveKey( spep_4-3 + 32, 1, 387.7, 90 , 0 );
setMoveKey( spep_4-3 + 34, 1, 524.4, 84.1 , 0 );
setMoveKey( spep_4-3 + 36, 1, 661, 82.7 , 0 );
setMoveKey( spep_4-3 + 38, 1, 797.7, 81.3 , 0 );
setMoveKey( spep_4-3 + 40, 1, 934.3, 80 , 0 );

setScaleKey( spep_4 + 0, 1, 2.2, 2.2 );
setScaleKey( spep_4-3 + 13, 1, 2.2, 2.2 );
setScaleKey( spep_4-3 + 14, 1, 1.9, 1.9 );
setScaleKey( spep_4-3 + 40, 1, 1.9, 1.9 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 13, 1, 0 );
setRotateKey( spep_4-3 + 14, 1, -39 );
setRotateKey( spep_4-3 + 16, 1, -39 );
setRotateKey( spep_4-3 + 18, 1, -38.5 );
setRotateKey( spep_4-3 + 20, 1, -38 );
setRotateKey( spep_4-3 + 22, 1, -37.5 );
setRotateKey( spep_4-3 + 24, 1, -37 );
setRotateKey( spep_4-3 + 26, 1, -36.5 );
setRotateKey( spep_4-3 + 28, 1, -36 );
setRotateKey( spep_4-3 + 30, 1, -28.6 );
setRotateKey( spep_4-3 + 32, 1, -21.2 );
setRotateKey( spep_4-3 + 34, 1, -13.8 );
setRotateKey( spep_4-3 + 36, 1, -6.4 );
setRotateKey( spep_4-3 + 38, 1, 1 );
setRotateKey( spep_4-3 + 40, 1, 8.4 );

--SE
--振りかぶる
SE019 = playSeVer2( spep_4 + 0, 1004, "", 0, 0, 0, -1);

--蹴り
SE020 = playSeVer2( spep_4 + 12, 1120, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 44;
------------------------------------------------------
--回転下がり気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_5 + 164, beam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 164, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 164, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 162, beam, 255 );
setEffAlphaKey( spep_5 + 163, beam, 255 );
setEffAlphaKey( spep_5 + 164, beam, 0 );

--SE
--構える
SE021 = playSeVer2( spep_5 + 36, 1007, "", 0, 0, 0, -1);

--腕広げる
SE022 = playSeVer2( spep_5 + 70, 1189, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_5 + 78, 1012, "", 0, 0, 0, -1);

--気ダメ
SE024 = playSeVer2( spep_5 + 102, 1035, "", 0, 0, 0, -1);

--気弾発射
SE025 = playSeVer2( spep_5 + 138, 1133, "",spep_5 + 258, 0, 16, -1);
setSeVolumeByWorkId( spep_5 + 138, SE025, 79 );
SE026 = playSeVer2( spep_5 + 138, 1177, "",spep_5 + 258, 0, 16, -1);
setSeVolumeByWorkId( spep_5 + 138, SE026, 70 );
SE027 = playSeVer2( spep_5 + 138, 1145, "",spep_5 + 258, 0, 16, -1);
setSeVolumeByWorkId( spep_5 + 138, SE027, 66 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 170, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6= spep_5 + 164;
------------------------------------------------------
--ビーム
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 194, finish_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 194, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 194, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 194, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_6 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 194, finish_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 194, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 194, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 194, finish_b, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_6-1 + 62,  906, 130, 0x100, -1, 0, 0, 4 );
setEffShake( spep_6-1 + 62, shuchusen2, 130, 20 );
setEffMoveKey( spep_6-1 + 62, shuchusen2, 0, 4 , 0 );
setEffMoveKey( spep_6-1 + 192, shuchusen2, 0, 4 , 0 );

setEffScaleKey( spep_6-1 + 62, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_6-1 + 192, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_6-1 + 62, shuchusen2, 180 );
setEffRotateKey( spep_6-1 + 192, shuchusen2, 180 );

setEffAlphaKey( spep_6-1 + 62, shuchusen2, 219 );
setEffAlphaKey( spep_6-1 + 192, shuchusen2, 219 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 58, 1, 0 );

changeAnime( spep_6 + 0, 1, 105 );

setMoveKey( spep_6 + 0, 1, 0.4, 87.5 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 0.4, 87.3 , 0 );
setMoveKey( spep_6-3 + 4, 1, 0.4, 87.1 , 0 );
setMoveKey( spep_6-3 + 6, 1, 0.4, 86.9 , 0 );
setMoveKey( spep_6-3 + 8, 1, 0.4, 86.6 , 0 );
setMoveKey( spep_6-3 + 10, 1, 0.4, 86.4 , 0 );
setMoveKey( spep_6-3 + 12, 1, 0.4, 86.1 , 0 );
setMoveKey( spep_6-3 + 14, 1, 0.4, 85.8 , 0 );
setMoveKey( spep_6-3 + 16, 1, 0.4, 85.5 , 0 );
setMoveKey( spep_6-3 + 18, 1, 0.4, 85.1 , 0 );
setMoveKey( spep_6-3 + 20, 1, 0.4, 84.8 , 0 );
setMoveKey( spep_6-3 + 22, 1, 0.3, 84.3 , 0 );
setMoveKey( spep_6-3 + 24, 1, 0.3, 83.9 , 0 );
setMoveKey( spep_6-3 + 26, 1, 0.3, 83.4 , 0 );
setMoveKey( spep_6-3 + 28, 1, 0.3, 82.8 , 0 );
setMoveKey( spep_6-3 + 30, 1, 0.3, 82.2 , 0 );
setMoveKey( spep_6-3 + 32, 1, 0.3, 81.5 , 0 );
setMoveKey( spep_6-3 + 34, 1, 0.3, 80.7 , 0 );
setMoveKey( spep_6-3 + 36, 1, 0.3, 79.8 , 0 );
setMoveKey( spep_6-3 + 38, 1, 0.2, 78.7 , 0 );
setMoveKey( spep_6-3 + 40, 1, 0.2, 77.4 , 0 );
setMoveKey( spep_6-3 + 42, 1, 0.2, 75.9 , 0 );
setMoveKey( spep_6-3 + 44, 1, 0.1, 73.9 , 0 );
setMoveKey( spep_6-3 + 46, 1, 0.1, 71.4 , 0 );
setMoveKey( spep_6-3 + 48, 1, 0, 68.2 , 0 );
setMoveKey( spep_6-3 + 50, 1, -0.1, 63.6 , 0 );
setMoveKey( spep_6-3 + 52, 1, -0.2, 57 , 0 );
setMoveKey( spep_6-3 + 54, 1, -0.5, 47.6 , 0 );
setMoveKey( spep_6-3 + 56, 1, -0.7, 35.6 , 0 );
setMoveKey( spep_6-1 + 58, 1, -1, 27.1 , 0 );

setScaleKey( spep_6 + 0, 1, 0.2, 0.2 );
--setScaleKey( spep_6-3 + 2, 1, 0.21, 0.21 );
setScaleKey( spep_6-3 + 4, 1, 0.21, 0.21 );
setScaleKey( spep_6-3 + 6, 1, 0.22, 0.22 );
setScaleKey( spep_6-3 + 8, 1, 0.22, 0.22 );
setScaleKey( spep_6-3 + 10, 1, 0.23, 0.23 );
setScaleKey( spep_6-3 + 12, 1, 0.24, 0.24 );
setScaleKey( spep_6-3 + 14, 1, 0.25, 0.25 );
setScaleKey( spep_6-3 + 16, 1, 0.26, 0.26 );
setScaleKey( spep_6-3 + 18, 1, 0.27, 0.27 );
setScaleKey( spep_6-3 + 20, 1, 0.28, 0.28 );
setScaleKey( spep_6-3 + 22, 1, 0.29, 0.29 );
setScaleKey( spep_6-3 + 24, 1, 0.31, 0.31 );
setScaleKey( spep_6-3 + 26, 1, 0.32, 0.32 );
setScaleKey( spep_6-3 + 28, 1, 0.34, 0.34 );
setScaleKey( spep_6-3 + 30, 1, 0.36, 0.36 );
setScaleKey( spep_6-3 + 32, 1, 0.39, 0.39 );
setScaleKey( spep_6-3 + 34, 1, 0.42, 0.42 );
setScaleKey( spep_6-3 + 36, 1, 0.45, 0.45 );
setScaleKey( spep_6-3 + 38, 1, 0.49, 0.49 );
setScaleKey( spep_6-3 + 40, 1, 0.54, 0.54 );
setScaleKey( spep_6-3 + 42, 1, 0.6, 0.6 );
setScaleKey( spep_6-3 + 44, 1, 0.68, 0.68 );
setScaleKey( spep_6-3 + 46, 1, 0.77, 0.77 );
setScaleKey( spep_6-3 + 48, 1, 0.9, 0.9 );
setScaleKey( spep_6-3 + 50, 1, 1.08, 1.08 );
setScaleKey( spep_6-3 + 52, 1, 1.34, 1.34 );
setScaleKey( spep_6-3 + 54, 1, 1.72, 1.72 );
setScaleKey( spep_6-3 + 56, 1, 2.2, 2.2 );
setScaleKey( spep_6-1 + 58, 1, 2.7, 2.7 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6-1 + 58, 1, 0 );

--SE
--気弾飛んでいく
SE028 = playSeVer2( spep_6 + 0, 1202, "",spep_6 + 84, 0, 16, -1);
setSeVolumeByWorkId( spep_6 + 0, SE028, 184 );

--爆発
SE029 = playSeVer2( spep_6 + 62, 1023, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_6 + 62, 1024, "", 0, 0, 0, -1);

-- 終わり
dealDamage(spep_6+64);
endPhase( spep_6 + 184 );
end