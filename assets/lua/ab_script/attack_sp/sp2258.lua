--1022990:ザーボン_エレガントブラスター
--sp_effect_a2_00167

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
SP_01=	157965	;--	下を見ているザーボン
SP_02=	157966	;--	下を見ているザーボン
SP_03=	157969	;--	カットイン
SP_04=	157970	;--	気弾発射
SP_05=	157972	;--	迫る気弾
SP_06=	157973	;--	迫る気弾
SP_07=	157974	;--	ギャン赤
SP_08=	157975	;--	地面で爆発～フィニッシュ

--エフェクト(てき)
SP_01x=	157967	;--	下を見ているザーボン	(敵)
SP_02x=	157968	;--	下を見ているザーボン	(敵)
SP_03x=	157969	;--	カットイン	
SP_04x=	157971	;--	気弾発射	(敵)
SP_05x=	157972	;--	迫る気弾	
SP_06x=	157973	;--	迫る気弾	
SP_07x=	157974	;--	ギャン赤	
SP_08x=	157975	;--	地面で爆発～フィニッシュ	

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
--下を見ているザーボン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
overlook_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, overlook_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 108, overlook_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, overlook_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 108, overlook_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, overlook_f, 0 );
setEffRotateKey( spep_0 + 108, overlook_f, 0 );
setEffAlphaKey( spep_0 + 0, overlook_f, 255 );
setEffAlphaKey( spep_0 + 106, overlook_f, 255 );
setEffAlphaKey( spep_0 + 107, overlook_f, 255 );
setEffAlphaKey( spep_0 + 108, overlook_f, 0 );

-- ** エフェクト等 ** --
overlook_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, overlook_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 108, overlook_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, overlook_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 108, overlook_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, overlook_b, 0 );
setEffRotateKey( spep_0 + 108, overlook_b, 0 );
setEffAlphaKey( spep_0 + 0, overlook_b, 255 );
setEffAlphaKey( spep_0 + 106, overlook_b, 255 );
setEffAlphaKey( spep_0 + 107, overlook_b, 255 );
setEffAlphaKey( spep_0 + 108, overlook_b, 0 );

--敵の動き
setDisp( spep_0-3 + 58, 1, 1 );
setDisp( spep_0 + 108, 1, 0 );
changeAnime( spep_0-3 + 58, 1, 117 );

setMoveKey( spep_0-3 + 58, 1, 375.6, -597.2 , 0 );
setMoveKey( spep_0-3 + 59, 1, 375.6, -597.2 , 0 );
setMoveKey( spep_0-3 + 60, 1, 199.6, -358.9 , 0 );
setMoveKey( spep_0-3 + 62, 1, 197.5, -356 , 0 );
setMoveKey( spep_0-3 + 64, 1, 195.3, -353.1 , 0 );
setMoveKey( spep_0-3 + 66, 1, 193.2, -350.2 , 0 );
setMoveKey( spep_0-3 + 68, 1, 191.1, -347.3 , 0 );
setMoveKey( spep_0-3 + 70, 1, 188.9, -344.5 , 0 );
setMoveKey( spep_0-3 + 72, 1, 186.8, -341.5 , 0 );
setMoveKey( spep_0-3 + 74, 1, 184.7, -338.7 , 0 );
setMoveKey( spep_0-3 + 76, 1, 182.5, -335.8 , 0 );
setMoveKey( spep_0-3 + 78, 1, 180.4, -332.9 , 0 );
setMoveKey( spep_0-3 + 80, 1, 178.3, -330 , 0 );
setMoveKey( spep_0-3 + 82, 1, 176.2, -327.1 , 0 );
setMoveKey( spep_0-3 + 84, 1, 174, -324.3 , 0 );
setMoveKey( spep_0-3 + 86, 1, 171.9, -321.4 , 0 );
setMoveKey( spep_0-3 + 88, 1, 169.8, -318.5 , 0 );
setMoveKey( spep_0-3 + 90, 1, 167.6, -315.6 , 0 );
setMoveKey( spep_0-3 + 92, 1, 165.5, -312.7 , 0 );
setMoveKey( spep_0-3 + 94, 1, 163.4, -309.8 , 0 );
setMoveKey( spep_0-3 + 96, 1, 161.2, -307 , 0 );
setMoveKey( spep_0-3 + 98, 1, 159.1, -304.1 , 0 );
setMoveKey( spep_0-3 + 100, 1, 157, -301.2 , 0 );
setMoveKey( spep_0-3 + 102, 1, 154.9, -298.3 , 0 );
setMoveKey( spep_0-3 + 104, 1, 152.7, -295.4 , 0 );
setMoveKey( spep_0-3 + 106, 1, 150.6, -292.5 , 0 );
setMoveKey( spep_0-3 + 108, 1, 148.5, -289.6 , 0 );
setMoveKey( spep_0-3 + 110, 1, 146.3, -286.7 , 0 );
setMoveKey( spep_0 + 108, 1, 146.3, -286.7 , 0 );

