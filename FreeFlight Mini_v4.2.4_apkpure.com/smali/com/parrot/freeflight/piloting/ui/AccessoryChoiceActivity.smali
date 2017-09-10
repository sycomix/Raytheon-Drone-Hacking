.class public Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "AccessoryChoiceActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputListener;


# static fields
.field private static final SAVED_STATE_WAITING:Ljava/lang/String; = "waiting"


# instance fields
.field private mChoiceView:Landroid/view/View;

.field private mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDelosModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPropellerImageView:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;

.field private final mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

.field private mWaiting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    .line 58
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$1;-><init>(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mDelosModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    .line 279
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$5;-><init>(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;)Lcom/parrot/freeflight/core/model/DelosModel;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->updateAccessory(Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->selectAccessory(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->updateUiTheme()V

    return-void
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/GamePad;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mGamePad:Lcom/parrot/freeflight/gamepad/GamePad;

    return-object p1
.end method

.method static synthetic access$502(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    return-object p1
.end method

.method private getAccessoryDrawableId(II)I
    .locals 2
    .param p1, "supportedAccessory"    # I
    .param p2, "type"    # I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 199
    packed-switch p1, :pswitch_data_0

    .line 213
    if-ne p2, v1, :cond_1

    const v0, 0x7f02005a

    .line 216
    .local v0, "res":I
    :goto_0
    return v0

    .line 201
    .end local v0    # "res":I
    :pswitch_0
    if-ne p2, v1, :cond_0

    const v0, 0x7f020056

    .line 202
    .restart local v0    # "res":I
    :goto_1
    goto :goto_0

    .line 201
    .end local v0    # "res":I
    :cond_0
    const v0, 0x7f020055

    goto :goto_1

    .line 204
    :pswitch_1
    const v0, 0x7f020057

    .line 205
    .restart local v0    # "res":I
    goto :goto_0

    .line 213
    .end local v0    # "res":I
    :cond_1
    const v0, 0x7f020059

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private selectAccessory(I)V
    .locals 1
    .param p1, "accessory"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/core/model/DelosModel;->setAccessory(I)V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mWaiting:Z

    .line 223
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->showWaitingView()V

    .line 224
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->startWaitingAnimation()V

    .line 226
    :cond_0
    return-void
.end method

.method private showWaitingView()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mChoiceView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mPropellerImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    return-void
.end method

.method private startWaitingAnimation()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mPropellerImageView:Landroid/widget/ImageView;

    const v1, 0x7f050013

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 235
    return-void
.end method

.method private updateAccessory(Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;)V
    .locals 1
    .param p1, "accessoryState"    # Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 238
    invoke-virtual {p1}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->getCurrentAccessory()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 252
    :goto_0
    return-void

    .line 245
    :pswitch_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->finish()V

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
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
    .line 300
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->getProductBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 301
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    .line 74
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v7, 0x7f04001f

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->setContentView(I)V

    .line 78
    const v7, 0x7f0f00b2

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mRootView:Landroid/view/View;

    .line 79
    const v7, 0x7f0f00b4

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mChoiceView:Landroid/view/View;

    .line 80
    const v7, 0x7f0f00b9

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mPropellerImageView:Landroid/widget/ImageView;

    .line 81
    const v7, 0x7f0f00b3

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 83
    .local v6, "titleView":Landroid/widget/TextView;
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    .line 84
    .local v0, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/ModelStore;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v7

    check-cast v7, Lcom/parrot/freeflight/core/model/DelosModel;

    iput-object v7, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    .line 85
    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v7

    iput-object v7, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    .line 88
    invoke-static {p0, v6}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 90
    if-eqz p1, :cond_0

    .line 91
    const-string/jumbo v7, "waiting"

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mWaiting:Z

    .line 94
    :cond_0
    iget-boolean v7, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mWaiting:Z

    if-eqz v7, :cond_2

    .line 95
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->showWaitingView()V

    .line 135
    :cond_1
    :goto_0
    new-instance v7, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    .line 136
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    new-instance v8, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$4;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$4;-><init>(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;)V

    invoke-virtual {v7, v8}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 142
    return-void

    .line 97
    :cond_2
    const v7, 0x7f0f00b6

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 98
    .local v2, "noAccessoryTextView":Landroid/widget/TextView;
    const v7, 0x7f0f00b8

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 99
    .local v5, "supportedAccessoryTextView":Landroid/widget/TextView;
    const v7, 0x7f0f00b5

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 100
    .local v1, "noAccessoryImageView":Landroid/widget/ImageView;
    const v7, 0x7f0f00b7

    invoke-virtual {p0, v7}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 103
    .local v4, "supportedAccessoryImageView":Landroid/widget/ImageView;
    invoke-static {p0, v2}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 105
    invoke-static {p0, v5}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 107
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v7, :cond_1

    .line 108
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/DelosModel;->getAccessoryState()Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->getSupportedAccessory()I

    move-result v3

    .line 109
    .local v3, "supportedAccessory":I
    const/4 v7, 0x2

    if-ne v3, v7, :cond_3

    const v7, 0x7f0803e1

    :goto_1
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 111
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/DelosModel;->getType()I

    move-result v7

    invoke-direct {p0, v8, v7}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->getAccessoryDrawableId(II)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/DelosModel;->getType()I

    move-result v7

    invoke-direct {p0, v3, v7}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->getAccessoryDrawableId(II)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    new-instance v7, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$2;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$2;-><init>(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v7, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$3;

    invoke-direct {v7, p0, v3}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$3;-><init>(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;I)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 109
    :cond_3
    const v7, 0x7f0803e0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->setOnThemeChangedListener(Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;)V

    .line 187
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mProductColor:Lcom/parrot/freeflight/piloting/ui/util/ProductColor;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/ProductColor;->destroy()V

    .line 188
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 189
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 266
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onJoystickEvent(FFFF)Z
    .locals 1
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F

    .prologue
    .line 271
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onJoystickEvent(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 256
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 261
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mWaiting:Z

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mPropellerImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 166
    :cond_0
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onPause()V

    .line 167
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onResume()V

    .line 156
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mWaiting:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->startWaitingAnimation()V

    .line 159
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 172
    const-string/jumbo v0, "waiting"

    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mWaiting:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStart()V

    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->addSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mDelosModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->addListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 151
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mSelectedGamePadListener:Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePadManager;->removeSelectedGamePadListener(Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;)V

    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mDelosModel:Lcom/parrot/freeflight/core/model/DelosModel;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mDelosModelListener:Lcom/parrot/freeflight/core/model/Model$Listener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/model/DelosModel;->removeListener(Lcom/parrot/freeflight/core/model/Model$Listener;)V

    .line 181
    :cond_0
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStop()V

    .line 182
    return-void
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 276
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->mMapper:Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;->onTriggerEvent(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
