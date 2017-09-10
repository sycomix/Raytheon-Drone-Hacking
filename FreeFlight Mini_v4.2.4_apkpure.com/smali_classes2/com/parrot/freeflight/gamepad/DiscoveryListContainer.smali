.class Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;
.super Ljava/lang/Object;
.source "DiscoveryListContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DiscoveryListContainer"


# instance fields
.field private mCurrentDiscoveredRemotes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;"
        }
    .end annotation
.end field

.field private mNewDiscoveredRemotes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->mCurrentDiscoveredRemotes:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->mNewDiscoveredRemotes:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method add(Lcom/parrot/freeflight/gamepad/GamePad;)Z
    .locals 1
    .param p1, "remote"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->mNewDiscoveredRemotes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->mNewDiscoveredRemotes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->mCurrentDiscoveredRemotes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->mCurrentDiscoveredRemotes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getList()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->mCurrentDiscoveredRemotes:Ljava/util/List;

    return-object v0
.end method

.method swapCurrentList()Z
    .locals 6

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 27
    .local v0, "hasChanged":Z
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->mCurrentDiscoveredRemotes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->mNewDiscoveredRemotes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 28
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->mCurrentDiscoveredRemotes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 29
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->mCurrentDiscoveredRemotes:Ljava/util/List;

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->mNewDiscoveredRemotes:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 30
    const/4 v0, 0x1

    .line 38
    .end local v1    # "i":I
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 39
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->mCurrentDiscoveredRemotes:Ljava/util/List;

    .line 40
    .local v2, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->mNewDiscoveredRemotes:Ljava/util/List;

    iput-object v3, p0, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->mCurrentDiscoveredRemotes:Ljava/util/List;

    .line 41
    iput-object v2, p0, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->mNewDiscoveredRemotes:Ljava/util/List;

    .line 42
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->mNewDiscoveredRemotes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 47
    .end local v2    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    :goto_2
    const-string v3, "DiscoveryListContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "swapCurrentList hasChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return v0

    .line 28
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 45
    :cond_3
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/DiscoveryListContainer;->mNewDiscoveredRemotes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_2
.end method
