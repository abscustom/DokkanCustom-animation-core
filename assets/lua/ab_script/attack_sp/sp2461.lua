--1025300:超フルパワーサイヤ人4・限界突破孫悟空(ゼノ)_ フルパワー10倍かめはめ波(SSR)
--sp_effect_a1_00376

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
SP_01=	160908	;--	開幕〜かめはめ波を構える
SP_02=	160909	;--	かめはめ波を構える
SP_03=	160910	;--	かめはめ波を構える
SP_04=	161043	;--	かめはめ波発射の構え
SP_05=	160913	;--	かめはめ波を打つ悟空背面～フィニッシュ
SP_06=	160914	;--	かめはめ波を打つ悟空背面～フィニッシュ
SP_07=	160911	;--	かめはめ波発射の構え

--エフェクト(敵)
SP_01x=	160908	;--	開幕〜かめはめ波を構える	
SP_02x=	160909	;--	かめはめ波を構える	
SP_03x=	160910	;--	かめはめ波を構える	
SP_04x=	161043	;--	かめはめ波発射の構え	(敵)
SP_05x=	160915	;--	かめはめ波を打つ悟空背面～フィニッシュ	(敵)
SP_06x=	160916	;--	かめはめ波を打つ悟空背面～フィニッシュ	(敵)
SP_07x=	160912	;--	かめはめ波発射の構え

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
setEffMoveKey( spep_0 + 214, first, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first, 1.0, 1.0 );
setEffScaleKey( spep_0 + 214, first, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 214, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 212, first, 255 );
setEffAlphaKey( spep_0 + 213, first, 255 );
setEffAlphaKey( spep_0 + 214, first, 0 );

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
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 320, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 164 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--かめはめ波溜め
SE005 = playSeVer2( spep_0 + 120, 1209, "",spep_0 + 320, 0, 14, -1);
SE006 = playSeVer2( spep_0 + 146, 1209, "",spep_0 + 320, 0, 14, -1);
SE007 = playSeVer2( spep_0 + 146, 1210, "",spep_0 + 320, 0, 14, -1);

--構える
SE007 = playSeVer2( spep_0 + 190, 1004, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1= spep_0 + 214;
------------------------------------------------------
--かめはめ波を構える
------------------------------------------------------
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 84, tame_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 84, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame_f, 0 );
setEffRotateKey( spep_1 + 84, tame_f, 0 );
setEffAlphaKey( spep_1 + 0, tame_f, 255 );
setEffAlphaKey( spep_1 + 84, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 84, tame_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 84, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame_b, 0 );
setEffRotateKey( spep_1 + 84, tame_b, 0 );
setEffAlphaKey( spep_1 + 0, tame_b, 255 );
setEffAlphaKey( spep_1 + 84, tame_b, 255 );


--敵の動き
setDisp( spep_1 + 0, 1, 1);
setDisp( spep_1-1 + 84, 1, 0);

changeAnime( spep_1 + 0, 1, 100);

setMoveKey( spep_1 + 0, 1, 294, 775.7 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 277.4, 717.6 , 0 );
setMoveKey( spep_1-3 + 4, 1, 260.8, 659.6 , 0 );
setMoveKey( spep_1-3 + 5, 1, 260.8, 659.6 , 0 );
setMoveKey( spep_1-3 + 6, 1, 244.2, 601.6 , 0 );
setMoveKey( spep_1-3 + 7, 1, 244.2, 601.6 , 0 );
setMoveKey( spep_1-3 + 8, 1, 227.6, 543.5 , 0 );
setMoveKey( spep_1-3 + 9, 1, 227.6, 543.5 , 0 );
setMoveKey( spep_1-3 + 10, 1, 211, 485.5 , 0 );
setMoveKey( spep_1-3 + 11, 1, 211, 485.5 , 0 );
setMoveKey( spep_1-3 + 12, 1, 194.3, 427.4 , 0 );
setMoveKey( spep_1-3 + 13, 1, 194.3, 427.4 , 0 );
setMoveKey( spep_1-3 + 14, 1, 177.7, 369.3 , 0 );
setMoveKey( spep_1-3 + 15, 1, 177.7, 369.3 , 0 );
setMoveKey( spep_1-3 + 16, 1, 161.1, 311.3 , 0 );
setMoveKey( spep_1-3 + 17, 1, 161.1, 311.3 , 0 );
setMoveKey( spep_1-3 + 18, 1, 144.5, 253.3 , 0 );
setMoveKey( spep_1-3 + 19, 1, 144.5, 253.3 , 0 );
setMoveKey( spep_1-3 + 20, 1, 116.6, 210.8 , 0 );
setMoveKey( spep_1-3 + 21, 1, 116.6, 210.8 , 0 );
setMoveKey( spep_1-3 + 22, 1, 129, 173.2 , 0 );
setMoveKey( spep_1-3 + 23, 1, 129, 173.2 , 0 );
setMoveKey( spep_1-3 + 24, 1, 140.1, 216.2 , 0 );
setMoveKey( spep_1-3 + 25, 1, 140.1, 216.2 , 0 );
setMoveKey( spep_1-3 + 26, 1, 108.9, 169 , 0 );
setMoveKey( spep_1-3 + 27, 1, 108.9, 169 , 0 );
setMoveKey( spep_1-3 + 28, 1, 147.9, 188 , 0 );
setMoveKey( spep_1-3 + 29, 1, 147.9, 188 , 0 );
setMoveKey( spep_1-3 + 30, 1, 147.6, 156.5 , 0 );
setMoveKey( spep_1-3 + 31, 1, 147.6, 156.5 , 0 );
setMoveKey( spep_1-3 + 32, 1, 125, 194.8 , 0 );
setMoveKey( spep_1-3 + 33, 1, 125, 194.8 , 0 );
setMoveKey( spep_1-3 + 34, 1, 159.5, 187.1 , 0 );
setMoveKey( spep_1-3 + 35, 1, 159.5, 187.1 , 0 );
setMoveKey( spep_1-3 + 36, 1, 126, 189.1 , 0 );
setMoveKey( spep_1-3 + 37, 1, 126, 189.1 , 0 );
setMoveKey( spep_1-3 + 38, 1, 125.7, 188.3 , 0 );
setMoveKey( spep_1-3 + 38, 1, 125.7, 188.3 , 0 );
setMoveKey( spep_1-3 + 40, 1, 125.5, 187.6 , 0 );
setMoveKey( spep_1-3 + 41, 1, 125.5, 187.6 , 0 );
setMoveKey( spep_1-3 + 42, 1, 125.3, 186.8 , 0 );
setMoveKey( spep_1-3 + 43, 1, 125.3, 186.8 , 0 );
setMoveKey( spep_1-3 + 44, 1, 125, 186.1 , 0 );
setMoveKey( spep_1-3 + 45, 1, 125, 186.1 , 0 );
setMoveKey( spep_1-3 + 46, 1, 124.8, 185.3 , 0 );
setMoveKey( spep_1-3 + 47, 1, 124.8, 185.3 , 0 );
setMoveKey( spep_1-3 + 48, 1, 124.5, 184.5 , 0 );
setMoveKey( spep_1-3 + 49, 1, 124.5, 184.5 , 0 );
setMoveKey( spep_1-3 + 50, 1, 124.2, 183.8 , 0 );
setMoveKey( spep_1-3 + 51, 1, 124.2, 183.8 , 0 );
setMoveKey( spep_1-3 + 52, 1, 124, 183 , 0 );
setMoveKey( spep_1-3 + 53, 1, 124, 183 , 0 );
setMoveKey( spep_1-3 + 54, 1, 123.7, 182.3 , 0 );
setMoveKey( spep_1-3 + 55, 1, 123.7, 182.3 , 0 );
setMoveKey( spep_1-3 + 56, 1, 123.5, 181.5 , 0 );
setMoveKey( spep_1-3 + 57, 1, 123.5, 181.5 , 0 );
setMoveKey( spep_1-3 + 58, 1, 123.3, 180.7 , 0 );
setMoveKey( spep_1-3 + 59, 1, 123.3, 180.7 , 0 );
setMoveKey( spep_1-3 + 60, 1, 123.1, 180 , 0 );
setMoveKey( spep_1-3 + 61, 1, 123.1, 180 , 0 );
setMoveKey( spep_1-3 + 62, 1, 122.8, 179.2 , 0 );
setMoveKey( spep_1-3 + 64, 1, 122.6, 178.5 , 0 );
setMoveKey( spep_1-3 + 65, 1, 122.6, 178.5 , 0 );
setMoveKey( spep_1-3 + 66, 1, 122.3, 177.7 , 0 );
setMoveKey( spep_1-3 + 67, 1, 122.3, 177.7 , 0 );
setMoveKey( spep_1-3 + 68, 1, 122.1, 176.9 , 0 );
setMoveKey( spep_1-3 + 69, 1, 122.1, 176.9 , 0 );
setMoveKey( spep_1-3 + 70, 1, 121.9, 176.2 , 0 );
setMoveKey( spep_1-3 + 71, 1, 121.9, 176.2 , 0 );
setMoveKey( spep_1-3 + 72, 1, 121.6, 175.4 , 0 );
setMoveKey( spep_1-3 + 73, 1, 121.6, 175.4 , 0 );
setMoveKey( spep_1-3 + 74, 1, 121.3, 174.7 , 0 );
setMoveKey( spep_1-3 + 75, 1, 121.3, 174.7 , 0 );
setMoveKey( spep_1-3 + 76, 1, 121.1, 173.9 , 0 );
setMoveKey( spep_1-3 + 77, 1, 121.1, 173.9 , 0 );
setMoveKey( spep_1-3 + 78, 1, 120.8, 173.2 , 0 );
setMoveKey( spep_1-3 + 79, 1, 120.8, 173.2 , 0 );
setMoveKey( spep_1-3 + 80, 1, 120.6, 172.4 , 0 );
setMoveKey( spep_1-1+ 84, 1, 120.6, 172.4 , 0 );

