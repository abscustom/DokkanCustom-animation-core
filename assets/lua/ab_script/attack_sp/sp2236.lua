--1022450:ピッコロ_捨て身の援護射撃
--sp_effect_b1_00158
--sp2236

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
SP_01=	157843	;--	敵と対峙する(味方側)
SP_02=	157844	;--	敵と対峙する(味方側)
SP_03=	157847	;--	画面に向かってダッシュしてくる
SP_04=	157848	;--	画面に向かってダッシュしてくる
SP_05=	157849	;--	蹴り飛ばす（味方側）
SP_06=	157850	;--	蹴り飛ばす（味方側）
SP_07=	157853	;--	蹴った敵が吹っ飛ぶ（味方側）
SP_08=	157854	;--	蹴った敵が吹っ飛ぶ（味方側）
SP_09=	157857	;--	叩き落とす（味方側）
SP_10=	157858	;--	叩き落とす（味方側）
SP_11=	157861	;--	地面とピッコロが映る
SP_12=	157862	;--	気弾を撃つ（味方側）
SP_13=	157864	;--	フィニッシュ

--エフェクト(てき)
SP_01x=	157845	;--	敵と対峙する(敵側)
SP_02x=	157846	;--	敵と対峙する(敵側)
SP_03x=	157847	;--	画面に向かってダッシュしてくる
SP_04x=	157848	;--	画面に向かってダッシュしてくる
SP_05x=	157851	;--	蹴り飛ばす（敵側）
SP_06x=	157852	;--	蹴り飛ばす（敵側）
SP_07x=	157855	;--	蹴った敵が吹っ飛ぶ（敵側）
SP_08x=	157856	;--	蹴った敵が吹っ飛ぶ（敵側）
SP_09x=	157859	;--	叩き落とす（敵側）
SP_10x=	157860	;--	叩き落とす（敵側）
SP_11x=	157861	;--	地面とピッコロが映る
SP_12x=	157863	;--	気弾を撃つ（敵側）
SP_13x=	157864	;--	フィニッシュ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.8);


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

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 78;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 34;
        spep_3 = spep_2 + 94;
        spep_4 = spep_3 + 72;
        spep_5 = spep_4 + 50;
        spep_6 = spep_5 + 60;
        spep_7=spep_6+152;
        spep_8=spep_7+84;
        spep_9=spep_8+196;

        timing_skip = 6;
        skipFrame(0, spep_9 + timing_skip );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --ラスト爆発
        SE054 = playSeVer2( spep_9 + 6+3, 1159, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_9 + 6+3, SE054, 110 );
        SE055 = playSeVer2( spep_9 + 10+3, 1188, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_9 + 10+3, SE055, 120 );

    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--敵と対峙
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
confrontation_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, confrontation_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 78, confrontation_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 78, confrontation_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation_f, 0 );
setEffRotateKey( spep_0 + 78, confrontation_f, 0 );
setEffAlphaKey( spep_0 + 0, confrontation_f, 255 );
setEffAlphaKey( spep_0 + 76, confrontation_f, 255 );
setEffAlphaKey( spep_0 + 77, confrontation_f, 255 );
setEffAlphaKey( spep_0 + 78, confrontation_f, 0 );

-- ** エフェクト等 ** --
confrontation_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, confrontation_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 78, confrontation_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 78, confrontation_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation_b, 0 );
setEffRotateKey( spep_0 + 78, confrontation_b, 0 );
setEffAlphaKey( spep_0 + 0, confrontation_b, 255 );
setEffAlphaKey( spep_0 + 76, confrontation_b, 255 );
setEffAlphaKey( spep_0 + 77, confrontation_b, 255 );
setEffAlphaKey( spep_0 + 78, confrontation_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 32, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 157.8, -18 , 0 );
setMoveKey( spep_0 + 1, 1, 157.8, -18 , 0 );
setMoveKey( spep_0 + 2, 1, 162.5, -17.7 , 0 );
setMoveKey( spep_0 + 3, 1, 162.5, -17.7 , 0 );
setMoveKey( spep_0 + 4, 1, 167.3, -17.4 , 0 );
setMoveKey( spep_0 + 5, 1, 167.3, -17.4 , 0 );
setMoveKey( spep_0 + 6, 1, 172.1, -17.1 , 0 );
setMoveKey( spep_0 + 8, 1, 176.8, -16.8 , 0 );
setMoveKey( spep_0 + 10, 1, 181.5, -16.5 , 0 );
setMoveKey( spep_0 + 12, 1, 186.3, -16.2 , 0 );
setMoveKey( spep_0 + 14, 1, 191, -15.9 , 0 );
setMoveKey( spep_0 + 16, 1, 195.7, -15.6 , 0 );
setMoveKey( spep_0 + 18, 1, 200.5, -15.3 , 0 );
setMoveKey( spep_0 + 20, 1, 205.2, -15 , 0 );
setMoveKey( spep_0 + 22, 1, 209.9, -14.7 , 0 );
setMoveKey( spep_0 + 24, 1, 214.7, -14.4 , 0 );
setMoveKey( spep_0 + 26, 1, 219.5, -14.1 , 0 );
setMoveKey( spep_0 + 28, 1, 224.2, -13.8 , 0 );
setMoveKey( spep_0 + 30, 1, 413.8, -7.5 , 0 );
setMoveKey( spep_0 + 32, 1, 632.6, -1.2 , 0 );

setScaleKey( spep_0 + 0, 1, 2.58,2.58);
setScaleKey( spep_0 + 1, 1, 2.58,2.58);
setScaleKey( spep_0 + 2, 1, 2.58,2.58);
setScaleKey( spep_0 + 3, 1, 2.58,2.58);
setScaleKey( spep_0 + 4, 1, 2.64,2.64);
setScaleKey( spep_0 + 5, 1, 2.64,2.64);
setScaleKey( spep_0 + 6, 1, 2.64,2.64);
setScaleKey( spep_0 + 8, 1, 2.7,2.7);
setScaleKey( spep_0 + 12, 1, 2.77,2.77);
setScaleKey( spep_0 + 16, 1, 2.83,2.83);
setScaleKey( spep_0 + 18, 1, 2.89,2.89);
setScaleKey( spep_0 + 20, 1, 2.96,2.96);
setScaleKey( spep_0 + 22, 1, 2.96,2.96);
setScaleKey( spep_0 + 26, 1, 3.02,3.02);
setScaleKey( spep_0 + 28, 1, 3.08,3.08);
setScaleKey( spep_0 + 30, 1, 4.91,4.91);
setScaleKey( spep_0 + 32, 1, 7.18,7.18);

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 32, 1, 0 );

--SE
--入り
--SE001 = playSe( spep_0 + 0, 1072 );

--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_1=spep_0+78;
------------------------------------------------------
--画面に向かってダッシュしてくる
------------------------------------------------------
-- ** エフェクト等 ** --
dash = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash, 0, 0, 0 );
setEffMoveKey( spep_1 + 34, dash, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_1 + 34, dash, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash, 0 );
setEffRotateKey( spep_1 + 34, dash, 0 );
setEffAlphaKey( spep_1 + 0, dash, 255 );
setEffAlphaKey( spep_1 + 34, dash, 255 );

--SE
--[[ダッシュ
SE002 = playSe( spep_1 + 0, 1189 );
SE003 = playSe( spep_1 + 6, 9 );
SE004 = playSe( spep_1 + 6, 1182 );]]

--ダッシュ
SE002 = playSeVer2( spep_1 + 0, 1189, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_1 + 6, 9, "",spep_1 +42, 0, 6, -1);
SE004 = playSeVer2( spep_1 + 6, 1182, "",spep_1 + 42, 0, 6, -1);

--白フェード
entryFade( spep_1 + 26, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_c=spep_1+34;
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
spep_3= spep_c+ 94;
------------------------------------------------------
--画面に向かってダッシュしてくる
------------------------------------------------------
-- ** エフェクト等 ** --
dash2 = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, dash2, 0, 0, 0 );
setEffMoveKey( spep_3 + 74, dash2, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, dash2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 74, dash2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, dash2, 0 );
setEffRotateKey( spep_3 + 74, dash2, 0 );
setEffAlphaKey( spep_3 + 0, dash2, 255 );
setEffAlphaKey( spep_3 + 72, dash2, 255 );
setEffAlphaKey( spep_3 + 73+1, dash2, 255 );
--setEffAlphaKey( spep_3 + 74, dash2, 0 );

--SE
--[[向かってくる
SE006 = playSe( spep_3 + 0, 1314 );
SE007 = playSe( spep_3 + 0, 1175 );
setSeVolumeByWorkId( spep_3 + 0, SE007, 64 );
SE008 = playSe( spep_3 + 26, 1072 );]]

--向かってくる
SE006 = playSeVer2( spep_3 + 0, 1314, "",spep_3 + 90, 0, 20, -1);
SE007 = playSeVer2( spep_3 + 0, 1175, "",spep_3 + 90, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 0, SE007, 64 );
SE008 = playSeVer2( spep_3 + 26, 1072, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--SE
--[[向かってくる
stopSe( spep_3 + 70, SE007, 20 );
stopSe( spep_3 + 70, SE006, 20 );]]

--次の準備 
spep_4=spep_3+74-2;
------------------------------------------------------
--蹴り飛ばす
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 50, kick_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 50, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_f, 0 );
setEffRotateKey( spep_4 + 50, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 48, kick_f, 255 );
setEffAlphaKey( spep_4 + 49, kick_f, 255 );
setEffAlphaKey( spep_4 + 50, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 50, kick_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 50, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_b, 0 );
setEffRotateKey( spep_4 + 50, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 48, kick_b, 255 );
setEffAlphaKey( spep_4 + 49, kick_b, 255 );
setEffAlphaKey( spep_4 + 50, kick_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4-3 + 36, 1, 107 );

