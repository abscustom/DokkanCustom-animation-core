--1023980:魔人ベジータ_ファイナルエクスプロージョン(アクティブスキル)
--sp_effect_a7_00052

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
SP_01=	159265	;--	開始　構えからセリフ
SP_02=	159266	;--	爆発技発動
SP_03=	159268	;--	爆発遠景
SP_04=	159269	;--	敵巻き込み爆風
SP_05=	159270	;--	敵巻き込み背景


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

kame_flag = 0x00;
if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時
if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1) then
        spep_0 = 0;
        spep_1 = spep_0 + 1036;
        spep_2 = spep_1 + 254;
    	
       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_1 + 40 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_1 + 224);      -- スキップ先フレーム指定


       end
    else end

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 開始　構えからセリフ
------------------------------------------------------
--はじめの準備
spep_0=0;
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

-- ** エフェクト等 ** --
fast = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fast, 0, 0, 0 );
setEffMoveKey( spep_0 + 1036, fast, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1036, fast, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast, 0 );
setEffRotateKey( spep_0 + 1036, fast, 0 );
setEffAlphaKey( spep_0 + 0, fast, 255 );
setEffAlphaKey( spep_0 + 1036, fast, 255 );

--SE
--入り環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "",spep_0 + 174, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 56 );

--気ダメ
SE002 = playSeVer2( spep_0 + 94, 1035, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 94, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE003, 74 );

--イナヅマ
SE004 = playSeVer2( spep_0 + 102, 1147, "",spep_0 + 270, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 102, SE004, 64 );

--地割れ
SE005 = playSeVer2( spep_0 + 102, 1044, "",spep_0 + 284, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 102, SE005, 78 );

--オーラ
SE006 = playSeVer2( spep_0 + 112, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE006, 79 );
SE007 = playSeVer2( spep_0 + 136, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE007, 79 );
SE008 = playSeVer2( spep_0 + 160, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE008, 79 );
SE009 = playSeVer2( spep_0 + 184, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 184, SE009, 79 );
SE010 = playSeVer2( spep_0 + 208, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 208, SE010, 79 );

--画面遷移
SE011 = playSeVer2( spep_0 + 208, 1072, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 230, 1182, "", 0, 14, 0, -1);

--オーラ
SE013 = playSeVer2( spep_0 + 232, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE013, 79 );

--画面遷移
SE014 = playSeVer2( spep_0 + 234, 1116, "",spep_0 + 324, 0, 64, -1);

--オーラベース
SE015 = playSeVer2( spep_0 + 242, 1278, "",spep_0 + 348, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 242, SE015, 56 );

--オーラ
SE016 = playSeVer2( spep_0 + 256, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE016, 79 );

--オーラベース
SE017 = playSeVer2( spep_0 + 256, 1226, "",spep_0 + 654, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 256, SE017, 47 );
SE018 = playSeVer2( spep_0 + 258, 1267, "",spep_0 + 636, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 258, SE018, 142 );

--オーラ
SE019 = playSeVer2( spep_0 + 280, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 280, SE019, 63 );
SE020 = playSeVer2( spep_0 + 304, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 304, SE020, 63 );

--オーラベース
SE021 = playSeVer2( spep_0 + 304, 1343, "",spep_0 + 654, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 304, SE021, 158 );
setBandpassFilter( spep_0 + 304, SE021, 24, 230 );

--オーラ
SE022 = playSeVer2( spep_0 + 328, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 328, SE022, 63 );
SE023 = playSeVer2( spep_0 + 352, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 352, SE023, 63 );
SE024 = playSeVer2( spep_0 + 376, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE024, 63 );
SE025 = playSeVer2( spep_0 + 400, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE025, 63 );
SE026 = playSeVer2( spep_0 + 424, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 424, SE026, 63 );
SE027 = playSeVer2( spep_0 + 448, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE027, 63 );
SE028 = playSeVer2( spep_0 + 472, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 472, SE028, 63 );
SE029 = playSeVer2( spep_0 + 496, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 496, SE029, 63 );
SE030 = playSeVer2( spep_0 + 520, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 520, SE030, 63 );
SE031 = playSeVer2( spep_0 + 544, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 544, SE031, 63 );
SE032 = playSeVer2( spep_0 + 568, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 568, SE032, 63 );
SE033 = playSeVer2( spep_0 + 592, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 592, SE033, 63 );

