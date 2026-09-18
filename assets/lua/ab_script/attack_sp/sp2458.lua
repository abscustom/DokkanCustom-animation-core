--1025310:超フルパワーサイヤ人4・限界突破孫悟空(ゼノ)_ フルパワー10倍かめはめ波(UR)
--sp_effect_a1_00377

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
SP_01=	160917	;--	開幕〜かめはめ波を構える
SP_02=	160918	;--	かめはめ波を構える
SP_03=	160919	;--	かめはめ波を構える
SP_04=	160920	;--	手元アップ～横顔咆哮
SP_05=	161044	;--	かめはめ波発射の構え
SP_06=	160923	;--	かめはめ波を打つ悟空背面～敵HIT
SP_07=	160924	;--	かめはめ波を打つ悟空背面～敵HIT
SP_08=	160927	;--	より大きくなるかめはめ波
SP_09=	160928	;--	気弾に押されて飛んでく敵〜フィニッシュ
SP_10=	160929	;--	気弾に押されて飛んでく敵〜フィニッシュ
SP_11=	160921	;--	かめはめ波発射の構え

--エフェクト(敵)
SP_01x=	160917	;--	開幕〜かめはめ波を構える	
SP_02x=	160918	;--	かめはめ波を構える	
SP_03x=	160919	;--	かめはめ波を構える	
SP_04x=	160920	;--	手元アップ～横顔咆哮	
SP_05x=	161044	;--	かめはめ波発射の構え
SP_06x=	160925	;--	かめはめ波を打つ悟空背面～敵HIT	(敵)
SP_07x=	160926	;--	かめはめ波を打つ悟空背面～敵HIT	(敵)
SP_08x=	161006	;--	より大きくなるかめはめ波	
SP_09x=	160928	;--	気弾に押されて飛んでく敵〜フィニッシュ	
SP_10x=	160929	;--	気弾に押されて飛んでく敵〜フィニッシュ	
SP_11x=	160922	;--	かめはめ波発射の構え	(敵)

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
--開幕〜かめはめ波を構える
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, first, 0, 0, 0 );
setEffMoveKey( spep_0 + 234, first, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first, 1.0, 1.0 );
setEffScaleKey( spep_0 + 234, first, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 234, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 232, first, 255 );
setEffAlphaKey( spep_0 + 233, first, 255 );
setEffAlphaKey( spep_0 + 234, first, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
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
]]--
--SE
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 464, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 164 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--かめはめ波溜め
SE004 = playSeVer2( spep_0 + 120, 1209, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 146, 1209, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 146, 1210, "",spep_0 + 464, 0, 10, -1);

--構える
SE007 = playSeVer2( spep_0 + 190, 1004, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1= spep_0 + 234;
------------------------------------------------------
--かめはめ波を構える
------------------------------------------------------
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 100, tame_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame_f, 0 );
setEffRotateKey( spep_1 + 100, tame_f, 0 );
setEffAlphaKey( spep_1 + 0, tame_f, 255 );
setEffAlphaKey( spep_1 + 98, tame_f, 255 );
setEffAlphaKey( spep_1 + 99, tame_f, 255 );
setEffAlphaKey( spep_1 + 100, tame_f, 0 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 100, tame_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame_b, 0 );
setEffRotateKey( spep_1 + 100, tame_b, 0 );
setEffAlphaKey( spep_1 + 0, tame_b, 255 );
setEffAlphaKey( spep_1 + 98, tame_b, 255 );
setEffAlphaKey( spep_1 + 99, tame_b, 255 );
setEffAlphaKey( spep_1 + 100, tame_b, 0 );

--敵の動き
setDisp( spep_1-3 + 12, 1, 1);
setDisp( spep_1-1 + 100, 1, 0);

changeAnime( spep_1-3 + 12, 1, 100);

setMoveKey( spep_1-3 + 12 , 1, 417.1, 421 , 0 );
setMoveKey( spep_1-3 + 14 , 1, 332, 382.7 , 0 );
setMoveKey( spep_1-3 + 16 , 1, 255.5, 332.2 , 0 );
setMoveKey( spep_1-3 + 18 , 1, 187.6, 269.7 , 0 );
setMoveKey( spep_1-3 + 20 , 1, 128.3, 194.9 , 0 );
setMoveKey( spep_1-3 + 22 , 1, 128.1, 194.4 , 0 );
setMoveKey( spep_1-3 + 24 , 1, 127.9, 193.7 , 0 );
setMoveKey( spep_1-3 + 26 , 1, 127.7, 193.2 , 0 );
setMoveKey( spep_1-3 + 28 , 1, 127.5, 192.7 , 0 );
setMoveKey( spep_1-3 + 30 , 1, 127.3, 192.1 , 0 );
setMoveKey( spep_1-3 + 32 , 1, 127.1, 191.5 , 0 );
setMoveKey( spep_1-3 + 34 , 1, 127, 190.9 , 0 );
setMoveKey( spep_1-3 + 36 , 1, 126.8, 190.4 , 0 );
setMoveKey( spep_1-3 + 38 , 1, 126.6, 189.8 , 0 );
setMoveKey( spep_1-3 + 40 , 1, 126.4, 189.2 , 0 );
setMoveKey( spep_1-3 + 42 , 1, 115.1, 203.8 , 0 );
setMoveKey( spep_1-3 + 44 , 1, 127.4, 167.3 , 0 );
setMoveKey( spep_1-3 + 46 , 1, 138.3, 209.5 , 0 );
setMoveKey( spep_1-3 + 48 , 1, 107.8, 163.5 , 0 );
setMoveKey( spep_1-3 + 50 , 1, 146, 182.2 , 0 );
setMoveKey( spep_1-3 + 52 , 1, 145.8, 151.5 , 0 );
setMoveKey( spep_1-3 + 54 , 1, 123.8, 189.2 , 0 );
setMoveKey( spep_1-3 + 56 , 1, 157.6, 181.8 , 0 );
setMoveKey( spep_1-3 + 58 , 1, 124.8, 184 , 0 );
setMoveKey( spep_1-3 + 60 , 1, 124.6, 183.5 , 0 );
setMoveKey( spep_1-3 + 62 , 1, 124.3, 182.9 , 0 );
setMoveKey( spep_1-3 + 64 , 1, 124.2, 182.3 , 0 );
setMoveKey( spep_1-3 + 66 , 1, 124, 181.7 , 0 );
setMoveKey( spep_1-3 + 68 , 1, 123.8, 181.2 , 0 );
setMoveKey( spep_1-3 + 70 , 1, 123.7, 180.6 , 0 );
setMoveKey( spep_1-3 + 72 , 1, 123.5, 180 , 0 );
setMoveKey( spep_1-3 + 74 , 1, 123.3, 179.4 , 0 );
setMoveKey( spep_1-3 + 76 , 1, 123.1, 178.8 , 0 );
setMoveKey( spep_1-3 + 78 , 1, 122.9, 178.3 , 0 );
setMoveKey( spep_1-3 + 80 , 1, 122.7, 177.7 , 0 );
setMoveKey( spep_1-3 + 82 , 1, 122.5, 177.1 , 0 );
setMoveKey( spep_1-3 + 84 , 1, 122.4, 176.5 , 0 );
setMoveKey( spep_1-3 + 86 , 1, 122.2, 176 , 0 );
setMoveKey( spep_1-3 + 88 , 1, 122, 175.4 , 0 );
setMoveKey( spep_1-3 + 90 , 1, 121.8, 174.8 , 0 );
setMoveKey( spep_1-3 + 92 , 1, 121.6, 174.3 , 0 );
setMoveKey( spep_1-3 + 94 , 1, 121.4, 173.7 , 0 );
setMoveKey( spep_1-3 + 96 , 1, 121.3, 173.1 , 0 );
setMoveKey( spep_1-3 + 98 , 1, 121, 172.6 , 0 );
setMoveKey( spep_1-1 + 100 , 1, 120.9, 172 , 0 );

setScaleKey( spep_1-3 + 12, 1, 0.57, 0.57 );
setScaleKey( spep_1-3 + 14, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 16, 1, 0.41, 0.41 );
setScaleKey( spep_1-3 + 18, 1, 0.32, 0.32 );
setScaleKey( spep_1-3 + 20, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 22, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 24, 1, 0.21, 0.21 );
setScaleKey( spep_1-1 + 100, 1, 0.21, 0.21 );