a=-60;
b=-40;

setMoveKey( spep_4 + 0, 1, -13.8, -184.8 , 0 );
--setMoveKey( spep_4-3 + 2, 1, -12.3, -161 , 0 );
setMoveKey( spep_4-3 + 4, 1, -10.9, -137.1 , 0 );
setMoveKey( spep_4-3 + 6, 1, -9.4, -113.2 , 0 );
setMoveKey( spep_4-3 + 8, 1, -7.9, -89.3 , 0 );
setMoveKey( spep_4-3 + 10, 1, -8.1, -87.5 , 0 );
setMoveKey( spep_4-3 + 12, 1, -8.3, -85.8 , 0 );
setMoveKey( spep_4-3 + 14, 1, -8.5, -84 , 0 );
setMoveKey( spep_4-3 + 16, 1, -8.7, -82.3 , 0 );
setMoveKey( spep_4-3 + 18, 1, -8.9, -80.5 , 0 );
setMoveKey( spep_4-3 + 20, 1, -9.1, -78.8 , 0 );
setMoveKey( spep_4-3 + 22, 1, -9.2, -77.1 , 0 );
setMoveKey( spep_4-3 + 24, 1, -9.4, -75.3 , 0 );
setMoveKey( spep_4-3 + 26, 1, -9.6, -73.6 , 0 );
setMoveKey( spep_4-3 + 28, 1, -9.8, -71.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, -10, -70.1 , 0 );
setMoveKey( spep_4-3 + 32, 1, -10.2, -68.4 , 0 );
setMoveKey( spep_4-3 + 35, 1, -10.3, -66.6 , 0 );

setMoveKey( spep_4-3 + 36, 1, 26.2+a, -40.1+b , 0 );
setMoveKey( spep_4-3 + 38, 1, 51.2+a, -52.1+b , 0 );
setMoveKey( spep_4-3 + 40, 1, 20.2+a, -22.1+b , 0 );
setMoveKey( spep_4-3 + 42, 1, 29.1+a, -48.1+b , 0 );
setMoveKey( spep_4-3 + 44, 1, 31.1+a, -29.1+b , 0 );
setMoveKey( spep_4-3 + 46, 1, 21.2+a, -55.1+b , 0 );
setMoveKey( spep_4-3 + 48, 1, 25.2+a, -36.1+b , 0 );
setMoveKey( spep_4-1 + 50, 1, 47.1+a, -55.1+b , 0 );
--setMoveKey( spep_4-1 + 52, 1, 27.2+a, -41.1+b , 0 );
--[[
setScaleKey( spep_4 + 0, 1, 5.48,5.48);
setScaleKey( spep_4-3 + 4, 1, 4.78,4.78);
setScaleKey( spep_4-3 + 6, 1, 4.41,4.41);
setScaleKey( spep_4-3 + 8, 1, 4.09,4.09);
setScaleKey( spep_4-3 + 10, 1, 4.09,4.09);
setScaleKey( spep_4-3 + 12, 1, 4.03,4.03);
setScaleKey( spep_4-3 + 14, 1, 4.03,4.03);
setScaleKey( spep_4-3 + 16, 1, 3.96,3.96);
setScaleKey( spep_4-3 + 18, 1, 3.96,3.96);
setScaleKey( spep_4-3 + 20, 1, 3.9,3.9);
setScaleKey( spep_4-3 + 24, 1, 3.9,3.9);
setScaleKey( spep_4-3 + 26, 1, 3.84,3.84);
setScaleKey( spep_4-3 + 28, 1, 3.84,3.84);
setScaleKey( spep_4-3 + 30, 1, 3.78,3.78);
setScaleKey( spep_4-3 + 35, 1, 3.78,3.78);
setScaleKey( spep_4-3 + 36, 1, 2.58,2.58);
setScaleKey( spep_4-3 + 52, 1, 2.58,2.58);
]]

setScaleKey( spep_4 + 0, 1, 5.48,5.48);
setScaleKey( spep_4-3 + 4, 1, 4.78,4.78);
setScaleKey( spep_4-3 + 6, 1, 4.41,4.41);
setScaleKey( spep_4-3 + 8, 1, 4.09,4.09);
setScaleKey( spep_4-3 + 10, 1, 4.09,4.09);
setScaleKey( spep_4-3 + 12, 1, 4.03,4.03);
setScaleKey( spep_4-3 + 14, 1, 4.03,4.03);
setScaleKey( spep_4-3 + 16, 1, 3.96,3.96);
setScaleKey( spep_4-3 + 18, 1, 3.96,3.96);
setScaleKey( spep_4-3 + 20, 1, 3.9,3.9);
setScaleKey( spep_4-3 + 24, 1, 3.9,3.9);
setScaleKey( spep_4-3 + 26, 1, 3.84,3.84);
setScaleKey( spep_4-3 + 28, 1, 3.84,3.84);
setScaleKey( spep_4-3 + 30, 1, 3.78,3.78);
setScaleKey( spep_4-3 + 35, 1, 3.78,3.78);
setScaleKey( spep_4-3 + 36, 1, 1.45,1.45);
setScaleKey( spep_4-1 + 50, 1, 1.45,1.45);


setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 35, 1, 0 );
setRotateKey( spep_4-3 + 36, 1, -55.2 );
setRotateKey( spep_4-1 + 50, 1, -55.2 );

--SE
--[[ピンクの光差す
SE009 = playSe( spep_4 + 0, 1116 ,"",0.6);
setPitch( spep_4 + 0, SE009, -300 );
setTimeStretch( SE009, 0.8, 10, 1 );
stopSe( spep_4 + 26, SE009, 12 );
SE010 = playSe( spep_4 + 6, 1179 ,"",0.6);
setSeVolumeByWorkId( spep_4 + 6, SE010, 184 );
setPitch( spep_4 + 6, SE010, -600 );
setTimeStretch( SE010, 0.6, 10, 1 );
stopSe( spep_4 + 40, SE010, 14 );]]

--ピンクの光差す
SE009 = playSeVer2( spep_4 + 0, 1116, "",spep_4 + 38, 0, 12, 0.6);
setPitch( spep_4 + 0, SE009, -300 );
setTimeStretch( SE009, 0.8, 10, 1 );
SE010 = playSeVer2( spep_4 + 6, 1179, "",spep_4 +54, 0, 14, 0.6);
setSeVolumeByWorkId( spep_4 + 6, SE010, 184 );
setPitch( spep_4 + 6, SE010, -600 );
setTimeStretch( SE010, 0.6, 10, 1 );

--[[キック
SE011 = playSe( spep_4 + 38, 1010 );
setSeVolumeByWorkId( spep_4 + 38, SE011, 82 );
SE012 = playSe( spep_4 + 38, 1187 );
setSeVolumeByWorkId( spep_4 + 38, SE012, 86 );
SE013 = playSe( spep_4 + 40, 1110 );
setSeVolumeByWorkId( spep_4 + 40, SE013, 93 );]]

--キック
SE011 = playSeVer2( spep_4 + 38, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 38, SE011, 82 );
SE012 = playSeVer2( spep_4 + 38, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 38, SE012, 86 );
SE013 = playSeVer2( spep_4 + 40, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 40, SE013, 93 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 52, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_5=spep_4+50;
------------------------------------------------------
--蹴った敵が吹っ飛ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
fly_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, fly_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, fly_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, fly_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, fly_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, fly_f, 0 );
setEffRotateKey( spep_5 + 60, fly_f, 0 );
setEffAlphaKey( spep_5 + 0, fly_f, 255 );
setEffAlphaKey( spep_5 + 58, fly_f, 255 );
setEffAlphaKey( spep_5 + 59, fly_f, 255 );
setEffAlphaKey( spep_5 + 60, fly_f, 0 );

-- ** エフェクト等 ** --
fly_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, fly_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, fly_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, fly_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, fly_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, fly_b, 0 );
setEffRotateKey( spep_5 + 60, fly_b, 0 );
setEffAlphaKey( spep_5 + 0, fly_b, 255 );
setEffAlphaKey( spep_5 + 58, fly_b, 255 );
setEffAlphaKey( spep_5 + 59, fly_b, 255 );
setEffAlphaKey( spep_5 + 60, fly_b, 0 );

