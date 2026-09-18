--1020340:超サイヤ人ゴッドSSベジータ(進化)_戦闘民族の誇り
--sp_effect_b1_00135(味方側)
--sp_effect_b1_00142(敵側)
--sp2108

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

--味方側
SP_01 = 156615;  --ベジータ気ダメ〜敵の腹にパンチ 前面 ef_001
SP_02 = 156616;  --ベジータ気ダメ〜敵の腹にパンチ 背面 ef_002
SP_03 = 156617;  --ラッシュ〜敵が転がって岩に激突 前面 ef_003
SP_04 = 156618;  --ラッシュ〜敵が転がって岩に激突 背面 ef_004

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.7);

kame_flag = 0x00;

if (_IS_PLAYER_SIDE_ == 1) then

   if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 398;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 388 );  -- スキップ先フレーム指定
        setupMovie(spep_2 + 388 , SP_01, spep_2 + 388 -1 + 2, 1);

        -- ** 音 ** --
        --ラストキック
        SE070 = playSe( spep_2 + 388 + 3, 1004 );
        SE071 = playSe( spep_2 + 388 + 3, 1187 );
        setSeVolumeByWorkId( spep_2 + 388 + 3, SE071, 80 );
        SE072 = playSe( spep_2 + 388 + 3, 1258 );
        setSeVolumeByWorkId( spep_2 + 388 + 3, SE072, 45 );
        stopSe( spep_2 + 412, SE072, 74 );
        SE073 = playSe( spep_2 + 388 + 3, 1123 );
        setSeVolumeByWorkId( spep_2 + 388 + 3, SE073, 68 );

    else 
        setupMovie(0, SP_01, 0, 1);
    end
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- ベジータ気ダメ〜敵の腹にパンチ(398F)
------------------------------------------------------

spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --ベジータ気ダメ〜敵の腹にパンチ 前面(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 398, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 398, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 398, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 398, first_f, 255 );
--[[
first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --ベジータ気ダメ〜敵の腹にパンチ 背面(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 398, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 398, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 398, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 398, first_b, 255 );
]]
-- ** 音 ** --
--気ダメ
SE001 = playSe( spep_0 + 30, 1261 );
setSeVolumeByWorkId( spep_0 + 30, SE001, 158 );

--気ダメ
SE002 = playSe( spep_0 + 32, 1298 );

--気ダメ
SE003 = playSe( spep_0 + 34, 1035 );

--気ダメ
SE004 = playSe( spep_0 + 34, 1024 );
setSeVolumeByWorkId( spep_0 + 34, SE004, 72 );

--環境音
SE005 = playSe( spep_0 + 46, 1181 );
setSeVolumeByWorkId( spep_0 + 46, SE005, 126 );
stopSe( spep_0 + 348, SE005, 24 );

--ダッシュ
SE006 = playSe( spep_0 + 76, 1182 );

--ダッシュ
SE007 = playSe( spep_0 + 76, 1314 );
setSeVolumeByWorkId( spep_0 + 76, SE007, 79 );
stopSe( spep_0 + 188, SE007, 26 );

--ダッシュ
SE008 = playSe( spep_0 + 76, 1183 );
stopSe( spep_0 + 188, SE008, 26 );

--スローモーション
SE009 = playSe( spep_0 + 192, 1264 );
setSeVolumeByWorkId( spep_0 + 192, SE009, 3 );
setSeVolumeByWorkId( spep_0 + 196, SE009, 7 );
setSeVolumeByWorkId( spep_0 + 200, SE009, 13 );
setSeVolumeByWorkId( spep_0 + 204, SE009, 23 );
setSeVolumeByWorkId( spep_0 + 208, SE009, 33 );
setSeVolumeByWorkId( spep_0 + 212, SE009, 43 );
setSeVolumeByWorkId( spep_0 + 216, SE009, 53 );
setSeVolumeByWorkId( spep_0 + 220, SE009, 63 );
stopSe( spep_0 + 340, SE009, 16 );
setStartTimeMs( SE009,  583 );
setBandpassFilter( spep_0 + 192, SE009, 3000, 24000 );

--スローモーション
SE010 = playSe( spep_0 + 192, 1227 );
setSeVolumeByWorkId( spep_0 + 192, SE010, 49 );
stopSe( spep_0 + 340, SE010, 16 );

--スローモーション
SE011 = playSe( spep_0 + 192, 1157 );

--スローモーション
SE012 = playSe( spep_0 + 240, 1263,"",0.6 );
setSeVolumeByWorkId( spep_0 + 240, SE012, 84 );
stopSe( spep_0 + 340, SE012, 16 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 400, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 328 ; --エンドフェイズのフレーム数を置き換える
    
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止    

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE006, 0);
   
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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 340, 1, 1 );
setDisp( spep_0 -3 + 401, 1, 0 );
changeAnime( spep_0 -3 + 340, 1, 108 );

a1=180;
b1=130;
a2=20;
b2=30;

setMoveKey( spep_0 -3 + 340, 1, 112.1 -a1, 18.9 -b1, 0 );
setMoveKey( spep_0 -3 + 342, 1, 112.1 -a1, 18.9 -b1, 0 );
setMoveKey( spep_0 -3 + 344, 1, 172.1 -a1, 38.9 -b1, 0 );
setMoveKey( spep_0 -3 + 346, 1, 172.1 -a1, 38.9 -b1, 0 );
setMoveKey( spep_0 -3 + 348, 1, 168.1 -a1, 7 -b1, 0 );
setMoveKey( spep_0 -3 + 350, 1, 164.1 -a1, 50.9 -b1, 0 );
setMoveKey( spep_0 -3 + 352, 1, 152.1 -a1, 13 -b1, 0 );
setMoveKey( spep_0 -3 + 353, 1, 152.1 -a1, 13 -b1, 0 );
--
setMoveKey( spep_0 -3 + 354, 1, 80 -a2, -61.9 -b2, 0 );
setMoveKey( spep_0 -3 + 356, 1, 80.4 -a2, -61.5 -b2, 0 );
setMoveKey( spep_0 -3 + 358, 1, 94.8 -a2, -51.1 -b2, 0 );
setMoveKey( spep_0 -3 + 360, 1, 91.2 -a2, -66.7 -b2, 0 );
setMoveKey( spep_0 -3 + 362, 1, 87.6 -a2, -42.2 -b2, 0 );
setMoveKey( spep_0 -3 + 364, 1, 82 -a2, -65.8 -b2, 0 );
setMoveKey( spep_0 -3 + 366, 1, 82.5 -a2, -65.4 -b2, 0 );
setMoveKey( spep_0 -3 + 368, 1, 86.9 -a2, -43 -b2, 0 );
setMoveKey( spep_0 -3 + 370, 1, 89.3 -a2, -64.6 -b2, 0 );
setMoveKey( spep_0 -3 + 372, 1, 95.7 -a2, -42.2 -b2, 0 );
setMoveKey( spep_0 -3 + 374, 1, 126.6 -a2, -20.2 -b2, 0 );
setMoveKey( spep_0 -3 + 376, 1, 142.4 -a2, -8.9 -b2, 0 );
setMoveKey( spep_0 -3 + 378, 1, 146.9 -a2, 6.6 -b2, 0 );
setMoveKey( spep_0 -3 + 380, 1, 154.6 -a2, -3.8 -b2, 0 );
setMoveKey( spep_0 -3 + 382, 1, 160.6 -a2, 12.5 -b2, 0 );
setMoveKey( spep_0 -3 + 384, 1, 175.3 -a2, 3.8 -b2, 0 );
setMoveKey( spep_0 -3 + 386, 1, 179 -a2, 6.5 -b2, 0 );
setMoveKey( spep_0 -3 + 388, 1, 171.9 -a2, 36.6 -b2, 0 );
setMoveKey( spep_0 -3 + 390, 1, 180.2 -a2, 12.2 -b2, 0 );
setMoveKey( spep_0 -3 + 392, 1, 181.9 -a2, 39.4 -b2, 0 );
setMoveKey( spep_0 -3 + 394, 1, 189.1 -a2, 10.3 -b2, 0 );
setMoveKey( spep_0 -3 + 396, 1, 190 -a2, 10.9 -b2, 0 );
setMoveKey( spep_0 -3 + 398, 1, 180.4 -a2, 23.3 -b2, 0 );
setMoveKey( spep_0 -3 + 400, 1, 188.6 -a2, 15.4 -b2, 0 );
setMoveKey( spep_0 -3 + 401, 1, 188.6 -a2, 15.4 -b2, 0 );

s1=0.4;

setScaleKey( spep_0 -3 + 340, 1, 22, 22 );
setScaleKey( spep_0 -3 + 353, 1, 22, 22 );
setScaleKey( spep_0 -3 + 354, 1, 2.6 +s1, 2.6 +s1 );
setScaleKey( spep_0 -3 + 396, 1, 2.6 +s1, 2.6 +s1 );
setScaleKey( spep_0 -3 + 401, 1, 2.6 +s1, 2.6 +s1 );

setRotateKey( spep_0 -3 + 340, 1, 0 );
setRotateKey( spep_0 -3 + 354, 1, 0 );
setRotateKey( spep_0 -3 + 372, 1, 0 );
setRotateKey( spep_0 -3 + 374, 1, -2 );
setRotateKey( spep_0 -3 + 376, 1, -2.8 );
setRotateKey( spep_0 -3 + 378, 1, -3.4 );
setRotateKey( spep_0 -3 + 380, 1, -3.8 );
setRotateKey( spep_0 -3 + 382, 1, -4.1 );
setRotateKey( spep_0 -3 + 384, 1, -4.3 );
setRotateKey( spep_0 -3 + 386, 1, -4.5 );
setRotateKey( spep_0 -3 + 388, 1, -4.7 );
setRotateKey( spep_0 -3 + 390, 1, -4.8 );
setRotateKey( spep_0 -3 + 392, 1, -4.9 );
setRotateKey( spep_0 -3 + 394, 1, -4.9 );
setRotateKey( spep_0 -3 + 396, 1, -5 );
setRotateKey( spep_0 -3 + 401, 1, -5 );


-- ** 音 ** --
--パンチ振りかぶる
SE013 = playSe( spep_0 + 320, 44 );
stopSe( spep_0 + 348, SE013, 6 );
--setBandpassFilter( spep_0 + 320, SE013, 3000, 24000 );
setPitch( spep_0 + 320, SE013, -400 );
setTimeStretch( SE013, 0.73, 10, 1 );

--パンチ振りかぶる
SE014 = playSe( spep_0 + 324, 1004 );
setSeVolumeByWorkId( spep_0 + 324, SE014, 68 );

--ボディブロー
SE015 = playSe( spep_0 + 336, 1155,"",0.5 );
stopSe( spep_0 + 346, SE015, 20 );

--ボディブロー    
SE016 = playSe( spep_0 + 338, 1187 );
setSeVolumeByWorkId( spep_0 + 338, SE016, 67 );
stopSe( spep_0 +398, SE016, 0 );

--ボディブロー
SE017 = playSe( spep_0 + 338, 1258 );
setSeVolumeByWorkId( spep_0 + 338, SE017, 77 );
stopSe( spep_0 + 362, SE017, 36 );

--ボディブロー
SE018 = playSe( spep_0 + 340, 1190 );
stopSe( spep_0 +398, SE018, 0 );

--ボディブロー
SE019 = playSe( spep_0 + 340, 1114 );
setSeVolumeByWorkId( spep_0 + 340, SE019, 87 );
stopSe( spep_0 +398, SE019, 0 );

-- ** 次の準備 ** --
spep_c = spep_0 + 398;


------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------

-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_c, SE_05);
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
--右向きラッシュ
SE021 = playSe( spep_c + 84, 1189 );

--右向きラッシュ
SE022 = playSe( spep_c + 90, 1187 );
setSeVolumeByWorkId( spep_c + 90, SE022, 63 );
stopSe( spep_c + 94 + 4, SE022, 20 );

--右向きラッシュ
SE023 = playSe( spep_c + 90, 1009 );
setSeVolumeByWorkId( spep_c + 90, SE023, 78 );
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_c + 94;