setRotateKey( spep_1-3 + 12, 1, 0 );
setRotateKey( spep_1-1 + 100, 1, 0 );

--SE
--爆風
SE009 = playSeVer2( spep_1 + 38, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 38, SE009, 78 );
SE010 = playSeVer2( spep_1 + 38, 1259, "",spep_1 + 222, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 38, SE010, 79 );
SE011 = playSeVer2( spep_1 + 44, 1258, "",spep_1 + 222, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 44, SE011, 84 );

-- ** 次の準備 ** --
spep_2= spep_1 + 100;
------------------------------------------------------
--手元アップ～横顔咆哮
------------------------------------------------------
-- ** エフェクト等 ** --
roar = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, roar, 0, 0, 0 );
setEffMoveKey( spep_2 + 112, roar, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, roar, 1.0, 1.0 );
setEffScaleKey( spep_2 + 112, roar, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, roar, 0 );
setEffRotateKey( spep_2 + 112, roar, 0 );
setEffAlphaKey( spep_2 + 0, roar, 255 );
setEffAlphaKey( spep_2 + 112, roar, 255 );

--SE
--かめはめ波合わせる
SE012 = playSeVer2( spep_2 + 0, 1154, "",spep_2 + 114, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 0, SE012, 114 );

--かめはめ波大きく
SE013 = playSeVer2( spep_2 + 34, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 34, SE013, 130 );
SE014 = playSeVer2( spep_2 + 34, 1225, "",spep_2 + 114, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 34, SE014, 226 );

--顔アップ
SE015 = playSeVer2( spep_2 + 70, 1116, "",spep_2 + 106, 0, 14, -1);

--白フェード
entryFade( spep_2 +106 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 112;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 次の準備 ** --
entryFade( spep_3 + 82, 4, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;
------------------------------------------------------
--かめはめ波発射の構え
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 28, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 28, beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 28, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 26, beam, 255 );
setEffAlphaKey( spep_4 + 27, beam, 255 );
setEffAlphaKey( spep_4 + 28, beam, 0 );

-- ** エフェクト等 ** --
beam2 = entryEffect( spep_4 + 28, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 28, beam2, 0, 0, 0 );
setEffMoveKey( spep_4 + 82, beam2, 0, 0, 0 );
setEffScaleKey( spep_4 + 28, beam2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 82, beam2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 28, beam2, 0 );
setEffRotateKey( spep_4 + 82, beam2, 0 );
setEffAlphaKey( spep_4 + 28, beam2, 255 );
setEffAlphaKey( spep_4 + 80, beam2, 255 );
setEffAlphaKey( spep_4 + 81, beam2, 255 );
setEffAlphaKey( spep_4 + 82, beam2, 0 );


--SE
--発射前溜め
SE008 = playSeVer2( spep_4 + 0, 1210, "",spep_4 + 74, 12, 24, -1);
setStartTimeMs( SE008,  5283 );
SE017 = playSeVer2( spep_4 + 10, 1356, "",spep_4 + 68, 0, 20, -1);
setSeVolumeByWorkId( spep_4 + 10, SE017, 79 );

--かめはめ波発射
SE018 = playSeVer2( spep_4 + 30, 1133, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_4 + 30, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 30, SE019, 81 );
SE020 = playSeVer2( spep_4 + 30, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 30, SE020, 87 );

-- ** 次の準備 ** --
spep_5= spep_4 + 82;
------------------------------------------------------
--かめはめ波を打つ悟空背面～敵HIT
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 102, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 102, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 102, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 100, hit_f, 255 );
setEffAlphaKey( spep_5 + 101, hit_f, 255 );
setEffAlphaKey( spep_5 + 102, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 102, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 102, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 102, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 100, hit_b, 255 );
setEffAlphaKey( spep_5 + 101, hit_b, 255 );
setEffAlphaKey( spep_5 + 102, hit_b, 0 );

