--1021480:人造人間17号(第7宇宙チーム)_アサルトバリヤー
--sp_effect_a2_00153
--sp2153

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
SP_01=	156898	;--	５人揃って気をためる
SP_02=	156899	;--	５人で気功波〜敵が山に激突
SP_03=	156900	;--	５人で気功波〜敵が山に激突
SP_04=	156903	;--	バリアを貼る〜空中でパンチ
SP_05=	156904	;--	バリアを貼る〜空中でパンチ

--エフェクト(てき方)
SP_01x=	156898	;--	５人揃って気をためる	
SP_02x=	156901	;--	５人で気功波〜敵が山に激突	(敵)
SP_03x=	156900	;--	５人で気功波〜敵が山に激突	
SP_04x=	156905	;--	バリアを貼る〜空中でパンチ	(敵)
SP_05x=	156906	;--	バリアを貼る〜空中でパンチ	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
   end
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
-- ５人揃って気をためる
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 120, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 120, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 120, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 120, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +16;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--顔カットイン
SE001 = playSe( spep_x + 12, 1018 );

--気ダメ
SE002 = playSe( spep_0 + 32, 1035 );
setSeVolumeByWorkId( spep_0 + 32, SE002, 112 );
SE003 = playSe( spep_0 + 34, 1298 );
setSeVolumeByWorkId( spep_0 + 34, SE003, 141 );
SE004 = playSe( spep_0 + 34, 1188 );
setSeVolumeByWorkId( spep_0 + 34, SE004, 44 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0 + 114, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+120;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_1 + 0, SE_05 );

--気ダメ
stopSe( spep_1 + 10, SE002, 0 );
stopSe( spep_1 + 10, SE003, 0 );
stopSe( spep_1 + 10, SE004, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- ５人で気功波〜敵が山に激突
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 116, beam_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam_f, 0 );
setEffRotateKey( spep_2 + 116, beam_f, 0 );
setEffAlphaKey( spep_2 + 0, beam_f, 255 );
setEffAlphaKey( spep_2 + 114, beam_f, 255 );
setEffAlphaKey( spep_2 + 115, beam_f, 255 );
setEffAlphaKey( spep_2 + 116, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 116, beam_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam_b, 0 );
setEffRotateKey( spep_2 + 116, beam_b, 0 );
setEffAlphaKey( spep_2 + 0, beam_b, 255 );
setEffAlphaKey( spep_2 + 114, beam_b, 255 );
setEffAlphaKey( spep_2 + 115, beam_b, 255 );
setEffAlphaKey( spep_2 + 116, beam_b, 0 );
--SE
--気弾発射
SE006 = playSe( spep_2 + 18, 1212 );
setSeVolumeByWorkId( spep_2 + 18, SE006, 0 );
setSeVolumeByWorkId( spep_2 + 19, SE006, 14.4 );
setSeVolumeByWorkId( spep_2 + 20, SE006, 28.8 );
setSeVolumeByWorkId( spep_2 + 21, SE006, 43.2 );
setSeVolumeByWorkId( spep_2 + 22, SE006, 58 );
setStartTimeMs( SE006,  683 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 36; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );

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

--敵の動き
setDisp( spep_2-3 + 40, 1, 1);
setDisp( spep_2-1 + 58, 1, 0);
changeAnime( spep_2-3 + 40, 1, 104);

setMoveKey( spep_2-3 + 40, 1, 82.1, 17.8 , 0 );
setMoveKey( spep_2-3 + 42, 1, 81.6, 13.5 , 0 );
setMoveKey( spep_2-3 + 44, 1, 85.2, 18.8 , 0 );
setMoveKey( spep_2-3 + 46, 1, 77.9, 14.3 , 0 );
setMoveKey( spep_2-3 + 48, 1, 82.2, 18.4 , 0 );
setMoveKey( spep_2-3 + 50, 1, 84.2, 17.8 , 0 );
setMoveKey( spep_2-3 + 52, 1, 79.9, 19.4 , 0 );
setMoveKey( spep_2-3 + 54, 1, 83, 20.1 , 0 );
setMoveKey( spep_2-3 + 56, 1, 81.6, 19.7 , 0 );
setMoveKey( spep_2-1 + 58, 1, 83.3, 19.6 , 0 );

setScaleKey( spep_2-3 + 40, 1, 1.06, 1.06 );
setScaleKey( spep_2-1 + 58, 1, 1.06, 1.06 );

setRotateKey( spep_2-3 + 40, 1, -9.5 );
setRotateKey( spep_2-1 + 58, 1, -9.5 );

--SE
--気弾発射
stopSe( spep_2 + 88, SE006, 46 );
SE007 = playSe( spep_2 + 10, 1004 );
SE008 = playSe( spep_2 + 14, 1003 );
SE009 = playSe( spep_2 + 18, 1027 );
setSeVolumeByWorkId( spep_2 + 18, SE009, 68 );
SE010 = playSe( spep_2 + 18, 1213 );
setSeVolumeByWorkId( spep_2 + 18, SE010, 68 );
stopSe( spep_2 + 94, SE010, 56 );
SE011 = playSe( spep_2 + 18, 1161 );
setSeVolumeByWorkId( spep_2 + 18, SE011, 72 );
stopSe( spep_2 + 102, SE011, 46 );



--気弾ヒット
SE012 = playSe( spep_2 + 46, 1067 );

--岩ぶつかる
SE013 = playSe( spep_2 + 72, 1159 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;
------------------------------------------------------
-- バリアを貼る〜空中でパンチ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 682, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 682, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 682, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 682, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 682, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 682, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 682, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 682, finish_b, 255 );

--敵の動き
setDisp( spep_3-3 + 182, 1, 1);
setDisp( spep_3-3 + 222, 1, 0);
changeAnime( spep_3-3 + 182, 1, 106);
changeAnime( spep_3-3 + 194, 1, 108);

setMoveKey( spep_3-3 + 182, 1, 621.9, 530.1 , 0 );
setMoveKey( spep_3-3 + 184, 1, 535.3, 466.7 , 0 );
setMoveKey( spep_3-3 + 186, 1, 452.7, 407.3 , 0 );
setMoveKey( spep_3-3 + 188, 1, 365.1, 348.9 , 0 );
setMoveKey( spep_3-3 + 190, 1, 278.6, 285.5 , 0 );
setMoveKey( spep_3-3 + 192, 1, 194, 217.1 , 0 );
setMoveKey( spep_3-3 + 193, 1, 194, 217.1 , 0 );

setMoveKey( spep_3-3 + 194, 1, 119, 166 , 0 );
setMoveKey( spep_3-3 + 195, 1, 119, 166 , 0 );
setMoveKey( spep_3-3 + 196, 1, 44.6, 115.8 , 0 );
setMoveKey( spep_3-3 + 197, 1, 44.6, 115.8 , 0 );
setMoveKey( spep_3-3 + 198, 1, 214.1, 161.9 , 0 );
setMoveKey( spep_3-3 + 199, 1, 214.1, 161.9 , 0 );
setMoveKey( spep_3-3 + 200, 1, 34.1, 215.5 , 0 );
setMoveKey( spep_3-3 + 201, 1, 34.1, 215.5 , 0 );
setMoveKey( spep_3-3 + 202, 1, 193.8, 134.4 , 0 );
setMoveKey( spep_3-3 + 203, 1, 193.8, 134.4 , 0 );
setMoveKey( spep_3-3 + 204, 1, 73.7, 133.3 , 0 );
setMoveKey( spep_3-3 + 205, 1, 73.7, 133.3 , 0 );
setMoveKey( spep_3-3 + 206, 1, 173.4, 172.2 , 0 );
setMoveKey( spep_3-3 + 207, 1, 173.4, 172.2 , 0 );
setMoveKey( spep_3-3 + 208, 1, 133.2, 171.1 , 0 );
setMoveKey( spep_3-3 + 209, 1, 133.2, 171.1 , 0 );
setMoveKey( spep_3-3 + 210, 1, 193, 150 , 0 );
setMoveKey( spep_3-3 + 211, 1, 193, 150 , 0 );
setMoveKey( spep_3-3 + 212, 1, 166, 241 , 0 );
setMoveKey( spep_3-3 + 213, 1, 166, 241 , 0 );
setMoveKey( spep_3-3 + 214, 1, 133, 179 , 0 );
setMoveKey( spep_3-3 + 215, 1, 133, 179 , 0 );
setMoveKey( spep_3-3 + 216, 1, 113, 136 , 0 );
setMoveKey( spep_3-3 + 217, 1, 113, 136 , 0 );
setMoveKey( spep_3-3 + 218, 1, 134, 180 , 0 );
setMoveKey( spep_3-3 + 219, 1, 134, 180 , 0 );
setMoveKey( spep_3-3 + 220, 1, 134, 174 , 0 );
setMoveKey( spep_3-3 + 221, 1, 134, 174 , 0 );
setMoveKey( spep_3-3 + 222, 1, 140, 177 , 0 );