setScaleKey( spep_1 + 0, 1, 0.82, 0.82 );
--setScaleKey( spep_1-3 + 2, 1, 0.76, 0.76 );
setScaleKey( spep_1-3 + 4, 1, 0.7, 0.7 );
setScaleKey( spep_1-3 + 5, 1, 0.7, 0.7 );
setScaleKey( spep_1-3 + 6, 1, 0.64, 0.64 );
setScaleKey( spep_1-3 + 7, 1, 0.64, 0.64 );
setScaleKey( spep_1-3 + 8, 1, 0.58, 0.58 );
setScaleKey( spep_1-3 + 9, 1, 0.58, 0.58 );
setScaleKey( spep_1-3 + 10, 1, 0.52, 0.52 );
setScaleKey( spep_1-3 + 11, 1, 0.52, 0.52 );
setScaleKey( spep_1-3 + 12, 1, 0.46, 0.46 );
setScaleKey( spep_1-3 + 13, 1, 0.46, 0.46 );
setScaleKey( spep_1-3 + 14, 1, 0.4, 0.4 );
setScaleKey( spep_1-3 + 15, 1, 0.4, 0.4 );
setScaleKey( spep_1-3 + 16, 1, 0.34, 0.34 );
setScaleKey( spep_1-3 + 17, 1, 0.34, 0.34 );
setScaleKey( spep_1-3 + 18, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 19, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 20, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 22, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 23, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 24, 1, 0.21, 0.21 );
setScaleKey( spep_1-3 + 26, 1, 0.21, 0.21 );
setScaleKey( spep_1-3 + 27, 1, 0.21, 0.21 );
setScaleKey( spep_1-3 + 28, 1, 0.2, 0.2 );
setScaleKey( spep_1-1 + 84, 1, 0.2, 0.2 );

setRotateKey( spep_1-3 + 12, 1, 0 );
setRotateKey( spep_1-1 + 84, 1, 0 );

--SE
--爆風
SE009 = playSeVer2( spep_1 + 24, 1024, "",spep_1 + 102, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 24, SE009, 78 );
SE010 = playSeVer2( spep_1 + 24, 1259, "",spep_1 + 102, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 24, SE010, 79 );
SE011 = playSeVer2( spep_1 + 30, 1258, "",spep_1 + 102, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 30, SE011, 84 );

--白フェード
entryFade( spep_1 +76 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 84;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

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

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 4, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_3 = spep_2 + 94;
------------------------------------------------------
--かめはめ波発射の構え
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_3 + 28, beam, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_3 + 28, beam, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam, 0 );
setEffRotateKey( spep_3 + 28, beam, 0 );
setEffAlphaKey( spep_3 + 0, beam, 255 );
setEffAlphaKey( spep_3 + 26, beam, 255 );
setEffAlphaKey( spep_3 + 27, beam, 255 );
setEffAlphaKey( spep_3 + 28, beam, 0 );

-- ** エフェクト等 ** --
beam2 = entryEffect( spep_3 + 28, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 28, beam2, 0, 0, 0 );
setEffMoveKey( spep_3 + 82, beam2, 0, 0, 0 );
setEffScaleKey( spep_3 + 28, beam2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 82, beam2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 28, beam2, 0 );
setEffRotateKey( spep_3 + 82, beam2, 0 );
setEffAlphaKey( spep_3 + 28, beam2, 255 );
setEffAlphaKey( spep_3 + 80, beam2, 255 );
setEffAlphaKey( spep_3 + 81, beam2, 255 );
setEffAlphaKey( spep_3 + 82, beam2, 0 );

--SE
--発射前溜め
SE004 = playSeVer2( spep_3 + 0, 1210, "",spep_3 + 74, 12, 24, -1);
setStartTimeMs( SE004,  5283 );
SE013 = playSeVer2( spep_3 + 10, 1356, "",spep_3 + 68, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 10, SE013, 79 );

--かめはめ波発射
SE014 = playSeVer2( spep_3 + 30, 1133, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_3 + 30, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 30, SE015, 81 );
SE016 = playSeVer2( spep_3 + 30, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 30, SE016, 87 );