--SE
--かめはめ波飛んでいく
SE021 = playSeVer2( spep_5 + 0, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 0, SE021, 79 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    stopSe( SP_dodge - 12, SE019, 0 );
    stopSe( SP_dodge - 12, SE020, 0 );
    stopSe( SP_dodge - 12, SE021, 0 );
    
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
--敵の動き
setDisp( spep_5-3 + 42, 1, 1);
setDisp( spep_5 + 102, 1, 0);

changeAnime( spep_5-3 + 42, 1, 104);
changeAnime( spep_5-3 + 78, 1, 108);

setMoveKey( spep_5-3 + 42, 1, 759.2, 1477.5 , 0 );
setMoveKey( spep_5-3 + 44, 1, 766.2, 1413.8 , 0 );
setMoveKey( spep_5-3 + 46, 1, 664.3, 1241.1 , 0 );
setMoveKey( spep_5-3 + 48, 1, 696.5, 1173.4 , 0 );
setMoveKey( spep_5-3 + 50, 1, 577.5, 1110.1 , 0 );
setMoveKey( spep_5-3 + 52, 1, 586, 1047.3 , 0 );
setMoveKey( spep_5-3 + 54, 1, 511.8, 913.9 , 0 );
setMoveKey( spep_5-3 + 56, 1, 466.6, 822 , 0 );
setMoveKey( spep_5-3 + 58, 1, 421.3, 730.1 , 0 );
setMoveKey( spep_5-3 + 60, 1, 376.1, 638.1 , 0 );
setMoveKey( spep_5-3 + 62, 1, 330.9, 546.2 , 0 );
setMoveKey( spep_5-3 + 64, 1, 285.7, 454.3 , 0 );
setMoveKey( spep_5-3 + 66, 1, 240.4, 362.4 , 0 );
setMoveKey( spep_5-3 + 68, 1, 195.2, 270.4 , 0 );
setMoveKey( spep_5-3 + 70, 1, 150, 178.5 , 0 );
setMoveKey( spep_5-3 + 72, 1, 104.8, 86.6 , 0 );
setMoveKey( spep_5-3 + 74, 1, 94, 77 , 0 );
setMoveKey( spep_5-3 + 76, 1, 47.2, 83.5 , 0 );
setMoveKey( spep_5-3 + 77, 1, 47.2, 83.5 , 0 );

setMoveKey( spep_5-3 + 78, 1, 100.6, 77.8 , 0 );
setMoveKey( spep_5-3 + 80, 1, 123.7, 121.5 , 0 );
setMoveKey( spep_5-3 + 82, 1, 66.8, 60.9 , 0 );
setMoveKey( spep_5-3 + 84, 1, 74, 104.5 , 0 );
setMoveKey( spep_5-3 + 86, 1, 97.2, 60 , 0 );
setMoveKey( spep_5-3 + 88, 1, 36.2, 51.4 , 0 );
setMoveKey( spep_5-3 + 90, 1, -4.7, -25.1 , 0 );
setMoveKey( spep_5-3 + 92, 1, 70.6, 102.6 , 0 );
setMoveKey( spep_5-3 + 94, 1, 93.7, 58.1 , 0 );
setMoveKey( spep_5-3 + 96, 1, 32.8, 49.6 , 0 );
setMoveKey( spep_5-3 + 98, 1, -8.1, -27 , 0 );
setMoveKey( spep_5-3 + 100, 1, 63.1, 52.6 , 0 );
setMoveKey( spep_5-3 + 102, 1, 52.4, 43 , 0 );
setMoveKey( spep_5-1 + 104, 1, 41.7, 33.4 , 0 );
--setMoveKey( spep_5-3 + 106, 1, 31, 23.8 , 0 );

setScaleKey( spep_5-3 + 42, 1, 1.45, 1.45 );
setScaleKey( spep_5-3 + 44, 1, 1.46, 1.46 );
setScaleKey( spep_5-3 + 46, 1, 1.47, 1.47 );
setScaleKey( spep_5-3 + 48, 1, 1.48, 1.48 );
setScaleKey( spep_5-3 + 50, 1, 1.49, 1.49 );
setScaleKey( spep_5-3 + 52, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 54, 1, 1.51, 1.51 );
setScaleKey( spep_5-3 + 56, 1, 1.52, 1.52 );
setScaleKey( spep_5-3 + 58, 1, 1.53, 1.53 );
setScaleKey( spep_5-3 + 60, 1, 1.54, 1.54 );
setScaleKey( spep_5-3 + 62, 1, 1.55, 1.55 );
setScaleKey( spep_5-3 + 64, 1, 1.56, 1.56 );
setScaleKey( spep_5-3 + 66, 1, 1.57, 1.57 );
setScaleKey( spep_5-3 + 68, 1, 1.58, 1.58 );
setScaleKey( spep_5-3 + 70, 1, 1.59, 1.59 );
setScaleKey( spep_5-3 + 72, 1, 1.6, 1.6 );
setScaleKey( spep_5-3 + 77, 1, 1.6, 1.6 );

setScaleKey( spep_5-3 + 78, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 102, 1, 1.6, 1.6 );

setRotateKey( spep_5-3 + 42, 1, 0 );
setRotateKey( spep_5-3 + 77, 1, 0 );

setRotateKey( spep_5-3 + 78, 1, -32.4 );
setRotateKey( spep_5-3 + 80, 1, -31.2 );
setRotateKey( spep_5-3 + 82, 1, -29.9 );
setRotateKey( spep_5-3 + 84, 1, -28.7 );
setRotateKey( spep_5-3 + 86, 1, -27.4 );
setRotateKey( spep_5-3 + 88, 1, -26.2 );
setRotateKey( spep_5-3 + 90, 1, -24.9 );
setRotateKey( spep_5-3 + 92, 1, -23.7 );
setRotateKey( spep_5-3 + 94, 1, -22.4 );
setRotateKey( spep_5-3 + 96, 1, -21.2 );
setRotateKey( spep_5-3 + 98, 1, -19.9 );
setRotateKey( spep_5-3 + 100, 1, -18.7 );
setRotateKey( spep_5 + 102, 1, -18.7 );

--SE
--敵ヒット
SE022 = playSeVer2( spep_5 + 76, 1011, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_5 + 76, 1024, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_6= spep_5 + 102;
------------------------------------------------------
--より大きくなるかめはめ波
------------------------------------------------------
-- ** エフェクト等 ** --
big = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, big, 0, 0, 0 );
setEffMoveKey( spep_6 + 84, big, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, big, 1.0, 1.0 );
setEffScaleKey( spep_6 + 84, big, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, big, 0 );
setEffRotateKey( spep_6 + 84, big, 0 );
setEffAlphaKey( spep_6 + 0, big, 255 );
setEffAlphaKey( spep_6 + 82, big, 255 );
setEffAlphaKey( spep_6 + 83, big, 255 );
setEffAlphaKey( spep_6 + 84, big, 0 );

--SE
--威力アップ
SE024 = playSeVer2( spep_6 + 12, 1161, "",spep_6 + 214, 0, 40, -1);
SE025 = playSeVer2( spep_6 + 12, 1258, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_7= spep_6 + 84;
------------------------------------------------------
--気弾に押されて飛んでく敵〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 160, finish_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 160, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 160, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 160, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 160, finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 160, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 160, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 160, finish_b, 255 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );

changeAnime( spep_7 + 0, 1, 108 );

setMoveKey( spep_7 + 0, 1, -36.5, -62.9 , 0 );
--setMoveKey( spep_7-3 + 2, 1, -20.7, -56.9 , 0 );
setMoveKey( spep_7-3 + 4, 1, -42.6, -24 , 0 );
setMoveKey( spep_7-3 + 6, 1, 47.4, -18.1 , 0 );
setMoveKey( spep_7-3 + 8, 1, -21.2, -120.2 , 0 );
setMoveKey( spep_7-3 + 10, 1, 80.1, -77.4 , 0 );
setMoveKey( spep_7-3 + 12, 1, 83.2, -19.8 , 0 );
setMoveKey( spep_7-3 + 14, 1, 9.7, -47.7 , 0 );
setMoveKey( spep_7-3 + 16, 1, 115.8, -14.7 , 0 );
setMoveKey( spep_7-3 + 18, 1, 86.8, 37 , 0 );
setMoveKey( spep_7-3 + 20, 1, 100.6, -74.3 , 0 );
setMoveKey( spep_7-3 + 22, 1, 76.7, 15.6 , 0 );
setMoveKey( spep_7-3 + 24, 1, 120.7, -15.2 , 0 );
setMoveKey( spep_7-3 + 26, 1, 126.9, 29.6 , 0 );
setMoveKey( spep_7-3 + 28, 1, 94.2, 0.7 , 0 );
setMoveKey( spep_7-3 + 30, 1, 135.3, -5.9 , 0 );
setMoveKey( spep_7-3 + 32, 1, 125.4, 50.1 , 0 );
setMoveKey( spep_7-3 + 34, 1, 79, 50.4 , 0 );
setMoveKey( spep_7-3 + 36, 1, 76.1, -2.9 , 0 );
setMoveKey( spep_7-3 + 38, 1, 89.2, 56.7 , 0 );
setMoveKey( spep_7-3 + 40, 1, 135.6, 17.4 , 0 );
setMoveKey( spep_7-3 + 42, 1, 140.9, 60.2 , 0 );
setMoveKey( spep_7-3 + 44, 1, 109.9, 31.6 , 0 );
setMoveKey( spep_7-3 + 46, 1, 107.5, 42.7 , 0 );
setMoveKey( spep_7-3 + 48, 1, 120.9, 30.4 , 0 );
setMoveKey( spep_7-3 + 50, 1, 122.3, 41.2 , 0 );
setMoveKey( spep_7-3 + 52, 1, 107.1, 38.3 , 0 );
setMoveKey( spep_7-3 + 54, 1, 95.1, 22.2 , 0 );
setMoveKey( spep_7-3 + 56, 1, 114.5, 27.1 , 0 );
setMoveKey( spep_7-3 + 58, 1, 111.8, 37.9 , 0 );
setMoveKey( spep_7-3 + 60, 1, 97.6, 28.8 , 0 );
setMoveKey( spep_7-3 + 62, 1, 92.7, 40.9 , 0 );
setMoveKey( spep_7-3 + 64, 1, 107.7, 27.6 , 0 );
setMoveKey( spep_7-3 + 66, 1, 109.9, 39.1 , 0 );
setMoveKey( spep_7-3 + 68, 1, 94.1, 35.9 , 0 );
setMoveKey( spep_7-3 + 70, 1, 81.8, 18.4 , 0 );
setMoveKey( spep_7-3 + 72, 1, 103.3, 23.6 , 0 );
setMoveKey( spep_7-3 + 74, 1, 101, 35.1 , 0 );
setMoveKey( spep_7-3 + 76, 1, 86.3, 25.2 , 0 );
setMoveKey( spep_7-3 + 78, 1, 81.8, 38.1 , 0 );
setMoveKey( spep_7-3 + 80, 1, 98.5, 23.6 , 0 );
setMoveKey( spep_7-3 + 82, 1, 101.5, 35.8 , 0 );
setMoveKey( spep_7-3 + 84, 1, 85.3, 32.2 , 0 );
setMoveKey( spep_7-3 + 86, 1, 72.8, 13.4 , 0 );
setMoveKey( spep_7-3 + 88, 1, 96.6, 18.9 , 0 );
setMoveKey( spep_7-3 + 90, 1, 94.8, 30.9 , 0 );
setMoveKey( spep_7-3 + 92, 1, 79.9, 20.2 , 0 );
setMoveKey( spep_7-3 + 94, 1, 75.9, 33.9 , 0 );
setMoveKey( spep_7-3 + 96, 1, 94.5, 18.2 , 0 );
setMoveKey( spep_7-3 + 98, 1, 98.4, 31 , 0 );
setMoveKey( spep_7-3 + 100, 1, 82, 27.1 , 0 );
setMoveKey( spep_7-3 + 102, 1, 69.5, 7 , 0 );
setMoveKey( spep_7-3 + 104, 1, 93.4, 13.4 , 0 );
setMoveKey( spep_7-3 + 106, 1, 90, 27 , 0 );
setMoveKey( spep_7-3 + 108, 1, 72.6, 16.4 , 0 );
setMoveKey( spep_7-3 + 110, 1, 66.6, 31.7 , 0 );
setMoveKey( spep_7-3 + 112, 1, 84.5, 16 , 0 );
setMoveKey( spep_7-3 + 114, 1, 86.7, 30.6 , 0 );
setMoveKey( spep_7-3 + 116, 1, 67.1, 27.4 , 0 );
setMoveKey( spep_7-3 + 118, 1, 51.5, 7 , 0 );
setMoveKey( spep_7-3 + 120, 1, 76.8, 13.9 , 0 );
setMoveKey( spep_7-3 + 122, 1, 73, 28.4 , 0 );
setMoveKey( spep_7-3 + 124, 1, 54.4, 17.2 , 0 );
setMoveKey( spep_7-3 + 126, 1, 47.9, 33.6 , 0 );
setMoveKey( spep_7-3 + 128, 1, 66.8, 17.1 , 0 );
setMoveKey( spep_7-3 + 130, 1, 69, 32.5 , 0 );
setMoveKey( spep_7-3 + 132, 1, 48.1, 29.1 , 0 );
setMoveKey( spep_7-3 + 134, 1, 31.6, 7.7 , 0 );
setMoveKey( spep_7-3 + 136, 1, 60.5, 14.1 , 0 );
setMoveKey( spep_7-3 + 138, 1, 59, 29.2 , 0 );
setMoveKey( spep_7-3 + 140, 1, 41.9, 17.4 , 0 );
setMoveKey( spep_7-3 + 142, 1, 37.7, 34.1 , 0 );
setMoveKey( spep_7-3 + 144, 1, 59.6, 16.8 , 0 );
setMoveKey( spep_7-3 + 146, 1, 64.2, 32.5 , 0 );
setMoveKey( spep_7-3 + 148, 1, 45.5, 28.8 , 0 );
setMoveKey( spep_7-3 + 150, 1, 31.3, 6.8 , 0 );
setMoveKey( spep_7-1 + 152, 1, 60.5, 14.1 , 0 );


setScaleKey( spep_7 + 0, 1, 4.24, 4.24 );
--setScaleKey( spep_7-3 + 2, 1, 4.06, 4.06 );
setScaleKey( spep_7-3 + 4, 1, 3.88, 3.88 );
setScaleKey( spep_7-3 + 6, 1, 3.72, 3.72 );
setScaleKey( spep_7-3 + 8, 1, 3.56, 3.56 );
setScaleKey( spep_7-3 + 10, 1, 3.41, 3.41 );
setScaleKey( spep_7-3 + 12, 1, 3.27, 3.27 );
setScaleKey( spep_7-3 + 14, 1, 3.13, 3.13 );
setScaleKey( spep_7-3 + 16, 1, 3.01, 3.01 );
setScaleKey( spep_7-3 + 18, 1, 2.89, 2.89 );
setScaleKey( spep_7-3 + 20, 1, 2.78, 2.78 );
setScaleKey( spep_7-3 + 22, 1, 2.58, 2.58 );
setScaleKey( spep_7-3 + 24, 1, 2.39, 2.39 );
setScaleKey( spep_7-3 + 26, 1, 2.21, 2.21 );
setScaleKey( spep_7-3 + 28, 1, 2.05, 2.05 );
setScaleKey( spep_7-3 + 30, 1, 1.91, 1.91 );
setScaleKey( spep_7-3 + 32, 1, 1.78, 1.78 );
setScaleKey( spep_7-3 + 34, 1, 1.66, 1.66 );
setScaleKey( spep_7-3 + 36, 1, 1.57, 1.57 );
setScaleKey( spep_7-3 + 38, 1, 1.49, 1.49 );
setScaleKey( spep_7-3 + 40, 1, 1.44, 1.44 );
setScaleKey( spep_7-3 + 42, 1, 1.4, 1.4 );
setScaleKey( spep_7-3 + 44, 1, 1.38, 1.38 );
setScaleKey( spep_7-3 + 46, 1, 1.38, 1.38 );
setScaleKey( spep_7-3 + 48, 1, 1.32, 1.32 );
setScaleKey( spep_7-3 + 50, 1, 1.26, 1.26 );
setScaleKey( spep_7-3 + 52, 1, 1.2, 1.2 );
setScaleKey( spep_7-3 + 54, 1, 1.14, 1.14 );
setScaleKey( spep_7-3 + 56, 1, 1.09, 1.09 );
setScaleKey( spep_7-3 + 58, 1, 1.03, 1.03 );
setScaleKey( spep_7-3 + 60, 1, 0.98, 0.98 );
setScaleKey( spep_7-3 + 62, 1, 0.93, 0.93 );
setScaleKey( spep_7-3 + 64, 1, 0.88, 0.88 );
setScaleKey( spep_7-3 + 66, 1, 0.83, 0.83 );
setScaleKey( spep_7-3 + 68, 1, 0.79, 0.79 );
setScaleKey( spep_7-3 + 70, 1, 0.75, 0.75 );
setScaleKey( spep_7-3 + 72, 1, 0.7, 0.7 );
setScaleKey( spep_7-3 + 74, 1, 0.67, 0.67 );
setScaleKey( spep_7-3 + 76, 1, 0.63, 0.63 );
setScaleKey( spep_7-3 + 78, 1, 0.6, 0.6 );
setScaleKey( spep_7-3 + 80, 1, 0.56, 0.56 );
setScaleKey( spep_7-3 + 82, 1, 0.54, 0.54 );
setScaleKey( spep_7-3 + 84, 1, 0.51, 0.51 );
setScaleKey( spep_7-3 + 86, 1, 0.49, 0.49 );
setScaleKey( spep_7-3 + 88, 1, 0.47, 0.47 );
setScaleKey( spep_7-3 + 90, 1, 0.45, 0.45 );
setScaleKey( spep_7-3 + 92, 1, 0.43, 0.43 );
setScaleKey( spep_7-3 + 94, 1, 0.42, 0.42 );
setScaleKey( spep_7-3 + 96, 1, 0.41, 0.41 );
setScaleKey( spep_7-3 + 102, 1, 0.41, 0.41 );
setScaleKey( spep_7-3 + 104, 1, 0.39, 0.39 );
setScaleKey( spep_7-3 + 106, 1, 0.37, 0.37 );
setScaleKey( spep_7-3 + 108, 1, 0.35, 0.35 );
setScaleKey( spep_7-3 + 110, 1, 0.34, 0.34 );
setScaleKey( spep_7-3 + 112, 1, 0.32, 0.32 );
setScaleKey( spep_7-3 + 114, 1, 0.3, 0.3 );
setScaleKey( spep_7-3 + 116, 1, 0.28, 0.28 );
setScaleKey( spep_7-3 + 118, 1, 0.26, 0.26 );
setScaleKey( spep_7-3 + 120, 1, 0.24, 0.24 );
setScaleKey( spep_7-3 + 122, 1, 0.22, 0.22 );
setScaleKey( spep_7-3 + 124, 1, 0.2, 0.2 );
setScaleKey( spep_7-3 + 126, 1, 0.18, 0.18 );
setScaleKey( spep_7-3 + 128, 1, 0.16, 0.16 );
setScaleKey( spep_7-3 + 130, 1, 0.14, 0.14 );
setScaleKey( spep_7-3 + 132, 1, 0.11, 0.11 );
setScaleKey( spep_7-3 + 134, 1, 0.09, 0.09 );
setScaleKey( spep_7-1 + 152, 1, 0.09, 0.09 );

setRotateKey( spep_7 + 0, 1, 10 );
--setRotateKey( spep_7-3 + 2, 1, 4.6 );
setRotateKey( spep_7-3 + 4, 1, -0.5 );
setRotateKey( spep_7-3 + 6, 1, -5.3 );
setRotateKey( spep_7-3 + 8, 1, -9.9 );
setRotateKey( spep_7-3 + 10, 1, -14.2 );
setRotateKey( spep_7-3 + 12, 1, -18.2 );
setRotateKey( spep_7-3 + 14, 1, -21.9 );
setRotateKey( spep_7-3 + 16, 1, -25.3 );
setRotateKey( spep_7-3 + 18, 1, -28.5 );
setRotateKey( spep_7-3 + 20, 1, -31.4 );
setRotateKey( spep_7-3 + 22, 1, -31.6 );
setRotateKey( spep_7-3 + 24, 1, -31.8 );
setRotateKey( spep_7-3 + 26, 1, -32 );
setRotateKey( spep_7-3 + 28, 1, -32.2 );
setRotateKey( spep_7-3 + 30, 1, -32.4 );
setRotateKey( spep_7-3 + 32, 1, -32.5 );
setRotateKey( spep_7-3 + 34, 1, -32.6 );
setRotateKey( spep_7-3 + 36, 1, -32.7 );
setRotateKey( spep_7-3 + 38, 1, -32.8 );
setRotateKey( spep_7-3 + 40, 1, -32.9 );
setRotateKey( spep_7-3 + 130, 1, -32.9 );
setRotateKey( spep_7-3 + 132, 1, -32.8 );
setRotateKey( spep_7-1 + 152, 1, -32.8 );

--SE
--敵ヒット
SE026 = playSeVer2( spep_7 + 0, 1145, "", 0, 0, 0, -1);

--敵飛ばされる
SE027 = playSeVer2( spep_7 + 20, 1284, "", 0, 0, 0, -1);

--終わり
dealDamage( spep_7 + 20 );
endPhase( spep_7 + 150 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--開幕〜かめはめ波を構える
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, first, 0, 0, 0 );
setEffMoveKey( spep_0 + 234, first, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first, -1.0, 1.0 );
setEffScaleKey( spep_0 + 234, first, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 234, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 232, first, 255 );
setEffAlphaKey( spep_0 + 233, first, 255 );
setEffAlphaKey( spep_0 + 234, first, 0 );
--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
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
]]--
--SE
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 464, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 164 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--かめはめ波溜め
SE004 = playSeVer2( spep_0 + 120, 1209, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 146, 1209, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 146, 1210, "",spep_0 + 464, 0, 10, -1);