--画面遷移
SE034 = playSeVer2( spep_0 + 604, 1160, "",spep_0 + 810, 30, 60, -1);
setSeVolumeByWorkId( spep_0 + 604, SE034, 73 );

--オーラ
SE035 = playSeVer2( spep_0 + 616, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 616, SE035, 63 );

--画面遷移
SE036 = playSeVer2( spep_0 + 630, 8, "", 0, 0, 0, -1);

--オーラ
SE037 = playSeVer2( spep_0 + 640, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 640, SE037, 63 );

--語り中
SE038 = playSeVer2( spep_0 + 648, 1349, "",spep_0 + 1060, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 648, SE038, 50 );
SE039 = playSeVer2( spep_0 + 648, 1288, "",spep_0 + 1060, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 648, SE039, 72 );
SE040 = playSeVer2( spep_0 + 648, 1263, "", 0, 0, 0, -1);

--セリフカットイン
SE041 = playSeVer2( spep_0 + 650, 1018, "", 0, 0, 0, -1);

--語り最後決め
SE042 = playSeVer2( spep_0 + 940, 1266, "",spep_0 + 1034, 28, 44, -1);
setSeVolumeByWorkId( spep_0 + 940, SE042, 60 );
setStartTimeMs( SE042,  1000 );
SE043 = playSeVer2( spep_0 + 958, 8, "",spep_0 + 1024, 0, 36, -1);

--ボイス
--きさまの片付け方がわかったぜ…／やっとな......
playVoice( spep_0 + 0, 405 );
setVoiceVolume( spep_0 + 0, 405, 100 );

--きさまを倒すには二度と修復できないよう／こなごなにふっとばすことだ…！！
playVoice( spep_0 + 267, 406 );
setVoiceVolume( spep_0 + 267, 406, 100 );

--さらばだ…ブルマ…トランクス…／そして…カカロット……
playVoice( spep_0 +637, 407 );
setVoiceVolume( spep_0 + 637, 407, 126 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 1040, 0,  0, 0, 0, 255 ); --くろ 背景

--敵の動き
spep_1=spep_0+1036;
------------------------------------------------------
-- 爆発技発動
------------------------------------------------------
-- ** エフェクト等 ** --
activate = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, activate, 0, 0, 0 );
setEffMoveKey( spep_1 + 254, activate, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, activate, 1.0, 1.0 );
setEffScaleKey( spep_1 + 254, activate, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, activate, 0 );
setEffRotateKey( spep_1 + 254, activate, 0 );
setEffAlphaKey( spep_1 + 0, activate, 255 );
setEffAlphaKey( spep_1 + 254, activate, 255 );

--SE
--エネルギーチャージ
SE044 = playSeVer2( spep_1 + 0, 1258, "", 0, 28, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE045, 55 );

--地割れ
SE045 = playSeVer2( spep_1 + 0, 1044, "",spep_1 + 150, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 0, SE045, 55 );
setBandpassFilter( spep_1 + 0, SE045, 24, 700 );