------------------------------------------------------
-- ラッシュ〜敵が転がって岩に激突(574F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ラッシュ〜敵が転がって岩に激突 前面(ef_003)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 574, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 574, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 574, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 574, finish_f, 255 );
--[[
finish_b = entryEffect( spep_2 + 0 -f, SP_04, 0x80, -1, 0, 0, 0 );  --ラッシュ〜敵が転がって岩に激突 背面(ef_004)
setEffMoveKey( spep_2 + 0 -f, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 574, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0 -f, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 574, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0 -f, finish_b, 0 );
setEffRotateKey( spep_2 + 574, finish_b, 0 );
setEffAlphaKey( spep_2 + 0 -f, finish_b, 255 );
setEffAlphaKey( spep_2 + 574, finish_b, 255 );
]]
spep_x = spep_2 + 178;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 142, 1, 1 );
setDisp( spep_2 -3 + 190, 1, 0 );
setDisp( spep_2 -3 + 288, 1, 1 );
setDisp( spep_2 -3 + 526, 1, 0 );
changeAnime( spep_2 -3 + 142, 1, 7 );
changeAnime( spep_2 -3 + 148, 1, 107 );
changeAnime( spep_2 -3 + 156, 1, 7 );
changeAnime( spep_2 -3 + 164, 1, 107 );
changeAnime( spep_2 -3 + 174, 1, 7 );
changeAnime( spep_2 -3 + 182, 1, 107 );
changeAnime( spep_2 -3 + 186, 1, 107 );
changeAnime( spep_2 -3 + 288, 1, 5 );
changeAnime( spep_2 -3 + 384, 1, 108 );
changeAnime( spep_2 -3 + 476, 1, 105 );
changeAnime( spep_2 -3 + 480, 1, 6 );
changeAnime( spep_2 -3 + 486, 1, 8 );
changeAnime( spep_2 -3 + 520, 1, 106 );
changeAnime( spep_2 -3 + 524, 1, 108 );

a3=0;
b3=300;

setMoveKey( spep_2 -3 + 142, 1, -34.5, -245.5 +b3, 0 );
setMoveKey( spep_2 -3 + 144, 1, -34.5, -245.5 +b3, 0 );
setMoveKey( spep_2 -3 + 146, 1, -46.3 +a3, -349.3 +b3, 0 );
setMoveKey( spep_2 -3 + 148, 1, 70.3 +a3, -370.3 +b3, 0 );
setMoveKey( spep_2 -3 + 150, 1, 74.3 +a3, -376.3 +b3, 0 );
setMoveKey( spep_2 -3 + 152, 1, 70.3 +a3, -370.2 +b3, 0 );
setMoveKey( spep_2 -3 + 154, 1, 70.3 +a3, -374.2 +b3, 0 );
setMoveKey( spep_2 -3 + 156, 1, -46.3 +a3, -349.3 +b3, 0 );
setMoveKey( spep_2 -3 + 158, 1, -46.4 +a3, -309.6 +b3, 0 );
setMoveKey( spep_2 -3 + 160, 1, -40.4 +a3, -319.6 +b3, 0 );
setMoveKey( spep_2 -3 + 162, 1, -86.4 +a3, -309.6 +b3, 0 );
setMoveKey( spep_2 -3 + 164, 1, -193.9 +a3, -342.4 +b3, 0 );
setMoveKey( spep_2 -3 + 166, 1, -189.9 +a3, -356.4 +b3, 0 );
setMoveKey( spep_2 -3 + 168, 1, 70.3 +a3, -370.3 +b3, 0 );
setMoveKey( spep_2 -3 + 170, 1, 70.3 +a3, -370.2 +b3, 0 );
setMoveKey( spep_2 -3 + 172, 1, 70.3 +a3, -370.2 +b3, 0 );
setMoveKey( spep_2 -3 + 174, 1, -46.3 +a3, -349.3 +b3, 0 );
setMoveKey( spep_2 -3 + 176, 1, -46.4 +a3, -309.6 +b3, 0 );
setMoveKey( spep_2 -3 + 178, 1, -44.4 +a3, -321.6 +b3, 0 );
setMoveKey( spep_2 -3 + 180, 1, -86.4 +a3, -309.6 +b3, 0 );
setMoveKey( spep_2 -3 + 182, 1, -193.9 +a3, -342.4 +b3, 0 );
setMoveKey( spep_2 -3 + 184, 1, -183.9 +a3, -368.4 +b3, 0 );
setMoveKey( spep_2 -3 + 186, 1, 70.3 +a3, -370.3 +b3, 0 );
setMoveKey( spep_2 -3 + 190, 1, 70.3 +a3, -370.3 +b3, 0 );

setMoveKey( spep_2 -3 + 288, 1, -13, 286.7 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 18.7, 244.5 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 50.4, 192.5 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 82.1, 150.6 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 113.7, 118.8 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 149.4, 73.1 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 145.4, 70.5 , 0 );
setMoveKey( spep_2 -3 + 302, 1, 142, 63.7 , 0 );
setMoveKey( spep_2 -3 + 304, 1, 138, 57.2 , 0 );
setMoveKey( spep_2 -3 + 306, 1, 134.2, 51.4 , 0 );
setMoveKey( spep_2 -3 + 308, 1, 130.7, 46.3 , 0 );
setMoveKey( spep_2 -3 + 310, 1, 127.6, 41.8 , 0 );
setMoveKey( spep_2 -3 + 312, 1, 125.1, 38 , 0 );
setMoveKey( spep_2 -3 + 314, 1, 123.3, 35 , 0 );
setMoveKey( spep_2 -3 + 316, 1, 122, 32.7 , 0 );
setMoveKey( spep_2 -3 + 318, 1, 121.5, 31.1 , 0 );
setMoveKey( spep_2 -3 + 320, 1, 121.6, 30.3 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 122.4, 30.2 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 123.6, 30.5 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 124.6, 30.8 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 125.6, 31 , 0 );
setMoveKey( spep_2 -3 + 330, 1, 126.5, 31.3 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 127.4, 31.5 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 128.2, 31.7 , 0 );
setMoveKey( spep_2 -3 + 336, 1, 128.9, 31.9 , 0 );
setMoveKey( spep_2 -3 + 338, 1, 129.6, 32 , 0 );
setMoveKey( spep_2 -3 + 340, 1, 130.3, 32.2 , 0 );
setMoveKey( spep_2 -3 + 342, 1, 130.9, 32.4 , 0 );
setMoveKey( spep_2 -3 + 344, 1, 131.4, 32.5 , 0 );
setMoveKey( spep_2 -3 + 346, 1, 131.9, 32.6 , 0 );
setMoveKey( spep_2 -3 + 348, 1, 132.4, 32.8 , 0 );
setMoveKey( spep_2 -3 + 350, 1, 132.9, 32.9 , 0 );
setMoveKey( spep_2 -3 + 352, 1, 133.3, 33 , 0 );
setMoveKey( spep_2 -3 + 354, 1, 133.7, 33.1 , 0 );
setMoveKey( spep_2 -3 + 356, 1, 134, 33.2 , 0 );
setMoveKey( spep_2 -3 + 358, 1, 134.3, 33.2 , 0 );
setMoveKey( spep_2 -3 + 360, 1, 134.6, 33.3 , 0 );
setMoveKey( spep_2 -3 + 362, 1, 134.9, 33.4 , 0 );
setMoveKey( spep_2 -3 + 364, 1, 135.1, 33.4 , 0 );
setMoveKey( spep_2 -3 + 366, 1, 135.3, 33.5 , 0 );
setMoveKey( spep_2 -3 + 368, 1, 120.5, 31.3 , 0 );
setMoveKey( spep_2 -3 + 370, 1, 106.5, 29.1 , 0 );
setMoveKey( spep_2 -3 + 372, 1, 93.4, 27.1 , 0 );
setMoveKey( spep_2 -3 + 374, 1, 81, 25.3 , 0 );
setMoveKey( spep_2 -3 + 376, 1, 69.5, 23.5 , 0 );
setMoveKey( spep_2 -3 + 378, 1, 58.8, 21.9 , 0 );
setMoveKey( spep_2 -3 + 380, 1, 58.9, 21.9 , 0 );
setMoveKey( spep_2 -3 + 383, 1, 58.9, 21.9 , 0 );

a4=50;
b4=100;
setMoveKey( spep_2 -3 + 384, 1, 25.5 -a4, 88 -b4 , 0 );
setMoveKey( spep_2 -3 + 388, 1, 25.5 -a4, 88 -b4 , 0 );
setMoveKey( spep_2 -3 + 390, 1, 213.5-a4, 88 -b4 , 0 );
setMoveKey( spep_2 -3 + 392, 1, 213.5-a4, 88 -b4 , 0 );
setMoveKey( spep_2 -3 + 394, 1, 209.5-a4, 48 -b4 , 0 );
setMoveKey( spep_2 -3 + 396, 1, 201.5-a4, 106 -b4 , 0 );
setMoveKey( spep_2 -3 + 398, 1, 177.5-a4, 44 -b4 , 0 );
setMoveKey( spep_2 -3 + 400, 1, 177.5-a4, 44 -b4 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 189.5-a4, 98 -b4 , 0 );
setMoveKey( spep_2 -3 + 404, 1, 187.5-a4, 44 -b4 , 0 );
setMoveKey( spep_2 -3 + 406, 1, 201.5-a4, 90 -b4 , 0 );
setMoveKey( spep_2 -3 + 408, 1, 175.5-a4, 76 -b4 , 0 );
setMoveKey( spep_2 -3 + 409, 1, 175.5-a4, 76 -b4 , 0 );

a5=20;
b5=50;
setMoveKey( spep_2 -3 + 410, 1, 160.4 -a5, -44.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 412, 1, 198.4 -a5, -32.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 414, 1, 198.4 -a5, 7.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 416, 1, 194.4 -a5, -30.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 194.4 -a5, 5.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 420, 1, 194.4 -a5, 5.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 422, 1, 194.4 -a5, -24.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 424, 1, 214.4 -a5, 3.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 426, 1, 198.4 -a5, -4.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 428, 1, 186.4 -a5, 11.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 430, 1, 186.4 -a5, 11.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 432, 1, 190.4 -a5, -18.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 434, 1, 196.4 -a5, -2.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 436, 1, 206.4 -a5, -20.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 438, 1, 194.4 -a5, 21.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 440, 1, 194.4 -a5, 21.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 442, 1, 200.4 -a5, -14.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 444, 1, 200.4 -a5, 29.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 445, 1, 200.4 -a5, 29.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 446, 1, 214.4 -a5, -26.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 448, 1, 198.4 -a5, -0.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 450, 1, 198.4 -a5, -0.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 452, 1, 214.4 -a5, -20.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 454, 1, 200.4 -a5, 23.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 455, 1, 200.4 -a5, 23.5 -b5 , 0 );

