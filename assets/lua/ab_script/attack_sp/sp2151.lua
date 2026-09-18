--1021620:亀仙人_よいこ眠眠拳
--sp_effect_a2_00152

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
SP_01=	156818	;--	左手のアップ
SP_02=	156819	;--	右手のアップ
SP_03=	156820	;--	正面構図でゆらゆら
SP_04=	156821	;--	もや1　前面
SP_05=	156822	;--	もや1　背面
SP_06=	156823	;--	黒バックに手1
SP_07=	156824	;--	もや2　前面
SP_08=	156825	;--	もや2　背面
SP_09=	156826	;--	黒バックに手2
SP_10=	156827	;--	もやが晴れてダウン　前面
SP_11=	156828	;--	もやが晴れてダウン　背面
SP_12=	156829	;--	気をためる
SP_13=	156831	;--	気を発射する
SP_14=	156832	;--	フィニッシュ

--エフェクト(てき方)
SP_01x=	156818	;--	左手のアップ	
SP_02x=	156819	;--	右手のアップ	
SP_03x=	156820	;--	正面構図でゆらゆら	
SP_04x=	156821	;--	もや1　前面	
SP_05x=	156822	;--	もや1　背面	
SP_06x=	156823	;--	黒バックに手1	
SP_07x=	156824	;--	もや2　前面	
SP_08x=	156825	;--	もや2　背面	
SP_09x=	156826	;--	黒バックに手2	
SP_10x=	156827	;--	もやが晴れてダウン　前面	
SP_11x=	156828	;--	もやが晴れてダウン　背面	
SP_12x=	156830	;--	気をためる	(敵)
SP_13x=	156831	;--	気を発射する	
SP_14x=	156878	;--	フィニッシュ	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
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
-- 左手のアップ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
left_hand = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, left_hand, 0, 0, 0 );
setEffMoveKey( spep_0 + 58, left_hand, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, left_hand, 1.0, 1.0 );
setEffScaleKey( spep_0 + 58, left_hand, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, left_hand, 0 );
setEffRotateKey( spep_0 + 58, left_hand, 0 );
setEffAlphaKey( spep_0 + 0, left_hand, 255 );
setEffAlphaKey( spep_0 + 56, left_hand, 255 );
setEffAlphaKey( spep_0 + 57, left_hand, 255 );
setEffAlphaKey( spep_0 + 58, left_hand, 0 );

--SE
--左手あげる
SE001 = playSe( spep_0 + 0, 1278 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );
stopSe( spep_0 + 26, SE001, 20 );
SE002 = playSe( spep_0 + 0, 1117 );
setPitch( spep_0 + 0, SE002, -400 );
setTimeStretch( SE002, 0.73, 10, 1 );
stopSe( spep_0 + 20, SE002, 54 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1=spep_0+56;
------------------------------------------------------
-- 右手のアップ
------------------------------------------------------
-- ** エフェクト等 ** --
right_hand = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, right_hand, 0, 0, 0 );
setEffMoveKey( spep_1 + 58, right_hand, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, right_hand, 1.0, 1.0 );
setEffScaleKey( spep_1 + 58, right_hand, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, right_hand, 0 );
setEffRotateKey( spep_1 + 58, right_hand, 0 );
setEffAlphaKey( spep_1 + 0, right_hand, 255 );
setEffAlphaKey( spep_1 + 56, right_hand, 255 );
setEffAlphaKey( spep_1 + 57, right_hand, 255 );
setEffAlphaKey( spep_1 + 58, right_hand, 0 );

--SE
--右手あげる
SE003 = playSe( spep_1 + 0, 1278 );
setSeVolumeByWorkId( spep_1 + 0, SE003, 0 );
setSeVolumeByWorkId( spep_1 + 1, SE003, 7.9 );
setSeVolumeByWorkId( spep_1 + 2, SE003, 15.8 );
setSeVolumeByWorkId( spep_1 + 3, SE003, 23.7 );
setSeVolumeByWorkId( spep_1 + 4, SE003, 31.6 );
setSeVolumeByWorkId( spep_1 + 5, SE003, 39.5 );
setSeVolumeByWorkId( spep_1 + 6, SE003, 47.4 );
setSeVolumeByWorkId( spep_1 + 7, SE003, 55.3 );
setSeVolumeByWorkId( spep_1 + 8, SE003, 63.2 );
setSeVolumeByWorkId( spep_1 + 9, SE003, 71.1 );
setSeVolumeByWorkId( spep_1 + 10, SE003, 79 );
setStartTimeMs( SE003,  133 );
stopSe( spep_1 + 30, SE003, 40 );
SE006 = playSe( spep_1 + 2, 1117 );
setSeVolumeByWorkId( spep_1 + 2, SE006, 78 );
stopSe( spep_1 + 22, SE006, 50 );


-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_2=spep_1+56;
------------------------------------------------------
-- 正面構図でゆらゆら
------------------------------------------------------
-- ** エフェクト等 ** --
yura = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, yura, 0, 0, 0 );
setEffMoveKey( spep_2 + 118, yura, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, yura, 1.0, 1.0 );
setEffScaleKey( spep_2 + 118, yura, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, yura, 0 );
setEffRotateKey( spep_2 + 118, yura, 0 );
setEffAlphaKey( spep_2 + 0, yura, 255 );
setEffAlphaKey( spep_2 + 116, yura, 255 );
setEffAlphaKey( spep_2 + 117, yura, 255 );
setEffAlphaKey( spep_2 + 118, yura, 0 );

--SE
--こもりうた（前半）
SE007 = playSe( spep_2 + 0, 1308 );
setSeVolumeByWorkId( spep_2 + 0, SE007, 0 );
setSeVolumeByWorkId( spep_2 + 1, SE007, 7.1 );
setSeVolumeByWorkId( spep_2 + 2, SE007, 14.2 );
setSeVolumeByWorkId( spep_2 + 3, SE007, 21.3 );
setSeVolumeByWorkId( spep_2 + 4, SE007, 28.4 );
setSeVolumeByWorkId( spep_2 + 5, SE007, 35.5 );
setSeVolumeByWorkId( spep_2 + 6, SE007, 42.6 );
setSeVolumeByWorkId( spep_2 + 7, SE007, 49.7 );
setSeVolumeByWorkId( spep_2 + 8, SE007, 56.8 );
setSeVolumeByWorkId( spep_2 + 9, SE007, 63.9 );
setSeVolumeByWorkId( spep_2 + 10, SE007, 71 );
setSeVolumeByWorkId( spep_2 + 11, SE007, 78.1 );
setSeVolumeByWorkId( spep_2 + 12, SE007, 85.2 );
setSeVolumeByWorkId( spep_2 + 13, SE007, 92.3 );
SE004 = playSe( spep_2 + 2, 1315 ,"",0.7);
setSeVolumeByWorkId( spep_2 + 2, SE004, 0 );
setSeVolumeByWorkId( spep_2 + 3, SE004, 23.6 );
setSeVolumeByWorkId( spep_2 + 4, SE004, 47.2 );
setSeVolumeByWorkId( spep_2 + 5, SE004, 70.8 );
setSeVolumeByWorkId( spep_2 + 6, SE004, 94.4 );
setSeVolumeByWorkId( spep_2 + 7, SE004, 118 );
setSeVolumeByWorkId( spep_2 + 8, SE004, 141 );
setStartTimeMs( SE004,  1000 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 50 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE003, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    --setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    --setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    --setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

--顔カットインのタイミング指定
spep_x=spep_2 +16;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--顔カットイン
SE008 = playSe( spep_x +12, 1018 );

--白フェード
entryFade( spep_2 + 104, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+118;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

--極限Z用に修正(2021/02/02)
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 86, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 86, shuchusen, 255 );

-- ** 音 ** --
--こもりうた（前半）
stopSe( spep_3 + 10, SE004, 0 );
stopSe( spep_3 + 10, SE007, 0 );


--playSe( spep_3 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;
------------------------------------------------------
-- もや1
------------------------------------------------------
-- ** エフェクト等 ** --
moya1_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, moya1_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 68, moya1_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, moya1_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 68, moya1_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, moya1_f, 0 );
setEffRotateKey( spep_4 + 68, moya1_f, 0 );
setEffAlphaKey( spep_4 + 0, moya1_f, 255 );
setEffAlphaKey( spep_4 + 66, moya1_f, 255 );
setEffAlphaKey( spep_4 + 67, moya1_f, 255 );
setEffAlphaKey( spep_4 + 68, moya1_f, 0 );

-- ** エフェクト等 ** --
moya1_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, moya1_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 68, moya1_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, moya1_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 68, moya1_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, moya1_b, 0 );
setEffRotateKey( spep_4 + 68, moya1_b, 0 );
setEffAlphaKey( spep_4 + 0, moya1_b, 255 );
setEffAlphaKey( spep_4 + 66, moya1_b, 255 );
setEffAlphaKey( spep_4 + 67, moya1_b, 255 );
setEffAlphaKey( spep_4 + 68, moya1_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 68, 1, 0 );

changeAnime( spep_4 + 0, 1, 117 );