-- ** 次の準備 ** --
spep_4= spep_3 + 82;
------------------------------------------------------
--気弾に押されて飛んでく敵〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 210, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 210, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 210, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 210, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 210, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 210, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 210, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 210, finish_b, 255 );
--SE
--かめはめ波飛んでいく
SE017 = playSeVer2( spep_4 + 0, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE017, 79 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 26; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );

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
setDisp( spep_4-3 + 42, 1, 1);
--setDisp( spep_4-1 + 144, 1, 0);

changeAnime( spep_4-3 + 42, 1, 104);
changeAnime( spep_4-3 + 78, 1, 108);

setMoveKey( spep_4-3 + 42, 1, 998.9, 1039.5 , 0 );
setMoveKey( spep_4-3 + 44, 1, 994, 993.6 , 0 );
setMoveKey( spep_4-3 + 46, 1, 857.1, 867.9 , 0 );
setMoveKey( spep_4-3 + 48, 1, 875.5, 811.9 , 0 );
setMoveKey( spep_4-3 + 50, 1, 748.6, 796.7 , 0 );
setMoveKey( spep_4-3 + 52, 1, 745.3, 751.1 , 0 );
setMoveKey( spep_4-3 + 54, 1, 644.6, 657.1 , 0 );
setMoveKey( spep_4-3 + 56, 1, 582.2, 596.3 , 0 );
setMoveKey( spep_4-3 + 58, 1, 519.8, 535.5 , 0 );
setMoveKey( spep_4-3 + 60, 1, 457.3, 474.6 , 0 );
setMoveKey( spep_4-3 + 62, 1, 394.8, 413.8 , 0 );
setMoveKey( spep_4-3 + 64, 1, 332.4, 353 , 0 );
setMoveKey( spep_4-3 + 66, 1, 270, 292.1 , 0 );
setMoveKey( spep_4-3 + 68, 1, 207.5, 231.4 , 0 );
setMoveKey( spep_4-3 + 70, 1, 145.2, 170.5 , 0 );
setMoveKey( spep_4-3 + 72, 1, 82.7, 109.7 , 0 );
setMoveKey( spep_4-3 + 74, 1, 82.7, 109.7 , 0 );
setMoveKey( spep_4-3 + 76, 1, 51.6, 134 , 0 );
setMoveKey( spep_4-3 + 77, 1, 51.6, 134 , 0 );

setMoveKey( spep_4-3 + 78, 1, 114.8, 122.4 , 0 );
setMoveKey( spep_4-3 + 80, 1, 160.5, 165.8 , 0 );
setMoveKey( spep_4-3 + 82, 1, 103.4, 127.5 , 0 );
setMoveKey( spep_4-3 + 84, 1, 133.6, 174.8 , 0 );
setMoveKey( spep_4-3 + 86, 1, 158, 132.7 , 0 );
setMoveKey( spep_4-3 + 87, 1, 158, 132.7 , 0 );

setMoveKey( spep_4-3 + 88, 1, 71.9, -30.1 , 0 );
setMoveKey( spep_4-3 + 90, 1, 83.2, -17.3 , 0 );
setMoveKey( spep_4-3 + 92, 1, 54.3, -34.3 , 0 );
setMoveKey( spep_4-3 + 94, 1, 46.7, -4.3 , 0 );
setMoveKey( spep_4-3 + 96, 1, 81.8, -30.2 , 0 );
setMoveKey( spep_4-3 + 98, 1, 88.6, -2.3 , 0 );
setMoveKey( spep_4-3 + 100, 1, 57.9, -6 , 0 );
setMoveKey( spep_4-3 + 102, 1, 35.1, -38.5 , 0 );
setMoveKey( spep_4-3 + 104, 1, 81.2, -24.4 , 0 );
setMoveKey( spep_4-3 + 106, 1, 78.4, 1.7 , 0 );
setMoveKey( spep_4-3 + 108, 1, 51.7, -14.5 , 0 );
setMoveKey( spep_4-3 + 110, 1, 45.2, 13.8 , 0 );
setMoveKey( spep_4-3 + 112, 1, 79.2, -10.7 , 0 );
setMoveKey( spep_4-3 + 114, 1, 86.4, 15.5 , 0 );
setMoveKey( spep_4-3 + 116, 1, 58.2, 12 , 0 );
setMoveKey( spep_4-3 + 118, 1, 37.4, -18.8 , 0 );
setMoveKey( spep_4-3 + 120, 1, 81.7, -5.6 , 0 );
setMoveKey( spep_4-3 + 122, 1, 79.9, 19 , 0 );
setMoveKey( spep_4-3 + 124, 1, 55.6, 3.5 , 0 );
setMoveKey( spep_4-3 + 126, 1, 50.3, 30.1 , 0 );
setMoveKey( spep_4-3 + 128, 1, 83.1, 7 , 0 );
setMoveKey( spep_4-3 + 130, 1, 90.7, 31.5 , 0 );
setMoveKey( spep_4-3 + 132, 1, 65, 28.1 , 0 );
setMoveKey( spep_4-3 + 134, 1, 46.3, -0.9 , 0 );
setMoveKey( spep_4-3 + 136, 1, 88.8, 11.4 , 0 );
setMoveKey( spep_4-3 + 138, 1, 87.9, 34.4 , 0 );
setMoveKey( spep_4-3 + 140, 1, 65.7, 19.9 , 0 );
setMoveKey( spep_4-3 + 142, 1, 61.5, 44.8 , 0 );
setMoveKey( spep_4-3 + 144, 1, 93, 23.1 , 0 );
setMoveKey( spep_4-3 + 146, 1, 99.1, 47 , 0 );
setMoveKey( spep_4-3 + 148, 1, 74, 44.6 , 0 );
setMoveKey( spep_4-3 + 150, 1, 55.4, 18.3 , 0 );
setMoveKey( spep_4-3 + 152, 1, 94.2, 30.7 , 0 );
setMoveKey( spep_4-3 + 154, 1, 92.2, 53.1 , 0 );
setMoveKey( spep_4-3 + 156, 1, 70.5, 40.4 , 0 );
setMoveKey( spep_4-3 + 158, 1, 65.5, 64.5 , 0 );
setMoveKey( spep_4-3 + 160, 1, 93.8, 45 , 0 );
setMoveKey( spep_4-3 + 162, 1, 99.9, 67.3 , 0 );
setMoveKey( spep_4-3 + 164, 1, 76.9, 65.1 , 0 );
setMoveKey( spep_4-3 + 166, 1, 60, 40.5 , 0 );
setMoveKey( spep_4-3 + 168, 1, 96.6, 52.1 , 0 );
setMoveKey( spep_4-3 + 170, 1, 95.3, 73 , 0 );
setMoveKey( spep_4-3 + 172, 1, 75.5, 61.1 , 0 );
setMoveKey( spep_4-3 + 174, 1, 71.3, 83.5 , 0 );
setMoveKey( spep_4-3 + 176, 1, 98.1, 65.3 , 0 );
setMoveKey( spep_4-3 + 178, 1, 107, 84.9 , 0 );
setMoveKey( spep_4-3 + 180, 1, 88.8, 81.8 , 0 );
setMoveKey( spep_4-3 + 182, 1, 76.4, 57.9 , 0 );
setMoveKey( spep_4-3 + 184, 1, 113.3, 67.5 , 0 );
setMoveKey( spep_4-3 + 186, 1, 115.1, 85.9 , 0 );
setMoveKey( spep_4-3 + 188, 1, 124.5, 90.6 , 0 );
setMoveKey( spep_4-3 + 190, 1, 107.3, 87.7 , 0 );
setMoveKey( spep_4-3 + 192, 1, 127.4, 72.9 , 0 );
setMoveKey( spep_4-3 + 194, 1, 129.3, 90.5 , 0 );
setMoveKey( spep_4-3 + 196, 1, 138.4, 95.1 , 0 );
setMoveKey( spep_4-3 + 198, 1, 122.1, 92.4 , 0 );
setMoveKey( spep_4-3 + 200, 1, 145.4, 97.4 , 0 );
setMoveKey( spep_4-3 + 202, 1, 129.5, 94.7 , 0 );
setMoveKey( spep_4-3 + 204, 1, 148.6, 81 , 0 );
setMoveKey( spep_4-3 + 206, 1, 150.6, 97.6 , 0 );
setMoveKey( spep_4-3 + 208, 1, 159.4, 102 , 0 );