b6=40;
setMoveKey( spep_2 -3 + 456, 1, -838.2, -676.3 , 0 );
setMoveKey( spep_2 -3 + 458, 1, -584, -483 , 0 );
setMoveKey( spep_2 -3 + 460, 1, -375, -325.1 , 0 );
setMoveKey( spep_2 -3 + 462, 1, -217.1, -202.4 , 0 );
setMoveKey( spep_2 -3 + 464, 1, -110.3, -115.1 , 0 );
setMoveKey( spep_2 -3 + 466, 1, -54.5, -63 , 0 );
setMoveKey( spep_2 -3 + 468, 1, -49.8, -46.1 , 0 );
setMoveKey( spep_2 -3 + 470, 1, -0.8, -66.3 , 0 );
setMoveKey( spep_2 -3 + 472, 1, 33.5, -55.5 , 0 );
setMoveKey( spep_2 -3 + 474, 1, 68.5, -32.7 , 0 );
setMoveKey( spep_2 -3 + 476, 1, 38.8, -85.9 +b6 , 0 );
setMoveKey( spep_2 -3 + 478, 1, 80.9, -70.5 +b6 , 0 );
setMoveKey( spep_2 -3 + 480, 1, 95.4, 44.7 , 0 );
setMoveKey( spep_2 -3 + 482, 1, 101, 40 , 0 );
setMoveKey( spep_2 -3 + 484, 1, 102, 72.3 , 0 );
setMoveKey( spep_2 -3 + 486, 1, 139.1, 75.2 , 0 );
setMoveKey( spep_2 -3 + 488, 1, 146.9, 99.5 , 0 );
setMoveKey( spep_2 -3 + 490, 1, 155.3, 94.3 , 0 );
setMoveKey( spep_2 -3 + 492, 1, 158.2, 118.8 , 0 );
setMoveKey( spep_2 -3 + 494, 1, 155.9, 113.8 , 0 );
setMoveKey( spep_2 -3 + 496, 1, 148.2, 114.9 , 0 );
setMoveKey( spep_2 -3 + 498, 1, 142.4, 89.3 , 0 );
setMoveKey( spep_2 -3 + 500, 1, 137.3, 40.2 , 0 );
setMoveKey( spep_2 -3 + 502, 1, 133, 17.7 , 0 );
setMoveKey( spep_2 -3 + 504, 1, 129.9, 3.5 , 0 );
setMoveKey( spep_2 -3 + 506, 1, 127.1, 13.2 , 0 );
setMoveKey( spep_2 -3 + 508, 1, 130, 2.4 , 0 );
setMoveKey( spep_2 -3 + 510, 1, 127.7, 15.4 , 0 );
setMoveKey( spep_2 -3 + 512, 1, 125.7, -3.8 , 0 );
setMoveKey( spep_2 -3 + 514, 1, 124.2, 3.6 , 0 );
setMoveKey( spep_2 -3 + 516, 1, 123, 11.3 , 0 );
setMoveKey( spep_2 -3 + 518, 1, 122.3, -10.3 , 0 );
setMoveKey( spep_2 -3 + 520, 1, 137.7, 68.6 , 0 );
setMoveKey( spep_2 -3 + 522, 1, 148.2, 56.7 , 0 );
setMoveKey( spep_2 -3 + 524, 1, 176.3, 80.5 , 0 );
setMoveKey( spep_2 -3 + 526, 1, 176.3, 80.5 , 0 );

s2=0.2;
setScaleKey( spep_2 -3 + 142, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_2 -3 + 144, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_2 -3 + 146, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 147, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 148, 1, 2 +s2, 2 +s2);
setScaleKey( spep_2 -3 + 150, 1, 2 +s2, 2 +s2);
setScaleKey( spep_2 -3 + 152, 1, 2.2 +s2, 2.2 +s2 );
setScaleKey( spep_2 -3 + 154, 1, 2.2 +s2, 2.2 +s2 );
setScaleKey( spep_2 -3 + 155, 1, 2.2 +s2, 2.2 +s2 );
setScaleKey( spep_2 -3 + 156, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 160, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 162, 1, 2.2 +s2, 2.2 +s2 );
setScaleKey( spep_2 -3 + 163, 1, 2.2 +s2, 2.2 +s2 );
setScaleKey( spep_2 -3 + 164, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 166, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 168, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_2 -3 + 170, 1, 2.2 +s2, 2.2 +s2 );
setScaleKey( spep_2 -3 + 172, 1, 2.2 +s2, 2.2 +s2 );
setScaleKey( spep_2 -3 + 173, 1, 2.2 +s2, 2.2 +s2 );
setScaleKey( spep_2 -3 + 174, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 178, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 180, 1, 2.2 +s2, 2.2 +s2 );
setScaleKey( spep_2 -3 + 181, 1, 2.2 +s2, 2.2 +s2 );
setScaleKey( spep_2 -3 + 182, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 184, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 186, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_2 -3 + 190, 1, 2 +s2, 2 +s2 );

setScaleKey( spep_2 -3 + 288, 1, 8, 8 );
setScaleKey( spep_2 -3 + 290, 1, 6.7, 6.7 );
setScaleKey( spep_2 -3 + 292, 1, 5.4, 5.4 );
setScaleKey( spep_2 -3 + 294, 1, 4.1, 4.1 );
setScaleKey( spep_2 -3 + 296, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 298, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 300, 1, 1.4, 1.4 );
setScaleKey( spep_2 -3 + 302, 1, 1.35, 1.35 );
setScaleKey( spep_2 -3 + 304, 1, 1.31, 1.31 );
setScaleKey( spep_2 -3 + 306, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 308, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 310, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 312, 1, 1.21, 1.21 );
setScaleKey( spep_2 -3 + 314, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 316, 1, 1.18, 1.18 );
setScaleKey( spep_2 -3 + 318, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 320, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 322, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 324, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 326, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 328, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 330, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 332, 1, 1.09, 1.09 );
setScaleKey( spep_2 -3 + 334, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 336, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 338, 1, 1.06, 1.06 );
setScaleKey( spep_2 -3 + 340, 1, 1.06, 1.06 );
setScaleKey( spep_2 -3 + 342, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 344, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 346, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 348, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 350, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 352, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 354, 1, 1.02, 1.02 );
setScaleKey( spep_2 -3 + 358, 1, 1.02, 1.02 );
setScaleKey( spep_2 -3 + 360, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 366, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 368, 1, 1, 1 );
setScaleKey( spep_2 -3 + 383, 1, 1, 1 );

s3=0.4;
setScaleKey( spep_2 -3 + 384, 1, 15, 15 );
setScaleKey( spep_2 -3 + 409, 1, 15, 15 );
setScaleKey( spep_2 -3 + 410, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_2 -3 + 455, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_2 -3 + 456, 1, 8, 8 );
setScaleKey( spep_2 -3 + 458, 1, 5.95, 5.95 );
setScaleKey( spep_2 -3 + 460, 1, 4.28, 4.28 );
setScaleKey( spep_2 -3 + 462, 1, 2.97, 2.97 );
setScaleKey( spep_2 -3 + 464, 1, 2.04, 2.04 );
setScaleKey( spep_2 -3 + 466, 1, 1.49, 1.49 );
setScaleKey( spep_2 -3 + 468, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 470, 1, 1.22, 1.22 );
setScaleKey( spep_2 -3 + 472, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 474, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 475, 1, 1.05, 1.05 );

s4=0.2;
setScaleKey( spep_2 -3 + 476, 1, 0.58 +s4, 0.58 +s4 );
setScaleKey( spep_2 -3 + 478, 1, 0.53 +s4, 0.53 +s4 );
setScaleKey( spep_2 -3 + 479, 1, 0.53 +s4, 0.53 +s4 );
setScaleKey( spep_2 -3 + 480, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 482, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 484, 1, 0.78, 0.78 );
setScaleKey( spep_2 -3 + 485, 1, 0.78, 0.78 );
setScaleKey( spep_2 -3 + 486, 1, 0.78, 0.78 );
setScaleKey( spep_2 -3 + 488, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 490, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 492, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 494, 1, 0.61, 0.61 );
setScaleKey( spep_2 -3 + 496, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 498, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 500, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 502, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 504, 1, 0.43, 0.43 );
setScaleKey( spep_2 -3 + 506, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 508, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 510, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 512, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 514, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 516, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 518, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 519, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 520, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 526, 1, 0.3, 0.3 );

--r1=40;
r1=20;
setRotateKey( spep_2 -3 + 142, 1, 75 -r1 );
setRotateKey( spep_2 -3 + 144, 1, 75 -r1 );
setRotateKey( spep_2 -3 + 146, 1, 120 -r1 );
setRotateKey( spep_2 -3 + 147, 1, 120 -r1 );
setRotateKey( spep_2 -3 + 148, 1, 284 +r1 );
setRotateKey( spep_2 -3 + 150, 1, 284 +r1 );
setRotateKey( spep_2 -3 + 152, 1, 270 +r1 );
setRotateKey( spep_2 -3 + 154, 1, 270 +r1 );
setRotateKey( spep_2 -3 + 155, 1, 270 +r1 );
setRotateKey( spep_2 -3 + 156, 1, 120 -r1 );
setRotateKey( spep_2 -3 + 158, 1, 90 -r1 );
setRotateKey( spep_2 -3 + 160, 1, 90 -r1 );
setRotateKey( spep_2 -3 + 162, 1, 75 -r1 );
setRotateKey( spep_2 -3 + 163, 1, 75 -r1 );
setRotateKey( spep_2 -3 + 164, 1, -83.4 +r1 );
setRotateKey( spep_2 -3 + 166, 1, -83.4 +r1 );
setRotateKey( spep_2 -3 + 168, 1, -76 +r1 );
setRotateKey( spep_2 -3 + 170, 1, -90 +r1 );
setRotateKey( spep_2 -3 + 172, 1, -90 +r1 );
setRotateKey( spep_2 -3 + 173, 1, -90 +r1 );
setRotateKey( spep_2 -3 + 174, 1, -240 -r1 );
setRotateKey( spep_2 -3 + 176, 1, -270 -r1 );
setRotateKey( spep_2 -3 + 178, 1, -270 -r1 );
setRotateKey( spep_2 -3 + 180, 1, -285 -r1 );
setRotateKey( spep_2 -3 + 181, 1, -285 -r1 );
setRotateKey( spep_2 -3 + 182, 1, -443.4 +r1 );
setRotateKey( spep_2 -3 + 184, 1, -443.4 +r1 );
setRotateKey( spep_2 -3 + 186, 1, -436 +r1 );
setRotateKey( spep_2 -3 + 190, 1, -436 +r1 );

setRotateKey( spep_2 -3 + 288, 1, 15 );
setRotateKey( spep_2 -3 + 290, 1, 16 );
setRotateKey( spep_2 -3 + 292, 1, 17 );
setRotateKey( spep_2 -3 + 294, 1, 18 );
setRotateKey( spep_2 -3 + 296, 1, 19 );
setRotateKey( spep_2 -3 + 298, 1, 20 );
setRotateKey( spep_2 -3 + 300, 1, 21.9 );
setRotateKey( spep_2 -3 + 302, 1, 22.9 );
setRotateKey( spep_2 -3 + 304, 1, 23.6 );
setRotateKey( spep_2 -3 + 306, 1, 24.3 );
setRotateKey( spep_2 -3 + 308, 1, 24.8 );
setRotateKey( spep_2 -3 + 310, 1, 25.2 );
setRotateKey( spep_2 -3 + 312, 1, 25.6 );
setRotateKey( spep_2 -3 + 314, 1, 26 );
setRotateKey( spep_2 -3 + 316, 1, 26.3 );
setRotateKey( spep_2 -3 + 318, 1, 26.6 );
setRotateKey( spep_2 -3 + 320, 1, 26.9 );
setRotateKey( spep_2 -3 + 322, 1, 27.1 );
setRotateKey( spep_2 -3 + 324, 1, 27.3 );
setRotateKey( spep_2 -3 + 326, 1, 27.5 );
setRotateKey( spep_2 -3 + 328, 1, 27.7 );
setRotateKey( spep_2 -3 + 330, 1, 27.9 );
setRotateKey( spep_2 -3 + 332, 1, 28.1 );
setRotateKey( spep_2 -3 + 334, 1, 28.2 );
setRotateKey( spep_2 -3 + 336, 1, 28.4 );
setRotateKey( spep_2 -3 + 338, 1, 28.5 );
setRotateKey( spep_2 -3 + 340, 1, 28.7 );
setRotateKey( spep_2 -3 + 342, 1, 28.8 );
setRotateKey( spep_2 -3 + 344, 1, 28.9 );
setRotateKey( spep_2 -3 + 346, 1, 29 );
setRotateKey( spep_2 -3 + 348, 1, 29.1 );
setRotateKey( spep_2 -3 + 350, 1, 29.2 );
setRotateKey( spep_2 -3 + 352, 1, 29.3 );
setRotateKey( spep_2 -3 + 354, 1, 29.3 );
setRotateKey( spep_2 -3 + 356, 1, 29.4 );
setRotateKey( spep_2 -3 + 358, 1, 29.5 );
setRotateKey( spep_2 -3 + 360, 1, 29.5 );
setRotateKey( spep_2 -3 + 362, 1, 29.6 );
setRotateKey( spep_2 -3 + 364, 1, 29.6 );
setRotateKey( spep_2 -3 + 366, 1, 29.7 );
setRotateKey( spep_2 -3 + 370, 1, 29.7 );
setRotateKey( spep_2 -3 + 372, 1, 29.8 );
setRotateKey( spep_2 -3 + 383, 1, 29.8 );