--敵の動き
changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 258.5, 59.5 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 281.8, 55 , 0 );
setMoveKey( spep_5-3 + 4, 1, 295.4, 52.5 , 0 );
setMoveKey( spep_5-3 + 6, 1, 299.2, 51.9 , 0 );
setMoveKey( spep_5-3 + 8, 1, 298.2, 52.3 , 0 );
setMoveKey( spep_5-3 + 10, 1, 297.2, 52.6 , 0 );
setMoveKey( spep_5-3 + 12, 1, 296.1, 53 , 0 );
setMoveKey( spep_5-3 + 14, 1, 295, 53.3 , 0 );
setMoveKey( spep_5-3 + 16, 1, 294, 53.7 , 0 );
setMoveKey( spep_5-3 + 18, 1, 292.9, 54 , 0 );
setMoveKey( spep_5-3 + 20, 1, 291.9, 54.4 , 0 );
setMoveKey( spep_5-3 + 22, 1, 290.8, 54.7 , 0 );
setMoveKey( spep_5-3 + 24, 1, 289.7, 55.1 , 0 );
setMoveKey( spep_5-3 + 26, 1, 288.6, 55.5 , 0 );
setMoveKey( spep_5-3 + 28, 1, 287.5, 55.8 , 0 );
setMoveKey( spep_5-3 + 30, 1, 286.2, 56.2 , 0 );
setMoveKey( spep_5-3 + 32, 1, 284.8, 56.4 , 0 );
setMoveKey( spep_5-3 + 34, 1, 283.3, 56.5 , 0 );
setMoveKey( spep_5-3 + 36, 1, 231.6, 52.9 , 0 );
setMoveKey( spep_5-3 + 38, 1, 208.8, 51.6 , 0 );
setMoveKey( spep_5-3 + 40, 1, 174.6, 49.8 , 0 );
setMoveKey( spep_5-3 + 42, 1, 141.8, 45.5 , 0 );
setMoveKey( spep_5-3 + 44, 1, 104.2, 41 , 0 );
setMoveKey( spep_5-3 + 46, 1, 61.9, 36.5 , 0 );
setMoveKey( spep_5-3 + 48, 1, 55.5, 36.1 , 0 );
setMoveKey( spep_5-3 + 50, 1, 49, 35.6 , 0 );
setMoveKey( spep_5-3 + 52, 1, 42.6, 35.1 , 0 );
setMoveKey( spep_5-3 + 54, 1, 36.2, 34.7 , 0 );
setMoveKey( spep_5-3 + 56, 1, 29.9, 34.2 , 0 );
setMoveKey( spep_5-3 + 58, 1, 23.4, 33.7 , 0 );
setMoveKey( spep_5-3 + 60, 1, 17.1, 33.2 , 0 );
setMoveKey( spep_5-3 + 62, 1, 10.6, 32.7 , 0 );

setScaleKey( spep_5 + 0, 1, 0.63,0.63);
--setScaleKey( spep_5-3 + 2, 1, 0.37,0.37);
setScaleKey( spep_5-3 + 4, 1, 0.25,0.25);
setScaleKey( spep_5-3 + 6, 1, 0.18,0.18);
setScaleKey( spep_5-3 + 30, 1, 0.18,0.18);
setScaleKey( spep_5-3 + 32, 1, 0.31,0.31);
setScaleKey( spep_5-3 + 34, 1, 0.44,0.44);
setScaleKey( spep_5-3 + 36, 1, 0.75,0.75);
setScaleKey( spep_5-3 + 38, 1, 1.07,1.07);
setScaleKey( spep_5-3 + 40, 1, 1.44,1.44);
setScaleKey( spep_5-3 + 42, 1, 1.76,1.76);
setScaleKey( spep_5-3 + 44, 1, 2.14,2.14);
setScaleKey( spep_5-3 + 46, 1, 2.52,2.52);
setScaleKey( spep_5-3 + 48, 1, 2.58,2.58);
setScaleKey( spep_5-3 + 50, 1, 2.64,2.64);
setScaleKey( spep_5-3 + 52, 1, 2.7,2.7);
setScaleKey( spep_5-3 + 54, 1, 2.77,2.77);
setScaleKey( spep_5-3 + 56, 1, 2.83,2.83);
setScaleKey( spep_5-3 + 58, 1, 2.89,2.89);
setScaleKey( spep_5-3 + 60, 1, 2.96,2.96);
setScaleKey( spep_5-3 + 62, 1, 3.02,3.02);

setRotateKey( spep_5 + 0, 1, 34 );
--setRotateKey( spep_5-3 + 2, 1, 33.9 );
setRotateKey( spep_5-3 + 4, 1, 33.9 );
setRotateKey( spep_5-3 + 6, 1, 33.8 );
setRotateKey( spep_5-3 + 36, 1, 33.8 );
setRotateKey( spep_5-3 + 38, 1, 33.9 );
setRotateKey( spep_5-3 + 42, 1, 33.9 );
setRotateKey( spep_5-3 + 44, 1, 34 );
setRotateKey( spep_5-3 + 62, 1, 34 );

--SE
--[[敵飛んでいく
SE014 = playSe( spep_5 + 0, 1183 );

--[[瞬間移動
SE015 = playSe( spep_5 + 60, 1109 );]]

--敵飛んでいく
SE014 = playSeVer2( spep_5 + 0, 1183, "", 0, 0, 0, -1);

--瞬間移動
SE015 = playSeVer2( spep_5 + 60, 1109, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_6=spep_5+60;
------------------------------------------------------
--叩き落とす
------------------------------------------------------
-- ** エフェクト等 ** --
drop_f = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, drop_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 152, drop_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, drop_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 152, drop_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, drop_f, 0 );
setEffRotateKey( spep_6 + 152, drop_f, 0 );
setEffAlphaKey( spep_6 + 0, drop_f, 255 );
setEffAlphaKey( spep_6 + 150, drop_f, 255 );
setEffAlphaKey( spep_6 + 151, drop_f, 255 );
setEffAlphaKey( spep_6 + 152, drop_f, 0 );

-- ** エフェクト等 ** --
drop_b = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, drop_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 152, drop_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, drop_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 152, drop_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, drop_b, 0 );
setEffRotateKey( spep_6 + 152, drop_b, 0 );
setEffAlphaKey( spep_6 + 0, drop_b, 255 );
setEffAlphaKey( spep_6 + 150, drop_b, 255 );
setEffAlphaKey( spep_6 + 151, drop_b, 255 );
setEffAlphaKey( spep_6 + 152, drop_b, 0 );

--敵の動き
setDisp( spep_6 + 52, 1, 0 );

changeAnime( spep_6 + 0, 1, 105 );
changeAnime( spep_6-3 + 40, 1, 106 );

setMoveKey( spep_6 + 0, 1, 51.6, 11.7 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 48.6, 9 , 0 );
setMoveKey( spep_6-3 + 4, 1, 45.8, 6.8 , 0 );
setMoveKey( spep_6-3 + 6, 1, 43.1, 4.9 , 0 );
setMoveKey( spep_6-3 + 8, 1, 40.5, 3.2 , 0 );
setMoveKey( spep_6-3 + 10, 1, 37.8, 1.5 , 0 );
setMoveKey( spep_6-3 + 12, 1, 38.5, 3.8 , 0 );
setMoveKey( spep_6-3 + 14, 1, 39.2, 6.5 , 0 );
setMoveKey( spep_6-3 + 16, 1, 40.1, 9.8 , 0 );
setMoveKey( spep_6-3 + 18, 1, 41.1, 13.4 , 0 );
setMoveKey( spep_6-3 + 20, 1, 42.2, 17.4 , 0 );
setMoveKey( spep_6-3 + 22, 1, 43.4, 21.9 , 0 );
setMoveKey( spep_6-3 + 24, 1, 44.7, 26.8 , 0 );
setMoveKey( spep_6-3 + 26, 1, 46.1, 32.1 , 0 );
setMoveKey( spep_6-3 + 28, 1, 47.7, 37.8 , 0 );
setMoveKey( spep_6-3 + 30, 1, 49.4, 43.9 , 0 );
setMoveKey( spep_6-3 + 32, 1, 49.3, 43.8 , 0 );
setMoveKey( spep_6-3 + 34, 1, 49.3, 43.8 , 0 );
setMoveKey( spep_6-3 + 35, 1, 49.3, 43.8 , 0 );
setMoveKey( spep_6-3 + 36, 1, 44.4, -86.1 , 0 );

setMoveKey( spep_6-3 + 39, 1, 32.5, -147.5 , 0 );
setMoveKey( spep_6-3 + 40, 1, -56.2, -229.7 , 0 );
setMoveKey( spep_6-3 + 42, 1, -22.3, -545.5 , 0 );
setMoveKey( spep_6-3 + 44, 1, -8.5, -594.1 , 0 );
setMoveKey( spep_6-3 + 46, 1, -8.3, -686.4 , 0 );
setMoveKey( spep_6-3 + 48, 1, -8.1, -768.5 , 0 );
setMoveKey( spep_6-3 + 50, 1, -7.8, -840.9 , 0 );
setMoveKey( spep_6-3 + 52, 1, -7.6, -903.5 , 0 );
setMoveKey( spep_6-3 + 54, 1, -7.4, -956.8 , 0 );
setMoveKey( spep_6-3 + 56, 1, -7.2, -1000.7 , 0 );

setScaleKey( spep_6 + 0, 1, 4.9,4.9);
setScaleKey( spep_6-3 + 4, 1, 4.05,4.05);
setScaleKey( spep_6-3 + 6, 1, 3.67,3.67);
setScaleKey( spep_6-3 + 8, 1, 3.21,3.21);
setScaleKey( spep_6-3 + 12, 1, 2.83,2.83);
setScaleKey( spep_6-3 + 24, 1, 2.73,2.73);
setScaleKey( spep_6-3 + 34, 1, 2.64,2.64);
setScaleKey( spep_6-3 + 39, 1, 2.73,2.73);
setScaleKey( spep_6-3 + 40, 1, 2.35,2.35);
setScaleKey( spep_6-3 + 42, 1, 2.42,2.42);
setScaleKey( spep_6-3 + 48, 1, 2.35,2.35);
setScaleKey( spep_6-3 + 56, 1, 2.27,2.27);

setRotateKey( spep_6 + 0, 1, 36.6 );
setRotateKey( spep_6-3 + 39, 1, 36.6 );
setRotateKey( spep_6-3 + 40, 1, 126.1 );
setRotateKey( spep_6-3 + 56, 1, 126.1 );

--敵の動き
setDisp( spep_6-3 + 72, 1, 1 );
setDisp( spep_6-1 + 78, 1, 0 );

changeAnime( spep_6-3 + 72, 1, 105 );

setMoveKey( spep_6-3 + 72, 1, 32.2, -39.2 , 0 );
setMoveKey( spep_6-3 + 74, 1, 34.3, -36.5 , 0 );
setMoveKey( spep_6-3 + 76, 1, 36.7, -33.2 , 0 );
setMoveKey( spep_6-1 + 78, 1, 39.5, -29.4 , 0 );

setScaleKey( spep_6-3 + 72, 1, 2.77,2.77);
setScaleKey( spep_6-3 + 74, 1, 2.07,2.07);
setScaleKey( spep_6-3 + 76, 1, 1.26,1.26);
setScaleKey( spep_6-1 + 78, 1, 0.37,0.37);

setRotateKey( spep_6-3 + 72, 1, 0 );
setRotateKey( spep_6-1 + 78, 1, 0 );

--SE
--[[叩きつけ
SE016 = playSe( spep_6 + 34, 1123 );

--敵飛んでいく
SE017 = playSe( spep_6 + 70, 1277 );

--爆発
SE018 = playSe( spep_6 + 78, 1159 );]]

--叩きつけ
SE016 = playSeVer2( spep_6 + 34, 1123, "", 0, 0, 0, -1);

--敵飛んでいく
SE017 = playSeVer2( spep_6 + 70, 1277, "", 0, 0, 0, -1);

--爆発
SE018 = playSeVer2( spep_6 + 78, 1159, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 156, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_7=spep_6+152;
------------------------------------------------------
--地面とピッコロが映る
------------------------------------------------------
-- ** エフェクト等 ** --
ground = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, ground, 0, 0, 0 );
setEffMoveKey( spep_7 + 86, ground, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, ground, 1.0, 1.0 );
setEffScaleKey( spep_7 + 86, ground, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, ground, 0 );
setEffRotateKey( spep_7 + 86, ground, 0 );
setEffAlphaKey( spep_7 + 0, ground, 255 );
setEffAlphaKey( spep_7 + 84, ground, 255 );
setEffAlphaKey( spep_7 + 85+1, ground, 255 );
--setEffAlphaKey( spep_7 + 86, ground, 0 );

--顔カットインのタイミング指定
spep_x=spep_7 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 110, 522, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  110,  522);
setEffMoveKey(  spep_x +84,  ctgogo,  110,  522);

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
--[[顔カットイン
SE019 = playSe( spep_x + 12, 1018 );]]

