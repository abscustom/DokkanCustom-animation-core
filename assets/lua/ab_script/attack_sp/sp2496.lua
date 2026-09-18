--1025870:LR_超サイヤ人孫悟空_五大戦士突撃
--sp_effect_b1_00231
--sp2496

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
SP_01=	161146	;--	セリフカットイン　全員突撃
SP_02=	161148	;--	悟飯突撃正面→蹴り足元→HIT
SP_03=	161149	;--	悟飯突撃正面→蹴り足元→HIT
SP_04=	161152	;--	ピッコロ殴り正面→HIT→背後カット
SP_05=	161153	;--	ピッコロ殴り正面→HIT→背後カット
SP_06=	161156	;--	トランクス蹴りUP→HIT
SP_07=	161157	;--	トランクス蹴りUP→HIT
SP_08=	161160	;--	ベジータ正面→裏周り→気弾発射→爆破
SP_09=	161161	;--	ベジータ正面→裏周り→気弾発射→爆破
SP_10=	161164	;--	悟空正面→パンチ（手元）→敵吹っ飛び→フィニッシュ
SP_11=	161165	;--	悟空正面→パンチ（手元）→敵吹っ飛び→フィニッシュ

--エフェクト(敵)
SP_01x=	161147	;--	セリフカットイン　全員突撃	(敵)
SP_02x=	161150	;--	悟飯突撃正面→蹴り足元→HIT	(敵)
SP_03x=	161151	;--	悟飯突撃正面→蹴り足元→HIT	(敵)
SP_04x=	161154	;--	ピッコロ殴り正面→HIT→背後カット	(敵)
SP_05x=	161155	;--	ピッコロ殴り正面→HIT→背後カット	(敵)
SP_06x=	161158	;--	トランクス蹴りUP→HIT	(敵)
SP_07x=	161159	;--	トランクス蹴りUP→HIT	(敵)
SP_08x=	161162	;--	ベジータ正面→裏周り→気弾発射→爆破	(敵)
SP_09x=	161163	;--	ベジータ正面→裏周り→気弾発射→爆破	(敵)
SP_10x=	161166	;--	悟空正面→パンチ（手元）→敵吹っ飛び→フィニッシュ	(敵)
SP_11x=	161167	;--	悟空正面→パンチ（手元）→敵吹っ飛び→フィニッシュ	(敵)
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
--セリフカットイン　全員突撃
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 186, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 186, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 186, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 186, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +10;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 70, 515, 2000);-- ゴゴゴゴ
setEffShake( spep_x + 12, ctgogo, 72, 10 );
setEffMoveKey(  spep_x +12,  ctgogo, 70,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  70,  515);

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
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 200, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 32 );
SE003 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 200, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 151 );
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--飛び上がる
SE010 = playSeVer2( spep_0 + 128, 1207, "",spep_0 + 200, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 128, SE010, 56 );
SE011 = playSeVer2( spep_0 + 128, 44, "",spep_0 + 200, 0, 16, -1);
SE012 = playSeVer2( spep_0 + 128, 1117, "",spep_0 + 200, 0, 16, -1);

--オーラ
SE013 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);

--飛び上がる
SE014 = playSeVer2( spep_0 + 150, 1116, "",spep_0 + 200, 0, 16, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 186, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0 +178 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--敵の動き
spep_c=spep_0+186;

--------------------------------------
--カードカットイン(94F) 
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
spep_2 = spep_c + 94;
------------------------------------------------------
--悟飯突撃正面→蹴り足元→HIT
------------------------------------------------------
-- ** エフェクト等 ** --
assault_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, assault_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 146, assault_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, assault_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 146, assault_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, assault_f, 0 );
setEffRotateKey( spep_2 + 146, assault_f, 0 );
setEffAlphaKey( spep_2 + 0, assault_f, 255 );
setEffAlphaKey( spep_2 + 144, assault_f, 255 );
setEffAlphaKey( spep_2 + 145, assault_f, 255 );
setEffAlphaKey( spep_2 + 146, assault_f, 0 );

-- ** エフェクト等 ** --
assault_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, assault_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 146, assault_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, assault_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 146, assault_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, assault_b, 0 );
setEffRotateKey( spep_2 + 146, assault_b, 0 );
setEffAlphaKey( spep_2 + 0, assault_b, 255 );
setEffAlphaKey( spep_2 + 144, assault_b, 255 );
setEffAlphaKey( spep_2 + 145, assault_b, 255 );
setEffAlphaKey( spep_2 + 146, assault_b, 0 );

--SE
--悟飯向かってくる
SE016 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 10, 44, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    
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
setDisp( spep_2+1 + 102, 1, 1);
setDisp( spep_2+1 + 132, 1, 0);

changeAnime( spep_2+1 + 102, 1, 104);
changeAnime( spep_2+1 + 110, 1, 108);

setMoveKey( spep_2+1 + 102, 1, -17.8, 3 , 0 );
setMoveKey( spep_2+1 + 104, 1, -4.9, -13.4 , 0 );
setMoveKey( spep_2+1 + 106, 1, 8, -29.8 , 0 );
setMoveKey( spep_2+1 + 108, 1, 20.9, -46.1 , 0 );
setMoveKey( spep_2+1 + 109, 1, 20.9, -46.1 , 0 );

setMoveKey( spep_2+1 + 110, 1, 132.1, -148 , 0 );
setMoveKey( spep_2+1 + 111, 1, 132.1, -148 , 0 );
setMoveKey( spep_2+1 + 112, 1, 208, -78.8 , 0 );
setMoveKey( spep_2+1 + 113, 1, 208, -78.8 , 0 );
setMoveKey( spep_2+1 + 114, 1, 172.2, -131.9 , 0 );
setMoveKey( spep_2+1 + 115, 1, 172.2, -131.9 , 0 );
setMoveKey( spep_2+1 + 116, 1, 262.6, -229.1 , 0 );
setMoveKey( spep_2+1 + 117, 1, 262.6, -229.1 , 0 );
setMoveKey( spep_2+1 + 118, 1, 232.1, -204.6 , 0 );
setMoveKey( spep_2+1 + 119, 1, 232.1, -204.6 , 0 );
setMoveKey( spep_2+1 + 120, 1, 237.1, -216.1 , 0 );
setMoveKey( spep_2+1 + 121, 1, 237.1, -216.1 , 0 );
setMoveKey( spep_2+1 + 122, 1, 242.3, -227.8 , 0 );
setMoveKey( spep_2+1 + 123, 1, 242.3, -227.8 , 0 );
setMoveKey( spep_2+1 + 124, 1, 247.5, -239.7 , 0 );
setMoveKey( spep_2+1 + 125, 1, 247.5, -239.7 , 0 );
setMoveKey( spep_2+1 + 126, 1, 347.4, -385 , 0 );
setMoveKey( spep_2+1 + 127, 1, 347.4, -385 , 0 );
setMoveKey( spep_2+1 + 128, 1, 448.9, -532.9 , 0 );
setMoveKey( spep_2+1 + 129, 1, 448.9, -532.9 , 0 );
setMoveKey( spep_2+1 + 130, 1, 552.2, -683.2 , 0 );
setMoveKey( spep_2+1 + 131, 1, 552.2, -683.2 , 0 );
setMoveKey( spep_2+1 + 132, 1, 657.2, -836.1 , 0 );

setScaleKey( spep_2+1 + 102, 1, 2.44,2.44);
setScaleKey( spep_2+1 + 104, 1, 2.47,2.47);
setScaleKey( spep_2+1 + 106, 1, 2.49,2.49);
setScaleKey( spep_2+1 + 108, 1, 2.51,2.51);
setScaleKey( spep_2+1 + 109, 1, 2.51,2.51);

setScaleKey( spep_2+1 + 110, 1, 2.54,2.54);
setScaleKey( spep_2+1 + 111, 1, 2.54,2.54);
setScaleKey( spep_2+1 + 112, 1, 2.56,2.56);
setScaleKey( spep_2+1 + 113, 1, 2.56,2.56);
setScaleKey( spep_2+1 + 114, 1, 2.58,2.58);
setScaleKey( spep_2+1 + 115, 1, 2.58,2.58);
setScaleKey( spep_2+1 + 116, 1, 2.62,2.62);
setScaleKey( spep_2+1 + 117, 1, 2.62,2.62);
setScaleKey( spep_2+1 + 118, 1, 2.64,2.64);
setScaleKey( spep_2+1 + 119, 1, 2.64,2.64);
setScaleKey( spep_2+1 + 120, 1, 2.66,2.66);
setScaleKey( spep_2+1 + 121, 1, 2.66,2.66);
setScaleKey( spep_2+1 + 122, 1, 2.69,2.69);
setScaleKey( spep_2+1 + 123, 1, 2.69,2.69);
setScaleKey( spep_2+1 + 124, 1, 2.71,2.71);
setScaleKey( spep_2+1 + 125, 1, 2.71,2.71);
setScaleKey( spep_2+1 + 126, 1, 2.73,2.73);
setScaleKey( spep_2+1 + 127, 1, 2.73,2.73);
setScaleKey( spep_2+1 + 128, 1, 2.76,2.76);
setScaleKey( spep_2+1 + 129, 1, 2.76,2.76);
setScaleKey( spep_2+1 + 130, 1, 2.78,2.78);
setScaleKey( spep_2+1 + 131, 1, 2.78,2.78);
setScaleKey( spep_2+1 + 132, 1, 2.8,2.8);

setRotateKey( spep_2+1 + 102, 1, 1.7 );
setRotateKey( spep_2+1 + 109, 1, 1.7 );

setRotateKey( spep_2+1 + 110, 1, 1.7 );
setRotateKey( spep_2+1 + 111, 1, 1.7 );
setRotateKey( spep_2+1 + 112, 1, 5.2 );
setRotateKey( spep_2+1 + 113, 1, 5.2 );
setRotateKey( spep_2+1 + 114, 1, 8.6 );
setRotateKey( spep_2+1 + 115, 1, 8.6 );
setRotateKey( spep_2+1 + 116, 1, 12 );
setRotateKey( spep_2+1 + 117, 1, 12 );
setRotateKey( spep_2+1 + 118, 1, 15.5 );
setRotateKey( spep_2+1 + 119, 1, 15.5 );
setRotateKey( spep_2+1 + 120, 1, 17.7 );
setRotateKey( spep_2+1 + 121, 1, 17.7 );
setRotateKey( spep_2+1 + 122, 1, 19.9 );
setRotateKey( spep_2+1 + 123, 1, 19.9 );
setRotateKey( spep_2+1 + 124, 1, 22.2 );
setRotateKey( spep_2+1 + 125, 1, 22.2 );
setRotateKey( spep_2+1 + 126, 1, 27.8 );
setRotateKey( spep_2+1 + 127, 1, 27.8 );
setRotateKey( spep_2+1 + 128, 1, 33.3 );
setRotateKey( spep_2+1 + 129, 1, 33.3 );
setRotateKey( spep_2+1 + 130, 1, 38.9 );
setRotateKey( spep_2+1 + 131, 1, 38.9 );
setRotateKey( spep_2+1 + 132, 1, 44.5 );

--SE
--悟飯振りかぶる
SE019 = playSeVer2( spep_2 + 44, 1072, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 70, 1004, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 76, 1003, "", 0, 0, 0, -1);

--悟飯キック
SE022 = playSeVer2( spep_2 + 112, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE022, 68 );
SE023 = playSeVer2( spep_2 + 112, 1110, "", 0, 0, 0, -1);

--敵の動き
spep_3=spep_2+146;
------------------------------------------------------
--ピッコロ殴り正面→HIT→背後カット
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 140, punch_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 140, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_f, 0 );
setEffRotateKey( spep_3 + 140, punch_f, 0 );
setEffAlphaKey( spep_3 + 0, punch_f, 255 );
setEffAlphaKey( spep_3 + 138, punch_f, 255 );
setEffAlphaKey( spep_3 + 139, punch_f, 255 );
setEffAlphaKey( spep_3 + 140, punch_f, 0 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 140, punch_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 140, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_b, 0 );
setEffRotateKey( spep_3 + 140, punch_b, 0 );
setEffAlphaKey( spep_3 + 0, punch_b, 255 );
setEffAlphaKey( spep_3 + 138, punch_b, 255 );
setEffAlphaKey( spep_3 + 139, punch_b, 255 );
setEffAlphaKey( spep_3 + 140, punch_b, 0 );

--敵の動き
setDisp( spep_3+1 + 66, 1, 1);
setDisp( spep_3+1 + 128, 1, 0);

changeAnime( spep_3+1 + 66, 1, 106);
changeAnime( spep_3+1 + 74, 1, 108);

setMoveKey( spep_3+1 + 66, 1, -182.9, -82 , 0 );
setMoveKey( spep_3+1 + 68, 1, -144.9, -91.7 , 0 );
setMoveKey( spep_3+1 + 70, 1, -107, -101.4 , 0 );
setMoveKey( spep_3+1 + 72, 1, -68.9, -111.1 , 0 );
setMoveKey( spep_3+1 + 73, 1, -68.9, -111.1 , 0 );

