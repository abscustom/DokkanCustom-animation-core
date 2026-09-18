--1022630:超サイヤ人孫悟空_超かめはめ波
--sp_effect_a1_00306
--sp2231

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
SP_01=	157904	;--	悟空構え
SP_02=	157905	;--	突進〜かめはめ波俯瞰
SP_03=	157906	;--	突進〜かめはめ波俯瞰
SP_04=	157907	;--	かめはめ波縦〜フィニッシュ
SP_05=	157908	;--	かめはめ波縦〜フィニッシュ
SP_06=	157909	;--	KO

--エフェクト(てき)
SP_01x=	157904	;--	悟空構え	
SP_02x=	157910	;--	突進〜かめはめ波俯瞰	(敵)
SP_03x=	157911	;--	突進〜かめはめ波俯瞰	(敵)
SP_04x=	157912	;--	かめはめ波縦〜フィニッシュ	(敵)
SP_05x=	157913	;--	かめはめ波縦〜フィニッシュ	(敵)
SP_06x=	157909	;--	KO	

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
--悟空構え
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
ready = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, ready, 0, 0, 0 );
setEffMoveKey( spep_0 + 90, ready, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ready, 1.0, 1.0 );
setEffScaleKey( spep_0 + 90, ready, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ready, 0 );
setEffRotateKey( spep_0 + 90, ready, 0 );
setEffAlphaKey( spep_0 + 0, ready, 255 );
setEffAlphaKey( spep_0 + 88, ready, 255 );
setEffAlphaKey( spep_0 + 89, ready, 255 );
setEffAlphaKey( spep_0 + 90, ready, 0 );

--SE
--構える
SE001 = playSeVer2( spep_0 + 4, 1233, "", 0, 0, 0, -1);
setPitch( spep_0 + 4, SE001, -600 );
setTimeStretch( SE001, 0.6, 30, 4 );

--構える
SE003 = playSeVer2( spep_0 + 20, 1006, "", 0, 0, 0, -1);
setPitch( spep_0 + 20, SE003, -600 );
setTimeStretch( SE003, 0.6, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 90, 0, 0, 0, 0, 255);       -- ベース暗め　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    
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
spep_x=spep_0 +4;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 50, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  50,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  50,  515);

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
--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--次の準備
spep_1=spep_0+90;
------------------------------------------------------
--突進〜かめはめ波俯瞰
------------------------------------------------------
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 714, tame_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 714, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame_f, 0 );
setEffRotateKey( spep_1 + 714, tame_f, 0 );
setEffAlphaKey( spep_1 + 0, tame_f, 255 );
setEffAlphaKey( spep_1 + 714, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 714, tame_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 714, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame_b, 0 );
setEffRotateKey( spep_1 + 714, tame_b, 0 );
setEffAlphaKey( spep_1 + 0, tame_b, 255 );
setEffAlphaKey( spep_1 + 714, tame_b, 255 );

--敵の動き(飛んでからグルグル)
setDisp( spep_1-3 + 70, 1, 1);
setDisp( spep_1-1 + 274, 1, 0);

changeAnime( spep_1-3 + 70, 1, 107);--飛ぶ
changeAnime( spep_1-3 + 120, 1, 106);--キャッチ
changeAnime( spep_1-3 + 144, 1, 107);--グルグル
changeAnime( spep_1-3 + 152, 1, 7);
changeAnime( spep_1-3 + 156, 1, 6);
changeAnime( spep_1-3 + 162, 1, 105);
changeAnime( spep_1-3 + 176, 1, 106);
changeAnime( spep_1-3 + 186, 1, 107);
changeAnime( spep_1-3 + 194, 1, 7);
changeAnime( spep_1-3 + 198, 1, 6);
changeAnime( spep_1-3 + 204, 1, 105);
changeAnime( spep_1-3 + 214, 1, 106);
changeAnime( spep_1-3 + 220, 1, 107);
changeAnime( spep_1-3 + 228, 1, 7);
changeAnime( spep_1-3 + 230, 1, 6);
changeAnime( spep_1-3 + 234, 1, 105);
changeAnime( spep_1-3 + 240, 1, 106);
changeAnime( spep_1-3 + 246, 1, 107);
changeAnime( spep_1-3 + 250, 1, 7);
changeAnime( spep_1-3 + 252, 1, 6);
changeAnime( spep_1-3 + 254, 1, 105);
changeAnime( spep_1-3 + 262, 1, 106);

d=100;
e=280;

setMoveKey( spep_1-3 + 70, 1, -193.1, -214.2+e , 0 );
setMoveKey( spep_1-3 + 72, 1, -193.1, -204.2+e , 0 );
setMoveKey( spep_1-3 + 74, 1, -193.1, -204.2+e , 0 );
setMoveKey( spep_1-3 + 75, 1, -193.1, -204.2+e , 0 );
setMoveKey( spep_1-3 + 76, 1, 149, 24+d , 0 );
setMoveKey( spep_1-3 + 78, 1, 149, 44+d , 0 );
setMoveKey( spep_1-3 + 79, 1, 149, 44+d , 0 );
setMoveKey( spep_1-3 + 80, 1, -193.1, -214.2+e , 0 );
setMoveKey( spep_1-3 + 82, 1, -193.1, -214.2+e , 0 );
setMoveKey( spep_1-3 + 83, 1, -193.1, -214.2+e , 0 );
setMoveKey( spep_1-3 + 84, 1, 149, 24+d , 0 );
setMoveKey( spep_1-3 + 86, 1, 149, 24+d , 0 );
setMoveKey( spep_1-3 + 88, 1, 149, 44+d , 0 );
setMoveKey( spep_1-3 + 89, 1, 149, 44+d , 0 );
setMoveKey( spep_1-3 + 90, 1, -193.1, -214.2+e , 0 );
setMoveKey( spep_1-3 + 92, 1, -193.1, -214.2+e , 0 );
setMoveKey( spep_1-3 + 93, 1, -193.1, -214.2+e , 0 );
setMoveKey( spep_1-3 + 94, 1, 149, 24+d , 0 );
setMoveKey( spep_1-3 + 96, 1, 149, 24+d , 0 );
setMoveKey( spep_1-3 + 98, 1, 149, 44+d , 0 );
setMoveKey( spep_1-3 + 99, 1, 149, 44+d , 0 );
setMoveKey( spep_1-3 + 100, 1, -193.1, -214.2+e , 0 );
setMoveKey( spep_1-3 + 102, 1, -193.1, -204.2+e , 0 );
setMoveKey( spep_1-3 + 104, 1, -193.1, -204.2+e , 0 );
setMoveKey( spep_1-3 + 105, 1, -193.1, -204.2+e , 0 );
setMoveKey( spep_1-3 + 106, 1, 149, 24+d , 0 );
setMoveKey( spep_1-3 + 108, 1, 149, 44+d , 0 );
setMoveKey( spep_1-3 + 110, 1, 149, 24+d , 0 );
setMoveKey( spep_1-3 + 116, 1, 149, 24+d , 0 );
setMoveKey( spep_1-3 + 118, 1, 149, 44+d , 0 );
setMoveKey( spep_1-3 + 119, 1, 149, 44+d , 0 );

a=260;
c=-130;

setMoveKey( spep_1-3 + 120, 1, 1017.6-a, -392.1+c , 0 );
setMoveKey( spep_1-3 + 124, 1, 1017.6-a, -392.1+c , 0 );
setMoveKey( spep_1-3 + 126, 1, 1053.3-a, 207.2+c , 0 );
setMoveKey( spep_1-3 + 128, 1, 1053.3-a, 207.2+c , 0 );
setMoveKey( spep_1-3 + 130, 1, 846.6-a, 554.8+c , 0 );
setMoveKey( spep_1-3 + 134, 1, 846.6-a, 554.8+c , 0 );
setMoveKey( spep_1-3 + 136, 1, 812.4-a, 583.4+c , 0 );
setMoveKey( spep_1-3 + 143, 1, 812.4-a, 583.4+c , 0 );

--1周目
setMoveKey( spep_1-3 + 144, 1, 245.7, -301.2 , 0 );
setMoveKey( spep_1-3 + 151, 1, 245.7, -301.2 , 0 );

setMoveKey( spep_1-3 + 152, 1, -360.2, -135.1 , 0 );
setMoveKey( spep_1-3 + 155, 1, -360.2, -135.1 , 0 );

setMoveKey( spep_1-3 + 156, 1, -320.3, -15.7 , 0 );
setMoveKey( spep_1-3 + 161, 1, -320.3, -15.7 , 0 );

setMoveKey( spep_1-3 + 162, 1, -150.6, 141.6 , 0 );
setMoveKey( spep_1-3 + 169, 1, -150.6, 141.6 , 0 );
setMoveKey( spep_1-3 + 170, 1, 25.6, 235.6 , 0 );
setMoveKey( spep_1-3 + 175, 1, 25.6, 235.6 , 0 );

setMoveKey( spep_1-3 + 176, 1, 356.1, 133.4 , 0 );
setMoveKey( spep_1-3 + 181, 1, 356.1, 133.4 , 0 );
setMoveKey( spep_1-3 + 182, 1, 471.8, 24.4 , 0 );
setMoveKey( spep_1-3 + 185, 1, 471.8, 24.4 , 0 );

setMoveKey( spep_1-3 + 186, 1, 412.6, -203.3 , 0 );
setMoveKey( spep_1-3 + 189, 1, 412.6, -203.3 , 0 );

--2周目
setMoveKey( spep_1-3 + 190, 1, 245.7, -301.2 , 0 );
setMoveKey( spep_1-3 + 193, 1, 245.7, -301.2 , 0 );

setMoveKey( spep_1-3 + 194, 1, -360.2, -135.1 , 0 );
setMoveKey( spep_1-3 + 197, 1, -360.2, -135.1 , 0 );

setMoveKey( spep_1-3 + 198, 1, -320.3, -15.7 , 0 );
setMoveKey( spep_1-3 + 203, 1, -320.3, -15.7 , 0 );

setMoveKey( spep_1-3 + 204, 1, -150.6, 141.6 , 0 );
setMoveKey( spep_1-3 + 209, 1, -150.6, 141.6 , 0 );
setMoveKey( spep_1-3 + 210, 1, 25.6, 235.6 , 0 );
setMoveKey( spep_1-3 + 213, 1, 25.6, 235.6 , 0 );

setMoveKey( spep_1-3 + 214, 1, 356.1, 133.4 , 0 );
setMoveKey( spep_1-3 + 217, 1, 356.1, 133.4 , 0 );
setMoveKey( spep_1-3 + 218, 1, 471.8, 24.4 , 0 );
setMoveKey( spep_1-3 + 219, 1, 471.8, 24.4 , 0 );

setMoveKey( spep_1-3 + 220, 1, 412.6, -203.3 , 0 );
setMoveKey( spep_1-3 + 223, 1, 412.6, -203.3 , 0 );

--3周目
setMoveKey( spep_1-3 + 224, 1, 245.7, -301.2 , 0 );
setMoveKey( spep_1-3 + 227, 1, 245.7, -301.2 , 0 );

setMoveKey( spep_1-3 + 228, 1, -360.2, -135.1 , 0 );
setMoveKey( spep_1-3 + 229, 1, -360.2, -135.1 , 0 );

setMoveKey( spep_1-3 + 230, 1, -320.3, -15.7 , 0 );
setMoveKey( spep_1-3 + 233, 1, -320.3, -15.7 , 0 );

setMoveKey( spep_1-3 + 234, 1, -150.6, 141.6 , 0 );
setMoveKey( spep_1-3 + 237, 1, -150.6, 141.6 , 0 );
setMoveKey( spep_1-3 + 238, 1, 25.6, 235.6 , 0 );
setMoveKey( spep_1-3 + 239, 1, 25.6, 235.6 , 0 );

setMoveKey( spep_1-3 + 240, 1, 356.1, 133.4  , 0 );
setMoveKey( spep_1-3 + 243, 1, 356.1, 133.4  , 0 );
setMoveKey( spep_1-3 + 244, 1, 471.8, 24.4 , 0 );
setMoveKey( spep_1-3 + 245, 1, 471.8, 24.4 , 0 );

setMoveKey( spep_1-3 + 246, 1, 412.6, -203.3 , 0 );
setMoveKey( spep_1-3 + 247, 1, 412.6, -203.3 , 0 );

--4周目
setMoveKey( spep_1-3 + 248, 1, 245.7, -301.2 , 0 );
setMoveKey( spep_1-3 + 249, 1, 245.7, -301.2 , 0 );

setMoveKey( spep_1-3 + 250, 1, -360.2, -135.1 , 0 );
setMoveKey( spep_1-3 + 251, 1, -360.2, -135.1 , 0 );

setMoveKey( spep_1-3 + 252, 1, -475.3, -15.7 , 0 );
setMoveKey( spep_1-3 + 253, 1, -475.3, -15.7 , 0 );

setMoveKey( spep_1-3 + 254, 1, -150.6, 141.6 , 0 );
setMoveKey( spep_1-3 + 256, 1, -150.6, 141.6 , 0 );
setMoveKey( spep_1-3 + 257, 1, -150.6, 141.6 , 0 );
setMoveKey( spep_1-3 + 258, 1, 25.6, 235.6 , 0 );
setMoveKey( spep_1-3 + 261, 1, 25.6, 235.6 , 0 );

setMoveKey( spep_1-3 + 262, 1, 356.1, 133.4 , 0 );
setMoveKey( spep_1-3 + 263, 1, 356.1, 133.4 , 0 );