setScaleKey( spep_4-3 + 42, 1, 1.45, 1.45 );
setScaleKey( spep_4-3 + 44, 1, 1.46, 1.46 );
setScaleKey( spep_4-3 + 46, 1, 1.47, 1.47 );
setScaleKey( spep_4-3 + 48, 1, 1.48, 1.48 );
setScaleKey( spep_4-3 + 50, 1, 1.49, 1.49 );
setScaleKey( spep_4-3 + 52, 1, 1.5, 1.5 );
setScaleKey( spep_4-3 + 54, 1, 1.51, 1.51 );
setScaleKey( spep_4-3 + 56, 1, 1.52, 1.52 );
setScaleKey( spep_4-3 + 58, 1, 1.53, 1.53 );
setScaleKey( spep_4-3 + 60, 1, 1.54, 1.54 );
setScaleKey( spep_4-3 + 62, 1, 1.55, 1.55 );
setScaleKey( spep_4-3 + 64, 1, 1.56, 1.56 );
setScaleKey( spep_4-3 + 66, 1, 1.57, 1.57 );
setScaleKey( spep_4-3 + 68, 1, 1.58, 1.58 );
setScaleKey( spep_4-3 + 70, 1, 1.59, 1.59 );
setScaleKey( spep_4-3 + 72, 1, 1.6, 1.6 );
setScaleKey( spep_4-3 + 87, 1, 1.6, 1.6 );

setScaleKey( spep_4-3 + 88, 1, 3.32, 3.32 );
setScaleKey( spep_4-3 + 90, 1, 3.18, 3.18 );
setScaleKey( spep_4-3 + 92, 1, 3.05, 3.05 );
setScaleKey( spep_4-3 + 94, 1, 2.92, 2.92 );
setScaleKey( spep_4-3 + 96, 1, 2.79, 2.79 );
setScaleKey( spep_4-3 + 98, 1, 2.66, 2.66 );
setScaleKey( spep_4-3 + 100, 1, 2.54, 2.54 );
setScaleKey( spep_4-3 + 102, 1, 2.42, 2.42 );
setScaleKey( spep_4-3 + 104, 1, 2.3, 2.3 );
setScaleKey( spep_4-3 + 106, 1, 2.19, 2.19 );
setScaleKey( spep_4-3 + 108, 1, 2.08, 2.08 );
setScaleKey( spep_4-3 + 110, 1, 1.97, 1.97 );
setScaleKey( spep_4-3 + 112, 1, 1.86, 1.86 );
setScaleKey( spep_4-3 + 114, 1, 1.76, 1.76 );
setScaleKey( spep_4-3 + 116, 1, 1.67, 1.67 );
setScaleKey( spep_4-3 + 118, 1, 1.57, 1.57 );
setScaleKey( spep_4-3 + 120, 1, 1.48, 1.48 );
setScaleKey( spep_4-3 + 122, 1, 1.39, 1.39 );
setScaleKey( spep_4-3 + 124, 1, 1.31, 1.31 );
setScaleKey( spep_4-3 + 126, 1, 1.23, 1.23 );
setScaleKey( spep_4-3 + 128, 1, 1.15, 1.15 );
setScaleKey( spep_4-3 + 130, 1, 1.07, 1.07 );
setScaleKey( spep_4-3 + 132, 1, 1, 1 );
setScaleKey( spep_4-3 + 134, 1, 0.93, 0.93 );
setScaleKey( spep_4-3 + 136, 1, 0.87, 0.87 );
setScaleKey( spep_4-3 + 138, 1, 0.8, 0.8 );
setScaleKey( spep_4-3 + 140, 1, 0.74, 0.74 );
setScaleKey( spep_4-3 + 142, 1, 0.68, 0.68 );
setScaleKey( spep_4-3 + 144, 1, 0.63, 0.63 );
setScaleKey( spep_4-3 + 146, 1, 0.59, 0.59 );
setScaleKey( spep_4-3 + 148, 1, 0.55, 0.55 );
setScaleKey( spep_4-3 + 150, 1, 0.52, 0.52 );
setScaleKey( spep_4-3 + 152, 1, 0.48, 0.48 );
setScaleKey( spep_4-3 + 154, 1, 0.45, 0.45 );
setScaleKey( spep_4-3 + 156, 1, 0.42, 0.42 );
setScaleKey( spep_4-3 + 158, 1, 0.38, 0.38 );
setScaleKey( spep_4-3 + 160, 1, 0.35, 0.35 );
setScaleKey( spep_4-3 + 162, 1, 0.32, 0.32 );
setScaleKey( spep_4-3 + 164, 1, 0.29, 0.29 );
setScaleKey( spep_4-3 + 166, 1, 0.26, 0.26 );
setScaleKey( spep_4-3 + 168, 1, 0.23, 0.23 );
setScaleKey( spep_4-3 + 170, 1, 0.2, 0.2 );
setScaleKey( spep_4-3 + 172, 1, 0.17, 0.17 );
setScaleKey( spep_4-3 + 174, 1, 0.14, 0.14 );
setScaleKey( spep_4-3 + 176, 1, 0.11, 0.11 );
setScaleKey( spep_4-3 + 182, 1, 0.11, 0.11 );
setScaleKey( spep_4-3 + 184, 1, 0.1, 0.1 );
setScaleKey( spep_4-3 + 202, 1, 0.1, 0.1 );
setScaleKey( spep_4-3 + 204, 1, 0.09, 0.09 );
setScaleKey( spep_4-3 + 208, 1, 0.09, 0.09 );

setRotateKey( spep_4-3 + 42, 1, 14 );
setRotateKey( spep_4-3 + 77, 1, 14 );

