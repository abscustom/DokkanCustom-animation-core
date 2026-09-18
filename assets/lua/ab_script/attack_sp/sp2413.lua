--1024930:LR_メタルクウラ_必殺技:フルメタルアバランチ
--sp_effect_b1_00223
--sp2413

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
SP_01=	160552	;--	メタルクウラが正面から歩いてくる
SP_02=	160553	;--	横向きで走っている
SP_03=	160555	;--	横からメタルクウラが来る→殴る
SP_04=	160556	;--	横からメタルクウラが来る→殴る
SP_05=	160558	;--	画面手前から奥に追いかけていく
SP_06=	160559	;--	画面手前から奥に追いかけていく
SP_07=	160560	;--	画面横から蹴り込む
SP_08=	160561	;--	画面横から蹴り込む
SP_09=	160563	;--	メタルクウラの衝撃波の構え（アップ）
SP_10=	160565	;--	敵を衝撃破で飛ばす
SP_11=	160566	;--	敵を衝撃破で飛ばす
SP_12=	160568	;--	敵が岩に激突し通り抜ける
SP_13=	160569	;--	敵が岩に激突し通り抜ける
SP_14=	160571	;--	敵が通り抜けた所を先回りしたメタルクウラが蹴り上げる
SP_15=	160572	;--	敵が通り抜けた所を先回りしたメタルクウラが蹴り上げる
SP_16=	160574	;--	敵が回転しながら空へ飛んでいく
SP_17=	160575	;--	俯瞰でメタルクウラが画面に向かって追撃しに飛ぶ
SP_18=	160576	;--	敵の足をつかむ
SP_19=	160577	;--	敵の足をつかむ
SP_20=	160579	;--	メタルクウラが敵を掴みながら空から落ちてくる
SP_21=	160580	;--	メタルクウラが敵を掴みながら空から落ちてくる
SP_22=	160581	;--	敵を崖に叩きつける
SP_23=	160582	;--	敵を崖に叩きつける

--エフェクト(敵)
SP_01x=	160552	;--	メタルクウラが正面から歩いてくる	
SP_02x=	160554	;--	横向きで走っている	(敵)
SP_03x=	160557	;--	横からメタルクウラが来る→殴る	(敵)
SP_04x=	160556	;--	横からメタルクウラが来る→殴る	
SP_05x=	160558	;--	画面手前から奥に追いかけていく	
SP_06x=	160559	;--	画面手前から奥に追いかけていく	
SP_07x=	160562	;--	画面横から蹴り込む	(敵)
SP_08x=	160561	;--	画面横から蹴り込む	
SP_09x=	160564	;--	メタルクウラの衝撃波の構え（アップ）	(敵)
SP_10x=	160567	;--	敵を衝撃破で飛ばす	(敵)
SP_11x=	160566	;--	敵を衝撃破で飛ばす	
SP_12x=	160570	;--	敵が岩に激突し通り抜ける	(敵)
SP_13x=	160569	;--	敵が岩に激突し通り抜ける	
SP_14x=	160573	;--	敵が通り抜けた所を先回りしたメタルクウラが蹴り上げる	
SP_15x=	160572	;--	敵が通り抜けた所を先回りしたメタルクウラが蹴り上げる	
SP_16x=	160574	;--	敵が回転しながら空へ飛んでいく	
SP_17x=	160575	;--	俯瞰でメタルクウラが画面に向かって追撃しに飛ぶ	
SP_18x=	160578	;--	敵の足をつかむ		(敵)
SP_19x=	160577	;--	敵の足をつかむ	
SP_20x=	160579	;--	メタルクウラが敵を掴みながら空から落ちてくる	
SP_21x=	160580	;--	メタルクウラが敵を掴みながら空から落ちてくる	
SP_22x=	160581	;--	敵を崖に叩きつける	
SP_23x=	160582	;--	敵を崖に叩きつける	

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
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_13 = 106 + 66 + 94 + 28 + 116 + 40 + 64 + 56 + 116 + 72 + 40 + 52 + 32;

        skipFrame(0, spep_13 + 2 -1);  -- スキップ先フレーム指定
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        SE050 = playSeVer2( spep_13 + 2+3, 1116, "",spep_13 + 58, 0, 22, -1);
        setSeVolumeByWorkId( spep_13 + 2+3, SE050, 119 );


    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--セリフカットイン〜画面手前ダッシュ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
woke = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, woke, 0, 0, 0 );
setEffMoveKey( spep_0 + 106, woke, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, woke, 1.0, 1.0 );
setEffScaleKey( spep_0 + 106, woke, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, woke, 0 );
setEffRotateKey( spep_0 + 106, woke, 0 );
setEffAlphaKey( spep_0 + 0, woke, 255 );
setEffAlphaKey( spep_0 + 104, woke, 255 );
setEffAlphaKey( spep_0 + 105, woke, 255 );
setEffAlphaKey( spep_0 + 106, woke, 0 );

--SE
--走ってくる
SE001 = playSeVer2( spep_0 + 8, 44, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 8, SE001, 66 );
SE002 = playSeVer2( spep_0 + 14, 1383, "", 0, 0, 0, 0.6);
SE004 = playSeVer2( spep_0 + 32, 1383, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 32, SE004, 84 );
SE005 = playSeVer2( spep_0 + 50, 1383, "", 0, 0, 0, 0.6);
SE006 = playSeVer2( spep_0 + 64, 1383, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 64, SE006, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    
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

--顔カットインのタイミング指定
spep_x=spep_0 +14;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

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
--走ってくる
SE007 = playSeVer2( spep_0 + 76, 1383, "", 0, 0, 0, 0.6);
SE008 = playSeVer2( spep_0 + 90, 1383, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 90, SE008, 80 );

--顔カットイン
SE003 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 +100 , 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade

--次の準備
spep_1 = spep_0+106;
------------------------------------------------------
--横向きで走っている
------------------------------------------------------
-- ** エフェクト等 ** --
woke2 = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, woke2, 0, 0, 0 );
setEffMoveKey( spep_1 + 66, woke2, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, woke2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 66, woke2, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, woke2, 0 );
setEffRotateKey( spep_1 + 66, woke2, 0 );
setEffAlphaKey( spep_1 + 0, woke2, 255 );
setEffAlphaKey( spep_1 + 66, woke2, 255 );

--SE
--横向きダッシュ
SE009 = playSeVer2( spep_1 + 0, 8, "",spep_1 + 78, 0, 14, -1);
SE010 = playSeVer2( spep_1 + 0, 1278, "",spep_1 + 78, 0, 14, -1);
SE011 = playSeVer2( spep_1 + 0, 1182, "",spep_1 + 78, 0, 14, -1);
SE012 = playSeVer2( spep_1 + 0, 1232, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_1 +54 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_c = spep_1+66;
--------------------------------------
--カードカットイン(94F) 
--------------------------------------
-- ** カードカットイン ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
	print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_c, SE_05);
	speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_c, SE_05);
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
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_c + 94;

------------------------------------------------------
--横からメタルクウラが来る→殴る
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 28, panting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 28, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_f, 0 );
setEffRotateKey( spep_3 + 28, panting_f, 0 );
setEffAlphaKey( spep_3 + 0, panting_f, 255 );
setEffAlphaKey( spep_3 + 36, panting_f, 255 );
setEffAlphaKey( spep_3 + 27, panting_f, 255 );
setEffAlphaKey( spep_3 + 28, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 28, panting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 28, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_b, 0 );
setEffRotateKey( spep_3 + 28, panting_b, 0 );
setEffAlphaKey( spep_3 + 0, panting_b, 255 );
setEffAlphaKey( spep_3 + 36, panting_b, 255 );
setEffAlphaKey( spep_3 + 27, panting_b, 255 );
setEffAlphaKey( spep_3 + 28, panting_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 30, 1, 0 );

changeAnime( spep_3 + 0, 1, 111 );
changeAnime( spep_3 + 1, 1, 111 );
changeAnime( spep_3 + 2, 1, 111 );
changeAnime( spep_3 + 3, 1, 111 );
changeAnime( spep_3 + 4, 1, 111 );
changeAnime( spep_3 + 5, 1, 111 );
changeAnime( spep_3 + 6, 1, 111 );
changeAnime( spep_3-3 + 10, 1, 106 );

--setMoveKey( spep_3 + 0, 1, 553.4, -69.1 , 0 );
setMoveKey( spep_3 + 0, 1, 339.6, -69.1 , 0 );
setMoveKey( spep_3-3 + 4, 1, 125.8, -69.1 , 0 );
setMoveKey( spep_3-3 + 6, 1, 105.8, -69.1 , 0 );
setMoveKey( spep_3-3 + 9, 1, 85.8, -69.1 , 0 );
setMoveKey( spep_3-3 + 10, 1, -70.4, -62.4 , 0 );
setMoveKey( spep_3-3 + 12, 1, 6.3, -53.4 , 0 );
setMoveKey( spep_3-3 + 14, 1, 64, -63.2 , 0 );
setMoveKey( spep_3-3 + 16, 1, 155.1, -68.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 229.4, -57.4 , 0 );
setMoveKey( spep_3-3 + 20, 1, 314.1, -68.1 , 0 );
setMoveKey( spep_3-3 + 22, 1, 402, -65.1 , 0 );
setMoveKey( spep_3-3 + 24, 1, 489.9, -62.2 , 0 );
setMoveKey( spep_3-3 + 26, 1, 573.3, -61.7 , 0 );
setMoveKey( spep_3-3 + 28, 1, 656.7, -61.3 , 0 );
setMoveKey( spep_3-3 + 30, 1, 741.7, -61.3 , 0 );
--setMoveKey( spep_3-3 + 32, 1, 826.6, -61.3 , 0 );

setScaleKey( spep_3 + 0, 1, 2, 2 );
setScaleKey( spep_3-3 + 30, 1, 2, 2 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 30, 1, 0 );

--SE
--殴り飛ばし
SE014 = playSeVer2( spep_3 + 0, 1003, "", 0, 0, 0, -1);	
SE015 = playSeVer2( spep_3 + 8, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 8, SE015, 89 );
SE016 = playSeVer2( spep_3 + 8, 1180, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 8, SE016, 77 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 34, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_4 = spep_3 + 28;
------------------------------------------------------
--画面手前から奥に追いかけていく
------------------------------------------------------
-- ** エフェクト等 ** --
chase_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, chase_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, chase_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, chase_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, chase_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, chase_f, 0 );
setEffRotateKey( spep_4 + 116, chase_f, 0 );
setEffAlphaKey( spep_4 + 0, chase_f, 255 );
setEffAlphaKey( spep_4 + 114, chase_f, 255 );
setEffAlphaKey( spep_4 + 115, chase_f, 255 );
setEffAlphaKey( spep_4 + 116, chase_f, 0 );

-- ** エフェクト等 ** --
chase_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, chase_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, chase_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, chase_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, chase_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, chase_b, 0 );
setEffRotateKey( spep_4 + 116, chase_b, 0 );
setEffAlphaKey( spep_4 + 0, chase_b, 255 );
setEffAlphaKey( spep_4 + 114, chase_b, 255 );
setEffAlphaKey( spep_4 + 115, chase_b, 255 );
setEffAlphaKey( spep_4 + 116, chase_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 5 );

setMoveKey( spep_4 + 0, 1, 738.2, 1.4 , 0 );
setMoveKey( spep_4 + 4, 1, 738.2, 1.4 , 0 );
setMoveKey( spep_4 + 6, 1, 247.6, -31 , 0 );
setMoveKey( spep_4 + 8, 1, 48.6, -43.7 , 0 );
setMoveKey( spep_4 + 10, 1, 48.6, -43.7 , 0 );
setMoveKey( spep_4 + 12, 1, 43.2, -43.1 , 0 );
setMoveKey( spep_4 + 14, 1, 43.2, -43.1 , 0 );
setMoveKey( spep_4 + 16, 1, 38, -42.3 , 0 );
setMoveKey( spep_4 + 18, 1, 38, -42.3 , 0 );
setMoveKey( spep_4 + 20, 1, 33, -41.4 , 0 );
setMoveKey( spep_4 + 22, 1, 33, -41.4 , 0 );
setMoveKey( spep_4 + 24, 1, 28.1, -40.3 , 0 );
setMoveKey( spep_4 + 26, 1, 37.1, -31.3 , 0 );
setMoveKey( spep_4 + 28, 1, 27.2, -41.2 , 0 );
setMoveKey( spep_4 + 30, 1, 26.4, -44.1 , 0 );
setMoveKey( spep_4 + 32, 1, 13.5, -32.7 , 0 );
setMoveKey( spep_4 + 34, 1, 12.8, -43 , 0 );
setMoveKey( spep_4 + 36, 1, 15.1, -39.7 , 0 );
setMoveKey( spep_4 + 38, 1, 17.5, -36.5 , 0 );
setMoveKey( spep_4 + 40, 1, 15.4, -35.6 , 0 );
setMoveKey( spep_4 + 42, 1, 13.3, -34.8 , 0 );
setMoveKey( spep_4 + 44, 1, 14.2, -35 , 0 );
setMoveKey( spep_4 + 46, 1, 15.1, -35.2 , 0 );
setMoveKey( spep_4 + 48, 1, 17.1, -34.2 , 0 );
setMoveKey( spep_4 + 50, 1, 19.2, -33.2 , 0 );
setMoveKey( spep_4 + 52, 1, 17, -36.6 , 0 );
setMoveKey( spep_4 + 54, 1, 14.8, -39.9 , 0 );
setMoveKey( spep_4 + 56, 1, 18, -44.3 , 0 );
setMoveKey( spep_4 + 58, 1, 21.1, -48.7 , 0 );
setMoveKey( spep_4 + 60, 1, 18.9, -46.6 , 0 );
setMoveKey( spep_4 + 62, 1, 16.7, -44.6 , 0 );
setMoveKey( spep_4 + 64, 1, 14.5, -48 , 0 );
setMoveKey( spep_4 + 66, 1, 12.3, -51.3 , 0 );
setMoveKey( spep_4 + 68, 1, 12.2, -52.5 , 0 );
setMoveKey( spep_4 + 70, 1, 12.1, -53.7 , 0 );
setMoveKey( spep_4 + 72, 1, 12.1, -54.8 , 0 );
setMoveKey( spep_4 + 74, 1, 12, -56 , 0 );
setMoveKey( spep_4 + 76, 1, 11.9, -57.2 , 0 );
setMoveKey( spep_4 + 78, 1, 11.9, -58.4 , 0 );
setMoveKey( spep_4 + 80, 1, 11.8, -59.6 , 0 );
setMoveKey( spep_4 + 82, 1, 11.7, -60.8 , 0 );
setMoveKey( spep_4 + 84, 1, 11.6, -61.9 , 0 );
setMoveKey( spep_4 + 86, 1, 11.6, -63.1 , 0 );
setMoveKey( spep_4 + 88, 1, 11.5, -64.3 , 0 );
setMoveKey( spep_4 + 90, 1, 11.4, -65.5 , 0 );
setMoveKey( spep_4 + 92, 1, 11.3, -66.7 , 0 );
setMoveKey( spep_4 + 94, 1, 11.3, -67.9 , 0 );
setMoveKey( spep_4 + 96, 1, 11.2, -69.1 , 0 );
setMoveKey( spep_4 + 98, 1, 11.1, -70.3 , 0 );
setMoveKey( spep_4 + 100, 1, 11, -71.4 , 0 );
setMoveKey( spep_4 + 102, 1, 10.9, -72.6 , 0 );
setMoveKey( spep_4 + 104, 1, 10.8, -73.8 , 0 );
setMoveKey( spep_4 + 106, 1, 10.8, -75 , 0 );
setMoveKey( spep_4 + 108, 1, 10.7, -76.2 , 0 );
setMoveKey( spep_4 + 110, 1, 10.6, -77.4 , 0 );
setMoveKey( spep_4 + 112, 1, 10.5, -78.6 , 0 );
setMoveKey( spep_4 + 114, 1, 10.4, -79.8 , 0 );
setMoveKey( spep_4-1 + 116, 1, 10.3, -81 , 0 );