setMoveKey( spep_1-3 + 264, 1, 1199.4, -39.8 , 0 );
setMoveKey( spep_1-3 + 266, 1, 1292, -155.1 , 0 );
setMoveKey( spep_1-3 + 268, 1, 1364.1, -244.8 , 0 );
setMoveKey( spep_1-3 + 270, 1, 1415.5, -308.8 , 0 );
setMoveKey( spep_1-3 + 272, 1, 1446.4, -347.2 , 0 );
setMoveKey( spep_1-1 + 274, 1, 1456.7, -360.1 , 0 );


setScaleKey( spep_1-3 + 70, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 74, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 75, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 76, 1, 1.65,1.65);
setScaleKey( spep_1-3 + 78, 1, 1.65,1.65);
setScaleKey( spep_1-3 + 79, 1, 1.65,1.65);
setScaleKey( spep_1-3 + 80, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 82, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 83, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 84, 1, 1.65,1.65);
setScaleKey( spep_1-3 + 88, 1, 1.65,1.65);
setScaleKey( spep_1-3 + 89, 1, 1.65,1.65);
setScaleKey( spep_1-3 + 90, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 92, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 93, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 94, 1, 1.65,1.65);
setScaleKey( spep_1-3 + 98, 1, 1.65,1.65);
setScaleKey( spep_1-3 + 99, 1, 1.65,1.65);
setScaleKey( spep_1-3 + 100, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 104, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 105, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 106, 1, 1.65,1.65);
setScaleKey( spep_1-3 + 119, 1, 1.65,1.65);

setScaleKey( spep_1-3 + 120, 1, 9, 9 );
setScaleKey( spep_1-3 + 124, 1, 9, 9 );
setScaleKey( spep_1-3 + 126, 1, 8.99, 8.99 );
setScaleKey( spep_1-3 + 134, 1, 8.99, 8.99 );
setScaleKey( spep_1-3 + 136, 1, 8.98, 8.98 );
setScaleKey( spep_1-3 + 143, 1, 8.98, 8.98 );

setScaleKey( spep_1-3 + 144, 1, 2.1,2.1);
setScaleKey( spep_1-3 + 151, 1, 2.1,2.1);

setScaleKey( spep_1-3 + 152, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 155, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 156, 1, 3.15,3.15);
setScaleKey( spep_1-3 + 161, 1, 3.15,3.15);

setScaleKey( spep_1-3 + 162, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 174, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 162, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 175, 1, 1.68,1.68);

setScaleKey( spep_1-3 + 176, 1, 2.62,2.62);
setScaleKey( spep_1-3 + 181, 1, 2.62,2.62);
setScaleKey( spep_1-3 + 182, 1, 3.15,3.15);
setScaleKey( spep_1-3 + 185, 1, 3.15,3.15);

setScaleKey( spep_1-3 + 186, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 189, 1, 1.68,1.68);

setScaleKey( spep_1-3 + 190, 1, 2.1,2.1);
setScaleKey( spep_1-3 + 193, 1, 2.1,2.1);

setScaleKey( spep_1-3 + 194, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 197, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 198, 1, 3.15,3.15);
setScaleKey( spep_1-3 + 203, 1, 3.15,3.15);

setScaleKey( spep_1-3 + 204, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 213, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 214, 1, 2.62,2.62);
setScaleKey( spep_1-3 + 217, 1, 2.62,2.62);

setScaleKey( spep_1-3 + 218, 1, 3.15,3.15);
setScaleKey( spep_1-3 + 219, 1, 3.15,3.15);
setScaleKey( spep_1-3 + 220, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 223, 1, 1.68,1.68);

setScaleKey( spep_1-3 + 224, 1, 2.1,2.1);
setScaleKey( spep_1-3 + 227, 1, 2.1,2.1);

setScaleKey( spep_1-3 + 228, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 229, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 230, 1, 3.15,3.15);
setScaleKey( spep_1-3 + 233, 1, 3.15,3.15);

setScaleKey( spep_1-3 + 234, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 239, 1, 1.68,1.68);

setScaleKey( spep_1-3 + 240, 1, 2.62,2.62);
setScaleKey( spep_1-3 + 243, 1, 2.62,2.62);

setScaleKey( spep_1-3 + 244, 1, 3.15,3.15);
setScaleKey( spep_1-3 + 245, 1, 3.15,3.15);

setScaleKey( spep_1-3 + 246, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 247, 1, 1.68,1.68);

setScaleKey( spep_1-3 + 248, 1, 2.1,2.1);
setScaleKey( spep_1-3 + 249, 1, 2.1,2.1);

setScaleKey( spep_1-3 + 250, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 251, 1, 1.68,1.68);

setScaleKey( spep_1-3 + 252, 1, 3.15,3.15);
setScaleKey( spep_1-3 + 253, 1, 3.15,3.15);

setScaleKey( spep_1-3 + 254, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 261, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 262, 1, 2.62,2.62);
setScaleKey( spep_1-3 + 263, 1, 2.62,2.62);

setScaleKey( spep_1-3 + 264, 1, 6, 6 );
setScaleKey( spep_1-3 + 266, 1, 6.36, 6.36 );
setScaleKey( spep_1-3 + 268, 1, 6.64, 6.64 );
setScaleKey( spep_1-3 + 270, 1, 6.84, 6.84 );
setScaleKey( spep_1-3 + 272, 1, 6.96, 6.96 );
setScaleKey( spep_1-1 + 274, 1, 7, 7 );


setRotateKey( spep_1-3 + 70, 1, -65 );
setRotateKey( spep_1-3 + 119, 1, -65 );

b=-50;

setRotateKey( spep_1-3 + 120, 1, 60+b );
setRotateKey( spep_1-3 + 124, 1, 60+b );
setRotateKey( spep_1-3 + 126, 1, 46.7+b );
setRotateKey( spep_1-3 + 128, 1, 46.7+b );
setRotateKey( spep_1-3 + 130, 1, 25.1+b );
setRotateKey( spep_1-3 + 134, 1, 25.1+b );
setRotateKey( spep_1-3 + 136, 1, 22.4+b );
setRotateKey( spep_1-3 + 143, 1, 22.4+b );

--80

setRotateKey( spep_1-3 + 144, 1, 40 );
setRotateKey( spep_1-3 + 151, 1, 40 );

setRotateKey( spep_1-3 + 152, 1, -35 );
setRotateKey( spep_1-3 + 155, 1, -35 );

setRotateKey( spep_1-3 + 156, 1, -45 );
setRotateKey( spep_1-3 + 161, 1, -45 );

setRotateKey( spep_1-3 + 162, 1, -30 );
setRotateKey( spep_1-3 + 169, 1, -30 );
setRotateKey( spep_1-3 + 170, 1, 0 );
setRotateKey( spep_1-3 + 175, 1, 0 );

setRotateKey( spep_1-3 + 176, 1, 30 );
setRotateKey( spep_1-3 + 181, 1, 30 );
setRotateKey( spep_1-3 + 182, 1, 50 );
setRotateKey( spep_1-3 + 185, 1, 50 );

setRotateKey( spep_1-3 + 186, 1, 40.8 );
setRotateKey( spep_1-3 + 189, 1, 40.8 );
setRotateKey( spep_1-3 + 190, 1, 40 );
setRotateKey( spep_1-3 + 193, 1, 40 );

setRotateKey( spep_1-3 + 194, 1, -45 );
setRotateKey( spep_1-3 + 197, 1, -45 );

setRotateKey( spep_1-3 + 198, 1, -45 );
setRotateKey( spep_1-3 + 203, 1, -45 );

setRotateKey( spep_1-3 + 204, 1, -30 );
setRotateKey( spep_1-3 + 209, 1, -30 );
setRotateKey( spep_1-3 + 210, 1, 0 );
setRotateKey( spep_1-3 + 213, 1, 0 );

setRotateKey( spep_1-3 + 214, 1, 30 );
setRotateKey( spep_1-3 + 217, 1, 30 );
setRotateKey( spep_1-3 + 218, 1, 60 );
setRotateKey( spep_1-3 + 219, 1, 60 );

setRotateKey( spep_1-3 + 220, 1, 40.8 );
setRotateKey( spep_1-3 + 223, 1, 40.8 );
setRotateKey( spep_1-3 + 224, 1, 40 );
setRotateKey( spep_1-3 + 227, 1, 40 );

setRotateKey( spep_1-3 + 228, 1, -45 );
setRotateKey( spep_1-3 + 229, 1, -45 );

setRotateKey( spep_1-3 + 230, 1, -45 );
setRotateKey( spep_1-3 + 233, 1, -45 );

setRotateKey( spep_1-3 + 234, 1, -30 );
setRotateKey( spep_1-3 + 237, 1, -30 );
setRotateKey( spep_1-3 + 238, 1, 0 );
setRotateKey( spep_1-3 + 239, 1, 0 );

setRotateKey( spep_1-3 + 240, 1, 30 );
setRotateKey( spep_1-3 + 243, 1, 30 );
setRotateKey( spep_1-3 + 244, 1, 60 );
setRotateKey( spep_1-3 + 245, 1, 60 );

setRotateKey( spep_1-3 + 246, 1, 40.8 );
setRotateKey( spep_1-3 + 247, 1, 40.8 );
setRotateKey( spep_1-3 + 248, 1, 40 );
setRotateKey( spep_1-3 + 249, 1, 40 );

setRotateKey( spep_1-3 + 250, 1, -45 );
setRotateKey( spep_1-3 + 251, 1, -45 );

setRotateKey( spep_1-3 + 252, 1, -45 );
setRotateKey( spep_1-3 + 253, 1, -45 );

setRotateKey( spep_1-3 + 254, 1, -30 );
setRotateKey( spep_1-3 + 257, 1, -30 );
setRotateKey( spep_1-3 + 258, 1, 0 );
setRotateKey( spep_1-3 + 261, 1, 0 );

setRotateKey( spep_1-3 + 262, 1, 30 );
setRotateKey( spep_1-3 + 263, 1, 30 );

setRotateKey( spep_1-3 + 264, 1, 60 );
setRotateKey( spep_1-3 + 266, 1, 63.6 );
setRotateKey( spep_1-3 + 268, 1, 66.4 );
setRotateKey( spep_1-3 + 270, 1, 68.4 );
setRotateKey( spep_1-3 + 272, 1, 69.6 );
setRotateKey( spep_1-1 + 274, 1, 70 );

--敵の動き
setDisp( spep_1-3 + 310, 1, 1);
setDisp( spep_1-1 + 344, 1, 0);

changeAnime( spep_1-3 + 310, 1, 6);
changeAnime( spep_1-3 + 314, 1, 105);

setMoveKey( spep_1-3 + 310, 1, -573.2, -315.1 , 0 );
setMoveKey( spep_1-3 + 311, 1, -573.2, -315.1 , 0 );
setMoveKey( spep_1-3 + 312, 1, -409.5, -79 , 0 );
setMoveKey( spep_1-3 + 313, 1, -409.5, -79 , 0 );

setMoveKey( spep_1-3 + 314, 1, -85.4, 204.6 , 0 );
setMoveKey( spep_1-3 + 316, 1, -113.8, 223.6 , 0 );
setMoveKey( spep_1-3 + 318, 1, -140, 241.3 , 0 );
setMoveKey( spep_1-3 + 320, 1, -164.2, 257.5 , 0 );
setMoveKey( spep_1-3 + 322, 1, -186.2, 272.3 , 0 );
setMoveKey( spep_1-3 + 324, 1, -206.2, 285.7 , 0 );
setMoveKey( spep_1-3 + 326, 1, -224.1, 297.7 , 0 );
setMoveKey( spep_1-3 + 328, 1, -239.8, 308.2 , 0 );
setMoveKey( spep_1-3 + 330, 1, -253.5, 317.4 , 0 );
setMoveKey( spep_1-3 + 332, 1, -265, 325.2 , 0 );
setMoveKey( spep_1-3 + 334, 1, -274.5, 331.5 , 0 );
setMoveKey( spep_1-3 + 336, 1, -281.8, 336.5 , 0 );
setMoveKey( spep_1-3 + 338, 1, -287.1, 340 , 0 );
setMoveKey( spep_1-3 + 340, 1, -290.2, 342.1 , 0 );
setMoveKey( spep_1-1+ 344, 1, -291.3, 342.8 , 0 );

setScaleKey( spep_1-3 + 310, 1, 3.99, 3.99 );
setScaleKey( spep_1-3 + 311, 1, 3.99, 3.99 );
setScaleKey( spep_1-3 + 312, 1, 3, 3 );
setScaleKey( spep_1-3 + 313, 1, 3, 3 );

setScaleKey( spep_1-3 + 314, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 316, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 318, 1, 1.12, 1.12 );
setScaleKey( spep_1-3 + 320, 1, 0.95, 0.95 );
setScaleKey( spep_1-3 + 322, 1, 0.8, 0.8 );
setScaleKey( spep_1-3 + 324, 1, 0.66, 0.66 );
setScaleKey( spep_1-3 + 326, 1, 0.53, 0.53 );
setScaleKey( spep_1-3 + 328, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 330, 1, 0.33, 0.33 );
setScaleKey( spep_1-3 + 332, 1, 0.25, 0.25 );
setScaleKey( spep_1-3 + 334, 1, 0.18, 0.18 );
setScaleKey( spep_1-3 + 336, 1, 0.13, 0.13 );
setScaleKey( spep_1-3 + 338, 1, 0.09, 0.09 );
setScaleKey( spep_1-3 + 340, 1, 0.07, 0.07 );
setScaleKey( spep_1-1 + 344, 1, 0.06, 0.06 );

setRotateKey( spep_1-3 + 310, 1, -60 );
setRotateKey( spep_1-3 + 311, 1, -60 );
setRotateKey( spep_1-3 + 312, 1, -45 );
setRotateKey( spep_1-3 + 313, 1, -45 );