setScaleKey( spep_0-3 + 58, 1, 0.56, 0.56 );
setScaleKey( spep_0-3 + 59, 1, 0.56, 0.56 );
setScaleKey( spep_0-3 + 60, 1, 0.47, 0.47 );
--setScaleKey( spep_0-3 + 62, 1, 0.47, 0.47 );
--setScaleKey( spep_0-3 + 64, 1, 0.46, 0.46 );
setScaleKey( spep_0-3 + 82, 1, 0.46, 0.46 );
--setScaleKey( spep_0-3 + 84, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 100, 1, 0.45, 0.45 );
--setScaleKey( spep_0-3 + 102, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 108, 1, 0.44, 0.44 );

setRotateKey( spep_0-3 + 58, 1, 0 );
setRotateKey( spep_0+108 + 58, 1, 0 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 76 );
setPitch( spep_0 + 0, SE001, -500 );
setTimeStretch( SE001, 0.67, 30, 4 );

--画面遷移
SE002 = playSeVer2( spep_0 + 44, 44, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 114, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_1=spep_0+108;
------------------------------------------------------
--カットイン
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 90, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 90, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 90, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 90, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_1 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

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

--SE
--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--腕掴む
SE004 = playSeVer2( spep_1 + 22, 1006, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_1 + 82, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_2=spep_1+90;
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
--気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, kidan, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, kidan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kidan, 0 );
setEffRotateKey( spep_3 + 90, kidan, 0 );
setEffAlphaKey( spep_3 + 0, kidan, 255 );
setEffAlphaKey( spep_3 + 88, kidan, 255 );
setEffAlphaKey( spep_3 + 89, kidan, 255 );
setEffAlphaKey( spep_3 + 90, kidan, 0 );

--SE
--画面入り
SE006 = playSeVer2( spep_3 + 0, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE006, 80 );

--気弾溜め
SE007 = playSeVer2( spep_3 + 24, 1191, "",spep_3 + 50, 0, 8, -1);
SE008 = playSeVer2( spep_3 + 26, 1262, "",spep_3 + 50, 0, 8, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 92, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    
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
--気弾発射
SE009 = playSeVer2( spep_3 + 40, 1146, "",spep_3 + 188, 0, 6, -1);
SE010 = playSeVer2( spep_3 + 40, 1027, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_3 + 40, 1177, "",spep_3 + 188, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 40, SE011, 77 );

--次の準備 
spep_4=spep_3+90;
------------------------------------------------------
--迫る気弾
------------------------------------------------------
-- ** エフェクト等 ** --
approaching_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, approaching_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 88, approaching_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, approaching_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 88, approaching_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, approaching_f, 0 );
setEffRotateKey( spep_4 + 88, approaching_f, 0 );
setEffAlphaKey( spep_4 + 0, approaching_f, 255 );
setEffAlphaKey( spep_4 + 86, approaching_f, 255 );
setEffAlphaKey( spep_4 + 87, approaching_f, 255 );
setEffAlphaKey( spep_4 + 88, approaching_f, 0 );

-- ** エフェクト等 ** --
approaching_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, approaching_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 88, approaching_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, approaching_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 88, approaching_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, approaching_b, 0 );
setEffRotateKey( spep_4 + 88, approaching_b, 0 );
setEffAlphaKey( spep_4 + 0, approaching_b, 255 );
setEffAlphaKey( spep_4 + 86, approaching_b, 255 );
setEffAlphaKey( spep_4 + 87, approaching_b, 255 );
setEffAlphaKey( spep_4 + 88, approaching_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 88, 1, 0 );