setMoveKey( spep_3+1 + 74, 1, 162, 6.6 , 0 );
setMoveKey( spep_3+1 + 75, 1, 162, 6.6 , 0 );
setMoveKey( spep_3+1 + 76, 1, 257.8, 5.8 , 0 );
setMoveKey( spep_3+1 + 77, 1, 257.8, 5.8 , 0 );
setMoveKey( spep_3+1 + 78, 1, 111.7, 4.1 , 0 );
setMoveKey( spep_3+1 + 79, 1, 111.7, 4.1 , 0 );
setMoveKey( spep_3+1 + 80, 1, 207.5, 14.6 , 0 );
setMoveKey( spep_3+1 + 81, 1, 207.5, 14.6 , 0 );
setMoveKey( spep_3+1 + 82, 1, 139.4, 21 , 0 );
setMoveKey( spep_3+1 + 83, 1, 139.4, 21 , 0 );
setMoveKey( spep_3+1 + 84, 1, 206.5, -42.2 , 0 );
setMoveKey( spep_3+1 + 85, 1, 206.5, -42.2 , 0 );
setMoveKey( spep_3+1 + 86, 1, 144.5, 17.5 , 0 );
setMoveKey( spep_3+1 + 87, 1, 144.5, 17.5 , 0 );
setMoveKey( spep_3+1 + 88, 1, 160.5, -25.3 , 0 );
setMoveKey( spep_3+1 + 89, 1, 160.5, -25.3 , 0 );
setMoveKey( spep_3+1 + 90, 1, 121.4, 8.4 , 0 );
setMoveKey( spep_3+1 + 91, 1, 121.4, 8.4 , 0 );
setMoveKey( spep_3+1 + 92, 1, 120.5, 6.2 , 0 );
setMoveKey( spep_3+1 + 93, 1, 120.5, 6.2 , 0 );
setMoveKey( spep_3+1 + 94, 1, 119.5, 4 , 0 );
setMoveKey( spep_3+1 + 95, 1, 119.5, 4 , 0 );
setMoveKey( spep_3+1 + 96, 1, 68.9, 52.1 , 0 );
setMoveKey( spep_3+1 + 97, 1, 68.9, 52.1 , 0 );
setMoveKey( spep_3+1 + 98, 1, 74.5, 49.8 , 0 );
setMoveKey( spep_3+1 + 99, 1, 74.5, 49.8 , 0 );
setMoveKey( spep_3+1 + 100, 1, 80.3, 47.4 , 0 );
setMoveKey( spep_3+1 + 101, 1, 80.3, 47.4 , 0 );
setMoveKey( spep_3+1 + 102, 1, 114.4, 38.3 , 0 );
setMoveKey( spep_3+1 + 103, 1, 114.4, 38.3 , 0 );
setMoveKey( spep_3+1 + 104, 1, 149, 29.1 , 0 );
setMoveKey( spep_3+1 + 105, 1, 149, 29.1 , 0 );
setMoveKey( spep_3+1 + 106, 1, 183.3, 19.9 , 0 );
setMoveKey( spep_3+1 + 107, 1, 183.3, 19.9 , 0 );
setMoveKey( spep_3+1 + 108, 1, 216.7, 10.8 , 0 );
setMoveKey( spep_3+1 + 109, 1, 216.7, 10.8 , 0 );
setMoveKey( spep_3+1 + 110, 1, 248.7, 2.1 , 0 );
setMoveKey( spep_3+1 + 111, 1, 248.7, 2.1 , 0 );
setMoveKey( spep_3+1 + 112, 1, 278.8, -6.1 , 0 );
setMoveKey( spep_3+1 + 113, 1, 278.8, -6.1 , 0 );
setMoveKey( spep_3+1 + 114, 1, 307, -13.7 , 0 );
setMoveKey( spep_3+1 + 115, 1, 307, -13.7 , 0 );
setMoveKey( spep_3+1 + 116, 1, 332.2, -19.5 , 0 );
setMoveKey( spep_3+1 + 117, 1, 332.2, -19.5 , 0 );
setMoveKey( spep_3+1 + 118, 1, 356.7, -25 , 0 );
setMoveKey( spep_3+1 + 119, 1, 356.7, -25 , 0 );
setMoveKey( spep_3+1 + 120, 1, 380.5, -30.3 , 0 );
setMoveKey( spep_3+1 + 121, 1, 380.5, -30.3 , 0 );
setMoveKey( spep_3+1 + 122, 1, 403.7, -35.5 , 0 );
setMoveKey( spep_3+1 + 123, 1, 403.7, -35.5 , 0 );
setMoveKey( spep_3+1 + 124, 1, 426, -40.7 , 0 );
setMoveKey( spep_3+1 + 125, 1, 426, -40.7 , 0 );
setMoveKey( spep_3+1 + 126, 1, 447.7, -45.6 , 0 );
setMoveKey( spep_3+1 + 127, 1, 447.7, -45.6 , 0 );
setMoveKey( spep_3+1 + 128, 1, 468.5, -50.3 , 0 );

setScaleKey( spep_3+1 + 66, 1, 6.06, 6.06 );
setScaleKey( spep_3+1 + 68, 1, 6.06, 6.06 );
setScaleKey( spep_3+1 + 70, 1, 6.07, 6.07 );
setScaleKey( spep_3+1 + 73, 1, 6.07, 6.07 );

setScaleKey( spep_3+1 + 74, 1, 6.69, 6.69 );
setScaleKey( spep_3+1 + 75, 1, 6.69, 6.69 );
setScaleKey( spep_3+1 + 76, 1, 6.67, 6.67 );
setScaleKey( spep_3+1 + 77, 1, 6.67, 6.67 );
setScaleKey( spep_3+1 + 78, 1, 6.65, 6.65 );
setScaleKey( spep_3+1 + 79, 1, 6.65, 6.65 );
setScaleKey( spep_3+1 + 80, 1, 6.63, 6.63 );
setScaleKey( spep_3+1 + 81, 1, 6.63, 6.63 );
setScaleKey( spep_3+1 + 82, 1, 6.61, 6.61 );
setScaleKey( spep_3+1 + 83, 1, 6.61, 6.61 );
setScaleKey( spep_3+1 + 84, 1, 6.59, 6.59 );
setScaleKey( spep_3+1 + 85, 1, 6.59, 6.59 );
setScaleKey( spep_3+1 + 86, 1, 6.57, 6.57 );
setScaleKey( spep_3+1 + 87, 1, 6.57, 6.57 );
setScaleKey( spep_3+1 + 88, 1, 6.55, 6.55 );
setScaleKey( spep_3+1 + 89, 1, 6.55, 6.55 );
setScaleKey( spep_3+1 + 90, 1, 6.53, 6.53 );
setScaleKey( spep_3+1 + 91, 1, 6.53, 6.53 );
setScaleKey( spep_3+1 + 92, 1, 6.51, 6.51 );
setScaleKey( spep_3+1 + 93, 1, 6.51, 6.51 );
setScaleKey( spep_3+1 + 94, 1, 6.49, 6.49 );
setScaleKey( spep_3+1 + 95, 1, 6.49, 6.49 );
setScaleKey( spep_3+1 + 96, 1, 3.04, 3.04 );
setScaleKey( spep_3+1 + 97, 1, 3.04, 3.04 );
setScaleKey( spep_3+1 + 98, 1, 3.05, 3.05 );
setScaleKey( spep_3+1 + 99, 1, 3.05, 3.05 );
setScaleKey( spep_3+1 + 100, 1, 3.05, 3.05 );
setScaleKey( spep_3+1 + 101, 1, 3.05, 3.05 );
setScaleKey( spep_3+1 + 102, 1, 2.78, 2.78 );
setScaleKey( spep_3+1 + 103, 1, 2.78, 2.78 );
setScaleKey( spep_3+1 + 104, 1, 2.52, 2.52 );
setScaleKey( spep_3+1 + 105, 1, 2.52, 2.52 );
setScaleKey( spep_3+1 + 106, 1, 2.25, 2.25 );
setScaleKey( spep_3+1 + 107, 1, 2.25, 2.25 );
setScaleKey( spep_3+1 + 108, 1, 1.99, 1.99 );
setScaleKey( spep_3+1 + 109, 1, 1.99, 1.99 );
setScaleKey( spep_3+1 + 110, 1, 1.74, 1.74 );
setScaleKey( spep_3+1 + 111, 1, 1.74, 1.74 );
setScaleKey( spep_3+1 + 112, 1, 1.51, 1.51 );
setScaleKey( spep_3+1 + 113, 1, 1.51, 1.51 );
setScaleKey( spep_3+1 + 114, 1, 1.29, 1.29 );
setScaleKey( spep_3+1 + 115, 1, 1.29, 1.29 );
setScaleKey( spep_3+1 + 116, 1, 1.13, 1.13 );
setScaleKey( spep_3+1 + 117, 1, 1.13, 1.13 );
setScaleKey( spep_3+1 + 118, 1, 0.97, 0.97 );
setScaleKey( spep_3+1 + 119, 1, 0.97, 0.97 );
setScaleKey( spep_3+1 + 120, 1, 0.82, 0.82 );
setScaleKey( spep_3+1 + 121, 1, 0.82, 0.82 );
setScaleKey( spep_3+1 + 122, 1, 0.67, 0.67 );
setScaleKey( spep_3+1 + 123, 1, 0.67, 0.67 );
setScaleKey( spep_3+1 + 124, 1, 0.53, 0.53 );
setScaleKey( spep_3+1 + 125, 1, 0.53, 0.53 );
setScaleKey( spep_3+1 + 126, 1, 0.39, 0.39 );
setScaleKey( spep_3+1 + 127, 1, 0.39, 0.39 );
setScaleKey( spep_3+1 + 128, 1, 0.26, 0.26 );

setRotateKey( spep_3+1 + 66, 1, -57.9 );
setRotateKey( spep_3+1 + 73, 1, -57.9 );

setRotateKey( spep_3+1 + 74, 1, 1.7 );
setRotateKey( spep_3+1 + 82, 1, 1.7 );
setRotateKey( spep_3+1 + 83, 1, 1.7 );
setRotateKey( spep_3+1 + 84, 1, 1.6 );
setRotateKey( spep_3+1 + 90, 1, 1.6 );
setRotateKey( spep_3+1 + 91, 1, 1.6 );
setRotateKey( spep_3+1 + 92, 1, 1.5 );
setRotateKey( spep_3+1 + 100, 1, 1.5 );
setRotateKey( spep_3+1 + 101, 1, 1.5 );
setRotateKey( spep_3+1 + 102, 1, 3.8 );
setRotateKey( spep_3+1 + 103, 1, 3.8 );
setRotateKey( spep_3+1 + 104, 1, 6.1 );
setRotateKey( spep_3+1 + 105, 1, 6.1 );
setRotateKey( spep_3+1 + 106, 1, 8.4 );
setRotateKey( spep_3+1 + 107, 1, 8.4 );
setRotateKey( spep_3+1 + 108, 1, 10.7 );
setRotateKey( spep_3+1 + 109, 1, 10.7 );
setRotateKey( spep_3+1 + 110, 1, 12.8 );
setRotateKey( spep_3+1 + 111, 1, 12.8 );
setRotateKey( spep_3+1 + 112, 1, 14.9 );
setRotateKey( spep_3+1 + 113, 1, 14.9 );
setRotateKey( spep_3+1 + 114, 1, 16.8 );
setRotateKey( spep_3+1 + 115, 1, 16.8 );
setRotateKey( spep_3+1 + 116, 1, 18 );
setRotateKey( spep_3+1 + 117, 1, 18 );
setRotateKey( spep_3+1 + 118, 1, 19.3 );
setRotateKey( spep_3+1 + 119, 1, 19.3 );
setRotateKey( spep_3+1 + 120, 1, 20.4 );
setRotateKey( spep_3+1 + 121, 1, 20.4 );
setRotateKey( spep_3+1 + 122, 1, 21.6 );
setRotateKey( spep_3+1 + 123, 1, 21.6 );
setRotateKey( spep_3+1 + 124, 1, 22.7 );
setRotateKey( spep_3+1 + 125, 1, 22.7 );
setRotateKey( spep_3+1 + 126, 1, 23.8 );
setRotateKey( spep_3+1 + 127, 1, 23.8 );
setRotateKey( spep_3+1 + 128, 1, 24.8 );

--SE
--ピッコロ向かってくる
SE024 = playSeVer2( spep_3 + 0, 1182, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_3 + 0, 1117, "",spep_3 + 82, 0, 10, -1);
SE026 = playSeVer2( spep_3 + 0, 1019, "",spep_3 + 64, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 0, SE026, 85 );

--ピッコロ振りかぶる
SE027 = playSeVer2( spep_3 + 50, 1116, "",spep_3 + 74, 0, 10, -1);

--ピッコロパンチ
SE028 = playSeVer2( spep_3 + 76, 1153, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_3 + 76, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 76, SE029, 74 );

