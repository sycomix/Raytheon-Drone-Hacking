.class public Lcom/parrot/freeflight/academy/ProfileEditActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "ProfileEditActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/academy/ProfileEditController$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/academy/ProfileEditActivity$ActivityResultListener;,
        Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditView;,
        Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;
    }
.end annotation


# static fields
.field private static final CONTROLLER_TAG:Ljava/lang/String; = "controller"

.field private static final PAGE_COUNT:I = 0x7

.field private static final SOCIAL_NETWORK_POSITION:I = 0x4


# instance fields
.field private mController:Lcom/parrot/freeflight/academy/ProfileEditController;

.field private mHeaderTitle:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLastActivityResultListener:Lcom/parrot/freeflight/academy/ProfileEditActivity$ActivityResultListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mLastRequestCode:I

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;
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

.field private mSaveButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSaveProgress:Landroid/widget/ProgressBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mState:Lcom/parrot/freeflight/academy/ProfileEditController$State;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    .line 48
    sget-object v0, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_DEFAULT:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    iput-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mState:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/academy/ProfileEditController$State;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mState:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Lcom/parrot/freeflight/academy/ProfileEditController;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mController:Lcom/parrot/freeflight/academy/ProfileEditController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mHeaderTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parrot/freeflight/academy/ProfileEditActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parrot/freeflight/academy/ProfileEditActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/academy/ProfileEditActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->applyUiTheme()V

    return-void
.end method

