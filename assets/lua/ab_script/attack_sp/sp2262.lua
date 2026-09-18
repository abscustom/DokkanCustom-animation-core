--1022780:孫悟空_孫悟空の静かな怒り
--sp_effect_b1_00170

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
SP_01=	158269	;--	構えて力を溜める
SP_02=	158270	;--	ダッシュ
SP_03=	158271	;--	後に瞬間移動して蹴る
SP_04=	158273	;--	後に瞬間移動して蹴る
SP_05=	158275	;--	アッパー
SP_06=	158277	;--	アッパー
SP_07=	158279	;--	振りかぶる
SP_08=	158281	;--	敵にパンチ→敵が上空に吹っ飛ぶ
SP_09=	158283	;--	敵にパンチ→敵が上空に吹っ飛ぶ
SP_10=	158284	;--	吹っ飛んでいる敵を追い越す
SP_11=	158286	;--	吹っ飛んでいる敵を追い越す
SP_12=	158287	;--	敵に向かって両手を振りかぶる
SP_13=	158288	;--	敵に向かって両手を振りかぶる
SP_14=	158289	;--	敵を叩きつける
SP_15=	158291	;--	敵を叩きつける
SP_16=	158293	;--	敵に向かって行く
SP_17=	158295	;--	フィニッシュ
SP_18=	158297	;--	フィニッシュ

--エフェクト(てき)
SP_01x=	158269	;--	構えて力を溜める	
SP_02x=	158270	;--	ダッシュ	
SP_03x=	158272	;--	後に瞬間移動して蹴る	(敵)
SP_04x=	158274	;--	後に瞬間移動して蹴る	(敵)
SP_05x=	158276	;--	アッパー	(敵)
SP_06x=	158278	;--	アッパー	(敵)
SP_07x=	158280	;--	振りかぶる	(敵)
SP_08x=	158282	;--	敵にパンチ→敵が上空に吹っ飛ぶ	(敵)
SP_09x=	158283	;--	敵にパンチ→敵が上空に吹っ飛ぶ	
SP_10x=	158285	;--	吹っ飛んでいる敵を追い越す	(敵)
SP_11x=	158286	;--	吹っ飛んでいる敵を追い越す	
SP_12x=	158287	;--	敵に向かって両手を振りかぶる	
SP_13x=	158288	;--	敵に向かって両手を振りかぶる	
SP_14x=	158290	;--	敵を叩きつける	(敵)
SP_15x=	158292	;--	敵を叩きつける	(敵)
SP_16x=	158294	;--	敵に向かって行く	(敵)
SP_17x=	158296	;--	フィニッシュ	(敵)
SP_18x=	158297	;--	フィニッシュ	
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.85);


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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--構えて力を溜める
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );
setEffAlphaKey( spep_0 + 111, tame, 0 );
setEffAlphaKey( spep_0 + 112, tame, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +10;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 150, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  150,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  150,  515);

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
]]

--SE
--構える
SE001 = playSeVer2( spep_0 + 12, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE001, 75 );
SE002 = playSeVer2( spep_0 + 20, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE002, 64 );
SE003 = playSeVer2( spep_0 + 24, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE003, 127 );

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気を溜める
SE005 = playSeVer2( spep_0 + 30, 1227, "",spep_0 + 118, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 30, SE005, 176 );
SE006 = playSeVer2( spep_0 + 40, 1311, "",spep_0 + 118, 0, 8, 0.6);
setSeVolumeByWorkId( spep_0 + 40, SE006, 114 );
SE007 = playSeVer2( spep_0 + 48, 1194, "",spep_0 + 118, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 48, SE007, 164 );

--白フェード
entryFade( spep_0 + 102, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_1=spep_0+110;

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
--playSe( spep_1 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94; 
------------------------------------------------------
--ダッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
dash = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, dash, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, dash, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, dash, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, dash, 0 );
setEffRotateKey( spep_2 + 76, dash, 0 );
setEffAlphaKey( spep_2 + 0, dash, 255 );
setEffAlphaKey( spep_2 + 74, dash, 255 );
setEffAlphaKey( spep_2 + 75, dash, 255 );
setEffAlphaKey( spep_2 + 76, dash, 0 );

--SE
--走ってくる
SE009 = playSeVer2( spep_2 + 0, 44, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 0, 1108, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 6, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE011, 126 );
SE012 = playSeVer2( spep_2 + 12, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE012, 158 );
setPitch( spep_2 + 12, SE012, -100 );
setTimeStretch( SE012, 0.93, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );

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
--走ってくる
SE013 = playSeVer2( spep_2 + 22, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE013, 158 );
SE014 = playSeVer2( spep_2 + 22, 1107, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 30, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 30, SE015, 158 );
SE016 = playSeVer2( spep_2 + 36, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE016, 158 );

--瞬間移動
SE017 = playSeVer2( spep_2 + 46, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3= spep_2 + 76; 
------------------------------------------------------
--後に瞬間移動して蹴る
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 66, kick_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 66, kick_f, 0 );
setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 64, kick_f, 255 );
setEffAlphaKey( spep_3 + 65, kick_f, 255 );
setEffAlphaKey( spep_3 + 66, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 66, kick_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 66, kick_b, 0 );
setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 64, kick_b, 255 );
setEffAlphaKey( spep_3 + 65, kick_b, 255 );
setEffAlphaKey( spep_3 + 66, kick_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 68, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 20, 1, 107 );

setMoveKey( spep_3 + 0, 1, -0.2, -45.8 , 0 );
setMoveKey( spep_3-3 + 19, 1, -0.2, -45.8 , 0 );
setMoveKey( spep_3-3 + 20, 1, -62.3, -7.8 , 0 );
setMoveKey( spep_3-3 + 22, 1, -43.6, -40.6 , 0 );
setMoveKey( spep_3-3 + 24, 1, -68.7, -1.1 , 0 );
setMoveKey( spep_3-3 + 26, 1, -65.5, -18.1 , 0 );
setMoveKey( spep_3-3 + 28, 1, -53.1, -22 , 0 );
setMoveKey( spep_3-3 + 30, 1, -54.6, -11.8 , 0 );
setMoveKey( spep_3-3 + 32, 1, -59.9, -8.9 , 0 );
setMoveKey( spep_3-3 + 34, 1, -65.4, -6.1 , 0 );
setMoveKey( spep_3-3 + 36, 1, -62.1, -3.3 , 0 );
setMoveKey( spep_3-3 + 38, 1, -59.4, -1.1 , 0 );
setMoveKey( spep_3-3 + 40, 1, -62.2, -4.3 , 0 );
setMoveKey( spep_3-3 + 42, 1, -210.3, -146.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, -349.4, -281.2 , 0 );
setMoveKey( spep_3-3 + 46, 1, -479.2, -407.3 , 0 );
setMoveKey( spep_3-3 + 48, 1, -599.7, -524.9 , 0 );
setMoveKey( spep_3-3 + 50, 1, -711, -634.2 , 0 );
setMoveKey( spep_3-3 + 52, 1, -813, -734.9 , 0 );
setMoveKey( spep_3-3 + 54, 1, -905.6, -827.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, -989.1, -911.1 , 0 );
setMoveKey( spep_3-3 + 58, 1, -1063.3, -986.6 , 0 );
setMoveKey( spep_3-3 + 60, 1, -1128.3, -1053.6 , 0 );
setMoveKey( spep_3-3 + 62, 1, -1184, -1112.2 , 0 );
setMoveKey( spep_3-3 + 64, 1, -1230.4, -1162.3 , 0 );
setMoveKey( spep_3-3 + 66, 1, -1267.6, -1204.1 , 0 );
setMoveKey( spep_3-3 + 68, 1, -1295.4, -1237.7 , 0 );

setScaleKey( spep_3 + 0, 1, 1.95, 1.95 );
setScaleKey( spep_3-3 + 19, 1, 1.95, 1.95 );
setScaleKey( spep_3-3 + 20, 1, 0.71, 0.71 );
setScaleKey( spep_3-3 + 38, 1, 0.71, 0.71 );
setScaleKey( spep_3-3 + 40, 1, 0.72, 0.72 );
setScaleKey( spep_3-3 + 42, 1, 1.05, 1.05 );
setScaleKey( spep_3-3 + 44, 1, 1.36, 1.36 );
setScaleKey( spep_3-3 + 46, 1, 1.65, 1.65 );
setScaleKey( spep_3-3 + 48, 1, 1.92, 1.92 );
setScaleKey( spep_3-3 + 50, 1, 2.17, 2.18 );
setScaleKey( spep_3-3 + 52, 1, 2.41, 2.41 );
setScaleKey( spep_3-3 + 54, 1, 2.62, 2.62 );
setScaleKey( spep_3-3 + 56, 1, 2.81, 2.81 );
setScaleKey( spep_3-3 + 58, 1, 2.98, 2.98 );
setScaleKey( spep_3-3 + 60, 1, 3.13, 3.13 );
setScaleKey( spep_3-3 + 62, 1, 3.26, 3.26 );
setScaleKey( spep_3-3 + 64, 1, 3.37, 3.37 );
setScaleKey( spep_3-3 + 66, 1, 3.46, 3.46 );
setScaleKey( spep_3-3 + 68, 1, 3.53, 3.53 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 19, 1, 0 );
setRotateKey( spep_3-3 + 20, 1, -135.9 );
setRotateKey( spep_3-3 + 22, 1, -135.8 );
setRotateKey( spep_3-3 + 24, 1, -135.8 );
setRotateKey( spep_3-3 + 26, 1, -135.9 );
setRotateKey( spep_3-3 + 28, 1, -136 );
setRotateKey( spep_3-3 + 30, 1, -136.1 );
setRotateKey( spep_3-3 + 32, 1, -136.2 );
setRotateKey( spep_3-3 + 34, 1, -136.3 );
setRotateKey( spep_3-3 + 36, 1, -136.5 );
setRotateKey( spep_3-3 + 38, 1, -136.7 );
setRotateKey( spep_3-3 + 40, 1, -136.9 );
setRotateKey( spep_3-3 + 42, 1, -137.1 );
setRotateKey( spep_3-3 + 44, 1, -137.4 );
setRotateKey( spep_3-3 + 46, 1, -137.6 );
setRotateKey( spep_3-3 + 48, 1, -137.9 );
setRotateKey( spep_3-3 + 50, 1, -138.3 );
setRotateKey( spep_3-3 + 52, 1, -140.3 );
setRotateKey( spep_3-3 + 54, 1, -144.3 );
setRotateKey( spep_3-3 + 56, 1, -148.5 );
setRotateKey( spep_3-3 + 58, 1, -153 );
setRotateKey( spep_3-3 + 60, 1, -157.6 );
setRotateKey( spep_3-3 + 62, 1, -162.6 );
setRotateKey( spep_3-3 + 64, 1, -167.7 );
setRotateKey( spep_3-3 + 66, 1, -173.1 );
setRotateKey( spep_3-3 + 68, 1, -178.8 );

--SE
--瞬間移動
SE018 = playSeVer2( spep_3 + 0, 1109, "", 0, 0, 0, -1);

--キック
SE019 = playSeVer2( spep_3 + 18, 1003, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_3 + 22, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 22, SE020, 82 );
SE021 = playSeVer2( spep_3 + 22, 1187, "",spep_3 + 42, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 22, SE021, 52 );
SE022 = playSeVer2( spep_3 + 24, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE023 = playSeVer2( spep_3 + 30, 1183, "",spep_3 + 94, 0, 12, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4= spep_3 + 66; 
------------------------------------------------------
--アッパー
------------------------------------------------------
-- ** エフェクト等 ** --
upper_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, upper_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, upper_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, upper_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, upper_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, upper_f, 0 );
setEffRotateKey( spep_4 + 66, upper_f, 0 );
setEffAlphaKey( spep_4 + 0, upper_f, 255 );
setEffAlphaKey( spep_4 + 64, upper_f, 255 );
setEffAlphaKey( spep_4 + 65, upper_f, 255 );
setEffAlphaKey( spep_4 + 66, upper_f, 0 );

-- ** エフェクト等 ** --
upper_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, upper_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, upper_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, upper_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, upper_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, upper_b, 0 );
setEffRotateKey( spep_4 + 66, upper_b, 0 );
setEffAlphaKey( spep_4 + 0, upper_b, 255 );
setEffAlphaKey( spep_4 + 64, upper_b, 255 );
setEffAlphaKey( spep_4 + 65, upper_b, 255 );
setEffAlphaKey( spep_4 + 66, upper_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 68, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4-3 + 18, 1, 107 );

