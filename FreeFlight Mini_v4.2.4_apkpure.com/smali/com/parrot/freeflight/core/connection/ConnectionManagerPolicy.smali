.class public Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;
.super Ljava/lang/Object;
.source "ConnectionManagerPolicy.java"


# instance fields
.field private mLastConnectionWasAuto:Z

.field private mLastDisconnectionWanted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autoSelectService()Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 79
    .local v0, "newServiceSelected":Lcom/parrot/arsdk/ardiscovery/ARDiscoveryDeviceService;
    return-object v0
.end method

.method public onAskedDisconnection()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->mLastDisconnectionWanted:Z

    .line 37
    return-void
.end method

.method public onUnwantedDisconnection()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->mLastDisconnectionWanted:Z

    .line 33
    return-void
.end method

.method public setDeviceWasAutoSelected(Z)V
    .locals 0
    .param p1, "autoSelected"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->mLastConnectionWasAuto:Z

    .line 25
    return-void
.end method

.method public shouldAutoSelectService()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->mLastConnectionWasAuto:Z

    return v0
.end method

.method public shouldSelfConnect()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/connection/ConnectionManagerPolicy;->mLastDisconnectionWanted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldStayConnected()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method
