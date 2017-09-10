.class public Lcom/parrot/freeflight/academy/MyFlightsActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "MyFlightsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;
    }
.end annotation


# instance fields
.field private mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

.field private mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

.field private final mAcademyManagerListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAdapter:Lcom/parrot/freeflight/academy/MyFlightsAdapter;

.field private final mAvatarRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCrashCountImageView:Landroid/widget/ImageView;

.field private final mFlightsRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHourMinuteSecondStringFormat:Ljava/lang/String;

.field private final mItemDeleteListener:Lcom/parrot/freeflight/academy/MyFlightsAdapter$OnDeleteListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMediaListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMinuteSecondStringFormat:Ljava/lang/String;

.field private mMyFlightsAvatarImageView:Landroid/widget/ImageView;

.field private mMyFlightsListView:Lcom/parrot/freeflight/academy/widget/SwipeListView;

.field private mMyFlightsNumberOfCrashesTextView:Landroid/widget/TextView;

.field private mMyFlightsTimeTextView:Landroid/widget/TextView;

.field private mMyFlightsUsernameOrLoginTextView:Landroid/widget/TextView;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRootLayout:Landroid/view/View;

.field private mSecondStringFormat:Ljava/lang/String;

.field private mStatusBar:Landroid/view/View;

.field private mTimeImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    .line 70
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getMediaManager()Lcom/parrot/freeflight/core/academy/MediaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    .line 75
    new-instance v0, Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAvatarRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 78
    new-instance v0, Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/academy/MyFlightsActivity$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mFlightsRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 81
    new-instance v0, Lcom/parrot/freeflight/academy/MyFlightsActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity$1;-><init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManagerListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    .line 89
    new-instance v0, Lcom/parrot/freeflight/academy/MyFlightsActivity$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity$2;-><init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mItemDeleteListener:Lcom/parrot/freeflight/academy/MyFlightsAdapter$OnDeleteListener;

    .line 105
    new-instance v0, Lcom/parrot/freeflight/academy/MyFlightsActivity$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity$3;-><init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMediaListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->updateProfileInfos()V

    return-void
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mFlightsRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Lcom/parrot/freeflight/academy/widget/SwipeListView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsListView:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/academy/MyFlightsActivity;)Lcom/parrot/freeflight/academy/MyFlightsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAdapter:Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->updatePilotInfos()V

    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->applyUiTheme()V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/academy/MyFlightsActivity;Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;
    .param p1, "x1"    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->avatarRequestSucceed(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/academy/MyFlightsActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/MyFlightsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->myFlightsRequestSucceed(Ljava/util/List;)V

    return-void
.end method

.method private applyUiTheme()V
    .locals 3

    .prologue
    .line 372
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mRootLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 373
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mStatusBar:Landroid/view/View;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v2}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductTileColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 374
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsListView:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 375
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 376
    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 378
    :cond_0
    return-void
.end method

.method private avatarRequestSucceed(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;)V
    .locals 1
    .param p1, "result"    # Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 307
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsAvatarImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    return-void
.end method