setRotateKey( spep_4-3 + 78, 1, -18.4 );
setRotateKey( spep_4-3 + 80, 1, -17.2 );
setRotateKey( spep_4-3 + 82, 1, -15.9 );
setRotateKey( spep_4-3 + 84, 1, -14.7 );
setRotateKey( spep_4-3 + 87, 1, -13.4 );

setRotateKey( spep_4-3 + 88, 1, -32.9 );
setRotateKey( spep_4-1 + 208, 1, -32.9 );

--SE
--敵ヒット
SE018 = playSeVer2( spep_4 + 76, 1145, "", 0, 0, 0, -1);

--敵飛ばされる
SE019 = playSeVer2( spep_4 + 88, 1284, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_4+92);
endPhase( spep_4 + 200 );
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
setEffMoveKey( spep_0 + 214, first, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first, -1.0, 1.0 );
setEffScaleKey( spep_0 + 214, first, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 214, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 212, first, 255 );
setEffAlphaKey( spep_0 + 213, first, 255 );
setEffAlphaKey( spep_0 + 214, first, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
----speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
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
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 320, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 164 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--かめはめ波溜め
SE005 = playSeVer2( spep_0 + 120, 1209, "",spep_0 + 320, 0, 14, -1);
SE006 = playSeVer2( spep_0 + 146, 1209, "",spep_0 + 320, 0, 14, -1);
SE007 = playSeVer2( spep_0 + 146, 1210, "",spep_0 + 320, 0, 14, -1);

--構える
SE007 = playSeVer2( spep_0 + 190, 1004, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1= spep_0 + 214;
------------------------------------------------------
--かめはめ波を構える
------------------------------------------------------
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 84, tame_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 84, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame_f, 0 );
setEffRotateKey( spep_1 + 84, tame_f, 0 );
setEffAlphaKey( spep_1 + 0, tame_f, 255 );
setEffAlphaKey( spep_1 + 84, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 84, tame_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 84, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame_b, 0 );
setEffRotateKey( spep_1 + 84, tame_b, 0 );
setEffAlphaKey( spep_1 + 0, tame_b, 255 );
setEffAlphaKey( spep_1 + 84, tame_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1);
setDisp( spep_1-1 + 84, 1, 0);

changeAnime( spep_1 + 0, 1, 0);

setMoveKey( spep_1 + 0, 1, -294, 775.7 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 277.4, 717.6 , 0 );
setMoveKey( spep_1-3 + 4, 1, -260.8, 659.6 , 0 );
setMoveKey( spep_1-3 + 5, 1, -260.8, 659.6 , 0 );
setMoveKey( spep_1-3 + 6, 1, -244.2, 601.6 , 0 );
setMoveKey( spep_1-3 + 7, 1, -244.2, 601.6 , 0 );
setMoveKey( spep_1-3 + 8, 1, -227.6, 543.5 , 0 );
setMoveKey( spep_1-3 + 9, 1, -227.6, 543.5 , 0 );
setMoveKey( spep_1-3 + 10, 1, -211, 485.5 , 0 );
setMoveKey( spep_1-3 + 11, 1, -211, 485.5 , 0 );
setMoveKey( spep_1-3 + 12, 1, -194.3, 427.4 , 0 );
setMoveKey( spep_1-3 + 13, 1, -194.3, 427.4 , 0 );
setMoveKey( spep_1-3 + 14, 1, -177.7, 369.3 , 0 );
setMoveKey( spep_1-3 + 15, 1, -177.7, 369.3 , 0 );
setMoveKey( spep_1-3 + 16, 1, -161.1, 311.3 , 0 );
setMoveKey( spep_1-3 + 17, 1, -161.1, 311.3 , 0 );
setMoveKey( spep_1-3 + 18, 1, -144.5, 253.3 , 0 );
setMoveKey( spep_1-3 + 19, 1, -144.5, 253.3 , 0 );
setMoveKey( spep_1-3 + 20, 1, -116.6, 210.8 , 0 );
setMoveKey( spep_1-3 + 21, 1, -116.6, 210.8 , 0 );
setMoveKey( spep_1-3 + 22, 1, -129, 173.2 , 0 );
setMoveKey( spep_1-3 + 23, 1, -129, 173.2 , 0 );
setMoveKey( spep_1-3 + 24, 1, -140.1, 216.2 , 0 );
setMoveKey( spep_1-3 + 25, 1, -140.1, 216.2 , 0 );
setMoveKey( spep_1-3 + 26, 1, -108.9, 169 , 0 );
setMoveKey( spep_1-3 + 27, 1, -108.9, 169 , 0 );
setMoveKey( spep_1-3 + 28, 1, -147.9, 188 , 0 );
setMoveKey( spep_1-3 + 29, 1, -147.9, 188 , 0 );
setMoveKey( spep_1-3 + 30, 1, -147.6, 156.5 , 0 );
setMoveKey( spep_1-3 + 31, 1, -147.6, 156.5 , 0 );
setMoveKey( spep_1-3 + 32, 1, -125, 194.8 , 0 );
setMoveKey( spep_1-3 + 33, 1, -125, 194.8 , 0 );
setMoveKey( spep_1-3 + 34, 1, -159.5, 187.1 , 0 );
setMoveKey( spep_1-3 + 35, 1, -159.5, 187.1 , 0 );
setMoveKey( spep_1-3 + 36, 1, -126, 189.1 , 0 );
setMoveKey( spep_1-3 + 37, 1, -126, 189.1 , 0 );
setMoveKey( spep_1-3 + 38, 1, -125.7, 188.3 , 0 );
setMoveKey( spep_1-3 + 38, 1, -125.7, 188.3 , 0 );
setMoveKey( spep_1-3 + 40, 1, -125.5, 187.6 , 0 );
setMoveKey( spep_1-3 + 41, 1, -125.5, 187.6 , 0 );
setMoveKey( spep_1-3 + 42, 1, -125.3, 186.8 , 0 );
setMoveKey( spep_1-3 + 43, 1, -125.3, 186.8 , 0 );
setMoveKey( spep_1-3 + 44, 1, -125, 186.1 , 0 );
setMoveKey( spep_1-3 + 45, 1, -125, 186.1 , 0 );
setMoveKey( spep_1-3 + 46, 1, -124.8, 185.3 , 0 );
setMoveKey( spep_1-3 + 47, 1, -124.8, 185.3 , 0 );
setMoveKey( spep_1-3 + 48, 1, -124.5, 184.5 , 0 );
setMoveKey( spep_1-3 + 49, 1, -124.5, 184.5 , 0 );
setMoveKey( spep_1-3 + 50, 1, -124.2, 183.8 , 0 );
setMoveKey( spep_1-3 + 51, 1, -124.2, 183.8 , 0 );
setMoveKey( spep_1-3 + 52, 1, -124, 183 , 0 );
setMoveKey( spep_1-3 + 53, 1, -124, 183 , 0 );
setMoveKey( spep_1-3 + 54, 1, -123.7, 182.3 , 0 );
setMoveKey( spep_1-3 + 55, 1, -123.7, 182.3 , 0 );
setMoveKey( spep_1-3 + 56, 1, -123.5, 181.5 , 0 );
setMoveKey( spep_1-3 + 57, 1, -123.5, 181.5 , 0 );
setMoveKey( spep_1-3 + 58, 1, -123.3, 180.7 , 0 );
setMoveKey( spep_1-3 + 59, 1, -123.3, 180.7 , 0 );
setMoveKey( spep_1-3 + 60, 1, -123.1, 180 , 0 );
setMoveKey( spep_1-3 + 61, 1, -123.1, 180 , 0 );
setMoveKey( spep_1-3 + 62, 1, -122.8, 179.2 , 0 );
setMoveKey( spep_1-3 + 64, 1, -122.6, 178.5 , 0 );
setMoveKey( spep_1-3 + 65, 1, -122.6, 178.5 , 0 );
setMoveKey( spep_1-3 + 66, 1, -122.3, 177.7 , 0 );
setMoveKey( spep_1-3 + 67, 1, -122.3, 177.7 , 0 );
setMoveKey( spep_1-3 + 68, 1, -122.1, 176.9 , 0 );
setMoveKey( spep_1-3 + 69, 1, -122.1, 176.9 , 0 );
setMoveKey( spep_1-3 + 70, 1, -121.9, 176.2 , 0 );
setMoveKey( spep_1-3 + 71, 1, -121.9, 176.2 , 0 );
setMoveKey( spep_1-3 + 72, 1, -121.6, 175.4 , 0 );
setMoveKey( spep_1-3 + 73, 1, -121.6, 175.4 , 0 );
setMoveKey( spep_1-3 + 74, 1, -121.3, 174.7 , 0 );
setMoveKey( spep_1-3 + 75, 1, -121.3, 174.7 , 0 );
setMoveKey( spep_1-3 + 76, 1, -121.1, 173.9 , 0 );
setMoveKey( spep_1-3 + 77, 1, -121.1, 173.9 , 0 );
setMoveKey( spep_1-3 + 78, 1, -120.8, 173.2 , 0 );
setMoveKey( spep_1-3 + 79, 1, -120.8, 173.2 , 0 );
setMoveKey( spep_1-3 + 80, 1, -120.6, 172.4 , 0 );
setMoveKey( spep_1-1+ 84, 1, -120.6, 172.4 , 0 );

setScaleKey( spep_1 + 0, 1, 0.82, 0.82 );
--setScaleKey( spep_1-3 + 2, 1, 0.76, 0.76 );
setScaleKey( spep_1-3 + 4, 1, 0.7, 0.7 );
setScaleKey( spep_1-3 + 5, 1, 0.7, 0.7 );
setScaleKey( spep_1-3 + 6, 1, 0.64, 0.64 );
setScaleKey( spep_1-3 + 7, 1, 0.64, 0.64 );
setScaleKey( spep_1-3 + 8, 1, 0.58, 0.58 );
setScaleKey( spep_1-3 + 9, 1, 0.58, 0.58 );
setScaleKey( spep_1-3 + 10, 1, 0.52, 0.52 );
setScaleKey( spep_1-3 + 11, 1, 0.52, 0.52 );
setScaleKey( spep_1-3 + 12, 1, 0.46, 0.46 );
setScaleKey( spep_1-3 + 13, 1, 0.46, 0.46 );
setScaleKey( spep_1-3 + 14, 1, 0.4, 0.4 );
setScaleKey( spep_1-3 + 15, 1, 0.4, 0.4 );
setScaleKey( spep_1-3 + 16, 1, 0.34, 0.34 );
setScaleKey( spep_1-3 + 17, 1, 0.34, 0.34 );
setScaleKey( spep_1-3 + 18, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 19, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 20, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 22, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 23, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 24, 1, 0.21, 0.21 );
setScaleKey( spep_1-3 + 26, 1, 0.21, 0.21 );
setScaleKey( spep_1-3 + 27, 1, 0.21, 0.21 );
setScaleKey( spep_1-3 + 28, 1, 0.2, 0.2 );
setScaleKey( spep_1-1 + 84, 1, 0.2, 0.2 );

setRotateKey( spep_1-3 + 12, 1, 0 );
setRotateKey( spep_1-1 + 84, 1, 0 );

--SE
--爆風
SE009 = playSeVer2( spep_1 + 24, 1024, "",spep_1 + 102, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 24, SE009, 78 );
SE010 = playSeVer2( spep_1 + 24, 1259, "",spep_1 + 102, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 24, SE010, 79 );
SE011 = playSeVer2( spep_1 + 30, 1258, "",spep_1 + 102, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 30, SE011, 84 );

--白フェード
entryFade( spep_1 +76 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 84;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

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

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 4, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_3 = spep_2 + 94;
------------------------------------------------------
--かめはめ波発射の構え
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_3 + 28, beam, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_3 + 28, beam, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam, 0 );
setEffRotateKey( spep_3 + 28, beam, 0 );
setEffAlphaKey( spep_3 + 0, beam, 255 );
setEffAlphaKey( spep_3 + 26, beam, 255 );
setEffAlphaKey( spep_3 + 27, beam, 255 );
setEffAlphaKey( spep_3 + 28, beam, 0 );

-- ** エフェクト等 ** --
beam2 = entryEffect( spep_3 + 28, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 28, beam2, 0, 0, 0 );
setEffMoveKey( spep_3 + 82, beam2, 0, 0, 0 );
setEffScaleKey( spep_3 + 28, beam2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 82, beam2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 28, beam2, 0 );
setEffRotateKey( spep_3 + 82, beam2, 0 );
setEffAlphaKey( spep_3 + 28, beam2, 255 );
setEffAlphaKey( spep_3 + 80, beam2, 255 );
setEffAlphaKey( spep_3 + 81, beam2, 255 );
setEffAlphaKey( spep_3 + 82, beam2, 0 );

--SE
--発射前溜め
SE004 = playSeVer2( spep_3 + 0, 1210, "",spep_3 + 74, 12, 24, -1);
setStartTimeMs( SE004,  5283 );
SE013 = playSeVer2( spep_3 + 10, 1356, "",spep_3 + 68, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 10, SE013, 79 );

--かめはめ波発射
SE014 = playSeVer2( spep_3 + 30, 1133, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_3 + 30, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 30, SE015, 81 );
SE016 = playSeVer2( spep_3 + 30, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 30, SE016, 87 );

-- ** 次の準備 ** --
spep_4= spep_3 + 82;
------------------------------------------------------
--気弾に押されて飛んでく敵〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 210, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 210, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 210, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 210, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 210, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 210, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 210, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 210, finish_b, 255 );
--SE
--かめはめ波飛んでいく
SE017 = playSeVer2( spep_4 + 0, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE017, 79 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 26; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );

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
setDisp( spep_4-3 + 42, 1, 1);
--setDisp( spep_4-1 + 144, 1, 0);