--敵飛んでいく
SE030 = playSeVer2( spep_3 + 98, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 98, SE030, 78 );
SE031 = playSeVer2( spep_3 + 108, 1183, "",spep_3 + 194, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 108, SE031, 72 );
SE032 = playSeVer2( spep_3 + 108, 1121, "",spep_3 + 194, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 108, SE032, 68 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒　背景

--敵の動き
spep_4=spep_3+140;
------------------------------------------------------
--トランクス蹴りUP→HIT
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 92, kick_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 92, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_f, 0 );
setEffRotateKey( spep_4 + 92, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 90, kick_f, 255 );
setEffAlphaKey( spep_4 + 91, kick_f, 255 );
setEffAlphaKey( spep_4 + 92, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 92, kick_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 92, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_b, 0 );
setEffRotateKey( spep_4 + 92, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 90, kick_b, 255 );
setEffAlphaKey( spep_4 + 91, kick_b, 255 );
setEffAlphaKey( spep_4 + 92, kick_b, 0 );

--敵の動き
setDisp( spep_4+1 + 6, 1, 1);
setDisp( spep_4+1 + 66, 1, 0);

changeAnime( spep_4+1 + 6, 1, 106);
changeAnime( spep_4+1 + 44, 1, 108);

setMoveKey( spep_4+1 + 6, 1, -1168.8, -177.3 , 0 );
setMoveKey( spep_4+1 + 8, 1, -1085.4, -188.2 , 0 );
setMoveKey( spep_4+1 + 10, 1, -1004, -198.9 , 0 );
setMoveKey( spep_4+1 + 12, 1, -924.7, -209.3 , 0 );
setMoveKey( spep_4+1 + 14, 1, -847.5, -219.6 , 0 );
setMoveKey( spep_4+1 + 16, 1, -772.3, -229.6 , 0 );
setMoveKey( spep_4+1 + 18, 1, -699.1, -239.4 , 0 );
setMoveKey( spep_4+1 + 20, 1, -628, -249 , 0 );
setMoveKey( spep_4+1 + 22, 1, -559, -258.3 , 0 );
setMoveKey( spep_4+1 + 24, 1, -492.1, -267.4 , 0 );
setMoveKey( spep_4+1 + 26, 1, -427.2, -276.3 , 0 );
setMoveKey( spep_4+1 + 28, 1, -364.4, -284.9 , 0 );
setMoveKey( spep_4+1 + 30, 1, -303.7, -293.2 , 0 );
setMoveKey( spep_4+1 + 32, 1, -245, -301.3 , 0 );
setMoveKey( spep_4+1 + 34, 1, -188.5, -309.2 , 0 );
setMoveKey( spep_4+1 + 36, 1, -134, -316.8 , 0 );
setMoveKey( spep_4+1 + 37, 1, -134, -316.8 , 0 );

setMoveKey( spep_4+1 + 38, 1, -75.4, 119 , 0 );
setMoveKey( spep_4+1 + 40, 1, -27.3, 125.1 , 0 );
setMoveKey( spep_4+1 + 42, 1, 20.7, 131.1 , 0 );
setMoveKey( spep_4+1 + 43, 1, 20.7, 131.1 , 0 );

setMoveKey( spep_4+1 + 44, 1, 65.9, -135.1 , 0 );
setMoveKey( spep_4+1 + 45, 1, 65.9, -135.1 , 0 );
setMoveKey( spep_4+1 + 46, 1, 10.5, -98.7 , 0 );
setMoveKey( spep_4+1 + 47, 1, 10.5, -98.7 , 0 );
setMoveKey( spep_4+1 + 48, 1, 57, -175 , 0 );
setMoveKey( spep_4+1 + 49, 1, 57, -175 , 0 );
setMoveKey( spep_4+1 + 50, 1, -6.8, -184.3 , 0 );
setMoveKey( spep_4+1 + 51, 1, -6.8, -184.3 , 0 );
setMoveKey( spep_4+1 + 52, 1, 39.6, -284 , 0 );
setMoveKey( spep_4+1 + 53, 1, 39.6, -284 , 0 );
setMoveKey( spep_4+1 + 54, 1, -7.4, -260.3 , 0 );
setMoveKey( spep_4+1 + 55, 1, -7.4, -260.3 , 0 );
setMoveKey( spep_4+1 + 56, 1, 64.8, -458.1 , 0 );
setMoveKey( spep_4+1 + 57, 1, 64.8, -458.1 , 0 );
setMoveKey( spep_4+1 + 58, 1, -6.7, -555.3 , 0 );
setMoveKey( spep_4+1 + 59, 1, -6.7, -555.3 , 0 );
setMoveKey( spep_4+1 + 60, 1, 23.5, -729.8 , 0 );
setMoveKey( spep_4+1 + 61, 1, 23.5, -729.8 , 0 );
setMoveKey( spep_4+1 + 62, 1, -6.1, -840.1 , 0 );
setMoveKey( spep_4+1 + 63, 1, -6.1, -840.1 , 0 );
setMoveKey( spep_4+1 + 64, 1, 49.4, -996.1 , 0 );
setMoveKey( spep_4+1 + 65, 1, 49.4, -996.1 , 0 );
setMoveKey( spep_4+1 + 66, 1, 42.7, -1160.5 , 0 );

setScaleKey( spep_4+1 + 6, 1, 6.04, 6.04 );
setScaleKey( spep_4+1 + 18, 1, 6.04, 6.04 );
setScaleKey( spep_4+1 + 20, 1, 6.05, 6.05 );
setScaleKey( spep_4+1 + 30, 1, 6.05, 6.05 );
setScaleKey( spep_4+1 + 32, 1, 6.06, 6.06 );
setScaleKey( spep_4+1 + 37, 1, 6.06, 6.06 );

setScaleKey( spep_4+1 + 38, 1, 2.41, 2.41 );
setScaleKey( spep_4+1 + 43, 1, 2.41, 2.41 );

setScaleKey( spep_4+1 + 44, 1, 3.16, 3.16 );
setScaleKey( spep_4+1 + 66, 1, 3.16, 3.16 );

setRotateKey( spep_4+1 + 6, 1, -18.6 );
setRotateKey( spep_4+1 + 8, 1, -17.2 );
setRotateKey( spep_4+1 + 10, 1, -15.9 );
setRotateKey( spep_4+1 + 12, 1, -14.5 );
setRotateKey( spep_4+1 + 14, 1, -13.3 );
setRotateKey( spep_4+1 + 16, 1, -12 );
setRotateKey( spep_4+1 + 18, 1, -10.8 );
setRotateKey( spep_4+1 + 20, 1, -9.6 );
setRotateKey( spep_4+1 + 22, 1, -8.5 );
setRotateKey( spep_4+1 + 24, 1, -7.4 );
setRotateKey( spep_4+1 + 26, 1, -6.3 );
setRotateKey( spep_4+1 + 28, 1, -5.3 );
setRotateKey( spep_4+1 + 30, 1, -4.3 );
setRotateKey( spep_4+1 + 32, 1, -3.3 );
setRotateKey( spep_4+1 + 34, 1, -2.4 );
setRotateKey( spep_4+1 + 36, 1, -1.5 );
setRotateKey( spep_4+1 + 37, 1, -1.5 );

setRotateKey( spep_4+1 + 38, 1, 16.3 );
setRotateKey( spep_4+1 + 43, 1, 16.3 );

setRotateKey( spep_4+1 + 44, 1, 56.5 );
setRotateKey( spep_4+1 + 45, 1, 56.5 );
setRotateKey( spep_4+1 + 46, 1, 60 );
setRotateKey( spep_4+1 + 47, 1, 60 );
setRotateKey( spep_4+1 + 48, 1, 63.5 );
setRotateKey( spep_4+1 + 49, 1, 63.5 );
setRotateKey( spep_4+1 + 50, 1, 67 );
setRotateKey( spep_4+1 + 51, 1, 67 );
setRotateKey( spep_4+1 + 52, 1, 70.5 );
setRotateKey( spep_4+1 + 53, 1, 70.5 );
setRotateKey( spep_4+1 + 54, 1, 74 );
setRotateKey( spep_4+1 + 55, 1, 74 );
setRotateKey( spep_4+1 + 56, 1, 73.7 );
setRotateKey( spep_4+1 + 57, 1, 73.7 );
setRotateKey( spep_4+1 + 58, 1, 73.3 );
setRotateKey( spep_4+1 + 59, 1, 73.3 );
setRotateKey( spep_4+1 + 60, 1, 73 );
setRotateKey( spep_4+1 + 61, 1, 73 );
setRotateKey( spep_4+1 + 62, 1, 72.7 );
setRotateKey( spep_4+1 + 63, 1, 72.7 );
setRotateKey( spep_4+1 + 64, 1, 72.3 );
setRotateKey( spep_4+1 + 65, 1, 72.3 );
setRotateKey( spep_4+1 + 66, 1, 72 );

--SE
--トランクス蹴り落とす
SE033 = playSeVer2( spep_4 + 38, 1003, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_4 + 44, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 44, SE034, 91 );
SE035 = playSeVer2( spep_4 + 46, 1010, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5=spep_4+92;
------------------------------------------------------
--ベジータ正面→裏周り→気弾発射→爆破
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 188, beam_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 188, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_f, 0 );
setEffRotateKey( spep_5 + 188, beam_f, 0 );
setEffAlphaKey( spep_5 + 0, beam_f, 255 );
setEffAlphaKey( spep_5 + 186, beam_f, 255 );
setEffAlphaKey( spep_5 + 187, beam_f, 255 );
setEffAlphaKey( spep_5 + 188, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 188, beam_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 188, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_b, 0 );
setEffRotateKey( spep_5 + 188, beam_b, 0 );
setEffAlphaKey( spep_5 + 0, beam_b, 255 );
setEffAlphaKey( spep_5 + 186, beam_b, 255 );
setEffAlphaKey( spep_5 + 187, beam_b, 255 );
setEffAlphaKey( spep_5 + 188, beam_b, 0 );

--敵の動き
setDisp( spep_5+1 + 72, 1, 1);
setDisp( spep_5+1 + 140, 1, 0);

changeAnime( spep_5+1 + 72, 1, 108);
changeAnime( spep_5+1 + 110, 1, 106);
changeAnime( spep_5+1 + 134, 1, 108);

setMoveKey( spep_5+1 + 72, 1, 21.2, 630.1 , 0 );
setMoveKey( spep_5+1 + 74, 1, 21.2, 580.8 , 0 );
setMoveKey( spep_5+1 + 76, 1, 21.2, 531.4 , 0 );
setMoveKey( spep_5+1 + 78, 1, 21.2, 482.1 , 0 );
setMoveKey( spep_5+1 + 80, 1, 21.2, 432.8 , 0 );
setMoveKey( spep_5+1 + 82, 1, 21.2, 383.4 , 0 );
setMoveKey( spep_5+1 + 84, 1, 21.3, 334.1 , 0 );
setMoveKey( spep_5+1 + 86, 1, 21.3, 284.8 , 0 );
setMoveKey( spep_5+1 + 88, 1, 21.3, 235.4 , 0 );
setMoveKey( spep_5+1 + 90, 1, 21.3, 186.1 , 0 );
setMoveKey( spep_5+1 + 92, 1, 21.3, 136.7 , 0 );
setMoveKey( spep_5+1 + 94, 1, 21.3, 87.4 , 0 );
setMoveKey( spep_5+1 + 96, 1, 21.3, 38.1 , 0 );
setMoveKey( spep_5+1 + 98, 1, 21.3, -11.3 , 0 );
setMoveKey( spep_5+1 + 100, 1, 21.3, -60.6 , 0 );
setMoveKey( spep_5+1 + 102, 1, 21.3, -109.9 , 0 );
setMoveKey( spep_5+1 + 104, 1, 21.3, -159.3 , 0 );
setMoveKey( spep_5+1 + 106, 1, 21.3, -208.6 , 0 );
setMoveKey( spep_5+1 + 108, 1, 13.1, -284.6 , 0 );
setMoveKey( spep_5+1 + 109, 1, 13.1, -284.6 , 0 );

setMoveKey( spep_5+1 + 110, 1, -7.7, -178.6 , 0 );
setMoveKey( spep_5+1 + 112, 1, -15.9, -163.4 , 0 );
setMoveKey( spep_5+1 + 114, 1, -13.8, -114.1 , 0 );
setMoveKey( spep_5+1 + 116, 1, -13.8, -82.2 , 0 );
setMoveKey( spep_5+1 + 118, 1, -13.8, -53.1 , 0 );
setMoveKey( spep_5+1 + 120, 1, -13.9, -29 , 0 );
setMoveKey( spep_5+1 + 122, 1, -13.9, -9.9 , 0 );
setMoveKey( spep_5+1 + 124, 1, -13.9, 4.2 , 0 );
setMoveKey( spep_5+1 + 126, 1, -13.9, 4.2 , 0 );
setMoveKey( spep_5+1 + 128, 1, -13.9, -6 , 0 );
setMoveKey( spep_5+1 + 130, 1, -10.7, -35.7 , 0 );
setMoveKey( spep_5+1 + 132, 1, -7.5, -65.3 , 0 );
setMoveKey( spep_5+1 + 133, 1, -7.5, -65.3 , 0 );