--顔カットイン
SE019 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_8=spep_7+86 -2;
------------------------------------------------------
--気弾を撃つ
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_8 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_8 + 196, kidan, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_8 + 196, kidan, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, kidan, 0 );
setEffRotateKey( spep_8 + 196, kidan, 0 );
setEffAlphaKey( spep_8 + 0, kidan, 255 );
setEffAlphaKey( spep_8 + 194, kidan, 255 );
setEffAlphaKey( spep_8 + 195, kidan, 255 );
setEffAlphaKey( spep_8 + 196, kidan, 0 );

--SE
--腕広げる
SE020 = playSeVer2( spep_8 + 24, 1004, "", 0, 0, 0, -1);

--連続気弾
SE021 = playSeVer2( spep_8 + 54, 1015, "",spep_8 + 82, 0, 12, 0.6);
setSeVolumeByWorkId( spep_8 + 54, SE021, 90 );
setPitch( spep_8 + 54, SE021, -300 );
setTimeStretch( SE021, 0.8, 10, 1 );
SE022 = playSeVer2( spep_8 + 58, 1016, "",spep_8 + 76, 0, 6, 0.6);
setSeVolumeByWorkId( spep_8 + 58, SE022, 126 )
SE023 = playSeVer2( spep_8 + 58, 1027, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_8 + 58, SE023, 66 );
SE024 = playSeVer2( spep_8 + 66, 1015, "",spep_8 + 90, 0, 6, 0.6);
setSeVolumeByWorkId( spep_8 + 66, SE024, 89 );
setPitch( spep_8 + 66, SE024, -300 );
setTimeStretch( SE024, 0.8, 10, 1 );
SE025 = playSeVer2( spep_8 + 70, 1016, "",spep_8 + 88, 0, 8, 0.6);
setSeVolumeByWorkId( spep_8 + 70, SE025, 124 );
SE026 = playSeVer2( spep_8 + 76, 1015, "",spep_8 + 104, 0, 12, 0.6);
setSeVolumeByWorkId( spep_8 + 76, SE026, 93 );
setPitch( spep_8 + 76, SE026, -300 );
setTimeStretch( SE026, 0.8, 10, 1 );
SE027 = playSeVer2( spep_8 + 82, 1016, "",spep_8 + 96, 0, 4, 0.6);
setSeVolumeByWorkId( spep_8 + 82, SE027, 132 );
SE028 = playSeVer2( spep_8 + 88, 1015, "",spep_8 + 116, 0, 10, 0.6);
setSeVolumeByWorkId( spep_8 + 88, SE028, 83 );
setPitch( spep_8 + 88, SE028, -300 );
setTimeStretch( SE028, 0.8, 10, 1 );
SE029 = playSeVer2( spep_8 + 92, 1016, "",spep_8 + 110, 0, 8, 0.6);
setSeVolumeByWorkId( spep_8 + 92, SE029, 142 );
SE030 = playSeVer2( spep_8 + 96, 1015, "",spep_8 + 124, 0, 12, 0.6);
setSeVolumeByWorkId( spep_8 + 96, SE030, 86 );
setPitch( spep_8 + 96, SE030, -300 );
setTimeStretch( SE030, 0.8, 10, 1 );
SE031 = playSeVer2( spep_8 + 102, 1016, "",spep_8 + 120, 0, 8, 0.6);
SE032 = playSeVer2( spep_8 + 110, 1016, "",spep_8 + 128, 0, 8, 0.6);

--連続爆発
SE033 = playSeVer2( spep_8 + 122, 1202, "", 0, 0, 0, -1);

--爆発中連続気弾
SE034 = playSeVer2( spep_8 + 122, 1016, "",spep_8 + 140, 0, 8, 0.6);
SE035 = playSeVer2( spep_8 + 122, 1015, "",spep_8 + 152, 0, 12, 0.6);
setSeVolumeByWorkId( spep_8 + 122, SE035, 80 );
setPitch( spep_8 + 122, SE035, -300 );
setTimeStretch( SE035, 0.8, 10, 1 );

--連続爆発
SE036 = playSeVer2( spep_8 + 126, 1023, "",0, 0, 0, -1);

--爆発中連続気弾
SE037 = playSeVer2( spep_8 + 130, 1015, "",spep_8 + 160, 0, 14, 0.6);
setSeVolumeByWorkId( spep_8 + 130, SE037, 80 );
setPitch( spep_8 + 130, SE037, -300 );
setTimeStretch( SE037, 0.8, 10, 1 );

--連続爆発
SE038 = playSeVer2( spep_8 + 132, 1024, "", 0, 0, 0, -1);

--爆発中連続気弾
SE039 = playSeVer2( spep_8 + 134, 1016, "",spep_8 + 152, 0, 10, -1);
setSeVolumeByWorkId( spep_8 + 134, SE039, 93 );

--連続爆発
SE040 = playSeVer2( spep_8 + 142, 1023, "",0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 142, SE040, 98 );

--爆発中連続気弾
SE041 = playSeVer2( spep_8 + 142, 1015, "",spep_8 + 170, 0, 12, 0.6);
setSeVolumeByWorkId( spep_8 + 142, SE041, 71 );
setPitch( spep_8 + 142, SE041, -300 );
setTimeStretch( SE041, 0.8, 10, 1 );
SE042 = playSeVer2( spep_8 + 146, 1016, "",spep_8 + 164, 0, 8, 0.6);
setSeVolumeByWorkId( spep_8 + 146, SE042, 89 );
SE043 = playSeVer2( spep_8 + 154, 1015, "",spep_8 + 184, 0, 12, 0.6);
setSeVolumeByWorkId( spep_8 + 154, SE043, 70 );
setPitch( spep_8 + 154, SE043, -300 );
setTimeStretch( SE043, 0.8, 10, 1 );

--連続爆発
SE044 = playSeVer2( spep_8 + 156, 1023, "",0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 156, SE044, 72 );

--爆発中連続気弾
SE045 = playSeVer2( spep_8 + 156, 1016, "",spep_8 + 174, 0, 8, 0.6);
setSeVolumeByWorkId( spep_8 + 156, SE045, 71 );
SE046 = playSeVer2( spep_8 + 166, 1016, "",spep_8 + 184, 0, 8, 0.6);
setSeVolumeByWorkId( spep_8 + 166, SE046, 83 );
SE047 = playSeVer2( spep_8 + 166, 1015, "",spep_8 + 194, 0, 12, 0.6);
setSeVolumeByWorkId( spep_8 + 166, SE047, 65 );
setPitch( spep_8 + 166, SE047, -300 );
setTimeStretch( SE047, 0.8, 10, 1 );

--連続爆発
SE048 = playSeVer2( spep_8 + 176, 1023, "",0, 0, 0, -1);