setMoveKey( spep_4 + 0, 1, 1.9, -14.4 , 0 );
setMoveKey( spep_4 + 2, 1, 2, -14.4 , 0 );
setMoveKey( spep_4 + 4, 1, 1.9, -14.3 , 0 );
setMoveKey( spep_4 + 6, 1, 1.9, -14.2 , 0 );
setMoveKey( spep_4 + 8, 1, 2, -14.1 , 0 );
setMoveKey( spep_4 + 10, 1, 1.9, -14.1 , 0 );
setMoveKey( spep_4 + 12, 1, 1.9, -14 , 0 );
setMoveKey( spep_4 + 14, 1, 1.9, -13.9 , 0 );
setMoveKey( spep_4 + 16, 1, 1.9, -13.9 , 0 );
setMoveKey( spep_4 + 18, 1, 1.9, -13.8 , 0 );
setMoveKey( spep_4 + 20, 1, 1.9, -13.8 , 0 );
setMoveKey( spep_4 + 22, 1, 2, -13.8 , 0 );
setMoveKey( spep_4 + 24, 1, 2, -13.8 , 0 );
setMoveKey( spep_4 + 26, 1, 2.1, -13.7 , 0 );
setMoveKey( spep_4 + 28, 1, 2.1, -13.8 , 0 );
setMoveKey( spep_4 + 30, 1, 2.2, -13.8 , 0 );
setMoveKey( spep_4 + 32, 1, 2.2, -13.7 , 0 );
setMoveKey( spep_4 + 34, 1, 2.3, -13.7 , 0 );
setMoveKey( spep_4 + 36, 1, 2.3, -13.7 , 0 );
setMoveKey( spep_4 + 38, 1, 2.4, -13.7 , 0 );
setMoveKey( spep_4 + 40, 1, 2.4, -13.7 , 0 );
setMoveKey( spep_4 + 42, 1, 2.5, -13.7 , 0 );
setMoveKey( spep_4 + 44, 1, 2.6, -13.6 , 0 );
setMoveKey( spep_4 + 46, 1, 2.5, -13.6 , 0 );
setMoveKey( spep_4 + 50, 1, 2.5, -13.6 , 0 );
setMoveKey( spep_4 + 52, 1, 2.5, -13.5 , 0 );
setMoveKey( spep_4 + 54, 1, 2.5, -13.4 , 0 );
setMoveKey( spep_4 + 56, 1, 2.4, -13.4 , 0 );
setMoveKey( spep_4 + 58, 1, 2.4, -13.4 , 0 );
setMoveKey( spep_4 + 60, 1, 2.4, -13.3 , 0 );
setMoveKey( spep_4 + 66, 1, 2.4, -13.3 , 0 );
setMoveKey( spep_4 + 68, 1, 2.3, -13.2 , 0 );

setScaleKey( spep_4 + 0, 1, 2.31, 2.31 );
setScaleKey( spep_4 + 2, 1, 2.27, 2.27 );
setScaleKey( spep_4 + 4, 1, 2.23, 2.23 );
setScaleKey( spep_4 + 6, 1, 2.18, 2.18 );
setScaleKey( spep_4 + 8, 1, 2.14, 2.14 );
setScaleKey( spep_4 + 10, 1, 2.1, 2.1 );
setScaleKey( spep_4 + 12, 1, 2.05, 2.05 );
setScaleKey( spep_4 + 14, 1, 2.01, 2.01 );
setScaleKey( spep_4 + 16, 1, 1.97, 1.97 );
setScaleKey( spep_4 + 18, 1, 1.92, 1.92 );
setScaleKey( spep_4 + 20, 1, 1.95, 1.95 );
setScaleKey( spep_4 + 22, 1, 1.98, 1.98 );
setScaleKey( spep_4 + 24, 1, 2.01, 2.01 );
setScaleKey( spep_4 + 26, 1, 2.03, 2.03 );
setScaleKey( spep_4 + 28, 1, 2.06, 2.06 );
setScaleKey( spep_4 + 30, 1, 2.09, 2.09 );
setScaleKey( spep_4 + 32, 1, 2.11, 2.11 );
setScaleKey( spep_4 + 34, 1, 2.14, 2.14 );
setScaleKey( spep_4 + 36, 1, 2.17, 2.17 );
setScaleKey( spep_4 + 38, 1, 2.19, 2.19 );
setScaleKey( spep_4 + 40, 1, 2.22, 2.22 );
setScaleKey( spep_4 + 42, 1, 2.25, 2.25 );
setScaleKey( spep_4 + 44, 1, 2.27, 2.27 );
setScaleKey( spep_4 + 46, 1, 2.25, 2.25 );
setScaleKey( spep_4 + 48, 1, 2.23, 2.23 );
setScaleKey( spep_4 + 50, 1, 2.21, 2.21 );
setScaleKey( spep_4 + 52, 1, 2.19, 2.19 );
setScaleKey( spep_4 + 54, 1, 2.16, 2.16 );
setScaleKey( spep_4 + 56, 1, 2.14, 2.14 );
setScaleKey( spep_4 + 58, 1, 2.12, 2.12 );
setScaleKey( spep_4 + 60, 1, 2.1, 2.1 );
setScaleKey( spep_4 + 62, 1, 2.07, 2.07 );
setScaleKey( spep_4 + 64, 1, 2.05, 2.05 );
setScaleKey( spep_4 + 66, 1, 2.03, 2.03 );
setScaleKey( spep_4 + 68, 1, 2.01, 2.01 );

setRotateKey( spep_4 + 0, 1, 4.8 );
setRotateKey( spep_4 + 2, 1, 4 );
setRotateKey( spep_4 + 4, 1, 3 );
setRotateKey( spep_4 + 6, 1, 2 );
setRotateKey( spep_4 + 8, 1, 1 );
setRotateKey( spep_4 + 10, 1, 0 );
setRotateKey( spep_4 + 12, 1, -1.1 );
setRotateKey( spep_4 + 14, 1, -2.1 );
setRotateKey( spep_4 + 16, 1, -3.1 );
setRotateKey( spep_4 + 18, 1, -4.1 );
setRotateKey( spep_4 + 20, 1, -4.9 );
setRotateKey( spep_4 + 22, 1, -5.7 );
setRotateKey( spep_4 + 24, 1, -6.6 );
setRotateKey( spep_4 + 26, 1, -7.4 );
setRotateKey( spep_4 + 28, 1, -8.3 );
setRotateKey( spep_4 + 30, 1, -9.1 );
setRotateKey( spep_4 + 32, 1, -10 );
setRotateKey( spep_4 + 34, 1, -10.8 );
setRotateKey( spep_4 + 36, 1, -11.6 );
setRotateKey( spep_4 + 38, 1, -12.5 );
setRotateKey( spep_4 + 40, 1, -13.3 );
setRotateKey( spep_4 + 42, 1, -14.2 );
setRotateKey( spep_4 + 44, 1, -15 );
setRotateKey( spep_4 + 46, 1, -15.4 );
setRotateKey( spep_4 + 48, 1, -15.9 );
setRotateKey( spep_4 + 50, 1, -16.3 );
setRotateKey( spep_4 + 52, 1, -16.7 );
setRotateKey( spep_4 + 54, 1, -17.1 );
setRotateKey( spep_4 + 56, 1, -17.6 );
setRotateKey( spep_4 + 58, 1, -18 );
setRotateKey( spep_4 + 60, 1, -18.4 );
setRotateKey( spep_4 + 62, 1, -18.8 );
setRotateKey( spep_4 + 64, 1, -19.2 );
setRotateKey( spep_4 + 66, 1, -19.7 );
setRotateKey( spep_4 + 68, 1, -20.1 );

--SE
--こもりうた（後半）
SE010 = playSe( spep_4 + 0, 1308 );
setSeVolumeByWorkId( spep_4 + 0, SE010, 0 );
setSeVolumeByWorkId( spep_4 + 1, SE010, 9 );
setSeVolumeByWorkId( spep_4 + 2, SE010, 18 );
setSeVolumeByWorkId( spep_4 + 3, SE010, 27 );
setSeVolumeByWorkId( spep_4 + 4, SE010, 36 );
setSeVolumeByWorkId( spep_4 + 5, SE010, 45 );
setSeVolumeByWorkId( spep_4 + 6, SE010, 54 );
setSeVolumeByWorkId( spep_4 + 7, SE010, 63 );
setSeVolumeByWorkId( spep_4 + 8, SE010, 72 );
setSeVolumeByWorkId( spep_4 + 9, SE010, 81 );
setSeVolumeByWorkId( spep_4 + 10, SE010, 90 );
setSeVolumeByWorkId( spep_4 + 11, SE010, 99 );
setSeVolumeByWorkId( spep_4 + 12, SE010, 108 );
setSeVolumeByWorkId( spep_4 + 13, SE010, 117 );
setSeVolumeByWorkId( spep_4 + 14, SE010, 126 );
SE005 = playSe( spep_4 + 10, 1315,"",0.7 );
setSeVolumeByWorkId( spep_4 + 10, SE005, 0 );
setSeVolumeByWorkId( spep_4 + 11, SE005, 79.1 );
setSeVolumeByWorkId( spep_4 + 12, SE005, 158.2 );
setSeVolumeByWorkId( spep_4 + 13, SE005, 237.3 );
setSeVolumeByWorkId( spep_4 + 14, SE005, 316 );
setStartTimeMs( SE005,  4617 );