setRotateKey( spep_2 -3 + 384, 1, 0 );
setRotateKey( spep_2 -3 + 409, 1, 0 );
setRotateKey( spep_2 -3 + 410, 1, -5 );
setRotateKey( spep_2 -3 + 455, 1, -5 );
setRotateKey( spep_2 -3 + 456, 1, 15 );
setRotateKey( spep_2 -3 + 468, 1, 15 );
setRotateKey( spep_2 -3 + 470, 1, 50 );
setRotateKey( spep_2 -3 + 474, 1, 50 );
setRotateKey( spep_2 -3 + 475, 1, 50 );
setRotateKey( spep_2 -3 + 476, 1, 145 );
setRotateKey( spep_2 -3 + 479, 1, 145 );
setRotateKey( spep_2 -3 + 480, 1, 245 );
setRotateKey( spep_2 -3 + 485, 1, 245 );
setRotateKey( spep_2 -3 + 486, 1, 195 );
setRotateKey( spep_2 -3 + 506, 1, 195 );
setRotateKey( spep_2 -3 + 508, 1, 210 );
setRotateKey( spep_2 -3 + 519, 1, 210 );
setRotateKey( spep_2 -3 + 520, 1, 325 );
setRotateKey( spep_2 -3 + 523, 1, 325 );
setRotateKey( spep_2 -3 + 524, 1, 375 );
setRotateKey( spep_2 -3 + 526, 1, 375 );

-- ** 音 ** --
--右向きラッシュ
SE024 = playSe( spep_2 + 8, 1187 );
setSeVolumeByWorkId( spep_2 + 8, SE024, 75 );
stopSe( spep_2 + 16, SE024, 20 );

--右向きラッシュ
SE025 = playSe( spep_2 + 26, 1010 );
setSeVolumeByWorkId( spep_2 + 26, SE025, 72 );

--右向きラッシュ
SE026 = playSe( spep_2 + 26, 1187 );
setSeVolumeByWorkId( spep_2 + 26, SE026, 68 );
stopSe( spep_2 + 34, SE026, 20 );

--右向きラッシュ
SE027 = playSe( spep_2 + 36, 1000 );
setSeVolumeByWorkId( spep_2 + 36, SE027, 78 );

--右向きラッシュ
SE028 = playSe( spep_2 + 36, 1187 );
setSeVolumeByWorkId( spep_2 + 36, SE028, 65 );
stopSe( spep_2 + 44, SE028, 20 );

--右向きラッシュ
SE029 = playSe( spep_2 + 46, 1187 );
setSeVolumeByWorkId( spep_2 + 46, SE029, 69 );
stopSe( spep_2 + 54, SE029, 20 );

--右向きラッシュ
SE030 = playSe( spep_2 + 56, 1009 );
setSeVolumeByWorkId( spep_2 + 56, SE030, 86 );

--右向きラッシュ
SE031 = playSe( spep_2 + 56, 1187 );
setSeVolumeByWorkId( spep_2 + 56, SE031, 68 );
stopSe( spep_2 + 64, SE031, 20 );

--右向きラッシュ
SE032 = playSe( spep_2 + 64, 1187 );
setSeVolumeByWorkId( spep_2 + 64, SE032, 65 );
stopSe( spep_2 + 72, SE032, 20 );

--右向きラッシュ
SE033 = playSe( spep_2 + 64, 1010 );
setSeVolumeByWorkId( spep_2 + 64, SE033, 86 );

--右向きラッシュ
SE034 = playSe( spep_2 + 72, 1187 );
setSeVolumeByWorkId( spep_2 + 72, SE034, 64 );
stopSe( spep_2 + 80, SE034, 20 );

--右向きラッシュ
SE035 = playSe( spep_2 + 84, 1110 );
setSeVolumeByWorkId( spep_2 + 84, SE035, 81 );

--右向きラッシュ
SE036 = playSe( spep_2 + 84, 1187 );
setSeVolumeByWorkId( spep_2 + 84, SE036, 74 );
stopSe( spep_2 + 92, SE036, 20 );

--右向きラッシュ
SE037 = playSe( spep_2 + 94, 1009 );
setSeVolumeByWorkId( spep_2 + 94, SE037, 82 );

--右向きラッシュ
SE038 = playSe( spep_2 + 94, 1187 );
setSeVolumeByWorkId( spep_2 + 94, SE038, 69 );
stopSe( spep_2 + 102, SE038, 20 );

--右向きラッシュ
SE039 = playSe( spep_2 + 104, 1009 );
setSeVolumeByWorkId( spep_2 + 104, SE039, 87 );

--右向きラッシュ
SE040 = playSe( spep_2 + 104, 1187 );
setSeVolumeByWorkId( spep_2 + 104, SE040, 73 );
stopSe( spep_2 + 112, SE040, 20 );

--右向きラッシュ
SE041 = playSe( spep_2 + 114, 1010 );
setSeVolumeByWorkId( spep_2 + 114, SE041, 87 );

--右向きラッシュ
SE042 = playSe( spep_2 + 114, 1187 );
setSeVolumeByWorkId( spep_2 + 114, SE042, 69 );
stopSe( spep_2 + 122, SE042, 20 );

--右向きラッシュ
SE043 = playSe( spep_2 + 124, 1000 );
setSeVolumeByWorkId( spep_2 + 124, SE043, 82 );

--右向きラッシュ
SE044 = playSe( spep_2 + 124, 1187 );
setSeVolumeByWorkId( spep_2 + 124, SE044, 71 );
stopSe( spep_2 + 132, SE044, 20 );

--FPSラッシュ
SE045 = playSe( spep_2 + 136, 1110 );
setSeVolumeByWorkId( spep_2 + 136, SE045, 76 );

--FPSラッシュ
SE046 = playSe( spep_2 + 136, 1187 );
setSeVolumeByWorkId( spep_2 + 136, SE046, 72 );
stopSe( spep_2 + 144, SE046, 20 );

--FPSラッシュ
SE047 = playSe( spep_2 + 150, 1009 );
setSeVolumeByWorkId( spep_2 + 150, SE047, 87 );

--FPSラッシュ
SE048 = playSe( spep_2 + 150, 1187 );
setSeVolumeByWorkId( spep_2 + 150, SE048, 74 );
stopSe( spep_2 + 158, SE048, 20 );

--FPSラッシュ
SE049 = playSe( spep_2 + 162, 1187 );
setSeVolumeByWorkId( spep_2 + 162, SE049, 68 );
stopSe( spep_2 + 170, SE049, 20 );

--FPSラッシュ
SE050 = playSe( spep_2 + 162, 1010 );
setSeVolumeByWorkId( spep_2 + 162, SE050, 73 );

--FPSラッシュ
SE051 = playSe( spep_2 + 172, 1187 );
setSeVolumeByWorkId( spep_2 + 172, SE051, 65 );
stopSe( spep_2 + 180, SE051, 20 );

--FPSラッシュ
SE052 = playSe( spep_2 + 180, 1110 );
setSeVolumeByWorkId( spep_2 + 180, SE052, 79 );

--FPSラッシュ
SE053 = playSe( spep_2 + 180, 1187 );
setSeVolumeByWorkId( spep_2 + 180, SE053, 58 );
stopSe( spep_2 + 188, SE053, 20 );

--顔カットイン
SE054 = playSe( spep_2 + 184, 1018 );

--正面ラッシュ
SE055 = playSe( spep_2 + 186, 1187 );
setSeVolumeByWorkId( spep_2 + 186, SE055, 54 );
stopSe( spep_2 + 196, SE055, 20 );

--正面ラッシュ
SE056 = playSe( spep_2 + 198, 1110 );
setSeVolumeByWorkId( spep_2 + 198, SE056, 78 );

--正面ラッシュ
SE057 = playSe( spep_2 + 198, 1187 );
setSeVolumeByWorkId( spep_2 + 198, SE057, 71 );
stopSe( spep_2 + 206, SE057, 20 );

--正面ラッシュ
SE058 = playSe( spep_2 + 206, 1009 );
setSeVolumeByWorkId( spep_2 + 206, SE058, 91 );

--正面ラッシュ
SE059 = playSe( spep_2 + 206, 1187 );
setSeVolumeByWorkId( spep_2 + 206, SE059, 59 );
stopSe( spep_2 + 214, SE059, 20 );

--正面ラッシュ
SE060 = playSe( spep_2 + 216, 1187 );
setSeVolumeByWorkId( spep_2 + 216, SE060, 61 );
stopSe( spep_2 + 224, SE060, 20 );

--正面ラッシュ
SE061 = playSe( spep_2 + 226, 1110 );
setSeVolumeByWorkId( spep_2 + 226, SE061, 94 );

--正面ラッシュ
SE062 = playSe( spep_2 + 226, 1187 );
setSeVolumeByWorkId( spep_2 + 226, SE062, 60 );
stopSe( spep_2 + 234, SE062, 20 );

--正面ラッシュ
SE063 = playSe( spep_2 + 236, 1001 );
setSeVolumeByWorkId( spep_2 + 236, SE063, 67 );

--正面ラッシュ
SE064 = playSe( spep_2 + 236, 1187 );
setSeVolumeByWorkId( spep_2 + 236, SE064, 79 );
stopSe( spep_2 + 244, SE064, 20 );

--正面ラッシュ
SE065 = playSe( spep_2 + 248, 1187 );
setSeVolumeByWorkId( spep_2 + 248, SE065, 79 );
stopSe( spep_2 + 256, SE065, 20 );

--ラスト一撃
SE066 = playSe( spep_2 + 260, 1120 );
setSeVolumeByWorkId( spep_2 + 260, SE066, 79 );

--ラスト一撃
SE067 = playSe( spep_2 + 260, 1187 );
setSeVolumeByWorkId( spep_2 + 260, SE067, 79 );
stopSe( spep_2 + 266, SE067, 48 );

--敵後ずさる
SE068 = playSe( spep_2 + 276, 1044 );
setSeVolumeByWorkId( spep_2 + 276, SE068, 65 );
stopSe( spep_2 + 312, SE068, 44 );

--瞬間移動
SE069 = playSe( spep_2 + 342, 1109 );

--ラストキック
SE070 = playSe( spep_2 + 378, 1004 );

--ラストキック
SE071 = playSe( spep_2 + 386, 1187 );
setSeVolumeByWorkId( spep_2 + 386, SE071, 80 );

--ラストキック
SE072 = playSe( spep_2 + 386, 1258 );
setSeVolumeByWorkId( spep_2 + 386, SE072, 45 );
stopSe( spep_2 + 412, SE072, 74 );

--ラストキック
SE073 = playSe( spep_2 + 386, 1123 );
setSeVolumeByWorkId( spep_2 + 386, SE073, 68 );

--ラストキック
SE074 = playSe( spep_2 + 388, 1190 );

--敵地面を転がる
SE075 = playSe( spep_2 + 454, 1116 );
setSeVolumeByWorkId( spep_2 + 454, SE075, 126 );
stopSe( spep_2 + 476, SE075, 18 );

--敵地面を転がる
SE076 = playSe( spep_2 + 458, 1192 );
setSeVolumeByWorkId( spep_2 + 458, SE076, 316 );

--敵地面を転がる
SE077 = playSe( spep_2 + 460, 1044 );
setSeVolumeByWorkId( spep_2 + 460, SE077, 47 );
stopSe( spep_2 + 522, SE077, 12 );

--敵地面を転がる
SE078 = playSe( spep_2 + 474, 1027 );
setSeVolumeByWorkId( spep_2 + 474, SE078, 56 );

--敵地面を転がる
SE079 = playSe( spep_2 + 494, 1192 );
setSeVolumeByWorkId( spep_2 + 494, SE079, 316 );

--岩にドーン
SE080 = playSe( spep_2 + 518, 1023 );
setSeVolumeByWorkId( spep_2 + 518, SE080, 72 );

