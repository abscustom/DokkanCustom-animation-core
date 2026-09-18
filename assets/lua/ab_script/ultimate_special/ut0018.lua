--1022090:超17号_電撃地獄玉(アクティブスキル)
--sp_effect_a2_00160

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
SP_01=	157347	;--	ダメージ表示前まで　前面
SP_02=	157348	;--	ダメージ表示前まで　背面
SP_03=	157349	;--	ダメージ表示前
SP_04=	157350	;--	KO演出


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
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
    
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;
        spep_1 = spep_0 + 722;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 650 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_1 + 30);      -- スキップ先フレーム指定

           --爆発
           SE026 = playSe( spep_1 + 30, 1069 );
           setStartTimeMs( SE026,  300 );
           SE027 = playSe( spep_1 + 30, 1159 );
           SE028 = playSe( spep_1 + 32, 1067 );
       end
    else end

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- ダメージ表示前まで
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 726, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 726, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 726, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 724, tame_f, 255 );
setEffAlphaKey( spep_0 + 725, tame_f, 255 );
setEffAlphaKey( spep_0 + 726, tame_f, 0 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 726, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 726, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 726, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 724, tame_b, 255 );
setEffAlphaKey( spep_0 + 725, tame_b, 255 );
setEffAlphaKey( spep_0 + 726, tame_b, 0 );

--敵の動き
setDisp( spep_0-3 + 640, 1, 1);
setDisp( spep_0-3 + 684, 1, 0);

changeAnime( spep_0-3 + 640, 1, 117);
changeAnime( spep_0-3 + 670, 1, 108);

setMoveKey( spep_0-3 + 640, 1, 468, -383.1 , 0 );
setMoveKey( spep_0-3 + 642, 1, 427.8, -370.5 , 0 );
setMoveKey( spep_0-3 + 644, 1, 373.6, -333 , 0 );
setMoveKey( spep_0-3 + 646, 1, 339.4, -303.3 , 0 );
setMoveKey( spep_0-3 + 648, 1, 283.2, -268.8 , 0 );
setMoveKey( spep_0-3 + 650, 1, 243, -256.2 , 0 );
setMoveKey( spep_0-3 + 652, 1, 188.8, -218.6 , 0 );
setMoveKey( spep_0-3 + 654, 1, 197.9, -216.2 , 0 );
setMoveKey( spep_0-3 + 656, 1, 185.1, -208.8 , 0 );
setMoveKey( spep_0-3 + 658, 1, 188.2, -223.4 , 0 );
setMoveKey( spep_0-3 + 660, 1, 177.4, -213 , 0 );
setMoveKey( spep_0-3 + 662, 1, 186.5, -210.5 , 0 );
setMoveKey( spep_0-3 + 664, 1, 173.7, -203.1 , 0 );
setMoveKey( spep_0-3 + 666, 1, 176.8, -217.7 , 0 );
setMoveKey( spep_0-3 + 668, 1, 166, -207.3 , 0 );
setMoveKey( spep_0-3 + 669, 1, 166, -207.3 , 0 );

setMoveKey( spep_0-3 + 670, 1, 156.1, -234.4 , 0 );
setMoveKey( spep_0-3 + 672, 1, 147.3, -237.7 , 0 );
setMoveKey( spep_0-3 + 674, 1, 154.6, -262.9 , 0 );
setMoveKey( spep_0-3 + 676, 1, 147.8, -263.2 , 0 );
setMoveKey( spep_0-3 + 678, 1, 161.1, -271.4 , 0 );
setMoveKey( spep_0-3 + 680, 1, 152.3, -274.7 , 0 );
setMoveKey( spep_0-3 + 682, 1, 159.6, -299.9 , 0 );
setMoveKey( spep_0-3 + 684, 1, 152.8, -300.2 , 0 );

setScaleKey( spep_0-3 + 640, 1, 0.02, 0.02 );
setScaleKey( spep_0-3 + 642, 1, 0.06, 0.06 );
setScaleKey( spep_0-3 + 644, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 646, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 648, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 650, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 652, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 654, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 656, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 658, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 660, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 662, 1, 0.48, 0.48 );
setScaleKey( spep_0-3 + 664, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 666, 1, 0.56, 0.56 );
setScaleKey( spep_0-3 + 668, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 669, 1, 0.6, 0.6 );

setScaleKey( spep_0-3 + 670, 1, 0.56, 0.56 );
setScaleKey( spep_0-3 + 672, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 674, 1, 0.49, 0.49 );
setScaleKey( spep_0-3 + 676, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 678, 1, 0.41, 0.41 );
setScaleKey( spep_0-3 + 680, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 682, 1, 0.34, 0.34 );
setScaleKey( spep_0-3 + 684, 1, 0.3, 0.3 );

setRotateKey( spep_0-3 + 640, 1, 0 );
setRotateKey( spep_0-3 + 669, 1, 0 );

setRotateKey( spep_0-3 + 670, 1, 33.7 );
setRotateKey( spep_0-3 + 684, 1, 33.7 );

--SE
--環境音
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 10 );

--顔あげる
SE002 = playSe( spep_0 + 4, 4 );
setSeVolumeByWorkId( spep_0 + 4, SE002, 119 );
setPitch( spep_0 + 4, SE002, -600 );
setTimeStretch( SE002, 0.6, 10, 1 );

--セリフカットイン
SE003 = playSe( spep_0 + 10, 1018 );