setMoveKey( spep_4 + 0, 1, 836.4, -547.8 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 755.1, -488.9 , 0 );
setMoveKey( spep_4-3 + 4, 1, 671.7, -432.3 , 0 );
setMoveKey( spep_4-3 + 6, 1, 588.3, -375.7 , 0 );
setMoveKey( spep_4-3 + 8, 1, 504.9, -319.1 , 0 );
setMoveKey( spep_4-3 + 10, 1, 421.5, -262.5 , 0 );
setMoveKey( spep_4-3 + 12, 1, 338.1, -205.9 , 0 );
setMoveKey( spep_4-3 + 14, 1, 254.7, -149.3 , 0 );
setMoveKey( spep_4-3 + 17, 1, 171.3, -92.7 , 0 );
setMoveKey( spep_4-3 + 18, 1, 117.7, 87.9 , 0 );
setMoveKey( spep_4-3 + 20, 1, 127.7, 124.7 , 0 );
setMoveKey( spep_4-3 + 22, 1, 123.9, 127.7 , 0 );
setMoveKey( spep_4-3 + 24, 1, 142.8, 114.1 , 0 );
setMoveKey( spep_4-3 + 26, 1, 149.3, 100.6 , 0 );
setMoveKey( spep_4-3 + 28, 1, 134.2, 102.4 , 0 );
setMoveKey( spep_4-3 + 30, 1, 119.1, 104.1 , 0 );
setMoveKey( spep_4-3 + 32, 1, 126.7, 104 , 0 );
setMoveKey( spep_4-3 + 34, 1, 134.3, 104 , 0 );
setMoveKey( spep_4-3 + 36, 1, 129.6, 109.3 , 0 );
setMoveKey( spep_4-3 + 38, 1, 124.9, 114.4 , 0 );
setMoveKey( spep_4-3 + 40, 1, 129.1, 117.9 , 0 );
setMoveKey( spep_4-3 + 42, 1, 133.2, 121.2 , 0 );
setMoveKey( spep_4-3 + 44, 1, 133.8, 123 , 0 );
setMoveKey( spep_4-3 + 46, 1, 134.3, 124.7 , 0 );
setMoveKey( spep_4-3 + 48, 1, 134.9, 126.3 , 0 );
setMoveKey( spep_4-3 + 50, 1, 135.4, 127.9 , 0 );
setMoveKey( spep_4-3 + 52, 1, 136, 129.5 , 0 );
setMoveKey( spep_4-3 + 54, 1, 136.5, 131.3 , 0 );
setMoveKey( spep_4-3 + 56, 1, 137.1, 132.9 , 0 );
setMoveKey( spep_4-3 + 58, 1, 137.7, 134.5 , 0 );
setMoveKey( spep_4-3 + 60, 1, 138.2, 136.1 , 0 );
setMoveKey( spep_4-3 + 62, 1, 138.8, 137.7 , 0 );
setMoveKey( spep_4-3 + 64, 1, 139.3, 139.4 , 0 );
setMoveKey( spep_4-3 + 66, 1, 139.9, 141 , 0 );
setMoveKey( spep_4-1 + 68, 1, 140.4, 142.6 , 0 );

setScaleKey( spep_4 + 0, 1, 4.98, 4.98 );
--setScaleKey( spep_4-3 + 2, 1, 4.73, 4.73 );
setScaleKey( spep_4-3 + 4, 1, 4.47, 4.47 );
setScaleKey( spep_4-3 + 6, 1, 4.21, 4.21 );
setScaleKey( spep_4-3 + 8, 1, 3.95, 3.95 );
setScaleKey( spep_4-3 + 10, 1, 3.69, 3.69 );
setScaleKey( spep_4-3 + 12, 1, 3.43, 3.43 );
setScaleKey( spep_4-3 + 14, 1, 3.17, 3.17 );
setScaleKey( spep_4-3 + 17, 1, 2.91, 2.91 );
setScaleKey( spep_4-3 + 18, 1, 1.45, 1.45 );
setScaleKey( spep_4-3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4-3 + 22, 1, 1.54, 1.54 );
setScaleKey( spep_4-3 + 40, 1, 1.54, 1.54 );
setScaleKey( spep_4-3 + 42, 1, 1.55, 1.55 );
setScaleKey( spep_4-1 + 68, 1, 1.55, 1.55 );

setRotateKey( spep_4 + 0, 1, -125.8 );
setRotateKey( spep_4-3 + 2, 1, -126.6 );
setRotateKey( spep_4-3 + 4, 1, -127.1 );
setRotateKey( spep_4-3 + 6, 1, -127.6 );
setRotateKey( spep_4-3 + 8, 1, -128.1 );
setRotateKey( spep_4-3 + 10, 1, -128.7 );
setRotateKey( spep_4-3 + 12, 1, -129.2 );
setRotateKey( spep_4-3 + 14, 1, -129.7 );
setRotateKey( spep_4-3 + 17, 1, -130.2 );
setRotateKey( spep_4-3 + 18, 1, -28.5 );
setRotateKey( spep_4-1 + 68, 1, -28.5 );

--SE
--瞬間移動
SE024 = playSeVer2( spep_4 + 4, 1109, "", 0, 0, 0, -1);

--アッパー
SE025 = playSeVer2( spep_4 + 12, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 12, SE025, 132 );
SE026 = playSeVer2( spep_4 + 16, 1009, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_4 + 16, 1190, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5= spep_4 + 64; 
------------------------------------------------------
--振りかぶる
------------------------------------------------------
-- ** エフェクト等 ** --
sprinkle = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, sprinkle, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, sprinkle, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, sprinkle, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, sprinkle, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, sprinkle, 0 );
setEffRotateKey( spep_5 + 56, sprinkle, 0 );
setEffAlphaKey( spep_5 + 0, sprinkle, 255 );
setEffAlphaKey( spep_5 + 54, sprinkle, 255 );
setEffAlphaKey( spep_5 + 55, sprinkle, 255 );
setEffAlphaKey( spep_5 + 56, sprinkle, 0 );

--SE
--振りかぶる
SE028 = playSeVer2( spep_5 + 0, 1116, "",spep_5 + 54, 0, 28, -1);
SE029 = playSeVer2( spep_5 + 10, 1004, "", 0, 0, 0, -1);
setPitch( spep_5 + 10, SE029, -400 );
setTimeStretch( SE029, 0.73, 30, 4 );
SE030 = playSeVer2( spep_5 + 22, 1182, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_5 + 22, SE030, 79 );
setStartTimeMs( SE030,  67 );
SE031 = playSeVer2( spep_5 + 18, 9, "",spep_5 + 56, 26, 4, -1);
setSeVolumeByWorkId( spep_5 + 18, SE031, 72 );


-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 56, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6= spep_5 + 56; 
------------------------------------------------------
--敵にパンチ→敵が上空に吹っ飛ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 76, punch_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 76, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, punch_f, 0 );
setEffRotateKey( spep_6 + 76, punch_f, 0 );
setEffAlphaKey( spep_6 + 0, punch_f, 255 );
setEffAlphaKey( spep_6 + 74, punch_f, 255 );
setEffAlphaKey( spep_6 + 75, punch_f, 255 );
setEffAlphaKey( spep_6 + 76, punch_f, 0 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 76, punch_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 76, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, punch_b, 0 );
setEffRotateKey( spep_6 + 76, punch_b, 0 );
setEffAlphaKey( spep_6 + 0, punch_b, 255 );
setEffAlphaKey( spep_6 + 74, punch_b, 255 );
setEffAlphaKey( spep_6 + 75, punch_b, 255 );
setEffAlphaKey( spep_6 + 76, punch_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );

changeAnime( spep_6 + 0, 1, 105 );

setMoveKey( spep_6 + 0, 1, 725.7, -307 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 503.9, -222.7 , 0 );
setMoveKey( spep_6-3 + 4, 1, 294.1, -96.3 , 0 );
setMoveKey( spep_6-3 + 6, 1, 337.5, -41.1 , 0 );
setMoveKey( spep_6-3 + 8, 1, 312.2, -53.2 , 0 );
setMoveKey( spep_6-3 + 10, 1, 346.4, -37.4 , 0 );
setMoveKey( spep_6-3 + 12, 1, 345.6, -51.3 , 0 );
setMoveKey( spep_6-3 + 14, 1, 372.9, -23.2 , 0 );
setMoveKey( spep_6-3 + 16, 1, 389.5, -37 , 0 );
setMoveKey( spep_6-3 + 18, 1, 371.2, -29.9 , 0 );
setMoveKey( spep_6-3 + 20, 1, 368.7, -21 , 0 );
setMoveKey( spep_6-3 + 22, 1, 319.8, 144.2 , 0 );
setMoveKey( spep_6-3 + 24, 1, 617.9, 429.7 , 0 );
setMoveKey( spep_6-3 + 26, 1, 741, 541.7 , 0 );
setMoveKey( spep_6-3 + 28, 1, 843.2, 619.4 , 0 );
setMoveKey( spep_6-3 + 30, 1, 929.2, 682.1 , 0 );
setMoveKey( spep_6-3 + 32, 1, 1004.8, 735 , 0 );
setMoveKey( spep_6-3 + 34, 1, 1073, 781.1 , 0 );
setMoveKey( spep_6-3 + 36, 1, 1135.4, 821.9 , 0 );
setMoveKey( spep_6-3 + 38, 1, 1193.4, 858.5 , 0 );
setMoveKey( spep_6-3 + 40, 1, 1067.4, 807 , 0 );
setMoveKey( spep_6-3 + 42, 1, 938.8, 751.6 , 0 );
setMoveKey( spep_6-3 + 44, 1, 808, 692.7 , 0 );
setMoveKey( spep_6-3 + 46, 1, 675.2, 630.8 , 0 );
setMoveKey( spep_6-3 + 48, 1, 540.5, 566 , 0 );
setMoveKey( spep_6-3 + 50, 1, 404.1, 498.8 , 0 );
setMoveKey( spep_6-3 + 52, 1, 266.2, 429.3 , 0 );
setMoveKey( spep_6-3 + 54, 1, 272.2, 441.9 , 0 );
setMoveKey( spep_6-3 + 56, 1, 276.9, 452.8 , 0 );
setMoveKey( spep_6-3 + 58, 1, 280.2, 462.4 , 0 );
setMoveKey( spep_6-3 + 60, 1, 282.2, 470.5 , 0 );
setMoveKey( spep_6-3 + 62, 1, 283.1, 477.5 , 0 );
setMoveKey( spep_6-3 + 64, 1, 282.8, 483.3 , 0 );
setMoveKey( spep_6-3 + 66, 1, 281.3, 487.9 , 0 );
setMoveKey( spep_6-3 + 68, 1, 278.8, 491.5 , 0 );
setMoveKey( spep_6-3 + 70, 1, 275.1, 494.1 , 0 );
setMoveKey( spep_6-3 + 72, 1, 270.4, 495.6 , 0 );
setMoveKey( spep_6-3 + 74, 1, 264.4, 496.1 , 0 );
setMoveKey( spep_6-3 + 76, 1, 257.2, 495.7 , 0 );
setMoveKey( spep_6-3 + 78, 1, 248.2, 493.9 , 0 );

setScaleKey( spep_6 + 0, 1, 5.15, 5.15 );
--setScaleKey( spep_6-3 + 2, 1, 4.92, 4.92 );
setScaleKey( spep_6-3 + 4, 1, 4.67, 4.67 );
setScaleKey( spep_6-3 + 20, 1, 4.67, 4.67 );
setScaleKey( spep_6-3 + 22, 1, 4.38, 4.38 );
setScaleKey( spep_6-3 + 24, 1, 3.18, 3.17 );
setScaleKey( spep_6-3 + 26, 1, 2.73, 2.72 );
setScaleKey( spep_6-3 + 28, 1, 2.41, 2.4 );
setScaleKey( spep_6-3 + 30, 1, 2.15, 2.14 );
setScaleKey( spep_6-3 + 32, 1, 1.94, 1.92 );
setScaleKey( spep_6-3 + 34, 1, 1.75, 1.74 );
setScaleKey( spep_6-3 + 36, 1, 1.59, 1.58 );
setScaleKey( spep_6-3 + 38, 1, 1.45, 1.43 );
setScaleKey( spep_6-3 + 40, 1, 1.32, 1.3 );
setScaleKey( spep_6-3 + 42, 1, 1.2, 1.18 );
setScaleKey( spep_6-3 + 44, 1, 1.09, 1.08 );
setScaleKey( spep_6-3 + 46, 1, 0.99, 0.98 );
setScaleKey( spep_6-3 + 48, 1, 0.91, 0.89 );
setScaleKey( spep_6-3 + 50, 1, 0.82, 0.81 );
setScaleKey( spep_6-3 + 52, 1, 0.75, 0.74 );
setScaleKey( spep_6-3 + 54, 1, 0.68, 0.67 );
setScaleKey( spep_6-3 + 56, 1, 0.62, 0.61 );
setScaleKey( spep_6-3 + 58, 1, 0.56, 0.55 );
setScaleKey( spep_6-3 + 60, 1, 0.51, 0.5 );
setScaleKey( spep_6-3 + 62, 1, 0.46, 0.45 );
setScaleKey( spep_6-3 + 64, 1, 0.41, 0.41 );
setScaleKey( spep_6-3 + 66, 1, 0.37, 0.37 );
setScaleKey( spep_6-3 + 68, 1, 0.34, 0.33 );
setScaleKey( spep_6-3 + 70, 1, 0.31, 0.3 );
setScaleKey( spep_6-3 + 72, 1, 0.28, 0.27 );
setScaleKey( spep_6-3 + 74, 1, 0.25, 0.25 );
setScaleKey( spep_6-3 + 76, 1, 0.23, 0.23 );
setScaleKey( spep_6-3 + 78, 1, 0.22, 0.22 );