changeAnime( spep_4-3 + 42, 1, 104);
changeAnime( spep_4-3 + 78, 1, 108);

setMoveKey( spep_4-3 + 42, 1, 998.9, 1039.5 , 0 );
setMoveKey( spep_4-3 + 44, 1, 994, 993.6 , 0 );
setMoveKey( spep_4-3 + 46, 1, 857.1, 867.9 , 0 );
setMoveKey( spep_4-3 + 48, 1, 875.5, 811.9 , 0 );
setMoveKey( spep_4-3 + 50, 1, 748.6, 796.7 , 0 );
setMoveKey( spep_4-3 + 52, 1, 745.3, 751.1 , 0 );
setMoveKey( spep_4-3 + 54, 1, 644.6, 657.1 , 0 );
setMoveKey( spep_4-3 + 56, 1, 582.2, 596.3 , 0 );
setMoveKey( spep_4-3 + 58, 1, 519.8, 535.5 , 0 );
setMoveKey( spep_4-3 + 60, 1, 457.3, 474.6 , 0 );
setMoveKey( spep_4-3 + 62, 1, 394.8, 413.8 , 0 );
setMoveKey( spep_4-3 + 64, 1, 332.4, 353 , 0 );
setMoveKey( spep_4-3 + 66, 1, 270, 292.1 , 0 );
setMoveKey( spep_4-3 + 68, 1, 207.5, 231.4 , 0 );
setMoveKey( spep_4-3 + 70, 1, 145.2, 170.5 , 0 );
setMoveKey( spep_4-3 + 72, 1, 82.7, 109.7 , 0 );
setMoveKey( spep_4-3 + 74, 1, 82.7, 109.7 , 0 );
setMoveKey( spep_4-3 + 76, 1, 51.6, 134 , 0 );
setMoveKey( spep_4-3 + 77, 1, 51.6, 134 , 0 );

