.class public Lcom/parrot/freeflight/home/connection/DirectPairingActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "DirectPairingActivity.java"


# static fields
.field private static final FROM_HOME_EXTRA:Ljava/lang/String; = "FROM_HOME_EXTRA"


# instance fields
.field private mBackButton:Landroid/widget/ImageButton;

.field private mCalledFromHome:Z

.field private mConnectNowButton:Landroid/widget/Button;

.field private mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mModel:Lcom/parrot/freeflight/core/model/Model;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

.field private mRootView:Landroid/view/View;

.field private final mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

.field private mTitleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    .line 52
    new-instance v0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$1;-><init>(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    .line 60
    new-instance v0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$2;-><init>(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DirectPairingActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/GamePad;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)Lcom/parrot/freeflight/core/model/Model;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mModel:Lcom/parrot/freeflight/core/model/Model;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;Lcom/parrot/freeflight/core/model/Model;)Lcom/parrot/freeflight/core/model/Model;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DirectPairingActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/core/model/Model;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mModel:Lcom/parrot/freeflight/core/model/Model;

    return-object p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)Lcom/parrot/freeflight/gamepad/GamePadManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mCalledFromHome:Z

    return v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->applyUiTheme()V

    return-void
.end method

.method private applyFont(I)V
    .locals 1
    .param p1, "idRes"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 152
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 153
    invoke-static {p0, v0}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 155
    :cond_0
    return-void
.end method

.method private applyTint(I)V
    .locals 2
    .param p1, "idRes"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 173
    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 174
    const v1, 0x7f0e00dc

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->tintImageViewDrawable(Landroid/widget/ImageView;I)V

    .line 176
    :cond_0
    return-void
.end method

.method private applyUiTheme()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/TextView;)V

    .line 187
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mConnectNowButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->apply(Landroid/widget/Button;)V

    .line 188
    return-void
.end method

.method private fixPreLollipopTheme()V
    .locals 2

    .prologue
    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mBackButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    :cond_0
    return-void
.end method

.method public static getStartingIntent(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "fromHome"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "FROM_HOME_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0f00b3

    .line 71
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v2, 0x7f040021

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->setContentView(I)V

    .line 74
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    .line 76
    .local v0, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 77
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 78
    const-string v2, "FROM_HOME_EXTRA"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mCalledFromHome:Z

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 82
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    .line 84
    const v2, 0x7f0f00c3

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mRootView:Landroid/view/View;

    .line 85
    const v2, 0x7f0f00bb

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mBackButton:Landroid/widget/ImageButton;

    .line 86
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mBackButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mBackButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mBackButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$3;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$3;-><init>(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :cond_1
    const v2, 0x7f0f00c7

    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mConnectNowButton:Landroid/widget/Button;

    .line 96
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mConnectNowButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 97
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mConnectNowButton:Landroid/widget/Button;

    new-instance v3, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$4;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$4;-><init>(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mConnectNowButton:Landroid/widget/Button;

    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 118
    :cond_2
    invoke-virtual {p0, v4}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 120
    invoke-direct {p0, v4}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->applyFont(I)V

    .line 121
    const v2, 0x7f0f00c6

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->applyFont(I)V

    .line 123
    const v2, 0x7f0f00c4

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->applyTint(I)V

    .line 124
    const v2, 0x7f0f00c5

    invoke-direct {p0, v2}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->applyTint(I)V

    .line 126
    invoke-direct {p0}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->fixPreLollipopTheme()V

    .line 127
    new-instance v2, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 128
    iget-object v2, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v3, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$5;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/home/connection/DirectPairingActivity$5;-><init>(Lcom/parrot/freeflight/home/connection/DirectPairingActivity;)V

    invoke-virtual {v2, v3}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 134
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 168
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 169
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStart()V

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->addListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 141
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStop()V

    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mModelStore:Lcom/parrot/freeflight/core/model/ModelStore;

    iget-object v1, p0, Lcom/parrot/freeflight/home/connection/DirectPairingActivity;->mModelStoreListener:Lcom/parrot/freeflight/core/model/ModelStore$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/ModelStore;->removeListener(Lcom/parrot/freeflight/core/model/ModelStore$Listener;)V

    .line 148
    return-void
.end method
