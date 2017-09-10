.class public Lcom/parrot/freeflight3/ARSocialNetworkService;
.super Landroid/app/Service;
.source "ARSocialNetworkService.java"

# interfaces
.implements Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;
.implements Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;
.implements Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight3/ARSocialNetworkService$ARSocialNetworkServiceBinder;
    }
.end annotation


# static fields
.field private static final APP_NAME:Ljava/lang/String; = "ARFreeFlight"

.field private static final TAG:Ljava/lang/String; = "ARSocialNetworkService"


# instance fields
.field private facebookShareManagerListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

.field private final mBinder:Landroid/os/IBinder;

.field private final mFacebookListenerLock:Ljava/lang/Object;

.field private mFbManager:Lcom/parrot/freeflight3/ARFacebookShareManager;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mPicasaListenerLock:Ljava/lang/Object;

.field private mWorkingHandler:Landroid/os/Handler;

.field private final mYoutubeListenerLock:Ljava/lang/Object;

.field private mYoutubeManager:Lcom/parrot/freeflight3/ARYoutubeManager;

.field private picasaManagerListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

.field private youtubeManagerListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    new-instance v0, Lcom/parrot/freeflight3/ARSocialNetworkService$ARSocialNetworkServiceBinder;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight3/ARSocialNetworkService$ARSocialNetworkServiceBinder;-><init>(Lcom/parrot/freeflight3/ARSocialNetworkService;)V

    iput-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mBinder:Landroid/os/IBinder;

    .line 24
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ARSocialNetworkService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mYoutubeListenerLock:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mPicasaListenerLock:Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mFacebookListenerLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight3/ARSocialNetworkService;)Lcom/parrot/freeflight3/ARYoutubeManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/ARSocialNetworkService;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mYoutubeManager:Lcom/parrot/freeflight3/ARYoutubeManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight3/ARSocialNetworkService;Lcom/parrot/freeflight3/ARYoutubeManager;)Lcom/parrot/freeflight3/ARYoutubeManager;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/ARSocialNetworkService;
    .param p1, "x1"    # Lcom/parrot/freeflight3/ARYoutubeManager;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mYoutubeManager:Lcom/parrot/freeflight3/ARYoutubeManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/parrot/freeflight3/ARSocialNetworkService;)Lcom/parrot/freeflight3/ARFacebookShareManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/ARSocialNetworkService;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mFbManager:Lcom/parrot/freeflight3/ARFacebookShareManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight3/ARSocialNetworkService;Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/parrot/freeflight3/ARFacebookShareManager;
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/ARSocialNetworkService;
    .param p1, "x1"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mFbManager:Lcom/parrot/freeflight3/ARFacebookShareManager;

    return-object p1
.end method