setRotateKey( spep_6 + 0, 1, -108.8 );
--setRotateKey( spep_6-3 + 2, 1, -86.1 );
setRotateKey( spep_6-3 + 4, 1, -63.2 );
setRotateKey( spep_6-3 + 6, 1, -57 );
setRotateKey( spep_6-3 + 8, 1, -56 );
setRotateKey( spep_6-3 + 10, 1, -55 );
setRotateKey( spep_6-3 + 12, 1, -54 );
setRotateKey( spep_6-3 + 14, 1, -53 );
setRotateKey( spep_6-3 + 16, 1, -52 );
setRotateKey( spep_6-3 + 18, 1, -51 );
setRotateKey( spep_6-3 + 20, 1, -50 );
setRotateKey( spep_6-3 + 22, 1, 7 );
setRotateKey( spep_6-3 + 24, 1, 9.4 );
setRotateKey( spep_6-3 + 26, 1, 11.7 );
setRotateKey( spep_6-3 + 28, 1, 13.9 );
setRotateKey( spep_6-3 + 30, 1, 16.1 );
setRotateKey( spep_6-3 + 32, 1, 18.1 );
setRotateKey( spep_6-3 + 34, 1, 20.1 );
setRotateKey( spep_6-3 + 36, 1, 22 );
setRotateKey( spep_6-3 + 38, 1, 23.7 );
setRotateKey( spep_6-3 + 40, 1, 26.2 );
setRotateKey( spep_6-3 + 42, 1, 28.6 );
setRotateKey( spep_6-3 + 44, 1, 30.8 );
setRotateKey( spep_6-3 + 46, 1, 33 );
setRotateKey( spep_6-3 + 48, 1, 35.1 );
setRotateKey( spep_6-3 + 50, 1, 37.1 );
setRotateKey( spep_6-3 + 52, 1, 39.1 );
setRotateKey( spep_6-3 + 54, 1, 40.6 );
setRotateKey( spep_6-3 + 56, 1, 42 );
setRotateKey( spep_6-3 + 58, 1, 43.3 );
setRotateKey( spep_6-3 + 60, 1, 44.5 );
setRotateKey( spep_6-3 + 62, 1, 45.6 );
setRotateKey( spep_6-3 + 64, 1, 46.7 );
setRotateKey( spep_6-3 + 66, 1, 47.7 );
setRotateKey( spep_6-3 + 68, 1, 48.6 );
setRotateKey( spep_6-3 + 70, 1, 49.3 );
setRotateKey( spep_6-3 + 72, 1, 50.1 );
setRotateKey( spep_6-3 + 74, 1, 50.7 );
setRotateKey( spep_6-3 + 76, 1, 51.2 );
setRotateKey( spep_6-3 + 78, 1, 51.7 );

--SE
--パンチ
SE032 = playSeVer2( spep_6 + 2, 1120, "", 0, 0, 0, -1);

--敵吹っ飛ぶ
SE033 = playSeVer2( spep_6 + 12, 1027, "", 0, 0, 0, -1);

--敵飛んでいく
SE034 = playSeVer2( spep_6 + 44, 1121, "",spep_6 + 158, 0, 14, -1);
setSeVolumeByWorkId( spep_6 + 44, SE034, 74 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_7= spep_6 + 76; 
------------------------------------------------------
--吹っ飛んでいる敵を追い越す
------------------------------------------------------
-- ** エフェクト等 ** --
fri_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, fri_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 36, fri_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, fri_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 36, fri_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, fri_f, 0 );
setEffRotateKey( spep_7 + 36, fri_f, 0 );
setEffAlphaKey( spep_7 + 0, fri_f, 255 );
setEffAlphaKey( spep_7 + 34, fri_f, 255 );
setEffAlphaKey( spep_7 + 35, fri_f, 255 );
setEffAlphaKey( spep_7 + 36, fri_f, 0 );

-- ** エフェクト等 ** --
fri_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, fri_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 36, fri_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, fri_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 36, fri_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, fri_b, 0 );
setEffRotateKey( spep_7 + 36, fri_b, 0 );
setEffAlphaKey( spep_7 + 0, fri_b, 255 );
setEffAlphaKey( spep_7 + 34, fri_b, 255 );
setEffAlphaKey( spep_7 + 35, fri_b, 255 );
setEffAlphaKey( spep_7 + 36, fri_b, 0 );

--敵の動き
changeAnime( spep_7 + 0, 1, 106 );

setMoveKey( spep_7 + 0, 1, -131.7, -415 , 0 );
--setMoveKey( spep_7-3 + 2, 1, -115.1, -394.5 , 0 );
setMoveKey( spep_7-3 + 4, 1, -98.6, -373.9 , 0 );
setMoveKey( spep_7-3 + 6, 1, -82.1, -353.3 , 0 );
setMoveKey( spep_7-3 + 8, 1, -65.6, -332.7 , 0 );
setMoveKey( spep_7-3 + 10, 1, -49.1, -312.1 , 0 );
setMoveKey( spep_7-3 + 12, 1, -32.6, -291.5 , 0 );
setMoveKey( spep_7-3 + 14, 1, -16.1, -270.9 , 0 );
setMoveKey( spep_7-3 + 16, 1, 0.4, -250.3 , 0 );
setMoveKey( spep_7-3 + 18, 1, 16.9, -229.7 , 0 );
setMoveKey( spep_7-3 + 20, 1, 33.4, -209.1 , 0 );
setMoveKey( spep_7-3 + 22, 1, 49.9, -188.5 , 0 );
setMoveKey( spep_7-3 + 24, 1, 66.4, -167.9 , 0 );
setMoveKey( spep_7-3 + 26, 1, 82.9, -147.3 , 0 );
setMoveKey( spep_7-3 + 28, 1, 99.4, -126.7 , 0 );
setMoveKey( spep_7-3 + 30, 1, 115.9, -106.1 , 0 );
setMoveKey( spep_7-3 + 32, 1, 132.4, -85.6 , 0 );
setMoveKey( spep_7-3 + 34, 1, 148.9, -65 , 0 );
setMoveKey( spep_7-3 + 36, 1, 165.4, -44.4 , 0 );
setMoveKey( spep_7-3 + 38, 1, 181.9, -23.8 , 0 );

setScaleKey( spep_7 + 0, 1, 1.59, 1.69 );
setScaleKey( spep_7-3 + 6, 1, 1.59, 1.69 );
setScaleKey( spep_7-3 + 8, 1, 1.58, 1.68 );
setScaleKey( spep_7-3 + 20, 1, 1.58, 1.68 );
setScaleKey( spep_7-3 + 22, 1, 1.57, 1.67 );
setScaleKey( spep_7-3 + 32, 1, 1.57, 1.67 );
setScaleKey( spep_7-3 + 34, 1, 1.57, 1.66 );
setScaleKey( spep_7-3 + 36, 1, 1.56, 1.66 );
setScaleKey( spep_7-3 + 38, 1, 1.56, 1.66 );

setRotateKey( spep_7 + 0, 1, -28 );
setRotateKey( spep_7-3 + 38, 1, -28 );

