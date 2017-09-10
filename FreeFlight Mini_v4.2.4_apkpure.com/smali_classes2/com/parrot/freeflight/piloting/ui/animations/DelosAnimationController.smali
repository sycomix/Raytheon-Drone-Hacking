.class public Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;
.super Ljava/lang/Object;
.source "DelosAnimationController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/AnimationControllerInterface;


# static fields
.field private static final SAVED_STATE_IS_FLIP_MENU_OPENED:Ljava/lang/String; = "is_flip_menu_opened"

.field private static final SINGLE_FLIP_MENU_ITEM_APPARITION_TIME_MS:I = 0x19

.field private static final TAG:Ljava/lang/String; = "DelosAnimationController"


# instance fields
.field private mAnimationControllerListener:Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlipBackButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mFlipFrontButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mFlipLeftButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mFlipListMenu:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mFlipMenuButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mFlipMenuOpened:Z

.field private mFlipRightButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mFlipRootView:Landroid/widget/LinearLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLastFlipMenuBackground:Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mNoFlipButton:Landroid/widget/ImageButton;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRootView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mScaleUpAnimation:Landroid/view/animation/Animation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "rootView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mRootView:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mRootView:Landroid/view/View;

    const v1, 0x7f0f013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipRootView:Landroid/widget/LinearLayout;

    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mRootView:Landroid/view/View;

    const v1, 0x7f0f013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipMenuButton:Landroid/widget/ImageButton;

    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mRootView:Landroid/view/View;

    const v1, 0x7f0f0140

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipListMenu:Landroid/widget/LinearLayout;

    .line 65
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipRootView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipMenuButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$1;-><init>(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->fixPreLollipopTheme()V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipMenuOpened:Z

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipMenuOpened:Z

    return p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mLastFlipMenuBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mLastFlipMenuBackground:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipMenuButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipListMenu:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mAnimationControllerListener:Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->openFlipListMenu()V

    return-void
.end method

.method static synthetic access$600(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->scaleUpAnimation(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->fixPreLollipopTheme()V

    return-void
.end method

.method private expandFlipMenu()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipFrontButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipFrontButton:Landroid/widget/ImageButton;

    const/16 v1, 0x19

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->scaleUpAnimation(Landroid/view/View;I)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipBackButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipBackButton:Landroid/widget/ImageButton;

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->scaleUpAnimation(Landroid/view/View;I)V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipLeftButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipLeftButton:Landroid/widget/ImageButton;

    const/16 v1, 0x4b

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->scaleUpAnimation(Landroid/view/View;I)V

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipRightButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipRightButton:Landroid/widget/ImageButton;

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->scaleUpAnimation(Landroid/view/View;I)V

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mNoFlipButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mNoFlipButton:Landroid/widget/ImageButton;

    const/16 v1, 0x7d

    invoke-direct {p0, v0, v1}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->scaleUpAnimation(Landroid/view/View;I)V

    .line 157
    :cond_4
    return-void
.end method

.method private fixPreLollipopTheme()V
    .locals 3

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipMenuButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    :cond_0
    return-void
.end method

.method private openFlipListMenu()V
    .locals 4

    .prologue
    .line 95
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipListMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mContext:Landroid/content/Context;

    const v2, 0x7f040070

    iget-object v3, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipListMenu:Landroid/widget/LinearLayout;

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 97
    new-instance v0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController$2;-><init>(Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;)V

    .line 127
    .local v0, "flipMenuListClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipListMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0201

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipFrontButton:Landroid/widget/ImageButton;

    .line 128
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipFrontButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipListMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0202

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipBackButton:Landroid/widget/ImageButton;

    .line 130
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipListMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0203

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipLeftButton:Landroid/widget/ImageButton;

    .line 132
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipLeftButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipListMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0204

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipRightButton:Landroid/widget/ImageButton;

    .line 134
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipRightButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipListMenu:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0205

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mNoFlipButton:Landroid/widget/ImageButton;

    .line 136
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mNoFlipButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .end local v0    # "flipMenuListClickListener":Landroid/view/View$OnClickListener;
    :cond_0
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->expandFlipMenu()V

    .line 139
    return-void
.end method

.method private scaleUpAnimation(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "offsetStart"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mScaleUpAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mContext:Landroid/content/Context;

    const v1, 0x7f050017

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mScaleUpAnimation:Landroid/view/animation/Animation;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mScaleUpAnimation:Landroid/view/animation/Animation;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mScaleUpAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    return-void
.end method

.method private updateFlipButtonActivation(Lcom/parrot/freeflight/core/model/DelosModel;)V
    .locals 6
    .param p1, "delosModel"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 183
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getAccessoryState()Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    move-result-object v0

    .line 184
    .local v0, "accessoryState":Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;
    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;->getCurrentAccessory()I

    move-result v2

    .line 185
    .local v2, "lastAccessory":I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v1, v3

    .line 186
    .local v1, "isHydrofoil":Z
    :goto_0
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipMenuButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 187
    return-void

    .end local v1    # "isHydrofoil":Z
    :cond_0
    move v1, v4

    .line 185
    goto :goto_0

    .restart local v1    # "isHydrofoil":Z
    :cond_1
    move v3, v4

    .line 186
    goto :goto_1
.end method

.method private updateFlipButtonImage(Lcom/parrot/freeflight/core/model/DelosModel;)V
    .locals 2
    .param p1, "delosModel"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DelosModel;->getCurrentFlipDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipMenuButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 178
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipMenuButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/parrot/freeflight/util/ui/ThemeTintDrawable;->removeBackgroundTint(Landroid/view/View;)V

    .line 179
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->fixPreLollipopTheme()V

    .line 180
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipMenuButton:Landroid/widget/ImageButton;

    const v1, 0x7f020144

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipMenuButton:Landroid/widget/ImageButton;

    const v1, 0x7f020143

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 168
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipMenuButton:Landroid/widget/ImageButton;

    const v1, 0x7f020145

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 171
    :pswitch_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipMenuButton:Landroid/widget/ImageButton;

    const v1, 0x7f020147

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 174
    :pswitch_4
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipMenuButton:Landroid/widget/ImageButton;

    const v1, 0x7f020148

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipRootView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    return-void
.end method

.method public hideMenu()V
    .locals 2

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipMenuOpened:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipListMenu:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 239
    const-string v0, "is_flip_menu_opened"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipMenuOpened:Z

    .line 240
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipMenuOpened:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->openFlipListMenu()V

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipListMenu:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 244
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
    .line 234
    const-string v0, "is_flip_menu_opened"

    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipMenuOpened:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    return-void
.end method

.method public setAnimationControllerListener(Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;)V
    .locals 0
    .param p1, "animationControllerListener"    # Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 221
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mAnimationControllerListener:Lcom/parrot/freeflight/piloting/ui/animations/AnimationControllerListener;

    .line 222
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mFlipRootView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    return-void
.end method

.method public spaceChanged(Z)V
    .locals 3
    .param p1, "reduced"    # Z

    .prologue
    .line 226
    if-eqz p1, :cond_0

    const v1, 0x7f0a0083

    .line 227
    .local v1, "newMarginRes":I
    :goto_0
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 228
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 229
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    return-void

    .line 226
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "newMarginRes":I
    :cond_0
    const v1, 0x7f0a007f

    goto :goto_0
.end method

.method public updateView(Lcom/parrot/freeflight/core/model/DelosModel;)V
    .locals 0
    .param p1, "delosModel"    # Lcom/parrot/freeflight/core/model/DelosModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->updateFlipButtonImage(Lcom/parrot/freeflight/core/model/DelosModel;)V

    .line 216
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/ui/animations/DelosAnimationController;->updateFlipButtonActivation(Lcom/parrot/freeflight/core/model/DelosModel;)V

    .line 217
    return-void
.end method