setScaleKey( spep_3-3 + 182, 1, 1.76,1.76);
setScaleKey( spep_3-3 + 184, 1, 1.79,1.79);
setScaleKey( spep_3-3 + 186, 1, 1.8,1.8);
setScaleKey( spep_3-3 + 188, 1, 1.81,1.81);
setScaleKey( spep_3-3 + 190, 1, 1.84,1.84);
setScaleKey( spep_3-3 + 192, 1, 1.85,1.85);
setScaleKey( spep_3-3 + 193, 1, 1.85,1.85);
setScaleKey( spep_3-3 + 194, 1, 1.92,1.92);
setScaleKey( spep_3-3 + 195, 1, 1.92,1.92);
setScaleKey( spep_3-3 + 196, 1, 1.92,1.92);
setScaleKey( spep_3-3 + 197, 1, 1.92,1.92);
setScaleKey( spep_3-3 + 198, 1, 2.21,2.21);
setScaleKey( spep_3-3 + 199, 1, 2.21,2.21);
setScaleKey( spep_3-3 + 200, 1, 1.92,1.92);
setScaleKey( spep_3-3 + 210, 1, 1.92,1.92);
setScaleKey( spep_3-3 + 211, 1, 1.92,1.92);
setScaleKey( spep_3-3 + 212, 1, 2.4,2.4);
setScaleKey( spep_3-3 + 213, 1, 2.4,2.4);
setScaleKey( spep_3-3 + 214, 1, 1.92,1.92);
setScaleKey( spep_3-3 + 222, 1, 1.92,1.92);

setRotateKey( spep_3-3 + 182, 1, -32 );
setRotateKey( spep_3-3 + 184, 1, -32.6 );
setRotateKey( spep_3-3 + 186, 1, -33.2 );
setRotateKey( spep_3-3 + 188, 1, -33.8 );
setRotateKey( spep_3-3 + 190, 1, -34.4 );
setRotateKey( spep_3-3 + 192, 1, -35 );
setRotateKey( spep_3-3 + 193, 1, -35 );

setRotateKey( spep_3-3 + 194, 1, -34.5 );
setRotateKey( spep_3-3 + 222, 1, -34.5 );

--敵の動き
setDisp( spep_3-3 + 314, 1, 1);
setDisp( spep_3-1 + 402, 1, 0);
changeAnime( spep_3-3 + 314, 1, 108);

setMoveKey( spep_3-3 + 314, 1, -117.9, 42.4 , 0 );
setMoveKey( spep_3-3 + 316, 1, -99.5, 53.2 , 0 );
setMoveKey( spep_3-3 + 318, 1, -81.1, 63.5 , 0 );
setMoveKey( spep_3-3 + 320, 1, -65.5, 77.4 , 0 );
setMoveKey( spep_3-3 + 322, 1, -52, 86.4 , 0 );
setMoveKey( spep_3-3 + 324, 1, -37.4, 94.2 , 0 );
setMoveKey( spep_3-3 + 326, 1, -31.6, 99.6 , 0 );
setMoveKey( spep_3-3 + 328, 1, -19.9, 104.9 , 0 );
setMoveKey( spep_3-3 + 330, 1, -11.4, 113.1 , 0 );
setMoveKey( spep_3-3 + 332, 1, -0.9, 118.7 , 0 );
setMoveKey( spep_3-3 + 334, 1, 3.4, 123.2 , 0 );
setMoveKey( spep_3-3 + 336, 1, 11.1, 126.7 , 0 );
setMoveKey( spep_3-3 + 338, 1, 16.1, 131.1 , 0 );
setMoveKey( spep_3-3 + 340, 1, 19.9, 134.7 , 0 );
setMoveKey( spep_3-3 + 342, 1, 26, 138.4 , 0 );
setMoveKey( spep_3-3 + 344, 1, 29.8, 139.6 , 0 );
setMoveKey( spep_3-3 + 346, 1, 31.6, 143.1 , 0 );
setMoveKey( spep_3-3 + 348, 1, 37.4, 146.3 , 0 );
setMoveKey( spep_3-3 + 350, 1, 39.5, 147.7 , 0 );
setMoveKey( spep_3-3 + 352, 1, 43.1, 149.2 , 0 );
setMoveKey( spep_3-3 + 354, 1, 44.6, 152.3 , 0 );
setMoveKey( spep_3-3 + 356, 1, 47.4, 152.5 , 0 );
setMoveKey( spep_3-3 + 358, 1, 49.2, 153.9 , 0 );
setMoveKey( spep_3-3 + 360, 1, 51, 155.7 , 0 );
setMoveKey( spep_3-3 + 362, 1, 52.4, 156.7 , 0 );
setMoveKey( spep_3-3 + 364, 1, 54.2, 157.4 , 0 );
setMoveKey( spep_3-3 + 366, 1, 55.6, 158.1 , 0 );
setMoveKey( spep_3-3 + 368, 1, 56.9, 159.1 , 0 );
setMoveKey( spep_3-3 + 370, 1, 58, 159.8 , 0 );
setMoveKey( spep_3-3 + 372, 1, 59.1, 160.6 , 0 );
setMoveKey( spep_3-3 + 374, 1, 59.9, 161.1 , 0 );
setMoveKey( spep_3-3 + 376, 1, 60.7, 161.6 , 0 );
setMoveKey( spep_3-3 + 378, 1, 62, 162.4 , 0 );
setMoveKey( spep_3-3 + 380, 1, 63.1, 163.1 , 0 );
setMoveKey( spep_3-3 + 382, 1, 64.1, 163.8 , 0 );
setMoveKey( spep_3-3 + 384, 1, 65, 164.3 , 0 );
setMoveKey( spep_3-3 + 386, 1, 65.7, 164.8 , 0 );
setMoveKey( spep_3-3 + 388, 1, 66.3, 165.2 , 0 );
setMoveKey( spep_3-3 + 390, 1, 66.8, 165.6 , 0 );
setMoveKey( spep_3-3 + 392, 1, 67.2, 165.8 , 0 );
setMoveKey( spep_3-3 + 394, 1, 67.6, 166 , 0 );
setMoveKey( spep_3-3 + 396, 1, 67.8, 166.2 , 0 );
setMoveKey( spep_3-3 + 398, 1, 68, 166.3 , 0 );
setMoveKey( spep_3-3 + 400, 1, 68.1, 166.4 , 0 );
setMoveKey( spep_3-1 + 402, 1, 68.1, 166.4 , 0 );

setScaleKey( spep_3-3 + 314, 1, 0.26, 0.26 );
setScaleKey( spep_3-1 + 402, 1, 0.26, 0.26 );

setRotateKey( spep_3-3 + 314, 1, -34.5 );
setRotateKey( spep_3-1 + 402, 1, -34.5 );

--敵の動き
setDisp( spep_3-3 + 542, 1, 1);
changeAnime( spep_3-3 + 542, 1, 108);