--SE
--悟空飛んでくる
SE035 = playSeVer2( spep_7 + 0, 1207, "",spep_7 + 60, 0, 14, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_8= spep_7 + 36; 
------------------------------------------------------
--敵に向かって両手を振りかぶる
------------------------------------------------------
-- ** エフェクト等 ** --
sprinkle2_f = entryEffect( spep_8 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, sprinkle2_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 36, sprinkle2_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, sprinkle2_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 36, sprinkle2_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, sprinkle2_f, 0 );
setEffRotateKey( spep_8 + 36, sprinkle2_f, 0 );
setEffAlphaKey( spep_8 + 0, sprinkle2_f, 255 );
setEffAlphaKey( spep_8 + 34, sprinkle2_f, 255 );
setEffAlphaKey( spep_8 + 35, sprinkle2_f, 255 );
setEffAlphaKey( spep_8 + 36, sprinkle2_f, 0 );

-- ** エフェクト等 ** --
sprinkle2_b = entryEffect( spep_8 + 0, SP_13, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, sprinkle2_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 36, sprinkle2_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, sprinkle2_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 36, sprinkle2_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, sprinkle2_b, 0 );
setEffRotateKey( spep_8 + 36, sprinkle2_b, 0 );
setEffAlphaKey( spep_8 + 0, sprinkle2_b, 255 );
setEffAlphaKey( spep_8 + 34, sprinkle2_b, 255 );
setEffAlphaKey( spep_8 + 35, sprinkle2_b, 255 );
setEffAlphaKey( spep_8 + 36, sprinkle2_b, 0 );

--敵の動き
changeAnime( spep_8 + 0, 1, 106 );

setMoveKey( spep_8 + 0, 1, -460.7, -545.4 , 0 );
--setMoveKey( spep_8-3 + 2, 1, -378.6, -473.5 , 0 );
setMoveKey( spep_8-3 + 4, 1, -316.8, -419.3 , 0 );
setMoveKey( spep_8-3 + 6, 1, -267.5, -376 , 0 );
setMoveKey( spep_8-3 + 8, 1, -226.8, -340.3 , 0 );
setMoveKey( spep_8-3 + 10, 1, -192.5, -310.2 , 0 );
setMoveKey( spep_8-3 + 12, 1, -163.1, -284.4 , 0 );
setMoveKey( spep_8-3 + 14, 1, -137.6, -262 , 0 );
setMoveKey( spep_8-3 + 16, 1, -115.2, -242.4 , 0 );
setMoveKey( spep_8-3 + 18, 1, -95.5, -225.1 , 0 );
setMoveKey( spep_8-3 + 20, 1, -78, -209.7 , 0 );
setMoveKey( spep_8-3 + 22, 1, -62.2, -195.9 , 0 );
setMoveKey( spep_8-3 + 24, 1, -48.1, -183.5 , 0 );
setMoveKey( spep_8-3 + 26, 1, -35.2, -172.2 , 0 );
setMoveKey( spep_8-3 + 28, 1, -23.4, -161.9 , 0 );
setMoveKey( spep_8-3 + 30, 1, -12.5, -152.3 , 0 );
setMoveKey( spep_8-3 + 32, 1, -2.4, -143.4 , 0 );
setMoveKey( spep_8-3 + 34, 1, 7.1, -135.1 , 0 );
setMoveKey( spep_8-3 + 36, 1, 16.2, -127.1 , 0 );
setMoveKey( spep_8-3 + 38, 1, 25.1, -119.4 , 0 );

setScaleKey( spep_8 + 0, 1, 2.51, 2.51 );
--setScaleKey( spep_8-3 + 2, 1, 2.45, 2.45 );
setScaleKey( spep_8-3 + 4, 1, 2.42, 2.42 );
setScaleKey( spep_8-3 + 6, 1, 2.39, 2.39 );
setScaleKey( spep_8-3 + 8, 1, 2.36, 2.36 );
setScaleKey( spep_8-3 + 10, 1, 2.34, 2.34 );
setScaleKey( spep_8-3 + 12, 1, 2.32, 2.32 );
setScaleKey( spep_8-3 + 14, 1, 2.3, 2.3 );
setScaleKey( spep_8-3 + 16, 1, 2.29, 2.29 );
setScaleKey( spep_8-3 + 18, 1, 2.28, 2.28 );
setScaleKey( spep_8-3 + 20, 1, 2.27, 2.27 );
setScaleKey( spep_8-3 + 22, 1, 2.26, 2.26 );
setScaleKey( spep_8-3 + 24, 1, 2.25, 2.25 );
setScaleKey( spep_8-3 + 26, 1, 2.24, 2.24 );
setScaleKey( spep_8-3 + 28, 1, 2.23, 2.23 );
setScaleKey( spep_8-3 + 30, 1, 2.23, 2.23 );
setScaleKey( spep_8-3 + 32, 1, 2.22, 2.22 );
setScaleKey( spep_8-3 + 34, 1, 2.21, 2.21 );
setScaleKey( spep_8-3 + 36, 1, 2.21, 2.21 );
setScaleKey( spep_8-3 + 38, 1, 2.2, 2.2 );

setRotateKey( spep_8 + 0, 1, -26.8 );
setRotateKey( spep_8-3 + 38, 1, -26.8 );

--SE
--振りかぶる
SE036 = playSeVer2( spep_8 + 0, 1116, "",spep_8 + 40, 0, 16, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_9= spep_8 + 36;
------------------------------------------------------
--敵を叩きつける
------------------------------------------------------
-- ** エフェクト等 ** --
down_f = entryEffect( spep_9 + 0, SP_14, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, down_f, 0, 0, 0 );
setEffMoveKey( spep_9 + 76, down_f, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, down_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 76, down_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, down_f, 0 );
setEffRotateKey( spep_9 + 76, down_f, 0 );
setEffAlphaKey( spep_9 + 0, down_f, 255 );
setEffAlphaKey( spep_9 + 74, down_f, 255 );
setEffAlphaKey( spep_9 + 75, down_f, 255 );
setEffAlphaKey( spep_9 + 76, down_f, 0 );

-- ** エフェクト等 ** --
down_b = entryEffect( spep_9 + 0, SP_15, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, down_b, 0, 0, 0 );
setEffMoveKey( spep_9 + 76, down_b, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, down_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 76, down_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, down_b, 0 );
setEffRotateKey( spep_9 + 76, down_b, 0 );
setEffAlphaKey( spep_9 + 0, down_b, 255 );
setEffAlphaKey( spep_9 + 74, down_b, 255 );
setEffAlphaKey( spep_9 + 75, down_b, 255 );
setEffAlphaKey( spep_9 + 76, down_b, 0 );

--敵の動き
setDisp( spep_9-3 + 46, 1, 0 );

changeAnime( spep_9 + 0, 1, 107 );

setMoveKey( spep_9 + 0, 1, -96.8, 259.4 , 0 );
--setMoveKey( spep_9-3 + 2, 1, -95.8, 279.2 , 0 );
setMoveKey( spep_9-3 + 4, 1, -114.4, 253 , 0 );
setMoveKey( spep_9-3 + 6, 1, -90.4, 251.4 , 0 );
setMoveKey( spep_9-3 + 8, 1, -82, 247.3 , 0 );
setMoveKey( spep_9-3 + 10, 1, -101.6, 264.2 , 0 );
setMoveKey( spep_9-3 + 12, 1, -113.7, 279.8 , 0 );
setMoveKey( spep_9-3 + 14, 1, -104.8, 267.4 , 0 );
setMoveKey( spep_9-3 + 18, 1, -104.8, 267.4 , 0 );
setMoveKey( spep_9-3 + 20, 1, -42.7, 152.9 , 0 );
setMoveKey( spep_9-3 + 22, 1, 19.4, 38.5 , 0 );
setMoveKey( spep_9-3 + 24, 1, 81.5, -76 , 0 );
setMoveKey( spep_9-3 + 26, 1, 143.6, -190.4 , 0 );
setMoveKey( spep_9-3 + 28, 1, 205.6, -304.9 , 0 );
setMoveKey( spep_9-3 + 30, 1, 267.7, -419.3 , 0 );
setMoveKey( spep_9-3 + 32, 1, 329.8, -533.8 , 0 );
setMoveKey( spep_9-3 + 34, 1, 391.8, -648.2 , 0 );
setMoveKey( spep_9-3 + 36, 1, 453.9, -762.6 , 0 );
setMoveKey( spep_9-3 + 38, 1, 515.9, -877.1 , 0 );
setMoveKey( spep_9-3 + 40, 1, 578, -991.5 , 0 );
setMoveKey( spep_9-3 + 42, 1, 640, -1106 , 0 );
setMoveKey( spep_9-3 + 44, 1, 702.1, -1220.4 , 0 );
setMoveKey( spep_9-3 + 46, 1, 764.1, -1334.8 , 0 );

setScaleKey( spep_9 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_9-3 + 18, 1, 0.2, 0.2 );
setScaleKey( spep_9-3 + 20, 1, 0.48, 0.48 );
setScaleKey( spep_9-3 + 22, 1, 0.75, 0.75 );
setScaleKey( spep_9-3 + 24, 1, 1.02, 1.02 );
setScaleKey( spep_9-3 + 26, 1, 1.3, 1.3 );
setScaleKey( spep_9-3 + 28, 1, 1.57, 1.57 );
setScaleKey( spep_9-3 + 30, 1, 1.84, 1.84 );
setScaleKey( spep_9-3 + 32, 1, 2.12, 2.12 );
setScaleKey( spep_9-3 + 34, 1, 2.39, 2.39 );
setScaleKey( spep_9-3 + 36, 1, 2.66, 2.66 );
setScaleKey( spep_9-3 + 38, 1, 2.94, 2.94 );
setScaleKey( spep_9-3 + 40, 1, 3.21, 3.21 );
setScaleKey( spep_9-3 + 42, 1, 3.48, 3.48 );
setScaleKey( spep_9-3 + 44, 1, 3.76, 3.76 );
setScaleKey( spep_9-3 + 46, 1, 4.03, 4.03 );

setRotateKey( spep_9 + 0, 1, 67.6 );
setRotateKey( spep_9-3 + 46, 1, 67.6 );

--SE
--叩きつける
SE037 = playSeVer2( spep_9 + 0, 1123, "", 0, 0, 0, -1);

--悟空飛び込む
SE038 = playSeVer2( spep_9 + 50, 1182, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_9 + 50, 9, "",spep_9 + 116, 0, 26, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_10= spep_9 + 76;
------------------------------------------------------
--敵に向かって行く
------------------------------------------------------
-- ** エフェクト等 ** --
face = entryEffect( spep_10 + 0, SP_16, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, face, 0, 0, 0 );
setEffMoveKey( spep_10 + 76, face, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, face, 1.0, 1.0 );
setEffScaleKey( spep_10 + 76, face, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, face, 0 );
setEffRotateKey( spep_10 + 76, face, 0 );
setEffAlphaKey( spep_10 + 0, face, 255 );
setEffAlphaKey( spep_10 + 74, face, 255 );
setEffAlphaKey( spep_10 + 75, face, 255 );
setEffAlphaKey( spep_10 + 76, face, 0 );

--SE
--着地
SE040 = playSeVer2( spep_10 + 18, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 18, SE040, 157 );
SE041 = playSeVer2( spep_10 + 18, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 18, SE041, 168 );

--飛び上がる
SE042 = playSeVer2( spep_10 + 32, 1182, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_10 + 32, 1117, "",spep_10 + 80, 0, 20, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_10 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_11= spep_10 + 76;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_11 + 0, SP_17, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_11 + 130, finish_f, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 130, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_f, 0 );
setEffRotateKey( spep_11 + 130, finish_f, 0 );
setEffAlphaKey( spep_11 + 0, finish_f, 255 );
setEffAlphaKey( spep_11 + 130, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_11 + 0, SP_18, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_11 + 130, finish_b, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_11 + 130, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_b, 0 );
setEffRotateKey( spep_11 + 130, finish_b, 0 );
setEffAlphaKey( spep_11 + 0, finish_b, 255 );
setEffAlphaKey( spep_11 + 130, finish_b, 255 );

--敵の動き
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11-1 + 116, 1, 0 );

changeAnime( spep_11 + 0, 1, 106 );
changeAnime( spep_11-3 + 6, 1, 105 );

setMoveKey( spep_11 + 0, 1, 118.2, 358 , 0 );
--setMoveKey( spep_11-3 + 2, 1, -124.4, 290.1 , 0 );
setMoveKey( spep_11-3 + 5, 1, 131.4, 212.5 , 0 );
setMoveKey( spep_11-3 + 6, 1, 104.7, 153.9 , 0 );
setMoveKey( spep_11-3 + 8, 1, 105.3, 165.6 , 0 );
setMoveKey( spep_11-3 + 10, 1, 99.5, 145.8 , 0 );
setMoveKey( spep_11-3 + 12, 1, 128.8, 196.6 , 0 );
setMoveKey( spep_11-3 + 14, 1, 101.6, 112 , 0 );
setMoveKey( spep_11-3 + 16, 1, 72.8, 187.9 , 0 );
setMoveKey( spep_11-3 + 18, 1, 111.6, 137 , 0 );
setMoveKey( spep_11-3 + 20, 1, 115.4, 147.2 , 0 );
setMoveKey( spep_11-3 + 22, 1, 104.3, 144.9 , 0 );
setMoveKey( spep_11-3 + 24, 1, 94.2, 137.7 , 0 );
setMoveKey( spep_11-3 + 26, 1, 109.2, 138.1 , 0 );
setMoveKey( spep_11-3 + 28, 1, 100.5, 148.4 , 0 );
setMoveKey( spep_11-3 + 30, 1, 167.5, 117.7 , 0 );
setMoveKey( spep_11-3 + 32, 1, 236.3, 83.4 , 0 );
setMoveKey( spep_11-3 + 34, 1, 285.8, 68 , 0 );
setMoveKey( spep_11-3 + 36, 1, 349.6, 38.2 , 0 );
setMoveKey( spep_11-3 + 38, 1, 412.7, 8.7 , 0 );
setMoveKey( spep_11-3 + 40, 1, 379.8, 7.3 , 0 );
setMoveKey( spep_11-3 + 42, 1, 343.4, 7.1 , 0 );
setMoveKey( spep_11-3 + 44, 1, 304.9, 6.9 , 0 );
setMoveKey( spep_11-3 + 46, 1, 262.8, 8 , 0 );
setMoveKey( spep_11-3 + 48, 1, 217, 10.3 , 0 );
setMoveKey( spep_11-3 + 50, 1, 167.8, 14 , 0 );
setMoveKey( spep_11-3 + 52, 1, 114.9, 19.1 , 0 );
--setMoveKey( spep_11-3 + 54, 1, 58.4, 25.5 , 0 );
--setMoveKey( spep_11-3 + 56, 1, -1.8, 33.1 , 0 );
--setMoveKey( spep_11-3 + 58, 1, -65.4, 42.1 , 0 );
--setMoveKey( spep_11-3 + 60, 1, 20.7, 10.6 , 0 );
setMoveKey( spep_11-3 + 62, 1, 106.8, -20.8 , 0 );
setMoveKey( spep_11-3 + 64, 1, 107.4, -21.1 , 0 );
setMoveKey( spep_11-3 + 66, 1, 108.1, -21.3 , 0 );
setMoveKey( spep_11-3 + 68, 1, 108.7, -21.5 , 0 );
--setMoveKey( spep_11-3 + 70, 1, 115.7, -14.5 , 0 );
setMoveKey( spep_11-3 + 72, 1, 105.2, -21.5 , 0 );
--setMoveKey( spep_11-3 + 74, 1, 115.7, -14.5 , 0 );
setMoveKey( spep_11-3 + 76, 1, 98.2, -21.5 , 0 );
setMoveKey( spep_11-3 + 78, 1, 103.5, -18 , 0 );
setMoveKey( spep_11-3 + 80, 1, 108.7, -14.5 , 0 );
--setMoveKey( spep_11-3 + 82, 1, 98.2, -11 , 0 );
--setMoveKey( spep_11-3 + 84, 1, 87.7, -7.5 , 0 );
--setMoveKey( spep_11-3 + 86, 1, 96.5, -4 , 0 );
setMoveKey( spep_11-3 + 88, 1, 105.2, -0.5 , 0 );
setMoveKey( spep_11-3 + 90, 1, 114, 3 , 0 );
--setMoveKey( spep_11-3 + 92, 1, 122.7, 6.5 , 0 );
setMoveKey( spep_11-3 + 94, 1, 114, 10 , 0 );
setMoveKey( spep_11-3 + 96, 1, 105.2, 13.5 , 0 );
setMoveKey( spep_11-3 + 98, 1, 112.2, 17 , 0 );
setMoveKey( spep_11-3 + 100, 1, 119.2, 20.5 , 0 );
setMoveKey( spep_11-3 + 102, 1, 117.5, 19.6 , 0 );
setMoveKey( spep_11-3 + 104, 1, 115.7, 18.8 , 0 );
setMoveKey( spep_11-3 + 106, 1, 114, 17.9 , 0 );
setMoveKey( spep_11-3 + 108, 1, 112.2, 17 , 0 );
setMoveKey( spep_11-3 + 110, 1, 110.5, 16.1 , 0 );
setMoveKey( spep_11-3 + 112, 1, 108.7, 15.3 , 0 );
setMoveKey( spep_11-3 + 114, 1, 107, 14.4 , 0 );
setMoveKey( spep_11-1 + 116, 1, 105.2, 13.5 , 0 );

setScaleKey( spep_11 + 0, 1, 1.85, 1.85 );
--setScaleKey( spep_11-3 + 2, 1, 2.08, 2.08 );
setScaleKey( spep_11-3 + 5, 1, 2.31, 2.31 );
setScaleKey( spep_11-3 + 6, 1, 2.42, 2.42 );
setScaleKey( spep_11-3 + 8, 1, 2.53, 2.53 );
setScaleKey( spep_11-3 + 10, 1, 2.52, 2.52 );
setScaleKey( spep_11-3 + 12, 1, 2.51, 2.51 );
setScaleKey( spep_11-3 + 14, 1, 2.51, 2.51 );
setScaleKey( spep_11-3 + 16, 1, 2.5, 2.5 );
setScaleKey( spep_11-3 + 18, 1, 2.49, 2.49 );
setScaleKey( spep_11-3 + 20, 1, 2.48, 2.48 );
setScaleKey( spep_11-3 + 22, 1, 2.48, 2.48 );
setScaleKey( spep_11-3 + 24, 1, 2.47, 2.47 );
setScaleKey( spep_11-3 + 26, 1, 2.46, 2.46 );
setScaleKey( spep_11-3 + 28, 1, 2.46, 2.46 );
setScaleKey( spep_11-3 + 30, 1, 2.33, 2.33 );
setScaleKey( spep_11-3 + 32, 1, 2.2, 2.2 );
setScaleKey( spep_11-3 + 34, 1, 2.07, 2.07 );
setScaleKey( spep_11-3 + 36, 1, 1.95, 1.95 );
setScaleKey( spep_11-3 + 38, 1, 1.82, 1.82 );
setScaleKey( spep_11-3 + 40, 1, 1.67, 1.67 );
setScaleKey( spep_11-3 + 42, 1, 1.53, 1.53 );
setScaleKey( spep_11-3 + 44, 1, 1.38, 1.38 );
setScaleKey( spep_11-3 + 46, 1, 1.25, 1.25 );
setScaleKey( spep_11-3 + 48, 1, 1.11, 1.11 );
setScaleKey( spep_11-3 + 50, 1, 0.98, 0.98 );
setScaleKey( spep_11-3 + 52, 1, 0.86, 0.86 );
setScaleKey( spep_11-3 + 54, 1, 0.74, 0.74 );
setScaleKey( spep_11-3 + 56, 1, 0.62, 0.62 );
setScaleKey( spep_11-3 + 58, 1, 0.51, 0.51 );
setScaleKey( spep_11-3 + 60, 1, 0.41, 0.41 );
setScaleKey( spep_11-3 + 62, 1, 0.31, 0.31 );
setScaleKey( spep_11-1 + 116, 1, 0.31, 0.31 );

setRotateKey( spep_11 + 0, 1, 110 );
setRotateKey( spep_11-3 + 5, 1, 110 );
setRotateKey( spep_11-3 + 6, 1, 40 );
setRotateKey( spep_11-1 + 116, 1, 40 );

--SE
--蹴り上げる
SE044 = playSeVer2( spep_11 + 0, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 0, SE044, 60 );
SE045 = playSeVer2( spep_11 + 2, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 2, SE045, 86 );
SE046 = playSeVer2( spep_11 + 6, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 6, SE046, 92 );

--敵飛んでいく
SE047 = playSeVer2( spep_11 + 16, 1183, "",spep_11 + 78, 0, 16, -1);

--岩激突
SE048 = playSeVer2( spep_11 + 56, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 56, SE048, 86 );
SE049 = playSeVer2( spep_11 + 60, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 60, SE049, 72 );

-- ** くろ背景 ** --
entryFadeBg( spep_11 , 0, 130, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage(spep_11+4);
endPhase( spep_11 + 120 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--構えて力を溜める
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );
setEffAlphaKey( spep_0 + 111, tame, 0 );
setEffAlphaKey( spep_0 + 112, tame, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 150, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  150,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  150,  515);

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
]]

--SE
--構える
SE001 = playSeVer2( spep_0 + 12, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE001, 75 );
SE002 = playSeVer2( spep_0 + 20, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE002, 64 );
SE003 = playSeVer2( spep_0 + 24, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE003, 127 );

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気を溜める
SE005 = playSeVer2( spep_0 + 30, 1227, "",spep_0 + 118, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 30, SE005, 176 );
SE006 = playSeVer2( spep_0 + 40, 1311, "",spep_0 + 118, 0, 8, 0.6);
setSeVolumeByWorkId( spep_0 + 40, SE006, 114 );
SE007 = playSeVer2( spep_0 + 48, 1194, "",spep_0 + 118, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 48, SE007, 164 );

--白フェード
entryFade( spep_0 + 102, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_1=spep_0+110;

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
SE_CUTIN = playSe( spep_1, SE_05);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94; 
------------------------------------------------------
--ダッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
dash = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, dash, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, dash, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, dash, -1.0, 1.0 );
setEffScaleKey( spep_2 + 76, dash, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, dash, 0 );
setEffRotateKey( spep_2 + 76, dash, 0 );
setEffAlphaKey( spep_2 + 0, dash, 255 );
setEffAlphaKey( spep_2 + 74, dash, 255 );
setEffAlphaKey( spep_2 + 75, dash, 255 );
setEffAlphaKey( spep_2 + 76, dash, 0 );

--SE
--走ってくる
SE009 = playSeVer2( spep_2 + 0, 44, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 0, 1108, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 6, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE011, 126 );
SE012 = playSeVer2( spep_2 + 12, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE012, 158 );
setPitch( spep_2 + 12, SE012, -100 );
setTimeStretch( SE012, 0.93, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );

    
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
--走ってくる
SE013 = playSeVer2( spep_2 + 22, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE013, 158 );
SE014 = playSeVer2( spep_2 + 22, 1107, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 30, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 30, SE015, 158 );
SE016 = playSeVer2( spep_2 + 36, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE016, 158 );

--瞬間移動
SE017 = playSeVer2( spep_2 + 46, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3= spep_2 + 76; 
------------------------------------------------------
--後に瞬間移動して蹴る
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 66, kick_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kick_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 66, kick_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 66, kick_f, 0 );
setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 64, kick_f, 255 );
setEffAlphaKey( spep_3 + 65, kick_f, 255 );
setEffAlphaKey( spep_3 + 66, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 66, kick_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kick_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 66, kick_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 66, kick_b, 0 );
setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 64, kick_b, 255 );
setEffAlphaKey( spep_3 + 65, kick_b, 255 );
setEffAlphaKey( spep_3 + 66, kick_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 68, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 20, 1, 107 );

