.class public Lcom/parrot/freeflight/gamepad/GamePadDiscovery;
.super Lcom/parrot/freeflight/gamepad/DiscoveryBase;
.source "GamePadDiscovery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GamePadDiscovery"


# instance fields
.field private final mDiscoveryListListener:Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mGamePadDiscoveries:[Lcom/parrot/freeflight/gamepad/DiscoveryBase;


# direct methods
.method varargs constructor <init>([Lcom/parrot/freeflight/gamepad/DiscoveryBase;)V
    .locals 1
    .param p1, "gamePadDiscoveries"    # [Lcom/parrot/freeflight/gamepad/DiscoveryBase;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/parrot/freeflight/gamepad/DiscoveryBase;-><init>()V

    .line 51
    new-instance v0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/gamepad/GamePadDiscovery$1;-><init>(Lcom/parrot/freeflight/gamepad/GamePadDiscovery;)V

    iput-object v0, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->mDiscoveryListListener:Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;

    .line 16
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->mGamePadDiscoveries:[Lcom/parrot/freeflight/gamepad/DiscoveryBase;

    .line 17
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 6
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
    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->mGamePadDiscoveries:[Lcom/parrot/freeflight/gamepad/DiscoveryBase;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 40
    .local v0, "discovery":Lcom/parrot/freeflight/gamepad/DiscoveryBase;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/DiscoveryBase;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    .end local v0    # "discovery":Lcom/parrot/freeflight/gamepad/DiscoveryBase;
    :cond_0
    return-object v1
.end method

.method public remove(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 5
    .param p1, "remote"    # Lcom/parrot/freeflight/gamepad/GamePad;

    .prologue
    .line 46
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->mGamePadDiscoveries:[Lcom/parrot/freeflight/gamepad/DiscoveryBase;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 47
    .local v0, "discovery":Lcom/parrot/freeflight/gamepad/DiscoveryBase;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/DiscoveryBase;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "discovery":Lcom/parrot/freeflight/gamepad/DiscoveryBase;
    :cond_0
    return-void
.end method

.method public startScan()V
    .locals 5

    .prologue
    .line 21
    const-string v1, "GamePadDiscovery"

    const-string v2, "startScan "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->mGamePadDiscoveries:[Lcom/parrot/freeflight/gamepad/DiscoveryBase;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 23
    .local v0, "discovery":Lcom/parrot/freeflight/gamepad/DiscoveryBase;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/DiscoveryBase;->startScan()V

    .line 24
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->mDiscoveryListListener:Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;

    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/gamepad/DiscoveryBase;->addListListener(Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;)V

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    .end local v0    # "discovery":Lcom/parrot/freeflight/gamepad/DiscoveryBase;
    :cond_0
    return-void
.end method

.method public stopScan()V
    .locals 5

    .prologue
    .line 30
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->mGamePadDiscoveries:[Lcom/parrot/freeflight/gamepad/DiscoveryBase;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 31
    .local v0, "discovery":Lcom/parrot/freeflight/gamepad/DiscoveryBase;
    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/DiscoveryBase;->stopScan()V

    .line 32
    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/GamePadDiscovery;->mDiscoveryListListener:Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;

    invoke-virtual {v0, v4}, Lcom/parrot/freeflight/gamepad/DiscoveryBase;->removeListListener(Lcom/parrot/freeflight/gamepad/DiscoveryBase$ListListener;)V

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v0    # "discovery":Lcom/parrot/freeflight/gamepad/DiscoveryBase;
    :cond_0
    return-void
.end method