-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5=spep_4+68;
------------------------------------------------------
-- 黒バックに手1
------------------------------------------------------
-- ** エフェクト等 ** --
hand = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hand, 0, 0, 0 );
setEffMoveKey( spep_5 + 86, hand, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hand, 1.0, 1.0 );
setEffScaleKey( spep_5 + 86, hand, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hand, 0 );
setEffRotateKey( spep_5 + 86, hand, 0 );
setEffAlphaKey( spep_5 + 0, hand, 255 );
setEffAlphaKey( spep_5 + 84, hand, 255 );
setEffAlphaKey( spep_5 + 85, hand, 255 );
setEffAlphaKey( spep_5 + 86, hand, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_6=spep_5+86;
------------------------------------------------------
-- もや2
------------------------------------------------------
-- ** エフェクト等 ** --
moya1_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, moya1_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 70, moya1_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, moya1_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 70, moya1_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, moya1_f, 0 );
setEffRotateKey( spep_6 + 70, moya1_f, 0 );
setEffAlphaKey( spep_6 + 0, moya1_f, 255 );
setEffAlphaKey( spep_6 + 68, moya1_f, 255 );
setEffAlphaKey( spep_6 + 69, moya1_f, 255 );
setEffAlphaKey( spep_6 + 70, moya1_f, 0 );

-- ** エフェクト等 ** --
moya1_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, moya1_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 70, moya1_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, moya1_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 70, moya1_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, moya1_b, 0 );
setEffRotateKey( spep_6 + 70, moya1_b, 0 );
setEffAlphaKey( spep_6 + 0, moya1_b, 255 );
setEffAlphaKey( spep_6 + 68, moya1_b, 255 );
setEffAlphaKey( spep_6 + 69, moya1_b, 255 );
setEffAlphaKey( spep_6 + 70, moya1_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 70, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, -29.8, 25.1 , 0 );
setMoveKey( spep_6 + 2, 1, -29.8, 25.2 , 0 );
setMoveKey( spep_6 + 4, 1, -29.8, 25.2 , 0 );
setMoveKey( spep_6 + 6, 1, -29.9, 25.2 , 0 );
setMoveKey( spep_6 + 14, 1, -29.9, 25.2 , 0 );
setMoveKey( spep_6 + 16, 1, -29.9, 25.3 , 0 );
setMoveKey( spep_6 + 18, 1, -30, 25.3 , 0 );
setMoveKey( spep_6 + 28, 1, -30, 25.3 , 0 );
setMoveKey( spep_6 + 30, 1, -30.1, 25.2 , 0 );
setMoveKey( spep_6 + 40, 1, -30.1, 25.2 , 0 );
setMoveKey( spep_6 + 42, 1, -30.2, 25.2 , 0 );
setMoveKey( spep_6 + 50, 1, -30.2, 25.2 , 0 );
setMoveKey( spep_6 + 52, 1, -30.2, 25.3 , 0 );
setMoveKey( spep_6 + 56, 1, -30.2, 25.3 , 0 );
setMoveKey( spep_6 + 58, 1, -30.3, 25.3 , 0 );
setMoveKey( spep_6 + 60, 1, -30.3, 25.3 , 0 );
setMoveKey( spep_6 + 62, 1, -30.3, 25.4 , 0 );
setMoveKey( spep_6 + 70, 1, -30.3, 25.4 , 0 );

setScaleKey( spep_6 + 0, 1, 2.19, 2.19 );
setScaleKey( spep_6 + 2, 1, 2.16, 2.16 );
setScaleKey( spep_6 + 4, 1, 2.14, 2.14 );
setScaleKey( spep_6 + 6, 1, 2.11, 2.11 );
setScaleKey( spep_6 + 8, 1, 2.09, 2.09 );
setScaleKey( spep_6 + 10, 1, 2.07, 2.07 );
setScaleKey( spep_6 + 12, 1, 2.04, 2.04 );
setScaleKey( spep_6 + 14, 1, 2.02, 2.02 );
setScaleKey( spep_6 + 16, 1, 1.99, 1.99 );
setScaleKey( spep_6 + 18, 1, 1.97, 1.97 );
setScaleKey( spep_6 + 20, 1, 1.95, 1.95 );
setScaleKey( spep_6 + 22, 1, 1.96, 1.96 );
setScaleKey( spep_6 + 24, 1, 1.97, 1.97 );
setScaleKey( spep_6 + 26, 1, 1.98, 1.98 );
setScaleKey( spep_6 + 28, 1, 1.99, 1.99 );
setScaleKey( spep_6 + 30, 1, 2, 2 );
setScaleKey( spep_6 + 32, 1, 2.01, 2.01 );
setScaleKey( spep_6 + 34, 1, 2.02, 2.02 );
setScaleKey( spep_6 + 36, 1, 2.03, 2.03 );
setScaleKey( spep_6 + 38, 1, 2.04, 2.04 );
setScaleKey( spep_6 + 40, 1, 2.05, 2.05 );
setScaleKey( spep_6 + 42, 1, 2.06, 2.06 );
setScaleKey( spep_6 + 44, 1, 2.07, 2.07 );
setScaleKey( spep_6 + 46, 1, 2.08, 2.08 );
setScaleKey( spep_6 + 48, 1, 2.05, 2.05 );
setScaleKey( spep_6 + 50, 1, 2.03, 2.03 );
setScaleKey( spep_6 + 52, 1, 2, 2 );
setScaleKey( spep_6 + 54, 1, 1.97, 1.97 );
setScaleKey( spep_6 + 56, 1, 1.95, 1.95 );
setScaleKey( spep_6 + 58, 1, 1.92, 1.92 );
setScaleKey( spep_6 + 60, 1, 1.9, 1.9 );
setScaleKey( spep_6 + 62, 1, 1.87, 1.87 );
setScaleKey( spep_6 + 64, 1, 1.84, 1.84 );
setScaleKey( spep_6 + 66, 1, 1.82, 1.82 );
setScaleKey( spep_6 + 68, 1, 1.79, 1.79 );
setScaleKey( spep_6 + 70, 1, 1.76, 1.76 );

setRotateKey( spep_6 + 0, 1, -50.2 );
setRotateKey( spep_6 + 2, 1, -49.5 );
setRotateKey( spep_6 + 4, 1, -48.7 );
setRotateKey( spep_6 + 6, 1, -48 );
setRotateKey( spep_6 + 8, 1, -47.2 );
setRotateKey( spep_6 + 10, 1, -46.5 );
setRotateKey( spep_6 + 12, 1, -45.7 );
setRotateKey( spep_6 + 14, 1, -45 );
setRotateKey( spep_6 + 16, 1, -44.2 );
setRotateKey( spep_6 + 18, 1, -43.5 );
setRotateKey( spep_6 + 20, 1, -42.8 );
setRotateKey( spep_6 + 22, 1, -42 );
setRotateKey( spep_6 + 24, 1, -41.2 );
setRotateKey( spep_6 + 26, 1, -40.4 );
setRotateKey( spep_6 + 28, 1, -39.6 );
setRotateKey( spep_6 + 30, 1, -38.8 );
setRotateKey( spep_6 + 32, 1, -38 );
setRotateKey( spep_6 + 34, 1, -37.2 );
setRotateKey( spep_6 + 36, 1, -36.4 );
setRotateKey( spep_6 + 38, 1, -35.6 );
setRotateKey( spep_6 + 40, 1, -34.9 );
setRotateKey( spep_6 + 42, 1, -34.1 );
setRotateKey( spep_6 + 44, 1, -33.3 );
setRotateKey( spep_6 + 46, 1, -32.5 );
setRotateKey( spep_6 + 48, 1, -31.9 );
setRotateKey( spep_6 + 50, 1, -31.4 );
setRotateKey( spep_6 + 52, 1, -30.8 );
setRotateKey( spep_6 + 54, 1, -30.3 );
setRotateKey( spep_6 + 56, 1, -29.7 );
setRotateKey( spep_6 + 58, 1, -29.1 );
setRotateKey( spep_6 + 60, 1, -28.6 );
setRotateKey( spep_6 + 62, 1, -28 );
setRotateKey( spep_6 + 64, 1, -27.5 );
setRotateKey( spep_6 + 66, 1, -26.9 );
setRotateKey( spep_6 + 68, 1, -26.4 );
setRotateKey( spep_6 + 70, 1, -25.8 );

