.class public Lcom/parrot/freeflight3/ARFacebookShareManager;
.super Ljava/lang/Object;
.source "ARFacebookShareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight3/ARFacebookShareManager$FileUploadCallback;,
        Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;
    }
.end annotation


# static fields
.field private static final PUBLISH_PERMISSION:Ljava/lang/String; = "publish_actions"

.field private static final TAG:Ljava/lang/String; = "ARFacebookShareManager"


# instance fields
.field private dialogCallback:Lcom/facebook/widget/FacebookDialog$Callback;

.field private mListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

.field private mPendingPublishReauthorization:Z

.field private statusCallback:Lcom/facebook/Session$StatusCallback;

.field private uiHelper:Lcom/facebook/UiLifecycleHelper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/parrot/freeflight3/ARFacebookShareManager$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight3/ARFacebookShareManager$1;-><init>(Lcom/parrot/freeflight3/ARFacebookShareManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->dialogCallback:Lcom/facebook/widget/FacebookDialog$Callback;

    .line 67
    new-instance v0, Lcom/parrot/freeflight3/ARFacebookShareManager$2;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight3/ARFacebookShareManager$2;-><init>(Lcom/parrot/freeflight3/ARFacebookShareManager;)V

    iput-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->statusCallback:Lcom/facebook/Session$StatusCallback;

    .line 108
    iput-object p2, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->mListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->mPendingPublishReauthorization:Z

    .line 110
    new-instance v0, Lcom/facebook/UiLifecycleHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->mListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight3/ARFacebookShareManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->mPendingPublishReauthorization:Z

    return v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight3/ARFacebookShareManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight3/ARFacebookShareManager;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->mPendingPublishReauthorization:Z

    return p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight3/ARFacebookShareManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->hasPublishPermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight3/ARFacebookShareManager;)Lcom/facebook/Session$StatusCallback;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/ARFacebookShareManager;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->statusCallback:Lcom/facebook/Session$StatusCallback;

    return-object v0
.end method

.method private hasPublishPermission()Z
    .locals 3

    .prologue
    .line 365
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 366
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v1

    const-string v2, "publish_actions"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static logoutAndForgetToken(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 376
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 377
    .local v0, "activSession":Lcom/facebook/Session;
    if-nez v0, :cond_0

    .line 379
    invoke-static {p0}, Lcom/facebook/Session;->openActiveSessionFromCache(Landroid/content/Context;)Lcom/facebook/Session;

    move-result-object v0

    .line 382
    :cond_0
    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 385
    const-string v1, "ARFacebookShareManager"

    const-string v2, "Close and clear token done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_1
    return-void
.end method


# virtual methods
.method public isSignedIn()Z
    .locals 2

    .prologue
    .line 150
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 151
    .local v0, "activeSession":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onFBActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    iget-object v1, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->dialogCallback:Lcom/facebook/widget/FacebookDialog$Callback;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)V

    .line 372
    return-void
.end method