--構える
SE007 = playSeVer2( spep_0 + 190, 1004, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1= spep_0 + 234;
------------------------------------------------------
--かめはめ波を構える
------------------------------------------------------
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 100, tame_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 100, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame_f, 0 );
setEffRotateKey( spep_1 + 100, tame_f, 0 );
setEffAlphaKey( spep_1 + 0, tame_f, 255 );
setEffAlphaKey( spep_1 + 98, tame_f, 255 );
setEffAlphaKey( spep_1 + 99, tame_f, 255 );
setEffAlphaKey( spep_1 + 100, tame_f, 0 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 100, tame_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 100, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame_b, 0 );
setEffRotateKey( spep_1 + 100, tame_b, 0 );
setEffAlphaKey( spep_1 + 0, tame_b, 255 );
setEffAlphaKey( spep_1 + 98, tame_b, 255 );
setEffAlphaKey( spep_1 + 99, tame_b, 255 );
setEffAlphaKey( spep_1 + 100, tame_b, 0 );

--敵の動き
setDisp( spep_1-3 + 12, 1, 1);
setDisp( spep_1-1 + 100, 1, 0);

changeAnime( spep_1-3 + 12, 1, 0);

setMoveKey( spep_1-3 + 12 , 1, -417.1, 421 , 0 );
setMoveKey( spep_1-3 + 14 , 1, -332, 382.7 , 0 );
setMoveKey( spep_1-3 + 16 , 1, -255.5, 332.2 , 0 );
setMoveKey( spep_1-3 + 18 , 1, -187.6, 269.7 , 0 );
setMoveKey( spep_1-3 + 20 , 1, -128.3, 194.9 , 0 );
setMoveKey( spep_1-3 + 22 , 1, -128.1, 194.4 , 0 );
setMoveKey( spep_1-3 + 24 , 1, -127.9, 193.7 , 0 );
setMoveKey( spep_1-3 + 26 , 1, -127.7, 193.2 , 0 );
setMoveKey( spep_1-3 + 28 , 1, -127.5, 192.7 , 0 );
setMoveKey( spep_1-3 + 30 , 1, -127.3, 192.1 , 0 );
setMoveKey( spep_1-3 + 32 , 1, -127.1, 191.5 , 0 );
setMoveKey( spep_1-3 + 34 , 1, -127, 190.9 , 0 );
setMoveKey( spep_1-3 + 36 , 1, -126.8, 190.4 , 0 );
setMoveKey( spep_1-3 + 38 , 1, -126.6, 189.8 , 0 );
setMoveKey( spep_1-3 + 40 , 1, -126.4, 189.2 , 0 );
setMoveKey( spep_1-3 + 42 , 1, -115.1, 203.8 , 0 );
setMoveKey( spep_1-3 + 44 , 1, -127.4, 167.3 , 0 );
setMoveKey( spep_1-3 + 46 , 1, -138.3, 209.5 , 0 );
setMoveKey( spep_1-3 + 48 , 1, -107.8, 163.5 , 0 );
setMoveKey( spep_1-3 + 50 , 1, -146, 182.2 , 0 );
setMoveKey( spep_1-3 + 52 , 1, -145.8, 151.5 , 0 );
setMoveKey( spep_1-3 + 54 , 1, -123.8, 189.2 , 0 );
setMoveKey( spep_1-3 + 56 , 1, -157.6, 181.8 , 0 );
setMoveKey( spep_1-3 + 58 , 1, -124.8, 184 , 0 );
setMoveKey( spep_1-3 + 60 , 1, -124.6, 183.5 , 0 );
setMoveKey( spep_1-3 + 62 , 1, -124.3, 182.9 , 0 );
setMoveKey( spep_1-3 + 64 , 1, -124.2, 182.3 , 0 );
setMoveKey( spep_1-3 + 66 , 1, -124, 181.7 , 0 );
setMoveKey( spep_1-3 + 68 , 1, -123.8, 181.2 , 0 );
setMoveKey( spep_1-3 + 70 , 1, -123.7, 180.6 , 0 );
setMoveKey( spep_1-3 + 72 , 1, -123.5, 180 , 0 );
setMoveKey( spep_1-3 + 74 , 1, -123.3, 179.4 , 0 );
setMoveKey( spep_1-3 + 76 , 1, -123.1, 178.8 , 0 );
setMoveKey( spep_1-3 + 78 , 1, -122.9, 178.3 , 0 );
setMoveKey( spep_1-3 + 80 , 1, -122.7, 177.7 , 0 );
setMoveKey( spep_1-3 + 82 , 1, -122.5, 177.1 , 0 );
setMoveKey( spep_1-3 + 84 , 1, -122.4, 176.5 , 0 );
setMoveKey( spep_1-3 + 86 , 1, -122.2, 176 , 0 );
setMoveKey( spep_1-3 + 88 , 1, -122, 175.4 , 0 );
setMoveKey( spep_1-3 + 90 , 1, -121.8, 174.8 , 0 );
setMoveKey( spep_1-3 + 92 , 1, -121.6, 174.3 , 0 );
setMoveKey( spep_1-3 + 94 , 1, -121.4, 173.7 , 0 );
setMoveKey( spep_1-3 + 96 , 1, -121.3, 173.1 , 0 );
setMoveKey( spep_1-3 + 98 , 1, -121, 172.6 , 0 );
setMoveKey( spep_1-1 + 100 , 1, -120.9, 172 , 0 );