--エネルギーチャージ
SE046 = playSeVer2( spep_1 + 2, 1137, "", 0, 30, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE046, 68 );
SE047 = playSeVer2( spep_1 + 8, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 8, SE047, 68 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 260, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 +40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE044, 0 );
    stopSe( SP_dodge - 12, SE045, 0 );
    stopSe( SP_dodge - 12, SE046, 0 );
    stopSe( SP_dodge - 12, SE047, 0 );

    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    --setMoveKey( SP_dodge + 32, 1, 52.3, 0.3 , 0 );
    --setScaleKey( SP_dodge + 32, 1, 1.41, 1.41 );
    --setRotateKey( SP_dodge + 32, 1, 2.5 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--SE
--地割れ
SE048 = playSeVer2( spep_1 + 78, 1226, "",spep_1 + 150, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 78, SE048, 27 );
setBandpassFilter( spep_1 + 78, SE048, 24, 700 );

--気を爆発させる
SE049 = playSeVer2( spep_1 + 140, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 140, SE049, 51 );
SE050 = playSeVer2( spep_1 + 140, 1159, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_1 + 140, SE050, 51 );
SE051 = playSeVer2( spep_1 + 140, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 140, SE051, 55 );
SE052 = playSeVer2( spep_1 + 140, 1321, "",spep_1 + 228, 0, 56, -1);
setSeVolumeByWorkId( spep_1 + 140, SE052, 70 );

--爆発広がる
SE053 = playSeVer2( spep_1 + 224, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 224, SE053, 80 );
SE054 = playSeVer2( spep_1 + 224, 1067, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_1 + 224, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 224, SE055, 84 );

--ボイス
--うおおーーー！！
playVoice( spep_1 + 73, 408 );
setVoiceVolume( spep_1 + 73, 408, 105 );
setVoiceVolume( spep_1 + 120, 408, 90 );

setVoiceVolume( spep_1 + 140, 408, 80 );

--敵の動き
spep_2=spep_1+254;
------------------------------------------------------
-- 爆発遠景
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_2 + 96, explosion, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, explosion, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, explosion, 0 );
setEffRotateKey( spep_2 + 96, explosion, 0 );
setEffAlphaKey( spep_2 + 0, explosion, 255 );
setEffAlphaKey( spep_2 + 96, explosion, 255 );

--SE
--爆発さらに広がる
SE056 = playSeVer2( spep_2 + 12, 1320, "",spep_2 + 132, 22, 40, -1);
setSeVolumeByWorkId( spep_2 + 12, SE056, 76 );
setStartTimeMs( SE056,  217 );
SE057 = playSeVer2( spep_2 + 0, 1159, "",spep_2 + 122, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 0, SE057, 81 );
SE058 = playSeVer2( spep_2 + 0, 1068, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 0, 1305, "",spep_2 + 124, 0, 30, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

dealDamage( spep_2 + 0 );
endPhase( spep_2 + 92 )

else end
end
------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then
------------------------------------------------------
-- 敵巻き込み爆風(全体攻撃部分)
------------------------------------------------------
spep_z = 0;

setVisibleUI( spep_z, 0);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

	SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

	playSe( SP_dodge-12, 1042);

	speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
	setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

	kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
		if (_IS_PLAYER_SIDE_ == 1) then

			setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

		else

			setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

		end

	setEffAlphaKey( SP_dodge, kaihi, 255);

	pauseAll( SP_dodge, 67);

	entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

	endPhase(SP_dodge+10);
do return end
else end

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_z + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_z + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_z + 158, finish_f, 0, 0, 0 );
setEffScaleKey( spep_z + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_z + 158, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, finish_f, 0 );
setEffRotateKey( spep_z + 158, finish_f, 0 );
setEffAlphaKey( spep_z + 0, finish_f, 255 );
setEffAlphaKey( spep_z + 158, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_z + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_z + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_z + 158, finish_b, 0, 0, 0 );
setEffScaleKey( spep_z + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_z + 158, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, finish_b, 0 );
setEffRotateKey( spep_z + 158, finish_b, 0 );
setEffAlphaKey( spep_z + 0, finish_b, 255 );
setEffAlphaKey( spep_z + 158, finish_b, 255 );

--敵の動き
setDisp( spep_z + 0, 1, 1 );
setDisp( spep_z-1 +132, 1, 0 );

changeAnime( spep_z + 0, 1, 102 );
changeAnime( spep_z-3 + 38, 1, 106 );

setGaussBlurKey(spep_z-3 +38,1,0.001);
setGaussBlurKey(spep_z-1 +132,1,0.001);
setGaussBlurKey(spep_z +132,1,0.0);