setMoveKey( spep_5+1 + 134, 1, -15.7, -135.8 , 0 );
setMoveKey( spep_5+1 + 140, 1, -15.7, -135.8 , 0 );

setScaleKey( spep_5+1 + 72, 1, 1.6, 1.6 );
setScaleKey( spep_5+1 + 109, 1, 1.6, 1.6 );

setScaleKey( spep_5+1 + 110, 1, 1.36, 1.36 );
setScaleKey( spep_5+1 + 133, 1, 1.36, 1.36 );

setScaleKey( spep_5+1 + 134, 1, 1.43, 1.43 );
setScaleKey( spep_5+1 + 140, 1, 1.43, 1.43 );

setRotateKey( spep_5+1 + 72, 1, 81.7 );
setRotateKey( spep_5+1 + 109, 1, 81.7 );

setRotateKey( spep_5+1 + 110, 1, 25.5 );
setRotateKey( spep_5+1 + 133, 1, 25.5 );

setRotateKey( spep_5+1 + 134, 1, 79.7 );
setRotateKey( spep_5+1 + 140, 1, 79.7 );

--SE
--ベジータ向かってくる
SE036 = playSeVer2( spep_5 + 0, 1182, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_5 + 0, 9, "", 0, 0, 0, -1);

--ベジータ飛び上がって回転する
SE038 = playSeVer2( spep_5 + 52, 1117, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_5 + 54, 1170, "",spep_5 + 88, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 54, SE039, 78 );
SE040 = playSeVer2( spep_5 + 76, 1116, "",spep_5 + 114, 0, 14, -1);
SE041 = playSeVer2( spep_5 + 98, 1004, "", 0, 0, 0, -1);

--ベジータ気弾撃つ
SE042 = playSeVer2( spep_5 + 130, 1016, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_5 + 132, 1145, "",spep_5 + 170, 0, 18, -1);
SE044 = playSeVer2( spep_5 + 136, 1023, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_5 + 144, 1024, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 190, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_6 = spep_5 + 188;
------------------------------------------------------
--悟空正面→パンチ（手元）→敵吹っ飛び→フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 266, finish_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 266, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 266, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 266, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_6 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 266, finish_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 266, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 266, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 266, finish_b, 255 );

--敵の動き
setDisp( spep_6+1 + 70, 1, 1);
setDisp( spep_6+1 + 116, 1, 0);

changeAnime( spep_6+1 + 70, 1, 106);
changeAnime( spep_6+1 + 86, 1, 108);

setMoveKey( spep_6+1 + 70, 1, -75.1, -185.7 , 0 );
setMoveKey( spep_6+1 + 72, 1, -63, -184.6 , 0 );
setMoveKey( spep_6+1 + 74, 1, -51, -183.5 , 0 );
setMoveKey( spep_6+1 + 76, 1, -38.9, -182.4 , 0 );
setMoveKey( spep_6+1 + 78, 1, -26.8, -181.3 , 0 );
setMoveKey( spep_6+1 + 80, 1, -14.7, -180.2 , 0 );
setMoveKey( spep_6+1 + 82, 1, -2.7, -179.1 , 0 );
setMoveKey( spep_6+1 + 84, 1, 9.4, -178 , 0 );
setMoveKey( spep_6+1 + 85, 1, 9.4, -178 , 0 );

setMoveKey( spep_6+1 + 86, 1, 116.9, -34.6 , 0 );
setMoveKey( spep_6+1 + 87, 1, 116.9, -34.6 , 0 );
setMoveKey( spep_6+1 + 88, 1, 89, -39.3 , 0 );
setMoveKey( spep_6+1 + 89, 1, 89, -39.3 , 0 );
setMoveKey( spep_6+1 + 90, 1, 160.7, -25.2 , 0 );
setMoveKey( spep_6+1 + 91, 1, 160.7, -25.2 , 0 );
setMoveKey( spep_6+1 + 92, 1, 124.1, -41.4 , 0 );
setMoveKey( spep_6+1 + 93, 1, 124.1, -41.4 , 0 );
setMoveKey( spep_6+1 + 94, 1, 160, -73.6 , 0 );
setMoveKey( spep_6+1 + 95, 1, 160, -73.6 , 0 );
setMoveKey( spep_6+1 + 96, 1, 179.1, -24.5 , 0 );
setMoveKey( spep_6+1 + 97, 1, 179.1, -24.5 , 0 );
setMoveKey( spep_6+1 + 98, 1, 156.1, -62.8 , 0 );
setMoveKey( spep_6+1 + 99, 1, 156.1, -62.8 , 0 );
setMoveKey( spep_6+1 + 100, 1, 255.2, -91.4 , 0 );
setMoveKey( spep_6+1 + 101, 1, 255.2, -91.4 , 0 );
setMoveKey( spep_6+1 + 102, 1, 313.9, -164.2 , 0 );
setMoveKey( spep_6+1 + 103, 1, 313.9, -164.2 , 0 );
setMoveKey( spep_6+1 + 104, 1, 351.3, -186.5 , 0 );
setMoveKey( spep_6+1 + 105, 1, 351.3, -186.5 , 0 );
setMoveKey( spep_6+1 + 106, 1, 415.2, -235.2 , 0 );
setMoveKey( spep_6+1 + 107, 1, 415.2, -235.2 , 0 );
setMoveKey( spep_6+1 + 108, 1, 450.2, -256.1 , 0 );
setMoveKey( spep_6+1 + 109, 1, 450.2, -256.1 , 0 );
setMoveKey( spep_6+1 + 110, 1, 467.7, -290.9 , 0 );
setMoveKey( spep_6+1 + 111, 1, 467.7, -290.9 , 0 );
setMoveKey( spep_6+1 + 112, 1, 514.4, -281.5 , 0 );
setMoveKey( spep_6+1 + 113, 1, 514.4, -281.5 , 0 );
setMoveKey( spep_6+1 + 114, 1, 521, -316.2 , 0 );
setMoveKey( spep_6+1 + 115, 1, 521, -316.2 , 0 );
setMoveKey( spep_6+1 + 116, 1, 506.4, -300.5 , 0 );

setScaleKey( spep_6+1 + 70, 1, 5.99, 5.99 );
setScaleKey( spep_6+1 + 85, 1, 5.99, 5.99 );

setScaleKey( spep_6+1 + 86, 1, 6.36, 6.36 );
setScaleKey( spep_6+1 + 98, 1, 6.36, 6.36 );
setScaleKey( spep_6+1 + 99, 1, 6.36, 6.36 );
setScaleKey( spep_6+1 + 100, 1, 5.06, 5.06 );
setScaleKey( spep_6+1 + 101, 1, 5.06, 5.06 );
setScaleKey( spep_6+1 + 102, 1, 3.91, 3.91 );
setScaleKey( spep_6+1 + 103, 1, 3.91, 3.91 );
setScaleKey( spep_6+1 + 104, 1, 2.92, 2.92 );
setScaleKey( spep_6+1 + 105, 1, 2.92, 2.92 );
setScaleKey( spep_6+1 + 106, 1, 2.08, 2.08 );
setScaleKey( spep_6+1 + 107, 1, 2.08, 2.08 );
setScaleKey( spep_6+1 + 108, 1, 1.39, 1.39 );
setScaleKey( spep_6+1 + 109, 1, 1.39, 1.39 );
setScaleKey( spep_6+1 + 110, 1, 0.85, 0.85 );
setScaleKey( spep_6+1 + 111, 1, 0.85, 0.85 );
setScaleKey( spep_6+1 + 112, 1, 0.47, 0.47 );
setScaleKey( spep_6+1 + 113, 1, 0.47, 0.47 );
setScaleKey( spep_6+1 + 114, 1, 0.24, 0.24 );
setScaleKey( spep_6+1 + 115, 1, 0.24, 0.24 );
setScaleKey( spep_6+1 + 116, 1, 0.16, 0.16 );

setRotateKey( spep_6+1 + 70, 1, -48 );
setRotateKey( spep_6+1 + 85, 1, -48 );

setRotateKey( spep_6+1 + 86, 1, 3.8 );
setRotateKey( spep_6+1 + 87, 1, 3.8 );
setRotateKey( spep_6+1 + 88, 1, 5.1 );
setRotateKey( spep_6+1 + 89, 1, 5.1 );
setRotateKey( spep_6+1 + 90, 1, 6.1 );
setRotateKey( spep_6+1 + 91, 1, 6.1 );
setRotateKey( spep_6+1 + 92, 1, 6.9 );
setRotateKey( spep_6+1 + 93, 1, 6.9 );
setRotateKey( spep_6+1 + 94, 1, 7.5 );
setRotateKey( spep_6+1 + 95, 1, 7.5 );
setRotateKey( spep_6+1 + 96, 1, 7.9 );
setRotateKey( spep_6+1 + 97, 1, 7.9 );
setRotateKey( spep_6+1 + 98, 1, 8 );
setRotateKey( spep_6+1 + 99, 1, 8 );
setRotateKey( spep_6+1 + 100, 1, 12.4 );
setRotateKey( spep_6+1 + 101, 1, 12.4 );
setRotateKey( spep_6+1 + 102, 1, 16.2 );
setRotateKey( spep_6+1 + 103, 1, 16.2 );
setRotateKey( spep_6+1 + 104, 1, 19.6 );
setRotateKey( spep_6+1 + 105, 1, 19.6 );
setRotateKey( spep_6+1 + 106, 1, 22.4 );
setRotateKey( spep_6+1 + 107, 1, 22.4 );
setRotateKey( spep_6+1 + 108, 1, 24.7 );
setRotateKey( spep_6+1 + 109, 1, 24.7 );
setRotateKey( spep_6+1 + 110, 1, 26.5 );
setRotateKey( spep_6+1 + 111, 1, 26.5 );
setRotateKey( spep_6+1 + 112, 1, 27.8 );
setRotateKey( spep_6+1 + 113, 1, 27.8 );
setRotateKey( spep_6+1 + 114, 1, 28.6 );
setRotateKey( spep_6+1 + 115, 1, 28.6 );
setRotateKey( spep_6+1 + 116, 1, 28.8 );

--敵の動き
setDisp( spep_6+3 + 134, 1, 1);
setDisp( spep_6+3 + 158, 1, 0);

changeAnime( spep_6+3 + 134, 1, 5);

setMoveKey( spep_6+3 + 134, 1, 296.7, -739.1 , 0 );
setMoveKey( spep_6+3 + 136, 1, 248.3, -623.8 , 0 );
setMoveKey( spep_6+3 + 138, 1, 204.3, -518.5 , 0 );
setMoveKey( spep_6+3 + 140, 1, 164.7, -423.3 , 0 );
setMoveKey( spep_6+3 + 142, 1, 129.4, -338.1 , 0 );
setMoveKey( spep_6+3 + 144, 1, 98.4, -262.9 , 0 );
setMoveKey( spep_6+3 + 146, 1, 71.6, -197.8 , 0 );
setMoveKey( spep_6+3 + 148, 1, 49, -142.7 , 0 );
setMoveKey( spep_6+3 + 150, 1, 30.6, -97.6 , 0 );
setMoveKey( spep_6+3 + 152, 1, 16.2, -62.5 , 0 );
setMoveKey( spep_6+3 + 154, 1, 6, -37.5 , 0 );
setMoveKey( spep_6+3 + 156, 1, -0.1, -22.4 , 0 );
setMoveKey( spep_6+3 + 158, 1, -2.1, -17.4 , 0 );

setScaleKey( spep_6+3 + 134, 1, 25.03, 25.03 );
setScaleKey( spep_6+3 + 136, 1, 21.09, 21.09 );
setScaleKey( spep_6+3 + 138, 1, 17.48, 17.48 );
setScaleKey( spep_6+3 + 140, 1, 14.22, 14.22 );
setScaleKey( spep_6+3 + 142, 1, 11.3, 11.3 );
setScaleKey( spep_6+3 + 144, 1, 8.73, 8.73 );
setScaleKey( spep_6+3 + 146, 1, 6.5, 6.5 );
setScaleKey( spep_6+3 + 148, 1, 4.61, 4.61 );
setScaleKey( spep_6+3 + 150, 1, 3.07, 3.07 );
setScaleKey( spep_6+3 + 152, 1, 1.87, 1.87 );
setScaleKey( spep_6+3 + 154, 1, 1.01, 1.01 );
setScaleKey( spep_6+3 + 156, 1, 0.49, 0.49 );
setScaleKey( spep_6+3 + 158, 1, 0.32, 0.32 );

setRotateKey( spep_6+3 + 134, 1, 3.8 );
setRotateKey( spep_6+3 + 158, 1, 3.8 );