setMoveKey( spep_4-3 + 78, 1, 114.8, 122.4 , 0 );
setMoveKey( spep_4-3 + 80, 1, 160.5, 165.8 , 0 );
setMoveKey( spep_4-3 + 82, 1, 103.4, 127.5 , 0 );
setMoveKey( spep_4-3 + 84, 1, 133.6, 174.8 , 0 );
setMoveKey( spep_4-3 + 86, 1, 158, 132.7 , 0 );
setMoveKey( spep_4-3 + 87, 1, 158, 132.7 , 0 );

setMoveKey( spep_4-3 + 88, 1, 71.9, -30.1 , 0 );
setMoveKey( spep_4-3 + 90, 1, 83.2, -17.3 , 0 );
setMoveKey( spep_4-3 + 92, 1, 54.3, -34.3 , 0 );
setMoveKey( spep_4-3 + 94, 1, 46.7, -4.3 , 0 );
setMoveKey( spep_4-3 + 96, 1, 81.8, -30.2 , 0 );
setMoveKey( spep_4-3 + 98, 1, 88.6, -2.3 , 0 );
setMoveKey( spep_4-3 + 100, 1, 57.9, -6 , 0 );
setMoveKey( spep_4-3 + 102, 1, 35.1, -38.5 , 0 );
setMoveKey( spep_4-3 + 104, 1, 81.2, -24.4 , 0 );
setMoveKey( spep_4-3 + 106, 1, 78.4, 1.7 , 0 );
setMoveKey( spep_4-3 + 108, 1, 51.7, -14.5 , 0 );
setMoveKey( spep_4-3 + 110, 1, 45.2, 13.8 , 0 );
setMoveKey( spep_4-3 + 112, 1, 79.2, -10.7 , 0 );
setMoveKey( spep_4-3 + 114, 1, 86.4, 15.5 , 0 );
setMoveKey( spep_4-3 + 116, 1, 58.2, 12 , 0 );
setMoveKey( spep_4-3 + 118, 1, 37.4, -18.8 , 0 );
setMoveKey( spep_4-3 + 120, 1, 81.7, -5.6 , 0 );
setMoveKey( spep_4-3 + 122, 1, 79.9, 19 , 0 );
setMoveKey( spep_4-3 + 124, 1, 55.6, 3.5 , 0 );
setMoveKey( spep_4-3 + 126, 1, 50.3, 30.1 , 0 );
setMoveKey( spep_4-3 + 128, 1, 83.1, 7 , 0 );
setMoveKey( spep_4-3 + 130, 1, 90.7, 31.5 , 0 );
setMoveKey( spep_4-3 + 132, 1, 65, 28.1 , 0 );
setMoveKey( spep_4-3 + 134, 1, 46.3, -0.9 , 0 );
setMoveKey( spep_4-3 + 136, 1, 88.8, 11.4 , 0 );
setMoveKey( spep_4-3 + 138, 1, 87.9, 34.4 , 0 );
setMoveKey( spep_4-3 + 140, 1, 65.7, 19.9 , 0 );
setMoveKey( spep_4-3 + 142, 1, 61.5, 44.8 , 0 );
setMoveKey( spep_4-3 + 144, 1, 93, 23.1 , 0 );
setMoveKey( spep_4-3 + 146, 1, 99.1, 47 , 0 );
setMoveKey( spep_4-3 + 148, 1, 74, 44.6 , 0 );
setMoveKey( spep_4-3 + 150, 1, 55.4, 18.3 , 0 );
setMoveKey( spep_4-3 + 152, 1, 94.2, 30.7 , 0 );
setMoveKey( spep_4-3 + 154, 1, 92.2, 53.1 , 0 );
setMoveKey( spep_4-3 + 156, 1, 70.5, 40.4 , 0 );
setMoveKey( spep_4-3 + 158, 1, 65.5, 64.5 , 0 );
setMoveKey( spep_4-3 + 160, 1, 93.8, 45 , 0 );
setMoveKey( spep_4-3 + 162, 1, 99.9, 67.3 , 0 );
setMoveKey( spep_4-3 + 164, 1, 76.9, 65.1 , 0 );
setMoveKey( spep_4-3 + 166, 1, 60, 40.5 , 0 );
setMoveKey( spep_4-3 + 168, 1, 96.6, 52.1 , 0 );
setMoveKey( spep_4-3 + 170, 1, 95.3, 73 , 0 );
setMoveKey( spep_4-3 + 172, 1, 75.5, 61.1 , 0 );
setMoveKey( spep_4-3 + 174, 1, 71.3, 83.5 , 0 );
setMoveKey( spep_4-3 + 176, 1, 98.1, 65.3 , 0 );
setMoveKey( spep_4-3 + 178, 1, 107, 84.9 , 0 );
setMoveKey( spep_4-3 + 180, 1, 88.8, 81.8 , 0 );
setMoveKey( spep_4-3 + 182, 1, 76.4, 57.9 , 0 );
setMoveKey( spep_4-3 + 184, 1, 113.3, 67.5 , 0 );
setMoveKey( spep_4-3 + 186, 1, 115.1, 85.9 , 0 );
setMoveKey( spep_4-3 + 188, 1, 124.5, 90.6 , 0 );
setMoveKey( spep_4-3 + 190, 1, 107.3, 87.7 , 0 );
setMoveKey( spep_4-3 + 192, 1, 127.4, 72.9 , 0 );
setMoveKey( spep_4-3 + 194, 1, 129.3, 90.5 , 0 );
setMoveKey( spep_4-3 + 196, 1, 138.4, 95.1 , 0 );
setMoveKey( spep_4-3 + 198, 1, 122.1, 92.4 , 0 );
setMoveKey( spep_4-3 + 200, 1, 145.4, 97.4 , 0 );
setMoveKey( spep_4-3 + 202, 1, 129.5, 94.7 , 0 );
setMoveKey( spep_4-3 + 204, 1, 148.6, 81 , 0 );
setMoveKey( spep_4-3 + 206, 1, 150.6, 97.6 , 0 );
setMoveKey( spep_4-3 + 208, 1, 159.4, 102 , 0 );

