--1024550:超サイヤ人ゴッドSSベジータ&超サイヤ人トランクス(未来)_親子ギャリック砲(アクティブ)
--sp_effect_b4_00240

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
SP_01 = 160141;  --トランクス・ベジータがセリフ
SP_02 = 160142;  --トランクス、アップで返事

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;

if (_IS_PLAYER_SIDE_ == 1) then
    
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 1200 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 1500);      -- スキップ先フレーム指定
           
           SE028 = playSeVer2( spep_0 + 1500, 1269, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_0 + 1500, SE028, 32 ); 
       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--前半(540)
------------------------------------------------------
--はじめの準備
spep_0=0;
--エフェクト
extra_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --中盤　奥    ef_003
setEffMoveKey( spep_0 + 0, extra_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 1808, extra_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, extra_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1808, extra_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, extra_f, 0 );
setEffRotateKey( spep_0 + 1808, extra_f, 0 );
setEffAlphaKey( spep_0 + 0, extra_f, 255 );
setEffAlphaKey( spep_0 + 1808, extra_f, 255 );

--エフェクト
extra_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --中盤　奥    ef_003
setEffMoveKey( spep_0 + 0, extra_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 1808, extra_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, extra_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1808, extra_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, extra_b, 0 );
setEffRotateKey( spep_0 + 1808, extra_b, 0 );
setEffAlphaKey( spep_0 + 0, extra_b, 255 );
setEffAlphaKey( spep_0 + 1808, extra_b, 255 );
--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 460, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 4, 1018, "", 0, 0, 0, -1);

--ベジータ踏み出す
SE003 = playSeVer2( spep_0 + 160, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE003, 79 );

--トランクス気弾溜め
SE004 = playSeVer2( spep_0 + 378, 1370, "", 0, 0, 0, -1);

--気弾溜め
SE005 = playSeVer2( spep_0 + 378, 1210, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 378, SE005, 45 );
setTimeStretch( SE005, 1.66, 30, 4 );
SE006 = playSeVer2( spep_0 + 378, 1252, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 378, 1227, "", 0, 0, 0, -1);

--イナヅマ
SE008 = playSeVer2( spep_0 + 398, 1147, "", 0, 0, 0, -1);

--仲間を想う
SE009 = playSeVer2( spep_0 + 516, 1288, "",spep_0 + 816, 34, 122, -1);
setSeVolumeByWorkId( spep_0 + 516, SE009, 202 );
setStartTimeMs( SE009,  950 );
SE010 = playSeVer2( spep_0 + 520, 1315, "",spep_0 + 768, 26, 38, -1);
setSeVolumeByWorkId( spep_0 + 520, SE010, 176 );
setStartTimeMs( SE010,  617 );

--イナヅマ
SE011 = playSeVer2( spep_0 + 604, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 604, SE011, 48 );
SE012 = playSeVer2( spep_0 + 738, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 738, SE012, 54 );

--ベジータ気弾溜め
SE013 = playSeVer2( spep_0 + 834, 1191, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 834, SE013, 138 );
setTimeStretch( SE013, 1.43, 30, 4 );
SE014 = playSeVer2( spep_0 + 868, 1227, "",spep_0 + 1194, 0, 52, -1);

--イナヅマ
SE015 = playSeVer2( spep_0 + 944, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 944, SE015, 50 );

--気弾発射
SE016 = playSeVer2( spep_0 + 1166, 1212, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 1166, SE016, 64 );
setStartTimeMs( SE016,  667 );
SE017 = playSeVer2( spep_0 + 1154, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1154, SE017, 72 );
SE018 = playSeVer2( spep_0 + 1154, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1154, SE018, 72 );
SE019 = playSeVer2( spep_0 + 1154, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1154, SE019, 84 );
SE020 = playSeVer2( spep_0 + 1154, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1154, SE020, 64 );

--ボイス
--オレはあきらめない！！絶対に！！
playVoice( spep_0 + 0, 451 );
setVoiceVolume( spep_0 + 0, 451, 100 );


--そのとおりだ！トランクス！！
playVoice( spep_0 + 149, 452 );
setVoiceVolume( spep_0 + 149, 452, 100 );

--オレの力よ…この世界の…人間の盾になれ！！
playVoice( spep_0 + 279, 453 );
setVoiceVolume( spep_0 + 279, 453, 100 );

--みんなの願いをこの一撃に込める！！！
playVoice( spep_0 + 584, 454 );
setVoiceVolume( spep_0 + 584, 454, 100 );

--サイヤ人の…人間の底力をあなどるなよ！！
playVoice( spep_0 + 835, 455 );
setVoiceVolume( spep_0 + 835, 455, 100 );

--ギャリック砲！！！！
playVoice( spep_0 + 1103, 457 );
setVoiceVolume( spep_0 + 1103, 457, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 1800, 0, 0, 0, 0, 255);       -- ベース暗め　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 1200 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    setVoiceVolume( SP_dodge - 12, 457, 0 );
   
    pauseAll( SP_dodge, 67);  
    
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