--爆発中連続気弾
SE049 = playSeVer2( spep_8 + 176, 1016, "",spep_8 + 192, 0, 6, 0.6);
setSeVolumeByWorkId( spep_8 + 176, SE049, 81 );
SE050 = playSeVer2( spep_8 + 176, 1015, "",spep_8 + 204, 0, 12, 0.6);
setSeVolumeByWorkId( spep_8 + 176, SE050, 65 );
setPitch( spep_8 + 176, SE050, -300 );
setTimeStretch( SE050, 0.8, 10, 1 );
SE051 = playSeVer2( spep_8 + 186, 1016, "",spep_8 + 204, 0, 8, 0.6);
setSeVolumeByWorkId( spep_8 + 186, SE051, 91 );
SE052 = playSeVer2( spep_8 + 188, 1015, "",spep_8 + 216, 0, 10, 0.6);
setSeVolumeByWorkId( spep_8 + 188, SE052, 63 );
setPitch( spep_8 + 188, SE052, -300 );
setTimeStretch( SE052, 0.8, 10, 1 );
SE053 = playSeVer2( spep_8 + 194, 1016, "",0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_8 + 194, SE053, 87 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 200, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_9=spep_8+196;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_13, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_9 + 150, finish, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 150, finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 150, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 150, finish, 255 );

--SE
--ラスト爆発
SE054 = playSeVer2( spep_9 + 0, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 0, SE054, 110 );
SE055 = playSeVer2( spep_9 + 4, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 4, SE055, 120 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 150, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_9 +40 );
endPhase( spep_9 + 140 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--敵と対峙
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
confrontation_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, confrontation_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 78, confrontation_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 78, confrontation_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation_f, 0 );
setEffRotateKey( spep_0 + 78, confrontation_f, 0 );
setEffAlphaKey( spep_0 + 0, confrontation_f, 255 );
setEffAlphaKey( spep_0 + 76, confrontation_f, 255 );
setEffAlphaKey( spep_0 + 77, confrontation_f, 255 );
setEffAlphaKey( spep_0 + 78, confrontation_f, 0 );

-- ** エフェクト等 ** --
confrontation_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, confrontation_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 78, confrontation_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 78, confrontation_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation_b, 0 );
setEffRotateKey( spep_0 + 78, confrontation_b, 0 );
setEffAlphaKey( spep_0 + 0, confrontation_b, 255 );
setEffAlphaKey( spep_0 + 76, confrontation_b, 255 );
setEffAlphaKey( spep_0 + 77, confrontation_b, 255 );
setEffAlphaKey( spep_0 + 78, confrontation_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 32, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 157.8, -18 , 0 );
setMoveKey( spep_0 + 1, 1, 157.8, -18 , 0 );
setMoveKey( spep_0 + 2, 1, 162.5, -17.7 , 0 );
setMoveKey( spep_0 + 3, 1, 162.5, -17.7 , 0 );
setMoveKey( spep_0 + 4, 1, 167.3, -17.4 , 0 );
setMoveKey( spep_0 + 5, 1, 167.3, -17.4 , 0 );
setMoveKey( spep_0 + 6, 1, 172.1, -17.1 , 0 );
setMoveKey( spep_0 + 8, 1, 176.8, -16.8 , 0 );
setMoveKey( spep_0 + 10, 1, 181.5, -16.5 , 0 );
setMoveKey( spep_0 + 12, 1, 186.3, -16.2 , 0 );
setMoveKey( spep_0 + 14, 1, 191, -15.9 , 0 );
setMoveKey( spep_0 + 16, 1, 195.7, -15.6 , 0 );
setMoveKey( spep_0 + 18, 1, 200.5, -15.3 , 0 );
setMoveKey( spep_0 + 20, 1, 205.2, -15 , 0 );
setMoveKey( spep_0 + 22, 1, 209.9, -14.7 , 0 );
setMoveKey( spep_0 + 24, 1, 214.7, -14.4 , 0 );
setMoveKey( spep_0 + 26, 1, 219.5, -14.1 , 0 );
setMoveKey( spep_0 + 28, 1, 224.2, -13.8 , 0 );
setMoveKey( spep_0 + 30, 1, 413.8, -7.5 , 0 );
setMoveKey( spep_0 + 32, 1, 632.6, -1.2 , 0 );

setScaleKey( spep_0 + 0, 1, 2.58,2.58);
setScaleKey( spep_0 + 1, 1, 2.58,2.58);
setScaleKey( spep_0 + 2, 1, 2.58,2.58);
setScaleKey( spep_0 + 3, 1, 2.58,2.58);
setScaleKey( spep_0 + 4, 1, 2.64,2.64);
setScaleKey( spep_0 + 5, 1, 2.64,2.64);
setScaleKey( spep_0 + 6, 1, 2.64,2.64);
setScaleKey( spep_0 + 8, 1, 2.7,2.7);
setScaleKey( spep_0 + 12, 1, 2.77,2.77);
setScaleKey( spep_0 + 16, 1, 2.83,2.83);
setScaleKey( spep_0 + 18, 1, 2.89,2.89);
setScaleKey( spep_0 + 20, 1, 2.96,2.96);
setScaleKey( spep_0 + 22, 1, 2.96,2.96);
setScaleKey( spep_0 + 26, 1, 3.02,3.02);
setScaleKey( spep_0 + 28, 1, 3.08,3.08);
setScaleKey( spep_0 + 30, 1, 4.91,4.91);
setScaleKey( spep_0 + 32, 1, 7.18,7.18);

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 32, 1, 0 );

--SE
--[[入り
SE001 = playSe( spep_0 + 0, 1072 );]]

--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_1=spep_0+78;
------------------------------------------------------
--画面に向かってダッシュしてくる
------------------------------------------------------
-- ** エフェクト等 ** --
dash = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash, 0, 0, 0 );
setEffMoveKey( spep_1 + 34, dash, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash, -1.0, 1.0 );
setEffScaleKey( spep_1 + 34, dash, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash, 0 );
setEffRotateKey( spep_1 + 34, dash, 0 );
setEffAlphaKey( spep_1 + 0, dash, 255 );
setEffAlphaKey( spep_1 + 34, dash, 255 );

--SE
--[[ダッシュ
SE002 = playSe( spep_1 + 0, 1189 );
SE003 = playSe( spep_1 + 6, 9 );
SE004 = playSe( spep_1 + 6, 1182 );]]

--ダッシュ
SE002 = playSeVer2( spep_1 + 0, 1189, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_1 + 6, 9, "",spep_1 +42, 0, 6, -1);
SE004 = playSeVer2( spep_1 + 6, 1182, "",spep_1 + 42, 0, 6, -1);

--白フェード
entryFade( spep_1 + 26, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_c=spep_1+34;

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
spep_3= spep_c+ 94;
------------------------------------------------------
--画面に向かってダッシュしてくる
------------------------------------------------------
-- ** エフェクト等 ** --
dash2 = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, dash2, 0, 0, 0 );
setEffMoveKey( spep_3 + 74, dash2, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, dash2, -1.0, 1.0 );
setEffScaleKey( spep_3 + 74, dash2, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, dash2, 0 );
setEffRotateKey( spep_3 + 74, dash2, 0 );
setEffAlphaKey( spep_3 + 0, dash2, 255 );
setEffAlphaKey( spep_3 + 72, dash2, 255 );
setEffAlphaKey( spep_3 + 73+1, dash2, 255 );
--setEffAlphaKey( spep_3 + 74, dash2, 0 );

--SE
--[[向かってくる
SE006 = playSe( spep_3 + 0, 1314 );
SE007 = playSe( spep_3 + 0, 1175 );
setSeVolumeByWorkId( spep_3 + 0, SE007, 64 );
SE008 = playSe( spep_3 + 26, 1072 );]]

--向かってくる
SE006 = playSeVer2( spep_3 + 0, 1314, "",spep_3 + 90, 0, 20, -1);
SE007 = playSeVer2( spep_3 + 0, 1175, "",spep_3 + 90, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 0, SE007, 64 );
SE008 = playSeVer2( spep_3 + 26, 1072, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--SE
--向かってくる
stopSe( spep_3 + 70, SE007, 20 );
stopSe( spep_3 + 70, SE006, 20 );

--次の準備 
spep_4=spep_3+74-2;
------------------------------------------------------
--蹴り飛ばす
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 50, kick_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 50, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_f, 0 );
setEffRotateKey( spep_4 + 50, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 48, kick_f, 255 );
setEffAlphaKey( spep_4 + 49, kick_f, 255 );
setEffAlphaKey( spep_4 + 50, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 50, kick_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 50, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_b, 0 );
setEffRotateKey( spep_4 + 50, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 48, kick_b, 255 );
setEffAlphaKey( spep_4 + 49, kick_b, 255 );
setEffAlphaKey( spep_4 + 50, kick_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4-3 + 36, 1, 107 );

a=-60;
b=-40;

setMoveKey( spep_4 + 0, 1, -13.8, -184.8 , 0 );
--setMoveKey( spep_4-3 + 2, 1, -12.3, -161 , 0 );
setMoveKey( spep_4-3 + 4, 1, -10.9, -137.1 , 0 );
setMoveKey( spep_4-3 + 6, 1, -9.4, -113.2 , 0 );
setMoveKey( spep_4-3 + 8, 1, -7.9, -89.3 , 0 );
setMoveKey( spep_4-3 + 10, 1, -8.1, -87.5 , 0 );
setMoveKey( spep_4-3 + 12, 1, -8.3, -85.8 , 0 );
setMoveKey( spep_4-3 + 14, 1, -8.5, -84 , 0 );
setMoveKey( spep_4-3 + 16, 1, -8.7, -82.3 , 0 );
setMoveKey( spep_4-3 + 18, 1, -8.9, -80.5 , 0 );
setMoveKey( spep_4-3 + 20, 1, -9.1, -78.8 , 0 );
setMoveKey( spep_4-3 + 22, 1, -9.2, -77.1 , 0 );
setMoveKey( spep_4-3 + 24, 1, -9.4, -75.3 , 0 );
setMoveKey( spep_4-3 + 26, 1, -9.6, -73.6 , 0 );
setMoveKey( spep_4-3 + 28, 1, -9.8, -71.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, -10, -70.1 , 0 );
setMoveKey( spep_4-3 + 32, 1, -10.2, -68.4 , 0 );
setMoveKey( spep_4-3 + 35, 1, -10.3, -66.6 , 0 );