setBlendColor(spep_z +0, 1, 3, 0.79, 0.83, 0.15, 0);
setBlendColor(spep_z +1, 1, 3, 0.79, 0.83, 0.15, 0.029);
setBlendColor(spep_z +2, 1, 3, 0.79, 0.83, 0.15, 0.058);
setBlendColor(spep_z +3, 1, 3, 0.79, 0.83, 0.15, 0.087);
setBlendColor(spep_z +4, 1, 3, 0.79, 0.83, 0.15, 0.116);
setBlendColor(spep_z +5, 1, 3, 0.79, 0.83, 0.15, 0.145);
setBlendColor(spep_z +6, 1, 3, 0.79, 0.83, 0.15, 0.174);
setBlendColor(spep_z +7, 1, 3, 0.79, 0.83, 0.15, 0.203);
setBlendColor(spep_z +8, 1, 3, 0.79, 0.83, 0.15, 0.232);
setBlendColor(spep_z +9, 1, 3, 0.79, 0.83, 0.15, 0.261);
setBlendColor(spep_z +10, 1, 3, 0.79, 0.83, 0.15, 0.29);
setBlendColor(spep_z +11, 1, 3, 0.79, 0.83, 0.15, 0.319);
setBlendColor(spep_z +12, 1, 3, 0.79, 0.83, 0.15, 0.348);
setBlendColor(spep_z +13, 1, 3, 0.79, 0.83, 0.15, 0.377);
setBlendColor(spep_z +14, 1, 3, 0.79, 0.83, 0.15, 0.406);
setBlendColor(spep_z +15, 1, 3, 0.79, 0.83, 0.15, 0.435);
setBlendColor(spep_z +16, 1, 3, 0.79, 0.83, 0.15, 0.464);
setBlendColor(spep_z +17, 1, 3, 0.79, 0.83, 0.15, 0.493);
setBlendColor(spep_z +18, 1, 3, 0.79, 0.83, 0.15, 0.522);
setBlendColor(spep_z +19, 1, 3, 0.79, 0.83, 0.15, 0.551);
setBlendColor(spep_z +20, 1, 3, 0.79, 0.83, 0.15, 0.58);
setBlendColor(spep_z +21, 1, 3, 0.79, 0.83, 0.15, 0.609);
setBlendColor(spep_z +22, 1, 3, 0.79, 0.83, 0.15, 0.638);
setBlendColor(spep_z +23, 1, 3, 0.79, 0.83, 0.15, 0.667);
setBlendColor(spep_z +24, 1, 3, 0.79, 0.83, 0.15, 0.696);
setBlendColor(spep_z +25, 1, 3, 0.79, 0.83, 0.15, 0.725);
setBlendColor(spep_z +26, 1, 3, 0.79, 0.83, 0.15, 0.754);
setBlendColor(spep_z +27, 1, 3, 0.79, 0.83, 0.15, 0.783);
setBlendColor(spep_z +28, 1, 3, 0.79, 0.83, 0.15, 0.8);
setBlendColor(spep_z-3 +37, 1, 3, 0.79, 0.83, 0.15, 0.8);
setBlendColor(spep_z-3 +38, 1, 3, 1, 1, 1, 0);

