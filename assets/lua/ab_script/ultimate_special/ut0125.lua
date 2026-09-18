--1033820:UR_超サイヤ人ゴッド孫悟空_アクティブ必殺：限界突破かめはめ波
--sp_effect_a1_00530
--ut0125

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164479; --スタート〜KO ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

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

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1) then

        spep_0 = 0;

       if(_IS_DODGE_ == 1) then

           skipFrame(0, spep_0 + 314 - 13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 314 - 13, SP_01, spep_0 + 314 - 13 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

       else

           skipFrame(0, spep_0 + 496 );  -- スキップ先フレーム指定
           setupMovie(spep_0 + 496, SP_01, spep_0 + 496 -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

           -- ** 音 ** --
           --オーラ
           SE003 = playSeVer2( spep_0 + 496 + 1, 1407, "",spep_0 + 532, 0, 138, -1);
           setSeVolumeByWorkId( spep_0 + 496 + 1, SE003, 153 );
           SE013 = playSeVer2( spep_0 + 496 + 1, 1176, "",spep_0 + 548, 0, 30, -1);
           setSeVolumeByWorkId( spep_0 + 496 + 1, SE013, 122 );

           --かめはめ波溜め
           SE011 = playSeVer2( spep_0 + 496 + 1, 1210, "",spep_0 + 556, 10, 26, -1);
           setStartTimeMs( SE011,  2233 );
           SE014 = playSeVer2( spep_0 + 496 + 1, 1209, "", 0, 0, 0, -1);

       end

    else 

      setupMovie(0, SP_01, 0, 1);  -- スキップしない時の通常再生時用のsetupMovie関数

    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;
 
 
-------------------------------------------------
-- スタート〜KO
-------------------------------------------------

MAX_FRAME_0 = 836;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- スタート〜KO(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 216 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 322 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 216 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 216 + OFFSET_X, 1, 257.5, 112 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 257.5, 112 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 257.3, 96.8 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 257.3, 96.8 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 257, 131.5 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 257, 131.5 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 261, 92.7 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 261, 92.7 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 260.3, 140.3 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 260.3, 140.3 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 257.9, 87.5 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 257.9, 87.5 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 256.6, 132.8 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 256.6, 132.8 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 256.9, 95.8 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 256.9, 95.8 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 259, 121.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 259, 121.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 256.3, 104.8 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 256.3, 104.8 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 258.5, 119.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 258.5, 119.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 256.9, 105.3 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 256.9, 105.3 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 257.3, 115.1 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 257.3, 115.1 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 257.3, 108.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 257.3, 108.1 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 258.3, 114.1 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 258.3, 114.1 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 258.3, 106.1 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 258.3, 106.1 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 258.3, 111.1 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 258.3, 111.1 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 259.3, 105.1 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 259.3, 105.1 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 259.3, 112.1 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 259.3, 112.1 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 257.3, 106.1 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 257.3, 106.1 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 257.5, 112 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 257.5, 112 , 0 );

setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_0 + 216 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 288, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 40 );
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 434, 0, 44, -1);
SE003 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 532, 0, 138, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 153 );

--セリフカットイン
SE004 = playSeVer2( spep_0 + 24, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 63 );

--拳握る
SE005 = playSeVer2( spep_0 + 108, 1233, "", 0, 0, 0, -1);

--光たちのぼる
SE006 = playSeVer2( spep_0 + 214, 1440, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 214, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 214, SE007, 162 );
SE008 = playSeVer2( spep_0 + 214, 1360, "", 0, 0, 0, -1);

--気ダメ
SE009 = playSeVer2( spep_0 + 244, 1035, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 244, 1503, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 254, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE012, 71 );

--オーラ
SE013 = playSeVer2( spep_0 + 280, 1176, "",spep_0 + 548, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 280, SE013, 122 );


-- ** ボイス ** --
--「オラひとりじゃ来れなかった世界だ…」
playVoice( spep_0 + 26, 1199 );
setVoiceVolume( spep_0 + 26, 1199, 122 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 314; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end
-----------------------------
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--かめはめ波溜め
SE011 = playSeVer2( spep_0 + 380, 1210, "",spep_0 + 556, 10, 26, -1);
setStartTimeMs( SE011,  2233 );
SE014 = playSeVer2( spep_0 + 380, 1209, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 514, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 514, SE015, 58 );
SE016 = playSeVer2( spep_0 + 514, 1146, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 514, 1223, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 514, 1027, "", 0, 0, 0, -1);

--かめはめ波中
SE019 = playSeVer2( spep_0 + 576, 1176, "",spep_0 + 816, 0, 58, -1);
SE020 = playSeVer2( spep_0 + 576, 1211, "",spep_0 + 820, 0, 66, -1);
SE021 = playSeVer2( spep_0 + 576, 1188, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 576, 1161, "",spep_0 + 784, 0, 46, -1);
SE023 = playSeVer2( spep_0 + 576, 1356, "",spep_0 + 768, 0, 34, -1);

--爆発
SE024 = playSeVer2( spep_0 + 722, 1159, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 738, 1067, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「本気でいかせてもらうぞ！」
playVoice( spep_0 + 302, 1200 );
setVoiceVolume( spep_0 + 302, 1200, 122 );

--「波ーーーっ！！！！」
playVoice( spep_0 + 502, 1201 );
setVoiceVolume( spep_0 + 502, 1201, 122 );


--終わり
hideKoScreen();
fadeKoLabel(0,0.5);
dealDamage( spep_0 + 718);
endPhase( spep_0 + MAX_FRAME_0); -- 836f (KO時 980f)

else end