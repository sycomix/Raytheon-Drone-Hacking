.class public Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "DroneInitActivity.java"


# instance fields
.field private mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDelosModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    .line 32
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity$1;-><init>(Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->mDelosModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;)Lcom/parrot/freeflight/core/model/DelosModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->updateFlyingState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->updateUiTheme()V

    return-void
.end method

.method private updateFlyingState(I)V
    .locals 1
    .param p1, "flyingState"    # I

    .prologue
    .line 112
    packed-switch p1, :pswitch_data_0

    .line 128
    :goto_0
    return-void

    .line 120
    :pswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->setResult(I)V

    .line 121
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->finish()V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateUiTheme()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 132
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v5, 0x7f040026

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->setContentView(I)V

    .line 48
    const v5, 0x7f0f00b2

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->mRootView:Landroid/view/View;

    .line 49
    const v5, 0x7f0f00bb

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 50
    .local v0, "backButton":Landroid/widget/ImageButton;
    const v5, 0x7f0f00b3

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 51
    .local v4, "titleView":Landroid/widget/TextView;
    const v5, 0x7f0f00d7

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 52
    .local v2, "instructionView":Landroid/widget/TextView;
    const v5, 0x7f0f00d8

    invoke-virtual {p0, v5}, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 54
    .local v1, "droneImage":Landroid/widget/ImageView;
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/model/ModelStore;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v5

    check-cast v5, Lcom/parrot/freeflight/core/model/DelosModel;

    iput-object v5, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    .line 55
    const/4 v3, 0x0

    .line 56
    .local v3, "isWingX":Z
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v5, :cond_0

    .line 57
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v5}, Lcom/parrot/freeflight/core/model/DelosModel;->isWingX()Z

    move-result v3

    .line 61
    :cond_0
    if-eqz v3, :cond_2

    const v5, 0x7f02026f

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    new-instance v5, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity$2;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity$2;-><init>(Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_1

    .line 71
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    :cond_1
    new-instance v5, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 75
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v6, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity$3;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity$3;-><init>(Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;)V

    invoke-virtual {v5, v6}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 83
    invoke-static {p0, v4}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 85
    const/4 v5, 0x1

    invoke-static {p0, v2, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;I)V

    .line 86
    return-void

    .line 61
    :cond_2
    const v5, 0x7f02013d

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 107
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 108
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 109
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStart()V

    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->mDelosModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 94
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DroneInitActivity;->mDelosModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 101
    :cond_0
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStop()V

    .line 102
    return-void
.end method