setRotateKey( spep_1-3 + 314, 1, 16.1 );
setRotateKey( spep_1-3 + 316, 1, 16.6 );
setRotateKey( spep_1-3 + 318, 1, 17.1 );
setRotateKey( spep_1-3 + 320, 1, 17.6 );
setRotateKey( spep_1-3 + 322, 1, 18 );
setRotateKey( spep_1-3 + 324, 1, 18.4 );
setRotateKey( spep_1-3 + 326, 1, 18.7 );
setRotateKey( spep_1-3 + 328, 1, 19 );
setRotateKey( spep_1-3 + 330, 1, 19.3 );
setRotateKey( spep_1-3 + 332, 1, 19.5 );
setRotateKey( spep_1-3 + 334, 1, 19.7 );
setRotateKey( spep_1-3 + 336, 1, 19.8 );
setRotateKey( spep_1-3 + 338, 1, 19.9 );
setRotateKey( spep_1-1 + 344, 1, 20 );

--敵の動き
setDisp( spep_1-3 + 356, 1, 1);
setDisp( spep_1-1 + 384, 1, 0);

changeAnime( spep_1-3 + 356, 1, 107);
changeAnime( spep_1-3 + 362, 1, 105);

setMoveKey( spep_1-3 + 356, 1, -63.7, -681.9 , 0 );
setMoveKey( spep_1-3 + 361, 1, -63.7, -681.9 , 0 );

setMoveKey( spep_1-3 + 362, 1, 65.3, 21.1 , 0 );
setMoveKey( spep_1-3 + 364, 1, 83.7, 65.2 , 0 );
setMoveKey( spep_1-3 + 366, 1, 102.3, 109.3 , 0 );
setMoveKey( spep_1-3 + 368, 1, 95.8, 124.3 , 0 );
setMoveKey( spep_1-3 + 370, 1, 91.7, 135.3 , 0 );
setMoveKey( spep_1-3 + 372, 1, 89.4, 142 , 0 );
setMoveKey( spep_1-3 + 374, 1, 88.6, 144.3 , 0 );
setMoveKey( spep_1-3 + 376, 1, 80, 136 , 0 );
setMoveKey( spep_1-3 + 378, 1, 71.5, 127.8 , 0 );
setMoveKey( spep_1-3 + 380, 1, 62.8, 119.7 , 0 );
setMoveKey( spep_1-1 + 384, 1, 54.1, 111.6 , 0 );

setScaleKey( spep_1-3 + 356, 1, 4.99, 4.99 );
setScaleKey( spep_1-3 + 361, 1, 4.99, 4.99 );

setScaleKey( spep_1-3 + 362, 1, 2.5, 2.5 );
setScaleKey( spep_1-3 + 364, 1, 1.85, 1.85 );
setScaleKey( spep_1-3 + 366, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 368, 1, 0.82, 0.82 );
setScaleKey( spep_1-3 + 370, 1, 0.55, 0.55 );
setScaleKey( spep_1-3 + 372, 1, 0.38, 0.38 );
setScaleKey( spep_1-3 + 374, 1, 0.33, 0.33 );
setScaleKey( spep_1-3 + 376, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 378, 1, 0.21, 0.21 );
setScaleKey( spep_1-3 + 380, 1, 0.16, 0.16 );
setScaleKey( spep_1-1 + 384, 1, 0.1, 0.1 );

setRotateKey( spep_1-3 + 356, 1, -119.9 );
setRotateKey( spep_1-3 + 361, 1, -119.9 );

setRotateKey( spep_1-3 + 362, 1, 5 );
setRotateKey( spep_1-3 + 364, 1, 2.5 );
setRotateKey( spep_1-3 + 366, 1, 0 );
setRotateKey( spep_1-3 + 368, 1, -13.1 );
setRotateKey( spep_1-3 + 370, 1, -22.5 );
setRotateKey( spep_1-3 + 372, 1, -28.1 );
setRotateKey( spep_1-3 + 374, 1, -30 );
setRotateKey( spep_1-3 + 376, 1, -45 );
setRotateKey( spep_1-3 + 378, 1, -60 );
setRotateKey( spep_1-3 + 380, 1, -75 );
setRotateKey( spep_1-1 + 384, 1, -89.9 );

--敵の動き
setDisp( spep_1-3 + 518, 1, 1);
setDisp( spep_1-1 + 578, 1, 0);

changeAnime( spep_1-3 + 518, 1, 105);

setMoveKey( spep_1-3 + 518, 1, 46.6, 503.7 , 0 );
setMoveKey( spep_1-3 + 520, 1, 46.8, 504 , 0 );
setMoveKey( spep_1-3 + 522, 1, 46.9, 504.3 , 0 );
setMoveKey( spep_1-3 + 524, 1, 47, 504.5 , 0 );
setMoveKey( spep_1-3 + 526, 1, 47.2, 504.8 , 0 );
setMoveKey( spep_1-3 + 528, 1, 47.3, 505.1 , 0 );
setMoveKey( spep_1-3 + 530, 1, 47.4, 505.3 , 0 );
setMoveKey( spep_1-3 + 532, 1, 47.5, 505.5 , 0 );
setMoveKey( spep_1-3 + 534, 1, 47.6, 505.7 , 0 );
setMoveKey( spep_1-3 + 536, 1, 47.7, 506 , 0 );
setMoveKey( spep_1-3 + 538, 1, 47.8, 506.2 , 0 );
setMoveKey( spep_1-3 + 540, 1, 47.9, 506.3 , 0 );
setMoveKey( spep_1-3 + 542, 1, 47.9, 506.5 , 0 );
setMoveKey( spep_1-3 + 544, 1, 48, 506.7 , 0 );
setMoveKey( spep_1-3 + 546, 1, 48.1, 506.8 , 0 );
setMoveKey( spep_1-3 + 548, 1, 48.1, 507 , 0 );
setMoveKey( spep_1-3 + 550, 1, 48.2, 507.1 , 0 );
setMoveKey( spep_1-3 + 552, 1, 48.3, 507.3 , 0 );
setMoveKey( spep_1-3 + 554, 1, 48.3, 507.4 , 0 );
setMoveKey( spep_1-3 + 556, 1, 48.4, 507.5 , 0 );
setMoveKey( spep_1-3 + 558, 1, 48.4, 507.6 , 0 );
setMoveKey( spep_1-3 + 560, 1, 48.5, 507.7 , 0 );
setMoveKey( spep_1-3 + 562, 1, 48.5, 507.7 , 0 );
setMoveKey( spep_1-3 + 564, 1, 48.5, 507.8 , 0 );
setMoveKey( spep_1-3 + 566, 1, 48.5, 507.9 , 0 );
setMoveKey( spep_1-3 + 568, 1, 48.6, 507.9 , 0 );
setMoveKey( spep_1-3 + 570, 1, 48.6, 507.9 , 0 );
setMoveKey( spep_1-1 + 578, 1, 48.6, 508 , 0 );

setScaleKey( spep_1-3 + 518, 1, 0.11, 0.11 );
setScaleKey( spep_1-3 + 522, 1, 0.11, 0.11 );
setScaleKey( spep_1-3 + 524, 1, 0.1, 0.1 );
setScaleKey( spep_1-3 + 534, 1, 0.1, 0.1 );
setScaleKey( spep_1-3 + 536, 1, 0.09, 0.09 );
setScaleKey( spep_1-3 + 552, 1, 0.09, 0.09 );
setScaleKey( spep_1-1 + 578, 1, 0.08, 0.08 );

setRotateKey( spep_1-3 + 518, 1, 0 );
setRotateKey( spep_1-1 + 578, 1, 0 );

--敵の動き
setDisp( spep_1-3 + 642, 1, 1);
setDisp( spep_1-1 + 712, 1, 0);

setBlendColor(spep_1-3 + 642 ,1 ,3 ,0.15 ,0.61 ,1 ,0.41 );
setBlendColor(spep_1 + 712 ,1 ,3 ,0.15 ,0.61 ,1 ,0.41 );
setBlendColor(spep_1 + 716 ,1 ,3 ,0.15 ,0.61 ,1 ,0 );

changeAnime( spep_1-3 + 642, 1, 107);

setMoveKey( spep_1-3 + 642, 1, 1403.2, -2176.7 , 0 );
setMoveKey( spep_1-3 + 644, 1, 1402.2, -2175.1 , 0 );
setMoveKey( spep_1-3 + 646, 1, 1399.1, -2170.3 , 0 );
setMoveKey( spep_1-3 + 648, 1, 1393.9, -2162.3 , 0 );
setMoveKey( spep_1-3 + 650, 1, 1386.7, -2151.1 , 0 );
setMoveKey( spep_1-3 + 652, 1, 1377.4, -2136.8 , 0 );
setMoveKey( spep_1-3 + 654, 1, 1366.1, -2119.2 , 0 );
setMoveKey( spep_1-3 + 656, 1, 1352.6, -2098.4 , 0 );
setMoveKey( spep_1-3 + 658, 1, 1337.2, -2074.4 , 0 );
setMoveKey( spep_1-3 + 660, 1, 1319.6, -2047.2 , 0 );
setMoveKey( spep_1-3 + 662, 1, 1300, -2016.9 , 0 );
setMoveKey( spep_1-3 + 664, 1, 1278.3, -1983.3 , 0 );
setMoveKey( spep_1-3 + 666, 1, 1254.6, -1946.5 , 0 );
setMoveKey( spep_1-3 + 668, 1, 1228.8, -1906.5 , 0 );
setMoveKey( spep_1-3 + 670, 1, 1200.9, -1863.4 , 0 );
setMoveKey( spep_1-3 + 672, 1, 1171, -1817 , 0 );
setMoveKey( spep_1-3 + 674, 1, 1139, -1767.5 , 0 );
setMoveKey( spep_1-3 + 676, 1, 1105, -1714.7 , 0 );
setMoveKey( spep_1-3 + 678, 1, 1068.8, -1658.8 , 0 );
setMoveKey( spep_1-3 + 680, 1, 1030.7, -1599.6 , 0 );
setMoveKey( spep_1-3 + 682, 1, 990.4, -1537.3 , 0 );
setMoveKey( spep_1-3 + 684, 1, 948.1, -1471.7 , 0 );
setMoveKey( spep_1-3 + 686, 1, 903.7, -1403 , 0 );
setMoveKey( spep_1-3 + 688, 1, 857.3, -1331.1 , 0 );
setMoveKey( spep_1-3 + 690, 1, 808.8, -1256 , 0 );
setMoveKey( spep_1-3 + 692, 1, 758.3, -1177.7 , 0 );
setMoveKey( spep_1-3 + 694, 1, 705.6, -1096.1 , 0 );
setMoveKey( spep_1-3 + 696, 1, 651, -1011.4 , 0 );
setMoveKey( spep_1-3 + 698, 1, 594.2, -923.5 , 0 );
setMoveKey( spep_1-3 + 700, 1, 535.4, -832.4 , 0 );
setMoveKey( spep_1-3 + 702, 1, 474.5, -738.1 , 0 );
setMoveKey( spep_1-3 + 704, 1, 411.6, -640.7 , 0 );
setMoveKey( spep_1-3 + 706, 1, 346.6, -540 , 0 );
setMoveKey( spep_1-3 + 708, 1, 279.6, -436.1 , 0 );
setMoveKey( spep_1-3 + 710, 1, 210.4, -329.1 , 0 );
setMoveKey( spep_1-1 + 712, 1, 139.3, -218.8 , 0 );

setScaleKey( spep_1-3 + 642, 1, 5.49, 5.49 );
setScaleKey( spep_1-3 + 644, 1, 5.49, 5.49 );
setScaleKey( spep_1-3 + 646, 1, 5.48, 5.48 );
setScaleKey( spep_1-3 + 648, 1, 5.46, 5.46 );
setScaleKey( spep_1-3 + 650, 1, 5.43, 5.43 );
setScaleKey( spep_1-3 + 652, 1, 5.4, 5.4 );
setScaleKey( spep_1-3 + 654, 1, 5.36, 5.36 );
setScaleKey( spep_1-3 + 656, 1, 5.31, 5.31 );
setScaleKey( spep_1-3 + 658, 1, 5.26, 5.26 );
setScaleKey( spep_1-3 + 660, 1, 5.2, 5.2 );
setScaleKey( spep_1-3 + 662, 1, 5.13, 5.13 );
setScaleKey( spep_1-3 + 664, 1, 5.05, 5.05 );
setScaleKey( spep_1-3 + 666, 1, 4.96, 4.96 );
setScaleKey( spep_1-3 + 668, 1, 4.87, 4.87 );
setScaleKey( spep_1-3 + 670, 1, 4.77, 4.77 );
setScaleKey( spep_1-3 + 672, 1, 4.67, 4.67 );
setScaleKey( spep_1-3 + 674, 1, 4.55, 4.55 );
setScaleKey( spep_1-3 + 676, 1, 4.43, 4.43 );
setScaleKey( spep_1-3 + 678, 1, 4.3, 4.3 );
setScaleKey( spep_1-3 + 680, 1, 4.17, 4.17 );
setScaleKey( spep_1-3 + 682, 1, 4.03, 4.03 );
setScaleKey( spep_1-3 + 684, 1, 3.88, 3.88 );
setScaleKey( spep_1-3 + 686, 1, 3.72, 3.72 );
setScaleKey( spep_1-3 + 688, 1, 3.55, 3.55 );
setScaleKey( spep_1-3 + 690, 1, 3.38, 3.38 );
setScaleKey( spep_1-3 + 692, 1, 3.2, 3.2 );
setScaleKey( spep_1-3 + 694, 1, 3.01, 3.01 );
setScaleKey( spep_1-3 + 696, 1, 2.82, 2.82 );
setScaleKey( spep_1-3 + 698, 1, 2.62, 2.62 );
setScaleKey( spep_1-3 + 700, 1, 2.41, 2.41 );
setScaleKey( spep_1-3 + 702, 1, 2.19, 2.19 );
setScaleKey( spep_1-3 + 704, 1, 1.97, 1.97 );
setScaleKey( spep_1-3 + 706, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 708, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 710, 1, 1.25, 1.25 );
setScaleKey( spep_1-1 + 712, 1, 1, 1 );

