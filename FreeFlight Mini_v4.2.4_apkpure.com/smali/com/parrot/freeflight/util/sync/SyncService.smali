.class public Lcom/parrot/freeflight/util/sync/SyncService;
.super Landroid/app/Service;
.source "SyncService.java"


# static fields
.field private static sSyncAdapter:Lcom/parrot/freeflight/util/sync/SyncAdapter;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parrot/freeflight/util/sync/SyncService;->sSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

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
    .line 33
    sget-object v0, Lcom/parrot/freeflight/util/sync/SyncService;->sSyncAdapter:Lcom/parrot/freeflight/util/sync/SyncAdapter;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/sync/SyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 13
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 14
    sget-object v1, Lcom/parrot/freeflight/util/sync/SyncService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/parrot/freeflight/util/sync/SyncService;->sSyncAdapter:Lcom/parrot/freeflight/util/sync/SyncAdapter;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/parrot/freeflight/util/sync/SyncAdapter;

    invoke-virtual {p0}, Lcom/parrot/freeflight/util/sync/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/parrot/freeflight/util/sync/SyncAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/parrot/freeflight/util/sync/SyncService;->sSyncAdapter:Lcom/parrot/freeflight/util/sync/SyncAdapter;

    .line 18
    :cond_0
    monitor-exit v1

    .line 19
    return-void

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