setMoveKey( spep_3 + 0, 1, -0.2, -45.8 , 0 );
setMoveKey( spep_3-3 + 19, 1, -0.2, -45.8 , 0 );
setMoveKey( spep_3-3 + 20, 1, -62.3, -7.8 , 0 );
setMoveKey( spep_3-3 + 22, 1, -43.6, -40.6 , 0 );
setMoveKey( spep_3-3 + 24, 1, -68.7, -1.1 , 0 );
setMoveKey( spep_3-3 + 26, 1, -65.5, -18.1 , 0 );
setMoveKey( spep_3-3 + 28, 1, -53.1, -22 , 0 );
setMoveKey( spep_3-3 + 30, 1, -54.6, -11.8 , 0 );
setMoveKey( spep_3-3 + 32, 1, -59.9, -8.9 , 0 );
setMoveKey( spep_3-3 + 34, 1, -65.4, -6.1 , 0 );
setMoveKey( spep_3-3 + 36, 1, -62.1, -3.3 , 0 );
setMoveKey( spep_3-3 + 38, 1, -59.4, -1.1 , 0 );
setMoveKey( spep_3-3 + 40, 1, -62.2, -4.3 , 0 );
setMoveKey( spep_3-3 + 42, 1, -210.3, -146.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, -349.4, -281.2 , 0 );
setMoveKey( spep_3-3 + 46, 1, -479.2, -407.3 , 0 );
setMoveKey( spep_3-3 + 48, 1, -599.7, -524.9 , 0 );
setMoveKey( spep_3-3 + 50, 1, -711, -634.2 , 0 );
setMoveKey( spep_3-3 + 52, 1, -813, -734.9 , 0 );
setMoveKey( spep_3-3 + 54, 1, -905.6, -827.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, -989.1, -911.1 , 0 );
setMoveKey( spep_3-3 + 58, 1, -1063.3, -986.6 , 0 );
setMoveKey( spep_3-3 + 60, 1, -1128.3, -1053.6 , 0 );
setMoveKey( spep_3-3 + 62, 1, -1184, -1112.2 , 0 );
setMoveKey( spep_3-3 + 64, 1, -1230.4, -1162.3 , 0 );
setMoveKey( spep_3-3 + 66, 1, -1267.6, -1204.1 , 0 );
setMoveKey( spep_3-3 + 68, 1, -1295.4, -1237.7 , 0 );

setScaleKey( spep_3 + 0, 1, 1.95, 1.95 );
setScaleKey( spep_3-3 + 19, 1, 1.95, 1.95 );
setScaleKey( spep_3-3 + 20, 1, 0.71, 0.71 );
setScaleKey( spep_3-3 + 38, 1, 0.71, 0.71 );
setScaleKey( spep_3-3 + 40, 1, 0.72, 0.72 );
setScaleKey( spep_3-3 + 42, 1, 1.05, 1.05 );
setScaleKey( spep_3-3 + 44, 1, 1.36, 1.36 );
setScaleKey( spep_3-3 + 46, 1, 1.65, 1.65 );
setScaleKey( spep_3-3 + 48, 1, 1.92, 1.92 );
setScaleKey( spep_3-3 + 50, 1, 2.17, 2.18 );
setScaleKey( spep_3-3 + 52, 1, 2.41, 2.41 );
setScaleKey( spep_3-3 + 54, 1, 2.62, 2.62 );
setScaleKey( spep_3-3 + 56, 1, 2.81, 2.81 );
setScaleKey( spep_3-3 + 58, 1, 2.98, 2.98 );
setScaleKey( spep_3-3 + 60, 1, 3.13, 3.13 );
setScaleKey( spep_3-3 + 62, 1, 3.26, 3.26 );
setScaleKey( spep_3-3 + 64, 1, 3.37, 3.37 );
setScaleKey( spep_3-3 + 66, 1, 3.46, 3.46 );
setScaleKey( spep_3-3 + 68, 1, 3.53, 3.53 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 19, 1, 0 );
setRotateKey( spep_3-3 + 20, 1, -135.9 );
setRotateKey( spep_3-3 + 22, 1, -135.8 );
setRotateKey( spep_3-3 + 24, 1, -135.8 );
setRotateKey( spep_3-3 + 26, 1, -135.9 );
setRotateKey( spep_3-3 + 28, 1, -136 );
setRotateKey( spep_3-3 + 30, 1, -136.1 );
setRotateKey( spep_3-3 + 32, 1, -136.2 );
setRotateKey( spep_3-3 + 34, 1, -136.3 );
setRotateKey( spep_3-3 + 36, 1, -136.5 );
setRotateKey( spep_3-3 + 38, 1, -136.7 );
setRotateKey( spep_3-3 + 40, 1, -136.9 );
setRotateKey( spep_3-3 + 42, 1, -137.1 );
setRotateKey( spep_3-3 + 44, 1, -137.4 );
setRotateKey( spep_3-3 + 46, 1, -137.6 );
setRotateKey( spep_3-3 + 48, 1, -137.9 );
setRotateKey( spep_3-3 + 50, 1, -138.3 );
setRotateKey( spep_3-3 + 52, 1, -140.3 );
setRotateKey( spep_3-3 + 54, 1, -144.3 );
setRotateKey( spep_3-3 + 56, 1, -148.5 );
setRotateKey( spep_3-3 + 58, 1, -153 );
setRotateKey( spep_3-3 + 60, 1, -157.6 );
setRotateKey( spep_3-3 + 62, 1, -162.6 );
setRotateKey( spep_3-3 + 64, 1, -167.7 );
setRotateKey( spep_3-3 + 66, 1, -173.1 );
setRotateKey( spep_3-3 + 68, 1, -178.8 );

--SE
--瞬間移動
SE018 = playSeVer2( spep_3 + 0, 1109, "", 0, 0, 0, -1);

--キック
SE019 = playSeVer2( spep_3 + 18, 1003, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_3 + 22, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 22, SE020, 82 );
SE021 = playSeVer2( spep_3 + 22, 1187, "",spep_3 + 42, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 22, SE021, 52 );
SE022 = playSeVer2( spep_3 + 24, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE023 = playSeVer2( spep_3 + 30, 1183, "",spep_3 + 94, 0, 12, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4= spep_3 + 66; 
------------------------------------------------------
--アッパー
------------------------------------------------------
-- ** エフェクト等 ** --
upper_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, upper_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, upper_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, upper_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 66, upper_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, upper_f, 0 );
setEffRotateKey( spep_4 + 66, upper_f, 0 );
setEffAlphaKey( spep_4 + 0, upper_f, 255 );
setEffAlphaKey( spep_4 + 64, upper_f, 255 );
setEffAlphaKey( spep_4 + 65, upper_f, 255 );
setEffAlphaKey( spep_4 + 66, upper_f, 0 );

-- ** エフェクト等 ** --
upper_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, upper_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, upper_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, upper_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 66, upper_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, upper_b, 0 );
setEffRotateKey( spep_4 + 66, upper_b, 0 );
setEffAlphaKey( spep_4 + 0, upper_b, 255 );
setEffAlphaKey( spep_4 + 64, upper_b, 255 );
setEffAlphaKey( spep_4 + 65, upper_b, 255 );
setEffAlphaKey( spep_4 + 66, upper_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-1 + 68, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4-3 + 18, 1, 107 );

setMoveKey( spep_4 + 0, 1, 836.4, -547.8 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 755.1, -488.9 , 0 );
setMoveKey( spep_4-3 + 4, 1, 671.7, -432.3 , 0 );
setMoveKey( spep_4-3 + 6, 1, 588.3, -375.7 , 0 );
setMoveKey( spep_4-3 + 8, 1, 504.9, -319.1 , 0 );
setMoveKey( spep_4-3 + 10, 1, 421.5, -262.5 , 0 );
setMoveKey( spep_4-3 + 12, 1, 338.1, -205.9 , 0 );
setMoveKey( spep_4-3 + 14, 1, 254.7, -149.3 , 0 );
setMoveKey( spep_4-3 + 17, 1, 171.3, -92.7 , 0 );
setMoveKey( spep_4-3 + 18, 1, 117.7, 87.9 , 0 );
setMoveKey( spep_4-3 + 20, 1, 127.7, 124.7 , 0 );
setMoveKey( spep_4-3 + 22, 1, 123.9, 127.7 , 0 );
setMoveKey( spep_4-3 + 24, 1, 142.8, 114.1 , 0 );
setMoveKey( spep_4-3 + 26, 1, 149.3, 100.6 , 0 );
setMoveKey( spep_4-3 + 28, 1, 134.2, 102.4 , 0 );
setMoveKey( spep_4-3 + 30, 1, 119.1, 104.1 , 0 );
setMoveKey( spep_4-3 + 32, 1, 126.7, 104 , 0 );
setMoveKey( spep_4-3 + 34, 1, 134.3, 104 , 0 );
setMoveKey( spep_4-3 + 36, 1, 129.6, 109.3 , 0 );
setMoveKey( spep_4-3 + 38, 1, 124.9, 114.4 , 0 );
setMoveKey( spep_4-3 + 40, 1, 129.1, 117.9 , 0 );
setMoveKey( spep_4-3 + 42, 1, 133.2, 121.2 , 0 );
setMoveKey( spep_4-3 + 44, 1, 133.8, 123 , 0 );
setMoveKey( spep_4-3 + 46, 1, 134.3, 124.7 , 0 );
setMoveKey( spep_4-3 + 48, 1, 134.9, 126.3 , 0 );
setMoveKey( spep_4-3 + 50, 1, 135.4, 127.9 , 0 );
setMoveKey( spep_4-3 + 52, 1, 136, 129.5 , 0 );
setMoveKey( spep_4-3 + 54, 1, 136.5, 131.3 , 0 );
setMoveKey( spep_4-3 + 56, 1, 137.1, 132.9 , 0 );
setMoveKey( spep_4-3 + 58, 1, 137.7, 134.5 , 0 );
setMoveKey( spep_4-3 + 60, 1, 138.2, 136.1 , 0 );
setMoveKey( spep_4-3 + 62, 1, 138.8, 137.7 , 0 );
setMoveKey( spep_4-3 + 64, 1, 139.3, 139.4 , 0 );
setMoveKey( spep_4-3 + 66, 1, 139.9, 141 , 0 );
setMoveKey( spep_4-1 + 68, 1, 140.4, 142.6 , 0 );