--こもりうた（後半）
stopSe( spep_6 + 4, SE005, 70 );
SE011 = playSe( spep_6 + 0, 1315,"",0.7 );
setSeVolumeByWorkId( spep_6 + 0, SE011, 0 );
setSeVolumeByWorkId( spep_6 + 1, SE011, 62.8 );
setSeVolumeByWorkId( spep_6 + 2, SE011, 125.6 );
setSeVolumeByWorkId( spep_6 + 3, SE011, 188.4 );
setSeVolumeByWorkId( spep_6 + 4, SE011, 251 );
setStartTimeMs( SE011,  1033 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_7=spep_6+68;
------------------------------------------------------
-- 黒バックに手2
------------------------------------------------------
-- ** エフェクト等 ** --
hand2 = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, hand2, 0, 0, 0 );
setEffMoveKey( spep_7 + 56, hand2, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, hand2, 1.0, 1.0 );
setEffScaleKey( spep_7 + 56, hand2, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hand2, 0 );
setEffRotateKey( spep_7 + 56, hand2, 0 );
setEffAlphaKey( spep_7 + 0, hand2, 255 );
setEffAlphaKey( spep_7 + 54, hand2, 255 );
setEffAlphaKey( spep_7 + 55, hand2, 255 );
setEffAlphaKey( spep_7 + 56, hand2, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_8=spep_7+56;
------------------------------------------------------
-- もやが晴れてダウン
------------------------------------------------------
-- ** エフェクト等 ** --
down_f = entryEffect( spep_8 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, down_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 56, down_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, down_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, down_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, down_f, 0 );
setEffRotateKey( spep_8 + 56, down_f, 0 );
setEffAlphaKey( spep_8 + 0, down_f, 255 );
setEffAlphaKey( spep_8 + 54, down_f, 255 );
setEffAlphaKey( spep_8 + 55, down_f, 255 );
setEffAlphaKey( spep_8 + 56, down_f, 0 );

-- ** エフェクト等 ** --
down_b = entryEffect( spep_8 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, down_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 56, down_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, down_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, down_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, down_b, 0 );
setEffRotateKey( spep_8 + 56, down_b, 0 );
setEffAlphaKey( spep_8 + 0, down_b, 255 );
setEffAlphaKey( spep_8 + 54, down_b, 255 );
setEffAlphaKey( spep_8 + 55, down_b, 255 );
setEffAlphaKey( spep_8 + 56, down_b, 0 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 56, 1, 0 );

changeAnime( spep_8 + 0, 1, 106 );
changeAnime( spep_8-3 + 46, 1, 5 );

setMoveKey( spep_8 + 0, 1, -35.6, -48.5 , 0 );
--setMoveKey( spep_8-3 + 2, 1, -38.1, -48.3 , 0 );
setMoveKey( spep_8-3 + 4, 1, -40.4, -48.6 , 0 );
setMoveKey( spep_8-3 + 6, 1, -42.6, -48.8 , 0 );
setMoveKey( spep_8-3 + 8, 1, -44.8, -49.1 , 0 );
setMoveKey( spep_8-3 + 10, 1, -47, -49.4 , 0 );
setMoveKey( spep_8-3 + 12, 1, -49.3, -49.8 , 0 );
setMoveKey( spep_8-3 + 14, 1, -51.5, -50.1 , 0 );
setMoveKey( spep_8-3 + 16, 1, -53.7, -50.5 , 0 );
setMoveKey( spep_8-3 + 18, 1, -55.9, -50.9 , 0 );
setMoveKey( spep_8-3 + 20, 1, -58.1, -51.3 , 0 );
setMoveKey( spep_8-3 + 22, 1, -54.5, -50.6 , 0 );
setMoveKey( spep_8-3 + 24, 1, -50.9, -50 , 0 );
setMoveKey( spep_8-3 + 26, 1, -47.4, -49.5 , 0 );
setMoveKey( spep_8-3 + 28, 1, -43.8, -49 , 0 );
setMoveKey( spep_8-3 + 30, 1, -40.2, -48.5 , 0 );
setMoveKey( spep_8-3 + 32, 1, -36.6, -48.1 , 0 );
setMoveKey( spep_8-3 + 34, 1, -32.9, -47.8 , 0 );
setMoveKey( spep_8-3 + 36, 1, -29.3, -47.5 , 0 );
setMoveKey( spep_8-3 + 38, 1, -25.7, -47.2 , 0 );
setMoveKey( spep_8-3 + 40, 1, -22.1, -47.1 , 0 );
setMoveKey( spep_8-3 + 42, 1, -18.4, -46.9 , 0 );
setMoveKey( spep_8-3 + 45, 1, -14.8, -46.8 , 0 );
setMoveKey( spep_8-3 + 46, 1, 1.3, -221.9 , 0 );
setMoveKey( spep_8-3 + 48, 1, 1.3, -216.3 , 0 );
setMoveKey( spep_8-3 + 50, 1, 1.3, -231.9 , 0 );
setMoveKey( spep_8-3 + 52, 1, 1.3, -228.6 , 0 );
setMoveKey( spep_8-3 + 54, 1, 1.3, -237.5 , 0 );
setMoveKey( spep_8 + 56, 1, 1.3, -237.5 , 0 );

setScaleKey( spep_8 + 0, 1, 1.86, 1.86 );
setScaleKey( spep_8-3 + 45, 1, 1.86, 1.86 );
setScaleKey( spep_8-3 + 46, 1, 1.7, 1.7 );
setScaleKey( spep_8-3 + 48, 1, 1.71, 1.71 );
setScaleKey( spep_8 + 56, 1, 1.71, 1.71 );

setRotateKey( spep_8 + 0, 1, -50.2 );
--setRotateKey( spep_8-3 + 2, 1, -50.7 );
setRotateKey( spep_8-3 + 4, 1, -51.2 );
setRotateKey( spep_8-3 + 6, 1, -51.7 );
setRotateKey( spep_8-3 + 8, 1, -52.2 );
setRotateKey( spep_8-3 + 10, 1, -52.7 );
setRotateKey( spep_8-3 + 12, 1, -53.2 );
setRotateKey( spep_8-3 + 14, 1, -53.7 );
setRotateKey( spep_8-3 + 16, 1, -54.2 );
setRotateKey( spep_8-3 + 18, 1, -54.7 );
setRotateKey( spep_8-3 + 20, 1, -55.2 );
setRotateKey( spep_8-3 + 22, 1, -54.4 );
setRotateKey( spep_8-3 + 24, 1, -53.6 );
setRotateKey( spep_8-3 + 26, 1, -52.8 );
setRotateKey( spep_8-3 + 28, 1, -52 );
setRotateKey( spep_8-3 + 30, 1, -51.2 );
setRotateKey( spep_8-3 + 32, 1, -50.4 );
setRotateKey( spep_8-3 + 34, 1, -49.6 );
setRotateKey( spep_8-3 + 36, 1, -48.7 );
setRotateKey( spep_8-3 + 38, 1, -47.9 );
setRotateKey( spep_8-3 + 40, 1, -47.1 );
setRotateKey( spep_8-3 + 42, 1, -46.3 );
setRotateKey( spep_8-3 + 45, 1, -45.5 );
setRotateKey( spep_8-3 + 46, 1, 38.8 );
setRotateKey( spep_8 + 56, 1, 38.8 );

--SE
--こもりうた（後半）
stopSe( spep_8 + 10, SE010, 64 );

--敵倒れる
SE012 = playSe( spep_8 + 44, 1192 );
setSeVolumeByWorkId( spep_8 + 44, SE012, 141 );
SE013 = playSe( spep_8 + 44, 1014 );
setSeVolumeByWorkId( spep_8 + 44, SE013, 81 );


-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_9=spep_8+56;
------------------------------------------------------
-- 気をためる
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_9 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_9 + 86, tame, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_9 + 86, tame, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, tame, 0 );
setEffRotateKey( spep_9 + 86, tame, 0 );
setEffAlphaKey( spep_9 + 0, tame, 255 );
setEffAlphaKey( spep_9 + 84, tame, 255 );
setEffAlphaKey( spep_9 + 85, tame, 255 );
setEffAlphaKey( spep_9 + 86, tame, 0 );

--SE
--こもりうた（後半）
stopSe( spep_9 + 30, SE011, 0 );

--歩く
SE015 = playSe( spep_9 + 30, 1107 );
SE017 = playSe( spep_9 + 62, 1108 );

--気弾溜める
SE016 = playSe( spep_9 + 44, 1307 );
setSeVolumeByWorkId( spep_9 + 44, SE016, 251 );	
setPitch( spep_9 + 44, SE016, -100 );
setTimeStretch( SE016, 0.93, 10, 1 );
SE014 = playSe( spep_9 + 50, 1222 );
setSeVolumeByWorkId( spep_9 + 50, SE014, 0 );
setSeVolumeByWorkId( spep_9 + 51, SE014, 6.3 );
setSeVolumeByWorkId( spep_9 + 52, SE014, 12.6 );
setSeVolumeByWorkId( spep_9 + 53, SE014, 18.9 );
setSeVolumeByWorkId( spep_9 + 54, SE014, 25.2 );
setSeVolumeByWorkId( spep_9 + 55, SE014, 31.5 );
setSeVolumeByWorkId( spep_9 + 56, SE014, 37.8 );
setSeVolumeByWorkId( spep_9 + 57, SE014, 44.1 );
setSeVolumeByWorkId( spep_9 + 58, SE014, 50.4 );
setSeVolumeByWorkId( spep_9 + 59, SE014, 56.7 );
setSeVolumeByWorkId( spep_9 + 60, SE014, 63 );
setSeVolumeByWorkId( spep_9 + 61, SE014, 69.3 );
setSeVolumeByWorkId( spep_9 + 62, SE014, 76 );
setStartTimeMs( SE014,  450 );


-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_10=spep_9+86;
------------------------------------------------------
-- 気を発射する
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_10 + 0, SP_13, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_10 + 56, beam, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, beam, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, beam, 0 );
setEffRotateKey( spep_10 + 56, beam, 0 );
setEffAlphaKey( spep_10 + 0, beam, 255 );
setEffAlphaKey( spep_10 + 54, beam, 255 );
setEffAlphaKey( spep_10 + 55, beam, 255 );
setEffAlphaKey( spep_10 + 56, beam, 0 );

--SE
--腕前へ
SE018 = playSe( spep_10 + 0, 1004 );
setSeVolumeByWorkId( spep_10 + 0, SE018, 72 );

--気弾発射
SE019 = playSe( spep_10 + 48, 1312 );
setSeVolumeByWorkId( spep_10 + 48, SE019, 141 );
SE020 = playSe( spep_10 + 48, 1264 );
setPitch( spep_10 + 48, SE020, 500 );
setTimeStretch( SE020, 1.33, 10, 1 );
SE021 = playSe( spep_10 + 48, 1114 );
setSeVolumeByWorkId( spep_10 + 48, SE021, 112 );

--黒フェード
entryFade( spep_10 + 28, 10, 2, 0, 0, 0, 0, 255 );  --black fade

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 69, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_11=spep_10+56;
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_11 + 0, SP_14, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_11 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_11 + 120, finish, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish, 0 );
setEffRotateKey( spep_11 + 120, finish, 0 );
setEffAlphaKey( spep_11 + 0, finish, 255 );
setEffAlphaKey( spep_11 + 120, finish, 255 );