setRotateKey( spep_1-3 + 642, 1, 14.8 );
setRotateKey( spep_1-1 + 712, 1, 14.8 );

--SE
--悟空向かってくる
SE004 = playSeVer2( spep_1 + 0, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 0, 9, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 0, 1314, "",spep_1 + 70, 0, 2, -1);

--振りかぶる(なってない？)
SE007 = playSeVer2( spep_1 + 44, 1116, "",spep_1 + 74, 0, 10, -1);

--パンチ
SE008 = playSeVer2( spep_1 + 68, 1009, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 68, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 68, SE009, 76 );
SE010 = playSeVer2( spep_1 + 70, 1110, "", 0, 0, 0, -1);

--敵掴む
SE011 = playSeVer2( spep_1 + 128, 1007, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 130, 1006, "", 0, 0, 0, -1);

--敵くるくる回す
SE013 = playSeVer2( spep_1 + 144, 1278, "",spep_1 + 330, 0, 90, -1);
setSeVolumeByWorkId( spep_1 + 144, SE013, 72 );
SE014 = playSeVer2( spep_1 + 144, 1116, "",spep_1 + 190, 0, 26, -1);
SE015 = playSeVer2( spep_1 + 144, 1117, "",spep_1 + 182, 0, 22, -1);
SE016 = playSeVer2( spep_1 + 186, 1116, "",spep_1 + 228, 0, 20, -1);
SE017 = playSeVer2( spep_1 + 186, 1117, "",spep_1 + 224, 0, 22, -1);
SE018 = playSeVer2( spep_1 + 220, 1116, "",spep_1 + 264, 0, 22, -1);
SE019 = playSeVer2( spep_1 + 220, 1117, "",spep_1 + 258, 0, 22, -1);
SE020 = playSeVer2( spep_1 + 244, 1116, "",spep_1 + 284, 0, 20, -1);
SE021 = playSeVer2( spep_1 + 244, 1117, "",spep_1 + 282, 0, 22, -1);
SE022 = playSeVer2( spep_1 + 252, 1072, "", 0, 0, 0, -1);
setTimeStretch( SE022, 1.11, 30, 4 );
SE023 = playSeVer2( spep_1 + 274, 1116, "",spep_1 + 314, 0, 18, -1);
SE024 = playSeVer2( spep_1 + 274, 1117, "",spep_1 + 314, 0, 22, -1);

--気合いれ
SE025 = playSeVer2( spep_1 + 302, 1035, "", 0, 0, 0, -1);

--敵飛ばし
SE026 = playSeVer2( spep_1 + 312, 1027, "", 0, 0, 0, -1);

--敵飛んでいく(なってない？)
SE027 = playSeVer2( spep_1 + 322, 1183, "",spep_1 + 434, 0, 48, -1);

--構える
SE028 = playSeVer2( spep_1 + 400, 1233, "", 0, 2, 0, -1);
setStartTimeMs( SE028,  133 );
SE029 = playSeVer2( spep_1 + 400, 1006, "", 0, 0, 0, -1);
setPitch( spep_1 + 400, SE029, -400 );
setTimeStretch( SE029, 0.73, 30, 4 );

--環境音
SE030 = playSeVer2( spep_1 + 416, 1175, "",spep_1 + 628, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 416, SE030, 35 );

--オーラ
SE031 = playSeVer2( spep_1 + 416, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 416, SE031, 79 );
SE032 = playSeVer2( spep_1 + 440, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 440, SE032, 79 );

--かめはめ波溜め
SE033 = playSeVer2( spep_1 + 548, 1210, "",spep_1 + 628, 10, 16, -1);
setStartTimeMs( SE033,  1550 );

--オーラ
SE034 = playSeVer2( spep_1 + 464, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 464, SE034, 79 );

--画面遷移
SE035 = playSeVer2( spep_1 + 464, 1232, "", 0, 0, 0, -1);

--オーラ
SE036 = playSeVer2( spep_1 + 488, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 488, SE036, 79 );

--画面遷移
SE037 = playSeVer2( spep_1 + 508, 8, "", 0, 0, 0, -1);
setPitch( spep_1 + 508, SE037, -500 );
setTimeStretch( SE037, 0.67, 30, 4 );

--オーラ
SE038 = playSeVer2( spep_1 + 512, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 512, SE038, 79 );
SE039 = playSeVer2( spep_1 + 536, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 536, SE039, 79 );

--かめはめ波溜め
SE040 = playSeVer2( spep_1 + 544, 1209, "", 0, 0, 0, -1);

--オーラ
SE041 = playSeVer2( spep_1 + 560, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 560, SE041, 79 );
SE042 = playSeVer2( spep_1 + 584, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 584, SE042, 79 );

--かめはめ波発射
SE043 = playSeVer2( spep_1 + 610, 1258, "",spep_1 + 722, 0, 4, -1);
setSeVolumeByWorkId( spep_1 + 610, SE043, 77 );
SE044 = playSeVer2( spep_1 + 614, 1133, "",spep_1 + 722, 0, 4, -1);
SE045 = playSeVer2( spep_1 + 614, 1022, "",spep_1 + 722, 0, 4, -1);

--かめはめ波飛んでいく
SE046 = playSeVer2( spep_1 + 650, 1284, "",spep_1 + 722, 0, 4, -1);
setSeVolumeByWorkId( spep_1 + 650, SE046, 78 );
SE047 = playSeVer2( spep_1 + 650, 1213, "",spep_1 + 722, 0, 4, -1);
setSeVolumeByWorkId( spep_1 + 650, SE047, 72 );

--白フェード
entryFade( spep_1 + 706, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 714, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_2=spep_1+714;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_2 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 94; 
------------------------------------------------------
--かめはめ波縦〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 306, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 306, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 306, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 306, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 306, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 306, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 306, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 306, finish_b, 255 );

-- ** エフェクト等 ** --
KO = entryEffectLife( spep_3 + 294, SP_06,72,0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 294, KO, 0, 0, 0 );
setEffMoveKey( spep_3 + 366, KO, 0, 0, 0 );
setEffScaleKey( spep_3 + 294, KO, 1.0, 1.0 );
setEffScaleKey( spep_3 + 366, KO, 1.0, 1.0 );
setEffRotateKey( spep_3 + 294, KO, 0 );
setEffRotateKey( spep_3 + 366, KO, 0 );
setEffAlphaKey( spep_3 + 294, KO, 255 );
setEffAlphaKey( spep_3 + 366, KO, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1);
setDisp( spep_3-1 + 38, 1, 0);
changeAnime( spep_3 + 0, 1, 105);

setBlendColor(spep_3 + 0 ,1 ,3 ,0.06 ,0.53 ,0.99 ,0.5 );
setBlendColor(spep_3 + 38 ,1 ,3 ,0.06 ,0.53 ,0.99 ,0.5 );
setBlendColor(spep_3 + 40 ,1 ,3 ,0.06 ,0.53 ,0.99 ,0 );

setMoveKey( spep_3 + 0, 1, 39.2, 532.3 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 39.7, 528 , 0 );
setMoveKey( spep_3-3 + 4, 1, 40.3, 523.8 , 0 );
setMoveKey( spep_3-3 + 6, 1, 40.9, 519.5 , 0 );
setMoveKey( spep_3-3 + 8, 1, 41.5, 515.3 , 0 );
setMoveKey( spep_3-3 + 10, 1, 42.1, 511 , 0 );
setMoveKey( spep_3-3 + 12, 1, 42.7, 506.7 , 0 );
setMoveKey( spep_3-3 + 14, 1, 43.2, 502.5 , 0 );
setMoveKey( spep_3-3 + 16, 1, 43.8, 498.2 , 0 );
setMoveKey( spep_3-3 + 18, 1, 44.4, 494 , 0 );
setMoveKey( spep_3-3 + 20, 1, 45, 489.7 , 0 );
setMoveKey( spep_3-3 + 22, 1, 45.6, 485.4 , 0 );
setMoveKey( spep_3-3 + 24, 1, 46.2, 481.2 , 0 );
setMoveKey( spep_3-3 + 26, 1, 46.8, 476.9 , 0 );
setMoveKey( spep_3-3 + 28, 1, 47.3, 472.7 , 0 );
setMoveKey( spep_3-3 + 30, 1, 47.9, 468.4 , 0 );
setMoveKey( spep_3-3 + 32, 1, 48.5, 464.1 , 0 );
setMoveKey( spep_3-3 + 34, 1, 49.1, 459.9 , 0 );
setMoveKey( spep_3-3 + 36, 1, 49.7, 455.6 , 0 );
setMoveKey( spep_3-1 + 38, 1, 50.3, 451.3 , 0 );

setScaleKey( spep_3 + 0, 1, 0.15, 0.15 );
--setScaleKey( spep_3-3 + 2, 1, 0.15, 0.15 );
setScaleKey( spep_3-3 + 4, 1, 0.14, 0.14 );
setScaleKey( spep_3-3 + 10, 1, 0.14, 0.14 );
setScaleKey( spep_3-3 + 12, 1, 0.13, 0.13 );
setScaleKey( spep_3-3 + 18, 1, 0.13, 0.13 );
setScaleKey( spep_3-3 + 20, 1, 0.12, 0.12 );
setScaleKey( spep_3-3 + 26, 1, 0.12, 0.12 );
setScaleKey( spep_3-3 + 28, 1, 0.11, 0.11 );
setScaleKey( spep_3-3 + 34, 1, 0.11, 0.11 );
setScaleKey( spep_3-1 + 38, 1, 0.1, 0.1 );

setRotateKey( spep_3 + 0, 1, 15 );
setRotateKey( spep_3-1 + 38, 1, 15 );

--敵の動き
setDisp( spep_3-3 + 96, 1, 1);
setDisp( spep_3-1 + 112, 1, 0);
changeAnime( spep_3-3 + 96, 1, 106);

setBlendColor(spep_3-3 + 96 ,1 ,3 ,0.06 ,0.53 ,0.99 ,0.5 );
setBlendColor(spep_3 + 112 ,1 ,3 ,0.06 ,0.53 ,0.99 ,0.5 );
setBlendColor(spep_3 + 114 ,1 ,3 ,0.06 ,0.53 ,0.99 ,0 );

setMoveKey( spep_3-3 + 96, 1, -5.1, 39.9 , 0 );
setMoveKey( spep_3-3 + 100, 1, 34.4, 62 , 0 );
setMoveKey( spep_3-3 + 102, 1, 66.8, 80.1 , 0 );
setMoveKey( spep_3-3 + 104, 1, 92, 94.2 , 0 );
setMoveKey( spep_3-3 + 106, 1, 110, 104.3 , 0 );
setMoveKey( spep_3-3 + 108, 1, 120.8, 110.3 , 0 );
setMoveKey( spep_3-1 + 112, 1, 124.4, 112.3 , 0 );

setScaleKey( spep_3-3 + 96, 1, 0.75, 0.75 );
setScaleKey( spep_3-3 + 100, 1, 0.67, 0.67 );
setScaleKey( spep_3-3 + 102, 1, 0.61, 0.61 );
setScaleKey( spep_3-3 + 104, 1, 0.56, 0.56 );
setScaleKey( spep_3-3 + 106, 1, 0.53, 0.53 );
setScaleKey( spep_3-3 + 108, 1, 0.51, 0.51 );
setScaleKey( spep_3-1 + 112, 1, 0.5, 0.5 );

setRotateKey( spep_3-3 + 96, 1, -4 );
setRotateKey( spep_3-1 + 112, 1, -4 );

--SE
SE049 = playSeVer2( spep_3 + 0, 1146, "",spep_3 + 150, 0, 22, -1);
SE050 = playSeVer2( spep_3 + 0, 1211, "",spep_3 + 142, 0, 16, -1);
SE051 = playSeVer2( spep_3 + 0, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE051, 85 );
SE052 = playSeVer2( spep_3 + 0, 1177, "",spep_3 + 142, 0, 10, -1);
SE053 = playSeVer2( spep_3 + 0, 1193, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_3 + 0, 1223, "",spep_3 + 150, 0, 20, -1);

--悟空アップ
SE055 = playSeVer2( spep_3 + 38, 1161, "",spep_3 + 128, 0, 14, -1);

--敵ヒット
SE056 = playSeVer2( spep_3 + 118, 1159, "",spep_3 + 304, 0, 98, -1);
SE057 = playSeVer2( spep_3 + 118, 1024, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_3 + 118, 1343, "",spep_3 + 322, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 118, SE058, 85 );

--かめはめ波飛んでいく
SE059 = playSeVer2( spep_3 + 146, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 146, SE059, 184 );
SE060 = playSeVer2( spep_3 + 146, 1215, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 146, SE060, 135 );

--かめはめ波宇宙横切る
SE061 = playSeVer2( spep_3 + 224, 1213, "", 0, 28, 0, 0.6);
setStartTimeMs( SE061,  400 );
SE062 = playSeVer2( spep_3 + 232, 1211, "", 0, 28, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 232, SE062, 562 );
setStartTimeMs( SE062,  417 );
SE063 = playSeVer2( spep_3 + 216, 1157, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_3 + 256, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 256, SE064, 188 );