.method private myFlightsRequestSucceed(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRun;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/aracademy/ARAcademyRun;>;"
    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAdapter:Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->clear()V

    .line 316
    invoke-static {}, Lcom/parrot/freeflight/utils/ProductsUtils;->getSupportedProductList()Ljava/util/List;

    move-result-object v1

    .line 317
    .local v1, "supportedProducts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    .line 318
    .local v0, "run":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getProductId()I

    move-result v3

    invoke-static {v3}, Lcom/parrot/arsdk/ardiscovery/ARDiscoveryService;->getProductFromProductID(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAdapter:Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 322
    .end local v0    # "run":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAdapter:Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    invoke-virtual {v2}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->notifyDataSetChanged()V

    .line 324
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->updatePilotInfos()V

    .line 325
    return-void
.end method

.method private updatePilotInfos()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 228
    const-wide/16 v8, 0x0

    .line 229
    .local v8, "timeTotal":D
    const/4 v1, 0x0

    .line 231
    .local v1, "crashCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v7, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAdapter:Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    invoke-virtual {v7}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getCount()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 232
    iget-object v7, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAdapter:Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    invoke-virtual {v7, v4}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    .line 233
    .local v0, "academyRun":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getTotalRunTime()I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    int-to-double v10, v7

    add-double/2addr v8, v10

    .line 235
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getCrash()I

    move-result v7

    add-int/2addr v1, v7

    .line 231
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "academyRun":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :cond_1
    const-wide v10, 0x40ac200000000000L    # 3600.0

    div-double v10, v8, v10

    double-to-int v3, v10

    .line 242
    .local v3, "hours":I
    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    div-double v10, v8, v10

    double-to-int v7, v10

    rem-int/lit8 v5, v7, 0x3c

    .line 243
    .local v5, "minutes":I
    double-to-int v7, v8

    rem-int/lit8 v6, v7, 0x3c

    .line 245
    .local v6, "seconds":I
    if-lez v3, :cond_2

    .line 246
    iget-object v7, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mHourMinuteSecondStringFormat:Ljava/lang/String;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v14

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "durationString":Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v7, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsNumberOfCrashesTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080353

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    return-void

    .line 247
    .end local v2    # "durationString":Ljava/lang/String;
    :cond_2
    if-lez v5, :cond_3

    .line 248
    iget-object v7, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMinuteSecondStringFormat:Ljava/lang/String;

    new-array v10, v14, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "durationString":Ljava/lang/String;
    goto :goto_1

    .line 250
    .end local v2    # "durationString":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mSecondStringFormat:Ljava/lang/String;

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "durationString":Ljava/lang/String;
    goto :goto_1
.end method

.method private updateProfileInfos()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/academy/AcademyManager;->getProfile()Lcom/parrot/arsdk/aracademy/ARAcademyProfile;

    move-result-object v1

    .line 208
    .local v1, "profile":Lcom/parrot/arsdk/aracademy/ARAcademyProfile;
    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsAvatarImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    if-eqz v1, :cond_1

    .line 210
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyProfile;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v0

    .line 211
    .local v0, "mProfileUser":Lcom/parrot/arsdk/aracademy/ARAcademyUser;
    iget-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsUsernameOrLoginTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->getUsername()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsUsernameOrLoginTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 213
    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v4, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAvatarRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/core/academy/AcademyManager;->requestAvatar(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 220
    .end local v0    # "mProfileUser":Lcom/parrot/arsdk/aracademy/ARAcademyUser;
    :goto_1
    if-eqz v1, :cond_2

    .line 221
    .local v2, "visible":I
    :goto_2
    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mTimeImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mCrashCountImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsNumberOfCrashesTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    return-void

    .line 211
    .end local v2    # "visible":I
    .restart local v0    # "mProfileUser":Lcom/parrot/arsdk/aracademy/ARAcademyUser;
    :cond_0
    const-string v3, ""

    goto :goto_0

    .line 217
    .end local v0    # "mProfileUser":Lcom/parrot/arsdk/aracademy/ARAcademyUser;
    :cond_1
    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsUsernameOrLoginTextView:Landroid/widget/TextView;

    const v4, 0x7f080365

    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v3, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsUsernameOrLoginTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0097

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 220
    :cond_2
    const/4 v2, 0x4

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v13, 0x7f0e0006

    const v10, 0x7f0a0087

    const/4 v12, 0x1

    .line 115
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v9, 0x7f04002e

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->setContentView(I)V

    .line 118
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v9

    iput-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    .line 120
    const v9, 0x7f0f0124

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mRootLayout:Landroid/view/View;

    .line 121
    const v9, 0x7f0f0127

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 122
    .local v7, "titleTextView":Landroid/widget/TextView;
    const v9, 0x7f0f0129

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mStatusBar:Landroid/view/View;

    .line 123
    const v9, 0x7f0f0126

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 124
    .local v0, "backButton":Landroid/widget/ImageButton;
    const v9, 0x7f0f012b

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsUsernameOrLoginTextView:Landroid/widget/TextView;

    .line 125
    const v9, 0x7f0f012d

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsTimeTextView:Landroid/widget/TextView;

    .line 126
    const v9, 0x7f0f012f

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsNumberOfCrashesTextView:Landroid/widget/TextView;

    .line 127
    const v9, 0x7f0f012a

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsAvatarImageView:Landroid/widget/ImageView;

    .line 128
    const v9, 0x7f0f0130

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/parrot/freeflight/academy/widget/SwipeListView;

    iput-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsListView:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    .line 129
    const v9, 0x7f0f012c

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mTimeImageView:Landroid/widget/ImageView;

    .line 130
    const v9, 0x7f0f012e

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mCrashCountImageView:Landroid/widget/ImageView;

    .line 132
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 133
    .local v5, "resources":Landroid/content/res/Resources;
    const v9, 0x7f020063

    invoke-static {v5, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 134
    .local v2, "defaultAvatar":Landroid/graphics/Bitmap;
    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v1, v9

    .line 135
    .local v1, "bitmapSize":I
    invoke-static {v2, v1, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 136
    invoke-static {v5, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v9

    iput-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 137
    iget-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 138
    iget-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v9, v12}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 139
    iget-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v9, v12}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setDither(Z)V

    .line 140
    iget-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsAvatarImageView:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyDefaultAvatar:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-static {p0, v7}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 143
    iget-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsTimeTextView:Landroid/widget/TextView;

    invoke-static {p0, v9}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 144
    iget-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsNumberOfCrashesTextView:Landroid/widget/TextView;

    invoke-static {p0, v9}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 145
    iget-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsUsernameOrLoginTextView:Landroid/widget/TextView;

    invoke-static {p0, v9}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 147
    const v9, 0x7f080367

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "hourStr":Ljava/lang/String;
    const v9, 0x7f080368

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "minStr":Ljava/lang/String;
    const v9, 0x7f08036a

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, "secStr":Ljava/lang/String;
    new-instance v9, Lcom/parrot/freeflight/academy/MyFlightsActivity$4;

    invoke-direct {v9, p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity$4;-><init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mTimeImageView:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mTimeImageView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {p0, v10, v13}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mCrashCountImageView:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mCrashCountImageView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {p0, v10, v13}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mHourMinuteSecondStringFormat:Ljava/lang/String;

    .line 164
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMinuteSecondStringFormat:Ljava/lang/String;

    .line 165
    iput-object v6, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mSecondStringFormat:Ljava/lang/String;

    .line 167
    new-instance v9, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 168
    iget-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v10, Lcom/parrot/freeflight/academy/MyFlightsActivity$5;

    invoke-direct {v10, p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity$5;-><init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V

    invoke-virtual {v9, v10}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 174
    new-instance v9, Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mItemDeleteListener:Lcom/parrot/freeflight/academy/MyFlightsAdapter$OnDeleteListener;

    invoke-direct {v9, v10, v11}, Lcom/parrot/freeflight/academy/MyFlightsAdapter;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/academy/MyFlightsAdapter$OnDeleteListener;)V

    iput-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAdapter:Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    .line 175
    iget-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsListView:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    iget-object v10, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAdapter:Lcom/parrot/freeflight/academy/MyFlightsAdapter;

    invoke-virtual {v9, v10}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    iget-object v9, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMyFlightsListView:Lcom/parrot/freeflight/academy/widget/SwipeListView;

    new-instance v10, Lcom/parrot/freeflight/academy/MyFlightsActivity$6;

    invoke-direct {v10, p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity$6;-><init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V

    invoke-virtual {v9, v10}, Lcom/parrot/freeflight/academy/widget/SwipeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 191
    const v9, 0x7f0f0128

    invoke-virtual {p0, v9}, Lcom/parrot/freeflight/academy/MyFlightsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 192
    .local v8, "userInfoBar":Landroid/view/View;
    if-eqz v8, :cond_0

    .line 193
    new-instance v9, Lcom/parrot/freeflight/academy/MyFlightsActivity$7;

    invoke-direct {v9, p0}, Lcom/parrot/freeflight/academy/MyFlightsActivity$7;-><init>(Lcom/parrot/freeflight/academy/MyFlightsActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 366
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 367
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 368
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 369
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMediaListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->unregisterListener(Lcom/parrot/freeflight/core/academy/MediaManager$IListener;)V

    .line 297
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onPause()V

    .line 298
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 290
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onResume()V

    .line 291
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMediaManager:Lcom/parrot/freeflight/core/academy/MediaManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mMediaListener:Lcom/parrot/freeflight/core/academy/MediaManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->registerListener(Lcom/parrot/freeflight/core/academy/MediaManager$IListener;)V

    .line 292
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManagerListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->registerListener(Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;)V

    .line 284
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->syncRunList()V

    .line 285
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStart()V

    .line 286
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/MyFlightsActivity;->mAcademyManagerListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->unregisterListener(Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;)V

    .line 303
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStop()V

    .line 304
    return-void
.end method