--SE
--気弾発射
stopSe( spep_11 + 12, SE020, 80 );

--地割れ
SE022 = playSe( spep_11 + 0, 1159 );
setSeVolumeByWorkId( spep_11 + 0, SE022, 75 );
SE023 = playSe( spep_11 + 6, 1044 );
setSeVolumeByWorkId( spep_11 + 6, SE023, 60 );
SE024 = playSe( spep_11 + 18, 1168 );
setSeVolumeByWorkId( spep_11 + 18, SE024, 75 );
stopSe( spep_11 + 58, SE024, 62 );

-- ** ダメージ表示 ** --
dealDamage( spep_11 + 10 );
endPhase( spep_11 + 110 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 左手のアップ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
left_hand = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, left_hand, 0, 0, 0 );
setEffMoveKey( spep_0 + 58, left_hand, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, left_hand, -1.0, 1.0 );
setEffScaleKey( spep_0 + 58, left_hand, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, left_hand, 0 );
setEffRotateKey( spep_0 + 58, left_hand, 0 );
setEffAlphaKey( spep_0 + 0, left_hand, 255 );
setEffAlphaKey( spep_0 + 56, left_hand, 255 );
setEffAlphaKey( spep_0 + 57, left_hand, 255 );
setEffAlphaKey( spep_0 + 58, left_hand, 0 );

--SE
--左手あげる
SE001 = playSe( spep_0 + 0, 1278 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );
stopSe( spep_0 + 26, SE001, 20 );
SE002 = playSe( spep_0 + 0, 1117 );
setPitch( spep_0 + 0, SE002, -400 );
setTimeStretch( SE002, 0.73, 10, 1 );
stopSe( spep_0 + 20, SE002, 54 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1=spep_0+56;
------------------------------------------------------
-- 右手のアップ
------------------------------------------------------
-- ** エフェクト等 ** --
right_hand = entryEffect( spep_1 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, right_hand, 0, 0, 0 );
setEffMoveKey( spep_1 + 58, right_hand, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, right_hand, -1.0, 1.0 );
setEffScaleKey( spep_1 + 58, right_hand, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, right_hand, 0 );
setEffRotateKey( spep_1 + 58, right_hand, 0 );
setEffAlphaKey( spep_1 + 0, right_hand, 255 );
setEffAlphaKey( spep_1 + 56, right_hand, 255 );
setEffAlphaKey( spep_1 + 57, right_hand, 255 );
setEffAlphaKey( spep_1 + 58, right_hand, 0 );

--SE
--右手あげる
SE003 = playSe( spep_1 + 0, 1278 );
setSeVolumeByWorkId( spep_1 + 0, SE003, 0 );
setSeVolumeByWorkId( spep_1 + 1, SE003, 7.9 );
setSeVolumeByWorkId( spep_1 + 2, SE003, 15.8 );
setSeVolumeByWorkId( spep_1 + 3, SE003, 23.7 );
setSeVolumeByWorkId( spep_1 + 4, SE003, 31.6 );
setSeVolumeByWorkId( spep_1 + 5, SE003, 39.5 );
setSeVolumeByWorkId( spep_1 + 6, SE003, 47.4 );
setSeVolumeByWorkId( spep_1 + 7, SE003, 55.3 );
setSeVolumeByWorkId( spep_1 + 8, SE003, 63.2 );
setSeVolumeByWorkId( spep_1 + 9, SE003, 71.1 );
setSeVolumeByWorkId( spep_1 + 10, SE003, 79 );
setStartTimeMs( SE003,  133 );
stopSe( spep_1 + 30, SE003, 40 );
SE006 = playSe( spep_1 + 2, 1117 );
setSeVolumeByWorkId( spep_1 + 2, SE006, 78 );
stopSe( spep_1 + 22, SE006, 50 );


-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_2=spep_1+56;
------------------------------------------------------
-- 正面構図でゆらゆら
------------------------------------------------------
-- ** エフェクト等 ** --
yura = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, yura, 0, 0, 0 );
setEffMoveKey( spep_2 + 118, yura, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, yura, -1.0, 1.0 );
setEffScaleKey( spep_2 + 118, yura, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, yura, 0 );
setEffRotateKey( spep_2 + 118, yura, 0 );
setEffAlphaKey( spep_2 + 0, yura, 255 );
setEffAlphaKey( spep_2 + 116, yura, 255 );
setEffAlphaKey( spep_2 + 117, yura, 255 );
setEffAlphaKey( spep_2 + 118, yura, 0 );