--SE
--悟空向かってくる
SE046 = playSeVer2( spep_6 + 0, 1182, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_6 + 0, 9, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_6 + 8, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 8, SE048, 40 );

--悟空振りかぶる
SE049 = playSeVer2( spep_6 + 60, 1116, "",spep_6 + 96, 0, 10, -1);

--悟空パンチ
SE050 = playSeVer2( spep_6 + 88, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 88, SE050, 79 );
SE051 = playSeVer2( spep_6 + 88, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 88, SE051, 65 );

--敵飛んでいく
SE052 = playSeVer2( spep_6 + 92, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 92, SE052, 71 );
SE053 = playSeVer2( spep_6 + 112, 1183, "",spep_6 + 170, 0, 8, -1);
SE054 = playSeVer2( spep_6 + 112, 1121, "",spep_6 + 170, 0, 8, -1);
setSeVolumeByWorkId( spep_6 + 112, SE054, 72 );
setPitch( spep_6 + 112, SE054, 200 );
setTimeStretch( SE054, 1.13, 30, 4 );

--爆発
SE055 = playSeVer2( spep_6 + 162, 1159, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_6 + 162, 1024, "", 0, 0, 0, -1);

-- 終わり
dealDamage(spep_6+162);
endPhase( spep_6 + 256 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--セリフカットイン　全員突撃
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 186, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 186, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 186, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 186, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 100, 515, 2000);-- ゴゴゴゴ
setEffShake( spep_x + 12, ctgogo, 72, 10 );
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
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 200, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 32 );
SE003 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 200, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 151 );
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);

--顔カットイン
--SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--飛び上がる
SE010 = playSeVer2( spep_0 + 128, 1207, "",spep_0 + 200, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 128, SE010, 56 );
SE011 = playSeVer2( spep_0 + 128, 44, "",spep_0 + 200, 0, 16, -1);
SE012 = playSeVer2( spep_0 + 128, 1117, "",spep_0 + 200, 0, 16, -1);

--オーラ
SE013 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);

--飛び上がる
SE014 = playSeVer2( spep_0 + 150, 1116, "",spep_0 + 200, 0, 16, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 186, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0 +178 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--敵の動き
spep_c=spep_0+186;

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
SE_CUTIN = playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_c + 94;
------------------------------------------------------
--悟飯突撃正面→蹴り足元→HIT
------------------------------------------------------
-- ** エフェクト等 ** --
assault_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, assault_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 146, assault_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, assault_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 146, assault_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, assault_f, 0 );
setEffRotateKey( spep_2 + 146, assault_f, 0 );
setEffAlphaKey( spep_2 + 0, assault_f, 255 );
setEffAlphaKey( spep_2 + 144, assault_f, 255 );
setEffAlphaKey( spep_2 + 145, assault_f, 255 );
setEffAlphaKey( spep_2 + 146, assault_f, 0 );

-- ** エフェクト等 ** --
assault_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, assault_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 146, assault_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, assault_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 146, assault_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, assault_b, 0 );
setEffRotateKey( spep_2 + 146, assault_b, 0 );
setEffAlphaKey( spep_2 + 0, assault_b, 255 );
setEffAlphaKey( spep_2 + 144, assault_b, 255 );
setEffAlphaKey( spep_2 + 145, assault_b, 255 );
setEffAlphaKey( spep_2 + 146, assault_b, 0 );

--SE
--悟飯向かってくる
SE016 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 10, 44, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    
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
setDisp( spep_2+1 + 102, 1, 1);
setDisp( spep_2+1 + 132, 1, 0);

changeAnime( spep_2+1 + 102, 1, 104);
changeAnime( spep_2+1 + 110, 1, 108);

setMoveKey( spep_2+1 + 102, 1, -17.8, 3 , 0 );
setMoveKey( spep_2+1 + 104, 1, -4.9, -13.4 , 0 );
setMoveKey( spep_2+1 + 106, 1, 8, -29.8 , 0 );
setMoveKey( spep_2+1 + 108, 1, 20.9, -46.1 , 0 );
setMoveKey( spep_2+1 + 109, 1, 20.9, -46.1 , 0 );

setMoveKey( spep_2+1 + 110, 1, 132.1, -148 , 0 );
setMoveKey( spep_2+1 + 111, 1, 132.1, -148 , 0 );
setMoveKey( spep_2+1 + 112, 1, 208, -78.8 , 0 );
setMoveKey( spep_2+1 + 113, 1, 208, -78.8 , 0 );
setMoveKey( spep_2+1 + 114, 1, 172.2, -131.9 , 0 );
setMoveKey( spep_2+1 + 115, 1, 172.2, -131.9 , 0 );
setMoveKey( spep_2+1 + 116, 1, 262.6, -229.1 , 0 );
setMoveKey( spep_2+1 + 117, 1, 262.6, -229.1 , 0 );
setMoveKey( spep_2+1 + 118, 1, 232.1, -204.6 , 0 );
setMoveKey( spep_2+1 + 119, 1, 232.1, -204.6 , 0 );
setMoveKey( spep_2+1 + 120, 1, 237.1, -216.1 , 0 );
setMoveKey( spep_2+1 + 121, 1, 237.1, -216.1 , 0 );
setMoveKey( spep_2+1 + 122, 1, 242.3, -227.8 , 0 );
setMoveKey( spep_2+1 + 123, 1, 242.3, -227.8 , 0 );
setMoveKey( spep_2+1 + 124, 1, 247.5, -239.7 , 0 );
setMoveKey( spep_2+1 + 125, 1, 247.5, -239.7 , 0 );
setMoveKey( spep_2+1 + 126, 1, 347.4, -385 , 0 );
setMoveKey( spep_2+1 + 127, 1, 347.4, -385 , 0 );
setMoveKey( spep_2+1 + 128, 1, 448.9, -532.9 , 0 );
setMoveKey( spep_2+1 + 129, 1, 448.9, -532.9 , 0 );
setMoveKey( spep_2+1 + 130, 1, 552.2, -683.2 , 0 );
setMoveKey( spep_2+1 + 131, 1, 552.2, -683.2 , 0 );
setMoveKey( spep_2+1 + 132, 1, 657.2, -836.1 , 0 );

setScaleKey( spep_2+1 + 102, 1, 2.44,2.44);
setScaleKey( spep_2+1 + 104, 1, 2.47,2.47);
setScaleKey( spep_2+1 + 106, 1, 2.49,2.49);
setScaleKey( spep_2+1 + 108, 1, 2.51,2.51);
setScaleKey( spep_2+1 + 109, 1, 2.51,2.51);

setScaleKey( spep_2+1 + 110, 1, 2.54,2.54);
setScaleKey( spep_2+1 + 111, 1, 2.54,2.54);
setScaleKey( spep_2+1 + 112, 1, 2.56,2.56);
setScaleKey( spep_2+1 + 113, 1, 2.56,2.56);
setScaleKey( spep_2+1 + 114, 1, 2.58,2.58);
setScaleKey( spep_2+1 + 115, 1, 2.58,2.58);
setScaleKey( spep_2+1 + 116, 1, 2.62,2.62);
setScaleKey( spep_2+1 + 117, 1, 2.62,2.62);
setScaleKey( spep_2+1 + 118, 1, 2.64,2.64);
setScaleKey( spep_2+1 + 119, 1, 2.64,2.64);
setScaleKey( spep_2+1 + 120, 1, 2.66,2.66);
setScaleKey( spep_2+1 + 121, 1, 2.66,2.66);
setScaleKey( spep_2+1 + 122, 1, 2.69,2.69);
setScaleKey( spep_2+1 + 123, 1, 2.69,2.69);
setScaleKey( spep_2+1 + 124, 1, 2.71,2.71);
setScaleKey( spep_2+1 + 125, 1, 2.71,2.71);
setScaleKey( spep_2+1 + 126, 1, 2.73,2.73);
setScaleKey( spep_2+1 + 127, 1, 2.73,2.73);
setScaleKey( spep_2+1 + 128, 1, 2.76,2.76);
setScaleKey( spep_2+1 + 129, 1, 2.76,2.76);
setScaleKey( spep_2+1 + 130, 1, 2.78,2.78);
setScaleKey( spep_2+1 + 131, 1, 2.78,2.78);
setScaleKey( spep_2+1 + 132, 1, 2.8,2.8);

setRotateKey( spep_2+1 + 102, 1, 1.7 );
setRotateKey( spep_2+1 + 109, 1, 1.7 );

setRotateKey( spep_2+1 + 110, 1, 1.7 );
setRotateKey( spep_2+1 + 111, 1, 1.7 );
setRotateKey( spep_2+1 + 112, 1, 5.2 );
setRotateKey( spep_2+1 + 113, 1, 5.2 );
setRotateKey( spep_2+1 + 114, 1, 8.6 );
setRotateKey( spep_2+1 + 115, 1, 8.6 );
setRotateKey( spep_2+1 + 116, 1, 12 );
setRotateKey( spep_2+1 + 117, 1, 12 );
setRotateKey( spep_2+1 + 118, 1, 15.5 );
setRotateKey( spep_2+1 + 119, 1, 15.5 );
setRotateKey( spep_2+1 + 120, 1, 17.7 );
setRotateKey( spep_2+1 + 121, 1, 17.7 );
setRotateKey( spep_2+1 + 122, 1, 19.9 );
setRotateKey( spep_2+1 + 123, 1, 19.9 );
setRotateKey( spep_2+1 + 124, 1, 22.2 );
setRotateKey( spep_2+1 + 125, 1, 22.2 );
setRotateKey( spep_2+1 + 126, 1, 27.8 );
setRotateKey( spep_2+1 + 127, 1, 27.8 );
setRotateKey( spep_2+1 + 128, 1, 33.3 );
setRotateKey( spep_2+1 + 129, 1, 33.3 );
setRotateKey( spep_2+1 + 130, 1, 38.9 );
setRotateKey( spep_2+1 + 131, 1, 38.9 );
setRotateKey( spep_2+1 + 132, 1, 44.5 );

--SE
--悟飯振りかぶる
SE019 = playSeVer2( spep_2 + 44, 1072, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 70, 1004, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 76, 1003, "", 0, 0, 0, -1);

--悟飯キック
SE022 = playSeVer2( spep_2 + 112, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE022, 68 );
SE023 = playSeVer2( spep_2 + 112, 1110, "", 0, 0, 0, -1);

--敵の動き
spep_3=spep_2+146;
------------------------------------------------------
--ピッコロ殴り正面→HIT→背後カット
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 140, punch_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 140, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_f, 0 );
setEffRotateKey( spep_3 + 140, punch_f, 0 );
setEffAlphaKey( spep_3 + 0, punch_f, 255 );
setEffAlphaKey( spep_3 + 138, punch_f, 255 );
setEffAlphaKey( spep_3 + 139, punch_f, 255 );
setEffAlphaKey( spep_3 + 140, punch_f, 0 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 140, punch_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 140, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_b, 0 );
setEffRotateKey( spep_3 + 140, punch_b, 0 );
setEffAlphaKey( spep_3 + 0, punch_b, 255 );
setEffAlphaKey( spep_3 + 138, punch_b, 255 );
setEffAlphaKey( spep_3 + 139, punch_b, 255 );
setEffAlphaKey( spep_3 + 140, punch_b, 0 );

--敵の動き
setDisp( spep_3+1 + 66, 1, 1);
setDisp( spep_3+1 + 128, 1, 0);

changeAnime( spep_3+1 + 66, 1, 106);
changeAnime( spep_3+1 + 74, 1, 108);

setMoveKey( spep_3+1 + 66, 1, -182.9, -82 , 0 );
setMoveKey( spep_3+1 + 68, 1, -144.9, -91.7 , 0 );
setMoveKey( spep_3+1 + 70, 1, -107, -101.4 , 0 );
setMoveKey( spep_3+1 + 72, 1, -68.9, -111.1 , 0 );
setMoveKey( spep_3+1 + 73, 1, -68.9, -111.1 , 0 );