--終わり
hideKoScreen();
dealDamage(spep_3+194);
entryFade( spep_3 +292, 2,  4, 2, 255, 255, 255, 255);             -- black fade
endPhase( spep_3 + 296 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--悟空構え
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
ready = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, ready, 0, 0, 0 );
setEffMoveKey( spep_0 + 90, ready, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ready, -1.0, 1.0 );
setEffScaleKey( spep_0 + 90, ready, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ready, 0 );
setEffRotateKey( spep_0 + 90, ready, 0 );
setEffAlphaKey( spep_0 + 0, ready, 255 );
setEffAlphaKey( spep_0 + 88, ready, 255 );
setEffAlphaKey( spep_0 + 89, ready, 255 );
setEffAlphaKey( spep_0 + 90, ready, 0 );

--SE
--構える
SE001 = playSeVer2( spep_0 + 4, 1233, "", 0, 0, 0, -1);
setPitch( spep_0 + 4, SE001, -600 );
setTimeStretch( SE001, 0.6, 30, 4 );

--構える
SE003 = playSeVer2( spep_0 + 20, 1006, "", 0, 0, 0, -1);
setPitch( spep_0 + 20, SE003, -600 );
setTimeStretch( SE003, 0.6, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 90, 0, 0, 0, 0, 255);       -- ベース暗め　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    
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
spep_x=spep_0 +4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 50, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  50,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  50,  515);

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
--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--次の準備
spep_1=spep_0+90;
------------------------------------------------------
--突進〜かめはめ波俯瞰
------------------------------------------------------
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 714, tame_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 714, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame_f, 0 );
setEffRotateKey( spep_1 + 714, tame_f, 0 );
setEffAlphaKey( spep_1 + 0, tame_f, 255 );
setEffAlphaKey( spep_1 + 714, tame_f, 255 );
setEffAlphaKey( spep_1 + 715, tame_f, 0 );
setEffAlphaKey( spep_1 + 716, tame_f, 0 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 714, tame_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 714, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame_b, 0 );
setEffRotateKey( spep_1 + 714, tame_b, 0 );
setEffAlphaKey( spep_1 + 0, tame_b, 255 );
setEffAlphaKey( spep_1 + 714, tame_b, 255 );
setEffAlphaKey( spep_1 + 715, tame_b, 0 );
setEffAlphaKey( spep_1 + 716, tame_b, 0 );

--敵の動き(飛んでからグルグル)
setDisp( spep_1-3 + 70, 1, 1);
setDisp( spep_1-1 + 274, 1, 0);

changeAnime( spep_1-3 + 70, 1, 107);--飛ぶ
changeAnime( spep_1-3 + 120, 1, 6);--キャッチ
changeAnime( spep_1-3 + 144, 1, 7);--グルグル
changeAnime( spep_1-3 + 152, 1, 107);
changeAnime( spep_1-3 + 156, 1, 106);
changeAnime( spep_1-3 + 162, 1, 5);
changeAnime( spep_1-3 + 176, 1, 6);
changeAnime( spep_1-3 + 186, 1, 7);
changeAnime( spep_1-3 + 194, 1, 107);
changeAnime( spep_1-3 + 198, 1, 106);
changeAnime( spep_1-3 + 204, 1, 5);
changeAnime( spep_1-3 + 214, 1, 6);
changeAnime( spep_1-3 + 220, 1, 7);
changeAnime( spep_1-3 + 228, 1, 107);
changeAnime( spep_1-3 + 230, 1, 106);
changeAnime( spep_1-3 + 234, 1, 5);
changeAnime( spep_1-3 + 240, 1, 6);
changeAnime( spep_1-3 + 246, 1, 7);
changeAnime( spep_1-3 + 250, 1, 107);
changeAnime( spep_1-3 + 252, 1, 106);
changeAnime( spep_1-3 + 254, 1, 5);
changeAnime( spep_1-3 + 262, 1, 6);


d=100;
e=280;

setMoveKey( spep_1-3 + 70, 1, -193.1, -214.2+e , 0 );
setMoveKey( spep_1-3 + 72, 1, -193.1, -204.2+e , 0 );
setMoveKey( spep_1-3 + 74, 1, -193.1, -204.2+e , 0 );
setMoveKey( spep_1-3 + 75, 1, -193.1, -204.2+e , 0 );
setMoveKey( spep_1-3 + 76, 1, 149, 24+d , 0 );
setMoveKey( spep_1-3 + 78, 1, 149, 44+d , 0 );
setMoveKey( spep_1-3 + 79, 1, 149, 44+d , 0 );
setMoveKey( spep_1-3 + 80, 1, -193.1, -214.2+e , 0 );
setMoveKey( spep_1-3 + 82, 1, -193.1, -214.2+e , 0 );
setMoveKey( spep_1-3 + 83, 1, -193.1, -214.2+e , 0 );
setMoveKey( spep_1-3 + 84, 1, 149, 24+d , 0 );
setMoveKey( spep_1-3 + 86, 1, 149, 24+d , 0 );
setMoveKey( spep_1-3 + 88, 1, 149, 44+d , 0 );
setMoveKey( spep_1-3 + 89, 1, 149, 44+d , 0 );
setMoveKey( spep_1-3 + 90, 1, -193.1, -214.2+e , 0 );
setMoveKey( spep_1-3 + 92, 1, -193.1, -214.2+e , 0 );
setMoveKey( spep_1-3 + 93, 1, -193.1, -214.2+e , 0 );
setMoveKey( spep_1-3 + 94, 1, 149, 24+d , 0 );
setMoveKey( spep_1-3 + 96, 1, 149, 24+d , 0 );
setMoveKey( spep_1-3 + 98, 1, 149, 44+d , 0 );
setMoveKey( spep_1-3 + 99, 1, 149, 44+d , 0 );
setMoveKey( spep_1-3 + 100, 1, -193.1, -214.2+e , 0 );
setMoveKey( spep_1-3 + 102, 1, -193.1, -204.2+e , 0 );
setMoveKey( spep_1-3 + 104, 1, -193.1, -204.2+e , 0 );
setMoveKey( spep_1-3 + 105, 1, -193.1, -204.2+e , 0 );
setMoveKey( spep_1-3 + 106, 1, 149, 24+d , 0 );
setMoveKey( spep_1-3 + 108, 1, 149, 44+d , 0 );
setMoveKey( spep_1-3 + 110, 1, 149, 24+d , 0 );
setMoveKey( spep_1-3 + 116, 1, 149, 24+d , 0 );
setMoveKey( spep_1-3 + 118, 1, 149, 44+d , 0 );
setMoveKey( spep_1-3 + 119, 1, 149, 44+d , 0 );

a=-260;
c=-130;

setMoveKey( spep_1-3 + 120, 1, -1017.6-a, -392.1+c , 0 );
setMoveKey( spep_1-3 + 124, 1, -1017.6-a, -392.1+c , 0 );
setMoveKey( spep_1-3 + 126, 1, -1053.3-a, 207.2+c , 0 );
setMoveKey( spep_1-3 + 128, 1, -1053.3-a, 207.2+c , 0 );
setMoveKey( spep_1-3 + 130, 1, -846.6-a, 554.8+c , 0 );
setMoveKey( spep_1-3 + 134, 1, -846.6-a, 554.8+c , 0 );
setMoveKey( spep_1-3 + 136, 1, -812.4-a, 583.4+c , 0 );
setMoveKey( spep_1-3 + 143, 1, -812.4-a, 583.4+c , 0 );

--1周目
setMoveKey( spep_1-3 + 144, 1, -245.7, -301.2 , 0 );
setMoveKey( spep_1-3 + 151, 1, -245.7, -301.2 , 0 );

setMoveKey( spep_1-3 + 152, 1, 360.2, -135.1 , 0 );
setMoveKey( spep_1-3 + 155, 1, 360.2, -135.1 , 0 );

setMoveKey( spep_1-3 + 156, 1, 320.3, -15.7 , 0 );
setMoveKey( spep_1-3 + 161, 1, 320.3, -15.7 , 0 );

setMoveKey( spep_1-3 + 162, 1, 150.6, 141.6 , 0 );
setMoveKey( spep_1-3 + 169, 1, 150.6, 141.6 , 0 );
setMoveKey( spep_1-3 + 170, 1, -25.6, 235.6 , 0 );
setMoveKey( spep_1-3 + 175, 1, -25.6, 235.6 , 0 );

setMoveKey( spep_1-3 + 176, 1, -356.1, 133.4 , 0 );
setMoveKey( spep_1-3 + 181, 1, -356.1, 133.4 , 0 );
setMoveKey( spep_1-3 + 182, 1, -471.8, 24.4 , 0 );
setMoveKey( spep_1-3 + 185, 1, -471.8, 24.4 , 0 );

setMoveKey( spep_1-3 + 186, 1, -412.6, -203.3 , 0 );
setMoveKey( spep_1-3 + 189, 1, -412.6, -203.3 , 0 );

--2周目
setMoveKey( spep_1-3 + 190, 1, -245.7, -301.2 , 0 );
setMoveKey( spep_1-3 + 193, 1, -245.7, -301.2 , 0 );

setMoveKey( spep_1-3 + 194, 1, 360.2, -135.1 , 0 );
setMoveKey( spep_1-3 + 197, 1, 360.2, -135.1 , 0 );

setMoveKey( spep_1-3 + 198, 1, 320.3, -15.7 , 0 );
setMoveKey( spep_1-3 + 203, 1, 320.3, -15.7 , 0 );

setMoveKey( spep_1-3 + 204, 1, 150.6, 141.6 , 0 );
setMoveKey( spep_1-3 + 209, 1, 150.6, 141.6 , 0 );
setMoveKey( spep_1-3 + 210, 1, -25.6, 235.6 , 0 );
setMoveKey( spep_1-3 + 213, 1, -25.6, 235.6 , 0 );

setMoveKey( spep_1-3 + 214, 1, -356.1, 133.4 , 0 );
setMoveKey( spep_1-3 + 217, 1, -356.1, 133.4 , 0 );
setMoveKey( spep_1-3 + 218, 1, -471.8, 24.4 , 0 );
setMoveKey( spep_1-3 + 219, 1, -471.8, 24.4 , 0 );

setMoveKey( spep_1-3 + 220, 1, -412.6, -203.3 , 0 );
setMoveKey( spep_1-3 + 223, 1, -412.6, -203.3 , 0 );

--3周目
setMoveKey( spep_1-3 + 224, 1, -245.7, -301.2 , 0 );
setMoveKey( spep_1-3 + 227, 1, -245.7, -301.2 , 0 );

setMoveKey( spep_1-3 + 228, 1, 360.2, -135.1 , 0 );
setMoveKey( spep_1-3 + 229, 1, 360.2, -135.1 , 0 );

setMoveKey( spep_1-3 + 230, 1, 320.3, -15.7 , 0 );
setMoveKey( spep_1-3 + 233, 1, 320.3, -15.7 , 0 );

setMoveKey( spep_1-3 + 234, 1, 150.6, 141.6 , 0 );
setMoveKey( spep_1-3 + 237, 1, 150.6, 141.6 , 0 );
setMoveKey( spep_1-3 + 238, 1, -25.6, 235.6 , 0 );
setMoveKey( spep_1-3 + 239, 1, -25.6, 235.6 , 0 );

setMoveKey( spep_1-3 + 240, 1, -356.1, 133.4  , 0 );
setMoveKey( spep_1-3 + 243, 1, -356.1, 133.4  , 0 );
setMoveKey( spep_1-3 + 244, 1, -471.8, 24.4 , 0 );
setMoveKey( spep_1-3 + 245, 1, -471.8, 24.4 , 0 );

setMoveKey( spep_1-3 + 246, 1, -412.6, -203.3 , 0 );
setMoveKey( spep_1-3 + 247, 1, -412.6, -203.3 , 0 );

--4周目
setMoveKey( spep_1-3 + 248, 1, -245.7, -301.2 , 0 );
setMoveKey( spep_1-3 + 249, 1, -245.7, -301.2 , 0 );

setMoveKey( spep_1-3 + 250, 1, 360.2, -135.1 , 0 );
setMoveKey( spep_1-3 + 251, 1, 360.2, -135.1 , 0 );

setMoveKey( spep_1-3 + 252, 1, 475.3, -15.7 , 0 );
setMoveKey( spep_1-3 + 253, 1, 475.3, -15.7 , 0 );

setMoveKey( spep_1-3 + 254, 1, 150.6, 141.6 , 0 );
setMoveKey( spep_1-3 + 256, 1, 150.6, 141.6 , 0 );
setMoveKey( spep_1-3 + 257, 1, 150.6, 141.6 , 0 );
setMoveKey( spep_1-3 + 258, 1, -25.6, 235.6 , 0 );
setMoveKey( spep_1-3 + 261, 1, -25.6, 235.6 , 0 );

setMoveKey( spep_1-3 + 262, 1, -356.1, 133.4 , 0 );
setMoveKey( spep_1-3 + 263, 1, -356.1, 133.4 , 0 );

setMoveKey( spep_1-3 + 264, 1, -1199.4, -39.8 , 0 );
setMoveKey( spep_1-3 + 266, 1, -1292, -155.1 , 0 );
setMoveKey( spep_1-3 + 268, 1, -1364.1, -244.8 , 0 );
setMoveKey( spep_1-3 + 270, 1, -1415.5, -308.8 , 0 );
setMoveKey( spep_1-3 + 272, 1, -1446.4, -347.2 , 0 );
setMoveKey( spep_1-1 + 274, 1, -1456.7, -360.1 , 0 );