--岩にドーン
SE081 = playSe( spep_2 + 518, 1033 );
setSeVolumeByWorkId( spep_2 + 518, SE081, 69 ); 

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 574, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 464 );
endPhase( spep_2 + 564 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- ベジータ気ダメ〜敵の腹にパンチ(398F)
------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --ベジータ気ダメ〜敵の腹にパンチ 前面(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 398, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 398, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 398, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 398, first_f, 255 );
--[[
first_b = entryEffect( spep_0 + 0, SP_02r, 0x80, -1, 0, 0, 0 );  --ベジータ気ダメ〜敵の腹にパンチ 背面(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 398, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 398, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 398, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 398, first_b, 255 );
]]
-- ** 音 ** --
--気ダメ
SE001 = playSe( spep_0 + 30, 1261 );
setSeVolumeByWorkId( spep_0 + 30, SE001, 158 );

--気ダメ
SE002 = playSe( spep_0 + 32, 1298 );

--気ダメ
SE003 = playSe( spep_0 + 34, 1035 );

--気ダメ
SE004 = playSe( spep_0 + 34, 1024 );
setSeVolumeByWorkId( spep_0 + 34, SE004, 72 );

--環境音
SE005 = playSe( spep_0 + 46, 1181 );
setSeVolumeByWorkId( spep_0 + 46, SE005, 126 );
stopSe( spep_0 + 348, SE005, 24 );

--ダッシュ
SE006 = playSe( spep_0 + 76, 1182 );

--ダッシュ
SE007 = playSe( spep_0 + 76, 1314 );
setSeVolumeByWorkId( spep_0 + 76, SE007, 79 );
stopSe( spep_0 + 188, SE007, 26 );

--ダッシュ
SE008 = playSe( spep_0 + 76, 1183 );
stopSe( spep_0 + 188, SE008, 26 );

--スローモーション
SE009 = playSe( spep_0 + 192, 1264 );
setSeVolumeByWorkId( spep_0 + 192, SE009, 3 );
setSeVolumeByWorkId( spep_0 + 196, SE009, 7 );
setSeVolumeByWorkId( spep_0 + 200, SE009, 13 );
setSeVolumeByWorkId( spep_0 + 204, SE009, 23 );
setSeVolumeByWorkId( spep_0 + 208, SE009, 33 );
setSeVolumeByWorkId( spep_0 + 212, SE009, 43 );
setSeVolumeByWorkId( spep_0 + 216, SE009, 53 );
setSeVolumeByWorkId( spep_0 + 220, SE009, 63 );
stopSe( spep_0 + 340, SE009, 16 );
setStartTimeMs( SE009,  583 );
setBandpassFilter( spep_0 + 192, SE009, 3000, 24000 );

--スローモーション
SE010 = playSe( spep_0 + 192, 1227 );
setSeVolumeByWorkId( spep_0 + 192, SE010, 49 );
stopSe( spep_0 + 340, SE010, 16 );

--スローモーション
SE011 = playSe( spep_0 + 192, 1157 );

--スローモーション
SE012 = playSe( spep_0 + 240, 1263,"",0.6 );
setSeVolumeByWorkId( spep_0 + 240, SE012, 84 );
stopSe( spep_0 + 340, SE012, 16 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 400, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 328 ; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止    
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE006, 0);
   
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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 340, 1, 1 );
setDisp( spep_0 -3 + 401, 1, 0 );
changeAnime( spep_0 -3 + 340, 1, 8 );

a1=180;
b1=130;
a2=20;
b2=30;

setMoveKey( spep_0 -3 + 340, 1, -112.1 -a1, 18.9 -b1, 0 );
setMoveKey( spep_0 -3 + 342, 1, -112.1 -a1, 18.9 -b1, 0 );
setMoveKey( spep_0 -3 + 344, 1, -172.1 -a1, 38.9 -b1, 0 );
setMoveKey( spep_0 -3 + 346, 1, -172.1 -a1, 38.9 -b1, 0 );
setMoveKey( spep_0 -3 + 348, 1, -168.1 -a1, 7 -b1, 0 );
setMoveKey( spep_0 -3 + 350, 1, -164.1 -a1, 50.9 -b1, 0 );
setMoveKey( spep_0 -3 + 352, 1, -152.1 -a1, 13 -b1, 0 );
setMoveKey( spep_0 -3 + 353, 1, -152.1 -a1, 13 -b1, 0 );
--
setMoveKey( spep_0 -3 + 354, 1, -80 -a2, -61.9 -b2, 0 );
setMoveKey( spep_0 -3 + 356, 1, -80.4 -a2, -61.5 -b2, 0 );
setMoveKey( spep_0 -3 + 358, 1, -94.8 -a2, -51.1 -b2, 0 );
setMoveKey( spep_0 -3 + 360, 1, -91.2 -a2, -66.7 -b2, 0 );
setMoveKey( spep_0 -3 + 362, 1, -87.6 -a2, -42.2 -b2, 0 );
setMoveKey( spep_0 -3 + 364, 1, -82 -a2, -65.8 -b2, 0 );
setMoveKey( spep_0 -3 + 366, 1, -82.5 -a2, -65.4 -b2, 0 );
setMoveKey( spep_0 -3 + 368, 1, -86.9 -a2, -43 -b2, 0 );
setMoveKey( spep_0 -3 + 370, 1, -89.3 -a2, -64.6 -b2, 0 );
setMoveKey( spep_0 -3 + 372, 1, -95.7 -a2, -42.2 -b2, 0 );
setMoveKey( spep_0 -3 + 374, 1, -126.6 -a2, -20.2 -b2, 0 );
setMoveKey( spep_0 -3 + 376, 1, -142.4 -a2, -8.9 -b2, 0 );
setMoveKey( spep_0 -3 + 378, 1, -146.9 -a2, 6.6 -b2, 0 );
setMoveKey( spep_0 -3 + 380, 1, -154.6 -a2, -3.8 -b2, 0 );
setMoveKey( spep_0 -3 + 382, 1, -160.6 -a2, 12.5 -b2, 0 );
setMoveKey( spep_0 -3 + 384, 1, -175.3 -a2, 3.8 -b2, 0 );
setMoveKey( spep_0 -3 + 386, 1, -179 -a2, 6.5 -b2, 0 );
setMoveKey( spep_0 -3 + 388, 1, -171.9 -a2, 36.6 -b2, 0 );
setMoveKey( spep_0 -3 + 390, 1, -180.2 -a2, 12.2 -b2, 0 );
setMoveKey( spep_0 -3 + 392, 1, -181.9 -a2, 39.4 -b2, 0 );
setMoveKey( spep_0 -3 + 394, 1, -189.1 -a2, 10.3 -b2, 0 );
setMoveKey( spep_0 -3 + 396, 1, -190 -a2, 10.9 -b2, 0 );
setMoveKey( spep_0 -3 + 398, 1, -180.4 -a2, 23.3 -b2, 0 );
setMoveKey( spep_0 -3 + 400, 1, -188.6 -a2, 15.4 -b2, 0 );
setMoveKey( spep_0 -3 + 401, 1, -188.6 -a2, 15.4 -b2, 0 );

s1=0.4;

setScaleKey( spep_0 -3 + 340, 1, 22, 22 );
setScaleKey( spep_0 -3 + 353, 1, 22, 22 );
setScaleKey( spep_0 -3 + 354, 1, 2.6 +s1, 2.6 +s1 );
setScaleKey( spep_0 -3 + 396, 1, 2.6 +s1, 2.6 +s1 );
setScaleKey( spep_0 -3 + 401, 1, 2.6 +s1, 2.6 +s1 );

setRotateKey( spep_0 -3 + 340, 1, 0 );
setRotateKey( spep_0 -3 + 354, 1, 0 );
setRotateKey( spep_0 -3 + 372, 1, 0 );
setRotateKey( spep_0 -3 + 374, 1, 2 );
setRotateKey( spep_0 -3 + 376, 1, 2.8 );
setRotateKey( spep_0 -3 + 378, 1, 3.4 );
setRotateKey( spep_0 -3 + 380, 1, 3.8 );
setRotateKey( spep_0 -3 + 382, 1, 4.1 );
setRotateKey( spep_0 -3 + 384, 1, 4.3 );
setRotateKey( spep_0 -3 + 386, 1, 4.5 );
setRotateKey( spep_0 -3 + 388, 1, 4.7 );
setRotateKey( spep_0 -3 + 390, 1, 4.8 );
setRotateKey( spep_0 -3 + 392, 1, 4.9 );
setRotateKey( spep_0 -3 + 394, 1, 4.9 );
setRotateKey( spep_0 -3 + 396, 1, 5 );
setRotateKey( spep_0 -3 + 401, 1, 5 );


-- ** 音 ** --
--パンチ振りかぶる
SE013 = playSe( spep_0 + 320, 44 );
stopSe( spep_0 + 348, SE013, 6 );
--setBandpassFilter( spep_0 + 320, SE013, 3000, 24000 );
setPitch( spep_0 + 320, SE013, -400 );
setTimeStretch( SE013, 0.73, 10, 1 );

--パンチ振りかぶる
SE014 = playSe( spep_0 + 324, 1004 );
setSeVolumeByWorkId( spep_0 + 324, SE014, 68 );

--ボディブロー
SE015 = playSe( spep_0 + 336, 1155,"",0.5 );
stopSe( spep_0 + 346, SE015, 20 );

--ボディブロー    
SE016 = playSe( spep_0 + 338, 1187 );
setSeVolumeByWorkId( spep_0 + 338, SE016, 67 );
stopSe( spep_0 +398, SE016, 0 );

--ボディブロー
SE017 = playSe( spep_0 + 338, 1258 );
setSeVolumeByWorkId( spep_0 + 338, SE017, 77 );
stopSe( spep_0 + 362, SE017, 36 );

--ボディブロー
SE018 = playSe( spep_0 + 340, 1190 );
stopSe( spep_0 +398, SE018, 0 );

--ボディブロー
SE019 = playSe( spep_0 + 340, 1114 );
setSeVolumeByWorkId( spep_0 + 340, SE019, 87 );
stopSe( spep_0 +398, SE019, 0 );

-- ** 次の準備 ** --
spep_c = spep_0 + 398;

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------

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
playSe( spep_c + 0, SE_05 );

--右向きラッシュ
SE021 = playSe( spep_c + 84, 1189 );

--右向きラッシュ
SE022 = playSe( spep_c + 90, 1187 );
setSeVolumeByWorkId( spep_c + 90, SE022, 63 );
stopSe( spep_c + 94 + 4, SE022, 20 );

--右向きラッシュ
SE023 = playSe( spep_c + 90, 1009 );
setSeVolumeByWorkId( spep_c + 90, SE023, 78 );
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_c + 94;

------------------------------------------------------
-- ラッシュ〜敵が転がって岩に激突(574F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ラッシュ〜敵が転がって岩に激突 前面(ef_003)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 574, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 574, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 574, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 574, finish_f, 255 );
--[[
finish_b = entryEffect( spep_2 + 0 -f, SP_04r, 0x80, -1, 0, 0, 0 );  --ラッシュ〜敵が転がって岩に激突 背面(ef_004)
setEffMoveKey( spep_2 + 0 -f, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 574, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0 -f, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 574, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0 -f, finish_b, 0 );
setEffRotateKey( spep_2 + 574, finish_b, 0 );
setEffAlphaKey( spep_2 + 0 -f, finish_b, 255 );
setEffAlphaKey( spep_2 + 574, finish_b, 255 );
]]
spep_x = spep_2 + 178;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 142, 1, 1 );
setDisp( spep_2 -3 + 190, 1, 0 );
setDisp( spep_2 -3 + 288, 1, 1 );
setDisp( spep_2 -3 + 526, 1, 0 );
changeAnime( spep_2 -3 + 142, 1, 107 );
changeAnime( spep_2 -3 + 148, 1, 7 );
changeAnime( spep_2 -3 + 156, 1, 107 );
changeAnime( spep_2 -3 + 164, 1, 7 );
changeAnime( spep_2 -3 + 174, 1, 107 );
changeAnime( spep_2 -3 + 182, 1, 7 );
changeAnime( spep_2 -3 + 186, 1, 7 );
changeAnime( spep_2 -3 + 288, 1, 105 );
changeAnime( spep_2 -3 + 384, 1, 8 );
changeAnime( spep_2 -3 + 476, 1, 5 );
changeAnime( spep_2 -3 + 480, 1, 106 );
changeAnime( spep_2 -3 + 486, 1, 108 );
changeAnime( spep_2 -3 + 520, 1, 6 );
changeAnime( spep_2 -3 + 524, 1, 8 );

