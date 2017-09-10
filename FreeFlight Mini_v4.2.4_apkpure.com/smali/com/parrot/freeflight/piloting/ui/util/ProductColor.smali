.class public Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
.super Ljava/lang/Object;
.source "ProductColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/ui/util/ProductColor$Theme;,
        Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;
    }
.end annotation


# static fields
.field private static final THEME_BLAZE:I = 0x2

.field private static final THEME_CLAW_ACCESSORY:I = 0x8

.field private static final THEME_DEFAULT:I = 0xc

.field private static final THEME_GUN_ACCESSORY:I = 0x7

.field private static final THEME_LIGHT_ACCESSORY:I = 0x9

.field private static final THEME_MARS:I = 0x6

.field private static final THEME_MCLANE:I = 0x0

.field private static final THEME_NEWZ:I = 0x1

.field private static final THEME_NO_ACCESSORY:I = 0xa

.field private static final THEME_ORAK:I = 0x5

.field private static final THEME_SWAT:I = 0x4

.field private static final THEME_TRAVIS:I = 0x3

.field private static final THEME_UNKNOWN:I = -0x1

.field private static final THEME_WINGX:I = 0xb


# instance fields
.field private mColorStateList:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCurrentTheme:I

.field private mDroneConnected:Z

.field private final mGamePadFocusColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mMainColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mModel:Lcom/parrot/freeflight/core/model/DelosModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field mOnThemeChangedListener:Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field mProduct:I

.field private mProductBackgroundResId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private final mSliderColorStateList:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTileColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v2, 0x7f0e00ec

    const/4 v1, -0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    .line 90
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mProduct:I

    .line 100
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/util/ProductColor$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor$1;-><init>(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    .line 113
    new-instance v1, Lcom/parrot/freeflight/piloting/ui/util/ProductColor$2;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor$2;-><init>(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 126
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    .line 127
    const v1, 0x7f020226

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mProductBackgroundResId:I

    .line 128
    const v1, 0x7f0e00f3

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    .line 129
    const v1, 0x7f0e00da

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mTileColor:I

    .line 130
    const v1, 0x7f0e0064

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mGamePadFocusColor:I

    .line 131
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getCustomColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 132
    invoke-direct {p0, v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getSliderColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mSliderColorStateList:Landroid/content/res/ColorStateList;

    .line 133
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    .line 134
    .local v0, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 135
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/model/ModelStore;->addListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 136
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->update()Z

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)Lcom/parrot/freeflight/core/model/DelosModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;Lcom/parrot/freeflight/core/model/DelosModel;)Lcom/parrot/freeflight/core/model/DelosModel;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/DelosModel;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)Lcom/parrot/freeflight/core/model/Model$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->update()Z

    move-result v0

    return v0
.end method