setScaleKey( spep_1-3 + 70, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 74, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 75, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 76, 1, 1.65,1.65);
setScaleKey( spep_1-3 + 78, 1, 1.65,1.65);
setScaleKey( spep_1-3 + 79, 1, 1.65,1.65);
setScaleKey( spep_1-3 + 80, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 82, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 83, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 84, 1, 1.65,1.65);
setScaleKey( spep_1-3 + 88, 1, 1.65,1.65);
setScaleKey( spep_1-3 + 89, 1, 1.65,1.65);
setScaleKey( spep_1-3 + 90, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 92, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 93, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 94, 1, 1.65,1.65);
setScaleKey( spep_1-3 + 98, 1, 1.65,1.65);
setScaleKey( spep_1-3 + 99, 1, 1.65,1.65);
setScaleKey( spep_1-3 + 100, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 104, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 105, 1, 3.83,3.83);
setScaleKey( spep_1-3 + 106, 1, 1.65,1.65);
setScaleKey( spep_1-3 + 119, 1, 1.65,1.65);

setScaleKey( spep_1-3 + 120, 1, 9, 9 );
setScaleKey( spep_1-3 + 124, 1, 9, 9 );
setScaleKey( spep_1-3 + 126, 1, 8.99, 8.99 );
setScaleKey( spep_1-3 + 134, 1, 8.99, 8.99 );
setScaleKey( spep_1-3 + 136, 1, 8.98, 8.98 );
setScaleKey( spep_1-3 + 143, 1, 8.98, 8.98 );

setScaleKey( spep_1-3 + 144, 1, 2.1,2.1);
setScaleKey( spep_1-3 + 151, 1, 2.1,2.1);

setScaleKey( spep_1-3 + 152, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 155, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 156, 1, 3.15,3.15);
setScaleKey( spep_1-3 + 161, 1, 3.15,3.15);

setScaleKey( spep_1-3 + 162, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 174, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 162, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 175, 1, 1.68,1.68);

setScaleKey( spep_1-3 + 176, 1, 2.62,2.62);
setScaleKey( spep_1-3 + 181, 1, 2.62,2.62);
setScaleKey( spep_1-3 + 182, 1, 3.15,3.15);
setScaleKey( spep_1-3 + 185, 1, 3.15,3.15);

setScaleKey( spep_1-3 + 186, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 189, 1, 1.68,1.68);

setScaleKey( spep_1-3 + 190, 1, 2.1,2.1);
setScaleKey( spep_1-3 + 193, 1, 2.1,2.1);

setScaleKey( spep_1-3 + 194, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 197, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 198, 1, 3.15,3.15);
setScaleKey( spep_1-3 + 203, 1, 3.15,3.15);

setScaleKey( spep_1-3 + 204, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 213, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 214, 1, 2.62,2.62);
setScaleKey( spep_1-3 + 217, 1, 2.62,2.62);

setScaleKey( spep_1-3 + 218, 1, 3.15,3.15);
setScaleKey( spep_1-3 + 219, 1, 3.15,3.15);
setScaleKey( spep_1-3 + 220, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 223, 1, 1.68,1.68);

setScaleKey( spep_1-3 + 224, 1, 2.1,2.1);
setScaleKey( spep_1-3 + 227, 1, 2.1,2.1);

setScaleKey( spep_1-3 + 228, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 229, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 230, 1, 3.15,3.15);
setScaleKey( spep_1-3 + 233, 1, 3.15,3.15);

setScaleKey( spep_1-3 + 234, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 239, 1, 1.68,1.68);

setScaleKey( spep_1-3 + 240, 1, 2.62,2.62);
setScaleKey( spep_1-3 + 243, 1, 2.62,2.62);

setScaleKey( spep_1-3 + 244, 1, 3.15,3.15);
setScaleKey( spep_1-3 + 245, 1, 3.15,3.15);

setScaleKey( spep_1-3 + 246, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 247, 1, 1.68,1.68);

setScaleKey( spep_1-3 + 248, 1, 2.1,2.1);
setScaleKey( spep_1-3 + 249, 1, 2.1,2.1);

setScaleKey( spep_1-3 + 250, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 251, 1, 1.68,1.68);

setScaleKey( spep_1-3 + 252, 1, 3.15,3.15);
setScaleKey( spep_1-3 + 253, 1, 3.15,3.15);

setScaleKey( spep_1-3 + 254, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 261, 1, 1.68,1.68);
setScaleKey( spep_1-3 + 262, 1, 2.62,2.62);
setScaleKey( spep_1-3 + 263, 1, 2.62,2.62);

setScaleKey( spep_1-3 + 264, 1, 6, 6 );
setScaleKey( spep_1-3 + 266, 1, 6.36, 6.36 );
setScaleKey( spep_1-3 + 268, 1, 6.64, 6.64 );
setScaleKey( spep_1-3 + 270, 1, 6.84, 6.84 );
setScaleKey( spep_1-3 + 272, 1, 6.96, 6.96 );
setScaleKey( spep_1-1 + 274, 1, 7, 7 );


setRotateKey( spep_1-3 + 70, 1, -65 );
setRotateKey( spep_1-3 + 119, 1, -65 );

b=50;

setRotateKey( spep_1-3 + 120, 1, -60+b );
setRotateKey( spep_1-3 + 124, 1, -60+b );
setRotateKey( spep_1-3 + 126, 1, -46.7+b );
setRotateKey( spep_1-3 + 128, 1, -46.7+b );
setRotateKey( spep_1-3 + 130, 1, -25.1+b );
setRotateKey( spep_1-3 + 134, 1, -25.1+b );
setRotateKey( spep_1-3 + 136, 1, -22.4+b );
setRotateKey( spep_1-3 + 143, 1, -22.4+b );

--80

setRotateKey( spep_1-3 + 144, 1, -40 );
setRotateKey( spep_1-3 + 151, 1, -40 );

setRotateKey( spep_1-3 + 152, 1, 35 );
setRotateKey( spep_1-3 + 155, 1, 35 );

setRotateKey( spep_1-3 + 156, 1, 45 );
setRotateKey( spep_1-3 + 161, 1, 45 );

setRotateKey( spep_1-3 + 162, 1, 30 );
setRotateKey( spep_1-3 + 169, 1, 30 );
setRotateKey( spep_1-3 + 170, 1, 0 );
setRotateKey( spep_1-3 + 175, 1, 0 );

setRotateKey( spep_1-3 + 176, 1, -30 );
setRotateKey( spep_1-3 + 181, 1, -30 );
setRotateKey( spep_1-3 + 182, 1, -50 );
setRotateKey( spep_1-3 + 185, 1, -50 );

setRotateKey( spep_1-3 + 186, 1, -40.8 );
setRotateKey( spep_1-3 + 189, 1, -40.8 );
setRotateKey( spep_1-3 + 190, 1, -40 );
setRotateKey( spep_1-3 + 193, 1, -40 );

setRotateKey( spep_1-3 + 194, 1, 45 );
setRotateKey( spep_1-3 + 197, 1, 45 );

setRotateKey( spep_1-3 + 198, 1, 45 );
setRotateKey( spep_1-3 + 203, 1, 45 );

setRotateKey( spep_1-3 + 204, 1, 30 );
setRotateKey( spep_1-3 + 209, 1, 30 );
setRotateKey( spep_1-3 + 210, 1, 0 );
setRotateKey( spep_1-3 + 213, 1, 0 );

setRotateKey( spep_1-3 + 214, 1, -30 );
setRotateKey( spep_1-3 + 217, 1, -30 );
setRotateKey( spep_1-3 + 218, 1, -60 );
setRotateKey( spep_1-3 + 219, 1, -60 );

setRotateKey( spep_1-3 + 220, 1, -40.8 );
setRotateKey( spep_1-3 + 223, 1, -40.8 );
setRotateKey( spep_1-3 + 224, 1, -40 );
setRotateKey( spep_1-3 + 227, 1, -40 );

setRotateKey( spep_1-3 + 228, 1, 45 );
setRotateKey( spep_1-3 + 229, 1, 45 );

setRotateKey( spep_1-3 + 230, 1, 45 );
setRotateKey( spep_1-3 + 233, 1, 45 );

setRotateKey( spep_1-3 + 234, 1, 30 );
setRotateKey( spep_1-3 + 237, 1, 30 );
setRotateKey( spep_1-3 + 238, 1, 0 );
setRotateKey( spep_1-3 + 239, 1, 0 );

setRotateKey( spep_1-3 + 240, 1, -30 );
setRotateKey( spep_1-3 + 243, 1, -30 );
setRotateKey( spep_1-3 + 244, 1, -60 );
setRotateKey( spep_1-3 + 245, 1, -60 );

setRotateKey( spep_1-3 + 246, 1, -40.8 );
setRotateKey( spep_1-3 + 247, 1, -40.8 );
setRotateKey( spep_1-3 + 248, 1, -40 );
setRotateKey( spep_1-3 + 249, 1, -40 );

setRotateKey( spep_1-3 + 250, 1, 45 );
setRotateKey( spep_1-3 + 251, 1, 45 );

setRotateKey( spep_1-3 + 252, 1, 45 );
setRotateKey( spep_1-3 + 253, 1, 45 );

setRotateKey( spep_1-3 + 254, 1, 30 );
setRotateKey( spep_1-3 + 257, 1, 30 );
setRotateKey( spep_1-3 + 258, 1, 0 );
setRotateKey( spep_1-3 + 261, 1, 0 );

setRotateKey( spep_1-3 + 262, 1, -30 );
setRotateKey( spep_1-3 + 263, 1, -30 );

setRotateKey( spep_1-3 + 264, 1, -60 );
setRotateKey( spep_1-3 + 266, 1, -63.6 );
setRotateKey( spep_1-3 + 268, 1, -66.4 );
setRotateKey( spep_1-3 + 270, 1, -68.4 );
setRotateKey( spep_1-3 + 272, 1, -69.6 );
setRotateKey( spep_1-1 + 274, 1, -70 );

--敵の動き
setDisp( spep_1-3 + 310, 1, 1);
setDisp( spep_1-1 + 344, 1, 0);

changeAnime( spep_1-3 + 310, 1, 106);
changeAnime( spep_1-3 + 314, 1, 5);

setMoveKey( spep_1-3 + 310, 1, 573.2, -315.1 , 0 );
setMoveKey( spep_1-3 + 311, 1, 573.2, -315.1 , 0 );
setMoveKey( spep_1-3 + 312, 1, 409.5, -79 , 0 );
setMoveKey( spep_1-3 + 313, 1, 409.5, -79 , 0 );

setMoveKey( spep_1-3 + 314, 1, 85.4, 204.6 , 0 );
setMoveKey( spep_1-3 + 316, 1, 113.8, 223.6 , 0 );
setMoveKey( spep_1-3 + 318, 1, 140, 241.3 , 0 );
setMoveKey( spep_1-3 + 320, 1, 164.2, 257.5 , 0 );
setMoveKey( spep_1-3 + 322, 1, 186.2, 272.3 , 0 );
setMoveKey( spep_1-3 + 324, 1, 206.2, 285.7 , 0 );
setMoveKey( spep_1-3 + 326, 1, 224.1, 297.7 , 0 );
setMoveKey( spep_1-3 + 328, 1, 239.8, 308.2 , 0 );
setMoveKey( spep_1-3 + 330, 1, 253.5, 317.4 , 0 );
setMoveKey( spep_1-3 + 332, 1, 265, 325.2 , 0 );
setMoveKey( spep_1-3 + 334, 1, 274.5, 331.5 , 0 );
setMoveKey( spep_1-3 + 336, 1, 281.8, 336.5 , 0 );
setMoveKey( spep_1-3 + 338, 1, 287.1, 340 , 0 );
setMoveKey( spep_1-3 + 340, 1, 290.2, 342.1 , 0 );
setMoveKey( spep_1-1+ 344, 1, 291.3, 342.8 , 0 );

setScaleKey( spep_1-3 + 310, 1, 3.99, 3.99 );
setScaleKey( spep_1-3 + 311, 1, 3.99, 3.99 );
setScaleKey( spep_1-3 + 312, 1, 3, 3 );
setScaleKey( spep_1-3 + 313, 1, 3, 3 );

setScaleKey( spep_1-3 + 314, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 316, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 318, 1, 1.12, 1.12 );
setScaleKey( spep_1-3 + 320, 1, 0.95, 0.95 );
setScaleKey( spep_1-3 + 322, 1, 0.8, 0.8 );
setScaleKey( spep_1-3 + 324, 1, 0.66, 0.66 );
setScaleKey( spep_1-3 + 326, 1, 0.53, 0.53 );
setScaleKey( spep_1-3 + 328, 1, 0.42, 0.42 );
setScaleKey( spep_1-3 + 330, 1, 0.33, 0.33 );
setScaleKey( spep_1-3 + 332, 1, 0.25, 0.25 );
setScaleKey( spep_1-3 + 334, 1, 0.18, 0.18 );
setScaleKey( spep_1-3 + 336, 1, 0.13, 0.13 );
setScaleKey( spep_1-3 + 338, 1, 0.09, 0.09 );
setScaleKey( spep_1-3 + 340, 1, 0.07, 0.07 );
setScaleKey( spep_1-1 + 344, 1, 0.06, 0.06 );

setRotateKey( spep_1-3 + 310, 1, 60 );
setRotateKey( spep_1-3 + 311, 1, 60 );
setRotateKey( spep_1-3 + 312, 1, 45 );
setRotateKey( spep_1-3 + 313, 1, 45 );

