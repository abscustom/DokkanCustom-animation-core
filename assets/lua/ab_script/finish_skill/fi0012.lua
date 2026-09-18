-- 4029100: LR_ジレン_フィニッシュ(失敗)：呼び起こされるトラウマ
-- sp_effect_b4_00338
-- fi0012

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162970; -- ef_001 口元だけが見える～正面で構える

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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
           skipFrame(0, spep_0 + 52 -13 );        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 264 -1 );      -- スキップ先フレーム指定

           --「負けたら全てを失ってしまうことになる」
           playVoice( spep_0 + 264, 807 );
           setVoiceVolume( spep_0 + 264, 807, 100 );

       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

--はじめの準備
spep_0 = 0;

------------------------------------------------------
-- フィニッシュ演出
------------------------------------------------------

MAX_FRAME_0 = 578;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); --口元だけが見える～正面で構える (ef_001)
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_f, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0 );
setEffAlphaKey( spep_0 + 0, base_f, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景
 
-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--くいしばる
SE002 = playSeVer2( spep_0 + 4, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 68 );
SE003 = playSeVer2( spep_0 + 4, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 79 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 52 ; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);

pauseAll( SP_dodge, 67);   
 
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--セリフカットイン
SE004 = playSeVer2( spep_0 + 56, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE004, 63 );

--腕を引く
SE005 = playSeVer2( spep_0 + 118, 1003, "", 0, 0, 0, -1);

--腕で制す
SE006 = playSeVer2( spep_0 + 160, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE006, 138 );
SE007 = playSeVer2( spep_0 + 166, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE007, 56 );

--ズーム
SE008 = playSeVer2( spep_0 + 284, 1072, "", 0, 0, 0, -1);

--過去
SE009 = playSeVer2( spep_0 + 330, 1229, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE009, 124 );
SE010 = playSeVer2( spep_0 + 330, 1226, "",spep_0 + 572, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 330, SE010, 63 );
SE011 = playSeVer2( spep_0 + 344, 1268, "",spep_0 + 566, 0, 30, -1);

--構える
SE012 = playSeVer2( spep_0 + 536, 1233, "", 0, 0, 0, -1);
setPitch( spep_0 + 536, SE012, -400 );
setTimeStretch( SE012, 0.73, 30, 4 );
SE013 = playSeVer2( spep_0 + 544, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 544, SE013, 75 );

-- ** ボイス ** --
--「俺は負けん!!負けるはずがない!!」
playVoice( spep_0 + 56, 806 );
setVoiceVolume( spep_0 + 56, 806, 100 );

--「負けたら全てを失ってしまうことになる」
playVoice( spep_0 + 250, 807 );
setVoiceVolume( spep_0 + 250, 807, 100 );

-- ** ダメージ表示 ** --
-- hideKoScreen();
-- dealDamage( spep_0 + 470 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 578

end