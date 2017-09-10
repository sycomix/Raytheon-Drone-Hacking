.class public Lcom/parrot/freeflight/util/sync/SyncAuthenticatorService;
.super Landroid/app/Service;
.source "SyncAuthenticatorService.java"


# instance fields
.field private mStubUpdateAuthenticator:Lcom/parrot/freeflight/util/sync/StubSyncAuthenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parrot/freeflight/util/sync/SyncAuthenticatorService;->mStubUpdateAuthenticator:Lcom/parrot/freeflight/util/sync/StubSyncAuthenticator;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/sync/StubSyncAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 12
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 13
    new-instance v0, Lcom/parrot/freeflight/util/sync/StubSyncAuthenticator;

    invoke-virtual {p0}, Lcom/parrot/freeflight/util/sync/SyncAuthenticatorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/util/sync/StubSyncAuthenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/util/sync/SyncAuthenticatorService;->mStubUpdateAuthenticator:Lcom/parrot/freeflight/util/sync/StubSyncAuthenticator;

    .line 14
    return-void
.end method