setBlendColor(spep_4 + 0 ,1 ,3 ,0 ,0 ,0 ,0.5 );
setBlendColor(spep_4 + 88 ,1 ,3 ,0 ,0 ,0 ,0.5 );
setBlendColor(spep_4 + 89 ,1 ,3 ,0 ,0 ,0 ,0.5 );
setBlendColor(spep_4 + 90 ,1 ,3 ,0 ,0 ,0 ,0 );

changeAnime( spep_4 + 0, 1, 118 );

setMoveKey( spep_4 + 0, 1, 225.9, -399.2 , 0 );
setMoveKey( spep_4 + 2, 1, 222.8, -393.7 , 0 );
setMoveKey( spep_4 + 4, 1, 219.7, -388.1 , 0 );
setMoveKey( spep_4 + 6, 1, 216.5, -382.6 , 0 );
setMoveKey( spep_4 + 8, 1, 213.4, -377 , 0 );
setMoveKey( spep_4 + 10, 1, 210.2, -371.5 , 0 );
setMoveKey( spep_4 + 12, 1, 207.1, -366 , 0 );
setMoveKey( spep_4 + 14, 1, 206.8, -365.4 , 0 );
setMoveKey( spep_4 + 16, 1, 206.5, -364.9 , 0 );
setMoveKey( spep_4 + 18, 1, 206.2, -364.4 , 0 );
setMoveKey( spep_4 + 20, 1, 205.9, -363.8 , 0 );
setMoveKey( spep_4 + 22, 1, 205.6, -363.3 , 0 );
setMoveKey( spep_4 + 24, 1, 205.3, -362.8 , 0 );
setMoveKey( spep_4 + 26, 1, 205, -362.2 , 0 );
setMoveKey( spep_4 + 28, 1, 204.7, -361.7 , 0 );
setMoveKey( spep_4 + 30, 1, 204.4, -361.2 , 0 );
setMoveKey( spep_4 + 32, 1, 204.1, -360.6 , 0 );
setMoveKey( spep_4 + 34, 1, 203.8, -360.1 , 0 );
setMoveKey( spep_4 + 36, 1, 203.5, -359.6 , 0 );
setMoveKey( spep_4 + 38, 1, 203.2, -359 , 0 );
setMoveKey( spep_4 + 40, 1, 202.9, -358.5 , 0 );
setMoveKey( spep_4 + 42, 1, 202.6, -357.9 , 0 );
setMoveKey( spep_4 + 44, 1, 202.3, -357.4 , 0 );
setMoveKey( spep_4 + 46, 1, 202, -356.9 , 0 );
setMoveKey( spep_4 + 48, 1, 201.7, -356.4 , 0 );
setMoveKey( spep_4 + 50, 1, 201.4, -355.8 , 0 );
setMoveKey( spep_4 + 52, 1, 201.1, -355.3 , 0 );
setMoveKey( spep_4 + 54, 1, 200.8, -354.7 , 0 );
setMoveKey( spep_4 + 56, 1, 200.5, -354.2 , 0 );
setMoveKey( spep_4 + 58, 1, 200.2, -353.7 , 0 );
setMoveKey( spep_4 + 60, 1, 199.9, -353.1 , 0 );
setMoveKey( spep_4 + 62, 1, 199.6, -352.6 , 0 );
setMoveKey( spep_4 + 64, 1, 199.3, -352.1 , 0 );
setMoveKey( spep_4 + 66, 1, 198.9, -351.5 , 0 );
setMoveKey( spep_4 + 68, 1, 198.6, -351 , 0 );
setMoveKey( spep_4 + 70, 1, 198.3, -350.5 , 0 );
setMoveKey( spep_4 + 72, 1, 198, -349.9 , 0 );
setMoveKey( spep_4 + 74, 1, 197.7, -349.4 , 0 );
setMoveKey( spep_4 + 76, 1, 197.4, -348.9 , 0 );
setMoveKey( spep_4 + 78, 1, 197.1, -348.3 , 0 );
setMoveKey( spep_4 + 80, 1, 196.8, -347.8 , 0 );
setMoveKey( spep_4 + 82, 1, 196.5, -347.3 , 0 );
setMoveKey( spep_4 + 84, 1, 196.2, -346.7 , 0 );
setMoveKey( spep_4 + 86, 1, 195.9, -346.2 , 0 );
setMoveKey( spep_4 + 88, 1, 195.6, -345.7 , 0 );