--敵の動き
setDisp( spep_0-3 + 1226, 1, 1);
setDisp( spep_0-1 + 1252, 1, 0);

changeAnime( spep_0-3 + 1226, 1, 1);
changeAnime( spep_0-3 + 1232, 1, 4);

setMoveKey( spep_0-3 + 1226, 1, -57.9, 26 , 0 );
setMoveKey( spep_0-3 + 1231, 1, -57.9, 26 , 0 );

setMoveKey( spep_0-3 + 1232, 1, -83.9, 36 , 0 );
setMoveKey( spep_0-3 + 1234, 1, -89.9, 32 , 0 );
setMoveKey( spep_0-3 + 1236, 1, -89.9, 32 , 0 );
setMoveKey( spep_0-3 + 1238, 1, -95.9, 40 , 0 );
setMoveKey( spep_0-3 + 1240, 1, -103.9, 32 , 0 );
setMoveKey( spep_0-3 + 1242, 1, -105.9, 34 , 0 );
setMoveKey( spep_0-3 + 1244, 1, -107.9, 16 , 0 );
setMoveKey( spep_0-3 + 1246, 1, -107.9, 16 , 0 );
setMoveKey( spep_0-3 + 1248, 1, -103.9, 50 , 0 );
setMoveKey( spep_0-3 + 1250, 1, -97.9, 30 , 0 );
setMoveKey( spep_0-1 + 1252, 1, -109.9, 40 , 0 );

setScaleKey( spep_0-3 + 1226, 1, 0.43, 0.43 );
setScaleKey( spep_0-1 + 1252, 1, 0.43, 0.43 );

setRotateKey( spep_0-3 + 1226, 1, 0 );
setRotateKey( spep_0-3 + 1231, 1, 0 );

setRotateKey( spep_0-3 + 1232, 1, 19.8 );
setRotateKey( spep_0-1 + 1252, 1, 19.8 );

--敵の動き
setDisp( spep_0-3 + 1316, 1, 1);
setDisp( spep_0-1 + 1344, 1, 0);

changeAnime( spep_0-3 + 1316, 1, 7);

a=50;
b=100;

setMoveKey( spep_0-3 + 1316, 1, 221.7+a, -61.6-b , 0 );
setMoveKey( spep_0-3 + 1318, 1, 221.7+a, -61.6-b , 0 );
setMoveKey( spep_0-3 + 1320, 1, 221.6+a, -61.4-b , 0 );
setMoveKey( spep_0-3 + 1322, 1, 221.1+a, -60.7-b , 0 );
setMoveKey( spep_0-3 + 1324, 1, 219.7+a, -58.8-b , 0 );
setMoveKey( spep_0-3 + 1326, 1, 216.8+a, -54.7-b , 0 );
setMoveKey( spep_0-3 + 1328, 1, 211.6+a, -47.4-b , 0 );
setMoveKey( spep_0-3 + 1330, 1, 203+a, -35.3-b , 0 );
setMoveKey( spep_0-3 + 1332, 1, 189.7+a, -16.8-b , 0 );
setMoveKey( spep_0-3 + 1334, 1, 170.5+a, 10.2-b , 0 );
setMoveKey( spep_0-3 + 1336, 1, 143.6+a, 47.8-b , 0 );
setMoveKey( spep_0-3 + 1338, 1, 107.4+a, 98.5-b , 0 );
setMoveKey( spep_0-3 + 1340, 1, 59.8+a, 165.1-b , 0 );
setMoveKey( spep_0-3 + 1342, 1, -1.3+a, 250.7-b , 0 );
setMoveKey( spep_0-1 + 1344, 1, -78.3+a, 358.4-b , 0 );

setScaleKey( spep_0-3 + 1316, 1, 3, 3 );
setScaleKey( spep_0-1 + 1344, 1, 3, 3 );

setRotateKey( spep_0-3 + 1316, 1, 56 );
setRotateKey( spep_0-1 + 1344, 1, 56 );

--SE
--気弾ヒット
SE021 = playSeVer2( spep_0 + 1230, 1023, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 1230, 1011, "", 0, 0, 0, -1);

--気弾ヒット中
SE023 = playSeVer2( spep_0 + 1258, 1161, "",spep_0 + 1390, 0, 14, -1);

--気弾飲み込まれる
SE024 = playSeVer2( spep_0 + 1308, 1021, "", 0, 0, 0, -1);

--爆発
SE025 = playSeVer2( spep_0 + 1350, 1024, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 1350, 1159, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 1350, 1067, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 1350, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1350, SE028, 32 );
SE029 = playSeVer2( spep_0 + 1380, 1188, "", 0, 0, 0, -1);

--ボイス
--トランクス…やったな！
playVoice( spep_0 + 1562, 459 );
setVoiceVolume( spep_0 + 1562, 459, 100 );

--はい！！
playVoice( spep_0 + 1718, 460 );
setVoiceVolume( spep_0 + 1718, 460, 100 );

-- ** ダメージ表示 ** --
dealDamage(spep_0+1500);
endPhase( spep_0 + 1788 );
else end