a3=0;
b3=300;

setMoveKey( spep_2 -3 + 142, 1, 34.5, -245.5 +b3, 0 );
setMoveKey( spep_2 -3 + 144, 1, 34.5, -245.5 +b3, 0 );
setMoveKey( spep_2 -3 + 146, 1, 46.3 +a3, -349.3 +b3, 0 );--
setMoveKey( spep_2 -3 + 148, 1, -70.3 +a3, -370.3 +b3, 0 );
setMoveKey( spep_2 -3 + 150, 1, -74.3 +a3, -376.3 +b3, 0 );
setMoveKey( spep_2 -3 + 152, 1, -70.3 +a3, -370.2 +b3, 0 );
setMoveKey( spep_2 -3 + 154, 1, -70.3 +a3, -374.2 +b3, 0 );
setMoveKey( spep_2 -3 + 156, 1, 46.3 +a3, -349.3 +b3, 0 );
setMoveKey( spep_2 -3 + 158, 1, 46.4 +a3, -309.6 +b3, 0 );
setMoveKey( spep_2 -3 + 160, 1, 40.4 +a3, -319.6 +b3, 0 );
setMoveKey( spep_2 -3 + 162, 1, 86.4 +a3, -309.6 +b3, 0 );
setMoveKey( spep_2 -3 + 164, 1, 193.9 +a3, -342.4 +b3, 0 );
setMoveKey( spep_2 -3 + 166, 1, 189.9 +a3, -356.4 +b3, 0 );
setMoveKey( spep_2 -3 + 168, 1, -70.3 +a3, -370.3 +b3, 0 );
setMoveKey( spep_2 -3 + 170, 1, -70.3 +a3, -370.2 +b3, 0 );
setMoveKey( spep_2 -3 + 172, 1, -70.3 +a3, -370.2 +b3, 0 );
setMoveKey( spep_2 -3 + 174, 1, 46.3 +a3, -349.3 +b3, 0 );
setMoveKey( spep_2 -3 + 176, 1, 46.4 +a3, -309.6 +b3, 0 );
setMoveKey( spep_2 -3 + 178, 1, 44.4 +a3, -321.6 +b3, 0 );
setMoveKey( spep_2 -3 + 180, 1, 86.4 +a3, -309.6 +b3, 0 );
setMoveKey( spep_2 -3 + 182, 1, 193.9 +a3, -342.4 +b3, 0 );
setMoveKey( spep_2 -3 + 184, 1, 183.9 +a3, -368.4 +b3, 0 );
setMoveKey( spep_2 -3 + 186, 1, -70.3 +a3, -370.3 +b3, 0 );
setMoveKey( spep_2 -3 + 190, 1, -70.3 +a3, -370.3 +b3, 0 );
--
setMoveKey( spep_2 -3 + 288, 1, 13, 286.7 , 0 );
setMoveKey( spep_2 -3 + 290, 1, -18.7, 244.5 , 0 );
setMoveKey( spep_2 -3 + 292, 1, -50.4, 192.5 , 0 );
setMoveKey( spep_2 -3 + 294, 1, -82.1, 150.6 , 0 );
setMoveKey( spep_2 -3 + 296, 1, -113.7, 118.8 , 0 );
setMoveKey( spep_2 -3 + 298, 1, -149.4, 73.1 , 0 );
setMoveKey( spep_2 -3 + 300, 1, -145.4, 70.5 , 0 );
setMoveKey( spep_2 -3 + 302, 1, -142, 63.7 , 0 );
setMoveKey( spep_2 -3 + 304, 1, -138, 57.2 , 0 );
setMoveKey( spep_2 -3 + 306, 1, -134.2, 51.4 , 0 );
setMoveKey( spep_2 -3 + 308, 1, -130.7, 46.3 , 0 );
setMoveKey( spep_2 -3 + 310, 1, -127.6, 41.8 , 0 );
setMoveKey( spep_2 -3 + 312, 1, -125.1, 38 , 0 );
setMoveKey( spep_2 -3 + 314, 1, -123.3, 35 , 0 );
setMoveKey( spep_2 -3 + 316, 1, -122, 32.7 , 0 );
setMoveKey( spep_2 -3 + 318, 1, -121.5, 31.1 , 0 );
setMoveKey( spep_2 -3 + 320, 1, -121.6, 30.3 , 0 );
setMoveKey( spep_2 -3 + 322, 1, -122.4, 30.2 , 0 );
setMoveKey( spep_2 -3 + 324, 1, -123.6, 30.5 , 0 );
setMoveKey( spep_2 -3 + 326, 1, -124.6, 30.8 , 0 );
setMoveKey( spep_2 -3 + 328, 1, -125.6, 31 , 0 );
setMoveKey( spep_2 -3 + 330, 1, -126.5, 31.3 , 0 );
setMoveKey( spep_2 -3 + 332, 1, -127.4, 31.5 , 0 );
setMoveKey( spep_2 -3 + 334, 1, -128.2, 31.7 , 0 );
setMoveKey( spep_2 -3 + 336, 1, -128.9, 31.9 , 0 );
setMoveKey( spep_2 -3 + 338, 1, -129.6, 32 , 0 );
setMoveKey( spep_2 -3 + 340, 1, -130.3, 32.2 , 0 );
setMoveKey( spep_2 -3 + 342, 1, -130.9, 32.4 , 0 );
setMoveKey( spep_2 -3 + 344, 1, -131.4, 32.5 , 0 );
setMoveKey( spep_2 -3 + 346, 1, -131.9, 32.6 , 0 );
setMoveKey( spep_2 -3 + 348, 1, -132.4, 32.8 , 0 );
setMoveKey( spep_2 -3 + 350, 1, -132.9, 32.9 , 0 );
setMoveKey( spep_2 -3 + 352, 1, -133.3, 33 , 0 );
setMoveKey( spep_2 -3 + 354, 1, -133.7, 33.1 , 0 );
setMoveKey( spep_2 -3 + 356, 1, -134, 33.2 , 0 );
setMoveKey( spep_2 -3 + 358, 1, -134.3, 33.2 , 0 );
setMoveKey( spep_2 -3 + 360, 1, -134.6, 33.3 , 0 );
setMoveKey( spep_2 -3 + 362, 1, -134.9, 33.4 , 0 );
setMoveKey( spep_2 -3 + 364, 1, -135.1, 33.4 , 0 );
setMoveKey( spep_2 -3 + 366, 1, -135.3, 33.5 , 0 );
setMoveKey( spep_2 -3 + 368, 1, -120.5, 31.3 , 0 );
setMoveKey( spep_2 -3 + 370, 1, -106.5, 29.1 , 0 );
setMoveKey( spep_2 -3 + 372, 1, -93.4, 27.1 , 0 );
setMoveKey( spep_2 -3 + 374, 1, -81, 25.3 , 0 );
setMoveKey( spep_2 -3 + 376, 1, -69.5, 23.5 , 0 );
setMoveKey( spep_2 -3 + 378, 1, -58.8, 21.9 , 0 );
setMoveKey( spep_2 -3 + 380, 1, -58.9, 21.9 , 0 );
setMoveKey( spep_2 -3 + 383, 1, -58.9, 21.9 , 0 );

a4=50;
b4=100;
setMoveKey( spep_2 -3 + 384, 1, -25.5 -a4, 88 -b4 , 0 );
setMoveKey( spep_2 -3 + 388, 1, -25.5 -a4, 88 -b4 , 0 );
setMoveKey( spep_2 -3 + 390, 1, -213.5-a4, 88 -b4 , 0 );
setMoveKey( spep_2 -3 + 392, 1, -213.5-a4, 88 -b4 , 0 );
setMoveKey( spep_2 -3 + 394, 1, -209.5-a4, 48 -b4 , 0 );
setMoveKey( spep_2 -3 + 396, 1, -201.5-a4, 106 -b4 , 0 );
setMoveKey( spep_2 -3 + 398, 1, -177.5-a4, 44 -b4 , 0 );
setMoveKey( spep_2 -3 + 400, 1, -177.5-a4, 44 -b4 , 0 );
setMoveKey( spep_2 -3 + 402, 1, -189.5-a4, 98 -b4 , 0 );
setMoveKey( spep_2 -3 + 404, 1, -187.5-a4, 44 -b4 , 0 );
setMoveKey( spep_2 -3 + 406, 1, -201.5-a4, 90 -b4 , 0 );
setMoveKey( spep_2 -3 + 408, 1, -175.5-a4, 76 -b4 , 0 );
setMoveKey( spep_2 -3 + 409, 1, -175.5-a4, 76 -b4 , 0 );

a5=20;
b5=50;
setMoveKey( spep_2 -3 + 410, 1, -160.4 -a5, -44.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 412, 1, -198.4 -a5, -32.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 414, 1, -198.4 -a5, 7.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 416, 1, -194.4 -a5, -30.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 418, 1, -194.4 -a5, 5.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 420, 1, -194.4 -a5, 5.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 422, 1, -194.4 -a5, -24.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 424, 1, -214.4 -a5, 3.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 426, 1, -198.4 -a5, -4.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 428, 1, -186.4 -a5, 11.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 430, 1, -186.4 -a5, 11.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 432, 1, -190.4 -a5, -18.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 434, 1, -196.4 -a5, -2.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 436, 1, -206.4 -a5, -20.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 438, 1, -194.4 -a5, 21.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 440, 1, -194.4 -a5, 21.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 442, 1, -200.4 -a5, -14.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 444, 1, -200.4 -a5, 29.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 445, 1, -200.4 -a5, 29.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 446, 1, -214.4 -a5, -26.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 448, 1, -198.4 -a5, -0.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 450, 1, -198.4 -a5, -0.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 452, 1, -214.4 -a5, -20.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 454, 1, -200.4 -a5, 23.5 -b5 , 0 );
setMoveKey( spep_2 -3 + 455, 1, -200.4 -a5, 23.5 -b5 , 0 );

b6=40;
setMoveKey( spep_2 -3 + 456, 1, 838.2, -676.3 , 0 );
setMoveKey( spep_2 -3 + 458, 1, 584, -483 , 0 );
setMoveKey( spep_2 -3 + 460, 1, 375, -325.1 , 0 );
setMoveKey( spep_2 -3 + 462, 1, 217.1, -202.4 , 0 );
setMoveKey( spep_2 -3 + 464, 1, 110.3, -115.1 , 0 );
setMoveKey( spep_2 -3 + 466, 1, 54.5, -63 , 0 );
setMoveKey( spep_2 -3 + 468, 1, 49.8, -46.1 , 0 );
setMoveKey( spep_2 -3 + 470, 1, 0.8, -66.3 , 0 );
setMoveKey( spep_2 -3 + 472, 1, -33.5, -55.5 , 0 );
setMoveKey( spep_2 -3 + 474, 1, -68.5, -32.7 , 0 );
setMoveKey( spep_2 -3 + 476, 1, -38.8, -85.9 +b6 , 0 );
setMoveKey( spep_2 -3 + 478, 1, -80.9, -70.5 +b6 , 0 );
setMoveKey( spep_2 -3 + 480, 1, -95.4, 44.7 , 0 );
setMoveKey( spep_2 -3 + 482, 1, -101, 40 , 0 );
setMoveKey( spep_2 -3 + 484, 1, -102, 72.3 , 0 );
setMoveKey( spep_2 -3 + 486, 1, -139.1, 75.2 , 0 );
setMoveKey( spep_2 -3 + 488, 1, -146.9, 99.5 , 0 );
setMoveKey( spep_2 -3 + 490, 1, -155.3, 94.3 , 0 );
setMoveKey( spep_2 -3 + 492, 1, -158.2, 118.8 , 0 );
setMoveKey( spep_2 -3 + 494, 1, -155.9, 113.8 , 0 );
setMoveKey( spep_2 -3 + 496, 1, -148.2, 114.9 , 0 );
setMoveKey( spep_2 -3 + 498, 1, -142.4, 89.3 , 0 );
setMoveKey( spep_2 -3 + 500, 1, -137.3, 40.2 , 0 );
setMoveKey( spep_2 -3 + 502, 1, -133, 17.7 , 0 );
setMoveKey( spep_2 -3 + 504, 1, -129.9, 3.5 , 0 );
setMoveKey( spep_2 -3 + 506, 1, -127.1, 13.2 , 0 );
setMoveKey( spep_2 -3 + 508, 1, -130, 2.4 , 0 );
setMoveKey( spep_2 -3 + 510, 1, -127.7, 15.4 , 0 );
setMoveKey( spep_2 -3 + 512, 1, -125.7, -3.8 , 0 );
setMoveKey( spep_2 -3 + 514, 1, -124.2, 3.6 , 0 );
setMoveKey( spep_2 -3 + 516, 1, -123, 11.3 , 0 );
setMoveKey( spep_2 -3 + 518, 1, -122.3, -10.3 , 0 );
setMoveKey( spep_2 -3 + 520, 1, -137.7, 68.6 , 0 );
setMoveKey( spep_2 -3 + 522, 1, -148.2, 56.7 , 0 );
setMoveKey( spep_2 -3 + 524, 1, -176.3, 80.5 , 0 );
setMoveKey( spep_2 -3 + 526, 1, -176.3, 80.5 , 0 );