setMoveKey( spep_4-3 + 36, 1, 26.2+a, -40.1+b , 0 );
setMoveKey( spep_4-3 + 38, 1, 51.2+a, -52.1+b , 0 );
setMoveKey( spep_4-3 + 40, 1, 20.2+a, -22.1+b , 0 );
setMoveKey( spep_4-3 + 42, 1, 29.1+a, -48.1+b , 0 );
setMoveKey( spep_4-3 + 44, 1, 31.1+a, -29.1+b , 0 );
setMoveKey( spep_4-3 + 46, 1, 21.2+a, -55.1+b , 0 );
setMoveKey( spep_4-3 + 48, 1, 25.2+a, -36.1+b , 0 );
setMoveKey( spep_4-1 + 50, 1, 47.1+a, -55.1+b , 0 );
--setMoveKey( spep_4-1 + 52, 1, 27.2+a, -41.1+b , 0 );
--[[
setScaleKey( spep_4 + 0, 1, 5.48,5.48);
setScaleKey( spep_4-3 + 4, 1, 4.78,4.78);
setScaleKey( spep_4-3 + 6, 1, 4.41,4.41);
setScaleKey( spep_4-3 + 8, 1, 4.09,4.09);
setScaleKey( spep_4-3 + 10, 1, 4.09,4.09);
setScaleKey( spep_4-3 + 12, 1, 4.03,4.03);
setScaleKey( spep_4-3 + 14, 1, 4.03,4.03);
setScaleKey( spep_4-3 + 16, 1, 3.96,3.96);
setScaleKey( spep_4-3 + 18, 1, 3.96,3.96);
setScaleKey( spep_4-3 + 20, 1, 3.9,3.9);
setScaleKey( spep_4-3 + 24, 1, 3.9,3.9);
setScaleKey( spep_4-3 + 26, 1, 3.84,3.84);
setScaleKey( spep_4-3 + 28, 1, 3.84,3.84);
setScaleKey( spep_4-3 + 30, 1, 3.78,3.78);
setScaleKey( spep_4-3 + 35, 1, 3.78,3.78);
setScaleKey( spep_4-3 + 36, 1, 2.58,2.58);
setScaleKey( spep_4-3 + 52, 1, 2.58,2.58);
]]

setScaleKey( spep_4 + 0, 1, 5.48,5.48);
setScaleKey( spep_4-3 + 4, 1, 4.78,4.78);
setScaleKey( spep_4-3 + 6, 1, 4.41,4.41);
setScaleKey( spep_4-3 + 8, 1, 4.09,4.09);
setScaleKey( spep_4-3 + 10, 1, 4.09,4.09);
setScaleKey( spep_4-3 + 12, 1, 4.03,4.03);
setScaleKey( spep_4-3 + 14, 1, 4.03,4.03);
setScaleKey( spep_4-3 + 16, 1, 3.96,3.96);
setScaleKey( spep_4-3 + 18, 1, 3.96,3.96);
setScaleKey( spep_4-3 + 20, 1, 3.9,3.9);
setScaleKey( spep_4-3 + 24, 1, 3.9,3.9);
setScaleKey( spep_4-3 + 26, 1, 3.84,3.84);
setScaleKey( spep_4-3 + 28, 1, 3.84,3.84);
setScaleKey( spep_4-3 + 30, 1, 3.78,3.78);
setScaleKey( spep_4-3 + 35, 1, 3.78,3.78);
setScaleKey( spep_4-3 + 36, 1, 1.45,1.45);
setScaleKey( spep_4-1 + 50, 1, 1.45,1.45);


setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 35, 1, 0 );
setRotateKey( spep_4-3 + 36, 1, -55.2 );
setRotateKey( spep_4-1 + 50, 1, -55.2 );

--SE
--[[ピンクの光差す
SE009 = playSe( spep_4 + 0, 1116 ,"",0.6);
setPitch( spep_4 + 0, SE009, -300 );
setTimeStretch( SE009, 0.8, 10, 1 );
stopSe( spep_4 + 26, SE009, 12 );
SE010 = playSe( spep_4 + 6, 1179 ,"",0.6);
setSeVolumeByWorkId( spep_4 + 6, SE010, 184 );
setPitch( spep_4 + 6, SE010, -600 );
setTimeStretch( SE010, 0.6, 10, 1 );
stopSe( spep_4 + 40, SE010, 14 );]]

--ピンクの光差す
SE009 = playSeVer2( spep_4 + 0, 1116, "",spep_4 + 38, 0, 12, 0.6);
setPitch( spep_4 + 0, SE009, -300 );
setTimeStretch( SE009, 0.8, 10, 1 );
SE010 = playSeVer2( spep_4 + 6, 1179, "",spep_4 +54, 0, 14, 0.6);
setSeVolumeByWorkId( spep_4 + 6, SE010, 184 );
setPitch( spep_4 + 6, SE010, -600 );
setTimeStretch( SE010, 0.6, 10, 1 );

--[[キック
SE011 = playSe( spep_4 + 38, 1010 );
setSeVolumeByWorkId( spep_4 + 38, SE011, 82 );
SE012 = playSe( spep_4 + 38, 1187 );
setSeVolumeByWorkId( spep_4 + 38, SE012, 86 );
SE013 = playSe( spep_4 + 40, 1110 );
setSeVolumeByWorkId( spep_4 + 40, SE013, 93 );]]

--キック
SE011 = playSeVer2( spep_4 + 38, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 38, SE011, 82 );
SE012 = playSeVer2( spep_4 + 38, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 38, SE012, 86 );
SE013 = playSeVer2( spep_4 + 40, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 40, SE013, 93 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 52, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_5=spep_4+50;
------------------------------------------------------
--蹴った敵が吹っ飛ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
fly_f = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, fly_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, fly_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, fly_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, fly_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, fly_f, 0 );
setEffRotateKey( spep_5 + 60, fly_f, 0 );
setEffAlphaKey( spep_5 + 0, fly_f, 255 );
setEffAlphaKey( spep_5 + 58, fly_f, 255 );
setEffAlphaKey( spep_5 + 59, fly_f, 255 );
setEffAlphaKey( spep_5 + 60, fly_f, 0 );

-- ** エフェクト等 ** --
fly_b = entryEffect( spep_5 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, fly_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 60, fly_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, fly_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, fly_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, fly_b, 0 );
setEffRotateKey( spep_5 + 60, fly_b, 0 );
setEffAlphaKey( spep_5 + 0, fly_b, 255 );
setEffAlphaKey( spep_5 + 58, fly_b, 255 );
setEffAlphaKey( spep_5 + 59, fly_b, 255 );
setEffAlphaKey( spep_5 + 60, fly_b, 0 );

--敵の動き
changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 258.5, 59.5 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 281.8, 55 , 0 );
setMoveKey( spep_5-3 + 4, 1, 295.4, 52.5 , 0 );
setMoveKey( spep_5-3 + 6, 1, 299.2, 51.9 , 0 );
setMoveKey( spep_5-3 + 8, 1, 298.2, 52.3 , 0 );
setMoveKey( spep_5-3 + 10, 1, 297.2, 52.6 , 0 );
setMoveKey( spep_5-3 + 12, 1, 296.1, 53 , 0 );
setMoveKey( spep_5-3 + 14, 1, 295, 53.3 , 0 );
setMoveKey( spep_5-3 + 16, 1, 294, 53.7 , 0 );
setMoveKey( spep_5-3 + 18, 1, 292.9, 54 , 0 );
setMoveKey( spep_5-3 + 20, 1, 291.9, 54.4 , 0 );
setMoveKey( spep_5-3 + 22, 1, 290.8, 54.7 , 0 );
setMoveKey( spep_5-3 + 24, 1, 289.7, 55.1 , 0 );
setMoveKey( spep_5-3 + 26, 1, 288.6, 55.5 , 0 );
setMoveKey( spep_5-3 + 28, 1, 287.5, 55.8 , 0 );
setMoveKey( spep_5-3 + 30, 1, 286.2, 56.2 , 0 );
setMoveKey( spep_5-3 + 32, 1, 284.8, 56.4 , 0 );
setMoveKey( spep_5-3 + 34, 1, 283.3, 56.5 , 0 );
setMoveKey( spep_5-3 + 36, 1, 231.6, 52.9 , 0 );
setMoveKey( spep_5-3 + 38, 1, 208.8, 51.6 , 0 );
setMoveKey( spep_5-3 + 40, 1, 174.6, 49.8 , 0 );
setMoveKey( spep_5-3 + 42, 1, 141.8, 45.5 , 0 );
setMoveKey( spep_5-3 + 44, 1, 104.2, 41 , 0 );
setMoveKey( spep_5-3 + 46, 1, 61.9, 36.5 , 0 );
setMoveKey( spep_5-3 + 48, 1, 55.5, 36.1 , 0 );
setMoveKey( spep_5-3 + 50, 1, 49, 35.6 , 0 );
setMoveKey( spep_5-3 + 52, 1, 42.6, 35.1 , 0 );
setMoveKey( spep_5-3 + 54, 1, 36.2, 34.7 , 0 );
setMoveKey( spep_5-3 + 56, 1, 29.9, 34.2 , 0 );
setMoveKey( spep_5-3 + 58, 1, 23.4, 33.7 , 0 );
setMoveKey( spep_5-3 + 60, 1, 17.1, 33.2 , 0 );
setMoveKey( spep_5-3 + 62, 1, 10.6, 32.7 , 0 );

