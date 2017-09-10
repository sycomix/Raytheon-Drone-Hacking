.class public Lcom/parrot/freeflight/SplashActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/SplashActivity$TimeoutHandler;
    }
.end annotation


# static fields
.field private static final APPLICATION_SETTINGS_REQUEST_CODE:I = 0x7c

.field private static final FIRST_REQUEST_KEY:Ljava/lang/String; = "first_request"

.field private static final LOCATION_PERMISSION_REQUEST_CODE:I = 0x7b

.field private static final TIMEOUT_DURATION:I = 0x3e8


# instance fields
.field private mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

.field private mCopying:Z

.field private mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

.field private final mEmbeddedFirmwareCopyListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

.field private mLoadingImageView:Landroid/widget/ImageView;

.field private mLogoImageView:Landroid/widget/ImageView;

.field private mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

.field private mPermissionsPref:Landroid/content/SharedPreferences;

.field private final mTimeoutHandler:Lcom/parrot/freeflight/SplashActivity$TimeoutHandler;

.field private mTimeoutPassed:Z

.field private mUserSettings:Lcom/parrot/freeflight/UserSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    .line 46
    new-instance v0, Lcom/parrot/freeflight/SplashActivity$TimeoutHandler;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/SplashActivity$TimeoutHandler;-><init>(Lcom/parrot/freeflight/SplashActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mTimeoutHandler:Lcom/parrot/freeflight/SplashActivity$TimeoutHandler;

    .line 204
    new-instance v0, Lcom/parrot/freeflight/SplashActivity$5;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/SplashActivity$5;-><init>(Lcom/parrot/freeflight/SplashActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mEmbeddedFirmwareCopyListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/SplashActivity;)Lcom/parrot/freeflight/util/PermissionChecker;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/SplashActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/SplashActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/SplashActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/SplashActivity;->showPermissionRequestDialog(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/SplashActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/SplashActivity;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/parrot/freeflight/SplashActivity;->mCopying:Z

    return v0
.end method

.method static synthetic access$202(Lcom/parrot/freeflight/SplashActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/SplashActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/parrot/freeflight/SplashActivity;->mCopying:Z

    return p1
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/SplashActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/SplashActivity;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/parrot/freeflight/SplashActivity;->mTimeoutPassed:Z

    return v0
.end method

.method static synthetic access$302(Lcom/parrot/freeflight/SplashActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/SplashActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/parrot/freeflight/SplashActivity;->mTimeoutPassed:Z

    return p1
.end method

.method private showPermissionRequestDialog(Z)V
    .locals 6
    .param p1, "denied"    # Z

    .prologue
    const v5, 0x7f0803b4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 141
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v3}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/parrot/freeflight/SplashActivity;->mPermissionsPref:Landroid/content/SharedPreferences;

    const-string v4, "first_request"

    .line 142
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    .local v1, "neverAskAgain":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 145
    const v2, 0x7f0803b9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 153
    :goto_1
    const v2, 0x7f0803a8

    new-instance v3, Lcom/parrot/freeflight/SplashActivity$2;

    invoke-direct {v3, p0, v1}, Lcom/parrot/freeflight/SplashActivity$2;-><init>(Lcom/parrot/freeflight/SplashActivity;Z)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 165
    const v2, 0x7f0801a4

    new-instance v3, Lcom/parrot/freeflight/SplashActivity$3;

    invoke-direct {v3, p0}, Lcom/parrot/freeflight/SplashActivity$3;-><init>(Lcom/parrot/freeflight/SplashActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 171
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 172
    return-void

    .end local v1    # "neverAskAgain":Z
    :cond_0
    move v1, v2

    .line 142
    goto :goto_0

    .line 146
    .restart local v1    # "neverAskAgain":Z
    :cond_1
    if-eqz p1, :cond_2

    .line 147
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 148
    const v2, 0x7f0803b8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 150
    :cond_2
    const v2, 0x7f0803bc

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 151
    const v2, 0x7f0803b7

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method


# virtual methods
.method protected nextScreen()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight/SplashActivity$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight/SplashActivity$1;-><init>(Lcom/parrot/freeflight/SplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 118
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 195
    const/16 v0, 0x7c

    if-ne p1, v0, :cond_0

    .line 196
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 197
    invoke-virtual {p0}, Lcom/parrot/freeflight/SplashActivity;->startNextScreen()V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parrot/freeflight/SplashActivity;->showPermissionRequestDialog(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f040048

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/SplashActivity;->setContentView(I)V

    .line 65
    const v0, 0x7f0f01a4

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mLogoImageView:Landroid/widget/ImageView;

    .line 66
    const v0, 0x7f0f00cb

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mLoadingImageView:Landroid/widget/ImageView;

    .line 67
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mTimeoutHandler:Lcom/parrot/freeflight/SplashActivity$TimeoutHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/parrot/freeflight/SplashActivity$TimeoutHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 68
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    .line 69
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getUserSettings()Lcom/parrot/freeflight/UserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mUserSettings:Lcom/parrot/freeflight/UserSettings;

    .line 70
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getAutoLaunchManager()Lcom/parrot/freeflight/core/AutoLaunchManager;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

    .line 71
    invoke-virtual {p0, v1}, Lcom/parrot/freeflight/SplashActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mPermissionsPref:Landroid/content/SharedPreferences;

    .line 72
    new-instance v0, Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/util/PermissionChecker;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    .line 73
    invoke-virtual {p0}, Lcom/parrot/freeflight/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/util/sync/SyncAdapter;->startSync(Landroid/content/Context;)V

    .line 74
    invoke-static {}, Lcom/parrot/freeflight/media/model/IncompleteDownloadCleaner;->cleanAsync()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/SplashActivity;->mCopying:Z

    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

    iget-object v1, p0, Lcom/parrot/freeflight/SplashActivity;->mEmbeddedFirmwareCopyListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->copyEmbeddedFirmwares(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V

    .line 77
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-virtual {v0}, Lcom/parrot/freeflight/util/PermissionChecker;->closePermissionRequestDialog()V

    .line 95
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mTimeoutHandler:Lcom/parrot/freeflight/SplashActivity$TimeoutHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/SplashActivity$TimeoutHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mLogoImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mAutoLaunchManager:Lcom/parrot/freeflight/core/AutoLaunchManager;

    iget-object v1, p0, Lcom/parrot/freeflight/SplashActivity;->mEmbeddedFirmwareCopyListener:Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->removeEmbeddedFirmwareCopyListener(Lcom/parrot/freeflight/update/task/EmbeddedFirmwareCopyTask$OnCompletionListener;)V

    .line 98
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 99
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 175
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_1

    .line 176
    array-length v0, p3

    if-lez v0, :cond_0

    aget v0, p3, v4

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v4

    new-array v2, v3, [I

    const v3, 0x7f080623

    aput v3, v2, v4

    const v3, 0x7f080625

    new-instance v4, Lcom/parrot/freeflight/SplashActivity$4;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/SplashActivity$4;-><init>(Lcom/parrot/freeflight/SplashActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/util/PermissionChecker;->checkAndAskPermissions([Ljava/lang/String;[IILcom/parrot/freeflight/util/PermissionChecker$Listener;)V

    .line 191
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mPermissionsPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_request"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 186
    invoke-direct {p0, v3}, Lcom/parrot/freeflight/SplashActivity;->showPermissionRequestDialog(Z)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/util/PermissionChecker;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStart()V

    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->start()V

    .line 83
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mLoadingImageView:Landroid/widget/ImageView;

    const v1, 0x7f050013

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 84
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/parrot/freeflight/SplashActivity;->mLoadingImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 89
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStop()V

    .line 90
    return-void
.end method

.method protected startNextScreen()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 121
    const-string v3, "legal_mentions_shared_preferences"

    invoke-virtual {p0, v3, v4}, Lcom/parrot/freeflight/SplashActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 122
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "legal_mentions_accepted"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 124
    .local v1, "legalMentionsAccepted":Z
    if-eqz v1, :cond_1

    .line 125
    iget-object v3, p0, Lcom/parrot/freeflight/SplashActivity;->mUserSettings:Lcom/parrot/freeflight/UserSettings;

    invoke-virtual {v3}, Lcom/parrot/freeflight/UserSettings;->getUserDrone()Lcom/parrot/freeflight/UserDrone;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 126
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/parrot/freeflight/home/HomeActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/SplashActivity;->finish()V

    .line 136
    return-void

    .line 128
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/parrot/freeflight/home/connection/DroneDiscoveringActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/parrot/freeflight/about/LegalMentionsActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "is_from_splash_screen"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/SplashActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