setMoveKey( spep_3-3 + 542, 1, -4.1, 49.9 , 0 );
setMoveKey( spep_3-3 + 543, 1, -4.1, 49.9 , 0 );
setMoveKey( spep_3-3 + 544, 1, 22, 45.7 , 0 );
setMoveKey( spep_3-3 + 545, 1, 22, 45.7 , 0 );
setMoveKey( spep_3-3 + 546, 1, 39.6, 42.9 , 0 );
setMoveKey( spep_3-3 + 547, 1, 39.6, 42.9 , 0 );
setMoveKey( spep_3-3 + 548, 1, 50.2, 41.2 , 0 );
setMoveKey( spep_3-3 + 549, 1, 50.2, 41.2 , 0 );
setMoveKey( spep_3-3 + 550, 1, 55.6, 40.3 , 0 );
setMoveKey( spep_3-3 + 551, 1, 55.6, 40.3 , 0 );
setMoveKey( spep_3-3 + 552, 1, 57.6, 40 , 0 );
setMoveKey( spep_3-3 + 553, 1, 57.6, 40 , 0 );
setMoveKey( spep_3-3 + 554, 1, 41.9, 4.9 , 0 );
setMoveKey( spep_3-3 + 555, 1, 41.9, 4.9 , 0 );
setMoveKey( spep_3-3 + 556, 1, 45.9, 2.9 , 0 );
setMoveKey( spep_3-3 + 557, 1, 45.9, 2.9 , 0 );
setMoveKey( spep_3-3 + 558, 1, 52.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 559, 1, 52.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 560, 1, 61.9, -19.1 , 0 );
setMoveKey( spep_3-3 + 561, 1, 61.9, -19.1 , 0 );
setMoveKey( spep_3-3 + 562, 1, 77.9, 33.9 , 0 );
setMoveKey( spep_3-3 + 563, 1, 77.9, 33.9 , 0 );
setMoveKey( spep_3-3 + 564, 1, 72.9, 5.9 , 0 );
setMoveKey( spep_3-3 + 565, 1, 72.9, 5.9 , 0 );
setMoveKey( spep_3-3 + 566, 1, 72.9, 5.9 , 0 );
setMoveKey( spep_3-3 + 567, 1, 72.9, 5.9 , 0 );
setMoveKey( spep_3-3 + 568, 1, 62.9, -0.1 , 0 );
setMoveKey( spep_3-3 + 570, 1, 62.9, -0.1 , 0 );
setMoveKey( spep_3-3 + 571, 1, 62.9, -0.1 , 0 );
setMoveKey( spep_3-3 + 572, 1, 75.9, 22.9 , 0 );
setMoveKey( spep_3-3 + 573, 1, 75.9, 22.9 , 0 );
setMoveKey( spep_3-3 + 574, 1, 56.9, 3.9 , 0 );
setMoveKey( spep_3-3 + 575, 1, 56.9, 3.9 , 0 );
setMoveKey( spep_3-3 + 576, 1, 57.9, 6.9 , 0 );
setMoveKey( spep_3-3 + 577, 1, 57.9, 6.9 , 0 );
setMoveKey( spep_3-3 + 578, 1, 73.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 579, 1, 73.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 580, 1, 59.9, 13.9 , 0 );
setMoveKey( spep_3-3 + 581, 1, 59.9, 13.9 , 0 );
setMoveKey( spep_3-3 + 582, 1, 63.9, 31.9 , 0 );
setMoveKey( spep_3-3 + 583, 1, 63.9, 31.9 , 0 );
setMoveKey( spep_3-3 + 584, 1, 73.9, -9.1 , 0 );
setMoveKey( spep_3-3 + 585, 1, 73.9, -9.1 , 0 );
setMoveKey( spep_3-3 + 586, 1, 73.9, -8.1 , 0 );
setMoveKey( spep_3-3 + 587, 1, 73.9, -8.1 , 0 );
setMoveKey( spep_3-3 + 588, 1, 71.9, 33.9 , 0 );
setMoveKey( spep_3-3 + 589, 1, 71.9, 33.9 , 0 );
setMoveKey( spep_3-3 + 590, 1, 71.9, 2.9 , 0 );
setMoveKey( spep_3-3 + 591, 1, 71.9, 2.9 , 0 );
setMoveKey( spep_3-3 + 592, 1, 75.9, 31.9 , 0 );
setMoveKey( spep_3-3 + 593, 1, 75.9, 31.9 , 0 );
setMoveKey( spep_3-3 + 594, 1, 65.9, 12.9 , 0 );
setMoveKey( spep_3-3 + 595, 1, 65.9, 12.9 , 0 );
setMoveKey( spep_3-3 + 596, 1, 67.9, 14.9 , 0 );
setMoveKey( spep_3-3 + 597, 1, 67.9, 14.9 , 0 );
setMoveKey( spep_3-3 + 598, 1, 62.9, 33.9 , 0 );
setMoveKey( spep_3-3 + 599, 1, 62.9, 33.9 , 0 );
setMoveKey( spep_3-3 + 600, 1, 71.9, 1.9 , 0 );
setMoveKey( spep_3-3 + 601, 1, 71.9, 1.9 , 0 );
setMoveKey( spep_3-3 + 602, 1, 57.9, 39.9 , 0 );
setMoveKey( spep_3-3 + 603, 1, 57.9, 39.9 , 0 );
setMoveKey( spep_3-3 + 604, 1, 64.9, -0.1 , 0 );
setMoveKey( spep_3-3 + 605, 1, 64.9, -0.1 , 0 );
setMoveKey( spep_3-3 + 606, 1, 65.9, 0.9 , 0 );
setMoveKey( spep_3-3 + 607, 1, 65.9, 0.9 , 0 );
setMoveKey( spep_3-3 + 608, 1, 72.9, 22.9 , 0 );
setMoveKey( spep_3-3 + 609, 1, 72.9, 22.9 , 0 );
setMoveKey( spep_3-3 + 610, 1, 67.9, 11.9 , 0 );
setMoveKey( spep_3-3 + 611, 1, 67.9, 11.9 , 0 );
setMoveKey( spep_3-3 + 612, 1, 67.9, 29.9 , 0 );
setMoveKey( spep_3-3 + 613, 1, 67.9, 29.9 , 0 );
setMoveKey( spep_3-3 + 614, 1, 66.9, 12.9 , 0 );
setMoveKey( spep_3-3 + 615, 1, 66.9, 12.9 , 0 );
setMoveKey( spep_3-3 + 616, 1, 67.9, 13.9 , 0 );
setMoveKey( spep_3-3 + 617, 1, 67.9, 13.9 , 0 );
setMoveKey( spep_3-3 + 618, 1, 68.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 619, 1, 68.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 620, 1, 67.9, 16.9 , 0 );
setMoveKey( spep_3-3 + 621, 1, 67.9, 16.9 , 0 );
setMoveKey( spep_3-3 + 622, 1, 71.9, 23.9 , 0 );
setMoveKey( spep_3-3 + 623, 1, 71.9, 23.9 , 0 );
setMoveKey( spep_3-3 + 624, 1, 73.9, 12.9 , 0 );
setMoveKey( spep_3-3 + 625, 1, 73.9, 12.9 , 0 );
setMoveKey( spep_3-3 + 626, 1, 72.9, 13.9 , 0 );
setMoveKey( spep_3-3 + 627, 1, 72.9, 13.9 , 0 );
setMoveKey( spep_3-3 + 628, 1, 71.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 629, 1, 71.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 630, 1, 69.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 631, 1, 69.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 632, 1, 71.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 633, 1, 71.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 634, 1, 71.9, 17.9 , 0 );
setMoveKey( spep_3-3 + 636, 1, 71.9, 17.9 , 0 );
setMoveKey( spep_3-3 + 637, 1, 71.9, 17.9 , 0 );
setMoveKey( spep_3-3 + 638, 1, 71.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 639, 1, 71.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 640, 1, 75.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 641, 1, 75.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 642, 1, 71.9, 23.9 , 0 );
setMoveKey( spep_3-3 + 643, 1, 71.9, 23.9 , 0 );
setMoveKey( spep_3-3 + 644, 1, 73.9, 15.9 , 0 );
setMoveKey( spep_3-3 + 645, 1, 73.9, 15.9 , 0 );
setMoveKey( spep_3-3 + 646, 1, 73.9, 15.9 , 0 );
setMoveKey( spep_3-3 + 647, 1, 73.9, 15.9 , 0 );
setMoveKey( spep_3-3 + 648, 1, 75.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 649, 1, 75.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 650, 1, 73.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 651, 1, 73.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 652, 1, 75.9, 25.9 , 0 );
setMoveKey( spep_3-3 + 653, 1, 75.9, 25.9 , 0 );
setMoveKey( spep_3-3 + 654, 1, 73.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 655, 1, 73.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 656, 1, 75.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 657, 1, 75.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 658, 1, 75.9, 23.9 , 0 );
setMoveKey( spep_3-3 + 659, 1, 75.9, 23.9 , 0 );
setMoveKey( spep_3-3 + 660, 1, 73.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 661, 1, 73.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 662, 1, 75.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 663, 1, 75.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 664, 1, 75.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 666, 1, 75.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 667, 1, 75.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 668, 1, 71.9, 23.9 , 0 );
setMoveKey( spep_3-3 + 669, 1, 71.9, 23.9 , 0 );
setMoveKey( spep_3-3 + 670, 1, 75.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 671, 1, 75.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 672, 1, 75.9, 25.9 , 0 );
setMoveKey( spep_3-3 + 673, 1, 75.9, 25.9 , 0 );
setMoveKey( spep_3-3 + 674, 1, 77.9, 17.9 , 0 );
setMoveKey( spep_3-3 + 676, 1, 77.9, 17.9 , 0 );
setMoveKey( spep_3-3 + 677, 1, 77.9, 17.9 , 0 );
setMoveKey( spep_3-3 + 678, 1, 77.9, 25.9 , 0 );
setMoveKey( spep_3-3 + 679, 1, 77.9, 25.9 , 0 );
setMoveKey( spep_3-3 + 680, 1, 71.9, 21.9 , 0 );