setScaleKey( spep_4 + 0, 1, 3.62, 3.62 );
setScaleKey( spep_4 + 2, 1, 3.57, 3.57 );
setScaleKey( spep_4 + 4, 1, 3.52, 3.52 );
setScaleKey( spep_4 + 6, 1, 3.47, 3.47 );
setScaleKey( spep_4 + 8, 1, 3.42, 3.42 );
setScaleKey( spep_4 + 10, 1, 3.37, 3.37 );
setScaleKey( spep_4 + 12, 1, 3.32, 3.32 );
setScaleKey( spep_4 + 14, 1, 3.31, 3.31 );
setScaleKey( spep_4 + 16, 1, 3.31, 3.31 );
setScaleKey( spep_4 + 18, 1, 3.3, 3.3 );
setScaleKey( spep_4 + 20, 1, 3.3, 3.3 );
setScaleKey( spep_4 + 22, 1, 3.29, 3.29 );
setScaleKey( spep_4 + 24, 1, 3.29, 3.29 );
setScaleKey( spep_4 + 26, 1, 3.28, 3.28 );
setScaleKey( spep_4 + 30, 1, 3.28, 3.28 );
setScaleKey( spep_4 + 32, 1, 3.27, 3.27 );
setScaleKey( spep_4 + 34, 1, 3.27, 3.27 );
setScaleKey( spep_4 + 36, 1, 3.26, 3.26 );
setScaleKey( spep_4 + 38, 1, 3.26, 3.26 );
setScaleKey( spep_4 + 40, 1, 3.25, 3.25 );
setScaleKey( spep_4 + 42, 1, 3.25, 3.25 );
setScaleKey( spep_4 + 44, 1, 3.24, 3.24 );
setScaleKey( spep_4 + 46, 1, 3.24, 3.24 );
setScaleKey( spep_4 + 48, 1, 3.23, 3.23 );
setScaleKey( spep_4 + 50, 1, 3.23, 3.23 );
setScaleKey( spep_4 + 52, 1, 3.22, 3.22 );
setScaleKey( spep_4 + 54, 1, 3.22, 3.22 );
setScaleKey( spep_4 + 56, 1, 3.21, 3.21 );
setScaleKey( spep_4 + 58, 1, 3.21, 3.21 );
setScaleKey( spep_4 + 60, 1, 3.2, 3.2 );
setScaleKey( spep_4 + 62, 1, 3.2, 3.2 );
setScaleKey( spep_4 + 64, 1, 3.19, 3.19 );
setScaleKey( spep_4 + 66, 1, 3.19, 3.19 );
setScaleKey( spep_4 + 68, 1, 3.18, 3.18 );
setScaleKey( spep_4 + 70, 1, 3.18, 3.18 );
setScaleKey( spep_4 + 72, 1, 3.17, 3.17 );
setScaleKey( spep_4 + 74, 1, 3.17, 3.17 );
setScaleKey( spep_4 + 76, 1, 3.16, 3.16 );
setScaleKey( spep_4 + 78, 1, 3.16, 3.16 );
setScaleKey( spep_4 + 80, 1, 3.15, 3.15 );
setScaleKey( spep_4 + 82, 1, 3.15, 3.15 );
setScaleKey( spep_4 + 84, 1, 3.14, 3.14 );
setScaleKey( spep_4 + 86, 1, 3.14, 3.14 );
setScaleKey( spep_4 + 88, 1, 3.13, 3.13 );

setRotateKey( spep_4 + 0, 1, 10.2 );
setRotateKey( spep_4 + 88, 1, 10.2 );

--SE
--気弾せまる
SE012 = playSeVer2( spep_4 + 0, 1021, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_5=spep_4+88;
------------------------------------------------------
--ギャン赤
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, gyan, 0, 0, 0 );
setEffMoveKey( spep_5 + 66, gyan, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 66, gyan, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 66, gyan, 0 );
setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 64, gyan, 255 );
setEffAlphaKey( spep_5 + 65, gyan, 255 );
setEffAlphaKey( spep_5 + 66, gyan, 0 );