setRotateKey( spep_1-3 + 314, 1, -16.1 );
setRotateKey( spep_1-3 + 316, 1, -16.6 );
setRotateKey( spep_1-3 + 318, 1, -17.1 );
setRotateKey( spep_1-3 + 320, 1, -17.6 );
setRotateKey( spep_1-3 + 322, 1, -18 );
setRotateKey( spep_1-3 + 324, 1, -18.4 );
setRotateKey( spep_1-3 + 326, 1, -18.7 );
setRotateKey( spep_1-3 + 328, 1, -19 );
setRotateKey( spep_1-3 + 330, 1, -19.3 );
setRotateKey( spep_1-3 + 332, 1, -19.5 );
setRotateKey( spep_1-3 + 334, 1, -19.7 );
setRotateKey( spep_1-3 + 336, 1, -19.8 );
setRotateKey( spep_1-3 + 338, 1, -19.9 );
setRotateKey( spep_1-1 + 344, 1, -20 );

--敵の動き
setDisp( spep_1-3 + 356, 1, 1);
setDisp( spep_1-1 + 384, 1, 0);

changeAnime( spep_1-3 + 356, 1, 7);
changeAnime( spep_1-3 + 362, 1, 5);

setMoveKey( spep_1-3 + 356, 1, 63.7, -681.9 , 0 );
setMoveKey( spep_1-3 + 361, 1, 63.7, -681.9 , 0 );

setMoveKey( spep_1-3 + 362, 1, -65.3, 21.1 , 0 );
setMoveKey( spep_1-3 + 364, 1, -83.7, 65.2 , 0 );
setMoveKey( spep_1-3 + 366, 1, -102.3, 109.3 , 0 );
setMoveKey( spep_1-3 + 368, 1, -95.8, 124.3 , 0 );
setMoveKey( spep_1-3 + 370, 1, -91.7, 135.3 , 0 );
setMoveKey( spep_1-3 + 372, 1, -89.4, 142 , 0 );
setMoveKey( spep_1-3 + 374, 1, -88.6, 144.3 , 0 );
setMoveKey( spep_1-3 + 376, 1, -80, 136 , 0 );
setMoveKey( spep_1-3 + 378, 1, -71.5, 127.8 , 0 );
setMoveKey( spep_1-3 + 380, 1, -62.8, 119.7 , 0 );
setMoveKey( spep_1-1 + 384, 1, -54.1, 111.6 , 0 );

setScaleKey( spep_1-3 + 356, 1, 4.99, 4.99 );
setScaleKey( spep_1-3 + 361, 1, 4.99, 4.99 );

setScaleKey( spep_1-3 + 362, 1, 2.5, 2.5 );
setScaleKey( spep_1-3 + 364, 1, 1.85, 1.85 );
setScaleKey( spep_1-3 + 366, 1, 1.2, 1.2 );
setScaleKey( spep_1-3 + 368, 1, 0.82, 0.82 );
setScaleKey( spep_1-3 + 370, 1, 0.55, 0.55 );
setScaleKey( spep_1-3 + 372, 1, 0.38, 0.38 );
setScaleKey( spep_1-3 + 374, 1, 0.33, 0.33 );
setScaleKey( spep_1-3 + 376, 1, 0.27, 0.27 );
setScaleKey( spep_1-3 + 378, 1, 0.21, 0.21 );
setScaleKey( spep_1-3 + 380, 1, 0.16, 0.16 );
setScaleKey( spep_1-1 + 384, 1, 0.1, 0.1 );

setRotateKey( spep_1-3 + 356, 1, 119.9 );
setRotateKey( spep_1-3 + 361, 1, 119.9 );

setRotateKey( spep_1-3 + 362, 1, -5 );
setRotateKey( spep_1-3 + 364, 1, -2.5 );
setRotateKey( spep_1-3 + 366, 1, 0 );
setRotateKey( spep_1-3 + 368, 1, 13.1 );
setRotateKey( spep_1-3 + 370, 1, 22.5 );
setRotateKey( spep_1-3 + 372, 1, 28.1 );
setRotateKey( spep_1-3 + 374, 1, 30 );
setRotateKey( spep_1-3 + 376, 1, 45 );
setRotateKey( spep_1-3 + 378, 1, 60 );
setRotateKey( spep_1-3 + 380, 1, 75 );
setRotateKey( spep_1-1 + 384, 1, 89.9 );

--敵の動き
setDisp( spep_1-3 + 518, 1, 1);
setDisp( spep_1-1 + 578, 1, 0);

changeAnime( spep_1-3 + 518, 1, 5);

setMoveKey( spep_1-3 + 518, 1, -46.6, 503.7 , 0 );
setMoveKey( spep_1-3 + 520, 1, -46.8, 504 , 0 );
setMoveKey( spep_1-3 + 522, 1, -46.9, 504.3 , 0 );
setMoveKey( spep_1-3 + 524, 1, -47, 504.5 , 0 );
setMoveKey( spep_1-3 + 526, 1, -47.2, 504.8 , 0 );
setMoveKey( spep_1-3 + 528, 1, -47.3, 505.1 , 0 );
setMoveKey( spep_1-3 + 530, 1, -47.4, 505.3 , 0 );
setMoveKey( spep_1-3 + 532, 1, -47.5, 505.5 , 0 );
setMoveKey( spep_1-3 + 534, 1, -47.6, 505.7 , 0 );
setMoveKey( spep_1-3 + 536, 1, -47.7, 506 , 0 );
setMoveKey( spep_1-3 + 538, 1, -47.8, 506.2 , 0 );
setMoveKey( spep_1-3 + 540, 1, -47.9, 506.3 , 0 );
setMoveKey( spep_1-3 + 542, 1, -47.9, 506.5 , 0 );
setMoveKey( spep_1-3 + 544, 1, -48, 506.7 , 0 );
setMoveKey( spep_1-3 + 546, 1, -48.1, 506.8 , 0 );
setMoveKey( spep_1-3 + 548, 1, -48.1, 507 , 0 );
setMoveKey( spep_1-3 + 550, 1, -48.2, 507.1 , 0 );
setMoveKey( spep_1-3 + 552, 1, -48.3, 507.3 , 0 );
setMoveKey( spep_1-3 + 554, 1, -48.3, 507.4 , 0 );
setMoveKey( spep_1-3 + 556, 1, -48.4, 507.5 , 0 );
setMoveKey( spep_1-3 + 558, 1, -48.4, 507.6 , 0 );
setMoveKey( spep_1-3 + 560, 1, -48.5, 507.7 , 0 );
setMoveKey( spep_1-3 + 562, 1, -48.5, 507.7 , 0 );
setMoveKey( spep_1-3 + 564, 1, -48.5, 507.8 , 0 );
setMoveKey( spep_1-3 + 566, 1, -48.5, 507.9 , 0 );
setMoveKey( spep_1-3 + 568, 1, -48.6, 507.9 , 0 );
setMoveKey( spep_1-3 + 570, 1, -48.6, 507.9 , 0 );
setMoveKey( spep_1-1 + 578, 1, -48.6, 508 , 0 );

setScaleKey( spep_1-3 + 518, 1, 0.11, 0.11 );
setScaleKey( spep_1-3 + 522, 1, 0.11, 0.11 );
setScaleKey( spep_1-3 + 524, 1, 0.1, 0.1 );
setScaleKey( spep_1-3 + 534, 1, 0.1, 0.1 );
setScaleKey( spep_1-3 + 536, 1, 0.09, 0.09 );
setScaleKey( spep_1-3 + 552, 1, 0.09, 0.09 );
setScaleKey( spep_1-1 + 578, 1, 0.08, 0.08 );

setRotateKey( spep_1-3 + 518, 1, 0 );
setRotateKey( spep_1-1 + 578, 1, 0 );

--敵の動き
setDisp( spep_1-3 + 642, 1, 1);
setDisp( spep_1-1 + 712, 1, 0);

setBlendColor(spep_1-3 + 642 ,1 ,3 ,0.15 ,0.61 ,1 ,0.41 );
setBlendColor(spep_1 + 712 ,1 ,3 ,0.15 ,0.61 ,1 ,0.41 );
setBlendColor(spep_1 + 716 ,1 ,3 ,0.15 ,0.61 ,1 ,0 );

changeAnime( spep_1-3 + 642, 1, 7);

setMoveKey( spep_1-3 + 642, 1, -1403.2, -2176.7 , 0 );
setMoveKey( spep_1-3 + 644, 1, -1402.2, -2175.1 , 0 );
setMoveKey( spep_1-3 + 646, 1, -1399.1, -2170.3 , 0 );
setMoveKey( spep_1-3 + 648, 1, -1393.9, -2162.3 , 0 );
setMoveKey( spep_1-3 + 650, 1, -1386.7, -2151.1 , 0 );
setMoveKey( spep_1-3 + 652, 1, -1377.4, -2136.8 , 0 );
setMoveKey( spep_1-3 + 654, 1, -1366.1, -2119.2 , 0 );
setMoveKey( spep_1-3 + 656, 1, -1352.6, -2098.4 , 0 );
setMoveKey( spep_1-3 + 658, 1, -1337.2, -2074.4 , 0 );
setMoveKey( spep_1-3 + 660, 1, -1319.6, -2047.2 , 0 );
setMoveKey( spep_1-3 + 662, 1, -1300, -2016.9 , 0 );
setMoveKey( spep_1-3 + 664, 1, -1278.3, -1983.3 , 0 );
setMoveKey( spep_1-3 + 666, 1, -1254.6, -1946.5 , 0 );
setMoveKey( spep_1-3 + 668, 1, -1228.8, -1906.5 , 0 );
setMoveKey( spep_1-3 + 670, 1, -1200.9, -1863.4 , 0 );
setMoveKey( spep_1-3 + 672, 1, -1171, -1817 , 0 );
setMoveKey( spep_1-3 + 674, 1, -1139, -1767.5 , 0 );
setMoveKey( spep_1-3 + 676, 1, -1105, -1714.7 , 0 );
setMoveKey( spep_1-3 + 678, 1, -1068.8, -1658.8 , 0 );
setMoveKey( spep_1-3 + 680, 1, -1030.7, -1599.6 , 0 );
setMoveKey( spep_1-3 + 682, 1, -990.4, -1537.3 , 0 );
setMoveKey( spep_1-3 + 684, 1, -948.1, -1471.7 , 0 );
setMoveKey( spep_1-3 + 686, 1, -903.7, -1403 , 0 );
setMoveKey( spep_1-3 + 688, 1, -857.3, -1331.1 , 0 );
setMoveKey( spep_1-3 + 690, 1, -808.8, -1256 , 0 );
setMoveKey( spep_1-3 + 692, 1, -758.3, -1177.7 , 0 );
setMoveKey( spep_1-3 + 694, 1, -705.6, -1096.1 , 0 );
setMoveKey( spep_1-3 + 696, 1, -651, -1011.4 , 0 );
setMoveKey( spep_1-3 + 698, 1, -594.2, -923.5 , 0 );
setMoveKey( spep_1-3 + 700, 1, -535.4, -832.4 , 0 );
setMoveKey( spep_1-3 + 702, 1, -474.5, -738.1 , 0 );
setMoveKey( spep_1-3 + 704, 1, -411.6, -640.7 , 0 );
setMoveKey( spep_1-3 + 706, 1, -346.6, -540 , 0 );
setMoveKey( spep_1-3 + 708, 1, -279.6, -436.1 , 0 );
setMoveKey( spep_1-3 + 710, 1, -210.4, -329.1 , 0 );
setMoveKey( spep_1-1 + 712, 1, -139.3, -218.8 , 0 );

setScaleKey( spep_1-3 + 642, 1, 5.49, 5.49 );
setScaleKey( spep_1-3 + 644, 1, 5.49, 5.49 );
setScaleKey( spep_1-3 + 646, 1, 5.48, 5.48 );
setScaleKey( spep_1-3 + 648, 1, 5.46, 5.46 );
setScaleKey( spep_1-3 + 650, 1, 5.43, 5.43 );
setScaleKey( spep_1-3 + 652, 1, 5.4, 5.4 );
setScaleKey( spep_1-3 + 654, 1, 5.36, 5.36 );
setScaleKey( spep_1-3 + 656, 1, 5.31, 5.31 );
setScaleKey( spep_1-3 + 658, 1, 5.26, 5.26 );
setScaleKey( spep_1-3 + 660, 1, 5.2, 5.2 );
setScaleKey( spep_1-3 + 662, 1, 5.13, 5.13 );
setScaleKey( spep_1-3 + 664, 1, 5.05, 5.05 );
setScaleKey( spep_1-3 + 666, 1, 4.96, 4.96 );
setScaleKey( spep_1-3 + 668, 1, 4.87, 4.87 );
setScaleKey( spep_1-3 + 670, 1, 4.77, 4.77 );
setScaleKey( spep_1-3 + 672, 1, 4.67, 4.67 );
setScaleKey( spep_1-3 + 674, 1, 4.55, 4.55 );
setScaleKey( spep_1-3 + 676, 1, 4.43, 4.43 );
setScaleKey( spep_1-3 + 678, 1, 4.3, 4.3 );
setScaleKey( spep_1-3 + 680, 1, 4.17, 4.17 );
setScaleKey( spep_1-3 + 682, 1, 4.03, 4.03 );
setScaleKey( spep_1-3 + 684, 1, 3.88, 3.88 );
setScaleKey( spep_1-3 + 686, 1, 3.72, 3.72 );
setScaleKey( spep_1-3 + 688, 1, 3.55, 3.55 );
setScaleKey( spep_1-3 + 690, 1, 3.38, 3.38 );
setScaleKey( spep_1-3 + 692, 1, 3.2, 3.2 );
setScaleKey( spep_1-3 + 694, 1, 3.01, 3.01 );
setScaleKey( spep_1-3 + 696, 1, 2.82, 2.82 );
setScaleKey( spep_1-3 + 698, 1, 2.62, 2.62 );
setScaleKey( spep_1-3 + 700, 1, 2.41, 2.41 );
setScaleKey( spep_1-3 + 702, 1, 2.19, 2.19 );
setScaleKey( spep_1-3 + 704, 1, 1.97, 1.97 );
setScaleKey( spep_1-3 + 706, 1, 1.74, 1.74 );
setScaleKey( spep_1-3 + 708, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 710, 1, 1.25, 1.25 );
setScaleKey( spep_1-1 + 712, 1, 1, 1 );