setScaleKey( spep_5 + 0, 1, 0.63,0.63);
--setScaleKey( spep_5-3 + 2, 1, 0.37,0.37);
setScaleKey( spep_5-3 + 4, 1, 0.25,0.25);
setScaleKey( spep_5-3 + 6, 1, 0.18,0.18);
setScaleKey( spep_5-3 + 30, 1, 0.18,0.18);
setScaleKey( spep_5-3 + 32, 1, 0.31,0.31);
setScaleKey( spep_5-3 + 34, 1, 0.44,0.44);
setScaleKey( spep_5-3 + 36, 1, 0.75,0.75);
setScaleKey( spep_5-3 + 38, 1, 1.07,1.07);
setScaleKey( spep_5-3 + 40, 1, 1.44,1.44);
setScaleKey( spep_5-3 + 42, 1, 1.76,1.76);
setScaleKey( spep_5-3 + 44, 1, 2.14,2.14);
setScaleKey( spep_5-3 + 46, 1, 2.52,2.52);
setScaleKey( spep_5-3 + 48, 1, 2.58,2.58);
setScaleKey( spep_5-3 + 50, 1, 2.64,2.64);
setScaleKey( spep_5-3 + 52, 1, 2.7,2.7);
setScaleKey( spep_5-3 + 54, 1, 2.77,2.77);
setScaleKey( spep_5-3 + 56, 1, 2.83,2.83);
setScaleKey( spep_5-3 + 58, 1, 2.89,2.89);
setScaleKey( spep_5-3 + 60, 1, 2.96,2.96);
setScaleKey( spep_5-3 + 62, 1, 3.02,3.02);

setRotateKey( spep_5 + 0, 1, 34 );
--setRotateKey( spep_5-3 + 2, 1, 33.9 );
setRotateKey( spep_5-3 + 4, 1, 33.9 );
setRotateKey( spep_5-3 + 6, 1, 33.8 );
setRotateKey( spep_5-3 + 36, 1, 33.8 );
setRotateKey( spep_5-3 + 38, 1, 33.9 );
setRotateKey( spep_5-3 + 42, 1, 33.9 );
setRotateKey( spep_5-3 + 44, 1, 34 );
setRotateKey( spep_5-3 + 62, 1, 34 );

--SE
--[[敵飛んでいく
SE014 = playSe( spep_5 + 0, 1183 );

--瞬間移動
SE015 = playSe( spep_5 + 60, 1109 );]]

--敵飛んでいく
SE014 = playSeVer2( spep_5 + 0, 1183, "", 0, 0, 0, -1);

--瞬間移動
SE015 = playSeVer2( spep_5 + 60, 1109, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_6=spep_5+60;
------------------------------------------------------
--叩き落とす
------------------------------------------------------
-- ** エフェクト等 ** --
drop_f = entryEffect( spep_6 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, drop_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 152, drop_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, drop_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 152, drop_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, drop_f, 0 );
setEffRotateKey( spep_6 + 152, drop_f, 0 );
setEffAlphaKey( spep_6 + 0, drop_f, 255 );
setEffAlphaKey( spep_6 + 150, drop_f, 255 );
setEffAlphaKey( spep_6 + 151, drop_f, 255 );
setEffAlphaKey( spep_6 + 152, drop_f, 0 );

-- ** エフェクト等 ** --
drop_b = entryEffect( spep_6 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, drop_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 152, drop_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, drop_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 152, drop_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, drop_b, 0 );
setEffRotateKey( spep_6 + 152, drop_b, 0 );
setEffAlphaKey( spep_6 + 0, drop_b, 255 );
setEffAlphaKey( spep_6 + 150, drop_b, 255 );
setEffAlphaKey( spep_6 + 151, drop_b, 255 );
setEffAlphaKey( spep_6 + 152, drop_b, 0 );

--敵の動き
setDisp( spep_6 + 52, 1, 0 );

changeAnime( spep_6 + 0, 1, 105 );
changeAnime( spep_6-3 + 40, 1, 106 );

setMoveKey( spep_6 + 0, 1, 51.6, 11.7 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 48.6, 9 , 0 );
setMoveKey( spep_6-3 + 4, 1, 45.8, 6.8 , 0 );
setMoveKey( spep_6-3 + 6, 1, 43.1, 4.9 , 0 );
setMoveKey( spep_6-3 + 8, 1, 40.5, 3.2 , 0 );
setMoveKey( spep_6-3 + 10, 1, 37.8, 1.5 , 0 );
setMoveKey( spep_6-3 + 12, 1, 38.5, 3.8 , 0 );
setMoveKey( spep_6-3 + 14, 1, 39.2, 6.5 , 0 );
setMoveKey( spep_6-3 + 16, 1, 40.1, 9.8 , 0 );
setMoveKey( spep_6-3 + 18, 1, 41.1, 13.4 , 0 );
setMoveKey( spep_6-3 + 20, 1, 42.2, 17.4 , 0 );
setMoveKey( spep_6-3 + 22, 1, 43.4, 21.9 , 0 );
setMoveKey( spep_6-3 + 24, 1, 44.7, 26.8 , 0 );
setMoveKey( spep_6-3 + 26, 1, 46.1, 32.1 , 0 );
setMoveKey( spep_6-3 + 28, 1, 47.7, 37.8 , 0 );
setMoveKey( spep_6-3 + 30, 1, 49.4, 43.9 , 0 );
setMoveKey( spep_6-3 + 32, 1, 49.3, 43.8 , 0 );
setMoveKey( spep_6-3 + 34, 1, 49.3, 43.8 , 0 );
setMoveKey( spep_6-3 + 35, 1, 49.3, 43.8 , 0 );
setMoveKey( spep_6-3 + 36, 1, 44.4, -86.1 , 0 );

setMoveKey( spep_6-3 + 39, 1, 32.5, -147.5 , 0 );
setMoveKey( spep_6-3 + 40, 1, -56.2, -229.7 , 0 );
setMoveKey( spep_6-3 + 42, 1, -22.3, -545.5 , 0 );
setMoveKey( spep_6-3 + 44, 1, -8.5, -594.1 , 0 );
setMoveKey( spep_6-3 + 46, 1, -8.3, -686.4 , 0 );
setMoveKey( spep_6-3 + 48, 1, -8.1, -768.5 , 0 );
setMoveKey( spep_6-3 + 50, 1, -7.8, -840.9 , 0 );
setMoveKey( spep_6-3 + 52, 1, -7.6, -903.5 , 0 );
setMoveKey( spep_6-3 + 54, 1, -7.4, -956.8 , 0 );
setMoveKey( spep_6-3 + 56, 1, -7.2, -1000.7 , 0 );

setScaleKey( spep_6 + 0, 1, 4.9,4.9);
setScaleKey( spep_6-3 + 4, 1, 4.05,4.05);
setScaleKey( spep_6-3 + 6, 1, 3.67,3.67);
setScaleKey( spep_6-3 + 8, 1, 3.21,3.21);
setScaleKey( spep_6-3 + 12, 1, 2.83,2.83);
setScaleKey( spep_6-3 + 24, 1, 2.73,2.73);
setScaleKey( spep_6-3 + 34, 1, 2.64,2.64);
setScaleKey( spep_6-3 + 39, 1, 2.73,2.73);
setScaleKey( spep_6-3 + 40, 1, 2.35,2.35);
setScaleKey( spep_6-3 + 42, 1, 2.42,2.42);
setScaleKey( spep_6-3 + 48, 1, 2.35,2.35);
setScaleKey( spep_6-3 + 56, 1, 2.27,2.27);

setRotateKey( spep_6 + 0, 1, 36.6 );
setRotateKey( spep_6-3 + 39, 1, 36.6 );
setRotateKey( spep_6-3 + 40, 1, 126.1 );
setRotateKey( spep_6-3 + 56, 1, 126.1 );

--敵の動き
setDisp( spep_6-3 + 72, 1, 1 );
setDisp( spep_6-1 + 78, 1, 0 );

changeAnime( spep_6-3 + 72, 1, 105 );

setMoveKey( spep_6-3 + 72, 1, 32.2, -39.2 , 0 );
setMoveKey( spep_6-3 + 74, 1, 34.3, -36.5 , 0 );
setMoveKey( spep_6-3 + 76, 1, 36.7, -33.2 , 0 );
setMoveKey( spep_6-1 + 78, 1, 39.5, -29.4 , 0 );

setScaleKey( spep_6-3 + 72, 1, 2.77,2.77);
setScaleKey( spep_6-3 + 74, 1, 2.07,2.07);
setScaleKey( spep_6-3 + 76, 1, 1.26,1.26);
setScaleKey( spep_6-1 + 78, 1, 0.37,0.37);

setRotateKey( spep_6-3 + 72, 1, 0 );
setRotateKey( spep_6-1 + 78, 1, 0 );

--SE
--[[叩きつけ
SE016 = playSe( spep_6 + 34, 1123 );

--敵飛んでいく
SE017 = playSe( spep_6 + 70, 1277 );

--爆発
SE018 = playSe( spep_6 + 78, 1159 );]]

--叩きつけ
SE016 = playSeVer2( spep_6 + 34, 1123, "", 0, 0, 0, -1);

--敵飛んでいく
SE017 = playSeVer2( spep_6 + 70, 1277, "", 0, 0, 0, -1);

--爆発
SE018 = playSeVer2( spep_6 + 78, 1159, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 156, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_7=spep_6+152;
------------------------------------------------------
--地面とピッコロが映る
------------------------------------------------------
-- ** エフェクト等 ** --
ground = entryEffect( spep_7 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, ground, 0, 0, 0 );
setEffMoveKey( spep_7 + 86, ground, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, ground, -1.0, 1.0 );
setEffScaleKey( spep_7 + 86, ground, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, ground, 0 );
setEffRotateKey( spep_7 + 86, ground, 0 );
setEffAlphaKey( spep_7 + 0, ground, 255 );
setEffAlphaKey( spep_7 + 84, ground, 255 );
setEffAlphaKey( spep_7 + 85+1, ground, 255 );
--setEffAlphaKey( spep_7 + 86, ground, 0 );

--顔カットインのタイミング指定
spep_x=spep_7 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 110, 522, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  110,  522);
setEffMoveKey(  spep_x +84,  ctgogo,  110,  522);

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
--[[顔カットイン
SE019 = playSe( spep_x + 12, 1018 );]]

--顔カットイン
--SE019 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_8=spep_7+86-2;
------------------------------------------------------
--気弾を撃つ
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_8 + 0, SP_12x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_8 + 196, kidan, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_8 + 196, kidan, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, kidan, 0 );
setEffRotateKey( spep_8 + 196, kidan, 0 );
setEffAlphaKey( spep_8 + 0, kidan, 255 );
setEffAlphaKey( spep_8 + 194, kidan, 255 );
setEffAlphaKey( spep_8 + 195, kidan, 255 );
setEffAlphaKey( spep_8 + 196, kidan, 0 );