--SE
--ギャン
SE013 = playSeVer2( spep_5 + 0, 1023, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_6=spep_5+66;
------------------------------------------------------
--地面で爆発～フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 210, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 210, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 210, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 210, finish, 255 );

--SE
--爆発
SE014 = playSeVer2( spep_6 + 0, 1159, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_6 + 36, 1024, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_6+40);
endPhase( spep_6 + 140 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--下を見ているザーボン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
overlook_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, overlook_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 108, overlook_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, overlook_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 108, overlook_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, overlook_f, 0 );
setEffRotateKey( spep_0 + 108, overlook_f, 0 );
setEffAlphaKey( spep_0 + 0, overlook_f, 255 );
setEffAlphaKey( spep_0 + 106, overlook_f, 255 );
setEffAlphaKey( spep_0 + 107, overlook_f, 255 );
setEffAlphaKey( spep_0 + 108, overlook_f, 0 );

-- ** エフェクト等 ** --
overlook_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, overlook_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 108, overlook_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, overlook_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 108, overlook_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, overlook_b, 0 );
setEffRotateKey( spep_0 + 108, overlook_b, 0 );
setEffAlphaKey( spep_0 + 0, overlook_b, 255 );
setEffAlphaKey( spep_0 + 106, overlook_b, 255 );
setEffAlphaKey( spep_0 + 107, overlook_b, 255 );
setEffAlphaKey( spep_0 + 108, overlook_b, 0 );

--敵の動き
setDisp( spep_0-3 + 58, 1, 1 );
setDisp( spep_0 + 108, 1, 0 );
changeAnime( spep_0-3 + 58, 1, 117 );

setMoveKey( spep_0-3 + 58, 1, 375.6, -597.2 , 0 );
setMoveKey( spep_0-3 + 59, 1, 375.6, -597.2 , 0 );
setMoveKey( spep_0-3 + 60, 1, 199.6, -358.9 , 0 );
setMoveKey( spep_0-3 + 62, 1, 197.5, -356 , 0 );
setMoveKey( spep_0-3 + 64, 1, 195.3, -353.1 , 0 );
setMoveKey( spep_0-3 + 66, 1, 193.2, -350.2 , 0 );
setMoveKey( spep_0-3 + 68, 1, 191.1, -347.3 , 0 );
setMoveKey( spep_0-3 + 70, 1, 188.9, -344.5 , 0 );
setMoveKey( spep_0-3 + 72, 1, 186.8, -341.5 , 0 );
setMoveKey( spep_0-3 + 74, 1, 184.7, -338.7 , 0 );
setMoveKey( spep_0-3 + 76, 1, 182.5, -335.8 , 0 );
setMoveKey( spep_0-3 + 78, 1, 180.4, -332.9 , 0 );
setMoveKey( spep_0-3 + 80, 1, 178.3, -330 , 0 );
setMoveKey( spep_0-3 + 82, 1, 176.2, -327.1 , 0 );
setMoveKey( spep_0-3 + 84, 1, 174, -324.3 , 0 );
setMoveKey( spep_0-3 + 86, 1, 171.9, -321.4 , 0 );
setMoveKey( spep_0-3 + 88, 1, 169.8, -318.5 , 0 );
setMoveKey( spep_0-3 + 90, 1, 167.6, -315.6 , 0 );
setMoveKey( spep_0-3 + 92, 1, 165.5, -312.7 , 0 );
setMoveKey( spep_0-3 + 94, 1, 163.4, -309.8 , 0 );
setMoveKey( spep_0-3 + 96, 1, 161.2, -307 , 0 );
setMoveKey( spep_0-3 + 98, 1, 159.1, -304.1 , 0 );
setMoveKey( spep_0-3 + 100, 1, 157, -301.2 , 0 );
setMoveKey( spep_0-3 + 102, 1, 154.9, -298.3 , 0 );
setMoveKey( spep_0-3 + 104, 1, 152.7, -295.4 , 0 );
setMoveKey( spep_0-3 + 106, 1, 150.6, -292.5 , 0 );
setMoveKey( spep_0-3 + 108, 1, 148.5, -289.6 , 0 );
setMoveKey( spep_0-3 + 110, 1, 146.3, -286.7 , 0 );
setMoveKey( spep_0 + 108, 1, 146.3, -286.7 , 0 );