--SE
--こもりうた（前半）
SE007 = playSe( spep_2 + 0, 1308 );
setSeVolumeByWorkId( spep_2 + 0, SE007, 0 );
setSeVolumeByWorkId( spep_2 + 1, SE007, 7.1 );
setSeVolumeByWorkId( spep_2 + 2, SE007, 14.2 );
setSeVolumeByWorkId( spep_2 + 3, SE007, 21.3 );
setSeVolumeByWorkId( spep_2 + 4, SE007, 28.4 );
setSeVolumeByWorkId( spep_2 + 5, SE007, 35.5 );
setSeVolumeByWorkId( spep_2 + 6, SE007, 42.6 );
setSeVolumeByWorkId( spep_2 + 7, SE007, 49.7 );
setSeVolumeByWorkId( spep_2 + 8, SE007, 56.8 );
setSeVolumeByWorkId( spep_2 + 9, SE007, 63.9 );
setSeVolumeByWorkId( spep_2 + 10, SE007, 71 );
setSeVolumeByWorkId( spep_2 + 11, SE007, 78.1 );
setSeVolumeByWorkId( spep_2 + 12, SE007, 85.2 );
setSeVolumeByWorkId( spep_2 + 13, SE007, 92.3 );
SE004 = playSe( spep_2 + 2, 1315 ,"",0.7);
setSeVolumeByWorkId( spep_2 + 2, SE004, 0 );
setSeVolumeByWorkId( spep_2 + 3, SE004, 23.6 );
setSeVolumeByWorkId( spep_2 + 4, SE004, 47.2 );
setSeVolumeByWorkId( spep_2 + 5, SE004, 70.8 );
setSeVolumeByWorkId( spep_2 + 6, SE004, 94.4 );
setSeVolumeByWorkId( spep_2 + 7, SE004, 118 );
setSeVolumeByWorkId( spep_2 + 8, SE004, 141 );
setStartTimeMs( SE004,  1000 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 50 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE003, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    --setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    --setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    --setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

--顔カットインのタイミング指定
spep_x=spep_2 +16;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--顔カットイン
SE008 = playSe( spep_x +12, 1018 );

--白フェード
entryFade( spep_2 + 104, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+118;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

--極限Z用に修正(2021/02/02)
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 86, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 86, shuchusen, 255 );

-- ** 音 ** --
--こもりうた（前半）
stopSe( spep_3 + 10, SE004, 0 );
stopSe( spep_3 + 10, SE007, 0 );


--playSe( spep_3 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;
------------------------------------------------------
-- もや1
------------------------------------------------------
-- ** エフェクト等 ** --
moya1_f = entryEffect( spep_4 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, moya1_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 68, moya1_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, moya1_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 68, moya1_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, moya1_f, 0 );
setEffRotateKey( spep_4 + 68, moya1_f, 0 );
setEffAlphaKey( spep_4 + 0, moya1_f, 255 );
setEffAlphaKey( spep_4 + 66, moya1_f, 255 );
setEffAlphaKey( spep_4 + 67, moya1_f, 255 );
setEffAlphaKey( spep_4 + 68, moya1_f, 0 );

-- ** エフェクト等 ** --
moya1_b = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, moya1_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 68, moya1_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, moya1_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 68, moya1_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, moya1_b, 0 );
setEffRotateKey( spep_4 + 68, moya1_b, 0 );
setEffAlphaKey( spep_4 + 0, moya1_b, 255 );
setEffAlphaKey( spep_4 + 66, moya1_b, 255 );
setEffAlphaKey( spep_4 + 67, moya1_b, 255 );
setEffAlphaKey( spep_4 + 68, moya1_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 68, 1, 0 );

changeAnime( spep_4 + 0, 1, 117 );

setMoveKey( spep_4 + 0, 1, 1.9, -14.4 , 0 );
setMoveKey( spep_4 + 2, 1, 2, -14.4 , 0 );
setMoveKey( spep_4 + 4, 1, 1.9, -14.3 , 0 );
setMoveKey( spep_4 + 6, 1, 1.9, -14.2 , 0 );
setMoveKey( spep_4 + 8, 1, 2, -14.1 , 0 );
setMoveKey( spep_4 + 10, 1, 1.9, -14.1 , 0 );
setMoveKey( spep_4 + 12, 1, 1.9, -14 , 0 );
setMoveKey( spep_4 + 14, 1, 1.9, -13.9 , 0 );
setMoveKey( spep_4 + 16, 1, 1.9, -13.9 , 0 );
setMoveKey( spep_4 + 18, 1, 1.9, -13.8 , 0 );
setMoveKey( spep_4 + 20, 1, 1.9, -13.8 , 0 );
setMoveKey( spep_4 + 22, 1, 2, -13.8 , 0 );
setMoveKey( spep_4 + 24, 1, 2, -13.8 , 0 );
setMoveKey( spep_4 + 26, 1, 2.1, -13.7 , 0 );
setMoveKey( spep_4 + 28, 1, 2.1, -13.8 , 0 );
setMoveKey( spep_4 + 30, 1, 2.2, -13.8 , 0 );
setMoveKey( spep_4 + 32, 1, 2.2, -13.7 , 0 );
setMoveKey( spep_4 + 34, 1, 2.3, -13.7 , 0 );
setMoveKey( spep_4 + 36, 1, 2.3, -13.7 , 0 );
setMoveKey( spep_4 + 38, 1, 2.4, -13.7 , 0 );
setMoveKey( spep_4 + 40, 1, 2.4, -13.7 , 0 );
setMoveKey( spep_4 + 42, 1, 2.5, -13.7 , 0 );
setMoveKey( spep_4 + 44, 1, 2.6, -13.6 , 0 );
setMoveKey( spep_4 + 46, 1, 2.5, -13.6 , 0 );
setMoveKey( spep_4 + 50, 1, 2.5, -13.6 , 0 );
setMoveKey( spep_4 + 52, 1, 2.5, -13.5 , 0 );
setMoveKey( spep_4 + 54, 1, 2.5, -13.4 , 0 );
setMoveKey( spep_4 + 56, 1, 2.4, -13.4 , 0 );
setMoveKey( spep_4 + 58, 1, 2.4, -13.4 , 0 );
setMoveKey( spep_4 + 60, 1, 2.4, -13.3 , 0 );
setMoveKey( spep_4 + 66, 1, 2.4, -13.3 , 0 );
setMoveKey( spep_4 + 68, 1, 2.3, -13.2 , 0 );

setScaleKey( spep_4 + 0, 1, 2.31, 2.31 );
setScaleKey( spep_4 + 2, 1, 2.27, 2.27 );
setScaleKey( spep_4 + 4, 1, 2.23, 2.23 );
setScaleKey( spep_4 + 6, 1, 2.18, 2.18 );
setScaleKey( spep_4 + 8, 1, 2.14, 2.14 );
setScaleKey( spep_4 + 10, 1, 2.1, 2.1 );
setScaleKey( spep_4 + 12, 1, 2.05, 2.05 );
setScaleKey( spep_4 + 14, 1, 2.01, 2.01 );
setScaleKey( spep_4 + 16, 1, 1.97, 1.97 );
setScaleKey( spep_4 + 18, 1, 1.92, 1.92 );
setScaleKey( spep_4 + 20, 1, 1.95, 1.95 );
setScaleKey( spep_4 + 22, 1, 1.98, 1.98 );
setScaleKey( spep_4 + 24, 1, 2.01, 2.01 );
setScaleKey( spep_4 + 26, 1, 2.03, 2.03 );
setScaleKey( spep_4 + 28, 1, 2.06, 2.06 );
setScaleKey( spep_4 + 30, 1, 2.09, 2.09 );
setScaleKey( spep_4 + 32, 1, 2.11, 2.11 );
setScaleKey( spep_4 + 34, 1, 2.14, 2.14 );
setScaleKey( spep_4 + 36, 1, 2.17, 2.17 );
setScaleKey( spep_4 + 38, 1, 2.19, 2.19 );
setScaleKey( spep_4 + 40, 1, 2.22, 2.22 );
setScaleKey( spep_4 + 42, 1, 2.25, 2.25 );
setScaleKey( spep_4 + 44, 1, 2.27, 2.27 );
setScaleKey( spep_4 + 46, 1, 2.25, 2.25 );
setScaleKey( spep_4 + 48, 1, 2.23, 2.23 );
setScaleKey( spep_4 + 50, 1, 2.21, 2.21 );
setScaleKey( spep_4 + 52, 1, 2.19, 2.19 );
setScaleKey( spep_4 + 54, 1, 2.16, 2.16 );
setScaleKey( spep_4 + 56, 1, 2.14, 2.14 );
setScaleKey( spep_4 + 58, 1, 2.12, 2.12 );
setScaleKey( spep_4 + 60, 1, 2.1, 2.1 );
setScaleKey( spep_4 + 62, 1, 2.07, 2.07 );
setScaleKey( spep_4 + 64, 1, 2.05, 2.05 );
setScaleKey( spep_4 + 66, 1, 2.03, 2.03 );
setScaleKey( spep_4 + 68, 1, 2.01, 2.01 );

setRotateKey( spep_4 + 0, 1, 4.8 );
setRotateKey( spep_4 + 2, 1, 4 );
setRotateKey( spep_4 + 4, 1, 3 );
setRotateKey( spep_4 + 6, 1, 2 );
setRotateKey( spep_4 + 8, 1, 1 );
setRotateKey( spep_4 + 10, 1, 0 );
setRotateKey( spep_4 + 12, 1, -1.1 );
setRotateKey( spep_4 + 14, 1, -2.1 );
setRotateKey( spep_4 + 16, 1, -3.1 );
setRotateKey( spep_4 + 18, 1, -4.1 );
setRotateKey( spep_4 + 20, 1, -4.9 );
setRotateKey( spep_4 + 22, 1, -5.7 );
setRotateKey( spep_4 + 24, 1, -6.6 );
setRotateKey( spep_4 + 26, 1, -7.4 );
setRotateKey( spep_4 + 28, 1, -8.3 );
setRotateKey( spep_4 + 30, 1, -9.1 );
setRotateKey( spep_4 + 32, 1, -10 );
setRotateKey( spep_4 + 34, 1, -10.8 );
setRotateKey( spep_4 + 36, 1, -11.6 );
setRotateKey( spep_4 + 38, 1, -12.5 );
setRotateKey( spep_4 + 40, 1, -13.3 );
setRotateKey( spep_4 + 42, 1, -14.2 );
setRotateKey( spep_4 + 44, 1, -15 );
setRotateKey( spep_4 + 46, 1, -15.4 );
setRotateKey( spep_4 + 48, 1, -15.9 );
setRotateKey( spep_4 + 50, 1, -16.3 );
setRotateKey( spep_4 + 52, 1, -16.7 );
setRotateKey( spep_4 + 54, 1, -17.1 );
setRotateKey( spep_4 + 56, 1, -17.6 );
setRotateKey( spep_4 + 58, 1, -18 );
setRotateKey( spep_4 + 60, 1, -18.4 );
setRotateKey( spep_4 + 62, 1, -18.8 );
setRotateKey( spep_4 + 64, 1, -19.2 );
setRotateKey( spep_4 + 66, 1, -19.7 );
setRotateKey( spep_4 + 68, 1, -20.1 );

--SE
--こもりうた（後半）
SE010 = playSe( spep_4 + 0, 1308 );
setSeVolumeByWorkId( spep_4 + 0, SE010, 0 );
setSeVolumeByWorkId( spep_4 + 1, SE010, 9 );
setSeVolumeByWorkId( spep_4 + 2, SE010, 18 );
setSeVolumeByWorkId( spep_4 + 3, SE010, 27 );
setSeVolumeByWorkId( spep_4 + 4, SE010, 36 );
setSeVolumeByWorkId( spep_4 + 5, SE010, 45 );
setSeVolumeByWorkId( spep_4 + 6, SE010, 54 );
setSeVolumeByWorkId( spep_4 + 7, SE010, 63 );
setSeVolumeByWorkId( spep_4 + 8, SE010, 72 );
setSeVolumeByWorkId( spep_4 + 9, SE010, 81 );
setSeVolumeByWorkId( spep_4 + 10, SE010, 90 );
setSeVolumeByWorkId( spep_4 + 11, SE010, 99 );
setSeVolumeByWorkId( spep_4 + 12, SE010, 108 );
setSeVolumeByWorkId( spep_4 + 13, SE010, 117 );
setSeVolumeByWorkId( spep_4 + 14, SE010, 126 );
SE005 = playSe( spep_4 + 10, 1315,"",0.7 );
setSeVolumeByWorkId( spep_4 + 10, SE005, 0 );
setSeVolumeByWorkId( spep_4 + 11, SE005, 79.1 );
setSeVolumeByWorkId( spep_4 + 12, SE005, 158.2 );
setSeVolumeByWorkId( spep_4 + 13, SE005, 237.3 );
setSeVolumeByWorkId( spep_4 + 14, SE005, 316 );
setStartTimeMs( SE005,  4617 );


-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5=spep_4+68;
------------------------------------------------------
-- 黒バックに手1
------------------------------------------------------
-- ** エフェクト等 ** --
hand = entryEffect( spep_5 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hand, 0, 0, 0 );
setEffMoveKey( spep_5 + 86, hand, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hand, -1.0, 1.0 );
setEffScaleKey( spep_5 + 86, hand, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hand, 0 );
setEffRotateKey( spep_5 + 86, hand, 0 );
setEffAlphaKey( spep_5 + 0, hand, 255 );
setEffAlphaKey( spep_5 + 84, hand, 255 );
setEffAlphaKey( spep_5 + 85, hand, 255 );
setEffAlphaKey( spep_5 + 86, hand, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_6=spep_5+86;
------------------------------------------------------
-- もや2
------------------------------------------------------
-- ** エフェクト等 ** --
moya1_f = entryEffect( spep_6 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, moya1_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 70, moya1_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, moya1_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 70, moya1_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, moya1_f, 0 );
setEffRotateKey( spep_6 + 70, moya1_f, 0 );
setEffAlphaKey( spep_6 + 0, moya1_f, 255 );
setEffAlphaKey( spep_6 + 68, moya1_f, 255 );
setEffAlphaKey( spep_6 + 69, moya1_f, 255 );
setEffAlphaKey( spep_6 + 70, moya1_f, 0 );

-- ** エフェクト等 ** --
moya1_b = entryEffect( spep_6 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, moya1_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 70, moya1_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, moya1_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 70, moya1_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, moya1_b, 0 );
setEffRotateKey( spep_6 + 70, moya1_b, 0 );
setEffAlphaKey( spep_6 + 0, moya1_b, 255 );
setEffAlphaKey( spep_6 + 68, moya1_b, 255 );
setEffAlphaKey( spep_6 + 69, moya1_b, 255 );
setEffAlphaKey( spep_6 + 70, moya1_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 70, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, -29.8, 25.1 , 0 );
setMoveKey( spep_6 + 2, 1, -29.8, 25.2 , 0 );
setMoveKey( spep_6 + 4, 1, -29.8, 25.2 , 0 );
setMoveKey( spep_6 + 6, 1, -29.9, 25.2 , 0 );
setMoveKey( spep_6 + 14, 1, -29.9, 25.2 , 0 );
setMoveKey( spep_6 + 16, 1, -29.9, 25.3 , 0 );
setMoveKey( spep_6 + 18, 1, -30, 25.3 , 0 );
setMoveKey( spep_6 + 28, 1, -30, 25.3 , 0 );
setMoveKey( spep_6 + 30, 1, -30.1, 25.2 , 0 );
setMoveKey( spep_6 + 40, 1, -30.1, 25.2 , 0 );
setMoveKey( spep_6 + 42, 1, -30.2, 25.2 , 0 );
setMoveKey( spep_6 + 50, 1, -30.2, 25.2 , 0 );
setMoveKey( spep_6 + 52, 1, -30.2, 25.3 , 0 );
setMoveKey( spep_6 + 56, 1, -30.2, 25.3 , 0 );
setMoveKey( spep_6 + 58, 1, -30.3, 25.3 , 0 );
setMoveKey( spep_6 + 60, 1, -30.3, 25.3 , 0 );
setMoveKey( spep_6 + 62, 1, -30.3, 25.4 , 0 );
setMoveKey( spep_6 + 70, 1, -30.3, 25.4 , 0 );

setScaleKey( spep_6 + 0, 1, 2.19, 2.19 );
setScaleKey( spep_6 + 2, 1, 2.16, 2.16 );
setScaleKey( spep_6 + 4, 1, 2.14, 2.14 );
setScaleKey( spep_6 + 6, 1, 2.11, 2.11 );
setScaleKey( spep_6 + 8, 1, 2.09, 2.09 );
setScaleKey( spep_6 + 10, 1, 2.07, 2.07 );
setScaleKey( spep_6 + 12, 1, 2.04, 2.04 );
setScaleKey( spep_6 + 14, 1, 2.02, 2.02 );
setScaleKey( spep_6 + 16, 1, 1.99, 1.99 );
setScaleKey( spep_6 + 18, 1, 1.97, 1.97 );
setScaleKey( spep_6 + 20, 1, 1.95, 1.95 );
setScaleKey( spep_6 + 22, 1, 1.96, 1.96 );
setScaleKey( spep_6 + 24, 1, 1.97, 1.97 );
setScaleKey( spep_6 + 26, 1, 1.98, 1.98 );
setScaleKey( spep_6 + 28, 1, 1.99, 1.99 );
setScaleKey( spep_6 + 30, 1, 2, 2 );
setScaleKey( spep_6 + 32, 1, 2.01, 2.01 );
setScaleKey( spep_6 + 34, 1, 2.02, 2.02 );
setScaleKey( spep_6 + 36, 1, 2.03, 2.03 );
setScaleKey( spep_6 + 38, 1, 2.04, 2.04 );
setScaleKey( spep_6 + 40, 1, 2.05, 2.05 );
setScaleKey( spep_6 + 42, 1, 2.06, 2.06 );
setScaleKey( spep_6 + 44, 1, 2.07, 2.07 );
setScaleKey( spep_6 + 46, 1, 2.08, 2.08 );
setScaleKey( spep_6 + 48, 1, 2.05, 2.05 );
setScaleKey( spep_6 + 50, 1, 2.03, 2.03 );
setScaleKey( spep_6 + 52, 1, 2, 2 );
setScaleKey( spep_6 + 54, 1, 1.97, 1.97 );
setScaleKey( spep_6 + 56, 1, 1.95, 1.95 );
setScaleKey( spep_6 + 58, 1, 1.92, 1.92 );
setScaleKey( spep_6 + 60, 1, 1.9, 1.9 );
setScaleKey( spep_6 + 62, 1, 1.87, 1.87 );
setScaleKey( spep_6 + 64, 1, 1.84, 1.84 );
setScaleKey( spep_6 + 66, 1, 1.82, 1.82 );
setScaleKey( spep_6 + 68, 1, 1.79, 1.79 );
setScaleKey( spep_6 + 70, 1, 1.76, 1.76 );

setRotateKey( spep_6 + 0, 1, -50.2 );
setRotateKey( spep_6 + 2, 1, -49.5 );
setRotateKey( spep_6 + 4, 1, -48.7 );
setRotateKey( spep_6 + 6, 1, -48 );
setRotateKey( spep_6 + 8, 1, -47.2 );
setRotateKey( spep_6 + 10, 1, -46.5 );
setRotateKey( spep_6 + 12, 1, -45.7 );
setRotateKey( spep_6 + 14, 1, -45 );
setRotateKey( spep_6 + 16, 1, -44.2 );
setRotateKey( spep_6 + 18, 1, -43.5 );
setRotateKey( spep_6 + 20, 1, -42.8 );
setRotateKey( spep_6 + 22, 1, -42 );
setRotateKey( spep_6 + 24, 1, -41.2 );
setRotateKey( spep_6 + 26, 1, -40.4 );
setRotateKey( spep_6 + 28, 1, -39.6 );
setRotateKey( spep_6 + 30, 1, -38.8 );
setRotateKey( spep_6 + 32, 1, -38 );
setRotateKey( spep_6 + 34, 1, -37.2 );
setRotateKey( spep_6 + 36, 1, -36.4 );
setRotateKey( spep_6 + 38, 1, -35.6 );
setRotateKey( spep_6 + 40, 1, -34.9 );
setRotateKey( spep_6 + 42, 1, -34.1 );
setRotateKey( spep_6 + 44, 1, -33.3 );
setRotateKey( spep_6 + 46, 1, -32.5 );
setRotateKey( spep_6 + 48, 1, -31.9 );
setRotateKey( spep_6 + 50, 1, -31.4 );
setRotateKey( spep_6 + 52, 1, -30.8 );
setRotateKey( spep_6 + 54, 1, -30.3 );
setRotateKey( spep_6 + 56, 1, -29.7 );
setRotateKey( spep_6 + 58, 1, -29.1 );
setRotateKey( spep_6 + 60, 1, -28.6 );
setRotateKey( spep_6 + 62, 1, -28 );
setRotateKey( spep_6 + 64, 1, -27.5 );
setRotateKey( spep_6 + 66, 1, -26.9 );
setRotateKey( spep_6 + 68, 1, -26.4 );
setRotateKey( spep_6 + 70, 1, -25.8 );

--こもりうた（後半）
stopSe( spep_6 + 4, SE005, 70 );
SE011 = playSe( spep_6 + 0, 1315,"",0.7 );
setSeVolumeByWorkId( spep_6 + 0, SE011, 0 );
setSeVolumeByWorkId( spep_6 + 1, SE011, 62.8 );
setSeVolumeByWorkId( spep_6 + 2, SE011, 125.6 );
setSeVolumeByWorkId( spep_6 + 3, SE011, 188.4 );
setSeVolumeByWorkId( spep_6 + 4, SE011, 251 );
setStartTimeMs( SE011,  1033 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_7=spep_6+68;
------------------------------------------------------
-- 黒バックに手2
------------------------------------------------------
-- ** エフェクト等 ** --
hand2 = entryEffect( spep_7 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, hand2, 0, 0, 0 );
setEffMoveKey( spep_7 + 56, hand2, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, hand2, -1.0, 1.0 );
setEffScaleKey( spep_7 + 56, hand2, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hand2, 0 );
setEffRotateKey( spep_7 + 56, hand2, 0 );
setEffAlphaKey( spep_7 + 0, hand2, 255 );
setEffAlphaKey( spep_7 + 54, hand2, 255 );
setEffAlphaKey( spep_7 + 55, hand2, 255 );
setEffAlphaKey( spep_7 + 56, hand2, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_8=spep_7+56;
------------------------------------------------------
-- もやが晴れてダウン
------------------------------------------------------
-- ** エフェクト等 ** --
down_f = entryEffect( spep_8 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, down_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 56, down_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, down_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, down_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, down_f, 0 );
setEffRotateKey( spep_8 + 56, down_f, 0 );
setEffAlphaKey( spep_8 + 0, down_f, 255 );
setEffAlphaKey( spep_8 + 54, down_f, 255 );
setEffAlphaKey( spep_8 + 55, down_f, 255 );
setEffAlphaKey( spep_8 + 56, down_f, 0 );

-- ** エフェクト等 ** --
down_b = entryEffect( spep_8 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, down_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 56, down_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, down_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 56, down_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, down_b, 0 );
setEffRotateKey( spep_8 + 56, down_b, 0 );
setEffAlphaKey( spep_8 + 0, down_b, 255 );
setEffAlphaKey( spep_8 + 54, down_b, 255 );
setEffAlphaKey( spep_8 + 55, down_b, 255 );
setEffAlphaKey( spep_8 + 56, down_b, 0 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 56, 1, 0 );

changeAnime( spep_8 + 0, 1, 106 );
changeAnime( spep_8-3 + 46, 1, 5 );

setMoveKey( spep_8 + 0, 1, -35.6, -48.5 , 0 );
--setMoveKey( spep_8-3 + 2, 1, -38.1, -48.3 , 0 );
setMoveKey( spep_8-3 + 4, 1, -40.4, -48.6 , 0 );
setMoveKey( spep_8-3 + 6, 1, -42.6, -48.8 , 0 );
setMoveKey( spep_8-3 + 8, 1, -44.8, -49.1 , 0 );
setMoveKey( spep_8-3 + 10, 1, -47, -49.4 , 0 );
setMoveKey( spep_8-3 + 12, 1, -49.3, -49.8 , 0 );
setMoveKey( spep_8-3 + 14, 1, -51.5, -50.1 , 0 );
setMoveKey( spep_8-3 + 16, 1, -53.7, -50.5 , 0 );
setMoveKey( spep_8-3 + 18, 1, -55.9, -50.9 , 0 );
setMoveKey( spep_8-3 + 20, 1, -58.1, -51.3 , 0 );
setMoveKey( spep_8-3 + 22, 1, -54.5, -50.6 , 0 );
setMoveKey( spep_8-3 + 24, 1, -50.9, -50 , 0 );
setMoveKey( spep_8-3 + 26, 1, -47.4, -49.5 , 0 );
setMoveKey( spep_8-3 + 28, 1, -43.8, -49 , 0 );
setMoveKey( spep_8-3 + 30, 1, -40.2, -48.5 , 0 );
setMoveKey( spep_8-3 + 32, 1, -36.6, -48.1 , 0 );
setMoveKey( spep_8-3 + 34, 1, -32.9, -47.8 , 0 );
setMoveKey( spep_8-3 + 36, 1, -29.3, -47.5 , 0 );
setMoveKey( spep_8-3 + 38, 1, -25.7, -47.2 , 0 );
setMoveKey( spep_8-3 + 40, 1, -22.1, -47.1 , 0 );
setMoveKey( spep_8-3 + 42, 1, -18.4, -46.9 , 0 );
setMoveKey( spep_8-3 + 45, 1, -14.8, -46.8 , 0 );
setMoveKey( spep_8-3 + 46, 1, 1.3, -221.9 , 0 );
setMoveKey( spep_8-3 + 48, 1, 1.3, -216.3 , 0 );
setMoveKey( spep_8-3 + 50, 1, 1.3, -231.9 , 0 );
setMoveKey( spep_8-3 + 52, 1, 1.3, -228.6 , 0 );
setMoveKey( spep_8-3 + 54, 1, 1.3, -237.5 , 0 );
setMoveKey( spep_8 + 56, 1, 1.3, -237.5 , 0 );

setScaleKey( spep_8 + 0, 1, 1.86, 1.86 );
setScaleKey( spep_8-3 + 45, 1, 1.86, 1.86 );
setScaleKey( spep_8-3 + 46, 1, 1.7, 1.7 );
setScaleKey( spep_8-3 + 48, 1, 1.71, 1.71 );
setScaleKey( spep_8 + 56, 1, 1.71, 1.71 );

setRotateKey( spep_8 + 0, 1, -50.2 );
--setRotateKey( spep_8-3 + 2, 1, -50.7 );
setRotateKey( spep_8-3 + 4, 1, -51.2 );
setRotateKey( spep_8-3 + 6, 1, -51.7 );
setRotateKey( spep_8-3 + 8, 1, -52.2 );
setRotateKey( spep_8-3 + 10, 1, -52.7 );
setRotateKey( spep_8-3 + 12, 1, -53.2 );
setRotateKey( spep_8-3 + 14, 1, -53.7 );
setRotateKey( spep_8-3 + 16, 1, -54.2 );
setRotateKey( spep_8-3 + 18, 1, -54.7 );
setRotateKey( spep_8-3 + 20, 1, -55.2 );
setRotateKey( spep_8-3 + 22, 1, -54.4 );
setRotateKey( spep_8-3 + 24, 1, -53.6 );
setRotateKey( spep_8-3 + 26, 1, -52.8 );
setRotateKey( spep_8-3 + 28, 1, -52 );
setRotateKey( spep_8-3 + 30, 1, -51.2 );
setRotateKey( spep_8-3 + 32, 1, -50.4 );
setRotateKey( spep_8-3 + 34, 1, -49.6 );
setRotateKey( spep_8-3 + 36, 1, -48.7 );
setRotateKey( spep_8-3 + 38, 1, -47.9 );
setRotateKey( spep_8-3 + 40, 1, -47.1 );
setRotateKey( spep_8-3 + 42, 1, -46.3 );
setRotateKey( spep_8-3 + 45, 1, -45.5 );
setRotateKey( spep_8-3 + 46, 1, 38.8 );
setRotateKey( spep_8 + 56, 1, 38.8 );

--SE
--こもりうた（後半）
stopSe( spep_8 + 10, SE010, 64 );

--敵倒れる
SE012 = playSe( spep_8 + 44, 1192 );
setSeVolumeByWorkId( spep_8 + 44, SE012, 141 );
SE013 = playSe( spep_8 + 44, 1014 );
setSeVolumeByWorkId( spep_8 + 44, SE013, 81 );


-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_9=spep_8+56;
------------------------------------------------------
-- 気をためる
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_9 + 0, SP_12x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_9 + 86, tame, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_9 + 86, tame, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, tame, 0 );
setEffRotateKey( spep_9 + 86, tame, 0 );
setEffAlphaKey( spep_9 + 0, tame, 255 );
setEffAlphaKey( spep_9 + 84, tame, 255 );
setEffAlphaKey( spep_9 + 85, tame, 255 );
setEffAlphaKey( spep_9 + 86, tame, 0 );

--SE
--こもりうた（後半）
stopSe( spep_9 + 30, SE011, 0 );

--歩く
SE015 = playSe( spep_9 + 30, 1107 );
SE017 = playSe( spep_9 + 62, 1108 );

--気弾溜める
SE016 = playSe( spep_9 + 44, 1307 );
setSeVolumeByWorkId( spep_9 + 44, SE016, 251 );	
setPitch( spep_9 + 44, SE016, -100 );
setTimeStretch( SE016, 0.93, 10, 1 );
SE014 = playSe( spep_9 + 50, 1222 );
setSeVolumeByWorkId( spep_9 + 50, SE014, 0 );
setSeVolumeByWorkId( spep_9 + 51, SE014, 6.3 );
setSeVolumeByWorkId( spep_9 + 52, SE014, 12.6 );
setSeVolumeByWorkId( spep_9 + 53, SE014, 18.9 );
setSeVolumeByWorkId( spep_9 + 54, SE014, 25.2 );
setSeVolumeByWorkId( spep_9 + 55, SE014, 31.5 );
setSeVolumeByWorkId( spep_9 + 56, SE014, 37.8 );
setSeVolumeByWorkId( spep_9 + 57, SE014, 44.1 );
setSeVolumeByWorkId( spep_9 + 58, SE014, 50.4 );
setSeVolumeByWorkId( spep_9 + 59, SE014, 56.7 );
setSeVolumeByWorkId( spep_9 + 60, SE014, 63 );
setSeVolumeByWorkId( spep_9 + 61, SE014, 69.3 );
setSeVolumeByWorkId( spep_9 + 62, SE014, 76 );
setStartTimeMs( SE014,  450 );


-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_10=spep_9+86;
------------------------------------------------------
-- 気を発射する
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_10 + 0, SP_13x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_10 + 56, beam, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, beam, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, beam, 0 );
setEffRotateKey( spep_10 + 56, beam, 0 );
setEffAlphaKey( spep_10 + 0, beam, 255 );
setEffAlphaKey( spep_10 + 54, beam, 255 );
setEffAlphaKey( spep_10 + 55, beam, 255 );
setEffAlphaKey( spep_10 + 56, beam, 0 );

--SE
--腕前へ
SE018 = playSe( spep_10 + 0, 1004 );
setSeVolumeByWorkId( spep_10 + 0, SE018, 72 );

--気弾発射
SE019 = playSe( spep_10 + 48, 1312 );
setSeVolumeByWorkId( spep_10 + 48, SE019, 141 );
SE020 = playSe( spep_10 + 48, 1264 );
setPitch( spep_10 + 48, SE020, 500 );
setTimeStretch( SE020, 1.33, 10, 1 );
SE021 = playSe( spep_10 + 48, 1114 );
setSeVolumeByWorkId( spep_10 + 48, SE021, 112 );

--黒フェード
entryFade( spep_10 + 28, 10, 2, 0, 0, 0, 0, 255 );  --black fade

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 69, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_11=spep_10+56;
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_11 + 0, SP_14x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_11 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_11 + 120, finish, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish, 0 );
setEffRotateKey( spep_11 + 120, finish, 0 );
setEffAlphaKey( spep_11 + 0, finish, 255 );
setEffAlphaKey( spep_11 + 120, finish, 255 );

--SE
--気弾発射
stopSe( spep_11 + 12, SE020, 80 );

--地割れ
SE022 = playSe( spep_11 + 0, 1159 );
setSeVolumeByWorkId( spep_11 + 0, SE022, 75 );
SE023 = playSe( spep_11 + 6, 1044 );
setSeVolumeByWorkId( spep_11 + 6, SE023, 60 );
SE024 = playSe( spep_11 + 18, 1168 );
setSeVolumeByWorkId( spep_11 + 18, SE024, 75 );
stopSe( spep_11 + 58, SE024, 62 );

-- ** ダメージ表示 ** --
dealDamage( spep_11 + 10 );
endPhase( spep_11 + 110 );
end