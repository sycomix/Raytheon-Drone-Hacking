.class Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DroneInfosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/infos/DroneInfosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DroneInfosAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 336
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosAdapter;->mInfos:Ljava/util/List;

    .line 337
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/parrot/freeflight/infos/DroneInfosActivity$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lcom/parrot/freeflight/infos/DroneInfosActivity$1;

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 332
    check-cast p1, Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosAdapter;->onBindViewHolder(Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 348
    iget-object v1, p1, Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v1, p1, Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosViewHolder;->value:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0, p1, p2}, Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 341
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040075

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 343
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosViewHolder;

    invoke-direct {v1, v0}, Lcom/parrot/freeflight/infos/DroneInfosActivity$DroneInfosViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method