setBlendColor(spep_z +47, 1, 3, 1, 1, 1, 0);
setBlendColor(spep_z +48, 1, 3, 1, 1, 1,0);
setBlendColor(spep_z +49, 1, 3, 1, 1, 1,0.02);
setBlendColor(spep_z +50, 1, 3, 1, 1, 1,0.04);
setBlendColor(spep_z +51, 1, 3, 1, 1, 1,0.06);
setBlendColor(spep_z +52, 1, 3, 1, 1, 1,0.08);
setBlendColor(spep_z +53, 1, 3, 1, 1, 1,0.1);
setBlendColor(spep_z +54, 1, 3, 1, 1, 1,0.12);
setBlendColor(spep_z +55, 1, 3, 1, 1, 1,0.14);
setBlendColor(spep_z +56, 1, 3, 1, 1, 1,0.16);
setBlendColor(spep_z +57, 1, 3, 1, 1, 1,0.18);
setBlendColor(spep_z +58, 1, 3, 1, 1, 1,0.2);
setBlendColor(spep_z +59, 1, 3, 1, 1, 1,0.22);
setBlendColor(spep_z +60, 1, 3, 1, 1, 1,0.24);
setBlendColor(spep_z +61, 1, 3, 1, 1, 1,0.26);
setBlendColor(spep_z +62, 1, 3, 1, 1, 1,0.28);
setBlendColor(spep_z +63, 1, 3, 1, 1, 1,0.3);
setBlendColor(spep_z +64, 1, 3, 1, 1, 1,0.32);
setBlendColor(spep_z +65, 1, 3, 1, 1, 1,0.34);
setBlendColor(spep_z +66, 1, 3, 1, 1, 1,0.36);
setBlendColor(spep_z +67, 1, 3, 1, 1, 1,0.38);
setBlendColor(spep_z +68, 1, 3, 1, 1, 1,0.4);
setBlendColor(spep_z +69, 1, 3, 1, 1, 1,0.42);
setBlendColor(spep_z +70, 1, 3, 1, 1, 1,0.44);
setBlendColor(spep_z +71, 1, 3, 1, 1, 1,0.46);
setBlendColor(spep_z +72, 1, 3, 1, 1, 1,0.48);
setBlendColor(spep_z +73, 1, 3, 1, 1, 1,0.5);
setBlendColor(spep_z +74, 1, 3, 1, 1, 1,0.52);
setBlendColor(spep_z +75, 1, 3, 1, 1, 1,0.54);
setBlendColor(spep_z +76, 1, 3, 1, 1, 1,0.56);
setBlendColor(spep_z +77, 1, 3, 1, 1, 1,0.58);
setBlendColor(spep_z +78, 1, 3, 1, 1, 1,0.6);
setBlendColor(spep_z +79, 1, 3, 1, 1, 1,0.62);
setBlendColor(spep_z +80, 1, 3, 1, 1, 1,0.64);
setBlendColor(spep_z-1 +132, 1, 3, 1, 1, 1,0.64);
setBlendColor(spep_z +132, 1, 3, 1, 1, 1,0);