setScaleKey( spep_1-3 + 12, 1, 0.57, 0.57 );
setScaleKey( spep_1-3 + 14, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 16, 1, 0.41, 0.41 );
setScaleKey( spep_1-3 + 18, 1, 0.32, 0.32 );
setScaleKey( spep_1-3 + 20, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 22, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 24, 1, 0.21, 0.21 );
setScaleKey( spep_1-1 + 100, 1, 0.21, 0.21 );

setRotateKey( spep_1-3 + 12, 1, 0 );
setRotateKey( spep_1-1 + 100, 1, 0 );

--SE
--爆風
SE009 = playSeVer2( spep_1 + 38, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 38, SE009, 78 );
SE010 = playSeVer2( spep_1 + 38, 1259, "",spep_1 + 222, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 38, SE010, 79 );
SE011 = playSeVer2( spep_1 + 44, 1258, "",spep_1 + 222, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 44, SE011, 84 );

-- ** 次の準備 ** --
spep_2= spep_1 + 100;
------------------------------------------------------
--手元アップ～横顔咆哮
------------------------------------------------------
-- ** エフェクト等 ** --
roar = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, roar, 0, 0, 0 );
setEffMoveKey( spep_2 + 112, roar, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, roar, -1.0, 1.0 );
setEffScaleKey( spep_2 + 112, roar, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, roar, 0 );
setEffRotateKey( spep_2 + 112, roar, 0 );
setEffAlphaKey( spep_2 + 0, roar, 255 );
setEffAlphaKey( spep_2 + 112, roar, 255 );