setMoveKey( spep_3+1 + 74, 1, 162, 6.6 , 0 );
setMoveKey( spep_3+1 + 75, 1, 162, 6.6 , 0 );
setMoveKey( spep_3+1 + 76, 1, 257.8, 5.8 , 0 );
setMoveKey( spep_3+1 + 77, 1, 257.8, 5.8 , 0 );
setMoveKey( spep_3+1 + 78, 1, 111.7, 4.1 , 0 );
setMoveKey( spep_3+1 + 79, 1, 111.7, 4.1 , 0 );
setMoveKey( spep_3+1 + 80, 1, 207.5, 14.6 , 0 );
setMoveKey( spep_3+1 + 81, 1, 207.5, 14.6 , 0 );
setMoveKey( spep_3+1 + 82, 1, 139.4, 21 , 0 );
setMoveKey( spep_3+1 + 83, 1, 139.4, 21 , 0 );
setMoveKey( spep_3+1 + 84, 1, 206.5, -42.2 , 0 );
setMoveKey( spep_3+1 + 85, 1, 206.5, -42.2 , 0 );
setMoveKey( spep_3+1 + 86, 1, 144.5, 17.5 , 0 );
setMoveKey( spep_3+1 + 87, 1, 144.5, 17.5 , 0 );
setMoveKey( spep_3+1 + 88, 1, 160.5, -25.3 , 0 );
setMoveKey( spep_3+1 + 89, 1, 160.5, -25.3 , 0 );
setMoveKey( spep_3+1 + 90, 1, 121.4, 8.4 , 0 );
setMoveKey( spep_3+1 + 91, 1, 121.4, 8.4 , 0 );
setMoveKey( spep_3+1 + 92, 1, 120.5, 6.2 , 0 );
setMoveKey( spep_3+1 + 93, 1, 120.5, 6.2 , 0 );
setMoveKey( spep_3+1 + 94, 1, 119.5, 4 , 0 );
setMoveKey( spep_3+1 + 95, 1, 119.5, 4 , 0 );
setMoveKey( spep_3+1 + 96, 1, 68.9, 52.1 , 0 );
setMoveKey( spep_3+1 + 97, 1, 68.9, 52.1 , 0 );
setMoveKey( spep_3+1 + 98, 1, 74.5, 49.8 , 0 );
setMoveKey( spep_3+1 + 99, 1, 74.5, 49.8 , 0 );
setMoveKey( spep_3+1 + 100, 1, 80.3, 47.4 , 0 );
setMoveKey( spep_3+1 + 101, 1, 80.3, 47.4 , 0 );
setMoveKey( spep_3+1 + 102, 1, 114.4, 38.3 , 0 );
setMoveKey( spep_3+1 + 103, 1, 114.4, 38.3 , 0 );
setMoveKey( spep_3+1 + 104, 1, 149, 29.1 , 0 );
setMoveKey( spep_3+1 + 105, 1, 149, 29.1 , 0 );
setMoveKey( spep_3+1 + 106, 1, 183.3, 19.9 , 0 );
setMoveKey( spep_3+1 + 107, 1, 183.3, 19.9 , 0 );
setMoveKey( spep_3+1 + 108, 1, 216.7, 10.8 , 0 );
setMoveKey( spep_3+1 + 109, 1, 216.7, 10.8 , 0 );
setMoveKey( spep_3+1 + 110, 1, 248.7, 2.1 , 0 );
setMoveKey( spep_3+1 + 111, 1, 248.7, 2.1 , 0 );
setMoveKey( spep_3+1 + 112, 1, 278.8, -6.1 , 0 );
setMoveKey( spep_3+1 + 113, 1, 278.8, -6.1 , 0 );
setMoveKey( spep_3+1 + 114, 1, 307, -13.7 , 0 );
setMoveKey( spep_3+1 + 115, 1, 307, -13.7 , 0 );
setMoveKey( spep_3+1 + 116, 1, 332.2, -19.5 , 0 );
setMoveKey( spep_3+1 + 117, 1, 332.2, -19.5 , 0 );
setMoveKey( spep_3+1 + 118, 1, 356.7, -25 , 0 );
setMoveKey( spep_3+1 + 119, 1, 356.7, -25 , 0 );
setMoveKey( spep_3+1 + 120, 1, 380.5, -30.3 , 0 );
setMoveKey( spep_3+1 + 121, 1, 380.5, -30.3 , 0 );
setMoveKey( spep_3+1 + 122, 1, 403.7, -35.5 , 0 );
setMoveKey( spep_3+1 + 123, 1, 403.7, -35.5 , 0 );
setMoveKey( spep_3+1 + 124, 1, 426, -40.7 , 0 );
setMoveKey( spep_3+1 + 125, 1, 426, -40.7 , 0 );
setMoveKey( spep_3+1 + 126, 1, 447.7, -45.6 , 0 );
setMoveKey( spep_3+1 + 127, 1, 447.7, -45.6 , 0 );
setMoveKey( spep_3+1 + 128, 1, 468.5, -50.3 , 0 );

setScaleKey( spep_3+1 + 66, 1, 6.06, 6.06 );
setScaleKey( spep_3+1 + 68, 1, 6.06, 6.06 );
setScaleKey( spep_3+1 + 70, 1, 6.07, 6.07 );
setScaleKey( spep_3+1 + 73, 1, 6.07, 6.07 );

setScaleKey( spep_3+1 + 74, 1, 6.69, 6.69 );
setScaleKey( spep_3+1 + 75, 1, 6.69, 6.69 );
setScaleKey( spep_3+1 + 76, 1, 6.67, 6.67 );
setScaleKey( spep_3+1 + 77, 1, 6.67, 6.67 );
setScaleKey( spep_3+1 + 78, 1, 6.65, 6.65 );
setScaleKey( spep_3+1 + 79, 1, 6.65, 6.65 );
setScaleKey( spep_3+1 + 80, 1, 6.63, 6.63 );
setScaleKey( spep_3+1 + 81, 1, 6.63, 6.63 );
setScaleKey( spep_3+1 + 82, 1, 6.61, 6.61 );
setScaleKey( spep_3+1 + 83, 1, 6.61, 6.61 );
setScaleKey( spep_3+1 + 84, 1, 6.59, 6.59 );
setScaleKey( spep_3+1 + 85, 1, 6.59, 6.59 );
setScaleKey( spep_3+1 + 86, 1, 6.57, 6.57 );
setScaleKey( spep_3+1 + 87, 1, 6.57, 6.57 );
setScaleKey( spep_3+1 + 88, 1, 6.55, 6.55 );
setScaleKey( spep_3+1 + 89, 1, 6.55, 6.55 );
setScaleKey( spep_3+1 + 90, 1, 6.53, 6.53 );
setScaleKey( spep_3+1 + 91, 1, 6.53, 6.53 );
setScaleKey( spep_3+1 + 92, 1, 6.51, 6.51 );
setScaleKey( spep_3+1 + 93, 1, 6.51, 6.51 );
setScaleKey( spep_3+1 + 94, 1, 6.49, 6.49 );
setScaleKey( spep_3+1 + 95, 1, 6.49, 6.49 );
setScaleKey( spep_3+1 + 96, 1, 3.04, 3.04 );
setScaleKey( spep_3+1 + 97, 1, 3.04, 3.04 );
setScaleKey( spep_3+1 + 98, 1, 3.05, 3.05 );
setScaleKey( spep_3+1 + 99, 1, 3.05, 3.05 );
setScaleKey( spep_3+1 + 100, 1, 3.05, 3.05 );
setScaleKey( spep_3+1 + 101, 1, 3.05, 3.05 );
setScaleKey( spep_3+1 + 102, 1, 2.78, 2.78 );
setScaleKey( spep_3+1 + 103, 1, 2.78, 2.78 );
setScaleKey( spep_3+1 + 104, 1, 2.52, 2.52 );
setScaleKey( spep_3+1 + 105, 1, 2.52, 2.52 );
setScaleKey( spep_3+1 + 106, 1, 2.25, 2.25 );
setScaleKey( spep_3+1 + 107, 1, 2.25, 2.25 );
setScaleKey( spep_3+1 + 108, 1, 1.99, 1.99 );
setScaleKey( spep_3+1 + 109, 1, 1.99, 1.99 );
setScaleKey( spep_3+1 + 110, 1, 1.74, 1.74 );
setScaleKey( spep_3+1 + 111, 1, 1.74, 1.74 );
setScaleKey( spep_3+1 + 112, 1, 1.51, 1.51 );
setScaleKey( spep_3+1 + 113, 1, 1.51, 1.51 );
setScaleKey( spep_3+1 + 114, 1, 1.29, 1.29 );
setScaleKey( spep_3+1 + 115, 1, 1.29, 1.29 );
setScaleKey( spep_3+1 + 116, 1, 1.13, 1.13 );
setScaleKey( spep_3+1 + 117, 1, 1.13, 1.13 );
setScaleKey( spep_3+1 + 118, 1, 0.97, 0.97 );
setScaleKey( spep_3+1 + 119, 1, 0.97, 0.97 );
setScaleKey( spep_3+1 + 120, 1, 0.82, 0.82 );
setScaleKey( spep_3+1 + 121, 1, 0.82, 0.82 );
setScaleKey( spep_3+1 + 122, 1, 0.67, 0.67 );
setScaleKey( spep_3+1 + 123, 1, 0.67, 0.67 );
setScaleKey( spep_3+1 + 124, 1, 0.53, 0.53 );
setScaleKey( spep_3+1 + 125, 1, 0.53, 0.53 );
setScaleKey( spep_3+1 + 126, 1, 0.39, 0.39 );
setScaleKey( spep_3+1 + 127, 1, 0.39, 0.39 );
setScaleKey( spep_3+1 + 128, 1, 0.26, 0.26 );

setRotateKey( spep_3+1 + 66, 1, -57.9 );
setRotateKey( spep_3+1 + 73, 1, -57.9 );

setRotateKey( spep_3+1 + 74, 1, 1.7 );
setRotateKey( spep_3+1 + 82, 1, 1.7 );
setRotateKey( spep_3+1 + 83, 1, 1.7 );
setRotateKey( spep_3+1 + 84, 1, 1.6 );
setRotateKey( spep_3+1 + 90, 1, 1.6 );
setRotateKey( spep_3+1 + 91, 1, 1.6 );
setRotateKey( spep_3+1 + 92, 1, 1.5 );
setRotateKey( spep_3+1 + 100, 1, 1.5 );
setRotateKey( spep_3+1 + 101, 1, 1.5 );
setRotateKey( spep_3+1 + 102, 1, 3.8 );
setRotateKey( spep_3+1 + 103, 1, 3.8 );
setRotateKey( spep_3+1 + 104, 1, 6.1 );
setRotateKey( spep_3+1 + 105, 1, 6.1 );
setRotateKey( spep_3+1 + 106, 1, 8.4 );
setRotateKey( spep_3+1 + 107, 1, 8.4 );
setRotateKey( spep_3+1 + 108, 1, 10.7 );
setRotateKey( spep_3+1 + 109, 1, 10.7 );
setRotateKey( spep_3+1 + 110, 1, 12.8 );
setRotateKey( spep_3+1 + 111, 1, 12.8 );
setRotateKey( spep_3+1 + 112, 1, 14.9 );
setRotateKey( spep_3+1 + 113, 1, 14.9 );
setRotateKey( spep_3+1 + 114, 1, 16.8 );
setRotateKey( spep_3+1 + 115, 1, 16.8 );
setRotateKey( spep_3+1 + 116, 1, 18 );
setRotateKey( spep_3+1 + 117, 1, 18 );
setRotateKey( spep_3+1 + 118, 1, 19.3 );
setRotateKey( spep_3+1 + 119, 1, 19.3 );
setRotateKey( spep_3+1 + 120, 1, 20.4 );
setRotateKey( spep_3+1 + 121, 1, 20.4 );
setRotateKey( spep_3+1 + 122, 1, 21.6 );
setRotateKey( spep_3+1 + 123, 1, 21.6 );
setRotateKey( spep_3+1 + 124, 1, 22.7 );
setRotateKey( spep_3+1 + 125, 1, 22.7 );
setRotateKey( spep_3+1 + 126, 1, 23.8 );
setRotateKey( spep_3+1 + 127, 1, 23.8 );
setRotateKey( spep_3+1 + 128, 1, 24.8 );

--SE
--ピッコロ向かってくる
SE024 = playSeVer2( spep_3 + 0, 1182, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_3 + 0, 1117, "",spep_3 + 82, 0, 10, -1);
SE026 = playSeVer2( spep_3 + 0, 1019, "",spep_3 + 64, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 0, SE026, 85 );

--ピッコロ振りかぶる
SE027 = playSeVer2( spep_3 + 50, 1116, "",spep_3 + 74, 0, 10, -1);

--ピッコロパンチ
SE028 = playSeVer2( spep_3 + 76, 1153, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_3 + 76, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 76, SE029, 74 );

--敵飛んでいく
SE030 = playSeVer2( spep_3 + 98, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 98, SE030, 78 );
SE031 = playSeVer2( spep_3 + 108, 1183, "",spep_3 + 194, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 108, SE031, 72 );
SE032 = playSeVer2( spep_3 + 108, 1121, "",spep_3 + 194, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 108, SE032, 68 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒　背景

--敵の動き
spep_4=spep_3+140;
------------------------------------------------------
--トランクス蹴りUP→HIT
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_4 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 92, kick_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 92, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_f, 0 );
setEffRotateKey( spep_4 + 92, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 90, kick_f, 255 );
setEffAlphaKey( spep_4 + 91, kick_f, 255 );
setEffAlphaKey( spep_4 + 92, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_4 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 92, kick_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 92, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_b, 0 );
setEffRotateKey( spep_4 + 92, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 90, kick_b, 255 );
setEffAlphaKey( spep_4 + 91, kick_b, 255 );
setEffAlphaKey( spep_4 + 92, kick_b, 0 );

--敵の動き
setDisp( spep_4+1 + 6, 1, 1);
setDisp( spep_4+1 + 66, 1, 0);