.method private applyUiTheme()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 320
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->applyUiTheme()V

    .line 321
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 291
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 292
    iget v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mLastRequestCode:I

    if-ne p1, v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mLastActivityResultListener:Lcom/parrot/freeflight/academy/ProfileEditActivity$ActivityResultListener;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mLastActivityResultListener:Lcom/parrot/freeflight/academy/ProfileEditActivity$ActivityResultListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/parrot/freeflight/academy/ProfileEditActivity$ActivityResultListener;->onActivityResult(IILandroid/content/Intent;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mController:Lcom/parrot/freeflight/academy/ProfileEditController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/academy/ProfileEditController;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "controller"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/parrot/freeflight/academy/ProfileEditController;

    iput-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mController:Lcom/parrot/freeflight/academy/ProfileEditController;

    .line 61
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mController:Lcom/parrot/freeflight/academy/ProfileEditController;

    if-nez v2, :cond_0

    .line 62
    new-instance v2, Lcom/parrot/freeflight/academy/ProfileEditController;

    invoke-direct {v2}, Lcom/parrot/freeflight/academy/ProfileEditController;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mController:Lcom/parrot/freeflight/academy/ProfileEditController;

    .line 63
    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mController:Lcom/parrot/freeflight/academy/ProfileEditController;

    const-string v4, "controller"

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 66
    :cond_0
    const v2, 0x7f040034

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->setContentView(I)V

    .line 68
    const v2, 0x7f0f015f

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mRootLayout:Landroid/view/View;

    .line 69
    const v2, 0x7f0f00b3

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mHeaderTitle:Landroid/widget/TextView;

    .line 70
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mHeaderTitle:Landroid/widget/TextView;

    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 72
    const v2, 0x7f0f00bb

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 74
    .local v0, "backButton":Landroid/widget/ImageButton;
    new-instance v2, Lcom/parrot/freeflight/academy/ProfileEditActivity$1;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/academy/ProfileEditActivity$1;-><init>(Lcom/parrot/freeflight/academy/ProfileEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v2, 0x7f0f0161

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mSaveButton:Landroid/widget/Button;

    .line 82
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mSaveButton:Landroid/widget/Button;

    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 83
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mSaveButton:Landroid/widget/Button;

    new-instance v3, Lcom/parrot/freeflight/academy/ProfileEditActivity$2;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/academy/ProfileEditActivity$2;-><init>(Lcom/parrot/freeflight/academy/ProfileEditActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v2, 0x7f0f0160

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mSaveProgress:Landroid/widget/ProgressBar;

    .line 101
    const v2, 0x7f0f015d

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 102
    const v2, 0x7f0f0162

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/view/ViewPagerIndicator;

    .line 104
    .local v1, "viewPagerIndicator":Lcom/parrot/freeflight/view/ViewPagerIndicator;
    new-instance v2, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;-><init>(Lcom/parrot/freeflight/academy/ProfileEditActivity;Lcom/parrot/freeflight/academy/ProfileEditActivity$1;)V

    iput-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;

    .line 105
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 107
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/parrot/freeflight/academy/ProfileEditActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/parrot/freeflight/academy/ProfileEditActivity$3;-><init>(Lcom/parrot/freeflight/academy/ProfileEditActivity;Lcom/parrot/freeflight/view/ViewPagerIndicator;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 136
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/view/ViewPagerIndicator;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 137
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {p0}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 138
    iget-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v3, Lcom/parrot/freeflight/academy/ProfileEditActivity$4;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/academy/ProfileEditActivity$4;-><init>(Lcom/parrot/freeflight/academy/ProfileEditActivity;)V

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 145
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 146
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 163
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->access$200(Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;)V

    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->clearOnPageChangeListeners()V

    .line 165
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 166
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStart()V

    .line 151
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mController:Lcom/parrot/freeflight/academy/ProfileEditController;

    invoke-virtual {v0, p0}, Lcom/parrot/freeflight/academy/ProfileEditController;->registerListener(Lcom/parrot/freeflight/academy/ProfileEditController$StateListener;)V

    .line 152
    return-void
.end method

.method public onStateChanged(Lcom/parrot/freeflight/academy/ProfileEditController$State;)V
    .locals 5
    .param p1, "state"    # Lcom/parrot/freeflight/academy/ProfileEditController$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 264
    iput-object p1, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mState:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    .line 265
    sget-object v0, Lcom/parrot/freeflight/academy/ProfileEditActivity$5;->$SwitchMap$com$parrot$freeflight$academy$ProfileEditController$State:[I

    invoke-virtual {p1}, Lcom/parrot/freeflight/academy/ProfileEditController$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 278
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mSaveButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;

    iget-object v4, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->isSaveButtonDisplayed(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mSaveProgress:Landroid/widget/ProgressBar;

    sget-object v3, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_SAVING:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    if-eq p1, v3, :cond_0

    sget-object v3, Lcom/parrot/freeflight/academy/ProfileEditController$State;->STATE_CANCELING:Lcom/parrot/freeflight/academy/ProfileEditController$State;

    if-ne p1, v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mPagerAdapter:Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;->access$1100(Lcom/parrot/freeflight/academy/ProfileEditActivity$ProfileEditPagerAdapter;)V

    .line 281
    return-void

    .line 267
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mSaveButton:Landroid/widget/Button;

    const v3, 0x7f08048d

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 270
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mSaveButton:Landroid/widget/Button;

    const v3, 0x7f080111

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 273
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mSaveButton:Landroid/widget/Button;

    const v3, 0x7f080482

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 278
    goto :goto_1

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mController:Lcom/parrot/freeflight/academy/ProfileEditController;

    invoke-virtual {v0, p0}, Lcom/parrot/freeflight/academy/ProfileEditController;->unregisterListener(Lcom/parrot/freeflight/academy/ProfileEditController$StateListener;)V

    .line 157
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStop()V

    .line 158
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILcom/parrot/freeflight/academy/ProfileEditActivity$ActivityResultListener;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
    .param p3, "listener"    # Lcom/parrot/freeflight/academy/ProfileEditActivity$ActivityResultListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 284
    iput p2, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mLastRequestCode:I

    .line 285
    iput-object p3, p0, Lcom/parrot/freeflight/academy/ProfileEditActivity;->mLastActivityResultListener:Lcom/parrot/freeflight/academy/ProfileEditActivity$ActivityResultListener;

    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/academy/ProfileEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 287
    return-void
.end method