--SE
--かめはめ波合わせる
SE012 = playSeVer2( spep_2 + 0, 1154, "",spep_2 + 114, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 0, SE012, 114 );

--かめはめ波大きく
SE013 = playSeVer2( spep_2 + 34, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 34, SE013, 130 );
SE014 = playSeVer2( spep_2 + 34, 1225, "",spep_2 + 114, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 34, SE014, 226 );

--顔アップ
SE015 = playSeVer2( spep_2 + 70, 1116, "",spep_2 + 106, 0, 14, -1);

--白フェード
entryFade( spep_2 +106 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 112;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 次の準備 ** --
entryFade( spep_3 + 82, 4, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;
------------------------------------------------------
--かめはめ波発射の構え
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 28, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_4 + 28, beam, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 28, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 26, beam, 255 );
setEffAlphaKey( spep_4 + 27, beam, 255 );
setEffAlphaKey( spep_4 + 28, beam, 0 );

-- ** エフェクト等 ** --
beam2 = entryEffect( spep_4 + 28, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 28, beam2, 0, 0, 0 );
setEffMoveKey( spep_4 + 82, beam2, 0, 0, 0 );
setEffScaleKey( spep_4 + 28, beam2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 82, beam2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 28, beam2, 0 );
setEffRotateKey( spep_4 + 82, beam2, 0 );
setEffAlphaKey( spep_4 + 28, beam2, 255 );
setEffAlphaKey( spep_4 + 80, beam2, 255 );
setEffAlphaKey( spep_4 + 81, beam2, 255 );
setEffAlphaKey( spep_4 + 82, beam2, 0 );
--SE
--発射前溜め
SE008 = playSeVer2( spep_4 + 0, 1210, "",spep_4 + 74, 12, 24, -1);
setStartTimeMs( SE008,  5283 );
SE017 = playSeVer2( spep_4 + 10, 1356, "",spep_4 + 68, 0, 20, -1);
setSeVolumeByWorkId( spep_4 + 10, SE017, 79 );

--かめはめ波発射
SE018 = playSeVer2( spep_4 + 30, 1133, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_4 + 30, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 30, SE019, 81 );
SE020 = playSeVer2( spep_4 + 30, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 30, SE020, 87 );

-- ** 次の準備 ** --
spep_5= spep_4 + 82;
------------------------------------------------------
--かめはめ波を打つ悟空背面～敵HIT
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 102, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 102, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 102, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 100, hit_f, 255 );
setEffAlphaKey( spep_5 + 101, hit_f, 255 );
setEffAlphaKey( spep_5 + 102, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 102, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 102, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 102, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 100, hit_b, 255 );
setEffAlphaKey( spep_5 + 101, hit_b, 255 );
setEffAlphaKey( spep_5 + 102, hit_b, 0 );