s2=0.2;
setScaleKey( spep_2 -3 + 142, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_2 -3 + 144, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_2 -3 + 146, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 147, 1, 2.4 +s2, 2.4 +s2 );--
setScaleKey( spep_2 -3 + 148, 1, 2 +s2, 2 +s2);
setScaleKey( spep_2 -3 + 150, 1, 2 +s2, 2 +s2);
setScaleKey( spep_2 -3 + 152, 1, 2.2 +s2, 2.2 +s2 );
setScaleKey( spep_2 -3 + 154, 1, 2.2 +s2, 2.2 +s2 );
setScaleKey( spep_2 -3 + 155, 1, 2.2 +s2, 2.2 +s2 );--
setScaleKey( spep_2 -3 + 156, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 160, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 162, 1, 2.2 +s2, 2.2 +s2 );
setScaleKey( spep_2 -3 + 163, 1, 2.2 +s2, 2.2 +s2 );--
setScaleKey( spep_2 -3 + 164, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 166, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 168, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_2 -3 + 170, 1, 2.2 +s2, 2.2 +s2 );
setScaleKey( spep_2 -3 + 172, 1, 2.2 +s2, 2.2 +s2 );
setScaleKey( spep_2 -3 + 173, 1, 2.2 +s2, 2.2 +s2 );--
setScaleKey( spep_2 -3 + 174, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 178, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 180, 1, 2.2 +s2, 2.2 +s2 );
setScaleKey( spep_2 -3 + 181, 1, 2.2 +s2, 2.2 +s2 );--
setScaleKey( spep_2 -3 + 182, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 184, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 186, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_2 -3 + 190, 1, 2 +s2, 2 +s2 );
--
setScaleKey( spep_2 -3 + 288, 1, 8, 8 );
setScaleKey( spep_2 -3 + 290, 1, 6.7, 6.7 );
setScaleKey( spep_2 -3 + 292, 1, 5.4, 5.4 );
setScaleKey( spep_2 -3 + 294, 1, 4.1, 4.1 );
setScaleKey( spep_2 -3 + 296, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 298, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 300, 1, 1.4, 1.4 );
setScaleKey( spep_2 -3 + 302, 1, 1.35, 1.35 );
setScaleKey( spep_2 -3 + 304, 1, 1.31, 1.31 );
setScaleKey( spep_2 -3 + 306, 1, 1.28, 1.28 );
setScaleKey( spep_2 -3 + 308, 1, 1.26, 1.26 );
setScaleKey( spep_2 -3 + 310, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 312, 1, 1.21, 1.21 );
setScaleKey( spep_2 -3 + 314, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 316, 1, 1.18, 1.18 );
setScaleKey( spep_2 -3 + 318, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 320, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 322, 1, 1.14, 1.14 );
setScaleKey( spep_2 -3 + 324, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 326, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 328, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 330, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 332, 1, 1.09, 1.09 );
setScaleKey( spep_2 -3 + 334, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 336, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 338, 1, 1.06, 1.06 );
setScaleKey( spep_2 -3 + 340, 1, 1.06, 1.06 );
setScaleKey( spep_2 -3 + 342, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 344, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 346, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 348, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 350, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 352, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 354, 1, 1.02, 1.02 );
setScaleKey( spep_2 -3 + 358, 1, 1.02, 1.02 );
setScaleKey( spep_2 -3 + 360, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 366, 1, 1.01, 1.01 );
setScaleKey( spep_2 -3 + 368, 1, 1, 1 );
setScaleKey( spep_2 -3 + 383, 1, 1, 1 );--

s3=0.4;
setScaleKey( spep_2 -3 + 384, 1, 15, 15 );
setScaleKey( spep_2 -3 + 409, 1, 15, 15 );--
setScaleKey( spep_2 -3 + 410, 1, 2.4 +s3, 2.4 +s3 );
setScaleKey( spep_2 -3 + 455, 1, 2.4 +s3, 2.4 +s3 );--
setScaleKey( spep_2 -3 + 456, 1, 8, 8 );
setScaleKey( spep_2 -3 + 458, 1, 5.95, 5.95 );
setScaleKey( spep_2 -3 + 460, 1, 4.28, 4.28 );
setScaleKey( spep_2 -3 + 462, 1, 2.97, 2.97 );
setScaleKey( spep_2 -3 + 464, 1, 2.04, 2.04 );
setScaleKey( spep_2 -3 + 466, 1, 1.49, 1.49 );
setScaleKey( spep_2 -3 + 468, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 470, 1, 1.22, 1.22 );
setScaleKey( spep_2 -3 + 472, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 474, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 475, 1, 1.05, 1.05 );--

s4=0.2;
setScaleKey( spep_2 -3 + 476, 1, 0.58 +s4, 0.58 +s4 );
setScaleKey( spep_2 -3 + 478, 1, 0.53 +s4, 0.53 +s4 );
setScaleKey( spep_2 -3 + 479, 1, 0.53 +s4, 0.53 +s4 );
setScaleKey( spep_2 -3 + 480, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 482, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 484, 1, 0.78, 0.78 );
setScaleKey( spep_2 -3 + 485, 1, 0.78, 0.78 );--
setScaleKey( spep_2 -3 + 486, 1, 0.78, 0.78 );
setScaleKey( spep_2 -3 + 488, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 490, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 492, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 494, 1, 0.61, 0.61 );
setScaleKey( spep_2 -3 + 496, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 498, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 500, 1, 0.5, 0.5 );
setScaleKey( spep_2 -3 + 502, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 504, 1, 0.43, 0.43 );
setScaleKey( spep_2 -3 + 506, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 508, 1, 0.38, 0.38 );
setScaleKey( spep_2 -3 + 510, 1, 0.36, 0.36 );
setScaleKey( spep_2 -3 + 512, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 514, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 516, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 518, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 519, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 520, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 526, 1, 0.3, 0.3 );

--r1=40;
r1=20;
setRotateKey( spep_2 -3 + 142, 1, -75 -r1 );
setRotateKey( spep_2 -3 + 144, 1, -75 -r1 );
setRotateKey( spep_2 -3 + 146, 1, -120 -r1 );
setRotateKey( spep_2 -3 + 147, 1, -120 -r1 );--
setRotateKey( spep_2 -3 + 148, 1, -284 +r1 );
setRotateKey( spep_2 -3 + 150, 1, -284 +r1 );
setRotateKey( spep_2 -3 + 152, 1, -270 +r1 );
setRotateKey( spep_2 -3 + 154, 1, -270 +r1 );
setRotateKey( spep_2 -3 + 155, 1, -270 +r1 );--
setRotateKey( spep_2 -3 + 156, 1, -120 -r1 );
setRotateKey( spep_2 -3 + 158, 1, -90 -r1 );
setRotateKey( spep_2 -3 + 160, 1, -90 -r1 );
setRotateKey( spep_2 -3 + 162, 1, -75 -r1 );
setRotateKey( spep_2 -3 + 163, 1, -75 -r1 );
setRotateKey( spep_2 -3 + 164, 1, 83.4 +r1 );
setRotateKey( spep_2 -3 + 166, 1, 83.4 +r1 );
setRotateKey( spep_2 -3 + 168, 1, 76 +r1 );
setRotateKey( spep_2 -3 + 170, 1, 90 +r1 );
setRotateKey( spep_2 -3 + 172, 1, 90 +r1 );
setRotateKey( spep_2 -3 + 173, 1, 90 +r1 );--
setRotateKey( spep_2 -3 + 174, 1, 240 -r1 );
setRotateKey( spep_2 -3 + 176, 1, 270 -r1 );
setRotateKey( spep_2 -3 + 178, 1, 270 -r1 );
setRotateKey( spep_2 -3 + 180, 1, 285 -r1 );
setRotateKey( spep_2 -3 + 181, 1, 285 -r1 );
setRotateKey( spep_2 -3 + 182, 1, 443.4 +r1 );
setRotateKey( spep_2 -3 + 184, 1, 443.4 +r1 );
setRotateKey( spep_2 -3 + 186, 1, 436 +r1 );
setRotateKey( spep_2 -3 + 190, 1, 436 +r1 );
--
setRotateKey( spep_2 -3 + 288, 1, -15 );
setRotateKey( spep_2 -3 + 290, 1, -16 );
setRotateKey( spep_2 -3 + 292, 1, -17 );
setRotateKey( spep_2 -3 + 294, 1, -18 );
setRotateKey( spep_2 -3 + 296, 1, -19 );
setRotateKey( spep_2 -3 + 298, 1, -20 );
setRotateKey( spep_2 -3 + 300, 1, -21.9 );
setRotateKey( spep_2 -3 + 302, 1, -22.9 );
setRotateKey( spep_2 -3 + 304, 1, -23.6 );
setRotateKey( spep_2 -3 + 306, 1, -24.3 );
setRotateKey( spep_2 -3 + 308, 1, -24.8 );
setRotateKey( spep_2 -3 + 310, 1, -25.2 );
setRotateKey( spep_2 -3 + 312, 1, -25.6 );
setRotateKey( spep_2 -3 + 314, 1, -26 );
setRotateKey( spep_2 -3 + 316, 1, -26.3 );
setRotateKey( spep_2 -3 + 318, 1, -26.6 );
setRotateKey( spep_2 -3 + 320, 1, -26.9 );
setRotateKey( spep_2 -3 + 322, 1, -27.1 );
setRotateKey( spep_2 -3 + 324, 1, -27.3 );
setRotateKey( spep_2 -3 + 326, 1, -27.5 );
setRotateKey( spep_2 -3 + 328, 1, -27.7 );
setRotateKey( spep_2 -3 + 330, 1, -27.9 );
setRotateKey( spep_2 -3 + 332, 1, -28.1 );
setRotateKey( spep_2 -3 + 334, 1, -28.2 );
setRotateKey( spep_2 -3 + 336, 1, -28.4 );
setRotateKey( spep_2 -3 + 338, 1, -28.5 );
setRotateKey( spep_2 -3 + 340, 1, -28.7 );
setRotateKey( spep_2 -3 + 342, 1, -28.8 );
setRotateKey( spep_2 -3 + 344, 1, -28.9 );
setRotateKey( spep_2 -3 + 346, 1, -29 );
setRotateKey( spep_2 -3 + 348, 1, -29.1 );
setRotateKey( spep_2 -3 + 350, 1, -29.2 );
setRotateKey( spep_2 -3 + 352, 1, -29.3 );
setRotateKey( spep_2 -3 + 354, 1, -29.3 );
setRotateKey( spep_2 -3 + 356, 1, -29.4 );
setRotateKey( spep_2 -3 + 358, 1, -29.5 );
setRotateKey( spep_2 -3 + 360, 1, -29.5 );
setRotateKey( spep_2 -3 + 362, 1, -29.6 );
setRotateKey( spep_2 -3 + 364, 1, -29.6 );
setRotateKey( spep_2 -3 + 366, 1, -29.7 );
setRotateKey( spep_2 -3 + 370, 1, -29.7 );
setRotateKey( spep_2 -3 + 372, 1, -29.8 );
setRotateKey( spep_2 -3 + 383, 1, -29.8 );
--
setRotateKey( spep_2 -3 + 384, 1, 0 );
setRotateKey( spep_2 -3 + 409, 1, 0 );--
setRotateKey( spep_2 -3 + 410, 1, 5 );
setRotateKey( spep_2 -3 + 455, 1, 5 );
setRotateKey( spep_2 -3 + 456, 1, -15 );
setRotateKey( spep_2 -3 + 468, 1, -15 );
setRotateKey( spep_2 -3 + 470, 1, -50 );
setRotateKey( spep_2 -3 + 474, 1, -50 );
setRotateKey( spep_2 -3 + 475, 1, -50 );
setRotateKey( spep_2 -3 + 476, 1, -145 );
setRotateKey( spep_2 -3 + 479, 1, -145 );
setRotateKey( spep_2 -3 + 480, 1, -245 );
setRotateKey( spep_2 -3 + 485, 1, -245 );
setRotateKey( spep_2 -3 + 486, 1, -195 );
setRotateKey( spep_2 -3 + 506, 1, -195 );
setRotateKey( spep_2 -3 + 508, 1, -210 );
setRotateKey( spep_2 -3 + 519, 1, -210 );
setRotateKey( spep_2 -3 + 520, 1, -325 );
setRotateKey( spep_2 -3 + 523, 1, -325 );
setRotateKey( spep_2 -3 + 524, 1, -375 );
setRotateKey( spep_2 -3 + 526, 1, -375 );