setScaleKey( spep_3-3 + 542, 1,2.71,2.71);
setScaleKey( spep_3-3 + 543, 1,2.71,2.71);
setScaleKey( spep_3-3 + 544, 1,2.02,2.02);
setScaleKey( spep_3-3 + 545, 1,2.02,2.02);
setScaleKey( spep_3-3 + 546, 1,1.56,1.56);
setScaleKey( spep_3-3 + 547, 1,1.56,1.56);
setScaleKey( spep_3-3 + 548, 1,1.29,1.29);
setScaleKey( spep_3-3 + 549, 1,1.29,1.29);
setScaleKey( spep_3-3 + 550, 1,1.13,1.13);
setScaleKey( spep_3-3 + 552, 1,1.08,1.08);
setScaleKey( spep_3-3 + 680, 1,1.08,1.08);

setRotateKey( spep_3-3 + 542, 1, -12.5 );
setRotateKey( spep_3-3 + 680, 1, -12.5 );

--SE
--岩ぶつかる
stopSe( spep_3 + 14, SE013, 26 );

--イナヅマ
SE014 = playSe( spep_3 + 0, 1056 );
setSeVolumeByWorkId( spep_3 + 0, SE014, 72 );
stopSe( spep_3 + 24, SE014, 0 );
SE049 = playSe( spep_3 + 548, 1148 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 548, SE049, 66 );
setPitch( spep_3 + 548, SE049, -800 );
setTimeStretch( SE049, 0.47, 10, 1 );
stopSe( spep_3 + 608, SE049, 74 );
SE050 = playSe( spep_3 + 548, 1147 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 548, SE050, 69 );
stopSe( spep_3 + 608, SE050, 74 );

--オーラ消す
SE015 = playSe( spep_3 + 18, 1046 );
setSeVolumeByWorkId( spep_3 + 18, SE015, 56 );
setPitch( spep_3 + 18, SE015, 300 );
setTimeStretch( SE015, 1.2, 10, 1 );
SE016 = playSe( spep_3 + 18, 1027 );
setSeVolumeByWorkId( spep_3 + 18, SE016, 92 );
setPitch( spep_3 + 18, SE016, 500 );
setTimeStretch( SE016, 1.33, 10, 1 );

--バリア貼る
SE017 = playSe( spep_3 + 50, 1313 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 50, SE017, 79 );
SE018 = playSe( spep_3 + 62, 1195 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 62, SE018, 0 );
setSeVolumeByWorkId( spep_3 + 63, SE018, 31.6 );
setSeVolumeByWorkId( spep_3 + 64, SE018, 63 );
setStartTimeMs( SE018,  100 );
setPitch( spep_3 + 62, SE018, -40 );
setTimeStretch( SE018, 0.97, 10, 1 );
stopSe( spep_3 + 104, SE018, 8 );
SE019 = playSe( spep_3 + 64, 1316 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 64, SE019, 251 );
SE020 = playSe( spep_3 + 100, 1225 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 100, SE020, 158 );
stopSe( spep_3 + 114, SE020, 10 );
SE036 = playSe( spep_3 + 416, 1195 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 416, SE036, 0 );
setSeVolumeByWorkId( spep_3 + 417, SE036, 50 );
setSeVolumeByWorkId( spep_3 + 418, SE036, 100 );
setStartTimeMs( SE036,  100 );
stopSe( spep_3 + 454, SE036, 8 );

--ジャンプ
SE021 = playSe( spep_3 + 144, 1117 );
stopSe( spep_3 + 176, SE021, 28 );
SE022 = playSe( spep_3 + 144, 1116 );
stopSe( spep_3 + 172, SE022, 22 );
SE023 = playSe( spep_3 + 144, 1314 );
stopSe( spep_3 + 316, SE023, 14 );

--敵タックル
SE024 = playSe( spep_3 + 190, 1153 );
setSeVolumeByWorkId( spep_3 + 190, SE024, 73 );
stopSe(spep_3 + 190 + 40,SE024,10);
SE025 = playSe( spep_3 + 190, 1152 );
stopSe( spep_3 + 202, SE025, 10 );
SE026 = playSe( spep_3 + 192, 1187 );
setSeVolumeByWorkId( spep_3 + 192, SE026, 76 );
stopSe(spep_3 + 190 + 40,SE026,10);
SE027 = playSe( spep_3 + 194, 1017 );
stopSe(spep_3 + 190 + 40,SE027,10);

--岩ヒット
SE028 = playSe( spep_3 + 220, 1159 );
stopSe( spep_3 + 254, SE028, 44 );

--岩の中にいる
SE029 = playSe( spep_3 + 244, 1116 );
stopSe( spep_3 + 272, SE029, 14 );
SE030 = playSe( spep_3 + 244, 1168 );
setSeVolumeByWorkId( spep_3 + 244, SE030, 78 );
stopSe( spep_3 + 292, SE030, 8 );
SE031 = playSe( spep_3 + 258, 44 );
SE032 = playSe( spep_3 + 268, 1072 );
stopSe( spep_3 + 310, SE032, 4 );

--岩から脱出
SE033 = playSe( spep_3 + 310, 1114 );
setSeVolumeByWorkId( spep_3 + 310, SE033, 81 );
SE034 = playSe( spep_3 + 310, 1169 );
setSeVolumeByWorkId( spep_3 + 310, SE034, 91 );
SE035 = playSe( spep_3 + 312, 1068 );
setSeVolumeByWorkId( spep_3 + 312, SE035, 78 );
stopSe( spep_3 + 334, SE035, 44 );

--ジャンプ中音
SE037 = playSe( spep_3 + 410, 1278 );
setSeVolumeByWorkId( spep_3 + 410, SE037, 41 );
stopSe( spep_3 + 530, SE037, 8 );
SE039 = playSe( spep_3 + 424, 1116 );
stopSe( spep_3 + 446, SE039, 12 );

--手にバリア貼る
SE038 = playSe( spep_3 + 418, 1316 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 418, SE038, 251 );
setTimeStretch( SE038, 0.83, 10, 1 );
SE040 = playSe( spep_3 + 444, 1225 ,"",0.6);
stopSe( spep_3 + 458, SE040, 10 );

--回転
SE041 = playSe( spep_3 + 494, 1117 );
setSeVolumeByWorkId( spep_3 + 494, SE041, 141 );
stopSe( spep_3 + 514, SE041, 10 );

--腕振り上げる
SE042 = playSe( spep_3 + 512, 1189 );
setSeVolumeByWorkId( spep_3 + 512, SE042, 160 );
SE043 = playSe( spep_3 + 514, 1003 );
setSeVolumeByWorkId( spep_3 + 514, SE043, 59 );

--ラストパンチ
SE044 = playSe( spep_3 + 532, 1155 );
SE045 = playSe( spep_3 + 540, 1187 );
setSeVolumeByWorkId( spep_3 + 540, SE045, 120 );
SE046 = playSe( spep_3 + 540, 1258 );
setSeVolumeByWorkId( spep_3 + 540, SE046, 100 );
stopSe( spep_3 + 600, SE046, 62 );
SE047 = playSe( spep_3 + 542, 1190 );
setSeVolumeByWorkId( spep_3 + 542, SE047, 100 );
SE048 = playSe( spep_3 + 542, 1114 );
setSeVolumeByWorkId( spep_3 + 542, SE048, 100 );