changeAnime( spep_4+1 + 6, 1, 106);
changeAnime( spep_4+1 + 44, 1, 108);

setMoveKey( spep_4+1 + 6, 1, -1168.8, -177.3 , 0 );
setMoveKey( spep_4+1 + 8, 1, -1085.4, -188.2 , 0 );
setMoveKey( spep_4+1 + 10, 1, -1004, -198.9 , 0 );
setMoveKey( spep_4+1 + 12, 1, -924.7, -209.3 , 0 );
setMoveKey( spep_4+1 + 14, 1, -847.5, -219.6 , 0 );
setMoveKey( spep_4+1 + 16, 1, -772.3, -229.6 , 0 );
setMoveKey( spep_4+1 + 18, 1, -699.1, -239.4 , 0 );
setMoveKey( spep_4+1 + 20, 1, -628, -249 , 0 );
setMoveKey( spep_4+1 + 22, 1, -559, -258.3 , 0 );
setMoveKey( spep_4+1 + 24, 1, -492.1, -267.4 , 0 );
setMoveKey( spep_4+1 + 26, 1, -427.2, -276.3 , 0 );
setMoveKey( spep_4+1 + 28, 1, -364.4, -284.9 , 0 );
setMoveKey( spep_4+1 + 30, 1, -303.7, -293.2 , 0 );
setMoveKey( spep_4+1 + 32, 1, -245, -301.3 , 0 );
setMoveKey( spep_4+1 + 34, 1, -188.5, -309.2 , 0 );
setMoveKey( spep_4+1 + 36, 1, -134, -316.8 , 0 );
setMoveKey( spep_4+1 + 37, 1, -134, -316.8 , 0 );

setMoveKey( spep_4+1 + 38, 1, -75.4, 119 , 0 );
setMoveKey( spep_4+1 + 40, 1, -27.3, 125.1 , 0 );
setMoveKey( spep_4+1 + 42, 1, 20.7, 131.1 , 0 );
setMoveKey( spep_4+1 + 43, 1, 20.7, 131.1 , 0 );

setMoveKey( spep_4+1 + 44, 1, 65.9, -135.1 , 0 );
setMoveKey( spep_4+1 + 45, 1, 65.9, -135.1 , 0 );
setMoveKey( spep_4+1 + 46, 1, 10.5, -98.7 , 0 );
setMoveKey( spep_4+1 + 47, 1, 10.5, -98.7 , 0 );
setMoveKey( spep_4+1 + 48, 1, 57, -175 , 0 );
setMoveKey( spep_4+1 + 49, 1, 57, -175 , 0 );
setMoveKey( spep_4+1 + 50, 1, -6.8, -184.3 , 0 );
setMoveKey( spep_4+1 + 51, 1, -6.8, -184.3 , 0 );
setMoveKey( spep_4+1 + 52, 1, 39.6, -284 , 0 );
setMoveKey( spep_4+1 + 53, 1, 39.6, -284 , 0 );
setMoveKey( spep_4+1 + 54, 1, -7.4, -260.3 , 0 );
setMoveKey( spep_4+1 + 55, 1, -7.4, -260.3 , 0 );
setMoveKey( spep_4+1 + 56, 1, 64.8, -458.1 , 0 );
setMoveKey( spep_4+1 + 57, 1, 64.8, -458.1 , 0 );
setMoveKey( spep_4+1 + 58, 1, -6.7, -555.3 , 0 );
setMoveKey( spep_4+1 + 59, 1, -6.7, -555.3 , 0 );
setMoveKey( spep_4+1 + 60, 1, 23.5, -729.8 , 0 );
setMoveKey( spep_4+1 + 61, 1, 23.5, -729.8 , 0 );
setMoveKey( spep_4+1 + 62, 1, -6.1, -840.1 , 0 );
setMoveKey( spep_4+1 + 63, 1, -6.1, -840.1 , 0 );
setMoveKey( spep_4+1 + 64, 1, 49.4, -996.1 , 0 );
setMoveKey( spep_4+1 + 65, 1, 49.4, -996.1 , 0 );
setMoveKey( spep_4+1 + 66, 1, 42.7, -1160.5 , 0 );

setScaleKey( spep_4+1 + 6, 1, 6.04, 6.04 );
setScaleKey( spep_4+1 + 18, 1, 6.04, 6.04 );
setScaleKey( spep_4+1 + 20, 1, 6.05, 6.05 );
setScaleKey( spep_4+1 + 30, 1, 6.05, 6.05 );
setScaleKey( spep_4+1 + 32, 1, 6.06, 6.06 );
setScaleKey( spep_4+1 + 37, 1, 6.06, 6.06 );

setScaleKey( spep_4+1 + 38, 1, 2.41, 2.41 );
setScaleKey( spep_4+1 + 43, 1, 2.41, 2.41 );

setScaleKey( spep_4+1 + 44, 1, 3.16, 3.16 );
setScaleKey( spep_4+1 + 66, 1, 3.16, 3.16 );

setRotateKey( spep_4+1 + 6, 1, -18.6 );
setRotateKey( spep_4+1 + 8, 1, -17.2 );
setRotateKey( spep_4+1 + 10, 1, -15.9 );
setRotateKey( spep_4+1 + 12, 1, -14.5 );
setRotateKey( spep_4+1 + 14, 1, -13.3 );
setRotateKey( spep_4+1 + 16, 1, -12 );
setRotateKey( spep_4+1 + 18, 1, -10.8 );
setRotateKey( spep_4+1 + 20, 1, -9.6 );
setRotateKey( spep_4+1 + 22, 1, -8.5 );
setRotateKey( spep_4+1 + 24, 1, -7.4 );
setRotateKey( spep_4+1 + 26, 1, -6.3 );
setRotateKey( spep_4+1 + 28, 1, -5.3 );
setRotateKey( spep_4+1 + 30, 1, -4.3 );
setRotateKey( spep_4+1 + 32, 1, -3.3 );
setRotateKey( spep_4+1 + 34, 1, -2.4 );
setRotateKey( spep_4+1 + 36, 1, -1.5 );
setRotateKey( spep_4+1 + 37, 1, -1.5 );

setRotateKey( spep_4+1 + 38, 1, 16.3 );
setRotateKey( spep_4+1 + 43, 1, 16.3 );

setRotateKey( spep_4+1 + 44, 1, 56.5 );
setRotateKey( spep_4+1 + 45, 1, 56.5 );
setRotateKey( spep_4+1 + 46, 1, 60 );
setRotateKey( spep_4+1 + 47, 1, 60 );
setRotateKey( spep_4+1 + 48, 1, 63.5 );
setRotateKey( spep_4+1 + 49, 1, 63.5 );
setRotateKey( spep_4+1 + 50, 1, 67 );
setRotateKey( spep_4+1 + 51, 1, 67 );
setRotateKey( spep_4+1 + 52, 1, 70.5 );
setRotateKey( spep_4+1 + 53, 1, 70.5 );
setRotateKey( spep_4+1 + 54, 1, 74 );
setRotateKey( spep_4+1 + 55, 1, 74 );
setRotateKey( spep_4+1 + 56, 1, 73.7 );
setRotateKey( spep_4+1 + 57, 1, 73.7 );
setRotateKey( spep_4+1 + 58, 1, 73.3 );
setRotateKey( spep_4+1 + 59, 1, 73.3 );
setRotateKey( spep_4+1 + 60, 1, 73 );
setRotateKey( spep_4+1 + 61, 1, 73 );
setRotateKey( spep_4+1 + 62, 1, 72.7 );
setRotateKey( spep_4+1 + 63, 1, 72.7 );
setRotateKey( spep_4+1 + 64, 1, 72.3 );
setRotateKey( spep_4+1 + 65, 1, 72.3 );
setRotateKey( spep_4+1 + 66, 1, 72 );

--SE
--トランクス蹴り落とす
SE033 = playSeVer2( spep_4 + 38, 1003, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_4 + 44, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 44, SE034, 91 );
SE035 = playSeVer2( spep_4 + 46, 1010, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5=spep_4+92;
------------------------------------------------------
--ベジータ正面→裏周り→気弾発射→爆破
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_5 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 188, beam_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 188, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_f, 0 );
setEffRotateKey( spep_5 + 188, beam_f, 0 );
setEffAlphaKey( spep_5 + 0, beam_f, 255 );
setEffAlphaKey( spep_5 + 186, beam_f, 255 );
setEffAlphaKey( spep_5 + 187, beam_f, 255 );
setEffAlphaKey( spep_5 + 188, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_5 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 188, beam_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 188, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam_b, 0 );
setEffRotateKey( spep_5 + 188, beam_b, 0 );
setEffAlphaKey( spep_5 + 0, beam_b, 255 );
setEffAlphaKey( spep_5 + 186, beam_b, 255 );
setEffAlphaKey( spep_5 + 187, beam_b, 255 );
setEffAlphaKey( spep_5 + 188, beam_b, 0 );

--敵の動き
setDisp( spep_5+1 + 72, 1, 1);
setDisp( spep_5+1 + 140, 1, 0);

changeAnime( spep_5+1 + 72, 1, 108);
changeAnime( spep_5+1 + 110, 1, 106);
changeAnime( spep_5+1 + 134, 1, 108);

setMoveKey( spep_5+1 + 72, 1, 21.2, 630.1 , 0 );
setMoveKey( spep_5+1 + 74, 1, 21.2, 580.8 , 0 );
setMoveKey( spep_5+1 + 76, 1, 21.2, 531.4 , 0 );
setMoveKey( spep_5+1 + 78, 1, 21.2, 482.1 , 0 );
setMoveKey( spep_5+1 + 80, 1, 21.2, 432.8 , 0 );
setMoveKey( spep_5+1 + 82, 1, 21.2, 383.4 , 0 );
setMoveKey( spep_5+1 + 84, 1, 21.3, 334.1 , 0 );
setMoveKey( spep_5+1 + 86, 1, 21.3, 284.8 , 0 );
setMoveKey( spep_5+1 + 88, 1, 21.3, 235.4 , 0 );
setMoveKey( spep_5+1 + 90, 1, 21.3, 186.1 , 0 );
setMoveKey( spep_5+1 + 92, 1, 21.3, 136.7 , 0 );
setMoveKey( spep_5+1 + 94, 1, 21.3, 87.4 , 0 );
setMoveKey( spep_5+1 + 96, 1, 21.3, 38.1 , 0 );
setMoveKey( spep_5+1 + 98, 1, 21.3, -11.3 , 0 );
setMoveKey( spep_5+1 + 100, 1, 21.3, -60.6 , 0 );
setMoveKey( spep_5+1 + 102, 1, 21.3, -109.9 , 0 );
setMoveKey( spep_5+1 + 104, 1, 21.3, -159.3 , 0 );
setMoveKey( spep_5+1 + 106, 1, 21.3, -208.6 , 0 );
setMoveKey( spep_5+1 + 108, 1, 13.1, -284.6 , 0 );
setMoveKey( spep_5+1 + 109, 1, 13.1, -284.6 , 0 );

setMoveKey( spep_5+1 + 110, 1, -7.7, -178.6 , 0 );
setMoveKey( spep_5+1 + 112, 1, -15.9, -163.4 , 0 );
setMoveKey( spep_5+1 + 114, 1, -13.8, -114.1 , 0 );
setMoveKey( spep_5+1 + 116, 1, -13.8, -82.2 , 0 );
setMoveKey( spep_5+1 + 118, 1, -13.8, -53.1 , 0 );
setMoveKey( spep_5+1 + 120, 1, -13.9, -29 , 0 );
setMoveKey( spep_5+1 + 122, 1, -13.9, -9.9 , 0 );
setMoveKey( spep_5+1 + 124, 1, -13.9, 4.2 , 0 );
setMoveKey( spep_5+1 + 126, 1, -13.9, 4.2 , 0 );
setMoveKey( spep_5+1 + 128, 1, -13.9, -6 , 0 );
setMoveKey( spep_5+1 + 130, 1, -10.7, -35.7 , 0 );
setMoveKey( spep_5+1 + 132, 1, -7.5, -65.3 , 0 );
setMoveKey( spep_5+1 + 133, 1, -7.5, -65.3 , 0 );

setMoveKey( spep_5+1 + 134, 1, -15.7, -135.8 , 0 );
setMoveKey( spep_5+1 + 140, 1, -15.7, -135.8 , 0 );

setScaleKey( spep_5+1 + 72, 1, 1.6, 1.6 );
setScaleKey( spep_5+1 + 109, 1, 1.6, 1.6 );

setScaleKey( spep_5+1 + 110, 1, 1.36, 1.36 );
setScaleKey( spep_5+1 + 133, 1, 1.36, 1.36 );

setScaleKey( spep_5+1 + 134, 1, 1.43, 1.43 );
setScaleKey( spep_5+1 + 140, 1, 1.43, 1.43 );

setRotateKey( spep_5+1 + 72, 1, 81.7 );
setRotateKey( spep_5+1 + 109, 1, 81.7 );

setRotateKey( spep_5+1 + 110, 1, 25.5 );
setRotateKey( spep_5+1 + 133, 1, 25.5 );