setScaleKey( spep_4-3 + 42, 1, 1.45, 1.45 );
setScaleKey( spep_4-3 + 44, 1, 1.46, 1.46 );
setScaleKey( spep_4-3 + 46, 1, 1.47, 1.47 );
setScaleKey( spep_4-3 + 48, 1, 1.48, 1.48 );
setScaleKey( spep_4-3 + 50, 1, 1.49, 1.49 );
setScaleKey( spep_4-3 + 52, 1, 1.5, 1.5 );
setScaleKey( spep_4-3 + 54, 1, 1.51, 1.51 );
setScaleKey( spep_4-3 + 56, 1, 1.52, 1.52 );
setScaleKey( spep_4-3 + 58, 1, 1.53, 1.53 );
setScaleKey( spep_4-3 + 60, 1, 1.54, 1.54 );
setScaleKey( spep_4-3 + 62, 1, 1.55, 1.55 );
setScaleKey( spep_4-3 + 64, 1, 1.56, 1.56 );
setScaleKey( spep_4-3 + 66, 1, 1.57, 1.57 );
setScaleKey( spep_4-3 + 68, 1, 1.58, 1.58 );
setScaleKey( spep_4-3 + 70, 1, 1.59, 1.59 );
setScaleKey( spep_4-3 + 72, 1, 1.6, 1.6 );
setScaleKey( spep_4-3 + 87, 1, 1.6, 1.6 );

setScaleKey( spep_4-3 + 88, 1, 3.32, 3.32 );
setScaleKey( spep_4-3 + 90, 1, 3.18, 3.18 );
setScaleKey( spep_4-3 + 92, 1, 3.05, 3.05 );
setScaleKey( spep_4-3 + 94, 1, 2.92, 2.92 );
setScaleKey( spep_4-3 + 96, 1, 2.79, 2.79 );
setScaleKey( spep_4-3 + 98, 1, 2.66, 2.66 );
setScaleKey( spep_4-3 + 100, 1, 2.54, 2.54 );
setScaleKey( spep_4-3 + 102, 1, 2.42, 2.42 );
setScaleKey( spep_4-3 + 104, 1, 2.3, 2.3 );
setScaleKey( spep_4-3 + 106, 1, 2.19, 2.19 );
setScaleKey( spep_4-3 + 108, 1, 2.08, 2.08 );
setScaleKey( spep_4-3 + 110, 1, 1.97, 1.97 );
setScaleKey( spep_4-3 + 112, 1, 1.86, 1.86 );
setScaleKey( spep_4-3 + 114, 1, 1.76, 1.76 );
setScaleKey( spep_4-3 + 116, 1, 1.67, 1.67 );
setScaleKey( spep_4-3 + 118, 1, 1.57, 1.57 );
setScaleKey( spep_4-3 + 120, 1, 1.48, 1.48 );
setScaleKey( spep_4-3 + 122, 1, 1.39, 1.39 );
setScaleKey( spep_4-3 + 124, 1, 1.31, 1.31 );
setScaleKey( spep_4-3 + 126, 1, 1.23, 1.23 );
setScaleKey( spep_4-3 + 128, 1, 1.15, 1.15 );
setScaleKey( spep_4-3 + 130, 1, 1.07, 1.07 );
setScaleKey( spep_4-3 + 132, 1, 1, 1 );
setScaleKey( spep_4-3 + 134, 1, 0.93, 0.93 );
setScaleKey( spep_4-3 + 136, 1, 0.87, 0.87 );
setScaleKey( spep_4-3 + 138, 1, 0.8, 0.8 );
setScaleKey( spep_4-3 + 140, 1, 0.74, 0.74 );
setScaleKey( spep_4-3 + 142, 1, 0.68, 0.68 );
setScaleKey( spep_4-3 + 144, 1, 0.63, 0.63 );
setScaleKey( spep_4-3 + 146, 1, 0.59, 0.59 );
setScaleKey( spep_4-3 + 148, 1, 0.55, 0.55 );
setScaleKey( spep_4-3 + 150, 1, 0.52, 0.52 );
setScaleKey( spep_4-3 + 152, 1, 0.48, 0.48 );
setScaleKey( spep_4-3 + 154, 1, 0.45, 0.45 );
setScaleKey( spep_4-3 + 156, 1, 0.42, 0.42 );
setScaleKey( spep_4-3 + 158, 1, 0.38, 0.38 );
setScaleKey( spep_4-3 + 160, 1, 0.35, 0.35 );
setScaleKey( spep_4-3 + 162, 1, 0.32, 0.32 );
setScaleKey( spep_4-3 + 164, 1, 0.29, 0.29 );
setScaleKey( spep_4-3 + 166, 1, 0.26, 0.26 );
setScaleKey( spep_4-3 + 168, 1, 0.23, 0.23 );
setScaleKey( spep_4-3 + 170, 1, 0.2, 0.2 );
setScaleKey( spep_4-3 + 172, 1, 0.17, 0.17 );
setScaleKey( spep_4-3 + 174, 1, 0.14, 0.14 );
setScaleKey( spep_4-3 + 176, 1, 0.11, 0.11 );
setScaleKey( spep_4-3 + 182, 1, 0.11, 0.11 );
setScaleKey( spep_4-3 + 184, 1, 0.1, 0.1 );
setScaleKey( spep_4-3 + 202, 1, 0.1, 0.1 );
setScaleKey( spep_4-3 + 204, 1, 0.09, 0.09 );
setScaleKey( spep_4-3 + 208, 1, 0.09, 0.09 );

setRotateKey( spep_4-3 + 42, 1, 14 );
setRotateKey( spep_4-3 + 77, 1, 14 );

setRotateKey( spep_4-3 + 78, 1, -18.4 );
setRotateKey( spep_4-3 + 80, 1, -17.2 );
setRotateKey( spep_4-3 + 82, 1, -15.9 );
setRotateKey( spep_4-3 + 84, 1, -14.7 );
setRotateKey( spep_4-3 + 87, 1, -13.4 );

setRotateKey( spep_4-3 + 88, 1, -32.9 );
setRotateKey( spep_4-1 + 208, 1, -32.9 );

--SE
--敵ヒット
SE018 = playSeVer2( spep_4 + 76, 1145, "", 0, 0, 0, -1);

--敵飛ばされる
SE019 = playSeVer2( spep_4 + 88, 1284, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_4+92);
endPhase( spep_4 + 200 );
end