--SE
--かめはめ波飛んでいく
SE021 = playSeVer2( spep_5 + 0, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 0, SE021, 79 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_5 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    stopSe( SP_dodge - 12, SE019, 0 );
    stopSe( SP_dodge - 12, SE020, 0 );
    stopSe( SP_dodge - 12, SE021, 0 );
    
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
--敵の動き
setDisp( spep_5-3 + 42, 1, 1);
setDisp( spep_5 + 102, 1, 0);

changeAnime( spep_5-3 + 42, 1, 104);
changeAnime( spep_5-3 + 78, 1, 108);

setMoveKey( spep_5-3 + 42, 1, 759.2, 1477.5 , 0 );
setMoveKey( spep_5-3 + 44, 1, 766.2, 1413.8 , 0 );
setMoveKey( spep_5-3 + 46, 1, 664.3, 1241.1 , 0 );
setMoveKey( spep_5-3 + 48, 1, 696.5, 1173.4 , 0 );
setMoveKey( spep_5-3 + 50, 1, 577.5, 1110.1 , 0 );
setMoveKey( spep_5-3 + 52, 1, 586, 1047.3 , 0 );
setMoveKey( spep_5-3 + 54, 1, 511.8, 913.9 , 0 );
setMoveKey( spep_5-3 + 56, 1, 466.6, 822 , 0 );
setMoveKey( spep_5-3 + 58, 1, 421.3, 730.1 , 0 );
setMoveKey( spep_5-3 + 60, 1, 376.1, 638.1 , 0 );
setMoveKey( spep_5-3 + 62, 1, 330.9, 546.2 , 0 );
setMoveKey( spep_5-3 + 64, 1, 285.7, 454.3 , 0 );
setMoveKey( spep_5-3 + 66, 1, 240.4, 362.4 , 0 );
setMoveKey( spep_5-3 + 68, 1, 195.2, 270.4 , 0 );
setMoveKey( spep_5-3 + 70, 1, 150, 178.5 , 0 );
setMoveKey( spep_5-3 + 72, 1, 104.8, 86.6 , 0 );
setMoveKey( spep_5-3 + 74, 1, 94, 77 , 0 );
setMoveKey( spep_5-3 + 76, 1, 47.2, 83.5 , 0 );
setMoveKey( spep_5-3 + 77, 1, 47.2, 83.5 , 0 );

setMoveKey( spep_5-3 + 78, 1, 100.6, 77.8 , 0 );
setMoveKey( spep_5-3 + 80, 1, 123.7, 121.5 , 0 );
setMoveKey( spep_5-3 + 82, 1, 66.8, 60.9 , 0 );
setMoveKey( spep_5-3 + 84, 1, 74, 104.5 , 0 );
setMoveKey( spep_5-3 + 86, 1, 97.2, 60 , 0 );
setMoveKey( spep_5-3 + 88, 1, 36.2, 51.4 , 0 );
setMoveKey( spep_5-3 + 90, 1, -4.7, -25.1 , 0 );
setMoveKey( spep_5-3 + 92, 1, 70.6, 102.6 , 0 );
setMoveKey( spep_5-3 + 94, 1, 93.7, 58.1 , 0 );
setMoveKey( spep_5-3 + 96, 1, 32.8, 49.6 , 0 );
setMoveKey( spep_5-3 + 98, 1, -8.1, -27 , 0 );
setMoveKey( spep_5-3 + 100, 1, 63.1, 52.6 , 0 );
setMoveKey( spep_5-3 + 102, 1, 52.4, 43 , 0 );
setMoveKey( spep_5-1 + 104, 1, 41.7, 33.4 , 0 );
--setMoveKey( spep_5-3 + 106, 1, 31, 23.8 , 0 );

setScaleKey( spep_5-3 + 42, 1, 1.45, 1.45 );
setScaleKey( spep_5-3 + 44, 1, 1.46, 1.46 );
setScaleKey( spep_5-3 + 46, 1, 1.47, 1.47 );
setScaleKey( spep_5-3 + 48, 1, 1.48, 1.48 );
setScaleKey( spep_5-3 + 50, 1, 1.49, 1.49 );
setScaleKey( spep_5-3 + 52, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 54, 1, 1.51, 1.51 );
setScaleKey( spep_5-3 + 56, 1, 1.52, 1.52 );
setScaleKey( spep_5-3 + 58, 1, 1.53, 1.53 );
setScaleKey( spep_5-3 + 60, 1, 1.54, 1.54 );
setScaleKey( spep_5-3 + 62, 1, 1.55, 1.55 );
setScaleKey( spep_5-3 + 64, 1, 1.56, 1.56 );
setScaleKey( spep_5-3 + 66, 1, 1.57, 1.57 );
setScaleKey( spep_5-3 + 68, 1, 1.58, 1.58 );
setScaleKey( spep_5-3 + 70, 1, 1.59, 1.59 );
setScaleKey( spep_5-3 + 72, 1, 1.6, 1.6 );
setScaleKey( spep_5-3 + 77, 1, 1.6, 1.6 );

setScaleKey( spep_5-3 + 78, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 102, 1, 1.6, 1.6 );

setRotateKey( spep_5-3 + 42, 1, 0 );
setRotateKey( spep_5-3 + 77, 1, 0 );

setRotateKey( spep_5-3 + 78, 1, -32.4 );
setRotateKey( spep_5-3 + 80, 1, -31.2 );
setRotateKey( spep_5-3 + 82, 1, -29.9 );
setRotateKey( spep_5-3 + 84, 1, -28.7 );
setRotateKey( spep_5-3 + 86, 1, -27.4 );
setRotateKey( spep_5-3 + 88, 1, -26.2 );
setRotateKey( spep_5-3 + 90, 1, -24.9 );
setRotateKey( spep_5-3 + 92, 1, -23.7 );
setRotateKey( spep_5-3 + 94, 1, -22.4 );
setRotateKey( spep_5-3 + 96, 1, -21.2 );
setRotateKey( spep_5-3 + 98, 1, -19.9 );
setRotateKey( spep_5-3 + 100, 1, -18.7 );
setRotateKey( spep_5 + 102, 1, -18.7 );

--SE
--敵ヒット
SE022 = playSeVer2( spep_5 + 76, 1011, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_5 + 76, 1024, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_6= spep_5 + 102;
------------------------------------------------------
--より大きくなるかめはめ波
------------------------------------------------------
-- ** エフェクト等 ** --
big = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, big, 0, 0, 0 );
setEffMoveKey( spep_6 + 84, big, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, big, 1.0, 1.0 );
setEffScaleKey( spep_6 + 84, big, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, big, 0 );
setEffRotateKey( spep_6 + 84, big, 0 );
setEffAlphaKey( spep_6 + 0, big, 255 );
setEffAlphaKey( spep_6 + 82, big, 255 );
setEffAlphaKey( spep_6 + 83, big, 255 );
setEffAlphaKey( spep_6 + 84, big, 0 );

--SE
--威力アップ
SE024 = playSeVer2( spep_6 + 12, 1161, "",spep_6 + 214, 0, 40, -1);
SE025 = playSeVer2( spep_6 + 12, 1258, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_7= spep_6 + 84;
------------------------------------------------------
--気弾に押されて飛んでく敵〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 160, finish_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 160, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 160, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 160, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 160, finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 160, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 160, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 160, finish_b, 255 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );

changeAnime( spep_7 + 0, 1, 108 );

setMoveKey( spep_7 + 0, 1, -36.5, -62.9 , 0 );
--setMoveKey( spep_7-3 + 2, 1, -20.7, -56.9 , 0 );
setMoveKey( spep_7-3 + 4, 1, -42.6, -24 , 0 );
setMoveKey( spep_7-3 + 6, 1, 47.4, -18.1 , 0 );
setMoveKey( spep_7-3 + 8, 1, -21.2, -120.2 , 0 );
setMoveKey( spep_7-3 + 10, 1, 80.1, -77.4 , 0 );
setMoveKey( spep_7-3 + 12, 1, 83.2, -19.8 , 0 );
setMoveKey( spep_7-3 + 14, 1, 9.7, -47.7 , 0 );
setMoveKey( spep_7-3 + 16, 1, 115.8, -14.7 , 0 );
setMoveKey( spep_7-3 + 18, 1, 86.8, 37 , 0 );
setMoveKey( spep_7-3 + 20, 1, 100.6, -74.3 , 0 );
setMoveKey( spep_7-3 + 22, 1, 76.7, 15.6 , 0 );
setMoveKey( spep_7-3 + 24, 1, 120.7, -15.2 , 0 );
setMoveKey( spep_7-3 + 26, 1, 126.9, 29.6 , 0 );
setMoveKey( spep_7-3 + 28, 1, 94.2, 0.7 , 0 );
setMoveKey( spep_7-3 + 30, 1, 135.3, -5.9 , 0 );
setMoveKey( spep_7-3 + 32, 1, 125.4, 50.1 , 0 );
setMoveKey( spep_7-3 + 34, 1, 79, 50.4 , 0 );
setMoveKey( spep_7-3 + 36, 1, 76.1, -2.9 , 0 );
setMoveKey( spep_7-3 + 38, 1, 89.2, 56.7 , 0 );
setMoveKey( spep_7-3 + 40, 1, 135.6, 17.4 , 0 );
setMoveKey( spep_7-3 + 42, 1, 140.9, 60.2 , 0 );
setMoveKey( spep_7-3 + 44, 1, 109.9, 31.6 , 0 );
setMoveKey( spep_7-3 + 46, 1, 107.5, 42.7 , 0 );
setMoveKey( spep_7-3 + 48, 1, 120.9, 30.4 , 0 );
setMoveKey( spep_7-3 + 50, 1, 122.3, 41.2 , 0 );
setMoveKey( spep_7-3 + 52, 1, 107.1, 38.3 , 0 );
setMoveKey( spep_7-3 + 54, 1, 95.1, 22.2 , 0 );
setMoveKey( spep_7-3 + 56, 1, 114.5, 27.1 , 0 );
setMoveKey( spep_7-3 + 58, 1, 111.8, 37.9 , 0 );
setMoveKey( spep_7-3 + 60, 1, 97.6, 28.8 , 0 );
setMoveKey( spep_7-3 + 62, 1, 92.7, 40.9 , 0 );
setMoveKey( spep_7-3 + 64, 1, 107.7, 27.6 , 0 );
setMoveKey( spep_7-3 + 66, 1, 109.9, 39.1 , 0 );
setMoveKey( spep_7-3 + 68, 1, 94.1, 35.9 , 0 );
setMoveKey( spep_7-3 + 70, 1, 81.8, 18.4 , 0 );
setMoveKey( spep_7-3 + 72, 1, 103.3, 23.6 , 0 );
setMoveKey( spep_7-3 + 74, 1, 101, 35.1 , 0 );
setMoveKey( spep_7-3 + 76, 1, 86.3, 25.2 , 0 );
setMoveKey( spep_7-3 + 78, 1, 81.8, 38.1 , 0 );
setMoveKey( spep_7-3 + 80, 1, 98.5, 23.6 , 0 );
setMoveKey( spep_7-3 + 82, 1, 101.5, 35.8 , 0 );
setMoveKey( spep_7-3 + 84, 1, 85.3, 32.2 , 0 );
setMoveKey( spep_7-3 + 86, 1, 72.8, 13.4 , 0 );
setMoveKey( spep_7-3 + 88, 1, 96.6, 18.9 , 0 );
setMoveKey( spep_7-3 + 90, 1, 94.8, 30.9 , 0 );
setMoveKey( spep_7-3 + 92, 1, 79.9, 20.2 , 0 );
setMoveKey( spep_7-3 + 94, 1, 75.9, 33.9 , 0 );
setMoveKey( spep_7-3 + 96, 1, 94.5, 18.2 , 0 );
setMoveKey( spep_7-3 + 98, 1, 98.4, 31 , 0 );
setMoveKey( spep_7-3 + 100, 1, 82, 27.1 , 0 );
setMoveKey( spep_7-3 + 102, 1, 69.5, 7 , 0 );
setMoveKey( spep_7-3 + 104, 1, 93.4, 13.4 , 0 );
setMoveKey( spep_7-3 + 106, 1, 90, 27 , 0 );
setMoveKey( spep_7-3 + 108, 1, 72.6, 16.4 , 0 );
setMoveKey( spep_7-3 + 110, 1, 66.6, 31.7 , 0 );
setMoveKey( spep_7-3 + 112, 1, 84.5, 16 , 0 );
setMoveKey( spep_7-3 + 114, 1, 86.7, 30.6 , 0 );
setMoveKey( spep_7-3 + 116, 1, 67.1, 27.4 , 0 );
setMoveKey( spep_7-3 + 118, 1, 51.5, 7 , 0 );
setMoveKey( spep_7-3 + 120, 1, 76.8, 13.9 , 0 );
setMoveKey( spep_7-3 + 122, 1, 73, 28.4 , 0 );
setMoveKey( spep_7-3 + 124, 1, 54.4, 17.2 , 0 );
setMoveKey( spep_7-3 + 126, 1, 47.9, 33.6 , 0 );
setMoveKey( spep_7-3 + 128, 1, 66.8, 17.1 , 0 );
setMoveKey( spep_7-3 + 130, 1, 69, 32.5 , 0 );
setMoveKey( spep_7-3 + 132, 1, 48.1, 29.1 , 0 );
setMoveKey( spep_7-3 + 134, 1, 31.6, 7.7 , 0 );
setMoveKey( spep_7-3 + 136, 1, 60.5, 14.1 , 0 );
setMoveKey( spep_7-3 + 138, 1, 59, 29.2 , 0 );
setMoveKey( spep_7-3 + 140, 1, 41.9, 17.4 , 0 );
setMoveKey( spep_7-3 + 142, 1, 37.7, 34.1 , 0 );
setMoveKey( spep_7-3 + 144, 1, 59.6, 16.8 , 0 );
setMoveKey( spep_7-3 + 146, 1, 64.2, 32.5 , 0 );
setMoveKey( spep_7-3 + 148, 1, 45.5, 28.8 , 0 );
setMoveKey( spep_7-3 + 150, 1, 31.3, 6.8 , 0 );
setMoveKey( spep_7-1 + 152, 1, 60.5, 14.1 , 0 );


setScaleKey( spep_7 + 0, 1, 4.24, 4.24 );
--setScaleKey( spep_7-3 + 2, 1, 4.06, 4.06 );
setScaleKey( spep_7-3 + 4, 1, 3.88, 3.88 );
setScaleKey( spep_7-3 + 6, 1, 3.72, 3.72 );
setScaleKey( spep_7-3 + 8, 1, 3.56, 3.56 );
setScaleKey( spep_7-3 + 10, 1, 3.41, 3.41 );
setScaleKey( spep_7-3 + 12, 1, 3.27, 3.27 );
setScaleKey( spep_7-3 + 14, 1, 3.13, 3.13 );
setScaleKey( spep_7-3 + 16, 1, 3.01, 3.01 );
setScaleKey( spep_7-3 + 18, 1, 2.89, 2.89 );
setScaleKey( spep_7-3 + 20, 1, 2.78, 2.78 );
setScaleKey( spep_7-3 + 22, 1, 2.58, 2.58 );
setScaleKey( spep_7-3 + 24, 1, 2.39, 2.39 );
setScaleKey( spep_7-3 + 26, 1, 2.21, 2.21 );
setScaleKey( spep_7-3 + 28, 1, 2.05, 2.05 );
setScaleKey( spep_7-3 + 30, 1, 1.91, 1.91 );
setScaleKey( spep_7-3 + 32, 1, 1.78, 1.78 );
setScaleKey( spep_7-3 + 34, 1, 1.66, 1.66 );
setScaleKey( spep_7-3 + 36, 1, 1.57, 1.57 );
setScaleKey( spep_7-3 + 38, 1, 1.49, 1.49 );
setScaleKey( spep_7-3 + 40, 1, 1.44, 1.44 );
setScaleKey( spep_7-3 + 42, 1, 1.4, 1.4 );
setScaleKey( spep_7-3 + 44, 1, 1.38, 1.38 );
setScaleKey( spep_7-3 + 46, 1, 1.38, 1.38 );
setScaleKey( spep_7-3 + 48, 1, 1.32, 1.32 );
setScaleKey( spep_7-3 + 50, 1, 1.26, 1.26 );
setScaleKey( spep_7-3 + 52, 1, 1.2, 1.2 );
setScaleKey( spep_7-3 + 54, 1, 1.14, 1.14 );
setScaleKey( spep_7-3 + 56, 1, 1.09, 1.09 );
setScaleKey( spep_7-3 + 58, 1, 1.03, 1.03 );
setScaleKey( spep_7-3 + 60, 1, 0.98, 0.98 );
setScaleKey( spep_7-3 + 62, 1, 0.93, 0.93 );
setScaleKey( spep_7-3 + 64, 1, 0.88, 0.88 );
setScaleKey( spep_7-3 + 66, 1, 0.83, 0.83 );
setScaleKey( spep_7-3 + 68, 1, 0.79, 0.79 );
setScaleKey( spep_7-3 + 70, 1, 0.75, 0.75 );
setScaleKey( spep_7-3 + 72, 1, 0.7, 0.7 );
setScaleKey( spep_7-3 + 74, 1, 0.67, 0.67 );
setScaleKey( spep_7-3 + 76, 1, 0.63, 0.63 );
setScaleKey( spep_7-3 + 78, 1, 0.6, 0.6 );
setScaleKey( spep_7-3 + 80, 1, 0.56, 0.56 );
setScaleKey( spep_7-3 + 82, 1, 0.54, 0.54 );
setScaleKey( spep_7-3 + 84, 1, 0.51, 0.51 );
setScaleKey( spep_7-3 + 86, 1, 0.49, 0.49 );
setScaleKey( spep_7-3 + 88, 1, 0.47, 0.47 );
setScaleKey( spep_7-3 + 90, 1, 0.45, 0.45 );
setScaleKey( spep_7-3 + 92, 1, 0.43, 0.43 );
setScaleKey( spep_7-3 + 94, 1, 0.42, 0.42 );
setScaleKey( spep_7-3 + 96, 1, 0.41, 0.41 );
setScaleKey( spep_7-3 + 102, 1, 0.41, 0.41 );
setScaleKey( spep_7-3 + 104, 1, 0.39, 0.39 );
setScaleKey( spep_7-3 + 106, 1, 0.37, 0.37 );
setScaleKey( spep_7-3 + 108, 1, 0.35, 0.35 );
setScaleKey( spep_7-3 + 110, 1, 0.34, 0.34 );
setScaleKey( spep_7-3 + 112, 1, 0.32, 0.32 );
setScaleKey( spep_7-3 + 114, 1, 0.3, 0.3 );
setScaleKey( spep_7-3 + 116, 1, 0.28, 0.28 );
setScaleKey( spep_7-3 + 118, 1, 0.26, 0.26 );
setScaleKey( spep_7-3 + 120, 1, 0.24, 0.24 );
setScaleKey( spep_7-3 + 122, 1, 0.22, 0.22 );
setScaleKey( spep_7-3 + 124, 1, 0.2, 0.2 );
setScaleKey( spep_7-3 + 126, 1, 0.18, 0.18 );
setScaleKey( spep_7-3 + 128, 1, 0.16, 0.16 );
setScaleKey( spep_7-3 + 130, 1, 0.14, 0.14 );
setScaleKey( spep_7-3 + 132, 1, 0.11, 0.11 );
setScaleKey( spep_7-3 + 134, 1, 0.09, 0.09 );
setScaleKey( spep_7-1 + 152, 1, 0.09, 0.09 );

setRotateKey( spep_7 + 0, 1, 10 );
--setRotateKey( spep_7-3 + 2, 1, 4.6 );
setRotateKey( spep_7-3 + 4, 1, -0.5 );
setRotateKey( spep_7-3 + 6, 1, -5.3 );
setRotateKey( spep_7-3 + 8, 1, -9.9 );
setRotateKey( spep_7-3 + 10, 1, -14.2 );
setRotateKey( spep_7-3 + 12, 1, -18.2 );
setRotateKey( spep_7-3 + 14, 1, -21.9 );
setRotateKey( spep_7-3 + 16, 1, -25.3 );
setRotateKey( spep_7-3 + 18, 1, -28.5 );
setRotateKey( spep_7-3 + 20, 1, -31.4 );
setRotateKey( spep_7-3 + 22, 1, -31.6 );
setRotateKey( spep_7-3 + 24, 1, -31.8 );
setRotateKey( spep_7-3 + 26, 1, -32 );
setRotateKey( spep_7-3 + 28, 1, -32.2 );
setRotateKey( spep_7-3 + 30, 1, -32.4 );
setRotateKey( spep_7-3 + 32, 1, -32.5 );
setRotateKey( spep_7-3 + 34, 1, -32.6 );
setRotateKey( spep_7-3 + 36, 1, -32.7 );
setRotateKey( spep_7-3 + 38, 1, -32.8 );
setRotateKey( spep_7-3 + 40, 1, -32.9 );
setRotateKey( spep_7-3 + 130, 1, -32.9 );
setRotateKey( spep_7-3 + 132, 1, -32.8 );
setRotateKey( spep_7-1 + 152, 1, -32.8 );

--SE
--敵ヒット
SE026 = playSeVer2( spep_7 + 0, 1145, "", 0, 0, 0, -1);

--敵飛ばされる
SE027 = playSeVer2( spep_7 + 20, 1284, "", 0, 0, 0, -1);

--終わり
dealDamage( spep_7 + 20 );
endPhase( spep_7 + 150 );
end