--環境音
SE051 = playSe( spep_3 + 572, 1278 );
setSeVolumeByWorkId( spep_3 + 572, SE051, 62 );
stopSe( spep_3 + 644, SE051, 30 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 682, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 540 );
endPhase( spep_3 + 672 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- ５人揃って気をためる
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 120, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 120, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 120, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 120, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +16;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--顔カットイン
SE001 = playSe( spep_x + 12, 1018 );

--気ダメ
SE002 = playSe( spep_0 + 32, 1035 );
setSeVolumeByWorkId( spep_0 + 32, SE002, 112 );
SE003 = playSe( spep_0 + 34, 1298 );
setSeVolumeByWorkId( spep_0 + 34, SE003, 141 );
SE004 = playSe( spep_0 + 34, 1188 );
setSeVolumeByWorkId( spep_0 + 34, SE004, 44 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0 + 114, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+120;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
SE_CUTIN = playSe( spep_1 + 0, SE_05 );

--気ダメ
stopSe( spep_1 + 10, SE002, 0 );
stopSe( spep_1 + 10, SE003, 0 );
stopSe( spep_1 + 10, SE004, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- ５人で気功波〜敵が山に激突
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 116, beam_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 116, beam_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam_f, 0 );
setEffRotateKey( spep_2 + 116, beam_f, 0 );
setEffAlphaKey( spep_2 + 0, beam_f, 255 );
setEffAlphaKey( spep_2 + 114, beam_f, 255 );
setEffAlphaKey( spep_2 + 115, beam_f, 255 );
setEffAlphaKey( spep_2 + 116, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 116, beam_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam_b, 0 );
setEffRotateKey( spep_2 + 116, beam_b, 0 );
setEffAlphaKey( spep_2 + 0, beam_b, 255 );
setEffAlphaKey( spep_2 + 114, beam_b, 255 );
setEffAlphaKey( spep_2 + 115, beam_b, 255 );
setEffAlphaKey( spep_2 + 116, beam_b, 0 );
--SE
--気弾発射
SE006 = playSe( spep_2 + 18, 1212 );
setSeVolumeByWorkId( spep_2 + 18, SE006, 0 );
setSeVolumeByWorkId( spep_2 + 19, SE006, 14.4 );
setSeVolumeByWorkId( spep_2 + 20, SE006, 28.8 );
setSeVolumeByWorkId( spep_2 + 21, SE006, 43.2 );
setSeVolumeByWorkId( spep_2 + 22, SE006, 58 );
setStartTimeMs( SE006,  683 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 36; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );

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

--敵の動き
setDisp( spep_2-3 + 40, 1, 1);
setDisp( spep_2-1 + 58, 1, 0);
changeAnime( spep_2-3 + 40, 1, 104);

setMoveKey( spep_2-3 + 40, 1, 82.1, 17.8 , 0 );
setMoveKey( spep_2-3 + 42, 1, 81.6, 13.5 , 0 );
setMoveKey( spep_2-3 + 44, 1, 85.2, 18.8 , 0 );
setMoveKey( spep_2-3 + 46, 1, 77.9, 14.3 , 0 );
setMoveKey( spep_2-3 + 48, 1, 82.2, 18.4 , 0 );
setMoveKey( spep_2-3 + 50, 1, 84.2, 17.8 , 0 );
setMoveKey( spep_2-3 + 52, 1, 79.9, 19.4 , 0 );
setMoveKey( spep_2-3 + 54, 1, 83, 20.1 , 0 );
setMoveKey( spep_2-3 + 56, 1, 81.6, 19.7 , 0 );
setMoveKey( spep_2-1 + 58, 1, 83.3, 19.6 , 0 );

setScaleKey( spep_2-3 + 40, 1, 1.06, 1.06 );
setScaleKey( spep_2-1 + 58, 1, 1.06, 1.06 );

setRotateKey( spep_2-3 + 40, 1, -9.5 );
setRotateKey( spep_2-1 + 58, 1, -9.5 );

--SE
--気弾発射
stopSe( spep_2 + 88, SE006, 46 );
SE007 = playSe( spep_2 + 10, 1004 );
SE008 = playSe( spep_2 + 14, 1003 );
SE009 = playSe( spep_2 + 18, 1027 );
setSeVolumeByWorkId( spep_2 + 18, SE009, 68 );
SE010 = playSe( spep_2 + 18, 1213 );
setSeVolumeByWorkId( spep_2 + 18, SE010, 68 );
stopSe( spep_2 + 94, SE010, 56 );
SE011 = playSe( spep_2 + 18, 1161 );
setSeVolumeByWorkId( spep_2 + 18, SE011, 72 );
stopSe( spep_2 + 102, SE011, 46 );



--気弾ヒット
SE012 = playSe( spep_2 + 46, 1067 );

--岩ぶつかる
SE013 = playSe( spep_2 + 72, 1159 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;
------------------------------------------------------
-- バリアを貼る〜空中でパンチ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 682, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 682, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 682, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 682, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 682, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 682, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 682, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 682, finish_b, 255 );

--敵の動き
setDisp( spep_3-3 + 182, 1, 1);
setDisp( spep_3-3 + 222, 1, 0);
changeAnime( spep_3-3 + 182, 1, 106);
changeAnime( spep_3-3 + 194, 1, 108);

setMoveKey( spep_3-3 + 182, 1, 621.9, 530.1 , 0 );
setMoveKey( spep_3-3 + 184, 1, 535.3, 466.7 , 0 );
setMoveKey( spep_3-3 + 186, 1, 452.7, 407.3 , 0 );
setMoveKey( spep_3-3 + 188, 1, 365.1, 348.9 , 0 );
setMoveKey( spep_3-3 + 190, 1, 278.6, 285.5 , 0 );
setMoveKey( spep_3-3 + 192, 1, 194, 217.1 , 0 );
setMoveKey( spep_3-3 + 193, 1, 194, 217.1 , 0 );

setMoveKey( spep_3-3 + 194, 1, 119, 166 , 0 );
setMoveKey( spep_3-3 + 195, 1, 119, 166 , 0 );
setMoveKey( spep_3-3 + 196, 1, 44.6, 115.8 , 0 );
setMoveKey( spep_3-3 + 197, 1, 44.6, 115.8 , 0 );
setMoveKey( spep_3-3 + 198, 1, 214.1, 161.9 , 0 );
setMoveKey( spep_3-3 + 199, 1, 214.1, 161.9 , 0 );
setMoveKey( spep_3-3 + 200, 1, 34.1, 215.5 , 0 );
setMoveKey( spep_3-3 + 201, 1, 34.1, 215.5 , 0 );
setMoveKey( spep_3-3 + 202, 1, 193.8, 134.4 , 0 );
setMoveKey( spep_3-3 + 203, 1, 193.8, 134.4 , 0 );
setMoveKey( spep_3-3 + 204, 1, 73.7, 133.3 , 0 );
setMoveKey( spep_3-3 + 205, 1, 73.7, 133.3 , 0 );
setMoveKey( spep_3-3 + 206, 1, 173.4, 172.2 , 0 );
setMoveKey( spep_3-3 + 207, 1, 173.4, 172.2 , 0 );
setMoveKey( spep_3-3 + 208, 1, 133.2, 171.1 , 0 );
setMoveKey( spep_3-3 + 209, 1, 133.2, 171.1 , 0 );
setMoveKey( spep_3-3 + 210, 1, 193, 150 , 0 );
setMoveKey( spep_3-3 + 211, 1, 193, 150 , 0 );
setMoveKey( spep_3-3 + 212, 1, 166, 241 , 0 );
setMoveKey( spep_3-3 + 213, 1, 166, 241 , 0 );
setMoveKey( spep_3-3 + 214, 1, 133, 179 , 0 );
setMoveKey( spep_3-3 + 215, 1, 133, 179 , 0 );
setMoveKey( spep_3-3 + 216, 1, 113, 136 , 0 );
setMoveKey( spep_3-3 + 217, 1, 113, 136 , 0 );
setMoveKey( spep_3-3 + 218, 1, 134, 180 , 0 );
setMoveKey( spep_3-3 + 219, 1, 134, 180 , 0 );
setMoveKey( spep_3-3 + 220, 1, 134, 174 , 0 );
setMoveKey( spep_3-3 + 221, 1, 134, 174 , 0 );
setMoveKey( spep_3-3 + 222, 1, 140, 177 , 0 );

setScaleKey( spep_3-3 + 182, 1, 1.76,1.76);
setScaleKey( spep_3-3 + 184, 1, 1.79,1.79);
setScaleKey( spep_3-3 + 186, 1, 1.8,1.8);
setScaleKey( spep_3-3 + 188, 1, 1.81,1.81);
setScaleKey( spep_3-3 + 190, 1, 1.84,1.84);
setScaleKey( spep_3-3 + 192, 1, 1.85,1.85);
setScaleKey( spep_3-3 + 193, 1, 1.85,1.85);
setScaleKey( spep_3-3 + 194, 1, 1.92,1.92);
setScaleKey( spep_3-3 + 195, 1, 1.92,1.92);
setScaleKey( spep_3-3 + 196, 1, 1.92,1.92);
setScaleKey( spep_3-3 + 197, 1, 1.92,1.92);
setScaleKey( spep_3-3 + 198, 1, 2.21,2.21);
setScaleKey( spep_3-3 + 199, 1, 2.21,2.21);
setScaleKey( spep_3-3 + 200, 1, 1.92,1.92);
setScaleKey( spep_3-3 + 210, 1, 1.92,1.92);
setScaleKey( spep_3-3 + 211, 1, 1.92,1.92);
setScaleKey( spep_3-3 + 212, 1, 2.4,2.4);
setScaleKey( spep_3-3 + 213, 1, 2.4,2.4);
setScaleKey( spep_3-3 + 214, 1, 1.92,1.92);
setScaleKey( spep_3-3 + 222, 1, 1.92,1.92);

setRotateKey( spep_3-3 + 182, 1, -32 );
setRotateKey( spep_3-3 + 184, 1, -32.6 );
setRotateKey( spep_3-3 + 186, 1, -33.2 );
setRotateKey( spep_3-3 + 188, 1, -33.8 );
setRotateKey( spep_3-3 + 190, 1, -34.4 );
setRotateKey( spep_3-3 + 192, 1, -35 );
setRotateKey( spep_3-3 + 193, 1, -35 );

setRotateKey( spep_3-3 + 194, 1, -34.5 );
setRotateKey( spep_3-3 + 222, 1, -34.5 );

--敵の動き
setDisp( spep_3-3 + 314, 1, 1);
setDisp( spep_3-1 + 402, 1, 0);
changeAnime( spep_3-3 + 314, 1, 108);

setMoveKey( spep_3-3 + 314, 1, -117.9, 42.4 , 0 );
setMoveKey( spep_3-3 + 316, 1, -99.5, 53.2 , 0 );
setMoveKey( spep_3-3 + 318, 1, -81.1, 63.5 , 0 );
setMoveKey( spep_3-3 + 320, 1, -65.5, 77.4 , 0 );
setMoveKey( spep_3-3 + 322, 1, -52, 86.4 , 0 );
setMoveKey( spep_3-3 + 324, 1, -37.4, 94.2 , 0 );
setMoveKey( spep_3-3 + 326, 1, -31.6, 99.6 , 0 );
setMoveKey( spep_3-3 + 328, 1, -19.9, 104.9 , 0 );
setMoveKey( spep_3-3 + 330, 1, -11.4, 113.1 , 0 );
setMoveKey( spep_3-3 + 332, 1, -0.9, 118.7 , 0 );
setMoveKey( spep_3-3 + 334, 1, 3.4, 123.2 , 0 );
setMoveKey( spep_3-3 + 336, 1, 11.1, 126.7 , 0 );
setMoveKey( spep_3-3 + 338, 1, 16.1, 131.1 , 0 );
setMoveKey( spep_3-3 + 340, 1, 19.9, 134.7 , 0 );
setMoveKey( spep_3-3 + 342, 1, 26, 138.4 , 0 );
setMoveKey( spep_3-3 + 344, 1, 29.8, 139.6 , 0 );
setMoveKey( spep_3-3 + 346, 1, 31.6, 143.1 , 0 );
setMoveKey( spep_3-3 + 348, 1, 37.4, 146.3 , 0 );
setMoveKey( spep_3-3 + 350, 1, 39.5, 147.7 , 0 );
setMoveKey( spep_3-3 + 352, 1, 43.1, 149.2 , 0 );
setMoveKey( spep_3-3 + 354, 1, 44.6, 152.3 , 0 );
setMoveKey( spep_3-3 + 356, 1, 47.4, 152.5 , 0 );
setMoveKey( spep_3-3 + 358, 1, 49.2, 153.9 , 0 );
setMoveKey( spep_3-3 + 360, 1, 51, 155.7 , 0 );
setMoveKey( spep_3-3 + 362, 1, 52.4, 156.7 , 0 );
setMoveKey( spep_3-3 + 364, 1, 54.2, 157.4 , 0 );
setMoveKey( spep_3-3 + 366, 1, 55.6, 158.1 , 0 );
setMoveKey( spep_3-3 + 368, 1, 56.9, 159.1 , 0 );
setMoveKey( spep_3-3 + 370, 1, 58, 159.8 , 0 );
setMoveKey( spep_3-3 + 372, 1, 59.1, 160.6 , 0 );
setMoveKey( spep_3-3 + 374, 1, 59.9, 161.1 , 0 );
setMoveKey( spep_3-3 + 376, 1, 60.7, 161.6 , 0 );
setMoveKey( spep_3-3 + 378, 1, 62, 162.4 , 0 );
setMoveKey( spep_3-3 + 380, 1, 63.1, 163.1 , 0 );
setMoveKey( spep_3-3 + 382, 1, 64.1, 163.8 , 0 );
setMoveKey( spep_3-3 + 384, 1, 65, 164.3 , 0 );
setMoveKey( spep_3-3 + 386, 1, 65.7, 164.8 , 0 );
setMoveKey( spep_3-3 + 388, 1, 66.3, 165.2 , 0 );
setMoveKey( spep_3-3 + 390, 1, 66.8, 165.6 , 0 );
setMoveKey( spep_3-3 + 392, 1, 67.2, 165.8 , 0 );
setMoveKey( spep_3-3 + 394, 1, 67.6, 166 , 0 );
setMoveKey( spep_3-3 + 396, 1, 67.8, 166.2 , 0 );
setMoveKey( spep_3-3 + 398, 1, 68, 166.3 , 0 );
setMoveKey( spep_3-3 + 400, 1, 68.1, 166.4 , 0 );
setMoveKey( spep_3-1 + 402, 1, 68.1, 166.4 , 0 );

setScaleKey( spep_3-3 + 314, 1, 0.26, 0.26 );
setScaleKey( spep_3-1 + 402, 1, 0.26, 0.26 );

setRotateKey( spep_3-3 + 314, 1, -34.5 );
setRotateKey( spep_3-1 + 402, 1, -34.5 );

--敵の動き
setDisp( spep_3-3 + 542, 1, 1);
changeAnime( spep_3-3 + 542, 1, 108);

setMoveKey( spep_3-3 + 542, 1, -4.1, 49.9 , 0 );
setMoveKey( spep_3-3 + 543, 1, -4.1, 49.9 , 0 );
setMoveKey( spep_3-3 + 544, 1, 22, 45.7 , 0 );
setMoveKey( spep_3-3 + 545, 1, 22, 45.7 , 0 );
setMoveKey( spep_3-3 + 546, 1, 39.6, 42.9 , 0 );
setMoveKey( spep_3-3 + 547, 1, 39.6, 42.9 , 0 );
setMoveKey( spep_3-3 + 548, 1, 50.2, 41.2 , 0 );
setMoveKey( spep_3-3 + 549, 1, 50.2, 41.2 , 0 );
setMoveKey( spep_3-3 + 550, 1, 55.6, 40.3 , 0 );
setMoveKey( spep_3-3 + 551, 1, 55.6, 40.3 , 0 );
setMoveKey( spep_3-3 + 552, 1, 57.6, 40 , 0 );
setMoveKey( spep_3-3 + 553, 1, 57.6, 40 , 0 );
setMoveKey( spep_3-3 + 554, 1, 41.9, 4.9 , 0 );
setMoveKey( spep_3-3 + 555, 1, 41.9, 4.9 , 0 );
setMoveKey( spep_3-3 + 556, 1, 45.9, 2.9 , 0 );
setMoveKey( spep_3-3 + 557, 1, 45.9, 2.9 , 0 );
setMoveKey( spep_3-3 + 558, 1, 52.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 559, 1, 52.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 560, 1, 61.9, -19.1 , 0 );
setMoveKey( spep_3-3 + 561, 1, 61.9, -19.1 , 0 );
setMoveKey( spep_3-3 + 562, 1, 77.9, 33.9 , 0 );
setMoveKey( spep_3-3 + 563, 1, 77.9, 33.9 , 0 );
setMoveKey( spep_3-3 + 564, 1, 72.9, 5.9 , 0 );
setMoveKey( spep_3-3 + 565, 1, 72.9, 5.9 , 0 );
setMoveKey( spep_3-3 + 566, 1, 72.9, 5.9 , 0 );
setMoveKey( spep_3-3 + 567, 1, 72.9, 5.9 , 0 );
setMoveKey( spep_3-3 + 568, 1, 62.9, -0.1 , 0 );
setMoveKey( spep_3-3 + 570, 1, 62.9, -0.1 , 0 );
setMoveKey( spep_3-3 + 571, 1, 62.9, -0.1 , 0 );
setMoveKey( spep_3-3 + 572, 1, 75.9, 22.9 , 0 );
setMoveKey( spep_3-3 + 573, 1, 75.9, 22.9 , 0 );
setMoveKey( spep_3-3 + 574, 1, 56.9, 3.9 , 0 );
setMoveKey( spep_3-3 + 575, 1, 56.9, 3.9 , 0 );
setMoveKey( spep_3-3 + 576, 1, 57.9, 6.9 , 0 );
setMoveKey( spep_3-3 + 577, 1, 57.9, 6.9 , 0 );
setMoveKey( spep_3-3 + 578, 1, 73.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 579, 1, 73.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 580, 1, 59.9, 13.9 , 0 );
setMoveKey( spep_3-3 + 581, 1, 59.9, 13.9 , 0 );
setMoveKey( spep_3-3 + 582, 1, 63.9, 31.9 , 0 );
setMoveKey( spep_3-3 + 583, 1, 63.9, 31.9 , 0 );
setMoveKey( spep_3-3 + 584, 1, 73.9, -9.1 , 0 );
setMoveKey( spep_3-3 + 585, 1, 73.9, -9.1 , 0 );
setMoveKey( spep_3-3 + 586, 1, 73.9, -8.1 , 0 );
setMoveKey( spep_3-3 + 587, 1, 73.9, -8.1 , 0 );
setMoveKey( spep_3-3 + 588, 1, 71.9, 33.9 , 0 );
setMoveKey( spep_3-3 + 589, 1, 71.9, 33.9 , 0 );
setMoveKey( spep_3-3 + 590, 1, 71.9, 2.9 , 0 );
setMoveKey( spep_3-3 + 591, 1, 71.9, 2.9 , 0 );
setMoveKey( spep_3-3 + 592, 1, 75.9, 31.9 , 0 );
setMoveKey( spep_3-3 + 593, 1, 75.9, 31.9 , 0 );
setMoveKey( spep_3-3 + 594, 1, 65.9, 12.9 , 0 );
setMoveKey( spep_3-3 + 595, 1, 65.9, 12.9 , 0 );
setMoveKey( spep_3-3 + 596, 1, 67.9, 14.9 , 0 );
setMoveKey( spep_3-3 + 597, 1, 67.9, 14.9 , 0 );
setMoveKey( spep_3-3 + 598, 1, 62.9, 33.9 , 0 );
setMoveKey( spep_3-3 + 599, 1, 62.9, 33.9 , 0 );
setMoveKey( spep_3-3 + 600, 1, 71.9, 1.9 , 0 );
setMoveKey( spep_3-3 + 601, 1, 71.9, 1.9 , 0 );
setMoveKey( spep_3-3 + 602, 1, 57.9, 39.9 , 0 );
setMoveKey( spep_3-3 + 603, 1, 57.9, 39.9 , 0 );
setMoveKey( spep_3-3 + 604, 1, 64.9, -0.1 , 0 );
setMoveKey( spep_3-3 + 605, 1, 64.9, -0.1 , 0 );
setMoveKey( spep_3-3 + 606, 1, 65.9, 0.9 , 0 );
setMoveKey( spep_3-3 + 607, 1, 65.9, 0.9 , 0 );
setMoveKey( spep_3-3 + 608, 1, 72.9, 22.9 , 0 );
setMoveKey( spep_3-3 + 609, 1, 72.9, 22.9 , 0 );
setMoveKey( spep_3-3 + 610, 1, 67.9, 11.9 , 0 );
setMoveKey( spep_3-3 + 611, 1, 67.9, 11.9 , 0 );
setMoveKey( spep_3-3 + 612, 1, 67.9, 29.9 , 0 );
setMoveKey( spep_3-3 + 613, 1, 67.9, 29.9 , 0 );
setMoveKey( spep_3-3 + 614, 1, 66.9, 12.9 , 0 );
setMoveKey( spep_3-3 + 615, 1, 66.9, 12.9 , 0 );
setMoveKey( spep_3-3 + 616, 1, 67.9, 13.9 , 0 );
setMoveKey( spep_3-3 + 617, 1, 67.9, 13.9 , 0 );
setMoveKey( spep_3-3 + 618, 1, 68.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 619, 1, 68.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 620, 1, 67.9, 16.9 , 0 );
setMoveKey( spep_3-3 + 621, 1, 67.9, 16.9 , 0 );
setMoveKey( spep_3-3 + 622, 1, 71.9, 23.9 , 0 );
setMoveKey( spep_3-3 + 623, 1, 71.9, 23.9 , 0 );
setMoveKey( spep_3-3 + 624, 1, 73.9, 12.9 , 0 );
setMoveKey( spep_3-3 + 625, 1, 73.9, 12.9 , 0 );
setMoveKey( spep_3-3 + 626, 1, 72.9, 13.9 , 0 );
setMoveKey( spep_3-3 + 627, 1, 72.9, 13.9 , 0 );
setMoveKey( spep_3-3 + 628, 1, 71.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 629, 1, 71.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 630, 1, 69.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 631, 1, 69.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 632, 1, 71.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 633, 1, 71.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 634, 1, 71.9, 17.9 , 0 );
setMoveKey( spep_3-3 + 636, 1, 71.9, 17.9 , 0 );
setMoveKey( spep_3-3 + 637, 1, 71.9, 17.9 , 0 );
setMoveKey( spep_3-3 + 638, 1, 71.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 639, 1, 71.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 640, 1, 75.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 641, 1, 75.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 642, 1, 71.9, 23.9 , 0 );
setMoveKey( spep_3-3 + 643, 1, 71.9, 23.9 , 0 );
setMoveKey( spep_3-3 + 644, 1, 73.9, 15.9 , 0 );
setMoveKey( spep_3-3 + 645, 1, 73.9, 15.9 , 0 );
setMoveKey( spep_3-3 + 646, 1, 73.9, 15.9 , 0 );
setMoveKey( spep_3-3 + 647, 1, 73.9, 15.9 , 0 );
setMoveKey( spep_3-3 + 648, 1, 75.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 649, 1, 75.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 650, 1, 73.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 651, 1, 73.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 652, 1, 75.9, 25.9 , 0 );
setMoveKey( spep_3-3 + 653, 1, 75.9, 25.9 , 0 );
setMoveKey( spep_3-3 + 654, 1, 73.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 655, 1, 73.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 656, 1, 75.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 657, 1, 75.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 658, 1, 75.9, 23.9 , 0 );
setMoveKey( spep_3-3 + 659, 1, 75.9, 23.9 , 0 );
setMoveKey( spep_3-3 + 660, 1, 73.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 661, 1, 73.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 662, 1, 75.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 663, 1, 75.9, 21.9 , 0 );
setMoveKey( spep_3-3 + 664, 1, 75.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 666, 1, 75.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 667, 1, 75.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 668, 1, 71.9, 23.9 , 0 );
setMoveKey( spep_3-3 + 669, 1, 71.9, 23.9 , 0 );
setMoveKey( spep_3-3 + 670, 1, 75.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 671, 1, 75.9, 19.9 , 0 );
setMoveKey( spep_3-3 + 672, 1, 75.9, 25.9 , 0 );
setMoveKey( spep_3-3 + 673, 1, 75.9, 25.9 , 0 );
setMoveKey( spep_3-3 + 674, 1, 77.9, 17.9 , 0 );
setMoveKey( spep_3-3 + 676, 1, 77.9, 17.9 , 0 );
setMoveKey( spep_3-3 + 677, 1, 77.9, 17.9 , 0 );
setMoveKey( spep_3-3 + 678, 1, 77.9, 25.9 , 0 );
setMoveKey( spep_3-3 + 679, 1, 77.9, 25.9 , 0 );
setMoveKey( spep_3-3 + 680, 1, 71.9, 21.9 , 0 );

setScaleKey( spep_3-3 + 542, 1,2.71,2.71);
setScaleKey( spep_3-3 + 543, 1,2.71,2.71);
setScaleKey( spep_3-3 + 544, 1,2.02,2.02);
setScaleKey( spep_3-3 + 545, 1,2.02,2.02);
setScaleKey( spep_3-3 + 546, 1,1.56,1.56);
setScaleKey( spep_3-3 + 547, 1,1.56,1.56);
setScaleKey( spep_3-3 + 548, 1,1.29,1.29);
setScaleKey( spep_3-3 + 549, 1,1.29,1.29);
setScaleKey( spep_3-3 + 550, 1,1.13,1.13);
setScaleKey( spep_3-3 + 552, 1,1.08,1.08);
setScaleKey( spep_3-3 + 680, 1,1.08,1.08);

setRotateKey( spep_3-3 + 542, 1, -12.5 );
setRotateKey( spep_3-3 + 680, 1, -12.5 );

--SE
--岩ぶつかる
stopSe( spep_3 + 14, SE013, 26 );

--イナヅマ
SE014 = playSe( spep_3 + 0, 1056 );
setSeVolumeByWorkId( spep_3 + 0, SE014, 72 );
stopSe( spep_3 + 24, SE014, 0 );
SE049 = playSe( spep_3 + 548, 1148 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 548, SE049, 66 );
setPitch( spep_3 + 548, SE049, -800 );
setTimeStretch( SE049, 0.47, 10, 1 );
stopSe( spep_3 + 608, SE049, 74 );
SE050 = playSe( spep_3 + 548, 1147 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 548, SE050, 69 );
stopSe( spep_3 + 608, SE050, 74 );

--オーラ消す
SE015 = playSe( spep_3 + 18, 1046 );
setSeVolumeByWorkId( spep_3 + 18, SE015, 56 );
setPitch( spep_3 + 18, SE015, 300 );
setTimeStretch( SE015, 1.2, 10, 1 );
SE016 = playSe( spep_3 + 18, 1027 );
setSeVolumeByWorkId( spep_3 + 18, SE016, 92 );
setPitch( spep_3 + 18, SE016, 500 );
setTimeStretch( SE016, 1.33, 10, 1 );

--バリア貼る
SE017 = playSe( spep_3 + 50, 1313 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 50, SE017, 79 );
SE018 = playSe( spep_3 + 62, 1195 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 62, SE018, 0 );
setSeVolumeByWorkId( spep_3 + 63, SE018, 31.6 );
setSeVolumeByWorkId( spep_3 + 64, SE018, 63 );
setStartTimeMs( SE018,  100 );
setPitch( spep_3 + 62, SE018, -40 );
setTimeStretch( SE018, 0.97, 10, 1 );
stopSe( spep_3 + 104, SE018, 8 );
SE019 = playSe( spep_3 + 64, 1316 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 64, SE019, 251 );
SE020 = playSe( spep_3 + 100, 1225 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 100, SE020, 158 );
stopSe( spep_3 + 114, SE020, 10 );
SE036 = playSe( spep_3 + 416, 1195 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 416, SE036, 0 );
setSeVolumeByWorkId( spep_3 + 417, SE036, 50 );
setSeVolumeByWorkId( spep_3 + 418, SE036, 100 );
setStartTimeMs( SE036,  100 );
stopSe( spep_3 + 454, SE036, 8 );

--ジャンプ
SE021 = playSe( spep_3 + 144, 1117 );
stopSe( spep_3 + 176, SE021, 28 );
SE022 = playSe( spep_3 + 144, 1116 );
stopSe( spep_3 + 172, SE022, 22 );
SE023 = playSe( spep_3 + 144, 1314 );
stopSe( spep_3 + 316, SE023, 14 );

--敵タックル
SE024 = playSe( spep_3 + 190, 1153 );
setSeVolumeByWorkId( spep_3 + 190, SE024, 73 );
stopSe(spep_3 + 190 + 40,SE024,10);
SE025 = playSe( spep_3 + 190, 1152 );
stopSe( spep_3 + 202, SE025, 10 );
SE026 = playSe( spep_3 + 192, 1187 );
setSeVolumeByWorkId( spep_3 + 192, SE026, 76 );
stopSe(spep_3 + 190 + 40,SE026,10);
SE027 = playSe( spep_3 + 194, 1017 );
stopSe(spep_3 + 190 + 40,SE027,10);

--岩ヒット
SE028 = playSe( spep_3 + 220, 1159 );
stopSe( spep_3 + 254, SE028, 44 );

--岩の中にいる
SE029 = playSe( spep_3 + 244, 1116 );
stopSe( spep_3 + 272, SE029, 14 );
SE030 = playSe( spep_3 + 244, 1168 );
setSeVolumeByWorkId( spep_3 + 244, SE030, 78 );
stopSe( spep_3 + 292, SE030, 8 );
SE031 = playSe( spep_3 + 258, 44 );
SE032 = playSe( spep_3 + 268, 1072 );
stopSe( spep_3 + 310, SE032, 4 );

--岩から脱出
SE033 = playSe( spep_3 + 310, 1114 );
setSeVolumeByWorkId( spep_3 + 310, SE033, 81 );
SE034 = playSe( spep_3 + 310, 1169 );
setSeVolumeByWorkId( spep_3 + 310, SE034, 91 );
SE035 = playSe( spep_3 + 312, 1068 );
setSeVolumeByWorkId( spep_3 + 312, SE035, 78 );
stopSe( spep_3 + 334, SE035, 44 );

--ジャンプ中音
SE037 = playSe( spep_3 + 410, 1278 );
setSeVolumeByWorkId( spep_3 + 410, SE037, 41 );
stopSe( spep_3 + 530, SE037, 8 );
SE039 = playSe( spep_3 + 424, 1116 );
stopSe( spep_3 + 446, SE039, 12 );

--手にバリア貼る
SE038 = playSe( spep_3 + 418, 1316 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 418, SE038, 251 );
setTimeStretch( SE038, 0.83, 10, 1 );
SE040 = playSe( spep_3 + 444, 1225 ,"",0.6);
stopSe( spep_3 + 458, SE040, 10 );

--回転
SE041 = playSe( spep_3 + 494, 1117 );
setSeVolumeByWorkId( spep_3 + 494, SE041, 141 );
stopSe( spep_3 + 514, SE041, 10 );

--腕振り上げる
SE042 = playSe( spep_3 + 512, 1189 );
setSeVolumeByWorkId( spep_3 + 512, SE042, 160 );
SE043 = playSe( spep_3 + 514, 1003 );
setSeVolumeByWorkId( spep_3 + 514, SE043, 59 );

--ラストパンチ
SE044 = playSe( spep_3 + 532, 1155 );
SE045 = playSe( spep_3 + 540, 1187 );
setSeVolumeByWorkId( spep_3 + 540, SE045, 120 );
SE046 = playSe( spep_3 + 540, 1258 );
setSeVolumeByWorkId( spep_3 + 540, SE046, 100 );
stopSe( spep_3 + 600, SE046, 62 );
SE047 = playSe( spep_3 + 542, 1190 );
setSeVolumeByWorkId( spep_3 + 542, SE047, 100 );
SE048 = playSe( spep_3 + 542, 1114 );
setSeVolumeByWorkId( spep_3 + 542, SE048, 100 );

--環境音
SE051 = playSe( spep_3 + 572, 1278 );
setSeVolumeByWorkId( spep_3 + 572, SE051, 62 );
stopSe( spep_3 + 644, SE051, 30 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 682, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 540 );
endPhase( spep_3 + 672 );
end