setScaleKey( spep_4 + 0, 1, 34.45, 34.45 );
setScaleKey( spep_4 + 4, 1, 34.45, 34.45 );
setScaleKey( spep_4 + 6, 1, 11.45, 11.45 );
setScaleKey( spep_4 + 8, 1, 2.15, 2.15 );
setScaleKey( spep_4 + 10, 1, 2.15, 2.15 );
setScaleKey( spep_4 + 12, 1, 1.94, 1.94 );
setScaleKey( spep_4 + 14, 1, 1.94, 1.94 );
setScaleKey( spep_4 + 16, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 18, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 20, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 22, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 24, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 28, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 30, 1, 0.98, 0.98 );
setScaleKey( spep_4 + 32, 1, 0.87, 0.87 );
setScaleKey( spep_4 + 34, 1, 0.84, 0.84 );
setScaleKey( spep_4 + 36, 1, 0.81, 0.81 );
setScaleKey( spep_4 + 38, 1, 0.78, 0.78 );
setScaleKey( spep_4 + 40, 1, 0.75, 0.75 );
setScaleKey( spep_4 + 42, 1, 0.72, 0.72 );
setScaleKey( spep_4 + 44, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 46, 1, 0.65, 0.65 );
setScaleKey( spep_4 + 48, 1, 0.65, 0.65 );
setScaleKey( spep_4 + 50, 1, 0.64, 0.64 );
setScaleKey( spep_4 + 54, 1, 0.64, 0.64 );
setScaleKey( spep_4 + 56, 1, 0.63, 0.63 );
setScaleKey( spep_4 + 58, 1, 0.63, 0.63 );
setScaleKey( spep_4 + 60, 1, 0.62, 0.62 );
setScaleKey( spep_4 + 62, 1, 0.62, 0.62 );
setScaleKey( spep_4 + 64, 1, 0.61, 0.61 );
setScaleKey( spep_4 + 68, 1, 0.61, 0.61 );
setScaleKey( spep_4 + 70, 1, 0.6, 0.6 );
setScaleKey( spep_4 + 72, 1, 0.6, 0.6 );
setScaleKey( spep_4 + 74, 1, 0.59, 0.59 );
setScaleKey( spep_4 + 76, 1, 0.59, 0.59 );
setScaleKey( spep_4 + 78, 1, 0.58, 0.58 );
setScaleKey( spep_4 + 82, 1, 0.58, 0.58 );
setScaleKey( spep_4 + 84, 1, 0.57, 0.57 );
setScaleKey( spep_4 + 86, 1, 0.57, 0.57 );
setScaleKey( spep_4 + 88, 1, 0.56, 0.56 );
setScaleKey( spep_4 + 90, 1, 0.56, 0.56 );
setScaleKey( spep_4 + 92, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 94, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 96, 1, 0.54, 0.54 );
setScaleKey( spep_4 + 100, 1, 0.54, 0.54 );
setScaleKey( spep_4 + 102, 1, 0.53, 0.53 );
setScaleKey( spep_4 + 104, 1, 0.53, 0.53 );
setScaleKey( spep_4 + 106, 1, 0.52, 0.52 );
setScaleKey( spep_4 + 108, 1, 0.52, 0.52 );
setScaleKey( spep_4 + 110, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 114, 1, 0.51, 0.51 );
setScaleKey( spep_4-1 + 116, 1, 0.5, 0.5 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 6, 1, 0 );
setRotateKey( spep_4 + 8, 1, 0.7 );
setRotateKey( spep_4 + 10, 1, 0.7 );
setRotateKey( spep_4 + 12, 1, 2 );
setRotateKey( spep_4 + 14, 1, 2 );
setRotateKey( spep_4 + 16, 1, 3.3 );
setRotateKey( spep_4 + 18, 1, 3.3 );
setRotateKey( spep_4 + 20, 1, 4.7 );
setRotateKey( spep_4 + 22, 1, 4.7 );
setRotateKey( spep_4 + 24, 1, 6 );
setRotateKey( spep_4 + 28, 1, 6 );
setRotateKey( spep_4 + 30, 1, 8 );
setRotateKey( spep_4 + 32, 1, 8.6 );
setRotateKey( spep_4 + 34, 1, 8.8 );
setRotateKey( spep_4 + 36, 1, 8.9 );
setRotateKey( spep_4 + 38, 1, 9 );
setRotateKey( spep_4 + 40, 1, 9.2 );
setRotateKey( spep_4 + 42, 1, 9.3 );
setRotateKey( spep_4 + 44, 1, 9.5 );
setRotateKey( spep_4 + 46, 1, 9.6 );
setRotateKey( spep_4 + 48, 1, 9.3 );
setRotateKey( spep_4 + 50, 1, 9.1 );
setRotateKey( spep_4 + 52, 1, 8.8 );
setRotateKey( spep_4 + 54, 1, 8.5 );
setRotateKey( spep_4 + 56, 1, 8.3 );
setRotateKey( spep_4 + 58, 1, 8 );
setRotateKey( spep_4 + 60, 1, 7.7 );
setRotateKey( spep_4 + 62, 1, 7.5 );
setRotateKey( spep_4 + 64, 1, 7.2 );
setRotateKey( spep_4 + 66, 1, 6.9 );
setRotateKey( spep_4 + 68, 1, 6.7 );
setRotateKey( spep_4 + 70, 1, 6.4 );
setRotateKey( spep_4 + 72, 1, 6.1 );
setRotateKey( spep_4 + 74, 1, 5.9 );
setRotateKey( spep_4 + 76, 1, 5.6 );
setRotateKey( spep_4 + 78, 1, 5.3 );
setRotateKey( spep_4 + 80, 1, 5.1 );
setRotateKey( spep_4 + 82, 1, 4.8 );
setRotateKey( spep_4 + 84, 1, 4.5 );
setRotateKey( spep_4 + 86, 1, 4.3 );
setRotateKey( spep_4 + 88, 1, 4 );
setRotateKey( spep_4 + 90, 1, 3.7 );
setRotateKey( spep_4 + 92, 1, 3.5 );
setRotateKey( spep_4 + 94, 1, 3.2 );
setRotateKey( spep_4 + 96, 1, 2.9 );
setRotateKey( spep_4 + 98, 1, 2.7 );
setRotateKey( spep_4 + 100, 1, 2.4 );
setRotateKey( spep_4 + 102, 1, 2.1 );
setRotateKey( spep_4 + 104, 1, 1.9 );
setRotateKey( spep_4 + 106, 1, 1.6 );
setRotateKey( spep_4 + 108, 1, 1.3 );
setRotateKey( spep_4 + 110, 1, 1.1 );
setRotateKey( spep_4 + 112, 1, 0.8 );
setRotateKey( spep_4 + 114, 1, 0.5 );
setRotateKey( spep_4-1 + 116, 1, 0.3 );

--SE
--敵飛んでいく
SE017 = playSeVer2( spep_4 + 0, 1121, "",spep_4 + 158, 0, 8, -1);

--敵追いかける
SE018 = playSeVer2( spep_4 + 48, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_4 + 48, 1383, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 48, 1117, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5 = spep_4 + 116;
------------------------------------------------------
--画面横から蹴り込む
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 40, kick_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 40, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_f, 0 );
setEffRotateKey( spep_5 + 40, kick_f, 0 );
setEffAlphaKey( spep_5 + 0, kick_f, 255 );
setEffAlphaKey( spep_5 + 38, kick_f, 255 );
setEffAlphaKey( spep_5 + 39, kick_f, 255 );
setEffAlphaKey( spep_5 + 40, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 40, kick_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 40, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_b, 0 );
setEffRotateKey( spep_5 + 40, kick_b, 0 );
setEffAlphaKey( spep_5 + 0, kick_b, 255 );
setEffAlphaKey( spep_5 + 38, kick_b, 255 );
setEffAlphaKey( spep_5 + 39, kick_b, 255 );
setEffAlphaKey( spep_5 + 40, kick_b, 0 );

--敵の動き
setDisp( spep_5-3 + 44, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5-3 + 26, 1, 6 );

setMoveKey( spep_5 + 0, 1, 61.9, -3.2 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 60, -2.2 , 0 );
setMoveKey( spep_5-3 + 4, 1, 58.1, -1.3 , 0 );
setMoveKey( spep_5-3 + 6, 1, 56.2, -0.3 , 0 );
setMoveKey( spep_5-3 + 8, 1, 54.3, 0.6 , 0 );
setMoveKey( spep_5-3 + 10, 1, 52.4, 1.6 , 0 );
setMoveKey( spep_5-3 + 12, 1, 50.5, 2.5 , 0 );
setMoveKey( spep_5-3 + 14, 1, 48.6, 3.5 , 0 );
setMoveKey( spep_5-3 + 16, 1, 46.7, 4.4 , 0 );
setMoveKey( spep_5-3 + 18, 1, 44.8, 5.4 , 0 );
setMoveKey( spep_5-3 + 20, 1, 42.9, 6.3 , 0 );
setMoveKey( spep_5-3 + 22, 1, 41, 7.3 , 0 );
setMoveKey( spep_5-3 + 25, 1, 39.1, 8.2 , 0 );
setMoveKey( spep_5-3 + 26, 1, 122.3, 9.1 , 0 );
setMoveKey( spep_5-3 + 28, 1, 197.4, 38.1 , 0 );
setMoveKey( spep_5-3 + 30, 1, 124.4, -51.4 , 0 );
setMoveKey( spep_5-3 + 32, 1, 267, -23.7 , 0 );
setMoveKey( spep_5-3 + 34, 1, 311.5, 14 , 0 );
setMoveKey( spep_5-3 + 36, 1, 390.9, -23.7 , 0 );
setMoveKey( spep_5-3 + 38, 1, 483.3, -13.4 , 0 );
setMoveKey( spep_5-3 + 40, 1, 575.6, -3.1 , 0 );
setMoveKey( spep_5-3 + 42, 1, 657.7, -3.1 , 0 );
setMoveKey( spep_5-3 + 44, 1, 739.8, -3.1 , 0 );

setScaleKey( spep_5 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 44, 1, 1.5, 1.5 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-3 + 25, 1, 0 );
setRotateKey( spep_5-3 + 26, 1, 46.7 );
setRotateKey( spep_5-3 + 44, 1, 46.7 );

--SE
--蹴り飛ばし
SE021 = playSeVer2( spep_5 + 16, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_5 + 24, 1153, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_5 + 24, 1187, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_6 = spep_5 + 40;
------------------------------------------------------
--メタルクウラの衝撃波の構え（アップ）
------------------------------------------------------
-- ** エフェクト等 ** --
impact = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, impact, 0, 0, 0 );
setEffMoveKey( spep_6 + 64, impact, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, impact, 1.0, 1.0 );
setEffScaleKey( spep_6 + 64, impact, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, impact, 0 );
setEffRotateKey( spep_6 + 64, impact, 0 );
setEffAlphaKey( spep_6 + 0, impact, 255 );
setEffAlphaKey( spep_6 + 62, impact, 255 );
setEffAlphaKey( spep_6 + 63, impact, 255 );
setEffAlphaKey( spep_6 + 64, impact, 0 );

--SE
--腕前に持ってくる
SE024 = playSeVer2( spep_6 + 10, 1003, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_6 + 10, 1150, "",spep_6 + 30, 0, 8, -1);
setSeVolumeByWorkId( spep_6 + 10, SE025, 76 );

--腕前に突き出す
SE027 = playSeVer2( spep_6 + 46, 1383, "", 0, 4, 0, -1);
setStartTimeMs( SE027,  83 );
SE028 = playSeVer2( spep_6 + 48, 1012, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_7 = spep_6 + 64;
------------------------------------------------------
--敵を衝撃破で飛ばす
------------------------------------------------------
-- ** エフェクト等 ** --
fly_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, fly_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 56, fly_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, fly_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 56, fly_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, fly_f, 0 );
setEffRotateKey( spep_7 + 56, fly_f, 0 );
setEffAlphaKey( spep_7 + 0, fly_f, 255 );
setEffAlphaKey( spep_7 + 54, fly_f, 255 );
setEffAlphaKey( spep_7 + 55, fly_f, 255 );
setEffAlphaKey( spep_7 + 56, fly_f, 0 );

-- ** エフェクト等 ** --
fly_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, fly_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 56, fly_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, fly_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 56, fly_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, fly_b, 0 );
setEffRotateKey( spep_7 + 56, fly_b, 0 );
setEffAlphaKey( spep_7 + 0, fly_b, 255 );
setEffAlphaKey( spep_7 + 54, fly_b, 255 );
setEffAlphaKey( spep_7 + 55, fly_b, 255 );
setEffAlphaKey( spep_7 + 56, fly_b, 0 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7-3 + 58, 1, 0 );

changeAnime( spep_7 + 0, 1, 106 );
changeAnime( spep_7-3 + 12, 1, 108 );

setMoveKey( spep_7 + 0, 1, -150.5, 13.2 , 0 );
--setMoveKey( spep_7-3 + 2, 1, -150.5, 13.2 , 0 );
setMoveKey( spep_7-3 + 4, 1, -101.2, 13.2 , 0 );
setMoveKey( spep_7-3 + 6, 1, -101.2, 13.2 , 0 );
setMoveKey( spep_7-3 + 8, 1, -51.9, 13.2 , 0 );
setMoveKey( spep_7-3 + 11, 1, -51.9, 13.2 , 0 );
setMoveKey( spep_7-3 + 12, 1, 25, 53 , 0 );
setMoveKey( spep_7-3 + 14, 1, -13.5, -29.1 , 0 );
setMoveKey( spep_7-3 + 16, 1, 0, 55.6 , 0 );
setMoveKey( spep_7-3 + 18, 1, 43.6, 53 , 0 );
setMoveKey( spep_7-3 + 20, 1, -25.9, -29.1 , 0 );
setMoveKey( spep_7-3 + 22, 1, 68.1, -23.4 , 0 );
setMoveKey( spep_7-3 + 24, 1, 2.1, 40 , 0 );
setMoveKey( spep_7-3 + 26, 1, 27.5, -22.1 , 0 );
setMoveKey( spep_7-3 + 28, 1, 44.2, -4.4 , 0 );
setMoveKey( spep_7-3 + 30, 1, 54.4, 13.3 , 0 );
setMoveKey( spep_7-3 + 32, 1, 55.3, 17.8 , 0 );
setMoveKey( spep_7-3 + 34, 1, 49.8, 22.2 , 0 );
setMoveKey( spep_7-3 + 36, 1, 61.7, 17.7 , 0 );
setMoveKey( spep_7-3 + 38, 1, 67.1, 13.2 , 0 );
setMoveKey( spep_7-3 + 40, 1, 77.6, 17.3 , 0 );
setMoveKey( spep_7-3 + 42, 1, 81.8, 21.5 , 0 );
setMoveKey( spep_7-3 + 44, 1, 84, 17.3 , 0 );
setMoveKey( spep_7-3 + 46, 1, 83.1, 13.2 , 0 );
setMoveKey( spep_7-3 + 48, 1, 174.7, 8 , 0 );
setMoveKey( spep_7-3 + 50, 1, 179.9, 2.8 , 0 );
setMoveKey( spep_7-3 + 52, 1, 174.8, 12 , 0 );
setMoveKey( spep_7-3 + 54, 1, 256, 21.2 , 0 );
setMoveKey( spep_7-3 + 56, 1, 428, 17.1 , 0 );
setMoveKey( spep_7-3 + 58, 1, 686.5, 13 , 0 );
--setMoveKey( spep_7-3 + 60, 1, 685.7, 8.9 , 0 );

setScaleKey( spep_7 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_7-3 + 58, 1, 1.5, 1.5 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7-3 + 58, 1, 0 );