setScaleKey( spep_0-3 + 58, 1, 0.56, 0.56 );
setScaleKey( spep_0-3 + 59, 1, 0.56, 0.56 );
setScaleKey( spep_0-3 + 60, 1, 0.47, 0.47 );
--setScaleKey( spep_0-3 + 62, 1, 0.47, 0.47 );
--setScaleKey( spep_0-3 + 64, 1, 0.46, 0.46 );
setScaleKey( spep_0-3 + 82, 1, 0.46, 0.46 );
--setScaleKey( spep_0-3 + 84, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 100, 1, 0.45, 0.45 );
--setScaleKey( spep_0-3 + 102, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 108, 1, 0.44, 0.44 );

setRotateKey( spep_0-3 + 58, 1, 0 );
setRotateKey( spep_0+108 + 58, 1, 0 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 76 );
setPitch( spep_0 + 0, SE001, -500 );
setTimeStretch( SE001, 0.67, 30, 4 );

--画面遷移
SE002 = playSeVer2( spep_0 + 44, 44, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 114, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_1=spep_0+108;
------------------------------------------------------
--カットイン
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 90, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_1 + 90, tame, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 90, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 90, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_1 +0;

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
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--腕掴む
SE004 = playSeVer2( spep_1 + 22, 1006, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_1 + 82, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_2=spep_1+90;
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
--気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, kidan, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, kidan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kidan, 0 );
setEffRotateKey( spep_3 + 90, kidan, 0 );
setEffAlphaKey( spep_3 + 0, kidan, 255 );
setEffAlphaKey( spep_3 + 88, kidan, 255 );
setEffAlphaKey( spep_3 + 89, kidan, 255 );
setEffAlphaKey( spep_3 + 90, kidan, 0 );

--SE
--画面入り
SE006 = playSeVer2( spep_3 + 0, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE006, 80 );

--気弾溜め
SE007 = playSeVer2( spep_3 + 24, 1191, "",spep_3 + 50, 0, 8, -1);
SE008 = playSeVer2( spep_3 + 26, 1262, "",spep_3 + 50, 0, 8, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 92, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    
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
--気弾発射
SE009 = playSeVer2( spep_3 + 40, 1146, "",spep_3 + 188, 0, 6, -1);
SE010 = playSeVer2( spep_3 + 40, 1027, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_3 + 40, 1177, "",spep_3 + 188, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 40, SE011, 77 );

--次の準備 
spep_4=spep_3+90;
------------------------------------------------------
--迫る気弾
------------------------------------------------------
-- ** エフェクト等 ** --
approaching_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, approaching_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 88, approaching_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, approaching_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 88, approaching_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, approaching_f, 0 );
setEffRotateKey( spep_4 + 88, approaching_f, 0 );
setEffAlphaKey( spep_4 + 0, approaching_f, 255 );
setEffAlphaKey( spep_4 + 86, approaching_f, 255 );
setEffAlphaKey( spep_4 + 87, approaching_f, 255 );
setEffAlphaKey( spep_4 + 88, approaching_f, 0 );

-- ** エフェクト等 ** --
approaching_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, approaching_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 88, approaching_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, approaching_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 88, approaching_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, approaching_b, 0 );
setEffRotateKey( spep_4 + 88, approaching_b, 0 );
setEffAlphaKey( spep_4 + 0, approaching_b, 255 );
setEffAlphaKey( spep_4 + 86, approaching_b, 255 );
setEffAlphaKey( spep_4 + 87, approaching_b, 255 );
setEffAlphaKey( spep_4 + 88, approaching_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 88, 1, 0 );

setBlendColor(spep_4 + 0 ,1 ,3 ,0 ,0 ,0 ,0.5 );
setBlendColor(spep_4 + 88 ,1 ,3 ,0 ,0 ,0 ,0.5 );
setBlendColor(spep_4 + 89 ,1 ,3 ,0 ,0 ,0 ,0.5 );
setBlendColor(spep_4 + 90 ,1 ,3 ,0 ,0 ,0 ,0 );

changeAnime( spep_4 + 0, 1, 118 );