setScaleKey( spep_4 + 0, 1, 4.98, 4.98 );
--setScaleKey( spep_4-3 + 2, 1, 4.73, 4.73 );
setScaleKey( spep_4-3 + 4, 1, 4.47, 4.47 );
setScaleKey( spep_4-3 + 6, 1, 4.21, 4.21 );
setScaleKey( spep_4-3 + 8, 1, 3.95, 3.95 );
setScaleKey( spep_4-3 + 10, 1, 3.69, 3.69 );
setScaleKey( spep_4-3 + 12, 1, 3.43, 3.43 );
setScaleKey( spep_4-3 + 14, 1, 3.17, 3.17 );
setScaleKey( spep_4-3 + 17, 1, 2.91, 2.91 );
setScaleKey( spep_4-3 + 18, 1, 1.45, 1.45 );
setScaleKey( spep_4-3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4-3 + 22, 1, 1.54, 1.54 );
setScaleKey( spep_4-3 + 40, 1, 1.54, 1.54 );
setScaleKey( spep_4-3 + 42, 1, 1.55, 1.55 );
setScaleKey( spep_4-1 + 68, 1, 1.55, 1.55 );

setRotateKey( spep_4 + 0, 1, -125.8 );
setRotateKey( spep_4-3 + 2, 1, -126.6 );
setRotateKey( spep_4-3 + 4, 1, -127.1 );
setRotateKey( spep_4-3 + 6, 1, -127.6 );
setRotateKey( spep_4-3 + 8, 1, -128.1 );
setRotateKey( spep_4-3 + 10, 1, -128.7 );
setRotateKey( spep_4-3 + 12, 1, -129.2 );
setRotateKey( spep_4-3 + 14, 1, -129.7 );
setRotateKey( spep_4-3 + 17, 1, -130.2 );
setRotateKey( spep_4-3 + 18, 1, -28.5 );
setRotateKey( spep_4-1 + 68, 1, -28.5 );

--SE
--瞬間移動
SE024 = playSeVer2( spep_4 + 4, 1109, "", 0, 0, 0, -1);

--アッパー
SE025 = playSeVer2( spep_4 + 12, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 12, SE025, 132 );
SE026 = playSeVer2( spep_4 + 16, 1009, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_4 + 16, 1190, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5= spep_4 + 64; 
------------------------------------------------------
--振りかぶる
------------------------------------------------------
-- ** エフェクト等 ** --
sprinkle = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, sprinkle, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, sprinkle, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, sprinkle, -1.0, 1.0 );
setEffScaleKey( spep_5 + 56, sprinkle, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, sprinkle, 0 );
setEffRotateKey( spep_5 + 56, sprinkle, 0 );
setEffAlphaKey( spep_5 + 0, sprinkle, 255 );
setEffAlphaKey( spep_5 + 54, sprinkle, 255 );
setEffAlphaKey( spep_5 + 55, sprinkle, 255 );
setEffAlphaKey( spep_5 + 56, sprinkle, 0 );

--SE
--振りかぶる
SE028 = playSeVer2( spep_5 + 0, 1116, "",spep_5 + 54, 0, 28, -1);
SE029 = playSeVer2( spep_5 + 10, 1004, "", 0, 0, 0, -1);
setPitch( spep_5 + 10, SE029, -400 );
setTimeStretch( SE029, 0.73, 30, 4 );
SE030 = playSeVer2( spep_5 + 22, 1182, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_5 + 22, SE030, 79 );
setStartTimeMs( SE030,  67 );
SE031 = playSeVer2( spep_5 + 18, 9, "",spep_5 + 56, 26, 4, -1);
setSeVolumeByWorkId( spep_5 + 18, SE031, 72 );


-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 56, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6= spep_5 + 56; 
------------------------------------------------------
--敵にパンチ→敵が上空に吹っ飛ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 76, punch_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, punch_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 76, punch_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, punch_f, 0 );
setEffRotateKey( spep_6 + 76, punch_f, 0 );
setEffAlphaKey( spep_6 + 0, punch_f, 255 );
setEffAlphaKey( spep_6 + 74, punch_f, 255 );
setEffAlphaKey( spep_6 + 75, punch_f, 255 );
setEffAlphaKey( spep_6 + 76, punch_f, 0 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_6 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 76, punch_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 76, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, punch_b, 0 );
setEffRotateKey( spep_6 + 76, punch_b, 0 );
setEffAlphaKey( spep_6 + 0, punch_b, 255 );
setEffAlphaKey( spep_6 + 74, punch_b, 255 );
setEffAlphaKey( spep_6 + 75, punch_b, 255 );
setEffAlphaKey( spep_6 + 76, punch_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );

changeAnime( spep_6 + 0, 1, 105 );

setMoveKey( spep_6 + 0, 1, 725.7, -307 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 503.9, -222.7 , 0 );
setMoveKey( spep_6-3 + 4, 1, 294.1, -96.3 , 0 );
setMoveKey( spep_6-3 + 6, 1, 337.5, -41.1 , 0 );
setMoveKey( spep_6-3 + 8, 1, 312.2, -53.2 , 0 );
setMoveKey( spep_6-3 + 10, 1, 346.4, -37.4 , 0 );
setMoveKey( spep_6-3 + 12, 1, 345.6, -51.3 , 0 );
setMoveKey( spep_6-3 + 14, 1, 372.9, -23.2 , 0 );
setMoveKey( spep_6-3 + 16, 1, 389.5, -37 , 0 );
setMoveKey( spep_6-3 + 18, 1, 371.2, -29.9 , 0 );
setMoveKey( spep_6-3 + 20, 1, 368.7, -21 , 0 );
setMoveKey( spep_6-3 + 22, 1, 319.8, 144.2 , 0 );
setMoveKey( spep_6-3 + 24, 1, 617.9, 429.7 , 0 );
setMoveKey( spep_6-3 + 26, 1, 741, 541.7 , 0 );
setMoveKey( spep_6-3 + 28, 1, 843.2, 619.4 , 0 );
setMoveKey( spep_6-3 + 30, 1, 929.2, 682.1 , 0 );
setMoveKey( spep_6-3 + 32, 1, 1004.8, 735 , 0 );
setMoveKey( spep_6-3 + 34, 1, 1073, 781.1 , 0 );
setMoveKey( spep_6-3 + 36, 1, 1135.4, 821.9 , 0 );
setMoveKey( spep_6-3 + 38, 1, 1193.4, 858.5 , 0 );
setMoveKey( spep_6-3 + 40, 1, 1067.4, 807 , 0 );
setMoveKey( spep_6-3 + 42, 1, 938.8, 751.6 , 0 );
setMoveKey( spep_6-3 + 44, 1, 808, 692.7 , 0 );
setMoveKey( spep_6-3 + 46, 1, 675.2, 630.8 , 0 );
setMoveKey( spep_6-3 + 48, 1, 540.5, 566 , 0 );
setMoveKey( spep_6-3 + 50, 1, 404.1, 498.8 , 0 );
setMoveKey( spep_6-3 + 52, 1, 266.2, 429.3 , 0 );
setMoveKey( spep_6-3 + 54, 1, 272.2, 441.9 , 0 );
setMoveKey( spep_6-3 + 56, 1, 276.9, 452.8 , 0 );
setMoveKey( spep_6-3 + 58, 1, 280.2, 462.4 , 0 );
setMoveKey( spep_6-3 + 60, 1, 282.2, 470.5 , 0 );
setMoveKey( spep_6-3 + 62, 1, 283.1, 477.5 , 0 );
setMoveKey( spep_6-3 + 64, 1, 282.8, 483.3 , 0 );
setMoveKey( spep_6-3 + 66, 1, 281.3, 487.9 , 0 );
setMoveKey( spep_6-3 + 68, 1, 278.8, 491.5 , 0 );
setMoveKey( spep_6-3 + 70, 1, 275.1, 494.1 , 0 );
setMoveKey( spep_6-3 + 72, 1, 270.4, 495.6 , 0 );
setMoveKey( spep_6-3 + 74, 1, 264.4, 496.1 , 0 );
setMoveKey( spep_6-3 + 76, 1, 257.2, 495.7 , 0 );
setMoveKey( spep_6-3 + 78, 1, 248.2, 493.9 , 0 );

setScaleKey( spep_6 + 0, 1, 5.15, 5.15 );
--setScaleKey( spep_6-3 + 2, 1, 4.92, 4.92 );
setScaleKey( spep_6-3 + 4, 1, 4.67, 4.67 );
setScaleKey( spep_6-3 + 20, 1, 4.67, 4.67 );
setScaleKey( spep_6-3 + 22, 1, 4.38, 4.38 );
setScaleKey( spep_6-3 + 24, 1, 3.18, 3.17 );
setScaleKey( spep_6-3 + 26, 1, 2.73, 2.72 );
setScaleKey( spep_6-3 + 28, 1, 2.41, 2.4 );
setScaleKey( spep_6-3 + 30, 1, 2.15, 2.14 );
setScaleKey( spep_6-3 + 32, 1, 1.94, 1.92 );
setScaleKey( spep_6-3 + 34, 1, 1.75, 1.74 );
setScaleKey( spep_6-3 + 36, 1, 1.59, 1.58 );
setScaleKey( spep_6-3 + 38, 1, 1.45, 1.43 );
setScaleKey( spep_6-3 + 40, 1, 1.32, 1.3 );
setScaleKey( spep_6-3 + 42, 1, 1.2, 1.18 );
setScaleKey( spep_6-3 + 44, 1, 1.09, 1.08 );
setScaleKey( spep_6-3 + 46, 1, 0.99, 0.98 );
setScaleKey( spep_6-3 + 48, 1, 0.91, 0.89 );
setScaleKey( spep_6-3 + 50, 1, 0.82, 0.81 );
setScaleKey( spep_6-3 + 52, 1, 0.75, 0.74 );
setScaleKey( spep_6-3 + 54, 1, 0.68, 0.67 );
setScaleKey( spep_6-3 + 56, 1, 0.62, 0.61 );
setScaleKey( spep_6-3 + 58, 1, 0.56, 0.55 );
setScaleKey( spep_6-3 + 60, 1, 0.51, 0.5 );
setScaleKey( spep_6-3 + 62, 1, 0.46, 0.45 );
setScaleKey( spep_6-3 + 64, 1, 0.41, 0.41 );
setScaleKey( spep_6-3 + 66, 1, 0.37, 0.37 );
setScaleKey( spep_6-3 + 68, 1, 0.34, 0.33 );
setScaleKey( spep_6-3 + 70, 1, 0.31, 0.3 );
setScaleKey( spep_6-3 + 72, 1, 0.28, 0.27 );
setScaleKey( spep_6-3 + 74, 1, 0.25, 0.25 );
setScaleKey( spep_6-3 + 76, 1, 0.23, 0.23 );
setScaleKey( spep_6-3 + 78, 1, 0.22, 0.22 );

setRotateKey( spep_6 + 0, 1, -108.8 );
--setRotateKey( spep_6-3 + 2, 1, -86.1 );
setRotateKey( spep_6-3 + 4, 1, -63.2 );
setRotateKey( spep_6-3 + 6, 1, -57 );
setRotateKey( spep_6-3 + 8, 1, -56 );
setRotateKey( spep_6-3 + 10, 1, -55 );
setRotateKey( spep_6-3 + 12, 1, -54 );
setRotateKey( spep_6-3 + 14, 1, -53 );
setRotateKey( spep_6-3 + 16, 1, -52 );
setRotateKey( spep_6-3 + 18, 1, -51 );
setRotateKey( spep_6-3 + 20, 1, -50 );
setRotateKey( spep_6-3 + 22, 1, 7 );
setRotateKey( spep_6-3 + 24, 1, 9.4 );
setRotateKey( spep_6-3 + 26, 1, 11.7 );
setRotateKey( spep_6-3 + 28, 1, 13.9 );
setRotateKey( spep_6-3 + 30, 1, 16.1 );
setRotateKey( spep_6-3 + 32, 1, 18.1 );
setRotateKey( spep_6-3 + 34, 1, 20.1 );
setRotateKey( spep_6-3 + 36, 1, 22 );
setRotateKey( spep_6-3 + 38, 1, 23.7 );
setRotateKey( spep_6-3 + 40, 1, 26.2 );
setRotateKey( spep_6-3 + 42, 1, 28.6 );
setRotateKey( spep_6-3 + 44, 1, 30.8 );
setRotateKey( spep_6-3 + 46, 1, 33 );
setRotateKey( spep_6-3 + 48, 1, 35.1 );
setRotateKey( spep_6-3 + 50, 1, 37.1 );
setRotateKey( spep_6-3 + 52, 1, 39.1 );
setRotateKey( spep_6-3 + 54, 1, 40.6 );
setRotateKey( spep_6-3 + 56, 1, 42 );
setRotateKey( spep_6-3 + 58, 1, 43.3 );
setRotateKey( spep_6-3 + 60, 1, 44.5 );
setRotateKey( spep_6-3 + 62, 1, 45.6 );
setRotateKey( spep_6-3 + 64, 1, 46.7 );
setRotateKey( spep_6-3 + 66, 1, 47.7 );
setRotateKey( spep_6-3 + 68, 1, 48.6 );
setRotateKey( spep_6-3 + 70, 1, 49.3 );
setRotateKey( spep_6-3 + 72, 1, 50.1 );
setRotateKey( spep_6-3 + 74, 1, 50.7 );
setRotateKey( spep_6-3 + 76, 1, 51.2 );
setRotateKey( spep_6-3 + 78, 1, 51.7 );