--髪かきあげる
SE004 = playSe( spep_0 + 152, 1233 );
setSeVolumeByWorkId( spep_0 + 152, SE004, 80 );
SE005 = playSe( spep_0 + 152, 1004 );
SE006 = playSe( spep_0 + 162, 1189 );
setSeVolumeByWorkId( spep_0 + 162, SE006, 141 );

--決め顔
SE007 = playSe( spep_0 + 268, 20 );
setSeVolumeByWorkId( spep_0 + 268, SE007, 79 );

--手を前に
SE008 = playSe( spep_0 + 320, 1003 );

--気弾溜め始め
SE009 = playSe( spep_0 + 338, 1311 );

--気弾生成
SE010 = playSe( spep_0 + 366, 17 );
stopSe( spep_0 + 406, SE010, 18 );
SE011 = playSe( spep_0 + 366, 1184 );
setSeVolumeByWorkId( spep_0 + 366, SE011, 89 );
stopSe( spep_0 + 416, SE011, 10 );

--画面遷移
SE012 = playSe( spep_0 + 398, 1072 );

--正面気弾溜め
SE013 = playSe( spep_0 + 404, 1224 );
setSeVolumeByWorkId( spep_0 + 404, SE013, 91 );
stopSe( spep_0 + 438, SE013, 22 );
SE014 = playSe( spep_0 + 430, 1225 );
setSeVolumeByWorkId( spep_0 + 430, SE014, 112 );
SE015 = playSe( spep_0 + 430, 1296 );
stopSe( spep_0 + 618, SE015, 10 );
setPitch( spep_0 + 430, SE015, -500 );
setTimeStretch( SE015, 0.67, 10, 1 );
SE016 = playSe( spep_0 + 440, 1287 );
setSeVolumeByWorkId( spep_0 + 440, SE016, 251 );
stopSe( spep_0 + 616, SE016, 10 );
SE017 = playSe( spep_0 + 440, 1295 );
stopSe( spep_0 + 618, SE017, 10 );
setPitch( spep_0 + 440, SE017, 700 );
setTimeStretch( SE017, 1.47, 10, 1 );

--腕引く
SE018 = playSe( spep_0 + 544, 1004 );

--気弾発射
SE019 = playSe( spep_0 + 620, 1027 );
stopSe( spep_0 + 660, SE019, 6 );
SE020 = playSe( spep_0 + 620, 1146 );
SE021 = playSe( spep_0 + 622, 1193 );
setSeVolumeByWorkId( spep_0 + 622, SE021, 124 );
SE022 = playSe( spep_0 + 622, 1130 );
setSeVolumeByWorkId( spep_0 + 622, SE022, 57 );
stopSe( spep_0 + 660, SE022, 8 );

--正面気弾溜め
SE023 = playSe( spep_0 + 440, 1204 );
stopSe( spep_0 + 618, SE023, 10 );
setPitch( spep_0 + 440, SE023, -300 );
setTimeStretch( SE023, 0.8, 10, 1 );
SE024 = playSe( spep_0 + 440, 1147 );
setSeVolumeByWorkId( spep_0 + 440, SE024, 79 );
stopSe( spep_0 + 600, SE024, 8 );


--ボイス
--ははははは！究極のパワーアップを遂げたオレに敵はいない！
playVoice( spep_0 + 3, 274 );

--地獄へいけ！
playVoice( spep_0 + 456, 275 );

--電撃地獄玉！！
playVoice( spep_0 + 544, 276 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 726, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 650; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE019, 0 );
    stopSe( SP_dodge - 12, SE020, 0 );
    stopSe( SP_dodge - 12, SE021, 0 );
    stopSe( SP_dodge - 12, SE022, 0 );
    stopSe( SP_dodge - 12, SE023, 0 );
    stopSe( SP_dodge - 12, SE024, 0 );


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
--気弾ヒット
SE025 = playSe( spep_0 + 668, 1145 );

--次の準備
spep_1=spep_0+722;
------------------------------------------------------
-- ダメージ表示前
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_1 + 150, finish, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_1 + 150, finish, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, finish, 0 );
setEffRotateKey( spep_1 + 150, finish, 0 );
setEffAlphaKey( spep_1 + 0, finish, 255 );
setEffAlphaKey( spep_1 + 150, finish, 225 );

-- ** エフェクト等 ** --
KO = entryEffect( spep_1 + 136, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 136, KO, 0, 0, 0 );
setEffMoveKey( spep_1 + 430, KO, 0, 0, 0 );
setEffScaleKey( spep_1 + 136, KO, 1.0, 1.0 );
setEffScaleKey( spep_1 + 430, KO, 1.0, 1.0 );
setEffRotateKey( spep_1 + 136, KO, 0 );
setEffRotateKey( spep_1 + 430, KO, 0 );
setEffAlphaKey( spep_1 + 136, KO, 255 );
setEffAlphaKey( spep_1 + 430, KO, 225 );

--SE
--気弾発射
stopSe( spep_1 + 18, SE020, 6 );
stopSe( spep_1 + 18, SE021, 8 );

--爆発
SE026 = playSe( spep_1 + 0, 1069 );
SE027 = playSe( spep_1 + 18, 1159 );
SE028 = playSe( spep_1 + 20, 1067 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 150 + 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );       -- ベース暗め　背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_1 + 30 );
entryFade( spep_1 +130, 2,  8, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_1 + 140 );
else end