.class public Lcom/parrot/freeflight/academy/ProfileActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;,
        Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;,
        Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;
    }
.end annotation


# static fields
.field public static final KEY_EXTRA_OTHER_USER_NAME:Ljava/lang/String; = "other_user_name"

.field private static final MENU_EDIT:I = 0x0

.field private static final MENU_LOGOUT:I = 0x1

.field private static final REQUEST_CODE_EDIT:I = 0x1

.field public static final RESULT_FINISH:I = 0x1


# instance fields
.field private mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

.field private final mAcademyManagerListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAvatarBitmap:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAvatarRequestDone:Z

.field private final mAvatarRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOtherPilotRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOtherUserPilot:Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mOtherUsername:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mPageCount:I

.field private mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPilot:Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mPilotRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRootLayout:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mTabLayout:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    .line 64
    new-instance v0, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/ProfileActivity;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAvatarRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 67
    new-instance v0, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/ProfileActivity;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPilotRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 70
    new-instance v0, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/academy/ProfileActivity$AcademyListener;-><init>(Lcom/parrot/freeflight/academy/ProfileActivity;I)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mOtherPilotRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    .line 73
    new-instance v0, Lcom/parrot/freeflight/academy/ProfileActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/academy/ProfileActivity$1;-><init>(Lcom/parrot/freeflight/academy/ProfileActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManagerListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/academy/ProfileActivity;)Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/academy/ProfileActivity;)Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mOtherUserPilot:Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parrot/freeflight/academy/ProfileActivity;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/ProfileActivity;->onAvatarRequestResponse(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/parrot/freeflight/academy/ProfileActivity;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/ProfileActivity;->onPilotRequestSucceed(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/parrot/freeflight/academy/ProfileActivity;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/academy/ProfileActivity;->onOtherPilotRequestSucceed(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/academy/ProfileActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->applyUiTheme()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/academy/ProfileActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;

    .prologue
    .line 33
    iget v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPageCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/academy/ProfileActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mOtherUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/academy/ProfileActivity;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAvatarBitmap:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/academy/ProfileActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAvatarRequestDone:Z

    return v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/academy/ProfileActivity;)Lcom/parrot/arsdk/aracademy/ARAcademyPilot;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPilot:Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/academy/ProfileActivity;)Lcom/parrot/freeflight/core/academy/AcademyManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    return-object v0
.end method

.method private applyUiTheme()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 372
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductMainColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 373
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getColorStateList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 376
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 378
    :cond_0
    return-void
.end method

.method private onAvatarRequestResponse(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 286
    check-cast p1, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .end local p1    # "result":Ljava/lang/Object;
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAvatarBitmap:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    .line 287
    iput-boolean v2, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAvatarRequestDone:Z

    .line 288
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->getAboutView()Lcom/parrot/freeflight/academy/ProfileAboutView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->getAboutView()Lcom/parrot/freeflight/academy/ProfileAboutView;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAvatarBitmap:Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/academy/ProfileAboutView;->updateAvatar(Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;Z)V

    .line 291
    :cond_0
    return-void
.end method

.method private onOtherPilotRequestSucceed(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 301
    if-eqz p1, :cond_0

    .line 302
    check-cast p1, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    .end local p1    # "result":Ljava/lang/Object;
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mOtherUserPilot:Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    .line 303
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->updateOtherUserInfos()V

    .line 304
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mOtherUserPilot:Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAvatarRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/core/academy/AcademyManager;->requestOtherUserAvatar(Lcom/parrot/arsdk/aracademy/ARAcademyPilot;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 306
    :cond_0
    return-void
.end method

.method private onPilotRequestSucceed(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 294
    check-cast p1, Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    .end local p1    # "result":Ljava/lang/Object;
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPilot:Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    .line 295
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->getAboutView()Lcom/parrot/freeflight/academy/ProfileAboutView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->getAboutView()Lcom/parrot/freeflight/academy/ProfileAboutView;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPilot:Lcom/parrot/arsdk/aracademy/ARAcademyPilot;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/academy/ProfileAboutView;->updatePilotInfos(Lcom/parrot/arsdk/aracademy/ARAcademyPilot;)V

    .line 298
    :cond_0
    return-void
.end method


# virtual methods
.method public getAboutView()Lcom/parrot/freeflight/academy/ProfileAboutView;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;->access$300(Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;)[Lcom/parrot/freeflight/academy/ProfileActivity$ProfileView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/parrot/freeflight/academy/ProfileAboutView;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 197
    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->finish()V

    .line 200
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/academy/AcademyManager;->cancelAllRequests()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 158
    invoke-static {p0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->isResumed(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onBackPressed()V

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->supportFinishAfterTransition()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 84
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 87
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 88
    const-string v5, "other_user_name"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mOtherUsername:Ljava/lang/String;

    .line 91
    :cond_0
    iget-object v5, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mOtherUsername:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-static {p0}, Lcom/parrot/freeflight/util/Screen;->isLargeScreen(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    iput v5, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPageCount:I

    .line 93
    const v5, 0x7f040032

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/academy/ProfileActivity;->setContentView(I)V

    .line 94
    const v5, 0x7f0f015c

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/academy/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mRootLayout:Landroid/view/View;

    .line 95
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    .line 97
    iget-object v5, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mOtherUsername:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 98
    iget-object v5, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v7, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAvatarRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    invoke-virtual {v5, v7}, Lcom/parrot/freeflight/core/academy/AcademyManager;->requestAvatar(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 99
    iget-object v5, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v7, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPilotRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    invoke-virtual {v5, v7}, Lcom/parrot/freeflight/core/academy/AcademyManager;->requestPilot(Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    .line 104
    :goto_1
    const v5, 0x7f0f00da

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/academy/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/Toolbar;

    .line 105
    .local v4, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/academy/ProfileActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 106
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 107
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_1

    .line 108
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 111
    :cond_1
    const v5, 0x7f0f015d

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/academy/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    .line 112
    .local v3, "pager":Landroid/support/v4/view/ViewPager;
    new-instance v5, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v7}, Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;-><init>(Lcom/parrot/freeflight/academy/ProfileActivity;Lcom/parrot/freeflight/academy/ProfileActivity$1;)V

    iput-object v5, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    .line 114
    iget-object v5, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileActivity$ProfilePagerAdapter;

    invoke-virtual {v3, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 116
    const v5, 0x7f0f015e

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/academy/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/TabLayout;

    iput-object v5, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    .line 117
    iget v5, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mPageCount:I

    if-ne v5, v6, :cond_4

    .line 119
    iget-object v5, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 124
    :goto_2
    const v5, 0x7f0f00bb

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/academy/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 126
    .local v1, "backButton":Landroid/widget/ImageButton;
    new-instance v5, Lcom/parrot/freeflight/academy/ProfileActivity$2;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/academy/ProfileActivity$2;-><init>(Lcom/parrot/freeflight/academy/ProfileActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    const v5, 0x7f0f00b3

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/academy/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 134
    new-instance v5, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 135
    iget-object v5, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v6, Lcom/parrot/freeflight/academy/ProfileActivity$3;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/academy/ProfileActivity$3;-><init>(Lcom/parrot/freeflight/academy/ProfileActivity;)V

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 141
    return-void

    .line 91
    .end local v0    # "actionBar":Landroid/support/v7/app/ActionBar;
    .end local v1    # "backButton":Landroid/widget/ImageButton;
    .end local v3    # "pager":Landroid/support/v4/view/ViewPager;
    .end local v4    # "toolbar":Landroid/support/v7/widget/Toolbar;
    :cond_2
    const/4 v5, 0x2

    goto/16 :goto_0

    .line 101
    :cond_3
    iget-object v5, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v7, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mOtherUsername:Ljava/lang/String;

    iget-object v8, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mOtherPilotRequestListener:Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;

    invoke-virtual {v5, v7, v8}, Lcom/parrot/freeflight/core/academy/AcademyManager;->requestPilotByUsername(Ljava/lang/String;Lcom/parrot/freeflight/core/academy/AcademyManager$AcademyRequestListener;)V

    goto/16 :goto_1

    .line 122
    .restart local v0    # "actionBar":Landroid/support/v7/app/ActionBar;
    .restart local v3    # "pager":Landroid/support/v4/view/ViewPager;
    .restart local v4    # "toolbar":Landroid/support/v7/widget/Toolbar;
    :cond_4
    iget-object v5, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v5, v3}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 164
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mOtherUsername:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 165
    const v2, 0x7f08047f

    invoke-interface {p1, v1, v1, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 166
    const v2, 0x7f080499

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 169
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 365
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 366
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 367
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 368
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 174
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    .line 176
    :pswitch_0
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/google/Analytic;->trackMainMyFlightsConncetedOkProfilEdition()V

    .line 177
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/parrot/freeflight/academy/ProfileEditActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, v0}, Lcom/parrot/freeflight/academy/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->disconnect()V

    .line 181
    invoke-static {}, Lcom/parrot/freeflight/google/Analytic;->getInstance()Lcom/parrot/freeflight/google/Analytic;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/google/Analytic;->trackMainMyFlightsConncetedOkProfilDeconnection()V

    .line 183
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getMediaManager()Lcom/parrot/freeflight/core/academy/MediaManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/MediaManager;->disconnect()V

    .line 185
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/parrot/freeflight/academy/AcademyLogInActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/academy/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    .line 186
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileActivity;->finish()V

    goto :goto_0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStart()V

    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManagerListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->registerListener(Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;)V

    .line 147
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManager:Lcom/parrot/freeflight/core/academy/AcademyManager;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileActivity;->mAcademyManagerListener:Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->unregisterListener(Lcom/parrot/freeflight/core/academy/AcademyManager$Listener;)V

    .line 152
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStop()V

    .line 153
    return-void
.end method