setRotateKey( spep_5+1 + 134, 1, 79.7 );
setRotateKey( spep_5+1 + 140, 1, 79.7 );

--SE
--ベジータ向かってくる
SE036 = playSeVer2( spep_5 + 0, 1182, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_5 + 0, 9, "", 0, 0, 0, -1);

--ベジータ飛び上がって回転する
SE038 = playSeVer2( spep_5 + 52, 1117, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_5 + 54, 1170, "",spep_5 + 88, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 54, SE039, 78 );
SE040 = playSeVer2( spep_5 + 76, 1116, "",spep_5 + 114, 0, 14, -1);
SE041 = playSeVer2( spep_5 + 98, 1004, "", 0, 0, 0, -1);

--ベジータ気弾撃つ
SE042 = playSeVer2( spep_5 + 130, 1016, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_5 + 132, 1145, "",spep_5 + 170, 0, 18, -1);
SE044 = playSeVer2( spep_5 + 136, 1023, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_5 + 144, 1024, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 190, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_6 = spep_5 + 188;
------------------------------------------------------
--悟空正面→パンチ（手元）→敵吹っ飛び→フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 266, finish_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 266, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 266, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 266, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_6 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 266, finish_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 266, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 266, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 266, finish_b, 255 );

--敵の動き
setDisp( spep_6+1 + 70, 1, 1);
setDisp( spep_6+1 + 116, 1, 0);

changeAnime( spep_6+1 + 70, 1, 106);
changeAnime( spep_6+1 + 86, 1, 108);

setMoveKey( spep_6+1 + 70, 1, -75.1, -185.7 , 0 );
setMoveKey( spep_6+1 + 72, 1, -63, -184.6 , 0 );
setMoveKey( spep_6+1 + 74, 1, -51, -183.5 , 0 );
setMoveKey( spep_6+1 + 76, 1, -38.9, -182.4 , 0 );
setMoveKey( spep_6+1 + 78, 1, -26.8, -181.3 , 0 );
setMoveKey( spep_6+1 + 80, 1, -14.7, -180.2 , 0 );
setMoveKey( spep_6+1 + 82, 1, -2.7, -179.1 , 0 );
setMoveKey( spep_6+1 + 84, 1, 9.4, -178 , 0 );
setMoveKey( spep_6+1 + 85, 1, 9.4, -178 , 0 );

setMoveKey( spep_6+1 + 86, 1, 116.9, -34.6 , 0 );
setMoveKey( spep_6+1 + 87, 1, 116.9, -34.6 , 0 );
setMoveKey( spep_6+1 + 88, 1, 89, -39.3 , 0 );
setMoveKey( spep_6+1 + 89, 1, 89, -39.3 , 0 );
setMoveKey( spep_6+1 + 90, 1, 160.7, -25.2 , 0 );
setMoveKey( spep_6+1 + 91, 1, 160.7, -25.2 , 0 );
setMoveKey( spep_6+1 + 92, 1, 124.1, -41.4 , 0 );
setMoveKey( spep_6+1 + 93, 1, 124.1, -41.4 , 0 );
setMoveKey( spep_6+1 + 94, 1, 160, -73.6 , 0 );
setMoveKey( spep_6+1 + 95, 1, 160, -73.6 , 0 );
setMoveKey( spep_6+1 + 96, 1, 179.1, -24.5 , 0 );
setMoveKey( spep_6+1 + 97, 1, 179.1, -24.5 , 0 );
setMoveKey( spep_6+1 + 98, 1, 156.1, -62.8 , 0 );
setMoveKey( spep_6+1 + 99, 1, 156.1, -62.8 , 0 );
setMoveKey( spep_6+1 + 100, 1, 255.2, -91.4 , 0 );
setMoveKey( spep_6+1 + 101, 1, 255.2, -91.4 , 0 );
setMoveKey( spep_6+1 + 102, 1, 313.9, -164.2 , 0 );
setMoveKey( spep_6+1 + 103, 1, 313.9, -164.2 , 0 );
setMoveKey( spep_6+1 + 104, 1, 351.3, -186.5 , 0 );
setMoveKey( spep_6+1 + 105, 1, 351.3, -186.5 , 0 );
setMoveKey( spep_6+1 + 106, 1, 415.2, -235.2 , 0 );
setMoveKey( spep_6+1 + 107, 1, 415.2, -235.2 , 0 );
setMoveKey( spep_6+1 + 108, 1, 450.2, -256.1 , 0 );
setMoveKey( spep_6+1 + 109, 1, 450.2, -256.1 , 0 );
setMoveKey( spep_6+1 + 110, 1, 467.7, -290.9 , 0 );
setMoveKey( spep_6+1 + 111, 1, 467.7, -290.9 , 0 );
setMoveKey( spep_6+1 + 112, 1, 514.4, -281.5 , 0 );
setMoveKey( spep_6+1 + 113, 1, 514.4, -281.5 , 0 );
setMoveKey( spep_6+1 + 114, 1, 521, -316.2 , 0 );
setMoveKey( spep_6+1 + 115, 1, 521, -316.2 , 0 );
setMoveKey( spep_6+1 + 116, 1, 506.4, -300.5 , 0 );

setScaleKey( spep_6+1 + 70, 1, 5.99, 5.99 );
setScaleKey( spep_6+1 + 85, 1, 5.99, 5.99 );

setScaleKey( spep_6+1 + 86, 1, 6.36, 6.36 );
setScaleKey( spep_6+1 + 98, 1, 6.36, 6.36 );
setScaleKey( spep_6+1 + 99, 1, 6.36, 6.36 );
setScaleKey( spep_6+1 + 100, 1, 5.06, 5.06 );
setScaleKey( spep_6+1 + 101, 1, 5.06, 5.06 );
setScaleKey( spep_6+1 + 102, 1, 3.91, 3.91 );
setScaleKey( spep_6+1 + 103, 1, 3.91, 3.91 );
setScaleKey( spep_6+1 + 104, 1, 2.92, 2.92 );
setScaleKey( spep_6+1 + 105, 1, 2.92, 2.92 );
setScaleKey( spep_6+1 + 106, 1, 2.08, 2.08 );
setScaleKey( spep_6+1 + 107, 1, 2.08, 2.08 );
setScaleKey( spep_6+1 + 108, 1, 1.39, 1.39 );
setScaleKey( spep_6+1 + 109, 1, 1.39, 1.39 );
setScaleKey( spep_6+1 + 110, 1, 0.85, 0.85 );
setScaleKey( spep_6+1 + 111, 1, 0.85, 0.85 );
setScaleKey( spep_6+1 + 112, 1, 0.47, 0.47 );
setScaleKey( spep_6+1 + 113, 1, 0.47, 0.47 );
setScaleKey( spep_6+1 + 114, 1, 0.24, 0.24 );
setScaleKey( spep_6+1 + 115, 1, 0.24, 0.24 );
setScaleKey( spep_6+1 + 116, 1, 0.16, 0.16 );

setRotateKey( spep_6+1 + 70, 1, -48 );
setRotateKey( spep_6+1 + 85, 1, -48 );

setRotateKey( spep_6+1 + 86, 1, 3.8 );
setRotateKey( spep_6+1 + 87, 1, 3.8 );
setRotateKey( spep_6+1 + 88, 1, 5.1 );
setRotateKey( spep_6+1 + 89, 1, 5.1 );
setRotateKey( spep_6+1 + 90, 1, 6.1 );
setRotateKey( spep_6+1 + 91, 1, 6.1 );
setRotateKey( spep_6+1 + 92, 1, 6.9 );
setRotateKey( spep_6+1 + 93, 1, 6.9 );
setRotateKey( spep_6+1 + 94, 1, 7.5 );
setRotateKey( spep_6+1 + 95, 1, 7.5 );
setRotateKey( spep_6+1 + 96, 1, 7.9 );
setRotateKey( spep_6+1 + 97, 1, 7.9 );
setRotateKey( spep_6+1 + 98, 1, 8 );
setRotateKey( spep_6+1 + 99, 1, 8 );
setRotateKey( spep_6+1 + 100, 1, 12.4 );
setRotateKey( spep_6+1 + 101, 1, 12.4 );
setRotateKey( spep_6+1 + 102, 1, 16.2 );
setRotateKey( spep_6+1 + 103, 1, 16.2 );
setRotateKey( spep_6+1 + 104, 1, 19.6 );
setRotateKey( spep_6+1 + 105, 1, 19.6 );
setRotateKey( spep_6+1 + 106, 1, 22.4 );
setRotateKey( spep_6+1 + 107, 1, 22.4 );
setRotateKey( spep_6+1 + 108, 1, 24.7 );
setRotateKey( spep_6+1 + 109, 1, 24.7 );
setRotateKey( spep_6+1 + 110, 1, 26.5 );
setRotateKey( spep_6+1 + 111, 1, 26.5 );
setRotateKey( spep_6+1 + 112, 1, 27.8 );
setRotateKey( spep_6+1 + 113, 1, 27.8 );
setRotateKey( spep_6+1 + 114, 1, 28.6 );
setRotateKey( spep_6+1 + 115, 1, 28.6 );
setRotateKey( spep_6+1 + 116, 1, 28.8 );

--敵の動き
setDisp( spep_6+3 + 134, 1, 1);
setDisp( spep_6+3 + 158, 1, 0);

changeAnime( spep_6+3 + 134, 1, 5);

setMoveKey( spep_6+3 + 134, 1, 296.7, -739.1 , 0 );
setMoveKey( spep_6+3 + 136, 1, 248.3, -623.8 , 0 );
setMoveKey( spep_6+3 + 138, 1, 204.3, -518.5 , 0 );
setMoveKey( spep_6+3 + 140, 1, 164.7, -423.3 , 0 );
setMoveKey( spep_6+3 + 142, 1, 129.4, -338.1 , 0 );
setMoveKey( spep_6+3 + 144, 1, 98.4, -262.9 , 0 );
setMoveKey( spep_6+3 + 146, 1, 71.6, -197.8 , 0 );
setMoveKey( spep_6+3 + 148, 1, 49, -142.7 , 0 );
setMoveKey( spep_6+3 + 150, 1, 30.6, -97.6 , 0 );
setMoveKey( spep_6+3 + 152, 1, 16.2, -62.5 , 0 );
setMoveKey( spep_6+3 + 154, 1, 6, -37.5 , 0 );
setMoveKey( spep_6+3 + 156, 1, -0.1, -22.4 , 0 );
setMoveKey( spep_6+3 + 158, 1, -2.1, -17.4 , 0 );

setScaleKey( spep_6+3 + 134, 1, 25.03, 25.03 );
setScaleKey( spep_6+3 + 136, 1, 21.09, 21.09 );
setScaleKey( spep_6+3 + 138, 1, 17.48, 17.48 );
setScaleKey( spep_6+3 + 140, 1, 14.22, 14.22 );
setScaleKey( spep_6+3 + 142, 1, 11.3, 11.3 );
setScaleKey( spep_6+3 + 144, 1, 8.73, 8.73 );
setScaleKey( spep_6+3 + 146, 1, 6.5, 6.5 );
setScaleKey( spep_6+3 + 148, 1, 4.61, 4.61 );
setScaleKey( spep_6+3 + 150, 1, 3.07, 3.07 );
setScaleKey( spep_6+3 + 152, 1, 1.87, 1.87 );
setScaleKey( spep_6+3 + 154, 1, 1.01, 1.01 );
setScaleKey( spep_6+3 + 156, 1, 0.49, 0.49 );
setScaleKey( spep_6+3 + 158, 1, 0.32, 0.32 );

setRotateKey( spep_6+3 + 134, 1, 3.8 );
setRotateKey( spep_6+3 + 158, 1, 3.8 );

--SE
--悟空向かってくる
SE046 = playSeVer2( spep_6 + 0, 1182, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_6 + 0, 9, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_6 + 8, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 8, SE048, 40 );

--悟空振りかぶる
SE049 = playSeVer2( spep_6 + 60, 1116, "",spep_6 + 96, 0, 10, -1);

--悟空パンチ
SE050 = playSeVer2( spep_6 + 88, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 88, SE050, 79 );
SE051 = playSeVer2( spep_6 + 88, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 88, SE051, 65 );

--敵飛んでいく
SE052 = playSeVer2( spep_6 + 92, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 92, SE052, 71 );
SE053 = playSeVer2( spep_6 + 112, 1183, "",spep_6 + 170, 0, 8, -1);
SE054 = playSeVer2( spep_6 + 112, 1121, "",spep_6 + 170, 0, 8, -1);
setSeVolumeByWorkId( spep_6 + 112, SE054, 72 );
setPitch( spep_6 + 112, SE054, 200 );
setTimeStretch( SE054, 1.13, 30, 4 );

--爆発
SE055 = playSeVer2( spep_6 + 162, 1159, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_6 + 162, 1024, "", 0, 0, 0, -1);

-- 終わり
dealDamage(spep_6+162);
endPhase( spep_6 + 256 );
end