-- ** 音 ** --
--右向きラッシュ
SE024 = playSe( spep_2 + 8, 1187 );
setSeVolumeByWorkId( spep_2 + 8, SE024, 75 );
stopSe( spep_2 + 16, SE024, 20 );

--右向きラッシュ
SE025 = playSe( spep_2 + 26, 1010 );
setSeVolumeByWorkId( spep_2 + 26, SE025, 72 );

--右向きラッシュ
SE026 = playSe( spep_2 + 26, 1187 );
setSeVolumeByWorkId( spep_2 + 26, SE026, 68 );
stopSe( spep_2 + 34, SE026, 20 );

--右向きラッシュ
SE027 = playSe( spep_2 + 36, 1000 );
setSeVolumeByWorkId( spep_2 + 36, SE027, 78 );

--右向きラッシュ
SE028 = playSe( spep_2 + 36, 1187 );
setSeVolumeByWorkId( spep_2 + 36, SE028, 65 );
stopSe( spep_2 + 44, SE028, 20 );

--右向きラッシュ
SE029 = playSe( spep_2 + 46, 1187 );
setSeVolumeByWorkId( spep_2 + 46, SE029, 69 );
stopSe( spep_2 + 54, SE029, 20 );

--右向きラッシュ
SE030 = playSe( spep_2 + 56, 1009 );
setSeVolumeByWorkId( spep_2 + 56, SE030, 86 );

--右向きラッシュ
SE031 = playSe( spep_2 + 56, 1187 );
setSeVolumeByWorkId( spep_2 + 56, SE031, 68 );
stopSe( spep_2 + 64, SE031, 20 );

--右向きラッシュ
SE032 = playSe( spep_2 + 64, 1187 );
setSeVolumeByWorkId( spep_2 + 64, SE032, 65 );
stopSe( spep_2 + 72, SE032, 20 );

--右向きラッシュ
SE033 = playSe( spep_2 + 64, 1010 );
setSeVolumeByWorkId( spep_2 + 64, SE033, 86 );

--右向きラッシュ
SE034 = playSe( spep_2 + 72, 1187 );
setSeVolumeByWorkId( spep_2 + 72, SE034, 64 );
stopSe( spep_2 + 80, SE034, 20 );

--右向きラッシュ
SE035 = playSe( spep_2 + 84, 1110 );
setSeVolumeByWorkId( spep_2 + 84, SE035, 81 );

--右向きラッシュ
SE036 = playSe( spep_2 + 84, 1187 );
setSeVolumeByWorkId( spep_2 + 84, SE036, 74 );
stopSe( spep_2 + 92, SE036, 20 );

--右向きラッシュ
SE037 = playSe( spep_2 + 94, 1009 );
setSeVolumeByWorkId( spep_2 + 94, SE037, 82 );

--右向きラッシュ
SE038 = playSe( spep_2 + 94, 1187 );
setSeVolumeByWorkId( spep_2 + 94, SE038, 69 );
stopSe( spep_2 + 102, SE038, 20 );

--右向きラッシュ
SE039 = playSe( spep_2 + 104, 1009 );
setSeVolumeByWorkId( spep_2 + 104, SE039, 87 );

--右向きラッシュ
SE040 = playSe( spep_2 + 104, 1187 );
setSeVolumeByWorkId( spep_2 + 104, SE040, 73 );
stopSe( spep_2 + 112, SE040, 20 );

--右向きラッシュ
SE041 = playSe( spep_2 + 114, 1010 );
setSeVolumeByWorkId( spep_2 + 114, SE041, 87 );

--右向きラッシュ
SE042 = playSe( spep_2 + 114, 1187 );
setSeVolumeByWorkId( spep_2 + 114, SE042, 69 );
stopSe( spep_2 + 122, SE042, 20 );

--右向きラッシュ
SE043 = playSe( spep_2 + 124, 1000 );
setSeVolumeByWorkId( spep_2 + 124, SE043, 82 );

--右向きラッシュ
SE044 = playSe( spep_2 + 124, 1187 );
setSeVolumeByWorkId( spep_2 + 124, SE044, 71 );
stopSe( spep_2 + 132, SE044, 20 );

--FPSラッシュ
SE045 = playSe( spep_2 + 136, 1110 );
setSeVolumeByWorkId( spep_2 + 136, SE045, 76 );

--FPSラッシュ
SE046 = playSe( spep_2 + 136, 1187 );
setSeVolumeByWorkId( spep_2 + 136, SE046, 72 );
stopSe( spep_2 + 144, SE046, 20 );

--FPSラッシュ
SE047 = playSe( spep_2 + 150, 1009 );
setSeVolumeByWorkId( spep_2 + 150, SE047, 87 );

--FPSラッシュ
SE048 = playSe( spep_2 + 150, 1187 );
setSeVolumeByWorkId( spep_2 + 150, SE048, 74 );
stopSe( spep_2 + 158, SE048, 20 );

--FPSラッシュ
SE049 = playSe( spep_2 + 162, 1187 );
setSeVolumeByWorkId( spep_2 + 162, SE049, 68 );
stopSe( spep_2 + 170, SE049, 20 );

--FPSラッシュ
SE050 = playSe( spep_2 + 162, 1010 );
setSeVolumeByWorkId( spep_2 + 162, SE050, 73 );

--FPSラッシュ
SE051 = playSe( spep_2 + 172, 1187 );
setSeVolumeByWorkId( spep_2 + 172, SE051, 65 );
stopSe( spep_2 + 180, SE051, 20 );

--FPSラッシュ
SE052 = playSe( spep_2 + 180, 1110 );
setSeVolumeByWorkId( spep_2 + 180, SE052, 79 );

--FPSラッシュ
SE053 = playSe( spep_2 + 180, 1187 );
setSeVolumeByWorkId( spep_2 + 180, SE053, 58 );
stopSe( spep_2 + 188, SE053, 20 );

--顔カットイン
--SE054 = playSe( spep_2 + 184, 1018 );

--正面ラッシュ
SE055 = playSe( spep_2 + 186, 1187 );
setSeVolumeByWorkId( spep_2 + 186, SE055, 54 );
stopSe( spep_2 + 196, SE055, 20 );

--正面ラッシュ
SE056 = playSe( spep_2 + 198, 1110 );
setSeVolumeByWorkId( spep_2 + 198, SE056, 78 );

--正面ラッシュ
SE057 = playSe( spep_2 + 198, 1187 );
setSeVolumeByWorkId( spep_2 + 198, SE057, 71 );
stopSe( spep_2 + 206, SE057, 20 );

--正面ラッシュ
SE058 = playSe( spep_2 + 206, 1009 );
setSeVolumeByWorkId( spep_2 + 206, SE058, 91 );

--正面ラッシュ
SE059 = playSe( spep_2 + 206, 1187 );
setSeVolumeByWorkId( spep_2 + 206, SE059, 59 );
stopSe( spep_2 + 214, SE059, 20 );

--正面ラッシュ
SE060 = playSe( spep_2 + 216, 1187 );
setSeVolumeByWorkId( spep_2 + 216, SE060, 61 );
stopSe( spep_2 + 224, SE060, 20 );

--正面ラッシュ
SE061 = playSe( spep_2 + 226, 1110 );
setSeVolumeByWorkId( spep_2 + 226, SE061, 94 );

--正面ラッシュ
SE062 = playSe( spep_2 + 226, 1187 );
setSeVolumeByWorkId( spep_2 + 226, SE062, 60 );
stopSe( spep_2 + 234, SE062, 20 );

--正面ラッシュ
SE063 = playSe( spep_2 + 236, 1001 );
setSeVolumeByWorkId( spep_2 + 236, SE063, 67 );

--正面ラッシュ
SE064 = playSe( spep_2 + 236, 1187 );
setSeVolumeByWorkId( spep_2 + 236, SE064, 79 );
stopSe( spep_2 + 244, SE064, 20 );

--正面ラッシュ
SE065 = playSe( spep_2 + 248, 1187 );
setSeVolumeByWorkId( spep_2 + 248, SE065, 79 );
stopSe( spep_2 + 256, SE065, 20 );

--ラスト一撃
SE066 = playSe( spep_2 + 260, 1120 );
setSeVolumeByWorkId( spep_2 + 260, SE066, 79 );

--ラスト一撃
SE067 = playSe( spep_2 + 260, 1187 );
setSeVolumeByWorkId( spep_2 + 260, SE067, 79 );
stopSe( spep_2 + 266, SE067, 48 );

--敵後ずさる
SE068 = playSe( spep_2 + 276, 1044 );
setSeVolumeByWorkId( spep_2 + 276, SE068, 65 );
stopSe( spep_2 + 312, SE068, 44 );

--瞬間移動
SE069 = playSe( spep_2 + 342, 1109 );

--ラストキック
SE070 = playSe( spep_2 + 378, 1004 );

--ラストキック
SE071 = playSe( spep_2 + 386, 1187 );
setSeVolumeByWorkId( spep_2 + 386, SE071, 80 );

--ラストキック
SE072 = playSe( spep_2 + 386, 1258 );
setSeVolumeByWorkId( spep_2 + 386, SE072, 45 );
stopSe( spep_2 + 412, SE072, 74 );

--ラストキック
SE073 = playSe( spep_2 + 386, 1123 );
setSeVolumeByWorkId( spep_2 + 386, SE073, 68 );

--ラストキック
SE074 = playSe( spep_2 + 388, 1190 );

--敵地面を転がる
SE075 = playSe( spep_2 + 454, 1116 );
setSeVolumeByWorkId( spep_2 + 454, SE075, 126 );
stopSe( spep_2 + 476, SE075, 18 );

--敵地面を転がる
SE076 = playSe( spep_2 + 458, 1192 );
setSeVolumeByWorkId( spep_2 + 458, SE076, 316 );

--敵地面を転がる
SE077 = playSe( spep_2 + 460, 1044 );
setSeVolumeByWorkId( spep_2 + 460, SE077, 47 );
stopSe( spep_2 + 522, SE077, 12 );

--敵地面を転がる
SE078 = playSe( spep_2 + 474, 1027 );
setSeVolumeByWorkId( spep_2 + 474, SE078, 56 );

--敵地面を転がる
SE079 = playSe( spep_2 + 494, 1192 );
setSeVolumeByWorkId( spep_2 + 494, SE079, 316 );

--岩にドーン
SE080 = playSe( spep_2 + 518, 1023 );
setSeVolumeByWorkId( spep_2 + 518, SE080, 72 );

--岩にドーン
SE081 = playSe( spep_2 + 518, 1033 );
setSeVolumeByWorkId( spep_2 + 518, SE081, 69 ); 

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 574, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 464 );
endPhase( spep_2 + 564 );

end