--SE
--腕広げる
SE020 = playSeVer2( spep_8 + 24, 1004, "", 0, 0, 0, -1);

--連続気弾
SE021 = playSeVer2( spep_8 + 54, 1015, "",spep_8 + 82, 0, 12, 0.6);
setSeVolumeByWorkId( spep_8 + 54, SE021, 90 );
setPitch( spep_8 + 54, SE021, -300 );
setTimeStretch( SE021, 0.8, 10, 1 );
SE022 = playSeVer2( spep_8 + 58, 1016, "",spep_8 + 76, 0, 6, 0.6);
setSeVolumeByWorkId( spep_8 + 58, SE022, 126 )
SE023 = playSeVer2( spep_8 + 58, 1027, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_8 + 58, SE023, 66 );
SE024 = playSeVer2( spep_8 + 66, 1015, "",spep_8 + 90, 0, 6, 0.6);
setSeVolumeByWorkId( spep_8 + 66, SE024, 89 );
setPitch( spep_8 + 66, SE024, -300 );
setTimeStretch( SE024, 0.8, 10, 1 );
SE025 = playSeVer2( spep_8 + 70, 1016, "",spep_8 + 88, 0, 8, 0.6);
setSeVolumeByWorkId( spep_8 + 70, SE025, 124 );
SE026 = playSeVer2( spep_8 + 76, 1015, "",spep_8 + 104, 0, 12, 0.6);
setSeVolumeByWorkId( spep_8 + 76, SE026, 93 );
setPitch( spep_8 + 76, SE026, -300 );
setTimeStretch( SE026, 0.8, 10, 1 );
SE027 = playSeVer2( spep_8 + 82, 1016, "",spep_8 + 96, 0, 4, 0.6);
setSeVolumeByWorkId( spep_8 + 82, SE027, 132 );
SE028 = playSeVer2( spep_8 + 88, 1015, "",spep_8 + 116, 0, 10, 0.6);
setSeVolumeByWorkId( spep_8 + 88, SE028, 83 );
setPitch( spep_8 + 88, SE028, -300 );
setTimeStretch( SE028, 0.8, 10, 1 );
SE029 = playSeVer2( spep_8 + 92, 1016, "",spep_8 + 110, 0, 8, 0.6);
setSeVolumeByWorkId( spep_8 + 92, SE029, 142 );
SE030 = playSeVer2( spep_8 + 96, 1015, "",spep_8 + 124, 0, 12, 0.6);
setSeVolumeByWorkId( spep_8 + 96, SE030, 86 );
setPitch( spep_8 + 96, SE030, -300 );
setTimeStretch( SE030, 0.8, 10, 1 );
SE031 = playSeVer2( spep_8 + 102, 1016, "",spep_8 + 120, 0, 8, 0.6);
SE032 = playSeVer2( spep_8 + 110, 1016, "",spep_8 + 128, 0, 8, 0.6);

--連続爆発
SE033 = playSeVer2( spep_8 + 122, 1202, "", 0, 0, 0, -1);

--爆発中連続気弾
SE034 = playSeVer2( spep_8 + 122, 1016, "",spep_8 + 140, 0, 8, 0.6);
SE035 = playSeVer2( spep_8 + 122, 1015, "",spep_8 + 152, 0, 12, 0.6);
setSeVolumeByWorkId( spep_8 + 122, SE035, 80 );
setPitch( spep_8 + 122, SE035, -300 );
setTimeStretch( SE035, 0.8, 10, 1 );

--連続爆発
SE036 = playSeVer2( spep_8 + 126, 1023, "",0, 0, 0, -1);

--爆発中連続気弾
SE037 = playSeVer2( spep_8 + 130, 1015, "",spep_8 + 160, 0, 14, 0.6);
setSeVolumeByWorkId( spep_8 + 130, SE037, 80 );
setPitch( spep_8 + 130, SE037, -300 );
setTimeStretch( SE037, 0.8, 10, 1 );

--連続爆発
SE038 = playSeVer2( spep_8 + 132, 1024, "", 0, 0, 0, -1);

--爆発中連続気弾
SE039 = playSeVer2( spep_8 + 134, 1016, "",spep_8 + 152, 0, 10, -1);
setSeVolumeByWorkId( spep_8 + 134, SE039, 93 );

--連続爆発
SE040 = playSeVer2( spep_8 + 142, 1023, "",0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 142, SE040, 98 );

--爆発中連続気弾
SE041 = playSeVer2( spep_8 + 142, 1015, "",spep_8 + 170, 0, 12, 0.6);
setSeVolumeByWorkId( spep_8 + 142, SE041, 71 );
setPitch( spep_8 + 142, SE041, -300 );
setTimeStretch( SE041, 0.8, 10, 1 );
SE042 = playSeVer2( spep_8 + 146, 1016, "",spep_8 + 164, 0, 8, 0.6);
setSeVolumeByWorkId( spep_8 + 146, SE042, 89 );
SE043 = playSeVer2( spep_8 + 154, 1015, "",spep_8 + 184, 0, 12, 0.6);
setSeVolumeByWorkId( spep_8 + 154, SE043, 70 );
setPitch( spep_8 + 154, SE043, -300 );
setTimeStretch( SE043, 0.8, 10, 1 );

--連続爆発
SE044 = playSeVer2( spep_8 + 156, 1023, "",0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 156, SE044, 72 );

--爆発中連続気弾
SE045 = playSeVer2( spep_8 + 156, 1016, "",spep_8 + 174, 0, 8, 0.6);
setSeVolumeByWorkId( spep_8 + 156, SE045, 71 );
SE046 = playSeVer2( spep_8 + 166, 1016, "",spep_8 + 184, 0, 8, 0.6);
setSeVolumeByWorkId( spep_8 + 166, SE046, 83 );
SE047 = playSeVer2( spep_8 + 166, 1015, "",spep_8 + 194, 0, 12, 0.6);
setSeVolumeByWorkId( spep_8 + 166, SE047, 65 );
setPitch( spep_8 + 166, SE047, -300 );
setTimeStretch( SE047, 0.8, 10, 1 );

--連続爆発
SE048 = playSeVer2( spep_8 + 176, 1023, "",0, 0, 0, -1);

--爆発中連続気弾
SE049 = playSeVer2( spep_8 + 176, 1016, "",spep_8 + 192, 0, 6, 0.6);
setSeVolumeByWorkId( spep_8 + 176, SE049, 81 );
SE050 = playSeVer2( spep_8 + 176, 1015, "",spep_8 + 204, 0, 12, 0.6);
setSeVolumeByWorkId( spep_8 + 176, SE050, 65 );
setPitch( spep_8 + 176, SE050, -300 );
setTimeStretch( SE050, 0.8, 10, 1 );
SE051 = playSeVer2( spep_8 + 186, 1016, "",spep_8 + 204, 0, 8, 0.6);
setSeVolumeByWorkId( spep_8 + 186, SE051, 91 );
SE052 = playSeVer2( spep_8 + 188, 1015, "",spep_8 + 216, 0, 10, 0.6);
setSeVolumeByWorkId( spep_8 + 188, SE052, 63 );
setPitch( spep_8 + 188, SE052, -300 );
setTimeStretch( SE052, 0.8, 10, 1 );
SE053 = playSeVer2( spep_8 + 194, 1016, "",0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_8 + 194, SE053, 87 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 200, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_9=spep_8+196;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_13x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_9 + 150, finish, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 150, finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 150, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 150, finish, 255 );

--SE
--ラスト爆発
SE054 = playSeVer2( spep_9 + 0, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 0, SE054, 110 );
SE055 = playSeVer2( spep_9 + 4, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 4, SE055, 120 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 150, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_9 +40 );
endPhase( spep_9 + 140 );
end