.method private getSliderColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 10
    .param p1, "idleColorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 312
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 314
    .local v1, "idleColor":I
    const/4 v3, 0x6

    new-array v2, v3, [[I

    new-array v3, v6, [I

    const v4, 0x101009c

    aput v4, v3, v5

    aput-object v3, v2, v5

    new-array v3, v6, [I

    const v4, -0x101009e

    aput v4, v3, v5

    aput-object v3, v2, v6

    new-array v3, v6, [I

    const v4, 0x10100a1

    aput v4, v3, v5

    aput-object v3, v2, v7

    new-array v3, v6, [I

    const v4, 0x10100a0

    aput v4, v3, v5

    aput-object v3, v2, v8

    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v4, v5, [I

    aput-object v4, v2, v3

    .line 323
    .local v2, "states":[[I
    const/4 v3, 0x6

    new-array v0, v3, [I

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mGamePadFocusColor:I

    aput v3, v0, v5

    aput v1, v0, v6

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    aput v3, v0, v7

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    aput v3, v0, v8

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    aput v3, v0, v9

    const/4 v3, 0x5

    iget v4, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    aput v4, v0, v3

    .line 331
    .local v0, "colors":[I
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private update()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x7

    .line 364
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-nez v2, :cond_1

    move v0, v1

    .line 444
    :cond_0
    :goto_0
    return v0

    .line 367
    :cond_1
    const/4 v0, 0x0

    .line 368
    .local v0, "needUpdate":Z
    iget-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mDroneConnected:Z

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 369
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v2

    iput-boolean v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mDroneConnected:Z

    .line 370
    const/4 v0, 0x1

    .line 372
    :cond_2
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mProduct:I

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DelosModel;->getProductModel()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 373
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DelosModel;->getProductModel()I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mProduct:I

    .line 374
    const/4 v0, 0x1

    .line 376
    :cond_3
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mType:I

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/model/DelosModel;->getType()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 377
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DelosModel;->getType()I

    move-result v2

    iput v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mType:I

    .line 378
    const/4 v0, 0x1

    .line 380
    :cond_4
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    if-eq v2, v6, :cond_5

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DelosModel;->hasLightAccessories()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    if-ne v2, v6, :cond_7

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    .line 381
    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DelosModel;->hasLightAccessories()Z

    move-result v2

    if-nez v2, :cond_7

    .line 382
    :cond_6
    const/4 v0, 0x1

    .line 384
    :cond_7
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    if-eq v2, v5, :cond_8

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DelosModel;->hasClawAccessories()Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    if-ne v2, v5, :cond_a

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    .line 385
    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DelosModel;->hasClawAccessories()Z

    move-result v2

    if-nez v2, :cond_a

    .line 386
    :cond_9
    const/4 v0, 0x1

    .line 388
    :cond_a
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    if-eq v2, v4, :cond_b

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DelosModel;->hasGunAccessories()Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    if-ne v2, v4, :cond_d

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    .line 389
    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DelosModel;->hasGunAccessories()Z

    move-result v2

    if-nez v2, :cond_d

    .line 390
    :cond_c
    const/4 v0, 0x1

    .line 392
    :cond_d
    if-nez v0, :cond_e

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 393
    :cond_e
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mType:I

    if-ne v2, v7, :cond_f

    .line 394
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v2}, Lcom/parrot/freeflight/core/model/DelosModel;->getProductModel()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 421
    const/16 v1, 0xc

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    .line 439
    :goto_1
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->updateThemeElements()V

    .line 440
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mOnThemeChangedListener:Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mOnThemeChangedListener:Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;

    invoke-interface {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;->onThemeChanged()V

    goto/16 :goto_0

    .line 396
    :pswitch_0
    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    goto :goto_1

    .line 399
    :pswitch_1
    iput v7, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    goto :goto_1

    .line 402
    :pswitch_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    goto :goto_1

    .line 405
    :pswitch_3
    const/4 v1, 0x3

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    goto :goto_1

    .line 408
    :pswitch_4
    const/4 v1, 0x4

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    goto :goto_1

    .line 411
    :pswitch_5
    const/4 v1, 0x5

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    goto :goto_1

    .line 414
    :pswitch_6
    const/4 v1, 0x6

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    goto :goto_1

    .line 418
    :pswitch_7
    const/16 v1, 0xb

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    goto :goto_1

    .line 424
    :cond_f
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    .line 425
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->hasLightAccessories()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 426
    iput v6, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    goto :goto_1

    .line 427
    :cond_10
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->hasClawAccessories()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 428
    iput v5, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    goto :goto_1

    .line 429
    :cond_11
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->hasGunAccessories()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 430
    iput v4, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    goto :goto_1

    .line 432
    :cond_12
    const/16 v1, 0xa

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    goto :goto_1

    .line 434
    :cond_13
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 435
    const/16 v1, 0xb

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    goto :goto_1

    .line 437
    :cond_14
    const/16 v1, 0xc

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    goto :goto_1

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private updateThemeElements()V
    .locals 3

    .prologue
    .line 232
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mCurrentTheme:I

    packed-switch v1, :pswitch_data_0

    .line 295
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e00f3

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 296
    .local v0, "mainColor":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e00d8

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mTileColor:I

    .line 297
    const v1, 0x7f02013b

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mProductBackgroundResId:I

    .line 299
    :goto_0
    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    if-eq v1, v0, :cond_0

    .line 300
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    .line 301
    const v1, 0x7f0e00ec

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getCustomColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mColorStateList:Landroid/content/res/ColorStateList;

    .line 303
    :cond_0
    return-void

    .line 234
    .end local v0    # "mainColor":I
    :pswitch_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0091

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 235
    .restart local v0    # "mainColor":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0093

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mTileColor:I

    .line 236
    const v1, 0x7f0201e7

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mProductBackgroundResId:I

    goto :goto_0

    .line 239
    .end local v0    # "mainColor":I
    :pswitch_1
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e009e

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 240
    .restart local v0    # "mainColor":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e00a0

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mTileColor:I

    .line 241
    const v1, 0x7f0201e9

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mProductBackgroundResId:I

    goto :goto_0

    .line 244
    .end local v0    # "mainColor":I
    :pswitch_2
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0015

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 245
    .restart local v0    # "mainColor":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0017

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mTileColor:I

    .line 246
    const v1, 0x7f0201e2

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mProductBackgroundResId:I

    goto :goto_0

    .line 249
    .end local v0    # "mainColor":I
    :pswitch_3
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e00e7

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 250
    .restart local v0    # "mainColor":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e00e9

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mTileColor:I

    .line 251
    const v1, 0x7f0201ec

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mProductBackgroundResId:I

    goto :goto_0

    .line 254
    .end local v0    # "mainColor":I
    :pswitch_4
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e00d1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 255
    .restart local v0    # "mainColor":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e00d3

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mTileColor:I

    .line 256
    const v1, 0x7f0201eb

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mProductBackgroundResId:I

    goto/16 :goto_0

    .line 259
    .end local v0    # "mainColor":I
    :pswitch_5
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e00a3

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 260
    .restart local v0    # "mainColor":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e00a5

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mTileColor:I

    .line 261
    const v1, 0x7f0201ea

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mProductBackgroundResId:I

    goto/16 :goto_0

    .line 264
    .end local v0    # "mainColor":I
    :pswitch_6
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0081

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 265
    .restart local v0    # "mainColor":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0083

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mTileColor:I

    .line 266
    const v1, 0x7f0201e6

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mProductBackgroundResId:I

    goto/16 :goto_0

    .line 269
    .end local v0    # "mainColor":I
    :pswitch_7
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0068

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 270
    .restart local v0    # "mainColor":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0069

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mTileColor:I

    .line 271
    const v1, 0x7f02025a

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mProductBackgroundResId:I

    goto/16 :goto_0

    .line 274
    .end local v0    # "mainColor":I
    :pswitch_8
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0023

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 275
    .restart local v0    # "mainColor":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0024

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mTileColor:I

    .line 276
    const v1, 0x7f020258

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mProductBackgroundResId:I

    goto/16 :goto_0

    .line 279
    .end local v0    # "mainColor":I
    :pswitch_9
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e007e

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 280
    .restart local v0    # "mainColor":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e007f

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mTileColor:I

    .line 281
    const v1, 0x7f02025b

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mProductBackgroundResId:I

    goto/16 :goto_0

    .line 284
    .end local v0    # "mainColor":I
    :pswitch_a
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e00a1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 285
    .restart local v0    # "mainColor":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e00a2

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mTileColor:I

    .line 286
    const v1, 0x7f020259

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mProductBackgroundResId:I

    goto/16 :goto_0

    .line 289
    .end local v0    # "mainColor":I
    :pswitch_b
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e00f1

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 290
    .restart local v0    # "mainColor":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    const v2, 0x7f0e00f2

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mTileColor:I

    .line 291
    const v1, 0x7f02025c

    iput v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mProductBackgroundResId:I

    goto/16 :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 144
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColorStateList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 145
    return-void
.end method

.method public apply(Landroid/widget/Button;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/Button;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintButtonWithStateList(Landroid/widget/Button;Landroid/content/res/ColorStateList;)V

    .line 165
    return-void
.end method

.method public apply(Landroid/widget/CheckBox;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/CheckBox;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintCheckBoxWithStateList(Landroid/widget/CheckBox;Landroid/content/res/ColorStateList;)V

    .line 149
    return-void
.end method

.method public apply(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/EditText;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColorStateList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 161
    return-void
.end method

.method public apply(Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1, "layout"    # Landroid/widget/FrameLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 186
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintLayoutBackground(Landroid/view/ViewGroup;I)V

    .line 187
    return-void
.end method

.method public apply(Landroid/widget/ImageButton;Z)V
    .locals 1
    .param p1, "imageButton"    # Landroid/widget/ImageButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "b"    # Z

    .prologue
    .line 168
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    invoke-static {p1, v0, p2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintButtonDrawable(Landroid/widget/ImageView;IZ)V

    .line 169
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    invoke-static {p1, v0, p2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintButtonBackground(Landroid/widget/ImageView;IZ)V

    .line 170
    return-void
.end method

.method public apply(Landroid/widget/ImageButton;ZZ)V
    .locals 1
    .param p1, "imageButton"    # Landroid/widget/ImageButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "focused"    # Z
    .param p3, "gamePadSelected"    # Z

    .prologue
    .line 173
    if-eqz p3, :cond_0

    .line 174
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    invoke-static {p1, v0, p2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintButtonDrawable(Landroid/widget/ImageView;IZ)V

    .line 175
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mGamePadFocusColor:I

    invoke-static {p1, v0, p2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintButtonBackground(Landroid/widget/ImageView;IZ)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/ImageButton;Z)V

    goto :goto_0
.end method

.method public apply(Landroid/widget/LinearLayout;)V
    .locals 1
    .param p1, "layout"    # Landroid/widget/LinearLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 182
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintLayoutBackground(Landroid/view/ViewGroup;I)V

    .line 183
    return-void
.end method

.method public apply(Landroid/widget/RadioButton;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/RadioButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintRadioButtonWithStateList(Landroid/widget/RadioButton;Landroid/content/res/ColorStateList;)V

    .line 153
    return-void
.end method

.method public apply(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 156
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintTextView(Landroid/widget/TextView;I)V

    .line 157
    return-void
.end method

.method public apply(Lcom/parrot/freeflight/settings/widget/Slider;)V
    .locals 1
    .param p1, "view"    # Lcom/parrot/freeflight/settings/widget/Slider;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mSliderColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintSliderWithStateList(Lcom/parrot/freeflight/settings/widget/Slider;Landroid/content/res/ColorStateList;)V

    .line 141
    return-void
.end method

.method public applyToBackground(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 194
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintImageViewBackground(Landroid/view/View;I)V

    .line 195
    return-void
.end method

.method public applyToBackground(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "color"    # I

    .prologue
    .line 190
    invoke-static {p1, p2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintImageViewBackground(Landroid/view/View;I)V

    .line 191
    return-void
.end method

.method public applyToBackground(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 198
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mColorStateList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintBackgroundColorStateList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 199
    return-void
.end method

.method public applyToDrawable(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 202
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    invoke-static {p1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintImageViewDrawable(Landroid/widget/ImageView;I)V

    .line 203
    return-void
.end method

.method public applyToDrawable(Landroid/widget/ImageView;I)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "color"    # I

    .prologue
    .line 206
    invoke-static {p1, p2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintImageViewDrawable(Landroid/widget/ImageView;I)V

    .line 207
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 456
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModel:Lcom/parrot/freeflight/core/model/DelosModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 459
    :cond_0
    return-void
.end method

.method public getColorStateList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mColorStateList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCustomColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 10
    .param p1, "idleColorRes"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 336
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 338
    .local v1, "idleColor":I
    const/4 v3, 0x6

    new-array v2, v3, [[I

    new-array v3, v6, [I

    const v4, 0x101009c

    aput v4, v3, v5

    aput-object v3, v2, v5

    new-array v3, v6, [I

    const v4, -0x101009e

    aput v4, v3, v5

    aput-object v3, v2, v6

    new-array v3, v6, [I

    const v4, 0x10100a1

    aput v4, v3, v5

    aput-object v3, v2, v7

    new-array v3, v6, [I

    const v4, 0x10100a0

    aput v4, v3, v5

    aput-object v3, v2, v8

    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v4, v5, [I

    aput-object v4, v2, v3

    .line 347
    .local v2, "states":[[I
    const/4 v3, 0x6

    new-array v0, v3, [I

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mGamePadFocusColor:I

    aput v3, v0, v5

    aput v1, v0, v6

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    aput v3, v0, v7

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    aput v3, v0, v8

    iget v3, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    aput v3, v0, v9

    const/4 v3, 0x5

    aput v1, v0, v3

    .line 355
    .local v0, "colors":[I
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mProductBackgroundResId:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mDroneConnected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->convertDrawableToGreyScale(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProductDrawableIcon(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I
    .locals 1
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 307
    const v0, 0x7f020219

    return v0
.end method

.method public getProductMainColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 211
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mMainColor:I

    return v0
.end method

.method public getProductTileColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 216
    iget v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mTileColor:I

    return v0
.end method

.method public setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 448
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mOnThemeChangedListener:Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;

    .line 449
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mOnThemeChangedListener:Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->mOnThemeChangedListener:Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;->onThemeChanged()V

    .line 452
    :cond_0
    return-void
.end method