# virtual methods
.method public beginFacebookLinkShareProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 10
    .param p1, "linkToShare"    # Ljava/lang/String;
    .param p2, "thumbUrl"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "isVideo"    # Z
    .param p5, "activity"    # Landroid/app/Activity;
    .param p6, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p7, "appName"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mFbManager:Lcom/parrot/freeflight3/ARFacebookShareManager;

    if-eqz v0, :cond_0

    .line 291
    iget-object v9, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mWorkingHandler:Landroid/os/Handler;

    new-instance v0, Lcom/parrot/freeflight3/ARSocialNetworkService$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object/from16 v6, p6

    move v7, p4

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/parrot/freeflight3/ARSocialNetworkService$5;-><init>(Lcom/parrot/freeflight3/ARSocialNetworkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    :cond_0
    return-void
.end method

.method public beginFacebookUploadProcess(Ljava/lang/String;ZLandroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "isVideo"    # Z
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p5, "appName"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mFbManager:Lcom/parrot/freeflight3/ARFacebookShareManager;

    if-eqz v0, :cond_0

    .line 276
    iget-object v7, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mWorkingHandler:Landroid/os/Handler;

    new-instance v0, Lcom/parrot/freeflight3/ARSocialNetworkService$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight3/ARSocialNetworkService$4;-><init>(Lcom/parrot/freeflight3/ARSocialNetworkService;Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZLjava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    :cond_0
    return-void
.end method

.method public beginPicasaUploadProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "albumName"    # Ljava/lang/String;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .param p6, "tags"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v8, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mWorkingHandler:Landroid/os/Handler;

    new-instance v0, Lcom/parrot/freeflight3/ARSocialNetworkService$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/parrot/freeflight3/ARSocialNetworkService$2;-><init>(Lcom/parrot/freeflight3/ARSocialNetworkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method

.method public beginYoutubeUploadProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "tags"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v7, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mWorkingHandler:Landroid/os/Handler;

    new-instance v0, Lcom/parrot/freeflight3/ARSocialNetworkService$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight3/ARSocialNetworkService$1;-><init>(Lcom/parrot/freeflight3/ARSocialNetworkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

.method public cancelYoutubeUploadProcess()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mYoutubeManager:Lcom/parrot/freeflight3/ARYoutubeManager;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mYoutubeManager:Lcom/parrot/freeflight3/ARYoutubeManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight3/ARYoutubeManager;->cancelUpload()V

    .line 82
    :cond_0
    return-void
.end method

.method public facebookShareManagerAccountNameReceived(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 352
    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mFacebookListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->facebookShareManagerListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->facebookShareManagerListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;->facebookShareManagerAccountNameReceived(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V

    .line 358
    :cond_0
    monitor-exit v1

    .line 359
    return-void

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public facebookShareManagerIsSignedIn(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
    .locals 2
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 328
    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mFacebookListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->facebookShareManagerListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->facebookShareManagerListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;->facebookShareManagerIsSignedIn(Lcom/parrot/freeflight3/ARFacebookShareManager;)V

    .line 334
    :cond_0
    monitor-exit v1

    .line 335
    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public facebookShareManagerPermissionNotGranted(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
    .locals 2
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 364
    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mFacebookListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->facebookShareManagerListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->facebookShareManagerListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;->facebookShareManagerPermissionNotGranted(Lcom/parrot/freeflight3/ARFacebookShareManager;)V

    .line 370
    :cond_0
    monitor-exit v1

    .line 371
    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public facebookShareManagerSignInFailed(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 340
    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mFacebookListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->facebookShareManagerListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->facebookShareManagerListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;->facebookShareManagerSignInFailed(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V

    .line 346
    :cond_0
    monitor-exit v1

    .line 347
    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public facebookShareManagerUploadingEnded(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
    .locals 2
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 388
    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mFacebookListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->facebookShareManagerListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->facebookShareManagerListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;->facebookShareManagerUploadingEnded(Lcom/parrot/freeflight3/ARFacebookShareManager;)V

    .line 394
    :cond_0
    monitor-exit v1

    .line 395
    return-void

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public facebookShareManagerUploadingFailed(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 400
    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mFacebookListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->facebookShareManagerListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->facebookShareManagerListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;->facebookShareManagerUploadingFailed(Lcom/parrot/freeflight3/ARFacebookShareManager;Ljava/lang/String;)V

    .line 406
    :cond_0
    monitor-exit v1

    .line 407
    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public facebookShareManagerUploadingStarted(Lcom/parrot/freeflight3/ARFacebookShareManager;)V
    .locals 2
    .param p1, "facebookShareManager"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 376
    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mFacebookListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->facebookShareManagerListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->facebookShareManagerListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;->facebookShareManagerUploadingStarted(Lcom/parrot/freeflight3/ARFacebookShareManager;)V

    .line 382
    :cond_0
    monitor-exit v1

    .line 383
    return-void

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSignedInToFacebook()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mFbManager:Lcom/parrot/freeflight3/ARFacebookShareManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mFbManager:Lcom/parrot/freeflight3/ARFacebookShareManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mWorkingHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 54
    return-void
.end method

.method public onFBActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mFbManager:Lcom/parrot/freeflight3/ARFacebookShareManager;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mWorkingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight3/ARSocialNetworkService$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/parrot/freeflight3/ARSocialNetworkService$6;-><init>(Lcom/parrot/freeflight3/ARSocialNetworkService;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 315
    :cond_0
    return-void
.end method

.method public picasaManagerAppShouldBeAllowed(Lcom/parrot/freeflight3/ARPicasaManager;Landroid/content/Intent;)V
    .locals 2
    .param p1, "picasaManager"    # Lcom/parrot/freeflight3/ARPicasaManager;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mPicasaListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->picasaManagerListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->picasaManagerListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;->picasaManagerAppShouldBeAllowed(Lcom/parrot/freeflight3/ARPicasaManager;Landroid/content/Intent;)V

    .line 196
    :cond_0
    monitor-exit v1

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public picasaManagerAuthNeeded(Lcom/parrot/freeflight3/ARPicasaManager;)V
    .locals 2
    .param p1, "picasaManager"    # Lcom/parrot/freeflight3/ARPicasaManager;

    .prologue
    .line 202
    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mPicasaListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->picasaManagerListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->picasaManagerListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;->picasaManagerAuthNeeded(Lcom/parrot/freeflight3/ARPicasaManager;)V

    .line 208
    :cond_0
    monitor-exit v1

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public picasaManagerUploadDone(Lcom/parrot/freeflight3/ARPicasaManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "picasaManager"    # Lcom/parrot/freeflight3/ARPicasaManager;
    .param p2, "videoPath"    # Ljava/lang/String;
    .param p3, "photoUrl"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mPicasaListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->picasaManagerListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->picasaManagerListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;->picasaManagerUploadDone(Lcom/parrot/freeflight3/ARPicasaManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    monitor-exit v1

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public picasaManagerUploadFailed()V
    .locals 2

    .prologue
    .line 238
    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mPicasaListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->picasaManagerListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->picasaManagerListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    invoke-interface {v0}, Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;->picasaManagerUploadFailed()V

    .line 244
    :cond_0
    monitor-exit v1

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public picasaManagerUploadInProgress(Lcom/parrot/freeflight3/ARPicasaManager;Ljava/lang/String;F)V
    .locals 2
    .param p1, "picasaManager"    # Lcom/parrot/freeflight3/ARPicasaManager;
    .param p2, "videoPath"    # Ljava/lang/String;
    .param p3, "progress"    # F

    .prologue
    .line 214
    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mPicasaListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->picasaManagerListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->picasaManagerListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;->picasaManagerUploadInProgress(Lcom/parrot/freeflight3/ARPicasaManager;Ljava/lang/String;F)V

    .line 220
    :cond_0
    monitor-exit v1

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFacebookManagerListener(Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    .prologue
    .line 319
    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mFacebookListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 321
    :try_start_0
    iput-object p1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->facebookShareManagerListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    .line 322
    monitor-exit v1

    .line 323
    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPicasaManagerListener(Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    .prologue
    .line 181
    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mPicasaListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    iput-object p1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->picasaManagerListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    .line 184
    monitor-exit v1

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setYoutubeManagerListener(Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    .prologue
    .line 86
    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mYoutubeListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    iput-object p1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->youtubeManagerListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    .line 89
    monitor-exit v1

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public signInToFacebook(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mWorkingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/parrot/freeflight3/ARSocialNetworkService$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/parrot/freeflight3/ARSocialNetworkService$3;-><init>(Lcom/parrot/freeflight3/ARSocialNetworkService;Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method

.method public youtubeManagerAppShouldBeAllowed(Lcom/parrot/freeflight3/ARYoutubeManager;Landroid/content/Intent;)V
    .locals 2
    .param p1, "youtubeManager"    # Lcom/parrot/freeflight3/ARYoutubeManager;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 96
    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mYoutubeListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->youtubeManagerListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->youtubeManagerListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;->youtubeManagerAppShouldBeAllowed(Lcom/parrot/freeflight3/ARYoutubeManager;Landroid/content/Intent;)V

    .line 102
    :cond_0
    monitor-exit v1

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public youtubeManagerAuthNeeded(Lcom/parrot/freeflight3/ARYoutubeManager;)V
    .locals 2
    .param p1, "youtubeManager"    # Lcom/parrot/freeflight3/ARYoutubeManager;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mYoutubeListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->youtubeManagerListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->youtubeManagerListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;->youtubeManagerAuthNeeded(Lcom/parrot/freeflight3/ARYoutubeManager;)V

    .line 114
    :cond_0
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public youtubeManagerUploadDone(Lcom/parrot/freeflight3/ARYoutubeManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "youtubeManager"    # Lcom/parrot/freeflight3/ARYoutubeManager;
    .param p2, "videoPath"    # Ljava/lang/String;
    .param p3, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mYoutubeListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->youtubeManagerListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->youtubeManagerListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;->youtubeManagerUploadDone(Lcom/parrot/freeflight3/ARYoutubeManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    monitor-exit v1

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public youtubeManagerUploadFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mYoutubeListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->youtubeManagerListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->youtubeManagerListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;->youtubeManagerUploadFailed(Ljava/lang/String;)V

    .line 150
    :cond_0
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public youtubeManagerUploadInProgress(Lcom/parrot/freeflight3/ARYoutubeManager;Ljava/lang/String;F)V
    .locals 2
    .param p1, "youtubeManager"    # Lcom/parrot/freeflight3/ARYoutubeManager;
    .param p2, "videoPath"    # Ljava/lang/String;
    .param p3, "progress"    # F

    .prologue
    .line 120
    iget-object v1, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->mYoutubeListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->youtubeManagerListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight3/ARSocialNetworkService;->youtubeManagerListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;->youtubeManagerUploadInProgress(Lcom/parrot/freeflight3/ARYoutubeManager;Ljava/lang/String;F)V

    .line 126
    :cond_0
    monitor-exit v1

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