--SE
--パンチ
SE032 = playSeVer2( spep_6 + 2, 1120, "", 0, 0, 0, -1);

--敵吹っ飛ぶ
SE033 = playSeVer2( spep_6 + 12, 1027, "", 0, 0, 0, -1);

--敵飛んでいく
SE034 = playSeVer2( spep_6 + 44, 1121, "",spep_6 + 158, 0, 14, -1);
setSeVolumeByWorkId( spep_6 + 44, SE034, 74 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_7= spep_6 + 76; 
------------------------------------------------------
--吹っ飛んでいる敵を追い越す
------------------------------------------------------
-- ** エフェクト等 ** --
fri_f = entryEffect( spep_7 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, fri_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 36, fri_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, fri_f, -1.0, 1.0 );
setEffScaleKey( spep_7 + 36, fri_f, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, fri_f, 0 );
setEffRotateKey( spep_7 + 36, fri_f, 0 );
setEffAlphaKey( spep_7 + 0, fri_f, 255 );
setEffAlphaKey( spep_7 + 34, fri_f, 255 );
setEffAlphaKey( spep_7 + 35, fri_f, 255 );
setEffAlphaKey( spep_7 + 36, fri_f, 0 );

-- ** エフェクト等 ** --
fri_b = entryEffect( spep_7 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, fri_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 36, fri_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, fri_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 36, fri_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, fri_b, 0 );
setEffRotateKey( spep_7 + 36, fri_b, 0 );
setEffAlphaKey( spep_7 + 0, fri_b, 255 );
setEffAlphaKey( spep_7 + 34, fri_b, 255 );
setEffAlphaKey( spep_7 + 35, fri_b, 255 );
setEffAlphaKey( spep_7 + 36, fri_b, 0 );

--敵の動き
changeAnime( spep_7 + 0, 1, 106 );

setMoveKey( spep_7 + 0, 1, -131.7, -415 , 0 );
--setMoveKey( spep_7-3 + 2, 1, -115.1, -394.5 , 0 );
setMoveKey( spep_7-3 + 4, 1, -98.6, -373.9 , 0 );
setMoveKey( spep_7-3 + 6, 1, -82.1, -353.3 , 0 );
setMoveKey( spep_7-3 + 8, 1, -65.6, -332.7 , 0 );
setMoveKey( spep_7-3 + 10, 1, -49.1, -312.1 , 0 );
setMoveKey( spep_7-3 + 12, 1, -32.6, -291.5 , 0 );
setMoveKey( spep_7-3 + 14, 1, -16.1, -270.9 , 0 );
setMoveKey( spep_7-3 + 16, 1, 0.4, -250.3 , 0 );
setMoveKey( spep_7-3 + 18, 1, 16.9, -229.7 , 0 );
setMoveKey( spep_7-3 + 20, 1, 33.4, -209.1 , 0 );
setMoveKey( spep_7-3 + 22, 1, 49.9, -188.5 , 0 );
setMoveKey( spep_7-3 + 24, 1, 66.4, -167.9 , 0 );
setMoveKey( spep_7-3 + 26, 1, 82.9, -147.3 , 0 );
setMoveKey( spep_7-3 + 28, 1, 99.4, -126.7 , 0 );
setMoveKey( spep_7-3 + 30, 1, 115.9, -106.1 , 0 );
setMoveKey( spep_7-3 + 32, 1, 132.4, -85.6 , 0 );
setMoveKey( spep_7-3 + 34, 1, 148.9, -65 , 0 );
setMoveKey( spep_7-3 + 36, 1, 165.4, -44.4 , 0 );
setMoveKey( spep_7-3 + 38, 1, 181.9, -23.8 , 0 );

setScaleKey( spep_7 + 0, 1, 1.59, 1.69 );
setScaleKey( spep_7-3 + 6, 1, 1.59, 1.69 );
setScaleKey( spep_7-3 + 8, 1, 1.58, 1.68 );
setScaleKey( spep_7-3 + 20, 1, 1.58, 1.68 );
setScaleKey( spep_7-3 + 22, 1, 1.57, 1.67 );
setScaleKey( spep_7-3 + 32, 1, 1.57, 1.67 );
setScaleKey( spep_7-3 + 34, 1, 1.57, 1.66 );
setScaleKey( spep_7-3 + 36, 1, 1.56, 1.66 );
setScaleKey( spep_7-3 + 38, 1, 1.56, 1.66 );

setRotateKey( spep_7 + 0, 1, -28 );
setRotateKey( spep_7-3 + 38, 1, -28 );

--SE
--悟空飛んでくる
SE035 = playSeVer2( spep_7 + 0, 1207, "",spep_7 + 60, 0, 14, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_8= spep_7 + 36; 
------------------------------------------------------
--敵に向かって両手を振りかぶる
------------------------------------------------------
-- ** エフェクト等 ** --
sprinkle2_f = entryEffect( spep_8 + 0, SP_12x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, sprinkle2_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 36, sprinkle2_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, sprinkle2_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 36, sprinkle2_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, sprinkle2_f, 0 );
setEffRotateKey( spep_8 + 36, sprinkle2_f, 0 );
setEffAlphaKey( spep_8 + 0, sprinkle2_f, 255 );
setEffAlphaKey( spep_8 + 34, sprinkle2_f, 255 );
setEffAlphaKey( spep_8 + 35, sprinkle2_f, 255 );
setEffAlphaKey( spep_8 + 36, sprinkle2_f, 0 );

-- ** エフェクト等 ** --
sprinkle2_b = entryEffect( spep_8 + 0, SP_13x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, sprinkle2_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 36, sprinkle2_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, sprinkle2_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 36, sprinkle2_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, sprinkle2_b, 0 );
setEffRotateKey( spep_8 + 36, sprinkle2_b, 0 );
setEffAlphaKey( spep_8 + 0, sprinkle2_b, 255 );
setEffAlphaKey( spep_8 + 34, sprinkle2_b, 255 );
setEffAlphaKey( spep_8 + 35, sprinkle2_b, 255 );
setEffAlphaKey( spep_8 + 36, sprinkle2_b, 0 );

--敵の動き
changeAnime( spep_8 + 0, 1, 106 );

setMoveKey( spep_8 + 0, 1, -460.7, -545.4 , 0 );
--setMoveKey( spep_8-3 + 2, 1, -378.6, -473.5 , 0 );
setMoveKey( spep_8-3 + 4, 1, -316.8, -419.3 , 0 );
setMoveKey( spep_8-3 + 6, 1, -267.5, -376 , 0 );
setMoveKey( spep_8-3 + 8, 1, -226.8, -340.3 , 0 );
setMoveKey( spep_8-3 + 10, 1, -192.5, -310.2 , 0 );
setMoveKey( spep_8-3 + 12, 1, -163.1, -284.4 , 0 );
setMoveKey( spep_8-3 + 14, 1, -137.6, -262 , 0 );
setMoveKey( spep_8-3 + 16, 1, -115.2, -242.4 , 0 );
setMoveKey( spep_8-3 + 18, 1, -95.5, -225.1 , 0 );
setMoveKey( spep_8-3 + 20, 1, -78, -209.7 , 0 );
setMoveKey( spep_8-3 + 22, 1, -62.2, -195.9 , 0 );
setMoveKey( spep_8-3 + 24, 1, -48.1, -183.5 , 0 );
setMoveKey( spep_8-3 + 26, 1, -35.2, -172.2 , 0 );
setMoveKey( spep_8-3 + 28, 1, -23.4, -161.9 , 0 );
setMoveKey( spep_8-3 + 30, 1, -12.5, -152.3 , 0 );
setMoveKey( spep_8-3 + 32, 1, -2.4, -143.4 , 0 );
setMoveKey( spep_8-3 + 34, 1, 7.1, -135.1 , 0 );
setMoveKey( spep_8-3 + 36, 1, 16.2, -127.1 , 0 );
setMoveKey( spep_8-3 + 38, 1, 25.1, -119.4 , 0 );

setScaleKey( spep_8 + 0, 1, 2.51, 2.51 );
--setScaleKey( spep_8-3 + 2, 1, 2.45, 2.45 );
setScaleKey( spep_8-3 + 4, 1, 2.42, 2.42 );
setScaleKey( spep_8-3 + 6, 1, 2.39, 2.39 );
setScaleKey( spep_8-3 + 8, 1, 2.36, 2.36 );
setScaleKey( spep_8-3 + 10, 1, 2.34, 2.34 );
setScaleKey( spep_8-3 + 12, 1, 2.32, 2.32 );
setScaleKey( spep_8-3 + 14, 1, 2.3, 2.3 );
setScaleKey( spep_8-3 + 16, 1, 2.29, 2.29 );
setScaleKey( spep_8-3 + 18, 1, 2.28, 2.28 );
setScaleKey( spep_8-3 + 20, 1, 2.27, 2.27 );
setScaleKey( spep_8-3 + 22, 1, 2.26, 2.26 );
setScaleKey( spep_8-3 + 24, 1, 2.25, 2.25 );
setScaleKey( spep_8-3 + 26, 1, 2.24, 2.24 );
setScaleKey( spep_8-3 + 28, 1, 2.23, 2.23 );
setScaleKey( spep_8-3 + 30, 1, 2.23, 2.23 );
setScaleKey( spep_8-3 + 32, 1, 2.22, 2.22 );
setScaleKey( spep_8-3 + 34, 1, 2.21, 2.21 );
setScaleKey( spep_8-3 + 36, 1, 2.21, 2.21 );
setScaleKey( spep_8-3 + 38, 1, 2.2, 2.2 );

setRotateKey( spep_8 + 0, 1, -26.8 );
setRotateKey( spep_8-3 + 38, 1, -26.8 );

--SE
--振りかぶる
SE036 = playSeVer2( spep_8 + 0, 1116, "",spep_8 + 40, 0, 16, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_9= spep_8 + 36;
------------------------------------------------------
--敵を叩きつける
------------------------------------------------------
-- ** エフェクト等 ** --
down_f = entryEffect( spep_9 + 0, SP_14x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, down_f, 0, 0, 0 );
setEffMoveKey( spep_9 + 76, down_f, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, down_f, -1.0, 1.0 );
setEffScaleKey( spep_9 + 76, down_f, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, down_f, 0 );
setEffRotateKey( spep_9 + 76, down_f, 0 );
setEffAlphaKey( spep_9 + 0, down_f, 255 );
setEffAlphaKey( spep_9 + 74, down_f, 255 );
setEffAlphaKey( spep_9 + 75, down_f, 255 );
setEffAlphaKey( spep_9 + 76, down_f, 0 );

-- ** エフェクト等 ** --
down_b = entryEffect( spep_9 + 0, SP_15x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, down_b, 0, 0, 0 );
setEffMoveKey( spep_9 + 76, down_b, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, down_b, -1.0, 1.0 );
setEffScaleKey( spep_9 + 76, down_b, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, down_b, 0 );
setEffRotateKey( spep_9 + 76, down_b, 0 );
setEffAlphaKey( spep_9 + 0, down_b, 255 );
setEffAlphaKey( spep_9 + 74, down_b, 255 );
setEffAlphaKey( spep_9 + 75, down_b, 255 );
setEffAlphaKey( spep_9 + 76, down_b, 0 );

--敵の動き
setDisp( spep_9-3 + 46, 1, 0 );

changeAnime( spep_9 + 0, 1, 107 );

setMoveKey( spep_9 + 0, 1, -96.8, 259.4 , 0 );
--setMoveKey( spep_9-3 + 2, 1, -95.8, 279.2 , 0 );
setMoveKey( spep_9-3 + 4, 1, -114.4, 253 , 0 );
setMoveKey( spep_9-3 + 6, 1, -90.4, 251.4 , 0 );
setMoveKey( spep_9-3 + 8, 1, -82, 247.3 , 0 );
setMoveKey( spep_9-3 + 10, 1, -101.6, 264.2 , 0 );
setMoveKey( spep_9-3 + 12, 1, -113.7, 279.8 , 0 );
setMoveKey( spep_9-3 + 14, 1, -104.8, 267.4 , 0 );
setMoveKey( spep_9-3 + 18, 1, -104.8, 267.4 , 0 );
setMoveKey( spep_9-3 + 20, 1, -42.7, 152.9 , 0 );
setMoveKey( spep_9-3 + 22, 1, 19.4, 38.5 , 0 );
setMoveKey( spep_9-3 + 24, 1, 81.5, -76 , 0 );
setMoveKey( spep_9-3 + 26, 1, 143.6, -190.4 , 0 );
setMoveKey( spep_9-3 + 28, 1, 205.6, -304.9 , 0 );
setMoveKey( spep_9-3 + 30, 1, 267.7, -419.3 , 0 );
setMoveKey( spep_9-3 + 32, 1, 329.8, -533.8 , 0 );
setMoveKey( spep_9-3 + 34, 1, 391.8, -648.2 , 0 );
setMoveKey( spep_9-3 + 36, 1, 453.9, -762.6 , 0 );
setMoveKey( spep_9-3 + 38, 1, 515.9, -877.1 , 0 );
setMoveKey( spep_9-3 + 40, 1, 578, -991.5 , 0 );
setMoveKey( spep_9-3 + 42, 1, 640, -1106 , 0 );
setMoveKey( spep_9-3 + 44, 1, 702.1, -1220.4 , 0 );
setMoveKey( spep_9-3 + 46, 1, 764.1, -1334.8 , 0 );

setScaleKey( spep_9 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_9-3 + 18, 1, 0.2, 0.2 );
setScaleKey( spep_9-3 + 20, 1, 0.48, 0.48 );
setScaleKey( spep_9-3 + 22, 1, 0.75, 0.75 );
setScaleKey( spep_9-3 + 24, 1, 1.02, 1.02 );
setScaleKey( spep_9-3 + 26, 1, 1.3, 1.3 );
setScaleKey( spep_9-3 + 28, 1, 1.57, 1.57 );
setScaleKey( spep_9-3 + 30, 1, 1.84, 1.84 );
setScaleKey( spep_9-3 + 32, 1, 2.12, 2.12 );
setScaleKey( spep_9-3 + 34, 1, 2.39, 2.39 );
setScaleKey( spep_9-3 + 36, 1, 2.66, 2.66 );
setScaleKey( spep_9-3 + 38, 1, 2.94, 2.94 );
setScaleKey( spep_9-3 + 40, 1, 3.21, 3.21 );
setScaleKey( spep_9-3 + 42, 1, 3.48, 3.48 );
setScaleKey( spep_9-3 + 44, 1, 3.76, 3.76 );
setScaleKey( spep_9-3 + 46, 1, 4.03, 4.03 );

setRotateKey( spep_9 + 0, 1, 67.6 );
setRotateKey( spep_9-3 + 46, 1, 67.6 );

--SE
--叩きつける
SE037 = playSeVer2( spep_9 + 0, 1123, "", 0, 0, 0, -1);

--悟空飛び込む
SE038 = playSeVer2( spep_9 + 50, 1182, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_9 + 50, 9, "",spep_9 + 116, 0, 26, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_10= spep_9 + 76;
------------------------------------------------------
--敵に向かって行く
------------------------------------------------------
-- ** エフェクト等 ** --
face = entryEffect( spep_10 + 0, SP_16x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, face, 0, 0, 0 );
setEffMoveKey( spep_10 + 76, face, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, face, -1.0, 1.0 );
setEffScaleKey( spep_10 + 76, face, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0, face, 0 );
setEffRotateKey( spep_10 + 76, face, 0 );
setEffAlphaKey( spep_10 + 0, face, 255 );
setEffAlphaKey( spep_10 + 74, face, 255 );
setEffAlphaKey( spep_10 + 75, face, 255 );
setEffAlphaKey( spep_10 + 76, face, 0 );

--SE
--着地
SE040 = playSeVer2( spep_10 + 18, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 18, SE040, 157 );
SE041 = playSeVer2( spep_10 + 18, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 18, SE041, 168 );

--飛び上がる
SE042 = playSeVer2( spep_10 + 32, 1182, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_10 + 32, 1117, "",spep_10 + 80, 0, 20, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_10 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_11= spep_10 + 76;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_11 + 0, SP_17x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_11 + 130, finish_f, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_11 + 130, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_f, 0 );
setEffRotateKey( spep_11 + 130, finish_f, 0 );
setEffAlphaKey( spep_11 + 0, finish_f, 255 );
setEffAlphaKey( spep_11 + 130, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_11 + 0, SP_18x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_11 + 130, finish_b, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_11 + 130, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_b, 0 );
setEffRotateKey( spep_11 + 130, finish_b, 0 );
setEffAlphaKey( spep_11 + 0, finish_b, 255 );
setEffAlphaKey( spep_11 + 130, finish_b, 255 );

--敵の動き
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11-1 + 116, 1, 0 );

changeAnime( spep_11 + 0, 1, 106 );
changeAnime( spep_11-3 + 6, 1, 105 );

setMoveKey( spep_11 + 0, 1, 118.2, 358 , 0 );
--setMoveKey( spep_11-3 + 2, 1, -124.4, 290.1 , 0 );
setMoveKey( spep_11-3 + 5, 1, 131.4, 212.5 , 0 );
setMoveKey( spep_11-3 + 6, 1, 104.7, 153.9 , 0 );
setMoveKey( spep_11-3 + 8, 1, 105.3, 165.6 , 0 );
setMoveKey( spep_11-3 + 10, 1, 99.5, 145.8 , 0 );
setMoveKey( spep_11-3 + 12, 1, 128.8, 196.6 , 0 );
setMoveKey( spep_11-3 + 14, 1, 101.6, 112 , 0 );
setMoveKey( spep_11-3 + 16, 1, 72.8, 187.9 , 0 );
setMoveKey( spep_11-3 + 18, 1, 111.6, 137 , 0 );
setMoveKey( spep_11-3 + 20, 1, 115.4, 147.2 , 0 );
setMoveKey( spep_11-3 + 22, 1, 104.3, 144.9 , 0 );
setMoveKey( spep_11-3 + 24, 1, 94.2, 137.7 , 0 );
setMoveKey( spep_11-3 + 26, 1, 109.2, 138.1 , 0 );
setMoveKey( spep_11-3 + 28, 1, 100.5, 148.4 , 0 );
setMoveKey( spep_11-3 + 30, 1, 167.5, 117.7 , 0 );
setMoveKey( spep_11-3 + 32, 1, 236.3, 83.4 , 0 );
setMoveKey( spep_11-3 + 34, 1, 285.8, 68 , 0 );
setMoveKey( spep_11-3 + 36, 1, 349.6, 38.2 , 0 );
setMoveKey( spep_11-3 + 38, 1, 412.7, 8.7 , 0 );
setMoveKey( spep_11-3 + 40, 1, 379.8, 7.3 , 0 );
setMoveKey( spep_11-3 + 42, 1, 343.4, 7.1 , 0 );
setMoveKey( spep_11-3 + 44, 1, 304.9, 6.9 , 0 );
setMoveKey( spep_11-3 + 46, 1, 262.8, 8 , 0 );
setMoveKey( spep_11-3 + 48, 1, 217, 10.3 , 0 );
setMoveKey( spep_11-3 + 50, 1, 167.8, 14 , 0 );
setMoveKey( spep_11-3 + 52, 1, 114.9, 19.1 , 0 );
--setMoveKey( spep_11-3 + 54, 1, 58.4, 25.5 , 0 );
--setMoveKey( spep_11-3 + 56, 1, -1.8, 33.1 , 0 );
--setMoveKey( spep_11-3 + 58, 1, -65.4, 42.1 , 0 );
--setMoveKey( spep_11-3 + 60, 1, 20.7, 10.6 , 0 );
setMoveKey( spep_11-3 + 62, 1, 106.8, -20.8 , 0 );
setMoveKey( spep_11-3 + 64, 1, 107.4, -21.1 , 0 );
setMoveKey( spep_11-3 + 66, 1, 108.1, -21.3 , 0 );
setMoveKey( spep_11-3 + 68, 1, 108.7, -21.5 , 0 );
--setMoveKey( spep_11-3 + 70, 1, 115.7, -14.5 , 0 );
setMoveKey( spep_11-3 + 72, 1, 105.2, -21.5 , 0 );
--setMoveKey( spep_11-3 + 74, 1, 115.7, -14.5 , 0 );
setMoveKey( spep_11-3 + 76, 1, 98.2, -21.5 , 0 );
setMoveKey( spep_11-3 + 78, 1, 103.5, -18 , 0 );
setMoveKey( spep_11-3 + 80, 1, 108.7, -14.5 , 0 );
--setMoveKey( spep_11-3 + 82, 1, 98.2, -11 , 0 );
--setMoveKey( spep_11-3 + 84, 1, 87.7, -7.5 , 0 );
--setMoveKey( spep_11-3 + 86, 1, 96.5, -4 , 0 );
setMoveKey( spep_11-3 + 88, 1, 105.2, -0.5 , 0 );
setMoveKey( spep_11-3 + 90, 1, 114, 3 , 0 );
--setMoveKey( spep_11-3 + 92, 1, 122.7, 6.5 , 0 );
setMoveKey( spep_11-3 + 94, 1, 114, 10 , 0 );
setMoveKey( spep_11-3 + 96, 1, 105.2, 13.5 , 0 );
setMoveKey( spep_11-3 + 98, 1, 112.2, 17 , 0 );
setMoveKey( spep_11-3 + 100, 1, 119.2, 20.5 , 0 );
setMoveKey( spep_11-3 + 102, 1, 117.5, 19.6 , 0 );
setMoveKey( spep_11-3 + 104, 1, 115.7, 18.8 , 0 );
setMoveKey( spep_11-3 + 106, 1, 114, 17.9 , 0 );
setMoveKey( spep_11-3 + 108, 1, 112.2, 17 , 0 );
setMoveKey( spep_11-3 + 110, 1, 110.5, 16.1 , 0 );
setMoveKey( spep_11-3 + 112, 1, 108.7, 15.3 , 0 );
setMoveKey( spep_11-3 + 114, 1, 107, 14.4 , 0 );
setMoveKey( spep_11-1 + 116, 1, 105.2, 13.5 , 0 );

setScaleKey( spep_11 + 0, 1, 1.85, 1.85 );
--setScaleKey( spep_11-3 + 2, 1, 2.08, 2.08 );
setScaleKey( spep_11-3 + 5, 1, 2.31, 2.31 );
setScaleKey( spep_11-3 + 6, 1, 2.42, 2.42 );
setScaleKey( spep_11-3 + 8, 1, 2.53, 2.53 );
setScaleKey( spep_11-3 + 10, 1, 2.52, 2.52 );
setScaleKey( spep_11-3 + 12, 1, 2.51, 2.51 );
setScaleKey( spep_11-3 + 14, 1, 2.51, 2.51 );
setScaleKey( spep_11-3 + 16, 1, 2.5, 2.5 );
setScaleKey( spep_11-3 + 18, 1, 2.49, 2.49 );
setScaleKey( spep_11-3 + 20, 1, 2.48, 2.48 );
setScaleKey( spep_11-3 + 22, 1, 2.48, 2.48 );
setScaleKey( spep_11-3 + 24, 1, 2.47, 2.47 );
setScaleKey( spep_11-3 + 26, 1, 2.46, 2.46 );
setScaleKey( spep_11-3 + 28, 1, 2.46, 2.46 );
setScaleKey( spep_11-3 + 30, 1, 2.33, 2.33 );
setScaleKey( spep_11-3 + 32, 1, 2.2, 2.2 );
setScaleKey( spep_11-3 + 34, 1, 2.07, 2.07 );
setScaleKey( spep_11-3 + 36, 1, 1.95, 1.95 );
setScaleKey( spep_11-3 + 38, 1, 1.82, 1.82 );
setScaleKey( spep_11-3 + 40, 1, 1.67, 1.67 );
setScaleKey( spep_11-3 + 42, 1, 1.53, 1.53 );
setScaleKey( spep_11-3 + 44, 1, 1.38, 1.38 );
setScaleKey( spep_11-3 + 46, 1, 1.25, 1.25 );
setScaleKey( spep_11-3 + 48, 1, 1.11, 1.11 );
setScaleKey( spep_11-3 + 50, 1, 0.98, 0.98 );
setScaleKey( spep_11-3 + 52, 1, 0.86, 0.86 );
setScaleKey( spep_11-3 + 54, 1, 0.74, 0.74 );
setScaleKey( spep_11-3 + 56, 1, 0.62, 0.62 );
setScaleKey( spep_11-3 + 58, 1, 0.51, 0.51 );
setScaleKey( spep_11-3 + 60, 1, 0.41, 0.41 );
setScaleKey( spep_11-3 + 62, 1, 0.31, 0.31 );
setScaleKey( spep_11-1 + 116, 1, 0.31, 0.31 );

setRotateKey( spep_11 + 0, 1, 110 );
setRotateKey( spep_11-3 + 5, 1, 110 );
setRotateKey( spep_11-3 + 6, 1, 40 );
setRotateKey( spep_11-1 + 116, 1, 40 );

--SE
--蹴り上げる
SE044 = playSeVer2( spep_11 + 0, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 0, SE044, 60 );
SE045 = playSeVer2( spep_11 + 2, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 2, SE045, 86 );
SE046 = playSeVer2( spep_11 + 6, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 6, SE046, 92 );

--敵飛んでいく
SE047 = playSeVer2( spep_11 + 16, 1183, "",spep_11 + 78, 0, 16, -1);

--岩激突
SE048 = playSeVer2( spep_11 + 56, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 56, SE048, 86 );
SE049 = playSeVer2( spep_11 + 60, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 60, SE049, 72 );

-- ** くろ背景 ** --
entryFadeBg( spep_11 , 0, 130, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage(spep_11+4);
endPhase( spep_11 + 120 );
end