setRotateKey( spep_1-3 + 642, 1, -14.8 );
setRotateKey( spep_1-1 + 712, 1, -14.8 );

--SE
--悟空向かってくる
SE004 = playSeVer2( spep_1 + 0, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 0, 9, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 0, 1314, "",spep_1 + 70, 0, 2, -1);

--振りかぶる(なってない？)
SE007 = playSeVer2( spep_1 + 44, 1116, "",spep_1 + 74, 0, 10, -1);

--パンチ
SE008 = playSeVer2( spep_1 + 68, 1009, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 68, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 68, SE009, 76 );
SE010 = playSeVer2( spep_1 + 70, 1110, "", 0, 0, 0, -1);

--敵掴む
SE011 = playSeVer2( spep_1 + 128, 1007, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 130, 1006, "", 0, 0, 0, -1);

--敵くるくる回す
SE013 = playSeVer2( spep_1 + 144, 1278, "",spep_1 + 330, 0, 90, -1);
setSeVolumeByWorkId( spep_1 + 144, SE013, 72 );
SE014 = playSeVer2( spep_1 + 144, 1116, "",spep_1 + 190, 0, 26, -1);
SE015 = playSeVer2( spep_1 + 144, 1117, "",spep_1 + 182, 0, 22, -1);
SE016 = playSeVer2( spep_1 + 186, 1116, "",spep_1 + 228, 0, 20, -1);
SE017 = playSeVer2( spep_1 + 186, 1117, "",spep_1 + 224, 0, 22, -1);
SE018 = playSeVer2( spep_1 + 220, 1116, "",spep_1 + 264, 0, 22, -1);
SE019 = playSeVer2( spep_1 + 220, 1117, "",spep_1 + 258, 0, 22, -1);
SE020 = playSeVer2( spep_1 + 244, 1116, "",spep_1 + 284, 0, 20, -1);
SE021 = playSeVer2( spep_1 + 244, 1117, "",spep_1 + 282, 0, 22, -1);
SE022 = playSeVer2( spep_1 + 252, 1072, "", 0, 0, 0, -1);
setTimeStretch( SE022, 1.11, 30, 4 );
SE023 = playSeVer2( spep_1 + 274, 1116, "",spep_1 + 314, 0, 18, -1);
SE024 = playSeVer2( spep_1 + 274, 1117, "",spep_1 + 314, 0, 22, -1);

--気合いれ
SE025 = playSeVer2( spep_1 + 302, 1035, "", 0, 0, 0, -1);

--敵飛ばし
SE026 = playSeVer2( spep_1 + 312, 1027, "", 0, 0, 0, -1);

--敵飛んでいく(なってない？)
SE027 = playSeVer2( spep_1 + 322, 1183, "",spep_1 + 434, 0, 48, -1);

--構える
SE028 = playSeVer2( spep_1 + 400, 1233, "", 0, 2, 0, -1);
setStartTimeMs( SE028,  133 );
SE029 = playSeVer2( spep_1 + 400, 1006, "", 0, 0, 0, -1);
setPitch( spep_1 + 400, SE029, -400 );
setTimeStretch( SE029, 0.73, 30, 4 );

--環境音
SE030 = playSeVer2( spep_1 + 416, 1175, "",spep_1 + 628, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 416, SE030, 35 );

--オーラ
SE031 = playSeVer2( spep_1 + 416, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 416, SE031, 79 );
SE032 = playSeVer2( spep_1 + 440, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 440, SE032, 79 );

--かめはめ波溜め
SE033 = playSeVer2( spep_1 + 548, 1210, "",spep_1 + 628, 10, 16, -1);
setStartTimeMs( SE033,  1550 );

--オーラ
SE034 = playSeVer2( spep_1 + 464, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 464, SE034, 79 );

--画面遷移
SE035 = playSeVer2( spep_1 + 464, 1232, "", 0, 0, 0, -1);

--オーラ
SE036 = playSeVer2( spep_1 + 488, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 488, SE036, 79 );

--画面遷移
SE037 = playSeVer2( spep_1 + 508, 8, "", 0, 0, 0, -1);
setPitch( spep_1 + 508, SE037, -500 );
setTimeStretch( SE037, 0.67, 30, 4 );

--オーラ
SE038 = playSeVer2( spep_1 + 512, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 512, SE038, 79 );
SE039 = playSeVer2( spep_1 + 536, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 536, SE039, 79 );

--かめはめ波溜め
SE040 = playSeVer2( spep_1 + 544, 1209, "", 0, 0, 0, -1);

--オーラ
SE041 = playSeVer2( spep_1 + 560, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 560, SE041, 79 );
SE042 = playSeVer2( spep_1 + 584, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 584, SE042, 79 );

--かめはめ波発射
SE043 = playSeVer2( spep_1 + 610, 1258, "",spep_1 + 722, 0, 4, -1);
setSeVolumeByWorkId( spep_1 + 610, SE043, 77 );
SE044 = playSeVer2( spep_1 + 614, 1133, "",spep_1 + 722, 0, 4, -1);
SE045 = playSeVer2( spep_1 + 614, 1022, "",spep_1 + 722, 0, 4, -1);

--かめはめ波飛んでいく
SE046 = playSeVer2( spep_1 + 650, 1284, "",spep_1 + 722, 0, 4, -1);
setSeVolumeByWorkId( spep_1 + 650, SE046, 78 );
SE047 = playSeVer2( spep_1 + 650, 1213, "",spep_1 + 722, 0, 4, -1);
setSeVolumeByWorkId( spep_1 + 650, SE047, 72 );

--白フェード
entryFade( spep_1 + 706, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 714, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_2=spep_1+714;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 94; 
------------------------------------------------------
--かめはめ波縦〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 306, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 306, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 306, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 306, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 306, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 306, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 306, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 306, finish_b, 255 );

-- ** エフェクト等 ** --
KO = entryEffectLife( spep_3 + 294, SP_06x,72,0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 294, KO, 0, 0, 0 );
setEffMoveKey( spep_3 + 366, KO, 0, 0, 0 );
setEffScaleKey( spep_3 + 294, KO, -1.0, 1.0 );
setEffScaleKey( spep_3 + 366, KO, -1.0, 1.0 );
setEffRotateKey( spep_3 + 294, KO, 0 );
setEffRotateKey( spep_3 + 366, KO, 0 );
setEffAlphaKey( spep_3 + 294, KO, 255 );
setEffAlphaKey( spep_3 + 366, KO, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1);
setDisp( spep_3-1 + 38, 1, 0);
changeAnime( spep_3 + 0, 1, 5);

setBlendColor(spep_3 + 0 ,1 ,3 ,0.06 ,0.53 ,0.99 ,0.5 );
setBlendColor(spep_3 + 38 ,1 ,3 ,0.06 ,0.53 ,0.99 ,0.5 );
setBlendColor(spep_3 + 40 ,1 ,3 ,0.06 ,0.53 ,0.99 ,0 );

setMoveKey( spep_3 + 0, 1, -39.2, 532.3 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 39.7, 528 , 0 );
setMoveKey( spep_3-3 + 4, 1, -40.3, 523.8 , 0 );
setMoveKey( spep_3-3 + 6, 1, -40.9, 519.5 , 0 );
setMoveKey( spep_3-3 + 8, 1, -41.5, 515.3 , 0 );
setMoveKey( spep_3-3 + 10, 1, -42.1, 511 , 0 );
setMoveKey( spep_3-3 + 12, 1, -42.7, 506.7 , 0 );
setMoveKey( spep_3-3 + 14, 1, -43.2, 502.5 , 0 );
setMoveKey( spep_3-3 + 16, 1, -43.8, 498.2 , 0 );
setMoveKey( spep_3-3 + 18, 1, -44.4, 494 , 0 );
setMoveKey( spep_3-3 + 20, 1, -45, 489.7 , 0 );
setMoveKey( spep_3-3 + 22, 1, -45.6, 485.4 , 0 );
setMoveKey( spep_3-3 + 24, 1, -46.2, 481.2 , 0 );
setMoveKey( spep_3-3 + 26, 1, -46.8, 476.9 , 0 );
setMoveKey( spep_3-3 + 28, 1, -47.3, 472.7 , 0 );
setMoveKey( spep_3-3 + 30, 1, -47.9, 468.4 , 0 );
setMoveKey( spep_3-3 + 32, 1, -48.5, 464.1 , 0 );
setMoveKey( spep_3-3 + 34, 1, -49.1, 459.9 , 0 );
setMoveKey( spep_3-3 + 36, 1, -49.7, 455.6 , 0 );
setMoveKey( spep_3-1 + 38, 1, -50.3, 451.3 , 0 );

setScaleKey( spep_3 + 0, 1, 0.15, 0.15 );
--setScaleKey( spep_3-3 + 2, 1, 0.15, 0.15 );
setScaleKey( spep_3-3 + 4, 1, 0.14, 0.14 );
setScaleKey( spep_3-3 + 10, 1, 0.14, 0.14 );
setScaleKey( spep_3-3 + 12, 1, 0.13, 0.13 );
setScaleKey( spep_3-3 + 18, 1, 0.13, 0.13 );
setScaleKey( spep_3-3 + 20, 1, 0.12, 0.12 );
setScaleKey( spep_3-3 + 26, 1, 0.12, 0.12 );
setScaleKey( spep_3-3 + 28, 1, 0.11, 0.11 );
setScaleKey( spep_3-3 + 34, 1, 0.11, 0.11 );
setScaleKey( spep_3-1 + 38, 1, 0.1, 0.1 );

setRotateKey( spep_3 + 0, 1, -15 );
setRotateKey( spep_3-1 + 38, 1, -15 );

--敵の動き
setDisp( spep_3-3 + 96, 1, 1);
setDisp( spep_3-1 + 112, 1, 0);
changeAnime( spep_3-3 + 96, 1, 106);

setBlendColor(spep_3-3 + 96 ,1 ,3 ,0.06 ,0.53 ,0.99 ,0.5 );
setBlendColor(spep_3 + 112 ,1 ,3 ,0.06 ,0.53 ,0.99 ,0.5 );
setBlendColor(spep_3 + 114 ,1 ,3 ,0.06 ,0.53 ,0.99 ,0 );

setMoveKey( spep_3-3 + 96, 1, -5.1, 39.9 , 0 );
setMoveKey( spep_3-3 + 100, 1, 34.4, 62 , 0 );
setMoveKey( spep_3-3 + 102, 1, 66.8, 80.1 , 0 );
setMoveKey( spep_3-3 + 104, 1, 92, 94.2 , 0 );
setMoveKey( spep_3-3 + 106, 1, 110, 104.3 , 0 );
setMoveKey( spep_3-3 + 108, 1, 120.8, 110.3 , 0 );
setMoveKey( spep_3-1 + 112, 1, 124.4, 112.3 , 0 );

setScaleKey( spep_3-3 + 96, 1, 0.75, 0.75 );
setScaleKey( spep_3-3 + 100, 1, 0.67, 0.67 );
setScaleKey( spep_3-3 + 102, 1, 0.61, 0.61 );
setScaleKey( spep_3-3 + 104, 1, 0.56, 0.56 );
setScaleKey( spep_3-3 + 106, 1, 0.53, 0.53 );
setScaleKey( spep_3-3 + 108, 1, 0.51, 0.51 );
setScaleKey( spep_3-1 + 112, 1, 0.5, 0.5 );

setRotateKey( spep_3-3 + 96, 1, -4 );
setRotateKey( spep_3-1 + 112, 1, -4 );

--SE
SE049 = playSeVer2( spep_3 + 0, 1146, "",spep_3 + 150, 0, 22, -1);
SE050 = playSeVer2( spep_3 + 0, 1211, "",spep_3 + 142, 0, 16, -1);
SE051 = playSeVer2( spep_3 + 0, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE051, 85 );
SE052 = playSeVer2( spep_3 + 0, 1177, "",spep_3 + 142, 0, 10, -1);
SE053 = playSeVer2( spep_3 + 0, 1193, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_3 + 0, 1223, "",spep_3 + 150, 0, 20, -1);

--悟空アップ
SE055 = playSeVer2( spep_3 + 38, 1161, "",spep_3 + 128, 0, 14, -1);

--敵ヒット
SE056 = playSeVer2( spep_3 + 118, 1159, "",spep_3 + 304, 0, 98, -1);
SE057 = playSeVer2( spep_3 + 118, 1024, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_3 + 118, 1343, "",spep_3 + 322, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 118, SE058, 85 );

--かめはめ波飛んでいく
SE059 = playSeVer2( spep_3 + 146, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 146, SE059, 184 );
SE060 = playSeVer2( spep_3 + 146, 1215, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 146, SE060, 135 );

--かめはめ波宇宙横切る
SE061 = playSeVer2( spep_3 + 224, 1213, "", 0, 28, 0, 0.6);
setStartTimeMs( SE061,  400 );
SE062 = playSeVer2( spep_3 + 232, 1211, "", 0, 28, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 232, SE062, 562 );
setStartTimeMs( SE062,  417 );
SE063 = playSeVer2( spep_3 + 216, 1157, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_3 + 256, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 256, SE064, 188 );

--終わり
hideKoScreen();
dealDamage(spep_3+194);
entryFade( spep_3 +292, 2,  4, 2, 255, 255, 255, 255);             -- black fade
endPhase( spep_3 + 296 );
end