--SE
--空気暖ヒット
SE029 = playSeVer2( spep_7 + 0, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 0, SE029, 65 );
SE030 = playSeVer2( spep_7 + 4, 1133, "",spep_7 + 82, 0, 14, 0.6);
setPitch( spep_7 + 4, SE030, -100 );
setTimeStretch( SE030, 0.93, 30, 4 );
SE031 = playSeVer2( spep_7 + 4, 1183, "",spep_7 + 82, 0, 14, -1);
SE026 = playSeVer2( spep_7 + 12, 1121, "",spep_7 + 18, 0, 0, -1);
setStartTimeMs( SE026,  833 );
setPitch( spep_7 + 12, SE026, 100 );
setTimeStretch( SE026, 1.07, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_8 = spep_7 + 56;
------------------------------------------------------
--敵が岩に激突し通り抜ける
------------------------------------------------------
-- ** エフェクト等 ** --
clash_f = entryEffect( spep_8 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, clash_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 116, clash_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, clash_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 116, clash_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, clash_f, 0 );
setEffRotateKey( spep_8 + 116, clash_f, 0 );
setEffAlphaKey( spep_8 + 0, clash_f, 255 );
setEffAlphaKey( spep_8 + 114, clash_f, 255 );
setEffAlphaKey( spep_8 + 115, clash_f, 255 );
setEffAlphaKey( spep_8 + 116, clash_f, 0 );

-- ** エフェクト等 ** --
clash_b = entryEffect( spep_8 + 0, SP_13, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, clash_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 116, clash_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, clash_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 116, clash_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, clash_b, 0 );
setEffRotateKey( spep_8 + 116, clash_b, 0 );
setEffAlphaKey( spep_8 + 0, clash_b, 255 );
setEffAlphaKey( spep_8 + 114, clash_b, 255 );
setEffAlphaKey( spep_8 + 115, clash_b, 255 );
setEffAlphaKey( spep_8 + 116, clash_b, 0 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8-3 + 12, 1, 0 );

changeAnime( spep_8 + 0, 1, 106 );

setMoveKey( spep_8 + 0, 1, -455.7, -81.8 , 0 );
--setMoveKey( spep_8 + 2, 1, -378.4, -81.8 , 0 );
setMoveKey( spep_8-3 + 4, 1, -301, -81.8 , 0 );
setMoveKey( spep_8-3 + 6, 1, -223.7, -81.8 , 0 );
setMoveKey( spep_8-3 + 8, 1, -146.3, -81.8 , 0 );
setMoveKey( spep_8-3 + 10, 1, -69, -81.8 , 0 );
setMoveKey( spep_8-3 + 12, 1, 8.4, -81.8 , 0 );

setScaleKey( spep_8 + 0, 1, 0.17, 0.17 );
setScaleKey( spep_8-3 + 12, 1, 0.17, 0.17 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8-3 + 12, 1, 0 );

--敵の動き
setDisp( spep_8-3 + 68, 1, 1 );

changeAnime( spep_8-3 + 68, 1, 106 );

setMoveKey( spep_8-3 + 68, 1, -140.9, -88.8 , 0 );
setMoveKey( spep_8-3 + 70, 1, -116.4, -88.8 , 0 );
setMoveKey( spep_8-3 + 72, 1, -126.2, -76.6 , 0 );
setMoveKey( spep_8-3 + 74, 1, -74.2, -62.9 , 0 );
setMoveKey( spep_8-3 + 76, 1, -56.5, -83.6 , 0 );
setMoveKey( spep_8-3 + 78, 1, -18.5, -81.6 , 0 );
setMoveKey( spep_8-3 + 80, 1, 19.4, -79.6 , 0 );
setMoveKey( spep_8-3 + 82, 1, 17.5, -76.5 , 0 );
setMoveKey( spep_8-3 + 84, 1, 15.7, -73.5 , 0 );
setMoveKey( spep_8-3 + 86, 1, 54.3, -69.6 , 0 );
setMoveKey( spep_8-3 + 88, 1, 73.3, -65.8 , 0 );
setMoveKey( spep_8-3 + 90, 1, 92.2, -62 , 0 );
setMoveKey( spep_8-3 + 92, 1, 108.8, -63.1 , 0 );
setMoveKey( spep_8-3 + 94, 1, 111.8, -64.1 , 0 );
setMoveKey( spep_8-3 + 96, 1, 114.8, -65.2 , 0 );
setMoveKey( spep_8-3 + 98, 1, 117.8, -66.3 , 0 );
setMoveKey( spep_8-3 + 100, 1, 118.8, -67 , 0 );
setMoveKey( spep_8-3 + 102, 1, 119.7, -67.6 , 0 );
setMoveKey( spep_8-3 + 104, 1, 120.7, -68.3 , 0 );
setMoveKey( spep_8-3 + 106, 1, 121.6, -68.9 , 0 );
setMoveKey( spep_8-3 + 108, 1, 124.1, -69 , 0 );
setMoveKey( spep_8-3 + 110, 1, 126.5, -69 , 0 );
setMoveKey( spep_8-3 + 112, 1, 128.9, -69 , 0 );
setMoveKey( spep_8-3 + 114, 1, 131.4, -69 , 0 );
setMoveKey( spep_8-3 + 116, 1, 133.8, -69 , 0 );
setMoveKey( spep_8-3 + 118, 1, 136.2, -69 , 0 );

setScaleKey( spep_8-3 + 68, 1, 0.17, 0.17 );
setScaleKey( spep_8-3 + 74, 1, 0.17, 0.17 );
setScaleKey( spep_8-3 + 76, 1, 0.16, 0.16 );
setScaleKey( spep_8-3 + 80, 1, 0.16, 0.16 );
setScaleKey( spep_8-3 + 82, 1, 0.15, 0.15 );
setScaleKey( spep_8-3 + 86, 1, 0.15, 0.15 );
setScaleKey( spep_8-3 + 88, 1, 0.14, 0.14 );
setScaleKey( spep_8-3 + 94, 1, 0.14, 0.14 );
setScaleKey( spep_8-3 + 96, 1, 0.13, 0.13 );
setScaleKey( spep_8-3 + 100, 1, 0.13, 0.13 );
setScaleKey( spep_8-3 + 102, 1, 0.12, 0.12 );
setScaleKey( spep_8-3 + 106, 1, 0.12, 0.12 );
setScaleKey( spep_8-3 + 108, 1, 0.11, 0.11 );
setScaleKey( spep_8-3 + 112, 1, 0.11, 0.11 );
setScaleKey( spep_8-3 + 114, 1, 0.1, 0.1 );
setScaleKey( spep_8-3 + 118, 1, 0.1, 0.1 );

setRotateKey( spep_8-3 + 68, 1, 0 );
setRotateKey( spep_8-3 + 72, 1, 0 );
setRotateKey( spep_8-3 + 74, 1, 0.8 );
setRotateKey( spep_8-3 + 76, 1, 1.7 );
setRotateKey( spep_8-3 + 78, 1, 2.5 );
setRotateKey( spep_8-3 + 80, 1, 3.4 );
setRotateKey( spep_8-3 + 82, 1, 4.2 );
setRotateKey( spep_8-3 + 84, 1, 5.1 );
setRotateKey( spep_8-3 + 86, 1, 5.9 );
setRotateKey( spep_8-3 + 88, 1, 6.8 );
setRotateKey( spep_8-3 + 90, 1, 7.6 );
setRotateKey( spep_8-3 + 92, 1, 8.5 );
setRotateKey( spep_8-3 + 94, 1, 9.3 );
setRotateKey( spep_8-3 + 96, 1, 10.2 );
setRotateKey( spep_8-3 + 98, 1, 11 );
setRotateKey( spep_8-3 + 100, 1, 11.9 );
setRotateKey( spep_8-3 + 102, 1, 12.7 );
setRotateKey( spep_8-3 + 104, 1, 13.5 );
setRotateKey( spep_8-3 + 106, 1, 14.4 );
setRotateKey( spep_8-3 + 108, 1, 15.2 );
setRotateKey( spep_8-3 + 110, 1, 16.1 );
setRotateKey( spep_8-3 + 112, 1, 16.9 );
setRotateKey( spep_8-3 + 114, 1, 17.8 );
setRotateKey( spep_8-3 + 116, 1, 18.6 );
setRotateKey( spep_8-3 + 118, 1, 19.5 );

--SE
--岩激突
SE032 = playSeVer2( spep_8 + 10, 1159, "",spep_8 + 166, 0, 74, -1);
SE033 = playSeVer2( spep_8 + 26, 1044, "",spep_8 + 104, 0, 24, -1);
SE034 = playSeVer2( spep_8 + 34, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 34, SE034, 82 );
SE035 = playSeVer2( spep_8 + 40, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 40, SE035, 73 );

--敵飛んでいく
SE036 = playSeVer2( spep_8 + 66, 1183, "",spep_8 + 164, 0, 12, -1);

--岩から飛び出す
SE037 = playSeVer2( spep_8 + 70, 1027, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_8 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_9 = spep_8 + 116;
------------------------------------------------------
--敵が通り抜けた所を先回りしたメタルクウラが蹴り上げる
------------------------------------------------------
-- ** エフェクト等 ** --
kick2_f = entryEffect( spep_9 + 0, SP_14, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, kick2_f, 0, 0, 0 );
setEffMoveKey( spep_9 + 72, kick2_f, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, kick2_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 72, kick2_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, kick2_f, 0 );
setEffRotateKey( spep_9 + 72, kick2_f, 0 );
setEffAlphaKey( spep_9 + 0, kick2_f, 255 );
setEffAlphaKey( spep_9 + 70, kick2_f, 255 );
setEffAlphaKey( spep_9 + 71, kick2_f, 255 );
setEffAlphaKey( spep_9 + 72, kick2_f, 0 );

-- ** エフェクト等 ** --
kick2_b = entryEffect( spep_9 + 0, SP_15, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, kick2_b, 0, 0, 0 );
setEffMoveKey( spep_9 + 72, kick2_b, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, kick2_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 72, kick2_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, kick2_b, 0 );
setEffRotateKey( spep_9 + 72, kick2_b, 0 );
setEffAlphaKey( spep_9 + 0, kick2_b, 255 );
setEffAlphaKey( spep_9 + 70, kick2_b, 255 );
setEffAlphaKey( spep_9 + 71, kick2_b, 255 );
setEffAlphaKey( spep_9 + 72, kick2_b, 0 );

--敵の動き
setDisp( spep_9-3 + 74, 1, 0 );

changeAnime( spep_9 + 0, 1, 107 );
changeAnime( spep_9-3 + 38, 1, 6 );

setMoveKey( spep_9 + 0, 1, -246.5, 358 , 0 );
--setMoveKey( spep_9-3 + 2, 1, -238.7, 355 , 0 );
setMoveKey( spep_9-3 + 4, 1, -229.2, 352 , 0 );
setMoveKey( spep_9-3 + 6, 1, -219.3, 348.8 , 0 );
setMoveKey( spep_9-3 + 8, 1, -209.2, 345.3 , 0 );
setMoveKey( spep_9-3 + 10, 1, -198.9, 341.4 , 0 );
setMoveKey( spep_9-3 + 12, 1, -186.7, 336.7 , 0 );
setMoveKey( spep_9-3 + 14, 1, -172.7, 330.3 , 0 );
setMoveKey( spep_9-3 + 16, 1, -158.3, 322.3 , 0 );
setMoveKey( spep_9-3 + 18, 1, -143.8, 314.3 , 0 );
setMoveKey( spep_9-3 + 20, 1, -129.1, 305.9 , 0 );
setMoveKey( spep_9-3 + 22, 1, -110.7, 296.8 , 0 );
setMoveKey( spep_9-3 + 24, 1, -87.9, 286.6 , 0 );
setMoveKey( spep_9-3 + 26, 1, -65, 273.9 , 0 );
setMoveKey( spep_9-3 + 28, 1, -42.3, 256.7 , 0 );
setMoveKey( spep_9-3 + 30, 1, -20, 235.4 , 0 );
setMoveKey( spep_9-3 + 32, 1, 1.8, 207.9 , 0 );
setMoveKey( spep_9-3 + 34, 1, 23.2, 168.3 , 0 );
setMoveKey( spep_9-3 + 37, 1, 50.5, 48 , 0 );
setMoveKey( spep_9-3 + 38, 1, 43.4, 45.1 , 0 );
setMoveKey( spep_9-3 + 40, 1, 43.4, 57.4 , 0 );
setMoveKey( spep_9-3 + 42, 1, 76.9, 103.1 , 0 );
setMoveKey( spep_9-3 + 44, 1, 44.7, 164.1 , 0 );
setMoveKey( spep_9-3 + 46, 1, 75.1, 287.6 , 0 );
setMoveKey( spep_9-3 + 48, 1, 21.6, 327.2 , 0 );
setMoveKey( spep_9-3 + 50, 1, 69, 416.8 , 0 );
setMoveKey( spep_9-3 + 52, 1, 19.7, 571.9 , 0 );
setMoveKey( spep_9-3 + 54, 1, 20.9, 605.8 , 0 );
setMoveKey( spep_9-3 + 56, 1, 49, 704.5 , 0 );
setMoveKey( spep_9-3 + 58, 1, 77, 803.2 , 0 );
setMoveKey( spep_9-3 + 60, 1, 59.3, 915.6 , 0 );
setMoveKey( spep_9-3 + 62, 1, 41.7, 1028 , 0 );
setMoveKey( spep_9-3 + 64, 1, 43, 1122.5 , 0 );
setMoveKey( spep_9-3 + 66, 1, 44.4, 1217 , 0 );
setMoveKey( spep_9-3 + 68, 1, 45.8, 1311.5 , 0 );
setMoveKey( spep_9-3 + 70, 1, 47.1, 1406 , 0 );
setMoveKey( spep_9-3 + 72, 1, 48.5, 1500.5 , 0 );
setMoveKey( spep_9-3 + 74, 1, 49.9, 1595 , 0 );
--setMoveKey( spep_9-3 + 76, 1, 51.2, 1689.5 , 0 );

setScaleKey( spep_9 + 0, 1, 0.13, 0.13 );
--setScaleKey( spep_9-3 + 2, 1, 0.15, 0.15 );
setScaleKey( spep_9-3 + 4, 1, 0.16, 0.16 );
setScaleKey( spep_9-3 + 6, 1, 0.18, 0.18 );
setScaleKey( spep_9-3 + 8, 1, 0.19, 0.19 );
setScaleKey( spep_9-3 + 10, 1, 0.21, 0.21 );
setScaleKey( spep_9-3 + 12, 1, 0.22, 0.22 );
setScaleKey( spep_9-3 + 14, 1, 0.24, 0.24 );
setScaleKey( spep_9-3 + 16, 1, 0.25, 0.25 );
setScaleKey( spep_9-3 + 18, 1, 0.27, 0.27 );
setScaleKey( spep_9-3 + 20, 1, 0.29, 0.29 );
setScaleKey( spep_9-3 + 22, 1, 0.31, 0.31 );
setScaleKey( spep_9-3 + 24, 1, 0.32, 0.32 );
setScaleKey( spep_9-3 + 26, 1, 0.34, 0.34 );
setScaleKey( spep_9-3 + 28, 1, 0.37, 0.37 );
setScaleKey( spep_9-3 + 30, 1, 0.41, 0.41 );
setScaleKey( spep_9-3 + 32, 1, 0.44, 0.44 );
setScaleKey( spep_9-3 + 34, 1, 0.48, 0.48 );
setScaleKey( spep_9-3 + 37, 1, 0.51, 0.51 );
setScaleKey( spep_9-3 + 38, 1, 1.51, 1.51 );
setScaleKey( spep_9-3 + 74, 1, 1.51, 1.51 );

setRotateKey( spep_9 + 0, 1, 0 );
setRotateKey( spep_9-3 + 37, 1, 0 );
setRotateKey( spep_9-3 + 38, 1, 86.7 );
setRotateKey( spep_9-3 + 74, 1, 86.7 );

--SE
--瞬間移動
SE038 = playSeVer2( spep_9 + 0, 43, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 0, SE038, 130 );
SE039 = playSeVer2( spep_9 + 0, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 0, SE039, 72 );

--蹴り上げる
SE040 = playSeVer2( spep_9 + 36, 1153, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_9 + 36, 1169, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_9 + 36, 1180, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_9 + 36, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 36, SE043, 90 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_10 = spep_9 + 72;
------------------------------------------------------
--敵が回転しながら空へ飛んでいく
------------------------------------------------------
-- ** エフェクト等 ** --
fly2 = entryEffect( spep_10 + 0, SP_16, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, fly2, 0, 0, 0 );
setEffMoveKey( spep_10 + 40, fly2, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, fly2, 1.0, 1.0 );
setEffScaleKey( spep_10 + 40, fly2, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, fly2, 0 );
setEffRotateKey( spep_10 + 40, fly2, 0 );
setEffAlphaKey( spep_10 + 0, fly2, 255 );
setEffAlphaKey( spep_10 + 38, fly2, 255 );
setEffAlphaKey( spep_10 + 39, fly2, 255 );
setEffAlphaKey( spep_10 + 40, fly2, 0 );

--敵の動き
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 + 42, 1, 0 );

changeAnime( spep_10 + 0, 1, 108 );

setMoveKey( spep_10 + 0, 1, 46.1, -179.1 , 0 );
setMoveKey( spep_10 + 2, 1, 42.1, -161 , 0 );
setMoveKey( spep_10 + 4, 1, 39.9, -145.7 , 0 );
setMoveKey( spep_10 + 6, 1, 39.9, -145.7 , 0 );
setMoveKey( spep_10 + 8, 1, 43.8, -119.9 , 0 );
setMoveKey( spep_10 + 10, 1, 69.6, -77.5 , 0 );
setMoveKey( spep_10 + 12, 1, 69.6, -77.5 , 0 );
setMoveKey( spep_10 + 14, 1, 113.9, 7.6 , 0 );
setMoveKey( spep_10 + 16, 1, 113.9, 7.6 , 0 );
setMoveKey( spep_10 + 18, 1, 148, 137.8 , 0 );
setMoveKey( spep_10 + 20, 1, 138.1, 127.9 , 0 );
setMoveKey( spep_10 + 22, 1, 140.5, 144.5 , 0 );
setMoveKey( spep_10 + 24, 1, 129.9, 155.2 , 0 );
setMoveKey( spep_10 + 26, 1, 130.4, 151.5 , 0 );
setMoveKey( spep_10 + 28, 1, 133.3, 154.5 , 0 );
setMoveKey( spep_10 + 30, 1, 139.7, 164.3 , 0 );
setMoveKey( spep_10 + 32, 1, 138.2, 164.8 , 0 );
setMoveKey( spep_10 + 34, 1, 142, 173.7 , 0 );
setMoveKey( spep_10 + 36, 1, 143.5, 173.2 , 0 );
setMoveKey( spep_10 + 38, 1, 150.6, 183.4 , 0 );
setMoveKey( spep_10 + 40, 1, 152.8, 185.6 , 0 );
setMoveKey( spep_10 + 42, 1, 157.4, 193.7 , 0 );

setScaleKey( spep_10 + 0, 1, 4.85, 4.85 );
setScaleKey( spep_10 + 2, 1, 4.63, 4.63 );
setScaleKey( spep_10 + 4, 1, 4.4, 4.4 );
setScaleKey( spep_10 + 6, 1, 4.4, 4.4 );
setScaleKey( spep_10 + 8, 1, 3.96, 3.96 );
setScaleKey( spep_10 + 10, 1, 3.3, 3.3 );
setScaleKey( spep_10 + 12, 1, 3.3, 3.3 );
setScaleKey( spep_10 + 14, 1, 2.42, 2.42 );
setScaleKey( spep_10 + 16, 1, 2.42, 2.42 );
setScaleKey( spep_10 + 18, 1, 1.31, 1.31 );
setScaleKey( spep_10 + 20, 1, 1.31, 1.31 );
setScaleKey( spep_10 + 22, 1, 1.09, 1.09 );
setScaleKey( spep_10 + 24, 1, 1.09, 1.09 );
setScaleKey( spep_10 + 26, 1, 0.97, 0.97 );
setScaleKey( spep_10 + 28, 1, 0.97, 0.97 );
setScaleKey( spep_10 + 30, 1, 0.86, 0.86 );
setScaleKey( spep_10 + 32, 1, 0.86, 0.86 );
setScaleKey( spep_10 + 34, 1, 0.75, 0.75 );
setScaleKey( spep_10 + 36, 1, 0.75, 0.75 );
setScaleKey( spep_10 + 38, 1, 0.63, 0.63 );
setScaleKey( spep_10 + 40, 1, 0.63, 0.63 );
setScaleKey( spep_10 + 42, 1, 0.58, 0.58 );

setRotateKey( spep_10 + 0, 1, 0 );
setRotateKey( spep_10 + 2, 1, -19.7 );
setRotateKey( spep_10 + 4, 1, -39.3 );
setRotateKey( spep_10 + 6, 1, -39.3 );
setRotateKey( spep_10 + 8, 1, -78.6 );
setRotateKey( spep_10 + 10, 1, -137.6 );
setRotateKey( spep_10 + 12, 1, -137.6 );
setRotateKey( spep_10 + 14, 1, -216.2 );
setRotateKey( spep_10 + 16, 1, -216.2 );
setRotateKey( spep_10 + 18, 1, -314.5 );
setRotateKey( spep_10 + 20, 1, -314.5 );
setRotateKey( spep_10 + 22, 1, -393.1 );
setRotateKey( spep_10 + 24, 1, -393.1 );
setRotateKey( spep_10 + 26, 1, -432.4 );
setRotateKey( spep_10 + 28, 1, -432.4 );
setRotateKey( spep_10 + 30, 1, -471.7 );
setRotateKey( spep_10 + 32, 1, -471.7 );
setRotateKey( spep_10 + 34, 1, -511 );
setRotateKey( spep_10 + 36, 1, -511 );
setRotateKey( spep_10 + 38, 1, -550.3 );
setRotateKey( spep_10 + 40, 1, -550.3 );
setRotateKey( spep_10 + 42, 1, -570 );

--SE
--敵飛んでいく
SE044 = playSeVer2( spep_10 + 0, 1121, "",spep_10 + 148, 0, 60, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_10 + 0, 0, 46, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_11 = spep_10 + 40;
------------------------------------------------------
--俯瞰でメタルクウラが画面に向かって追撃しに飛ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
fly3 = entryEffect( spep_11 + 0, SP_17, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, fly3, 0, 0, 0 );
setEffMoveKey( spep_11 + 52, fly3, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, fly3, 1.0, 1.0 );
setEffScaleKey( spep_11 + 52, fly3, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, fly3, 0 );
setEffRotateKey( spep_11 + 52, fly3, 0 );
setEffAlphaKey( spep_11 + 0, fly3, 255 );
setEffAlphaKey( spep_11 + 50, fly3, 255 );
setEffAlphaKey( spep_11 + 51, fly3, 255 );
setEffAlphaKey( spep_11 + 52, fly3, 0 );

--SE
--飛び上がる
SE045 = playSeVer2( spep_11 + 0, 1182, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_11 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 0, SE046, 59 );
setTimeStretch( SE046, 1.25, 30, 4 );
SE047 = playSeVer2( spep_11 + 0, 9, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_11 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_12 = spep_11 + 52;
------------------------------------------------------
--敵の足をつかむ
------------------------------------------------------
-- ** エフェクト等 ** --
catch_f = entryEffect( spep_12 + 0, SP_18, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_12 + 0, catch_f, 0, 0, 0 );
setEffMoveKey( spep_12 + 32, catch_f, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, catch_f, 1.0, 1.0 );
setEffScaleKey( spep_12 + 32, catch_f, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, catch_f, 0 );
setEffRotateKey( spep_12 + 32, catch_f, 0 );
setEffAlphaKey( spep_12 + 0, catch_f, 255 );
setEffAlphaKey( spep_12 + 30, catch_f, 255 );
setEffAlphaKey( spep_12 + 31, catch_f, 255 );
setEffAlphaKey( spep_12 + 32, catch_f, 0 );

-- ** エフェクト等 ** --
catch_b = entryEffect( spep_12 + 0, SP_19, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_12 + 0, catch_b, 0, 0, 0 );
setEffMoveKey( spep_12 + 32, catch_b, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, catch_b, 1.0, 1.0 );
setEffScaleKey( spep_12 + 32, catch_b, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, catch_b, 0 );
setEffRotateKey( spep_12 + 32, catch_b, 0 );
setEffAlphaKey( spep_12 + 0, catch_b, 255 );
setEffAlphaKey( spep_12 + 30, catch_b, 255 );
setEffAlphaKey( spep_12 + 31, catch_b, 255 );
setEffAlphaKey( spep_12 + 32, catch_b, 0 );

--敵の動き
setDisp( spep_12 + 0, 1, 1 );

changeAnime( spep_12 + 0, 1, 106 );

setMoveKey( spep_12 + 0, 1, 234.9, 381.9 , 0 );
setMoveKey( spep_12 + 2, 1, 242.4, 386.6 , 0 );
setMoveKey( spep_12 + 4, 1, 250, 391.3 , 0 );
setMoveKey( spep_12 + 6, 1, 257.5, 396 , 0 );
setMoveKey( spep_12 + 8, 1, 265, 400.8 , 0 );
setMoveKey( spep_12 + 10, 1, 272.6, 405.5 , 0 );
setMoveKey( spep_12 + 12, 1, 280.1, 410.2 , 0 );
setMoveKey( spep_12 + 14, 1, 287.6, 415 , 0 );
setMoveKey( spep_12 + 16, 1, 295.2, 419.7 , 0 );
setMoveKey( spep_12 + 18, 1, 302.7, 424.4 , 0 );
setMoveKey( spep_12 + 20, 1, 309.9, 432.3 , 0 );
setMoveKey( spep_12 + 22, 1, 298.1, 421.3 , 0 );
setMoveKey( spep_12 + 24, 1, 302.4, 415.3 , 0 );
setMoveKey( spep_12 + 26, 1, 300.6, 414.2 , 0 );
setMoveKey( spep_12 + 28, 1, 298.8, 413.1 , 0 );
setMoveKey( spep_12 + 30, 1, 296.9, 412 , 0 );
setMoveKey( spep_12 -1+ 32, 1, 295.1, 410.9 , 0 );
--setMoveKey( spep_12-1 + 34, 1, 293.3, 409.8 , 0 );

setScaleKey( spep_12 + 0, 1, 4.92, 4.92 );
setScaleKey( spep_12-1 + 32, 1, 4.92, 4.92 );

setRotateKey( spep_12 + 0, 1, -14.8 );
setRotateKey( spep_12-1 + 32, 1, -14.8 );

--SE
--足つかむ
SE048 = playSeVer2( spep_12 + 10, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 10, SE048, 116 );
SE049 = playSeVer2( spep_12 + 16, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 16, SE049, 141 );

-- ** くろ背景 ** --
entryFadeBg( spep_12 + 0, 0, 40, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_13 = spep_12 + 32;
------------------------------------------------------
--メタルクウラが敵を掴みながら空から落ちてくる
------------------------------------------------------
-- ** エフェクト等 ** --
down_f = entryEffect( spep_13 + 0, SP_20, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_13 + 0, down_f, 0, 0, 0 );
setEffMoveKey( spep_13 + 56, down_f, 0, 0, 0 );
setEffScaleKey( spep_13 + 0, down_f, 1.0, 1.0 );
setEffScaleKey( spep_13 + 56, down_f, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, down_f, 0 );
setEffRotateKey( spep_13 + 56, down_f, 0 );
setEffAlphaKey( spep_13 + 0, down_f, 255 );
setEffAlphaKey( spep_13 + 54, down_f, 255 );
setEffAlphaKey( spep_13 + 55, down_f, 255 );
setEffAlphaKey( spep_13 + 56, down_f, 0 );

-- ** エフェクト等 ** --
down_b = entryEffect( spep_13 + 0, SP_21, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_13 + 0, down_b, 0, 0, 0 );
setEffMoveKey( spep_13 + 56, down_b, 0, 0, 0 );
setEffScaleKey( spep_13 + 0, down_b, 1.0, 1.0 );
setEffScaleKey( spep_13 + 56, down_b, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, down_b, 0 );
setEffRotateKey( spep_13 + 56, down_b, 0 );
setEffAlphaKey( spep_13 + 0, down_b, 255 );
setEffAlphaKey( spep_13 + 54, down_b, 255 );
setEffAlphaKey( spep_13 + 55, down_b, 255 );
setEffAlphaKey( spep_13 + 56, down_b, 0 );

--敵の動き
setDisp( spep_13-3 + 52, 1, 0 );

changeAnime( spep_13 + 0, 1, 106 );

setMoveKey( spep_13 + 0, 1, 54.2, 372.5 , 0 );
setMoveKey( spep_13-3 + 4, 1, 63, 377 , 0 );
setMoveKey( spep_13-3 + 5, 1, 63, 377 , 0 );
setMoveKey( spep_13-3 + 6, 1, 63, 377 , 0 );
setMoveKey( spep_13-3 + 7, 1, 63, 377 , 0 );
setMoveKey( spep_13-3 + 8, 1, 71.8, 381.4 , 0 );
setMoveKey( spep_13-3 + 9, 1, 71.8, 381.4 , 0 );
setMoveKey( spep_13-3 + 10, 1, 71.8, 381.4 , 0 );
setMoveKey( spep_13-3 + 11, 1, 71.8, 381.4 , 0 );
setMoveKey( spep_13-3 + 12, 1, 89.4, 390.2 , 0 );
setMoveKey( spep_13-3 + 13, 1, 89.4, 390.2 , 0 );
setMoveKey( spep_13-3 + 14, 1, 89.4, 390.2 , 0 );
setMoveKey( spep_13-3 + 15, 1, 89.4, 390.2 , 0 );
setMoveKey( spep_13-3 + 16, 1, 107, 399.1 , 0 );
setMoveKey( spep_13-3 + 17, 1, 107, 399.1 , 0 );
setMoveKey( spep_13-3 + 18, 1, 107, 399.1 , 0 );
setMoveKey( spep_13-3 + 19, 1, 107, 399.1 , 0 );
setMoveKey( spep_13-3 + 20, 1, 124.6, 407.9 , 0 );
setMoveKey( spep_13-3 + 21, 1, 124.6, 407.9 , 0 );
setMoveKey( spep_13-3 + 22, 1, 124.6, 407.9 , 0 );
setMoveKey( spep_13-3 + 23, 1, 124.6, 407.9 , 0 );
setMoveKey( spep_13-3 + 24, 1, 142.2, 416.8 , 0 );
setMoveKey( spep_13-3 + 25, 1, 142.2, 416.8 , 0 );
setMoveKey( spep_13-3 + 26, 1, 142.2, 416.8 , 0 );
setMoveKey( spep_13-3 + 27, 1, 142.2, 416.8 , 0 );
setMoveKey( spep_13-3 + 28, 1, 159.8, 425.6 , 0 );
setMoveKey( spep_13-3 + 29, 1, 159.8, 425.6 , 0 );
setMoveKey( spep_13-3 + 30, 1, 159.8, 425.6 , 0 );
setMoveKey( spep_13-3 + 31, 1, 159.8, 425.6 , 0 );
setMoveKey( spep_13-3 + 32, 1, 177.4, 434.5 , 0 );
setMoveKey( spep_13-3 + 33, 1, 177.4, 434.5 , 0 );
setMoveKey( spep_13-3 + 34, 1, 177.4, 434.5 , 0 );
setMoveKey( spep_13-3 + 35, 1, 177.4, 434.5 , 0 );
setMoveKey( spep_13-3 + 36, 1, 212.6, 452.1 , 0 );
setMoveKey( spep_13-3 + 37, 1, 212.6, 452.1 , 0 );
setMoveKey( spep_13-3 + 38, 1, 212.6, 452.1 , 0 );
setMoveKey( spep_13-3 + 39, 1, 212.6, 452.1 , 0 );
setMoveKey( spep_13-3 + 40, 1, 342.2, 527.3 , 0 );
setMoveKey( spep_13-3 + 41, 1, 342.2, 527.3 , 0 );
setMoveKey( spep_13-3 + 42, 1, 342.2, 527.3 , 0 );
setMoveKey( spep_13-3 + 43, 1, 342.2, 527.3 , 0 );
setMoveKey( spep_13-3 + 44, 1, 470.2, 604 , 0 );
setMoveKey( spep_13-3 + 45, 1, 470.2, 604 , 0 );
setMoveKey( spep_13-3 + 46, 1, 470.2, 604 , 0 );
setMoveKey( spep_13-3 + 47, 1, 470.2, 604 , 0 );
setMoveKey( spep_13-3 + 48, 1, 596.6, 682.3 , 0 );
setMoveKey( spep_13-3 + 49, 1, 596.6, 682.3 , 0 );
setMoveKey( spep_13-3 + 50, 1, 596.6, 682.3 , 0 );
setMoveKey( spep_13-3 + 51, 1, 596.6, 682.3 , 0 );
setMoveKey( spep_13-3 + 52, 1, 1546.5, 1362.2 , 0 );

setScaleKey( spep_13 + 0, 1, 0.32, 0.32 );
setScaleKey( spep_13-3 + 4, 1, 0.39, 0.39 );
setScaleKey( spep_13-3 + 6, 1, 0.39, 0.39 );
setScaleKey( spep_13-3 + 7, 1, 0.39, 0.39 );
setScaleKey( spep_13-3 + 8, 1, 0.46, 0.46 );
setScaleKey( spep_13-3 + 10, 1, 0.46, 0.46 );
setScaleKey( spep_13-3 + 11, 1, 0.46, 0.46 );
setScaleKey( spep_13-3 + 12, 1, 0.61, 0.61 );
setScaleKey( spep_13-3 + 14, 1, 0.61, 0.61 );
setScaleKey( spep_13-3 + 15, 1, 0.61, 0.61 );
setScaleKey( spep_13-3 + 16, 1, 0.75, 0.75 );
setScaleKey( spep_13-3 + 18, 1, 0.75, 0.75 );
setScaleKey( spep_13-3 + 19, 1, 0.75, 0.75 );
setScaleKey( spep_13-3 + 20, 1, 0.89, 0.89 );
setScaleKey( spep_13-3 + 22, 1, 0.89, 0.89 );
setScaleKey( spep_13-3 + 23, 1, 0.89, 0.89 );
setScaleKey( spep_13-3 + 24, 1, 1.03, 1.03 );
setScaleKey( spep_13-3 + 26, 1, 1.03, 1.03 );
setScaleKey( spep_13-3 + 27, 1, 1.03, 1.03 );
setScaleKey( spep_13-3 + 28, 1, 1.18, 1.18 );
setScaleKey( spep_13-3 + 30, 1, 1.18, 1.18 );
setScaleKey( spep_13-3 + 31, 1, 1.18, 1.18 );
setScaleKey( spep_13-3 + 32, 1, 1.32, 1.32 );
setScaleKey( spep_13-3 + 34, 1, 1.32, 1.32 );
setScaleKey( spep_13-3 + 35, 1, 1.32, 1.32 );
setScaleKey( spep_13-3 + 36, 1, 1.6, 1.6 );
setScaleKey( spep_13-3 + 38, 1, 1.6, 1.6 );
setScaleKey( spep_13-3 + 39, 1, 1.6, 1.6 );
setScaleKey( spep_13-3 + 40, 1, 2.5, 2.5 );
setScaleKey( spep_13-3 + 42, 1, 2.5, 2.5 );
setScaleKey( spep_13-3 + 43, 1, 2.5, 2.5 );
setScaleKey( spep_13-3 + 44, 1, 3.39, 3.39 );
setScaleKey( spep_13-3 + 46, 1, 3.39, 3.39 );
setScaleKey( spep_13-3 + 47, 1, 3.39, 3.39 );
setScaleKey( spep_13-3 + 48, 1, 4.29, 4.29 );
setScaleKey( spep_13-3 + 50, 1, 4.29, 4.29 );
setScaleKey( spep_13-3 + 51, 1, 4.29, 4.29 );
setScaleKey( spep_13-3 + 52, 1, 11.44, 11.44 );

setRotateKey( spep_13 + 0, 1, 10 );
setRotateKey( spep_13-3 + 38, 1, 10 );
setRotateKey( spep_13-3 + 39, 1, 10 );
setRotateKey( spep_13-3 + 40, 1, 9.2 );
setRotateKey( spep_13-3 + 42, 1, 9.2 );
setRotateKey( spep_13-3 + 43, 1, 9.2 );
setRotateKey( spep_13-3 + 44, 1, 8.5 );
setRotateKey( spep_13-3 + 46, 1, 8.5 );
setRotateKey( spep_13-3 + 47, 1, 8.5 );
setRotateKey( spep_13-3 + 48, 1, 7.8 );
setRotateKey( spep_13-3 + 50, 1, 7.8 );
setRotateKey( spep_13-3 + 51, 1, 7.8 );
setRotateKey( spep_13-3 + 52, 1, 2.2 );

--SE
--落下
SE050 = playSeVer2( spep_13 + 0, 1116, "",spep_13 + 56, 0, 22, -1);
setSeVolumeByWorkId( spep_13 + 0, SE050, 119 );
SE051 = playSeVer2( spep_13 + 6, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE051,  100 );
SE052 = playSeVer2( spep_13 + 2, 63, "",spep_13 + 72, 0, 20, 0.6);
setSeVolumeByWorkId( spep_13 + 2, SE052, 178 );
setPitch( spep_13 + 2, SE052, -600 );
setTimeStretch( SE052, 0.6, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_13 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_14 = spep_13 + 56;
------------------------------------------------------
--敵を崖に叩きつける
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_14 + 0, SP_22, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_14 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_14 + 138, finish_f, 0, 0, 0 );
setEffScaleKey( spep_14 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_14 + 138, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_14 + 0, finish_f, 0 );
setEffRotateKey( spep_14 + 138, finish_f, 0 );
setEffAlphaKey( spep_14 + 0, finish_f, 255 );
setEffAlphaKey( spep_14 + 138, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_14 + 0, SP_23, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_14 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_14 + 138, finish_b, 0, 0, 0 );
setEffScaleKey( spep_14 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_14 + 138, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_14 + 0, finish_b, 0 );
setEffRotateKey( spep_14 + 138, finish_b, 0 );
setEffAlphaKey( spep_14 + 0, finish_b, 255 );
setEffAlphaKey( spep_14 + 138, finish_b, 255 );

--敵の動き
setDisp( spep_14 + 0, 1, 1 );
setDisp( spep_14 + 10, 1, 0 );

changeAnime( spep_14 + 0, 1, 106 );

setMoveKey( spep_14 + 0, 1, 16.8, 65.2 , 0 );
setMoveKey( spep_14-3 + 4, 1, 20.3, 66.7 , 0 );
setMoveKey( spep_14-3 + 5, 1, 20.3, 66.7 , 0 );
setMoveKey( spep_14-3 + 6, 1, -47.9, 22.5 , 0 );
setMoveKey( spep_14-3 + 7, 1, -47.9, 22.5 , 0 );
setMoveKey( spep_14-3 + 8, 1, -46.1, 23.2 , 0 );
setMoveKey( spep_14-3 + 9, 1, -46.1, 23.2 , 0 );
setMoveKey( spep_14 + 10, 1, -44.3, 23.9 , 0 );

setScaleKey( spep_14 + 0, 1, 0.55, 0.55 );
setScaleKey( spep_14 + 10, 1, 0.55, 0.55 );

setRotateKey( spep_14 + 0, 1, -30.7 );
setRotateKey( spep_14 + 10, 1, -30.7 );

--敵の動き
setDisp( spep_14-3 + 14, 1, 1 );
setDisp( spep_14-1 + 44, 1, 0 );

changeAnime( spep_14-3 + 14, 1, 106 );

setMoveKey( spep_14-3 + 14, 1, -103.9, -205.9 , 0 );
setMoveKey( spep_14-3 + 15, 1, -103.9, -205.9 , 0 );
setMoveKey( spep_14-3 + 16, 1, -128.4, -260 , 0 );
setMoveKey( spep_14-3 + 17, 1, -128.4, -260 , 0 );
setMoveKey( spep_14-3 + 18, 1, -126.5, -228.8 , 0 );
setMoveKey( spep_14-3 + 19, 1, -126.5, -228.8 , 0 );
setMoveKey( spep_14-3 + 20, 1, -74.3, -270.7 , 0 );
setMoveKey( spep_14-3 + 21, 1, -74.3, -270.7 , 0 );
setMoveKey( spep_14-3 + 22, 1, -137.4, -290.8 , 0 );
setMoveKey( spep_14-3 + 23, 1, -137.4, -290.8 , 0 );
setMoveKey( spep_14-3 + 24, 1, -153, -244 , 0 );
setMoveKey( spep_14-3 + 25, 1, -153, -244 , 0 );
setMoveKey( spep_14-3 + 26, 1, -108.3, -208.1 , 0 );
setMoveKey( spep_14-3 + 27, 1, -108.3, -208.1 , 0 );
setMoveKey( spep_14-3 + 28, 1, -86.7, -237 , 0 );
setMoveKey( spep_14-3 + 29, 1, -86.7, -237 , 0 );
setMoveKey( spep_14-3 + 30, 1, -65.1, -265.9 , 0 );
setMoveKey( spep_14-3 + 31, 1, -65.1, -265.9 , 0 );
setMoveKey( spep_14-3 + 32, 1, -74.9, -272.2 , 0 );
setMoveKey( spep_14-3 + 33, 1, -74.9, -272.2 , 0 );
setMoveKey( spep_14-3 + 34, 1, -84.7, -278.5 , 0 );
setMoveKey( spep_14-3 + 35, 1, -84.7, -278.5 , 0 );
setMoveKey( spep_14-3 + 36, 1, -94.4, -284.7 , 0 );
setMoveKey( spep_14-3 + 37, 1, -94.4, -284.7 , 0 );
setMoveKey( spep_14-3 + 38, 1, -99.8, -277.4 , 0 );
setMoveKey( spep_14-3 + 39, 1, -99.8, -277.4 , 0 );
setMoveKey( spep_14-3 + 40, 1, -105.2, -270.1 , 0 );
setMoveKey( spep_14-3 + 41, 1, -105.2, -270.1 , 0 );
setMoveKey( spep_14-3 + 42, 1, -110.6, -262.8 , 0 );
setMoveKey( spep_14-3 + 43, 1, -110.6, -262.8 , 0 );
setMoveKey( spep_14-3 + 44, 1, -116, -255.5 , 0 );
setMoveKey( spep_14-3 + 45, 1, -116, -255.5 , 0 );
setMoveKey( spep_14-3 + 46, 1, -114.1, -251.9 , 0 );

setScaleKey( spep_14-3 + 14, 1, 0.5, 0.5 );
setScaleKey( spep_14-3 + 46, 1, 0.5, 0.5 );

setRotateKey( spep_14-3 + 14, 1, -169 );
setRotateKey( spep_14-3 + 46, 1, -169 );

--SE
--岩激突
SE053 = playSeVer2( spep_14 + 10, 1067, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_14 + 10, 1159, "", 0, 0, 0, -1);

--爆発
SE055 = playSeVer2( spep_14 + 56, 1188, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_14 + 56, 1068, "", 0, 0, 0, -1);

-- 終わり
dealDamage(spep_14+14);
endPhase( spep_14 + 128 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--セリフカットイン〜画面手前ダッシュ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
woke = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, woke, 0, 0, 0 );
setEffMoveKey( spep_0 + 106, woke, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, woke, -1.0, 1.0 );
setEffScaleKey( spep_0 + 106, woke, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, woke, 0 );
setEffRotateKey( spep_0 + 106, woke, 0 );
setEffAlphaKey( spep_0 + 0, woke, 255 );
setEffAlphaKey( spep_0 + 104, woke, 255 );
setEffAlphaKey( spep_0 + 105, woke, 255 );
setEffAlphaKey( spep_0 + 106, woke, 0 );

--SE
--走ってくる
SE001 = playSeVer2( spep_0 + 8, 44, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 8, SE001, 66 );
SE002 = playSeVer2( spep_0 + 14, 1383, "", 0, 0, 0, 0.6);
SE004 = playSeVer2( spep_0 + 32, 1383, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 32, SE004, 84 );
SE005 = playSeVer2( spep_0 + 50, 1383, "", 0, 0, 0, 0.6);
SE006 = playSeVer2( spep_0 + 64, 1383, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 64, SE006, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    
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

--顔カットインのタイミング指定
spep_x=spep_0 +14;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

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
--走ってくる
SE007 = playSeVer2( spep_0 + 76, 1383, "", 0, 0, 0, 0.6);
SE008 = playSeVer2( spep_0 + 90, 1383, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 90, SE008, 80 );

--顔カットイン
--SE003 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 +100 , 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade

--次の準備
spep_1 = spep_0+106;
------------------------------------------------------
--横向きで走っている
------------------------------------------------------
-- ** エフェクト等 ** --
woke2 = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, woke2, 0, 0, 0 );
setEffMoveKey( spep_1 + 66, woke2, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, woke2, -1.0, 1.0 );
setEffScaleKey( spep_1 + 66, woke2, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, woke2, 0 );
setEffRotateKey( spep_1 + 66, woke2, 0 );
setEffAlphaKey( spep_1 + 0, woke2, 255 );
setEffAlphaKey( spep_1 + 66, woke2, 255 );

--SE
--横向きダッシュ
SE009 = playSeVer2( spep_1 + 0, 8, "",spep_1 + 78, 0, 14, -1);
SE010 = playSeVer2( spep_1 + 0, 1278, "",spep_1 + 78, 0, 14, -1);
SE011 = playSeVer2( spep_1 + 0, 1182, "",spep_1 + 78, 0, 14, -1);
SE012 = playSeVer2( spep_1 + 0, 1232, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_1 +54 , 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_c = spep_1+66;
--------------------------------------
--カードカットイン(94F) 
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_c + 94;

------------------------------------------------------
--横からメタルクウラが来る→殴る
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 28, panting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 28, panting_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_f, 0 );
setEffRotateKey( spep_3 + 28, panting_f, 0 );
setEffAlphaKey( spep_3 + 0, panting_f, 255 );
setEffAlphaKey( spep_3 + 36, panting_f, 255 );
setEffAlphaKey( spep_3 + 27, panting_f, 255 );
setEffAlphaKey( spep_3 + 28, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 28, panting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 28, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_b, 0 );
setEffRotateKey( spep_3 + 28, panting_b, 0 );
setEffAlphaKey( spep_3 + 0, panting_b, 255 );
setEffAlphaKey( spep_3 + 36, panting_b, 255 );
setEffAlphaKey( spep_3 + 27, panting_b, 255 );
setEffAlphaKey( spep_3 + 28, panting_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 30, 1, 0 );

changeAnime( spep_3 + 0, 1, 111 );
changeAnime( spep_3 + 1, 1, 111 );
changeAnime( spep_3 + 2, 1, 111 );
changeAnime( spep_3 + 3, 1, 111 );
changeAnime( spep_3 + 4, 1, 111 );
changeAnime( spep_3 + 5, 1, 111 );
changeAnime( spep_3 + 6, 1, 111 );
changeAnime( spep_3-3 + 10, 1, 106 );

--setMoveKey( spep_3 + 0, 1, 553.4, -69.1 , 0 );
setMoveKey( spep_3 + 0, 1, 339.6, -69.1 , 0 );
setMoveKey( spep_3-3 + 4, 1, 125.8, -69.1 , 0 );
setMoveKey( spep_3-3 + 6, 1, 105.8, -69.1 , 0 );
setMoveKey( spep_3-3 + 9, 1, 85.8, -69.1 , 0 );
setMoveKey( spep_3-3 + 10, 1, -70.4, -62.4 , 0 );
setMoveKey( spep_3-3 + 12, 1, 6.3, -53.4 , 0 );
setMoveKey( spep_3-3 + 14, 1, 64, -63.2 , 0 );
setMoveKey( spep_3-3 + 16, 1, 155.1, -68.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 229.4, -57.4 , 0 );
setMoveKey( spep_3-3 + 20, 1, 314.1, -68.1 , 0 );
setMoveKey( spep_3-3 + 22, 1, 402, -65.1 , 0 );
setMoveKey( spep_3-3 + 24, 1, 489.9, -62.2 , 0 );
setMoveKey( spep_3-3 + 26, 1, 573.3, -61.7 , 0 );
setMoveKey( spep_3-3 + 28, 1, 656.7, -61.3 , 0 );
setMoveKey( spep_3-3 + 30, 1, 741.7, -61.3 , 0 );
--setMoveKey( spep_3-3 + 32, 1, 826.6, -61.3 , 0 );

setScaleKey( spep_3 + 0, 1, 2, 2 );
setScaleKey( spep_3-3 + 30, 1, 2, 2 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 30, 1, 0 );

--SE
--殴り飛ばし
SE014 = playSeVer2( spep_3 + 0, 1003, "", 0, 0, 0, -1);	
SE015 = playSeVer2( spep_3 + 8, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 8, SE015, 89 );
SE016 = playSeVer2( spep_3 + 8, 1180, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 8, SE016, 77 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 34, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_4 = spep_3 + 28;
------------------------------------------------------
--画面手前から奥に追いかけていく
------------------------------------------------------
-- ** エフェクト等 ** --
chase_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, chase_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, chase_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, chase_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, chase_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, chase_f, 0 );
setEffRotateKey( spep_4 + 116, chase_f, 0 );
setEffAlphaKey( spep_4 + 0, chase_f, 255 );
setEffAlphaKey( spep_4 + 114, chase_f, 255 );
setEffAlphaKey( spep_4 + 115, chase_f, 255 );
setEffAlphaKey( spep_4 + 116, chase_f, 0 );

-- ** エフェクト等 ** --
chase_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, chase_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, chase_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, chase_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, chase_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, chase_b, 0 );
setEffRotateKey( spep_4 + 116, chase_b, 0 );
setEffAlphaKey( spep_4 + 0, chase_b, 255 );
setEffAlphaKey( spep_4 + 114, chase_b, 255 );
setEffAlphaKey( spep_4 + 115, chase_b, 255 );
setEffAlphaKey( spep_4 + 116, chase_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 5 );

setMoveKey( spep_4 + 0, 1, 738.2, 1.4 , 0 );
setMoveKey( spep_4 + 4, 1, 738.2, 1.4 , 0 );
setMoveKey( spep_4 + 6, 1, 247.6, -31 , 0 );
setMoveKey( spep_4 + 8, 1, 48.6, -43.7 , 0 );
setMoveKey( spep_4 + 10, 1, 48.6, -43.7 , 0 );
setMoveKey( spep_4 + 12, 1, 43.2, -43.1 , 0 );
setMoveKey( spep_4 + 14, 1, 43.2, -43.1 , 0 );
setMoveKey( spep_4 + 16, 1, 38, -42.3 , 0 );
setMoveKey( spep_4 + 18, 1, 38, -42.3 , 0 );
setMoveKey( spep_4 + 20, 1, 33, -41.4 , 0 );
setMoveKey( spep_4 + 22, 1, 33, -41.4 , 0 );
setMoveKey( spep_4 + 24, 1, 28.1, -40.3 , 0 );
setMoveKey( spep_4 + 26, 1, 37.1, -31.3 , 0 );
setMoveKey( spep_4 + 28, 1, 27.2, -41.2 , 0 );
setMoveKey( spep_4 + 30, 1, 26.4, -44.1 , 0 );
setMoveKey( spep_4 + 32, 1, 13.5, -32.7 , 0 );
setMoveKey( spep_4 + 34, 1, 12.8, -43 , 0 );
setMoveKey( spep_4 + 36, 1, 15.1, -39.7 , 0 );
setMoveKey( spep_4 + 38, 1, 17.5, -36.5 , 0 );
setMoveKey( spep_4 + 40, 1, 15.4, -35.6 , 0 );
setMoveKey( spep_4 + 42, 1, 13.3, -34.8 , 0 );
setMoveKey( spep_4 + 44, 1, 14.2, -35 , 0 );
setMoveKey( spep_4 + 46, 1, 15.1, -35.2 , 0 );
setMoveKey( spep_4 + 48, 1, 17.1, -34.2 , 0 );
setMoveKey( spep_4 + 50, 1, 19.2, -33.2 , 0 );
setMoveKey( spep_4 + 52, 1, 17, -36.6 , 0 );
setMoveKey( spep_4 + 54, 1, 14.8, -39.9 , 0 );
setMoveKey( spep_4 + 56, 1, 18, -44.3 , 0 );
setMoveKey( spep_4 + 58, 1, 21.1, -48.7 , 0 );
setMoveKey( spep_4 + 60, 1, 18.9, -46.6 , 0 );
setMoveKey( spep_4 + 62, 1, 16.7, -44.6 , 0 );
setMoveKey( spep_4 + 64, 1, 14.5, -48 , 0 );
setMoveKey( spep_4 + 66, 1, 12.3, -51.3 , 0 );
setMoveKey( spep_4 + 68, 1, 12.2, -52.5 , 0 );
setMoveKey( spep_4 + 70, 1, 12.1, -53.7 , 0 );
setMoveKey( spep_4 + 72, 1, 12.1, -54.8 , 0 );
setMoveKey( spep_4 + 74, 1, 12, -56 , 0 );
setMoveKey( spep_4 + 76, 1, 11.9, -57.2 , 0 );
setMoveKey( spep_4 + 78, 1, 11.9, -58.4 , 0 );
setMoveKey( spep_4 + 80, 1, 11.8, -59.6 , 0 );
setMoveKey( spep_4 + 82, 1, 11.7, -60.8 , 0 );
setMoveKey( spep_4 + 84, 1, 11.6, -61.9 , 0 );
setMoveKey( spep_4 + 86, 1, 11.6, -63.1 , 0 );
setMoveKey( spep_4 + 88, 1, 11.5, -64.3 , 0 );
setMoveKey( spep_4 + 90, 1, 11.4, -65.5 , 0 );
setMoveKey( spep_4 + 92, 1, 11.3, -66.7 , 0 );
setMoveKey( spep_4 + 94, 1, 11.3, -67.9 , 0 );
setMoveKey( spep_4 + 96, 1, 11.2, -69.1 , 0 );
setMoveKey( spep_4 + 98, 1, 11.1, -70.3 , 0 );
setMoveKey( spep_4 + 100, 1, 11, -71.4 , 0 );
setMoveKey( spep_4 + 102, 1, 10.9, -72.6 , 0 );
setMoveKey( spep_4 + 104, 1, 10.8, -73.8 , 0 );
setMoveKey( spep_4 + 106, 1, 10.8, -75 , 0 );
setMoveKey( spep_4 + 108, 1, 10.7, -76.2 , 0 );
setMoveKey( spep_4 + 110, 1, 10.6, -77.4 , 0 );
setMoveKey( spep_4 + 112, 1, 10.5, -78.6 , 0 );
setMoveKey( spep_4 + 114, 1, 10.4, -79.8 , 0 );
setMoveKey( spep_4-1 + 116, 1, 10.3, -81 , 0 );

setScaleKey( spep_4 + 0, 1, 34.45, 34.45 );
setScaleKey( spep_4 + 4, 1, 34.45, 34.45 );
setScaleKey( spep_4 + 6, 1, 11.45, 11.45 );
setScaleKey( spep_4 + 8, 1, 2.15, 2.15 );
setScaleKey( spep_4 + 10, 1, 2.15, 2.15 );
setScaleKey( spep_4 + 12, 1, 1.94, 1.94 );
setScaleKey( spep_4 + 14, 1, 1.94, 1.94 );
setScaleKey( spep_4 + 16, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 18, 1, 1.73, 1.73 );
setScaleKey( spep_4 + 20, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 22, 1, 1.51, 1.51 );
setScaleKey( spep_4 + 24, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 28, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 30, 1, 0.98, 0.98 );
setScaleKey( spep_4 + 32, 1, 0.87, 0.87 );
setScaleKey( spep_4 + 34, 1, 0.84, 0.84 );
setScaleKey( spep_4 + 36, 1, 0.81, 0.81 );
setScaleKey( spep_4 + 38, 1, 0.78, 0.78 );
setScaleKey( spep_4 + 40, 1, 0.75, 0.75 );
setScaleKey( spep_4 + 42, 1, 0.72, 0.72 );
setScaleKey( spep_4 + 44, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 46, 1, 0.65, 0.65 );
setScaleKey( spep_4 + 48, 1, 0.65, 0.65 );
setScaleKey( spep_4 + 50, 1, 0.64, 0.64 );
setScaleKey( spep_4 + 54, 1, 0.64, 0.64 );
setScaleKey( spep_4 + 56, 1, 0.63, 0.63 );
setScaleKey( spep_4 + 58, 1, 0.63, 0.63 );
setScaleKey( spep_4 + 60, 1, 0.62, 0.62 );
setScaleKey( spep_4 + 62, 1, 0.62, 0.62 );
setScaleKey( spep_4 + 64, 1, 0.61, 0.61 );
setScaleKey( spep_4 + 68, 1, 0.61, 0.61 );
setScaleKey( spep_4 + 70, 1, 0.6, 0.6 );
setScaleKey( spep_4 + 72, 1, 0.6, 0.6 );
setScaleKey( spep_4 + 74, 1, 0.59, 0.59 );
setScaleKey( spep_4 + 76, 1, 0.59, 0.59 );
setScaleKey( spep_4 + 78, 1, 0.58, 0.58 );
setScaleKey( spep_4 + 82, 1, 0.58, 0.58 );
setScaleKey( spep_4 + 84, 1, 0.57, 0.57 );
setScaleKey( spep_4 + 86, 1, 0.57, 0.57 );
setScaleKey( spep_4 + 88, 1, 0.56, 0.56 );
setScaleKey( spep_4 + 90, 1, 0.56, 0.56 );
setScaleKey( spep_4 + 92, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 94, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 96, 1, 0.54, 0.54 );
setScaleKey( spep_4 + 100, 1, 0.54, 0.54 );
setScaleKey( spep_4 + 102, 1, 0.53, 0.53 );
setScaleKey( spep_4 + 104, 1, 0.53, 0.53 );
setScaleKey( spep_4 + 106, 1, 0.52, 0.52 );
setScaleKey( spep_4 + 108, 1, 0.52, 0.52 );
setScaleKey( spep_4 + 110, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 114, 1, 0.51, 0.51 );
setScaleKey( spep_4-1 + 116, 1, 0.5, 0.5 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 6, 1, 0 );
setRotateKey( spep_4 + 8, 1, 0.7 );
setRotateKey( spep_4 + 10, 1, 0.7 );
setRotateKey( spep_4 + 12, 1, 2 );
setRotateKey( spep_4 + 14, 1, 2 );
setRotateKey( spep_4 + 16, 1, 3.3 );
setRotateKey( spep_4 + 18, 1, 3.3 );
setRotateKey( spep_4 + 20, 1, 4.7 );
setRotateKey( spep_4 + 22, 1, 4.7 );
setRotateKey( spep_4 + 24, 1, 6 );
setRotateKey( spep_4 + 28, 1, 6 );
setRotateKey( spep_4 + 30, 1, 8 );
setRotateKey( spep_4 + 32, 1, 8.6 );
setRotateKey( spep_4 + 34, 1, 8.8 );
setRotateKey( spep_4 + 36, 1, 8.9 );
setRotateKey( spep_4 + 38, 1, 9 );
setRotateKey( spep_4 + 40, 1, 9.2 );
setRotateKey( spep_4 + 42, 1, 9.3 );
setRotateKey( spep_4 + 44, 1, 9.5 );
setRotateKey( spep_4 + 46, 1, 9.6 );
setRotateKey( spep_4 + 48, 1, 9.3 );
setRotateKey( spep_4 + 50, 1, 9.1 );
setRotateKey( spep_4 + 52, 1, 8.8 );
setRotateKey( spep_4 + 54, 1, 8.5 );
setRotateKey( spep_4 + 56, 1, 8.3 );
setRotateKey( spep_4 + 58, 1, 8 );
setRotateKey( spep_4 + 60, 1, 7.7 );
setRotateKey( spep_4 + 62, 1, 7.5 );
setRotateKey( spep_4 + 64, 1, 7.2 );
setRotateKey( spep_4 + 66, 1, 6.9 );
setRotateKey( spep_4 + 68, 1, 6.7 );
setRotateKey( spep_4 + 70, 1, 6.4 );
setRotateKey( spep_4 + 72, 1, 6.1 );
setRotateKey( spep_4 + 74, 1, 5.9 );
setRotateKey( spep_4 + 76, 1, 5.6 );
setRotateKey( spep_4 + 78, 1, 5.3 );
setRotateKey( spep_4 + 80, 1, 5.1 );
setRotateKey( spep_4 + 82, 1, 4.8 );
setRotateKey( spep_4 + 84, 1, 4.5 );
setRotateKey( spep_4 + 86, 1, 4.3 );
setRotateKey( spep_4 + 88, 1, 4 );
setRotateKey( spep_4 + 90, 1, 3.7 );
setRotateKey( spep_4 + 92, 1, 3.5 );
setRotateKey( spep_4 + 94, 1, 3.2 );
setRotateKey( spep_4 + 96, 1, 2.9 );
setRotateKey( spep_4 + 98, 1, 2.7 );
setRotateKey( spep_4 + 100, 1, 2.4 );
setRotateKey( spep_4 + 102, 1, 2.1 );
setRotateKey( spep_4 + 104, 1, 1.9 );
setRotateKey( spep_4 + 106, 1, 1.6 );
setRotateKey( spep_4 + 108, 1, 1.3 );
setRotateKey( spep_4 + 110, 1, 1.1 );
setRotateKey( spep_4 + 112, 1, 0.8 );
setRotateKey( spep_4 + 114, 1, 0.5 );
setRotateKey( spep_4-1 + 116, 1, 0.3 );

--SE
--敵飛んでいく
SE017 = playSeVer2( spep_4 + 0, 1121, "",spep_4 + 158, 0, 8, -1);

--敵追いかける
SE018 = playSeVer2( spep_4 + 48, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_4 + 48, 1383, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 48, 1117, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5 = spep_4 + 116;
------------------------------------------------------
--画面横から蹴り込む
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 40, kick_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 40, kick_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_f, 0 );
setEffRotateKey( spep_5 + 40, kick_f, 0 );
setEffAlphaKey( spep_5 + 0, kick_f, 255 );
setEffAlphaKey( spep_5 + 38, kick_f, 255 );
setEffAlphaKey( spep_5 + 39, kick_f, 255 );
setEffAlphaKey( spep_5 + 40, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_5 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 40, kick_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 40, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_b, 0 );
setEffRotateKey( spep_5 + 40, kick_b, 0 );
setEffAlphaKey( spep_5 + 0, kick_b, 255 );
setEffAlphaKey( spep_5 + 38, kick_b, 255 );
setEffAlphaKey( spep_5 + 39, kick_b, 255 );
setEffAlphaKey( spep_5 + 40, kick_b, 0 );

--敵の動き
setDisp( spep_5-3 + 44, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5-3 + 26, 1, 6 );

setMoveKey( spep_5 + 0, 1, 61.9, -3.2 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 60, -2.2 , 0 );
setMoveKey( spep_5-3 + 4, 1, 58.1, -1.3 , 0 );
setMoveKey( spep_5-3 + 6, 1, 56.2, -0.3 , 0 );
setMoveKey( spep_5-3 + 8, 1, 54.3, 0.6 , 0 );
setMoveKey( spep_5-3 + 10, 1, 52.4, 1.6 , 0 );
setMoveKey( spep_5-3 + 12, 1, 50.5, 2.5 , 0 );
setMoveKey( spep_5-3 + 14, 1, 48.6, 3.5 , 0 );
setMoveKey( spep_5-3 + 16, 1, 46.7, 4.4 , 0 );
setMoveKey( spep_5-3 + 18, 1, 44.8, 5.4 , 0 );
setMoveKey( spep_5-3 + 20, 1, 42.9, 6.3 , 0 );
setMoveKey( spep_5-3 + 22, 1, 41, 7.3 , 0 );
setMoveKey( spep_5-3 + 25, 1, 39.1, 8.2 , 0 );
setMoveKey( spep_5-3 + 26, 1, 122.3, 9.1 , 0 );
setMoveKey( spep_5-3 + 28, 1, 197.4, 38.1 , 0 );
setMoveKey( spep_5-3 + 30, 1, 124.4, -51.4 , 0 );
setMoveKey( spep_5-3 + 32, 1, 267, -23.7 , 0 );
setMoveKey( spep_5-3 + 34, 1, 311.5, 14 , 0 );
setMoveKey( spep_5-3 + 36, 1, 390.9, -23.7 , 0 );
setMoveKey( spep_5-3 + 38, 1, 483.3, -13.4 , 0 );
setMoveKey( spep_5-3 + 40, 1, 575.6, -3.1 , 0 );
setMoveKey( spep_5-3 + 42, 1, 657.7, -3.1 , 0 );
setMoveKey( spep_5-3 + 44, 1, 739.8, -3.1 , 0 );

setScaleKey( spep_5 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 44, 1, 1.5, 1.5 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-3 + 25, 1, 0 );
setRotateKey( spep_5-3 + 26, 1, 46.7 );
setRotateKey( spep_5-3 + 44, 1, 46.7 );

--SE
--蹴り飛ばし
SE021 = playSeVer2( spep_5 + 16, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_5 + 24, 1153, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_5 + 24, 1187, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_6 = spep_5 + 40;
------------------------------------------------------
--メタルクウラの衝撃波の構え（アップ）
------------------------------------------------------
-- ** エフェクト等 ** --
impact = entryEffect( spep_6 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, impact, 0, 0, 0 );
setEffMoveKey( spep_6 + 64, impact, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, impact, -1.0, 1.0 );
setEffScaleKey( spep_6 + 64, impact, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, impact, 0 );
setEffRotateKey( spep_6 + 64, impact, 0 );
setEffAlphaKey( spep_6 + 0, impact, 255 );
setEffAlphaKey( spep_6 + 62, impact, 255 );
setEffAlphaKey( spep_6 + 63, impact, 255 );
setEffAlphaKey( spep_6 + 64, impact, 0 );

--SE
--腕前に持ってくる
SE024 = playSeVer2( spep_6 + 10, 1003, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_6 + 10, 1150, "",spep_6 + 30, 0, 8, -1);
setSeVolumeByWorkId( spep_6 + 10, SE025, 76 );

--腕前に突き出す
SE027 = playSeVer2( spep_6 + 46, 1383, "", 0, 4, 0, -1);
setStartTimeMs( SE027,  83 );
SE028 = playSeVer2( spep_6 + 48, 1012, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_7 = spep_6 + 64;
------------------------------------------------------
--敵を衝撃破で飛ばす
------------------------------------------------------
-- ** エフェクト等 ** --
fly_f = entryEffect( spep_7 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, fly_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 56, fly_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, fly_f, -1.0, 1.0 );
setEffScaleKey( spep_7 + 56, fly_f, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, fly_f, 0 );
setEffRotateKey( spep_7 + 56, fly_f, 0 );
setEffAlphaKey( spep_7 + 0, fly_f, 255 );
setEffAlphaKey( spep_7 + 54, fly_f, 255 );
setEffAlphaKey( spep_7 + 55, fly_f, 255 );
setEffAlphaKey( spep_7 + 56, fly_f, 0 );

-- ** エフェクト等 ** --
fly_b = entryEffect( spep_7 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, fly_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 56, fly_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, fly_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 56, fly_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, fly_b, 0 );
setEffRotateKey( spep_7 + 56, fly_b, 0 );
setEffAlphaKey( spep_7 + 0, fly_b, 255 );
setEffAlphaKey( spep_7 + 54, fly_b, 255 );
setEffAlphaKey( spep_7 + 55, fly_b, 255 );
setEffAlphaKey( spep_7 + 56, fly_b, 0 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7-3 + 58, 1, 0 );

changeAnime( spep_7 + 0, 1, 106 );
changeAnime( spep_7-3 + 12, 1, 108 );

setMoveKey( spep_7 + 0, 1, -150.5, 13.2 , 0 );
--setMoveKey( spep_7-3 + 2, 1, -150.5, 13.2 , 0 );
setMoveKey( spep_7-3 + 4, 1, -101.2, 13.2 , 0 );
setMoveKey( spep_7-3 + 6, 1, -101.2, 13.2 , 0 );
setMoveKey( spep_7-3 + 8, 1, -51.9, 13.2 , 0 );
setMoveKey( spep_7-3 + 11, 1, -51.9, 13.2 , 0 );
setMoveKey( spep_7-3 + 12, 1, 25, 53 , 0 );
setMoveKey( spep_7-3 + 14, 1, -13.5, -29.1 , 0 );
setMoveKey( spep_7-3 + 16, 1, 0, 55.6 , 0 );
setMoveKey( spep_7-3 + 18, 1, 43.6, 53 , 0 );
setMoveKey( spep_7-3 + 20, 1, -25.9, -29.1 , 0 );
setMoveKey( spep_7-3 + 22, 1, 68.1, -23.4 , 0 );
setMoveKey( spep_7-3 + 24, 1, 2.1, 40 , 0 );
setMoveKey( spep_7-3 + 26, 1, 27.5, -22.1 , 0 );
setMoveKey( spep_7-3 + 28, 1, 44.2, -4.4 , 0 );
setMoveKey( spep_7-3 + 30, 1, 54.4, 13.3 , 0 );
setMoveKey( spep_7-3 + 32, 1, 55.3, 17.8 , 0 );
setMoveKey( spep_7-3 + 34, 1, 49.8, 22.2 , 0 );
setMoveKey( spep_7-3 + 36, 1, 61.7, 17.7 , 0 );
setMoveKey( spep_7-3 + 38, 1, 67.1, 13.2 , 0 );
setMoveKey( spep_7-3 + 40, 1, 77.6, 17.3 , 0 );
setMoveKey( spep_7-3 + 42, 1, 81.8, 21.5 , 0 );
setMoveKey( spep_7-3 + 44, 1, 84, 17.3 , 0 );
setMoveKey( spep_7-3 + 46, 1, 83.1, 13.2 , 0 );
setMoveKey( spep_7-3 + 48, 1, 174.7, 8 , 0 );
setMoveKey( spep_7-3 + 50, 1, 179.9, 2.8 , 0 );
setMoveKey( spep_7-3 + 52, 1, 174.8, 12 , 0 );
setMoveKey( spep_7-3 + 54, 1, 256, 21.2 , 0 );
setMoveKey( spep_7-3 + 56, 1, 428, 17.1 , 0 );
setMoveKey( spep_7-3 + 58, 1, 686.5, 13 , 0 );
--setMoveKey( spep_7-3 + 60, 1, 685.7, 8.9 , 0 );

setScaleKey( spep_7 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_7-3 + 58, 1, 1.5, 1.5 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7-3 + 58, 1, 0 );

--SE
--空気暖ヒット
SE029 = playSeVer2( spep_7 + 0, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 0, SE029, 65 );
SE030 = playSeVer2( spep_7 + 4, 1133, "",spep_7 + 82, 0, 14, 0.6);
setPitch( spep_7 + 4, SE030, -100 );
setTimeStretch( SE030, 0.93, 30, 4 );
SE031 = playSeVer2( spep_7 + 4, 1183, "",spep_7 + 82, 0, 14, -1);
SE026 = playSeVer2( spep_7 + 12, 1121, "",spep_7 + 18, 0, 0, -1);
setStartTimeMs( SE026,  833 );
setPitch( spep_7 + 12, SE026, 100 );
setTimeStretch( SE026, 1.07, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_8 = spep_7 + 56;
------------------------------------------------------
--敵が岩に激突し通り抜ける
------------------------------------------------------
-- ** エフェクト等 ** --
clash_f = entryEffect( spep_8 + 0, SP_12x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, clash_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 116, clash_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, clash_f, -1.0, 1.0 );
setEffScaleKey( spep_8 + 116, clash_f, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, clash_f, 0 );
setEffRotateKey( spep_8 + 116, clash_f, 0 );
setEffAlphaKey( spep_8 + 0, clash_f, 255 );
setEffAlphaKey( spep_8 + 114, clash_f, 255 );
setEffAlphaKey( spep_8 + 115, clash_f, 255 );
setEffAlphaKey( spep_8 + 116, clash_f, 0 );

-- ** エフェクト等 ** --
clash_b = entryEffect( spep_8 + 0, SP_13x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, clash_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 116, clash_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, clash_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 116, clash_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, clash_b, 0 );
setEffRotateKey( spep_8 + 116, clash_b, 0 );
setEffAlphaKey( spep_8 + 0, clash_b, 255 );
setEffAlphaKey( spep_8 + 114, clash_b, 255 );
setEffAlphaKey( spep_8 + 115, clash_b, 255 );
setEffAlphaKey( spep_8 + 116, clash_b, 0 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8-3 + 12, 1, 0 );

changeAnime( spep_8 + 0, 1, 106 );

setMoveKey( spep_8 + 0, 1, -455.7, -81.8 , 0 );
--setMoveKey( spep_8 + 2, 1, -378.4, -81.8 , 0 );
setMoveKey( spep_8-3 + 4, 1, -301, -81.8 , 0 );
setMoveKey( spep_8-3 + 6, 1, -223.7, -81.8 , 0 );
setMoveKey( spep_8-3 + 8, 1, -146.3, -81.8 , 0 );
setMoveKey( spep_8-3 + 10, 1, -69, -81.8 , 0 );
setMoveKey( spep_8-3 + 12, 1, 8.4, -81.8 , 0 );

setScaleKey( spep_8 + 0, 1, 0.17, 0.17 );
setScaleKey( spep_8-3 + 12, 1, 0.17, 0.17 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8-3 + 12, 1, 0 );

--敵の動き
setDisp( spep_8-3 + 68, 1, 1 );

changeAnime( spep_8-3 + 68, 1, 106 );

setMoveKey( spep_8-3 + 68, 1, -140.9, -88.8 , 0 );
setMoveKey( spep_8-3 + 70, 1, -116.4, -88.8 , 0 );
setMoveKey( spep_8-3 + 72, 1, -126.2, -76.6 , 0 );
setMoveKey( spep_8-3 + 74, 1, -74.2, -62.9 , 0 );
setMoveKey( spep_8-3 + 76, 1, -56.5, -83.6 , 0 );
setMoveKey( spep_8-3 + 78, 1, -18.5, -81.6 , 0 );
setMoveKey( spep_8-3 + 80, 1, 19.4, -79.6 , 0 );
setMoveKey( spep_8-3 + 82, 1, 17.5, -76.5 , 0 );
setMoveKey( spep_8-3 + 84, 1, 15.7, -73.5 , 0 );
setMoveKey( spep_8-3 + 86, 1, 54.3, -69.6 , 0 );
setMoveKey( spep_8-3 + 88, 1, 73.3, -65.8 , 0 );
setMoveKey( spep_8-3 + 90, 1, 92.2, -62 , 0 );
setMoveKey( spep_8-3 + 92, 1, 108.8, -63.1 , 0 );
setMoveKey( spep_8-3 + 94, 1, 111.8, -64.1 , 0 );
setMoveKey( spep_8-3 + 96, 1, 114.8, -65.2 , 0 );
setMoveKey( spep_8-3 + 98, 1, 117.8, -66.3 , 0 );
setMoveKey( spep_8-3 + 100, 1, 118.8, -67 , 0 );
setMoveKey( spep_8-3 + 102, 1, 119.7, -67.6 , 0 );
setMoveKey( spep_8-3 + 104, 1, 120.7, -68.3 , 0 );
setMoveKey( spep_8-3 + 106, 1, 121.6, -68.9 , 0 );
setMoveKey( spep_8-3 + 108, 1, 124.1, -69 , 0 );
setMoveKey( spep_8-3 + 110, 1, 126.5, -69 , 0 );
setMoveKey( spep_8-3 + 112, 1, 128.9, -69 , 0 );
setMoveKey( spep_8-3 + 114, 1, 131.4, -69 , 0 );
setMoveKey( spep_8-3 + 116, 1, 133.8, -69 , 0 );
setMoveKey( spep_8-3 + 118, 1, 136.2, -69 , 0 );

setScaleKey( spep_8-3 + 68, 1, 0.17, 0.17 );
setScaleKey( spep_8-3 + 74, 1, 0.17, 0.17 );
setScaleKey( spep_8-3 + 76, 1, 0.16, 0.16 );
setScaleKey( spep_8-3 + 80, 1, 0.16, 0.16 );
setScaleKey( spep_8-3 + 82, 1, 0.15, 0.15 );
setScaleKey( spep_8-3 + 86, 1, 0.15, 0.15 );
setScaleKey( spep_8-3 + 88, 1, 0.14, 0.14 );
setScaleKey( spep_8-3 + 94, 1, 0.14, 0.14 );
setScaleKey( spep_8-3 + 96, 1, 0.13, 0.13 );
setScaleKey( spep_8-3 + 100, 1, 0.13, 0.13 );
setScaleKey( spep_8-3 + 102, 1, 0.12, 0.12 );
setScaleKey( spep_8-3 + 106, 1, 0.12, 0.12 );
setScaleKey( spep_8-3 + 108, 1, 0.11, 0.11 );
setScaleKey( spep_8-3 + 112, 1, 0.11, 0.11 );
setScaleKey( spep_8-3 + 114, 1, 0.1, 0.1 );
setScaleKey( spep_8-3 + 118, 1, 0.1, 0.1 );

setRotateKey( spep_8-3 + 68, 1, 0 );
setRotateKey( spep_8-3 + 72, 1, 0 );
setRotateKey( spep_8-3 + 74, 1, 0.8 );
setRotateKey( spep_8-3 + 76, 1, 1.7 );
setRotateKey( spep_8-3 + 78, 1, 2.5 );
setRotateKey( spep_8-3 + 80, 1, 3.4 );
setRotateKey( spep_8-3 + 82, 1, 4.2 );
setRotateKey( spep_8-3 + 84, 1, 5.1 );
setRotateKey( spep_8-3 + 86, 1, 5.9 );
setRotateKey( spep_8-3 + 88, 1, 6.8 );
setRotateKey( spep_8-3 + 90, 1, 7.6 );
setRotateKey( spep_8-3 + 92, 1, 8.5 );
setRotateKey( spep_8-3 + 94, 1, 9.3 );
setRotateKey( spep_8-3 + 96, 1, 10.2 );
setRotateKey( spep_8-3 + 98, 1, 11 );
setRotateKey( spep_8-3 + 100, 1, 11.9 );
setRotateKey( spep_8-3 + 102, 1, 12.7 );
setRotateKey( spep_8-3 + 104, 1, 13.5 );
setRotateKey( spep_8-3 + 106, 1, 14.4 );
setRotateKey( spep_8-3 + 108, 1, 15.2 );
setRotateKey( spep_8-3 + 110, 1, 16.1 );
setRotateKey( spep_8-3 + 112, 1, 16.9 );
setRotateKey( spep_8-3 + 114, 1, 17.8 );
setRotateKey( spep_8-3 + 116, 1, 18.6 );
setRotateKey( spep_8-3 + 118, 1, 19.5 );

--SE
--岩激突
SE032 = playSeVer2( spep_8 + 10, 1159, "",spep_8 + 166, 0, 74, -1);
SE033 = playSeVer2( spep_8 + 26, 1044, "",spep_8 + 104, 0, 24, -1);
SE034 = playSeVer2( spep_8 + 34, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 34, SE034, 82 );
SE035 = playSeVer2( spep_8 + 40, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 40, SE035, 73 );

--敵飛んでいく
SE036 = playSeVer2( spep_8 + 66, 1183, "",spep_8 + 164, 0, 12, -1);

--岩から飛び出す
SE037 = playSeVer2( spep_8 + 70, 1027, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_8 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_9 = spep_8 + 116;
------------------------------------------------------
--敵が通り抜けた所を先回りしたメタルクウラが蹴り上げる
------------------------------------------------------
-- ** エフェクト等 ** --
kick2_f = entryEffect( spep_9 + 0, SP_14x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, kick2_f, 0, 0, 0 );
setEffMoveKey( spep_9 + 72, kick2_f, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, kick2_f, -1.0, 1.0 );
setEffScaleKey( spep_9 + 72, kick2_f, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, kick2_f, 0 );
setEffRotateKey( spep_9 + 72, kick2_f, 0 );
setEffAlphaKey( spep_9 + 0, kick2_f, 255 );
setEffAlphaKey( spep_9 + 70, kick2_f, 255 );
setEffAlphaKey( spep_9 + 71, kick2_f, 255 );
setEffAlphaKey( spep_9 + 72, kick2_f, 0 );

-- ** エフェクト等 ** --
kick2_b = entryEffect( spep_9 + 0, SP_15x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, kick2_b, 0, 0, 0 );
setEffMoveKey( spep_9 + 72, kick2_b, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, kick2_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 72, kick2_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, kick2_b, 0 );
setEffRotateKey( spep_9 + 72, kick2_b, 0 );
setEffAlphaKey( spep_9 + 0, kick2_b, 255 );
setEffAlphaKey( spep_9 + 70, kick2_b, 255 );
setEffAlphaKey( spep_9 + 71, kick2_b, 255 );
setEffAlphaKey( spep_9 + 72, kick2_b, 0 );

--敵の動き
setDisp( spep_9-3 + 74, 1, 0 );

changeAnime( spep_9 + 0, 1, 107 );
changeAnime( spep_9-3 + 38, 1, 6 );

setMoveKey( spep_9 + 0, 1, -246.5, 358 , 0 );
--setMoveKey( spep_9-3 + 2, 1, -238.7, 355 , 0 );
setMoveKey( spep_9-3 + 4, 1, -229.2, 352 , 0 );
setMoveKey( spep_9-3 + 6, 1, -219.3, 348.8 , 0 );
setMoveKey( spep_9-3 + 8, 1, -209.2, 345.3 , 0 );
setMoveKey( spep_9-3 + 10, 1, -198.9, 341.4 , 0 );
setMoveKey( spep_9-3 + 12, 1, -186.7, 336.7 , 0 );
setMoveKey( spep_9-3 + 14, 1, -172.7, 330.3 , 0 );
setMoveKey( spep_9-3 + 16, 1, -158.3, 322.3 , 0 );
setMoveKey( spep_9-3 + 18, 1, -143.8, 314.3 , 0 );
setMoveKey( spep_9-3 + 20, 1, -129.1, 305.9 , 0 );
setMoveKey( spep_9-3 + 22, 1, -110.7, 296.8 , 0 );
setMoveKey( spep_9-3 + 24, 1, -87.9, 286.6 , 0 );
setMoveKey( spep_9-3 + 26, 1, -65, 273.9 , 0 );
setMoveKey( spep_9-3 + 28, 1, -42.3, 256.7 , 0 );
setMoveKey( spep_9-3 + 30, 1, -20, 235.4 , 0 );
setMoveKey( spep_9-3 + 32, 1, 1.8, 207.9 , 0 );
setMoveKey( spep_9-3 + 34, 1, 23.2, 168.3 , 0 );
setMoveKey( spep_9-3 + 37, 1, 50.5, 48 , 0 );
setMoveKey( spep_9-3 + 38, 1, 43.4, 45.1 , 0 );
setMoveKey( spep_9-3 + 40, 1, 43.4, 57.4 , 0 );
setMoveKey( spep_9-3 + 42, 1, 76.9, 103.1 , 0 );
setMoveKey( spep_9-3 + 44, 1, 44.7, 164.1 , 0 );
setMoveKey( spep_9-3 + 46, 1, 75.1, 287.6 , 0 );
setMoveKey( spep_9-3 + 48, 1, 21.6, 327.2 , 0 );
setMoveKey( spep_9-3 + 50, 1, 69, 416.8 , 0 );
setMoveKey( spep_9-3 + 52, 1, 19.7, 571.9 , 0 );
setMoveKey( spep_9-3 + 54, 1, 20.9, 605.8 , 0 );
setMoveKey( spep_9-3 + 56, 1, 49, 704.5 , 0 );
setMoveKey( spep_9-3 + 58, 1, 77, 803.2 , 0 );
setMoveKey( spep_9-3 + 60, 1, 59.3, 915.6 , 0 );
setMoveKey( spep_9-3 + 62, 1, 41.7, 1028 , 0 );
setMoveKey( spep_9-3 + 64, 1, 43, 1122.5 , 0 );
setMoveKey( spep_9-3 + 66, 1, 44.4, 1217 , 0 );
setMoveKey( spep_9-3 + 68, 1, 45.8, 1311.5 , 0 );
setMoveKey( spep_9-3 + 70, 1, 47.1, 1406 , 0 );
setMoveKey( spep_9-3 + 72, 1, 48.5, 1500.5 , 0 );
setMoveKey( spep_9-3 + 74, 1, 49.9, 1595 , 0 );
--setMoveKey( spep_9-3 + 76, 1, 51.2, 1689.5 , 0 );

setScaleKey( spep_9 + 0, 1, 0.13, 0.13 );
--setScaleKey( spep_9-3 + 2, 1, 0.15, 0.15 );
setScaleKey( spep_9-3 + 4, 1, 0.16, 0.16 );
setScaleKey( spep_9-3 + 6, 1, 0.18, 0.18 );
setScaleKey( spep_9-3 + 8, 1, 0.19, 0.19 );
setScaleKey( spep_9-3 + 10, 1, 0.21, 0.21 );
setScaleKey( spep_9-3 + 12, 1, 0.22, 0.22 );
setScaleKey( spep_9-3 + 14, 1, 0.24, 0.24 );
setScaleKey( spep_9-3 + 16, 1, 0.25, 0.25 );
setScaleKey( spep_9-3 + 18, 1, 0.27, 0.27 );
setScaleKey( spep_9-3 + 20, 1, 0.29, 0.29 );
setScaleKey( spep_9-3 + 22, 1, 0.31, 0.31 );
setScaleKey( spep_9-3 + 24, 1, 0.32, 0.32 );
setScaleKey( spep_9-3 + 26, 1, 0.34, 0.34 );
setScaleKey( spep_9-3 + 28, 1, 0.37, 0.37 );
setScaleKey( spep_9-3 + 30, 1, 0.41, 0.41 );
setScaleKey( spep_9-3 + 32, 1, 0.44, 0.44 );
setScaleKey( spep_9-3 + 34, 1, 0.48, 0.48 );
setScaleKey( spep_9-3 + 37, 1, 0.51, 0.51 );
setScaleKey( spep_9-3 + 38, 1, 1.51, 1.51 );
setScaleKey( spep_9-3 + 74, 1, 1.51, 1.51 );

setRotateKey( spep_9 + 0, 1, 0 );
setRotateKey( spep_9-3 + 37, 1, 0 );
setRotateKey( spep_9-3 + 38, 1, 86.7 );
setRotateKey( spep_9-3 + 74, 1, 86.7 );

--SE
--瞬間移動
SE038 = playSeVer2( spep_9 + 0, 43, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 0, SE038, 130 );
SE039 = playSeVer2( spep_9 + 0, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 0, SE039, 72 );

--蹴り上げる
SE040 = playSeVer2( spep_9 + 36, 1153, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_9 + 36, 1169, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_9 + 36, 1180, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_9 + 36, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 36, SE043, 90 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_10 = spep_9 + 72;
------------------------------------------------------
--敵が回転しながら空へ飛んでいく
------------------------------------------------------
-- ** エフェクト等 ** --
fly2 = entryEffect( spep_10 + 0, SP_16x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, fly2, 0, 0, 0 );
setEffMoveKey( spep_10 + 40, fly2, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, fly2, 1.0, 1.0 );
setEffScaleKey( spep_10 + 40, fly2, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, fly2, 0 );
setEffRotateKey( spep_10 + 40, fly2, 0 );
setEffAlphaKey( spep_10 + 0, fly2, 255 );
setEffAlphaKey( spep_10 + 38, fly2, 255 );
setEffAlphaKey( spep_10 + 39, fly2, 255 );
setEffAlphaKey( spep_10 + 40, fly2, 0 );

--敵の動き
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 + 42, 1, 0 );

changeAnime( spep_10 + 0, 1, 108 );

setMoveKey( spep_10 + 0, 1, 46.1, -179.1 , 0 );
setMoveKey( spep_10 + 2, 1, 42.1, -161 , 0 );
setMoveKey( spep_10 + 4, 1, 39.9, -145.7 , 0 );
setMoveKey( spep_10 + 6, 1, 39.9, -145.7 , 0 );
setMoveKey( spep_10 + 8, 1, 43.8, -119.9 , 0 );
setMoveKey( spep_10 + 10, 1, 69.6, -77.5 , 0 );
setMoveKey( spep_10 + 12, 1, 69.6, -77.5 , 0 );
setMoveKey( spep_10 + 14, 1, 113.9, 7.6 , 0 );
setMoveKey( spep_10 + 16, 1, 113.9, 7.6 , 0 );
setMoveKey( spep_10 + 18, 1, 148, 137.8 , 0 );
setMoveKey( spep_10 + 20, 1, 138.1, 127.9 , 0 );
setMoveKey( spep_10 + 22, 1, 140.5, 144.5 , 0 );
setMoveKey( spep_10 + 24, 1, 129.9, 155.2 , 0 );
setMoveKey( spep_10 + 26, 1, 130.4, 151.5 , 0 );
setMoveKey( spep_10 + 28, 1, 133.3, 154.5 , 0 );
setMoveKey( spep_10 + 30, 1, 139.7, 164.3 , 0 );
setMoveKey( spep_10 + 32, 1, 138.2, 164.8 , 0 );
setMoveKey( spep_10 + 34, 1, 142, 173.7 , 0 );
setMoveKey( spep_10 + 36, 1, 143.5, 173.2 , 0 );
setMoveKey( spep_10 + 38, 1, 150.6, 183.4 , 0 );
setMoveKey( spep_10 + 40, 1, 152.8, 185.6 , 0 );
setMoveKey( spep_10 + 42, 1, 157.4, 193.7 , 0 );

setScaleKey( spep_10 + 0, 1, 4.85, 4.85 );
setScaleKey( spep_10 + 2, 1, 4.63, 4.63 );
setScaleKey( spep_10 + 4, 1, 4.4, 4.4 );
setScaleKey( spep_10 + 6, 1, 4.4, 4.4 );
setScaleKey( spep_10 + 8, 1, 3.96, 3.96 );
setScaleKey( spep_10 + 10, 1, 3.3, 3.3 );
setScaleKey( spep_10 + 12, 1, 3.3, 3.3 );
setScaleKey( spep_10 + 14, 1, 2.42, 2.42 );
setScaleKey( spep_10 + 16, 1, 2.42, 2.42 );
setScaleKey( spep_10 + 18, 1, 1.31, 1.31 );
setScaleKey( spep_10 + 20, 1, 1.31, 1.31 );
setScaleKey( spep_10 + 22, 1, 1.09, 1.09 );
setScaleKey( spep_10 + 24, 1, 1.09, 1.09 );
setScaleKey( spep_10 + 26, 1, 0.97, 0.97 );
setScaleKey( spep_10 + 28, 1, 0.97, 0.97 );
setScaleKey( spep_10 + 30, 1, 0.86, 0.86 );
setScaleKey( spep_10 + 32, 1, 0.86, 0.86 );
setScaleKey( spep_10 + 34, 1, 0.75, 0.75 );
setScaleKey( spep_10 + 36, 1, 0.75, 0.75 );
setScaleKey( spep_10 + 38, 1, 0.63, 0.63 );
setScaleKey( spep_10 + 40, 1, 0.63, 0.63 );
setScaleKey( spep_10 + 42, 1, 0.58, 0.58 );

setRotateKey( spep_10 + 0, 1, 0 );
setRotateKey( spep_10 + 2, 1, -19.7 );
setRotateKey( spep_10 + 4, 1, -39.3 );
setRotateKey( spep_10 + 6, 1, -39.3 );
setRotateKey( spep_10 + 8, 1, -78.6 );
setRotateKey( spep_10 + 10, 1, -137.6 );
setRotateKey( spep_10 + 12, 1, -137.6 );
setRotateKey( spep_10 + 14, 1, -216.2 );
setRotateKey( spep_10 + 16, 1, -216.2 );
setRotateKey( spep_10 + 18, 1, -314.5 );
setRotateKey( spep_10 + 20, 1, -314.5 );
setRotateKey( spep_10 + 22, 1, -393.1 );
setRotateKey( spep_10 + 24, 1, -393.1 );
setRotateKey( spep_10 + 26, 1, -432.4 );
setRotateKey( spep_10 + 28, 1, -432.4 );
setRotateKey( spep_10 + 30, 1, -471.7 );
setRotateKey( spep_10 + 32, 1, -471.7 );
setRotateKey( spep_10 + 34, 1, -511 );
setRotateKey( spep_10 + 36, 1, -511 );
setRotateKey( spep_10 + 38, 1, -550.3 );
setRotateKey( spep_10 + 40, 1, -550.3 );
setRotateKey( spep_10 + 42, 1, -570 );

--SE
--敵飛んでいく
SE044 = playSeVer2( spep_10 + 0, 1121, "",spep_10 + 148, 0, 60, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_10 + 0, 0, 46, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_11 = spep_10 + 40;
------------------------------------------------------
--俯瞰でメタルクウラが画面に向かって追撃しに飛ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
fly3 = entryEffect( spep_11 + 0, SP_17x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, fly3, 0, 0, 0 );
setEffMoveKey( spep_11 + 52, fly3, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, fly3, 1.0, 1.0 );
setEffScaleKey( spep_11 + 52, fly3, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, fly3, 0 );
setEffRotateKey( spep_11 + 52, fly3, 0 );
setEffAlphaKey( spep_11 + 0, fly3, 255 );
setEffAlphaKey( spep_11 + 50, fly3, 255 );
setEffAlphaKey( spep_11 + 51, fly3, 255 );
setEffAlphaKey( spep_11 + 52, fly3, 0 );

--SE
--飛び上がる
SE045 = playSeVer2( spep_11 + 0, 1182, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_11 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 0, SE046, 59 );
setTimeStretch( SE046, 1.25, 30, 4 );
SE047 = playSeVer2( spep_11 + 0, 9, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_11 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_12 = spep_11 + 52;
------------------------------------------------------
--敵の足をつかむ
------------------------------------------------------
-- ** エフェクト等 ** --
catch_f = entryEffect( spep_12 + 0, SP_18x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_12 + 0, catch_f, 0, 0, 0 );
setEffMoveKey( spep_12 + 32, catch_f, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, catch_f, -1.0, 1.0 );
setEffScaleKey( spep_12 + 32, catch_f, -1.0, 1.0 );
setEffRotateKey( spep_12 + 0, catch_f, 0 );
setEffRotateKey( spep_12 + 32, catch_f, 0 );
setEffAlphaKey( spep_12 + 0, catch_f, 255 );
setEffAlphaKey( spep_12 + 30, catch_f, 255 );
setEffAlphaKey( spep_12 + 31, catch_f, 255 );
setEffAlphaKey( spep_12 + 32, catch_f, 0 );

-- ** エフェクト等 ** --
catch_b = entryEffect( spep_12 + 0, SP_19x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_12 + 0, catch_b, 0, 0, 0 );
setEffMoveKey( spep_12 + 32, catch_b, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, catch_b, 1.0, 1.0 );
setEffScaleKey( spep_12 + 32, catch_b, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, catch_b, 0 );
setEffRotateKey( spep_12 + 32, catch_b, 0 );
setEffAlphaKey( spep_12 + 0, catch_b, 255 );
setEffAlphaKey( spep_12 + 30, catch_b, 255 );
setEffAlphaKey( spep_12 + 31, catch_b, 255 );
setEffAlphaKey( spep_12 + 32, catch_b, 0 );

--敵の動き
setDisp( spep_12 + 0, 1, 1 );

changeAnime( spep_12 + 0, 1, 106 );

setMoveKey( spep_12 + 0, 1, 234.9, 381.9 , 0 );
setMoveKey( spep_12 + 2, 1, 242.4, 386.6 , 0 );
setMoveKey( spep_12 + 4, 1, 250, 391.3 , 0 );
setMoveKey( spep_12 + 6, 1, 257.5, 396 , 0 );
setMoveKey( spep_12 + 8, 1, 265, 400.8 , 0 );
setMoveKey( spep_12 + 10, 1, 272.6, 405.5 , 0 );
setMoveKey( spep_12 + 12, 1, 280.1, 410.2 , 0 );
setMoveKey( spep_12 + 14, 1, 287.6, 415 , 0 );
setMoveKey( spep_12 + 16, 1, 295.2, 419.7 , 0 );
setMoveKey( spep_12 + 18, 1, 302.7, 424.4 , 0 );
setMoveKey( spep_12 + 20, 1, 309.9, 432.3 , 0 );
setMoveKey( spep_12 + 22, 1, 298.1, 421.3 , 0 );
setMoveKey( spep_12 + 24, 1, 302.4, 415.3 , 0 );
setMoveKey( spep_12 + 26, 1, 300.6, 414.2 , 0 );
setMoveKey( spep_12 + 28, 1, 298.8, 413.1 , 0 );
setMoveKey( spep_12 + 30, 1, 296.9, 412 , 0 );
setMoveKey( spep_12 -1+ 32, 1, 295.1, 410.9 , 0 );
--setMoveKey( spep_12-1 + 34, 1, 293.3, 409.8 , 0 );

setScaleKey( spep_12 + 0, 1, 4.92, 4.92 );
setScaleKey( spep_12-1 + 32, 1, 4.92, 4.92 );

setRotateKey( spep_12 + 0, 1, -14.8 );
setRotateKey( spep_12-1 + 32, 1, -14.8 );

--SE
--足つかむ
SE048 = playSeVer2( spep_12 + 10, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 10, SE048, 116 );
SE049 = playSeVer2( spep_12 + 16, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 16, SE049, 141 );

-- ** くろ背景 ** --
entryFadeBg( spep_12 + 0, 0, 40, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_13 = spep_12 + 32;
------------------------------------------------------
--メタルクウラが敵を掴みながら空から落ちてくる
------------------------------------------------------
-- ** エフェクト等 ** --
down_f = entryEffect( spep_13 + 0, SP_20x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_13 + 0, down_f, 0, 0, 0 );
setEffMoveKey( spep_13 + 56, down_f, 0, 0, 0 );
setEffScaleKey( spep_13 + 0, down_f, 1.0, 1.0 );
setEffScaleKey( spep_13 + 56, down_f, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, down_f, 0 );
setEffRotateKey( spep_13 + 56, down_f, 0 );
setEffAlphaKey( spep_13 + 0, down_f, 255 );
setEffAlphaKey( spep_13 + 54, down_f, 255 );
setEffAlphaKey( spep_13 + 55, down_f, 255 );
setEffAlphaKey( spep_13 + 56, down_f, 0 );

-- ** エフェクト等 ** --
down_b = entryEffect( spep_13 + 0, SP_21x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_13 + 0, down_b, 0, 0, 0 );
setEffMoveKey( spep_13 + 56, down_b, 0, 0, 0 );
setEffScaleKey( spep_13 + 0, down_b, 1.0, 1.0 );
setEffScaleKey( spep_13 + 56, down_b, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, down_b, 0 );
setEffRotateKey( spep_13 + 56, down_b, 0 );
setEffAlphaKey( spep_13 + 0, down_b, 255 );
setEffAlphaKey( spep_13 + 54, down_b, 255 );
setEffAlphaKey( spep_13 + 55, down_b, 255 );
setEffAlphaKey( spep_13 + 56, down_b, 0 );

--敵の動き
setDisp( spep_13-3 + 52, 1, 0 );

changeAnime( spep_13 + 0, 1, 106 );

setMoveKey( spep_13 + 0, 1, 54.2, 372.5 , 0 );
setMoveKey( spep_13-3 + 4, 1, 63, 377 , 0 );
setMoveKey( spep_13-3 + 5, 1, 63, 377 , 0 );
setMoveKey( spep_13-3 + 6, 1, 63, 377 , 0 );
setMoveKey( spep_13-3 + 7, 1, 63, 377 , 0 );
setMoveKey( spep_13-3 + 8, 1, 71.8, 381.4 , 0 );
setMoveKey( spep_13-3 + 9, 1, 71.8, 381.4 , 0 );
setMoveKey( spep_13-3 + 10, 1, 71.8, 381.4 , 0 );
setMoveKey( spep_13-3 + 11, 1, 71.8, 381.4 , 0 );
setMoveKey( spep_13-3 + 12, 1, 89.4, 390.2 , 0 );
setMoveKey( spep_13-3 + 13, 1, 89.4, 390.2 , 0 );
setMoveKey( spep_13-3 + 14, 1, 89.4, 390.2 , 0 );
setMoveKey( spep_13-3 + 15, 1, 89.4, 390.2 , 0 );
setMoveKey( spep_13-3 + 16, 1, 107, 399.1 , 0 );
setMoveKey( spep_13-3 + 17, 1, 107, 399.1 , 0 );
setMoveKey( spep_13-3 + 18, 1, 107, 399.1 , 0 );
setMoveKey( spep_13-3 + 19, 1, 107, 399.1 , 0 );
setMoveKey( spep_13-3 + 20, 1, 124.6, 407.9 , 0 );
setMoveKey( spep_13-3 + 21, 1, 124.6, 407.9 , 0 );
setMoveKey( spep_13-3 + 22, 1, 124.6, 407.9 , 0 );
setMoveKey( spep_13-3 + 23, 1, 124.6, 407.9 , 0 );
setMoveKey( spep_13-3 + 24, 1, 142.2, 416.8 , 0 );
setMoveKey( spep_13-3 + 25, 1, 142.2, 416.8 , 0 );
setMoveKey( spep_13-3 + 26, 1, 142.2, 416.8 , 0 );
setMoveKey( spep_13-3 + 27, 1, 142.2, 416.8 , 0 );
setMoveKey( spep_13-3 + 28, 1, 159.8, 425.6 , 0 );
setMoveKey( spep_13-3 + 29, 1, 159.8, 425.6 , 0 );
setMoveKey( spep_13-3 + 30, 1, 159.8, 425.6 , 0 );
setMoveKey( spep_13-3 + 31, 1, 159.8, 425.6 , 0 );
setMoveKey( spep_13-3 + 32, 1, 177.4, 434.5 , 0 );
setMoveKey( spep_13-3 + 33, 1, 177.4, 434.5 , 0 );
setMoveKey( spep_13-3 + 34, 1, 177.4, 434.5 , 0 );
setMoveKey( spep_13-3 + 35, 1, 177.4, 434.5 , 0 );
setMoveKey( spep_13-3 + 36, 1, 212.6, 452.1 , 0 );
setMoveKey( spep_13-3 + 37, 1, 212.6, 452.1 , 0 );
setMoveKey( spep_13-3 + 38, 1, 212.6, 452.1 , 0 );
setMoveKey( spep_13-3 + 39, 1, 212.6, 452.1 , 0 );
setMoveKey( spep_13-3 + 40, 1, 342.2, 527.3 , 0 );
setMoveKey( spep_13-3 + 41, 1, 342.2, 527.3 , 0 );
setMoveKey( spep_13-3 + 42, 1, 342.2, 527.3 , 0 );
setMoveKey( spep_13-3 + 43, 1, 342.2, 527.3 , 0 );
setMoveKey( spep_13-3 + 44, 1, 470.2, 604 , 0 );
setMoveKey( spep_13-3 + 45, 1, 470.2, 604 , 0 );
setMoveKey( spep_13-3 + 46, 1, 470.2, 604 , 0 );
setMoveKey( spep_13-3 + 47, 1, 470.2, 604 , 0 );
setMoveKey( spep_13-3 + 48, 1, 596.6, 682.3 , 0 );
setMoveKey( spep_13-3 + 49, 1, 596.6, 682.3 , 0 );
setMoveKey( spep_13-3 + 50, 1, 596.6, 682.3 , 0 );
setMoveKey( spep_13-3 + 51, 1, 596.6, 682.3 , 0 );
setMoveKey( spep_13-3 + 52, 1, 1546.5, 1362.2 , 0 );

setScaleKey( spep_13 + 0, 1, 0.32, 0.32 );
setScaleKey( spep_13-3 + 4, 1, 0.39, 0.39 );
setScaleKey( spep_13-3 + 6, 1, 0.39, 0.39 );
setScaleKey( spep_13-3 + 7, 1, 0.39, 0.39 );
setScaleKey( spep_13-3 + 8, 1, 0.46, 0.46 );
setScaleKey( spep_13-3 + 10, 1, 0.46, 0.46 );
setScaleKey( spep_13-3 + 11, 1, 0.46, 0.46 );
setScaleKey( spep_13-3 + 12, 1, 0.61, 0.61 );
setScaleKey( spep_13-3 + 14, 1, 0.61, 0.61 );
setScaleKey( spep_13-3 + 15, 1, 0.61, 0.61 );
setScaleKey( spep_13-3 + 16, 1, 0.75, 0.75 );
setScaleKey( spep_13-3 + 18, 1, 0.75, 0.75 );
setScaleKey( spep_13-3 + 19, 1, 0.75, 0.75 );
setScaleKey( spep_13-3 + 20, 1, 0.89, 0.89 );
setScaleKey( spep_13-3 + 22, 1, 0.89, 0.89 );
setScaleKey( spep_13-3 + 23, 1, 0.89, 0.89 );
setScaleKey( spep_13-3 + 24, 1, 1.03, 1.03 );
setScaleKey( spep_13-3 + 26, 1, 1.03, 1.03 );
setScaleKey( spep_13-3 + 27, 1, 1.03, 1.03 );
setScaleKey( spep_13-3 + 28, 1, 1.18, 1.18 );
setScaleKey( spep_13-3 + 30, 1, 1.18, 1.18 );
setScaleKey( spep_13-3 + 31, 1, 1.18, 1.18 );
setScaleKey( spep_13-3 + 32, 1, 1.32, 1.32 );
setScaleKey( spep_13-3 + 34, 1, 1.32, 1.32 );
setScaleKey( spep_13-3 + 35, 1, 1.32, 1.32 );
setScaleKey( spep_13-3 + 36, 1, 1.6, 1.6 );
setScaleKey( spep_13-3 + 38, 1, 1.6, 1.6 );
setScaleKey( spep_13-3 + 39, 1, 1.6, 1.6 );
setScaleKey( spep_13-3 + 40, 1, 2.5, 2.5 );
setScaleKey( spep_13-3 + 42, 1, 2.5, 2.5 );
setScaleKey( spep_13-3 + 43, 1, 2.5, 2.5 );
setScaleKey( spep_13-3 + 44, 1, 3.39, 3.39 );
setScaleKey( spep_13-3 + 46, 1, 3.39, 3.39 );
setScaleKey( spep_13-3 + 47, 1, 3.39, 3.39 );
setScaleKey( spep_13-3 + 48, 1, 4.29, 4.29 );
setScaleKey( spep_13-3 + 50, 1, 4.29, 4.29 );
setScaleKey( spep_13-3 + 51, 1, 4.29, 4.29 );
setScaleKey( spep_13-3 + 52, 1, 11.44, 11.44 );

setRotateKey( spep_13 + 0, 1, 10 );
setRotateKey( spep_13-3 + 38, 1, 10 );
setRotateKey( spep_13-3 + 39, 1, 10 );
setRotateKey( spep_13-3 + 40, 1, 9.2 );
setRotateKey( spep_13-3 + 42, 1, 9.2 );
setRotateKey( spep_13-3 + 43, 1, 9.2 );
setRotateKey( spep_13-3 + 44, 1, 8.5 );
setRotateKey( spep_13-3 + 46, 1, 8.5 );
setRotateKey( spep_13-3 + 47, 1, 8.5 );
setRotateKey( spep_13-3 + 48, 1, 7.8 );
setRotateKey( spep_13-3 + 50, 1, 7.8 );
setRotateKey( spep_13-3 + 51, 1, 7.8 );
setRotateKey( spep_13-3 + 52, 1, 2.2 );

--SE
--落下
SE050 = playSeVer2( spep_13 + 0, 1116, "",spep_13 + 56, 0, 22, -1);
setSeVolumeByWorkId( spep_13 + 0, SE050, 119 );
SE051 = playSeVer2( spep_13 + 6, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE051,  100 );
SE052 = playSeVer2( spep_13 + 2, 63, "",spep_13 + 72, 0, 20, 0.6);
setSeVolumeByWorkId( spep_13 + 2, SE052, 178 );
setPitch( spep_13 + 2, SE052, -600 );
setTimeStretch( SE052, 0.6, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_13 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_14 = spep_13 + 56;
------------------------------------------------------
--敵を崖に叩きつける
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_14 + 0, SP_22x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_14 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_14 + 138, finish_f, 0, 0, 0 );
setEffScaleKey( spep_14 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_14 + 138, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_14 + 0, finish_f, 0 );
setEffRotateKey( spep_14 + 138, finish_f, 0 );
setEffAlphaKey( spep_14 + 0, finish_f, 255 );
setEffAlphaKey( spep_14 + 138, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_14 + 0, SP_23x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_14 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_14 + 138, finish_b, 0, 0, 0 );
setEffScaleKey( spep_14 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_14 + 138, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_14 + 0, finish_b, 0 );
setEffRotateKey( spep_14 + 138, finish_b, 0 );
setEffAlphaKey( spep_14 + 0, finish_b, 255 );
setEffAlphaKey( spep_14 + 138, finish_b, 255 );

--敵の動き
setDisp( spep_14 + 0, 1, 1 );
setDisp( spep_14 + 10, 1, 0 );

changeAnime( spep_14 + 0, 1, 106 );

setMoveKey( spep_14 + 0, 1, 16.8, 65.2 , 0 );
setMoveKey( spep_14-3 + 4, 1, 20.3, 66.7 , 0 );
setMoveKey( spep_14-3 + 5, 1, 20.3, 66.7 , 0 );
setMoveKey( spep_14-3 + 6, 1, -47.9, 22.5 , 0 );
setMoveKey( spep_14-3 + 7, 1, -47.9, 22.5 , 0 );
setMoveKey( spep_14-3 + 8, 1, -46.1, 23.2 , 0 );
setMoveKey( spep_14-3 + 9, 1, -46.1, 23.2 , 0 );
setMoveKey( spep_14 + 10, 1, -44.3, 23.9 , 0 );

setScaleKey( spep_14 + 0, 1, 0.55, 0.55 );
setScaleKey( spep_14 + 10, 1, 0.55, 0.55 );

setRotateKey( spep_14 + 0, 1, -30.7 );
setRotateKey( spep_14 + 10, 1, -30.7 );

--敵の動き
setDisp( spep_14-3 + 14, 1, 1 );
setDisp( spep_14-1 + 44, 1, 0 );

changeAnime( spep_14-3 + 14, 1, 106 );

setMoveKey( spep_14-3 + 14, 1, -103.9, -205.9 , 0 );
setMoveKey( spep_14-3 + 15, 1, -103.9, -205.9 , 0 );
setMoveKey( spep_14-3 + 16, 1, -128.4, -260 , 0 );
setMoveKey( spep_14-3 + 17, 1, -128.4, -260 , 0 );
setMoveKey( spep_14-3 + 18, 1, -126.5, -228.8 , 0 );
setMoveKey( spep_14-3 + 19, 1, -126.5, -228.8 , 0 );
setMoveKey( spep_14-3 + 20, 1, -74.3, -270.7 , 0 );
setMoveKey( spep_14-3 + 21, 1, -74.3, -270.7 , 0 );
setMoveKey( spep_14-3 + 22, 1, -137.4, -290.8 , 0 );
setMoveKey( spep_14-3 + 23, 1, -137.4, -290.8 , 0 );
setMoveKey( spep_14-3 + 24, 1, -153, -244 , 0 );
setMoveKey( spep_14-3 + 25, 1, -153, -244 , 0 );
setMoveKey( spep_14-3 + 26, 1, -108.3, -208.1 , 0 );
setMoveKey( spep_14-3 + 27, 1, -108.3, -208.1 , 0 );
setMoveKey( spep_14-3 + 28, 1, -86.7, -237 , 0 );
setMoveKey( spep_14-3 + 29, 1, -86.7, -237 , 0 );
setMoveKey( spep_14-3 + 30, 1, -65.1, -265.9 , 0 );
setMoveKey( spep_14-3 + 31, 1, -65.1, -265.9 , 0 );
setMoveKey( spep_14-3 + 32, 1, -74.9, -272.2 , 0 );
setMoveKey( spep_14-3 + 33, 1, -74.9, -272.2 , 0 );
setMoveKey( spep_14-3 + 34, 1, -84.7, -278.5 , 0 );
setMoveKey( spep_14-3 + 35, 1, -84.7, -278.5 , 0 );
setMoveKey( spep_14-3 + 36, 1, -94.4, -284.7 , 0 );
setMoveKey( spep_14-3 + 37, 1, -94.4, -284.7 , 0 );
setMoveKey( spep_14-3 + 38, 1, -99.8, -277.4 , 0 );
setMoveKey( spep_14-3 + 39, 1, -99.8, -277.4 , 0 );
setMoveKey( spep_14-3 + 40, 1, -105.2, -270.1 , 0 );
setMoveKey( spep_14-3 + 41, 1, -105.2, -270.1 , 0 );
setMoveKey( spep_14-3 + 42, 1, -110.6, -262.8 , 0 );
setMoveKey( spep_14-3 + 43, 1, -110.6, -262.8 , 0 );
setMoveKey( spep_14-3 + 44, 1, -116, -255.5 , 0 );
setMoveKey( spep_14-3 + 45, 1, -116, -255.5 , 0 );
setMoveKey( spep_14-3 + 46, 1, -114.1, -251.9 , 0 );

setScaleKey( spep_14-3 + 14, 1, 0.5, 0.5 );
setScaleKey( spep_14-3 + 46, 1, 0.5, 0.5 );

setRotateKey( spep_14-3 + 14, 1, -169 );
setRotateKey( spep_14-3 + 46, 1, -169 );

--SE
--岩激突
SE053 = playSeVer2( spep_14 + 10, 1067, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_14 + 10, 1159, "", 0, 0, 0, -1);

--爆発
SE055 = playSeVer2( spep_14 + 56, 1188, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_14 + 56, 1068, "", 0, 0, 0, -1);

-- 終わり
dealDamage(spep_14+14);
endPhase( spep_14 + 128 );
end