setMoveKey( spep_4 + 0, 1, 225.9, -399.2 , 0 );
setMoveKey( spep_4 + 2, 1, 222.8, -393.7 , 0 );
setMoveKey( spep_4 + 4, 1, 219.7, -388.1 , 0 );
setMoveKey( spep_4 + 6, 1, 216.5, -382.6 , 0 );
setMoveKey( spep_4 + 8, 1, 213.4, -377 , 0 );
setMoveKey( spep_4 + 10, 1, 210.2, -371.5 , 0 );
setMoveKey( spep_4 + 12, 1, 207.1, -366 , 0 );
setMoveKey( spep_4 + 14, 1, 206.8, -365.4 , 0 );
setMoveKey( spep_4 + 16, 1, 206.5, -364.9 , 0 );
setMoveKey( spep_4 + 18, 1, 206.2, -364.4 , 0 );
setMoveKey( spep_4 + 20, 1, 205.9, -363.8 , 0 );
setMoveKey( spep_4 + 22, 1, 205.6, -363.3 , 0 );
setMoveKey( spep_4 + 24, 1, 205.3, -362.8 , 0 );
setMoveKey( spep_4 + 26, 1, 205, -362.2 , 0 );
setMoveKey( spep_4 + 28, 1, 204.7, -361.7 , 0 );
setMoveKey( spep_4 + 30, 1, 204.4, -361.2 , 0 );
setMoveKey( spep_4 + 32, 1, 204.1, -360.6 , 0 );
setMoveKey( spep_4 + 34, 1, 203.8, -360.1 , 0 );
setMoveKey( spep_4 + 36, 1, 203.5, -359.6 , 0 );
setMoveKey( spep_4 + 38, 1, 203.2, -359 , 0 );
setMoveKey( spep_4 + 40, 1, 202.9, -358.5 , 0 );
setMoveKey( spep_4 + 42, 1, 202.6, -357.9 , 0 );
setMoveKey( spep_4 + 44, 1, 202.3, -357.4 , 0 );
setMoveKey( spep_4 + 46, 1, 202, -356.9 , 0 );
setMoveKey( spep_4 + 48, 1, 201.7, -356.4 , 0 );
setMoveKey( spep_4 + 50, 1, 201.4, -355.8 , 0 );
setMoveKey( spep_4 + 52, 1, 201.1, -355.3 , 0 );
setMoveKey( spep_4 + 54, 1, 200.8, -354.7 , 0 );
setMoveKey( spep_4 + 56, 1, 200.5, -354.2 , 0 );
setMoveKey( spep_4 + 58, 1, 200.2, -353.7 , 0 );
setMoveKey( spep_4 + 60, 1, 199.9, -353.1 , 0 );
setMoveKey( spep_4 + 62, 1, 199.6, -352.6 , 0 );
setMoveKey( spep_4 + 64, 1, 199.3, -352.1 , 0 );
setMoveKey( spep_4 + 66, 1, 198.9, -351.5 , 0 );
setMoveKey( spep_4 + 68, 1, 198.6, -351 , 0 );
setMoveKey( spep_4 + 70, 1, 198.3, -350.5 , 0 );
setMoveKey( spep_4 + 72, 1, 198, -349.9 , 0 );
setMoveKey( spep_4 + 74, 1, 197.7, -349.4 , 0 );
setMoveKey( spep_4 + 76, 1, 197.4, -348.9 , 0 );
setMoveKey( spep_4 + 78, 1, 197.1, -348.3 , 0 );
setMoveKey( spep_4 + 80, 1, 196.8, -347.8 , 0 );
setMoveKey( spep_4 + 82, 1, 196.5, -347.3 , 0 );
setMoveKey( spep_4 + 84, 1, 196.2, -346.7 , 0 );
setMoveKey( spep_4 + 86, 1, 195.9, -346.2 , 0 );
setMoveKey( spep_4 + 88, 1, 195.6, -345.7 , 0 );

