.class public Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GamePadListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;,
        Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$IListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GamePadDiscoveryListAdapter"


# instance fields
.field private final mGamePads:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$IListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->mGamePads:Ljava/util/List;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->mGamePads:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;)Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$IListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->mListener:Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$IListener;

    return-object v0
.end method

.method private addToGamePadList(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "gamePads":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad;

    .line 92
    .local v0, "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePad;->isSelected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->mGamePads:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    .end local v0    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->mListener:Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$IListener;

    .line 100
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->mGamePads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->onBindViewHolder(Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 69
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->mGamePads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->mGamePads:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;->update(Lcom/parrot/freeflight/gamepad/GamePad;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040074

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;-><init>(Landroid/view/View;)V

    .line 51
    .local v1, "viewHolder":Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;
    iget-object v2, v1, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$1;-><init>(Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-object v1
.end method

.method public registerListener(Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$IListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->mListener:Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$IListener;

    .line 39
    return-void
.end method

.method public unregisterListener(Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$IListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$IListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->mListener:Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$IListener;

    if-ne v0, p1, :cond_0

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->mListener:Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$IListener;

    .line 45
    :cond_0
    return-void
.end method

.method public update(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "knownGamePads":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    .local p2, "discoveredGamePads":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->mGamePads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->addToGamePadList(Ljava/util/List;)V

    .line 87
    invoke-virtual {p0}, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->notifyDataSetChanged()V

    .line 88
    return-void
.end method
