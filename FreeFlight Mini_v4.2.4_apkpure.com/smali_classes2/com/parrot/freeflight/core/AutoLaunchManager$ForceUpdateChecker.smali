.class Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;
.super Lcom/parrot/freeflight/core/AutoLaunchChecker;
.source "AutoLaunchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/AutoLaunchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForceUpdateChecker"
.end annotation


# instance fields
.field private mDroneNeedsUpdate:Z

.field final synthetic this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;


# direct methods
.method private constructor <init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-direct {p0}, Lcom/parrot/freeflight/core/AutoLaunchChecker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parrot/freeflight/core/AutoLaunchManager;Lcom/parrot/freeflight/core/AutoLaunchManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager;
    .param p2, "x1"    # Lcom/parrot/freeflight/core/AutoLaunchManager$1;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;-><init>(Lcom/parrot/freeflight/core/AutoLaunchManager;)V

    return-void
.end method

.method static synthetic access$402(Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;
    .param p1, "x1"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->mDroneNeedsUpdate:Z

    return p1
.end method


# virtual methods
.method public getLaunchIntent()Landroid/content/Intent;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->mDroneNeedsUpdate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v0}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$100(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/UserDrone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    iget-object v0, v0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    invoke-static {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->access$100(Lcom/parrot/freeflight/core/AutoLaunchManager;)Lcom/parrot/freeflight/UserDrone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/UserDrone;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/update/ForceUpdateActivity;->getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Landroid/content/Intent;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLaunchType(Landroid/app/Activity;)I
    .locals 1
    .param p1, "currentActivity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 168
    instance-of v0, p1, Lcom/parrot/freeflight/update/ForceUpdateActivity;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/parrot/freeflight/update/UpdaterActivity;

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    const/4 v0, 0x2

    .line 172
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->getLaunchType(Landroid/app/Activity;)I

    move-result v0

    goto :goto_0
.end method

.method public refreshCondition()V
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->mDroneNeedsUpdate:Z

    invoke-super {p0, v0}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->setCondition(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->isConditionMet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    iget-object v0, v0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->lockGamePadMode()V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->this$0:Lcom/parrot/freeflight/core/AutoLaunchManager;

    iget-object v0, v0, Lcom/parrot/freeflight/core/AutoLaunchManager;->mGamePadManager:Lcom/parrot/freeflight/gamepad/GamePadManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/GamePadManager;->unlockGamePadMode()V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/parrot/freeflight/core/AutoLaunchChecker;->reset()V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchManager$ForceUpdateChecker;->mDroneNeedsUpdate:Z

    .line 153
    return-void
.end method