setScaleKey( spep_4 + 0, 1, 3.62, 3.62 );
setScaleKey( spep_4 + 2, 1, 3.57, 3.57 );
setScaleKey( spep_4 + 4, 1, 3.52, 3.52 );
setScaleKey( spep_4 + 6, 1, 3.47, 3.47 );
setScaleKey( spep_4 + 8, 1, 3.42, 3.42 );
setScaleKey( spep_4 + 10, 1, 3.37, 3.37 );
setScaleKey( spep_4 + 12, 1, 3.32, 3.32 );
setScaleKey( spep_4 + 14, 1, 3.31, 3.31 );
setScaleKey( spep_4 + 16, 1, 3.31, 3.31 );
setScaleKey( spep_4 + 18, 1, 3.3, 3.3 );
setScaleKey( spep_4 + 20, 1, 3.3, 3.3 );
setScaleKey( spep_4 + 22, 1, 3.29, 3.29 );
setScaleKey( spep_4 + 24, 1, 3.29, 3.29 );
setScaleKey( spep_4 + 26, 1, 3.28, 3.28 );
setScaleKey( spep_4 + 30, 1, 3.28, 3.28 );
setScaleKey( spep_4 + 32, 1, 3.27, 3.27 );
setScaleKey( spep_4 + 34, 1, 3.27, 3.27 );
setScaleKey( spep_4 + 36, 1, 3.26, 3.26 );
setScaleKey( spep_4 + 38, 1, 3.26, 3.26 );
setScaleKey( spep_4 + 40, 1, 3.25, 3.25 );
setScaleKey( spep_4 + 42, 1, 3.25, 3.25 );
setScaleKey( spep_4 + 44, 1, 3.24, 3.24 );
setScaleKey( spep_4 + 46, 1, 3.24, 3.24 );
setScaleKey( spep_4 + 48, 1, 3.23, 3.23 );
setScaleKey( spep_4 + 50, 1, 3.23, 3.23 );
setScaleKey( spep_4 + 52, 1, 3.22, 3.22 );
setScaleKey( spep_4 + 54, 1, 3.22, 3.22 );
setScaleKey( spep_4 + 56, 1, 3.21, 3.21 );
setScaleKey( spep_4 + 58, 1, 3.21, 3.21 );
setScaleKey( spep_4 + 60, 1, 3.2, 3.2 );
setScaleKey( spep_4 + 62, 1, 3.2, 3.2 );
setScaleKey( spep_4 + 64, 1, 3.19, 3.19 );
setScaleKey( spep_4 + 66, 1, 3.19, 3.19 );
setScaleKey( spep_4 + 68, 1, 3.18, 3.18 );
setScaleKey( spep_4 + 70, 1, 3.18, 3.18 );
setScaleKey( spep_4 + 72, 1, 3.17, 3.17 );
setScaleKey( spep_4 + 74, 1, 3.17, 3.17 );
setScaleKey( spep_4 + 76, 1, 3.16, 3.16 );
setScaleKey( spep_4 + 78, 1, 3.16, 3.16 );
setScaleKey( spep_4 + 80, 1, 3.15, 3.15 );
setScaleKey( spep_4 + 82, 1, 3.15, 3.15 );
setScaleKey( spep_4 + 84, 1, 3.14, 3.14 );
setScaleKey( spep_4 + 86, 1, 3.14, 3.14 );
setScaleKey( spep_4 + 88, 1, 3.13, 3.13 );

setRotateKey( spep_4 + 0, 1, 10.2 );
setRotateKey( spep_4 + 88, 1, 10.2 );

--SE
--気弾せまる
SE012 = playSeVer2( spep_4 + 0, 1021, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_5=spep_4+88;
------------------------------------------------------
--ギャン赤
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, gyan, 0, 0, 0 );
setEffMoveKey( spep_5 + 66, gyan, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, gyan, -1.0, 1.0 );
setEffScaleKey( spep_5 + 66, gyan, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 66, gyan, 0 );
setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 64, gyan, 255 );
setEffAlphaKey( spep_5 + 65, gyan, 255 );
setEffAlphaKey( spep_5 + 66, gyan, 0 );

--SE
--ギャン
SE013 = playSeVer2( spep_5 + 0, 1023, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_6=spep_5+66;
------------------------------------------------------
--地面で爆発～フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 210, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_6 + 210, finish, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 210, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 210, finish, 255 );

--SE
--爆発
SE014 = playSeVer2( spep_6 + 0, 1159, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_6 + 36, 1024, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_6+40);
endPhase( spep_6 + 140 );
end