setMoveKey( spep_z + 0, 1, 193.7, 12.4 , 0 );
--setMoveKey( spep_z-3 + 2, 1, 201.7, 29.7 , 0 );
setMoveKey( spep_z-3 + 4, 1, 207.1, -17.8 , 0 );
setMoveKey( spep_z-3 + 6, 1, 202.3, -13.3 , 0 );
setMoveKey( spep_z-3 + 8, 1, 193.4, 28.7 , 0 );
setMoveKey( spep_z-3 + 10, 1, 202.3, -25.8 , 0 );
setMoveKey( spep_z-3 + 12, 1, 193.9, -31.7 , 0 );
setMoveKey( spep_z-3 + 14, 1, 181.3, 0 , 0 );
setMoveKey( spep_z-3 + 16, 1, 197.6, -23.1 , 0 );
setMoveKey( spep_z-3 + 18, 1, 187.7, -4.2 , 0 );
setMoveKey( spep_z-3 + 20, 1, 189, 12.7 , 0 );
setMoveKey( spep_z-3 + 22, 1, 188.4, -16.4 , 0 );
setMoveKey( spep_z-3 + 24, 1, 183.7, -5.7 , 0 );
setMoveKey( spep_z-3 + 26, 1, 190.2, 18.3 , 0 );
setMoveKey( spep_z-3 + 28, 1, 192.4, -30 , 0 );
setMoveKey( spep_z-3 + 30, 1, 196.8, 3 , 0 );
setMoveKey( spep_z-3 + 32, 1, 183.6, 3 , 0 );
setMoveKey( spep_z-3 + 34, 1, 188, -32.2 , 0 );
setMoveKey( spep_z-3 + 37, 1, 195.2, 12.9 , 0 );
setMoveKey( spep_z-3 + 38, 1, 61.3, -55.6 , 0 );
setMoveKey( spep_z-3 + 40, 1, 67.9, -73.2 , 0 );
setMoveKey( spep_z-3 + 42, 1, 67.9, -73.2 , 0 );
setMoveKey( spep_z-3 + 44, 1, 67.9, -82 , 0 );
setMoveKey( spep_z-3 + 50, 1, 67.9, -82 , 0 );
setMoveKey( spep_z-3 + 52, 1, 67.9, -126 , 0 );
setMoveKey( spep_z-3 + 54, 1, 74.5, -82 , 0 );
setMoveKey( spep_z-3 + 56, 1, 65.7, -112.8 , 0 );
setMoveKey( spep_z-3 + 58, 1, 56.9, -77.6 , 0 );
setMoveKey( spep_z-3 + 60, 1, 61.3, -119.4 , 0 );
setMoveKey( spep_z-3 + 62, 1, 70.1, -101.8 , 0 );
setMoveKey( spep_z-3 + 64, 1, 78.9, -126 , 0 );
setMoveKey( spep_z-3 + 66, 1, 70.1, -95.2 , 0 );
setMoveKey( spep_z-3 + 68, 1, 70.1, -117.2 , 0 );
setMoveKey( spep_z-3 + 70, 1, 74.5, -126 , 0 );
setMoveKey( spep_z-3 + 72, 1, 74.5, -126 , 0 );
setMoveKey( spep_z-3 + 74, 1, 74.5, -104 , 0 );
setMoveKey( spep_z-3 + 76, 1, 74.5, -132.6 , 0 );
setMoveKey( spep_z-3 + 78, 1, 74.5, -101.8 , 0 );
setMoveKey( spep_z-3 + 80, 1, 59.1, -137 , 0 );
setMoveKey( spep_z-3 + 82, 1, 72.3, -93 , 0 );
setMoveKey( spep_z-3 + 84, 1, 72.3, -115 , 0 );
setMoveKey( spep_z-3 + 86, 1, 72.3, -93 , 0 );
setMoveKey( spep_z-3 + 88, 1, 67.9, -130.4 , 0 );
setMoveKey( spep_z-3 + 90, 1, 81.1, -119.4 , 0 );
setMoveKey( spep_z-3 + 92, 1, 92.1, -141.4 , 0 );
setMoveKey( spep_z-3 + 94, 1, 92.1, -106.2 , 0 );
setMoveKey( spep_z-3 + 96, 1, 81.1, -134.8 , 0 );
setMoveKey( spep_z-3 + 98, 1, 85.5, -108.4 , 0 );
setMoveKey( spep_z-3 + 100, 1, 94.3, -141.4 , 0 );
setMoveKey( spep_z-3 + 102, 1, 107.5, -97.4 , 0 );
setMoveKey( spep_z-3 + 104, 1, 107.5, -132.6 , 0 );
setMoveKey( spep_z-3 + 114, 1, 107.5, -132.6 , 0 );
setMoveKey( spep_z-3 + 116, 1, 100.9, -126 , 0 );
setMoveKey( spep_z-3 + 118, 1, 107.5, -148 , 0 );
setMoveKey( spep_z-3 + 122, 1, 107.5, -148 , 0 );
setMoveKey( spep_z-3 + 124, 1, 100.9, -137 , 0 );
setMoveKey( spep_z-3 + 126, 1, 100.9, -137 , 0 );
setMoveKey( spep_z-3 + 128, 1, 105.3, -121.6 , 0 );
setMoveKey( spep_z-3 + 130, 1, 105.3, -121.6 , 0 );
setMoveKey( spep_z-1 + 132, 1, 83.3, -99.6 , 0 );

setScaleKey( spep_z + 0, 1, 1.32, 1.32 );
setScaleKey( spep_z-3 + 37, 1, 1.32, 1.32 );
setScaleKey( spep_z-3 + 38, 1, 2.42, 2.42 );
setScaleKey( spep_z-1 + 132, 1, 2.42, 2.42 );

setRotateKey( spep_z-3 + 0, 1, -2.3 );
setRotateKey( spep_z-3 + 37, 1, -2.3 );
setRotateKey( spep_z-3 + 38, 1, -25 );
setRotateKey( spep_z-1 + 132, 1, -25 );

--SE
--【全体】気弾広がる
SE064 = playSeVer2( spep_z + 0, 1226, "",spep_z + 162, 0, 20, -1);
SE065 = playSeVer2( spep_z + 0, 1264, "",spep_z + 162, 0, 20, -1);
setSeVolumeByWorkId( spep_z + 0, SE065, 83 );

--【全体】気弾飲み込まれる
SE066 = playSeVer2( spep_z + 40, 1021, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_z + 84, 1258, "",spep_z + 162, 32, 20, -1);
setStartTimeMs( SE067,  100 );

dealDamage( spep_z + 38 );
endPhase( spep_z + 148 );
end