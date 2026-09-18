-- アクションバンク位置戻す用スクリプト
setPhase(0);
removeAllEffect(0);
setTriggerGaugeVisible(0, 0);

-- 効果演出カットインを偶数・奇数で切り替える
efficacy_count = getEfficacyCutInCount();
if efficacy_count % 2 == 0 then
    -- 偶数
    efficacy_cutin = entryEffectLife(  0,   1606,  60,  0x100,  -1,  0,  0,  350);
else
    -- 奇数
    efficacy_cutin = entryEffectLife(  0,   1605,  60,  0x100,  -1,  0,  0,  350);
end

setEffScaleKey( 0, efficacy_cutin, 1.0, 1.0);
setEffAlphaKey( 0, efficacy_cutin, 255);
showEfficacyCutinLabel(); -- 効果演出カットインのテキストを表示

-- 効果演出カットインのテクスチャを差し替える
if efficacy_count == 1 then
    setEffReplaceTextureByFilename(  efficacy_cutin, 3,  getEfficacyCutInPath(  0));
    setEffReplaceTextureByFilename(  efficacy_cutin, 13, getEfficacyCutInFramePath(  0));
elseif efficacy_count == 2 then
    setEffReplaceTextureByFilename(  efficacy_cutin, 3,  getEfficacyCutInPath(  0));
    setEffReplaceTextureByFilename(  efficacy_cutin, 13, getEfficacyCutInFramePath(  0));
    setEffReplaceTextureByFilename(  efficacy_cutin, 4,  getEfficacyCutInPath(  1));
    setEffReplaceTextureByFilename(  efficacy_cutin, 14, getEfficacyCutInFramePath(  0));
elseif efficacy_count == 3 then
    setEffReplaceTextureByFilename(  efficacy_cutin, 4,  getEfficacyCutInPath(  0));
    setEffReplaceTextureByFilename(  efficacy_cutin, 14, getEfficacyCutInFramePath(  0));
    setEffReplaceTextureByFilename(  efficacy_cutin, 3,  getEfficacyCutInPath(  1));
    setEffReplaceTextureByFilename(  efficacy_cutin, 13, getEfficacyCutInFramePath(  0));
    setEffReplaceTextureByFilename(  efficacy_cutin, 5,  getEfficacyCutInPath(  2));
    setEffReplaceTextureByFilename(  efficacy_cutin, 15, getEfficacyCutInFramePath(  0));
elseif efficacy_count == 4 then
    setEffReplaceTextureByFilename(  efficacy_cutin, 5,  getEfficacyCutInPath(  0));
    setEffReplaceTextureByFilename(  efficacy_cutin, 15, getEfficacyCutInFramePath(  0));
    setEffReplaceTextureByFilename(  efficacy_cutin, 3,  getEfficacyCutInPath(  1));
    setEffReplaceTextureByFilename(  efficacy_cutin, 13, getEfficacyCutInFramePath(  0));
    setEffReplaceTextureByFilename(  efficacy_cutin, 4,  getEfficacyCutInPath(  2));
    setEffReplaceTextureByFilename(  efficacy_cutin, 14, getEfficacyCutInFramePath(  0));
    setEffReplaceTextureByFilename(  efficacy_cutin, 6,  getEfficacyCutInPath(  3));
    setEffReplaceTextureByFilename(  efficacy_cutin, 16, getEfficacyCutInFramePath(  0));
elseif efficacy_count == 5 then
    setEffReplaceTextureByFilename(  efficacy_cutin, 6,  getEfficacyCutInPath(  0));
    setEffReplaceTextureByFilename(  efficacy_cutin, 16, getEfficacyCutInFramePath(  0));
    setEffReplaceTextureByFilename(  efficacy_cutin, 4,  getEfficacyCutInPath(  1));
    setEffReplaceTextureByFilename(  efficacy_cutin, 14, getEfficacyCutInFramePath(  0));
    setEffReplaceTextureByFilename(  efficacy_cutin, 3,  getEfficacyCutInPath(  2));
    setEffReplaceTextureByFilename(  efficacy_cutin, 13, getEfficacyCutInFramePath(  0));
    setEffReplaceTextureByFilename(  efficacy_cutin, 5,  getEfficacyCutInPath(  3));
    setEffReplaceTextureByFilename(  efficacy_cutin, 15, getEfficacyCutInFramePath(  0));
    setEffReplaceTextureByFilename(  efficacy_cutin, 7,  getEfficacyCutInPath(  4));
    setEffReplaceTextureByFilename(  efficacy_cutin, 17, getEfficacyCutInFramePath(  0));
end

cutin = entryEffect(  0,   1504,   0x100,     -1,  0,  5,  0);   -- eff_005 (カットイン)  ←ここの1504を別番号にすればカットインLWF差し替えます
setEffMoveKey( 0,  cutin,  0,  -280,  0);
setEffReplaceTexture( cutin, 3, 2);                           -- カットイン差し替え

setMoveKey(  0,  0,      -2000,    0,   0);   -- 味方キャラを画面外に移動
setMoveKey(  0,  1,      -2000,    0,   0);   -- 敵キャラを画面外に移動
setLastPosKey(  0,  0);
setLastPosKey(  0,  1);

playSe(0,1042);
changeAnime(  0,  0,  0);
changeAnime(  0,  1,  101);

entryFadeBg( 0, 0, 30, 20, 10, 10, 10, 180);       -- ベース暗め　背景

removeAllEffect(60);
setTriggerGaugeVisible(60, 1);

endPhase(60);
