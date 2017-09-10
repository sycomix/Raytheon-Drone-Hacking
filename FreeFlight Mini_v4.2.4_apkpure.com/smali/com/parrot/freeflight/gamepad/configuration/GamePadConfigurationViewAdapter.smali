.class public Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GamePadConfigurationViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;,
        Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;,
        Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIMATION_START_DELAY:I = 0x64

.field private static final BLINK_DELAY:I = 0x1f4

.field private static final GRAPHICAL_CHAR_SEPARATOR:Ljava/lang/String; = "+"

.field private static final NB_LETTERS_MAX_FOR_CIRCLE_BACKGROUND:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GamePadConfigurationViewAdapter"


# instance fields
.field private mAnimatedPosition:I

.field private mBackgroundAnimationHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mButtonsInput:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$Input;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommands:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/command/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mHashMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/parrot/freeflight/gamepad/command/Command;",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputClickListener:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder$InputClickListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mInputsOwner:Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mJoysticksInput:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$Input;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mOpenedInputLists:Landroid/util/SparseBooleanArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mResourceDescriptor:Lcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 87
    new-instance v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$1;-><init>(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mInputClickListener:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder$InputClickListener;

    .line 103
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mContext:Landroid/content/Context;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mAnimatedPosition:I

    .line 105
    new-instance v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mHashMap:Ljava/util/Map;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mCommands:Ljava/util/List;

    .line 108
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mOpenedInputLists:Landroid/util/SparseBooleanArray;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;)Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mInputsOwner:Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;)Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mListener:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->stopAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    .prologue
    .line 39
    iget v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mAnimatedPosition:I

    return v0
.end method

.method static synthetic access$400(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;I)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;
    .param p1, "x1"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;
    .param p2, "x2"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->startAnimation(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;I)V

    return-void
.end method

.method private sortInputList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad$Input;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad$Input;>;"
    new-instance v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$2;-><init>(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 166
    return-void
.end method

.method private startAnimation(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;I)V
    .locals 3
    .param p1, "viewHolder"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 169
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mListener:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;

    if-eqz v0, :cond_1

    .line 170
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mListener:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mCommands:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/command/Command;

    invoke-interface {v1, v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;->onCommandSelected(Lcom/parrot/freeflight/gamepad/command/Command;)V

    .line 171
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->resetOpenedInputList()V

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mInputsOwner:Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mOpenedInputLists:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 174
    invoke-virtual {p1, v2}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->displayInputList(Z)V

    .line 176
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->startBackgroundAnimation(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;I)V

    .line 178
    :cond_1
    return-void
.end method

.method private startBackgroundAnimation(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;I)V
    .locals 6
    .param p1, "viewHolder"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .prologue
    const/16 v5, 0x1f4

    .line 534
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->stopBackgroundAnimation()V

    .line 535
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 536
    .local v0, "backgroundAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 538
    rem-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_0

    .line 539
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0060

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 540
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0e005f

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 546
    :goto_0
    new-instance v1, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$4;

    invoke-direct {v1, p0, v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$4;-><init>(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;Landroid/graphics/drawable/AnimationDrawable;)V

    .line 552
    .local v1, "backgroundAnimationRunnable":Ljava/lang/Runnable;
    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->setActionLayoutBackground(Landroid/graphics/drawable/AnimationDrawable;)V

    .line 554
    iput p2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mAnimatedPosition:I

    .line 555
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mBackgroundAnimationHandler:Landroid/os/Handler;

    .line 556
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mBackgroundAnimationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 557
    return-void

    .line 542
    .end local v1    # "backgroundAnimationRunnable":Ljava/lang/Runnable;
    :cond_0
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0e0062

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 543
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0e005e

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mListener:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mListener:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;->onCommandSelected(Lcom/parrot/freeflight/gamepad/command/Command;)V

    .line 183
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->stopBackgroundAnimation()V

    .line 184
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->resetOpenedInputList()V

    .line 186
    :cond_0
    return-void
.end method

.method private stopBackgroundAnimation()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mBackgroundAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mBackgroundAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 562
    iget v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mAnimatedPosition:I

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->notifyItemChanged(I)V

    .line 564
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mAnimatedPosition:I

    .line 565
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->onBindViewHolder(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 221
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 222
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mButtonsInput:Ljava/util/List;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mJoysticksInput:Ljava/util/List;

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mOpenedInputLists:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mResourceDescriptor:Lcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;

    move-object v0, p1

    move v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->updateView(ILjava/util/List;Ljava/util/List;ZLcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;)V

    .line 224
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040077

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 201
    .local v1, "v":Landroid/view/View;
    new-instance v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mCommands:Ljava/util/List;

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mInputClickListener:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder$InputClickListener;

    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mHashMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mItemDimensions:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;Ljava/util/List;Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder$InputClickListener;Ljava/util/Map;Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ItemDimensions;)V

    .line 203
    .local v0, "viewHolder":Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;
    iget-object v2, v0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$3;

    invoke-direct {v3, p0, v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$3;-><init>(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    return-object v0
.end method

.method public registerListener(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 112
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mListener:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;

    .line 113
    return-void
.end method

.method public resetOpenedInputList()V
    .locals 5

    .prologue
    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mOpenedInputLists:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 190
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mOpenedInputLists:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mOpenedInputLists:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method public setContent(Ljava/util/List;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "mapping"    # Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/command/Command;",
            ">;",
            "Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/command/Command;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mCommands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 146
    if-eqz p1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mCommands:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mHashMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 150
    invoke-virtual {p2}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;->getGamePadActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;

    .line 151
    .local v0, "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    const-string v2, "GamePadConfigurationViewAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContent action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mHashMap:Ljava/util/Map;

    iget-object v3, v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;->command:Lcom/parrot/freeflight/gamepad/command/Command;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 154
    .end local v0    # "action":Lcom/parrot/freeflight/gamepad/preferences/GamePadAction;
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->stopBackgroundAnimation()V

    .line 155
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->notifyDataSetChanged()V

    .line 156
    return-void
.end method

.method public setInputsOwner(Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;)V
    .locals 3
    .param p1, "inputsOwner"    # Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 126
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mInputsOwner:Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;

    .line 127
    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mButtonsInput:Ljava/util/List;

    .line 128
    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mJoysticksInput:Ljava/util/List;

    .line 129
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mInputsOwner:Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;

    if-eqz v1, :cond_2

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mButtonsInput:Ljava/util/List;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mJoysticksInput:Ljava/util/List;

    .line 132
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mInputsOwner:Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;

    invoke-interface {v1}, Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;->getInputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;

    .line 133
    .local v0, "input":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    iget v2, v0, Lcom/parrot/freeflight/gamepad/GamePad$Input;->controlType:I

    if-nez v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mButtonsInput:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mJoysticksInput:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    .end local v0    # "input":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mButtonsInput:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->sortInputList(Ljava/util/List;)V

    .line 140
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mJoysticksInput:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->sortInputList(Ljava/util/List;)V

    .line 142
    :cond_2
    return-void
.end method

.method public setResourceDescriptor(Lcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;)V
    .locals 0
    .param p1, "resourceDescriptor"    # Lcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 122
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mResourceDescriptor:Lcom/parrot/freeflight/gamepad/GamePad$InputResourceProvider;

    .line 123
    return-void
.end method

.method public unregisterListener(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mListener:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;

    if-ne v0, p1, :cond_0

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->mListener:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;

    .line 119
    :cond_0
    return-void
.end method
