.class public Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;
.super Ljava/lang/Object;
.source "WingXAnimationController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;


# static fields
.field private static final SAVED_STATE_IS_WINGX_MENU_OPENED:Ljava/lang/String; = "is_wingx_menu_opened"

.field private static final TAG:Ljava/lang/String; = "WingXAnimationController"


# instance fields
.field private mAnimationControllerListener:Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mAnimationListMenu:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAnimationMenuButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mAnimationMenuButtonStroke:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mAnimationsMenuOpened:Z

.field private final mAnimationsRootView:Landroid/widget/RelativeLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mBackSwapButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mBarrelRollLeftButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mBarrelRollRightButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlyingMode:I

.field private mLoopingButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRootView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mSwingIsFlying:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rootView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mFlyingMode:I

    .line 54
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mRootView:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationsRootView:Landroid/widget/RelativeLayout;

    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationMenuButton:Landroid/widget/ImageButton;

    .line 59
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationMenuButtonStroke:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0142

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationListMenu:Landroid/widget/LinearLayout;

    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationsRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationMenuButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController$1;-><init>(Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->fixPreLollipopTheme()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationsMenuOpened:Z

    return v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->closeAnimationMenu()V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->openAnimationMenu()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationControllerListener:Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->fixPreLollipopTheme()V

    return-void
.end method

.method private closeAnimationMenu()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 126
    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationsMenuOpened:Z

    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationMenuButtonStroke:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationListMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationControllerListener:Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationControllerListener:Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;->onMenuClosing()V

    .line 131
    :cond_0
    return-void
.end method

.method private fixPreLollipopTheme()V
    .locals 3

    .prologue
    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationMenuButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_0
    return-void
.end method

.method private openAnimationListMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 85
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationListMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mContext:Landroid/content/Context;

    const v2, 0x7f0400b5

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationListMenu:Landroid/widget/LinearLayout;

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController$2;-><init>(Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;)V

    .line 109
    .local v0, "flipMenuListClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationListMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f0f02bf

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mBarrelRollLeftButton:Landroid/widget/ImageButton;

    .line 110
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mBarrelRollLeftButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mBarrelRollLeftButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 112
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationListMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f0f02c0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mBarrelRollRightButton:Landroid/widget/ImageButton;

    .line 113
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mBarrelRollRightButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mBarrelRollRightButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 115
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationListMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f0f02c1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mBackSwapButton:Landroid/widget/ImageButton;

    .line 116
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mBackSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mBackSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 118
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationListMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f0f02c2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mLoopingButton:Landroid/widget/ImageButton;

    .line 119
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mLoopingButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mLoopingButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 122
    .end local v0    # "flipMenuListClickListener":Landroid/view/View$OnClickListener;
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationListMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    return-void
.end method

.method private openAnimationMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 134
    iput-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationsMenuOpened:Z

    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationMenuButtonStroke:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 137
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationListMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationControllerListener:Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationControllerListener:Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;->onMenuOpening(I)V

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->openAnimationListMenu()V

    .line 140
    return-void
.end method

.method private updateAnimationButton(Z)V
    .locals 2
    .param p1, "swingIsFlying"    # Z

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mSwingIsFlying:Z

    if-eq v0, p1, :cond_0

    .line 144
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mSwingIsFlying:Z

    .line 145
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mSwingIsFlying:Z

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationMenuButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationMenuButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 149
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationsMenuOpened:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->closeAnimationMenu()V

    goto :goto_0
.end method

.method private updateAnimationMenu(Lcom/parrot/freeflight/core/model/DelosModel;Z)V
    .locals 4
    .param p1, "delosModel"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "swingIsFlying"    # Z

    .prologue
    const/4 v1, 0x1

    .line 157
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getWingXFlyingMode()I

    move-result v0

    .line 158
    .local v0, "flyingMode":I
    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mFlyingMode:I

    if-eq v2, v0, :cond_1

    .line 159
    iput v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mFlyingMode:I

    .line 160
    if-eqz p2, :cond_2

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mFlyingMode:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mFlyingMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 161
    .local v1, "isInPlaneMode":Z
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mBarrelRollLeftButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mBarrelRollRightButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mBackSwapButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mLoopingButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1

    .line 163
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mBarrelRollLeftButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 164
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mBarrelRollRightButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 165
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mBackSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 166
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mLoopingButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 169
    .end local v1    # "isInPlaneMode":Z
    :cond_1
    return-void

    .line 160
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationsRootView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 179
    return-void
.end method

.method public hideMenu()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->closeAnimationMenu()V

    .line 184
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 211
    const-string v0, "is_wingx_menu_opened"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationsMenuOpened:Z

    .line 212
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationsMenuOpened:Z

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->openAnimationMenu()V

    .line 215
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 206
    const-string v0, "is_wingx_menu_opened"

    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationsMenuOpened:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    return-void
.end method

.method public setAnimationControllerListener(Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;)V
    .locals 0
    .param p1, "animationControllerListener"    # Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 196
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationControllerListener:Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    .line 197
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->mAnimationsRootView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 174
    return-void
.end method

.method public spaceChanged(Z)V
    .locals 0
    .param p1, "reduced"    # Z

    .prologue
    .line 202
    return-void
.end method

.method public updateView(Lcom/parrot/freeflight/core/model/DelosModel;)V
    .locals 5
    .param p1, "delosModel"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v3

    sget-object v4, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->STATE_DRONE_CONNECTED:Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 189
    .local v0, "isConnected":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->isOnTheGround()Z

    move-result v3

    if-nez v3, :cond_1

    .line 190
    .local v1, "swingIsFlying":Z
    :goto_1
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->updateAnimationButton(Z)V

    .line 191
    invoke-direct {p0, p1, v1}, Lcom/parrot/freeflight/piloting/ui/animations/WingXAnimationController;->updateAnimationMenu(Lcom/parrot/freeflight/core/model/DelosModel;Z)V

    .line 192
    return-void

    .end local v0    # "isConnected":Z
    .end local v1    # "swingIsFlying":Z
    :cond_0
    move v0, v2

    .line 188
    goto :goto_0

    .restart local v0    # "isConnected":Z
    :cond_1
    move v1, v2

    .line 189
    goto :goto_1
.end method