.method public shareLink(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZLjava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaUrl"    # Ljava/lang/String;
    .param p3, "mediaThumbnailUrl"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "activity"    # Landroid/app/Activity;
    .param p6, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p7, "isVideo"    # Z
    .param p8, "appName"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 291
    .local v2, "session":Lcom/facebook/Session;
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    const/4 v5, 0x0

    sget-object v8, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    aput-object v8, v3, v5

    invoke-static {p1, v3}, Lcom/facebook/widget/FacebookDialog;->canPresentShareDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    const-string v3, "ARFacebookShareManager"

    const-string v5, "Can present share dialog"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v3, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    invoke-direct {v3, p5}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 295
    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setApplicationName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$Builder;

    move-result-object v3

    check-cast v3, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    .line 296
    invoke-virtual {v3, p2}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setLink(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v3

    check-cast v3, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    .line 297
    invoke-virtual {v3, p4}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v3

    check-cast v3, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    .line 298
    invoke-virtual {v3, p3}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setPicture(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v3

    check-cast v3, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    .line 299
    invoke-virtual {v3, p4}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->setCaption(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v3

    check-cast v3, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;

    .line 300
    invoke-virtual {v3}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object v7

    .line 301
    .local v7, "shareDialog":Lcom/facebook/widget/FacebookDialog;
    iget-object v3, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v7}, Lcom/facebook/widget/FacebookDialog;->present()Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/facebook/UiLifecycleHelper;->trackPendingDialogCall(Lcom/facebook/widget/FacebookDialog$PendingCall;)V

    .line 362
    .end local v7    # "shareDialog":Lcom/facebook/widget/FacebookDialog;
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-direct {p0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->hasPublishPermission()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 305
    const-string v3, "ARFacebookShareManager"

    const-string v5, "Can NOT present share dialog"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v3, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->mListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    if-eqz v3, :cond_2

    .line 308
    iget-object v3, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->mListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    invoke-interface {v3, p0}, Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;->facebookShareManagerUploadingStarted(Lcom/parrot/freeflight3/ARFacebookShareManager;)V

    .line 311
    :cond_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 312
    .local v4, "postParams":Landroid/os/Bundle;
    const-string v3, "caption"

    invoke-virtual {v4, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v3, "name"

    invoke-virtual {v4, v3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v3, "link"

    invoke-virtual {v4, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v3, "picture"

    invoke-virtual {v4, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance v6, Lcom/parrot/freeflight3/ARFacebookShareManager$8;

    invoke-direct {v6, p0}, Lcom/parrot/freeflight3/ARFacebookShareManager$8;-><init>(Lcom/parrot/freeflight3/ARFacebookShareManager;)V

    .line 330
    .local v6, "callback":Lcom/facebook/Request$Callback;
    new-instance v1, Lcom/facebook/Request;

    const-string v3, "me/feed"

    sget-object v5, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct/range {v1 .. v6}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 333
    .local v1, "request":Lcom/facebook/Request;
    new-instance v3, Lcom/parrot/freeflight3/ARFacebookShareManager$9;

    invoke-direct {v3, p0, v1}, Lcom/parrot/freeflight3/ARFacebookShareManager$9;-><init>(Lcom/parrot/freeflight3/ARFacebookShareManager;Lcom/facebook/Request;)V

    invoke-virtual {p5, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 342
    .end local v1    # "request":Lcom/facebook/Request;
    .end local v4    # "postParams":Landroid/os/Bundle;
    .end local v6    # "callback":Lcom/facebook/Request$Callback;
    :cond_3
    invoke-virtual {v2}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 345
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->mPendingPublishReauthorization:Z

    .line 346
    new-instance v3, Lcom/parrot/freeflight3/ARFacebookShareManager$10;

    invoke-direct {v3, p0, p6, v2, p5}, Lcom/parrot/freeflight3/ARFacebookShareManager$10;-><init>(Lcom/parrot/freeflight3/ARFacebookShareManager;Landroid/support/v4/app/Fragment;Lcom/facebook/Session;Landroid/app/Activity;)V

    invoke-virtual {p5, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public signIn(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const-string v0, "ARFacebookShareManager"

    const-string v1, "Session is active"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Lcom/parrot/freeflight3/ARFacebookShareManager$3;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight3/ARFacebookShareManager$3;-><init>(Lcom/parrot/freeflight3/ARFacebookShareManager;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->mListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->mListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    invoke-interface {v0, p0}, Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;->facebookShareManagerIsSignedIn(Lcom/parrot/freeflight3/ARFacebookShareManager;)V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string v0, "ARFacebookShareManager"

    const-string v1, "Open session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v0, Lcom/parrot/freeflight3/ARFacebookShareManager$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/parrot/freeflight3/ARFacebookShareManager$4;-><init>(Lcom/parrot/freeflight3/ARFacebookShareManager;Landroid/support/v4/app/Fragment;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateUserLogin()V
    .locals 3

    .prologue
    .line 156
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 157
    .local v1, "session":Lcom/facebook/Session;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    new-instance v2, Lcom/parrot/freeflight3/ARFacebookShareManager$5;

    invoke-direct {v2, p0}, Lcom/parrot/freeflight3/ARFacebookShareManager$5;-><init>(Lcom/parrot/freeflight3/ARFacebookShareManager;)V

    invoke-static {v1, v2}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v0

    .line 176
    .local v0, "meRequest":Lcom/facebook/Request;
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 178
    .end local v0    # "meRequest":Lcom/facebook/Request;
    :cond_0
    return-void
.end method

.method public uploadMedia(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZLjava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imagePath"    # Ljava/lang/String;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p5, "isVideo"    # Z
    .param p6, "appName"    # Ljava/lang/String;

    .prologue
    .line 182
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v3, "mediaFile":Ljava/io/File;
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v6

    .line 185
    .local v6, "session":Lcom/facebook/Session;
    if-eqz p5, :cond_1

    .line 187
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    const/4 v9, 0x0

    sget-object v10, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->VIDEO:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    aput-object v10, v8, v9

    invoke-static {p1, v8}, Lcom/facebook/widget/FacebookDialog;->canPresentShareDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;)Z

    move-result v1

    .line 193
    .local v1, "canPresentShareDialog":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 195
    const-string v8, "ARFacebookShareManager"

    const-string v9, "Can present share dialog"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    if-eqz p5, :cond_2

    .line 200
    new-instance v8, Lcom/facebook/widget/FacebookDialog$VideoShareDialogBuilder;

    invoke-direct {v8, p3}, Lcom/facebook/widget/FacebookDialog$VideoShareDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 201
    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Lcom/facebook/widget/FacebookDialog$VideoShareDialogBuilder;->setApplicationName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$Builder;

    move-result-object v8

    check-cast v8, Lcom/facebook/widget/FacebookDialog$VideoShareDialogBuilder;

    .line 202
    invoke-virtual {v8, v3}, Lcom/facebook/widget/FacebookDialog$VideoShareDialogBuilder;->addVideoFile(Ljava/io/File;)Lcom/facebook/widget/FacebookDialog$VideoDialogBuilderBase;

    move-result-object v8

    check-cast v8, Lcom/facebook/widget/FacebookDialog$VideoShareDialogBuilder;

    .line 203
    invoke-virtual {v8}, Lcom/facebook/widget/FacebookDialog$VideoShareDialogBuilder;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object v7

    .line 213
    .local v7, "shareDialog":Lcom/facebook/widget/FacebookDialog;
    :goto_1
    iget-object v8, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v7}, Lcom/facebook/widget/FacebookDialog;->present()Lcom/facebook/widget/FacebookDialog$PendingCall;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/facebook/UiLifecycleHelper;->trackPendingDialogCall(Lcom/facebook/widget/FacebookDialog$PendingCall;)V

    .line 268
    .end local v7    # "shareDialog":Lcom/facebook/widget/FacebookDialog;
    :cond_0
    :goto_2
    return-void

    .line 191
    .end local v1    # "canPresentShareDialog":Z
    :cond_1
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    const/4 v9, 0x0

    sget-object v10, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->PHOTOS:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    aput-object v10, v8, v9

    invoke-static {p1, v8}, Lcom/facebook/widget/FacebookDialog;->canPresentShareDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;)Z

    move-result v1

    .restart local v1    # "canPresentShareDialog":Z
    goto :goto_0

    .line 208
    :cond_2
    new-instance v8, Lcom/facebook/widget/FacebookDialog$PhotoShareDialogBuilder;

    invoke-direct {v8, p3}, Lcom/facebook/widget/FacebookDialog$PhotoShareDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 209
    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Lcom/facebook/widget/FacebookDialog$PhotoShareDialogBuilder;->setApplicationName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$Builder;

    move-result-object v8

    check-cast v8, Lcom/facebook/widget/FacebookDialog$PhotoShareDialogBuilder;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/io/File;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    .line 210
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/facebook/widget/FacebookDialog$PhotoShareDialogBuilder;->addPhotoFiles(Ljava/util/Collection;)Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;

    move-result-object v8

    check-cast v8, Lcom/facebook/widget/FacebookDialog$PhotoShareDialogBuilder;

    .line 211
    invoke-virtual {v8}, Lcom/facebook/widget/FacebookDialog$PhotoShareDialogBuilder;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object v7

    .restart local v7    # "shareDialog":Lcom/facebook/widget/FacebookDialog;
    goto :goto_1

    .line 215
    .end local v7    # "shareDialog":Lcom/facebook/widget/FacebookDialog;
    :cond_3
    invoke-direct {p0}, Lcom/parrot/freeflight3/ARFacebookShareManager;->hasPublishPermission()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 219
    :try_start_0
    const-string v8, "ARFacebookShareManager"

    const-string v9, "Can NOT present share dialog"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v8, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->mListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    if-eqz v8, :cond_4

    .line 222
    iget-object v8, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->mListener:Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;

    invoke-interface {v8, p0}, Lcom/parrot/freeflight3/ARFacebookShareManager$ARFacebookShareManagerListener;->facebookShareManagerUploadingStarted(Lcom/parrot/freeflight3/ARFacebookShareManager;)V

    .line 225
    :cond_4
    if-eqz p5, :cond_5

    .line 227
    new-instance v8, Lcom/parrot/freeflight3/ARFacebookShareManager$FileUploadCallback;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/parrot/freeflight3/ARFacebookShareManager$FileUploadCallback;-><init>(Lcom/parrot/freeflight3/ARFacebookShareManager;Lcom/parrot/freeflight3/ARFacebookShareManager$1;)V

    invoke-static {v6, v3, v8}, Lcom/facebook/Request;->newUploadVideoRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v5

    .line 233
    .local v5, "requestTmp":Lcom/facebook/Request;
    :goto_3
    move-object v4, v5

    .line 235
    .local v4, "request":Lcom/facebook/Request;
    new-instance v8, Lcom/parrot/freeflight3/ARFacebookShareManager$6;

    invoke-direct {v8, p0, v4}, Lcom/parrot/freeflight3/ARFacebookShareManager$6;-><init>(Lcom/parrot/freeflight3/ARFacebookShareManager;Lcom/facebook/Request;)V

    invoke-virtual {p3, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 242
    .end local v4    # "request":Lcom/facebook/Request;
    .end local v5    # "requestTmp":Lcom/facebook/Request;
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 231
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_5
    :try_start_1
    new-instance v8, Lcom/parrot/freeflight3/ARFacebookShareManager$FileUploadCallback;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/parrot/freeflight3/ARFacebookShareManager$FileUploadCallback;-><init>(Lcom/parrot/freeflight3/ARFacebookShareManager;Lcom/parrot/freeflight3/ARFacebookShareManager$1;)V

    invoke-static {v6, v3, v8}, Lcom/facebook/Request;->newUploadPhotoRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .restart local v5    # "requestTmp":Lcom/facebook/Request;
    goto :goto_3

    .line 247
    .end local v5    # "requestTmp":Lcom/facebook/Request;
    :cond_6
    invoke-virtual {v6}, Lcom/facebook/Session;->isOpened()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 250
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/parrot/freeflight3/ARFacebookShareManager;->mPendingPublishReauthorization:Z

    .line 251
    new-instance v8, Lcom/parrot/freeflight3/ARFacebookShareManager$7;

    invoke-direct {v8, p0, p4, v6, p3}, Lcom/parrot/freeflight3/ARFacebookShareManager$7;-><init>(Lcom/parrot/freeflight3/ARFacebookShareManager;Landroid/support/v4/app/Fragment;Lcom/facebook/Session;Landroid/app/Activity;)V

    invoke-virtual {p3, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2
.end method
