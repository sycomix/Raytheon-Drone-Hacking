.class public Lcom/parrot/freeflight/piloting/PilotingActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "PilotingActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputListener;


# static fields
.field public static final KEY_EXTRA_PRODUCT:Ljava/lang/String; = "product"

.field private static final REQUEST_CODE_DRONE_INIT:I = 0x1

.field private static final SAVED_STATE_DRONE_INIT_STARTED:Ljava/lang/String; = "drone_init_started"


# instance fields
.field private mDroneInitStarted:Z

.field private mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

.field private mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/piloting/PilotingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/PilotingActivity;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mDroneInitStarted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/parrot/freeflight/piloting/PilotingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/piloting/PilotingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mDroneInitStarted:Z

    return p1
.end method

.method public static getStartingIntent(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 212
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getAutoLaunchManager()Lcom/parrot/freeflight/core/AutoLaunchManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/AutoLaunchManager;->getPendingIntent()Landroid/content/Intent;

    move-result-object v0

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 214
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/parrot/freeflight/piloting/PilotingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "product"

    invoke-virtual {p1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 156
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 157
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mDroneInitStarted:Z

    .line 159
    if-nez p2, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->finish()V

    .line 163
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    :cond_0
    const-string v0, "FFMini.Pilot"

    const-string v1, "returning on Homepage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {p0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->isResumed(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onBackPressed()V

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->supportFinishAfterTransition()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    const-string v0, "FFMini.Pilot.Life"

    const-string v2, "onCreate Piloting"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 55
    .local v10, "intent":Landroid/content/Intent;
    const/4 v12, 0x0

    .line 56
    .local v12, "product":Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    if-eqz p1, :cond_0

    .line 57
    const-string v0, "product"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v12

    .line 59
    :cond_0
    if-nez v12, :cond_1

    if-eqz v10, :cond_1

    const-string v0, "product"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "product"

    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v2}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v2

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getFromValue(I)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v12

    .line 62
    :cond_1
    if-nez v12, :cond_2

    .line 63
    sget-object v12, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MAX:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 65
    :cond_2
    iput-object v12, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 66
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v9

    .line 67
    .local v9, "coreManager":Lcom/parrot/freeflight/core/CoreManager;
    invoke-virtual {v9}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v11

    .line 68
    .local v11, "modelStore":Lcom/parrot/freeflight/core/model/ModelStore;
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/PilotingBuilder;->getLayoutResId(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->setContentView(I)V

    .line 70
    invoke-virtual {v11}, Lcom/parrot/freeflight/core/model/ModelStore;->getModel()Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    .line 71
    .local v1, "model":Lcom/parrot/freeflight/core/model/Model;
    if-nez v1, :cond_3

    .line 72
    const-string v0, "FFMini.Pilot"

    const-string v2, "model is null but we have reached PilotingActivity, running dummy model"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v1, Lcom/parrot/freeflight/piloting/model/DummyDelosModel;

    .end local v1    # "model":Lcom/parrot/freeflight/core/model/Model;
    new-instance v0, Lcom/parrot/freeflight/core/model/LocalStorage;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_DELOS3:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-direct {v0, v2, v3}, Lcom/parrot/freeflight/core/model/LocalStorage;-><init>(Landroid/content/Context;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;)V

    invoke-virtual {v9}, Lcom/parrot/freeflight/core/CoreManager;->getConnectionManager()Lcom/parrot/freeflight/core/connection/ConnectionManager;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/parrot/freeflight/piloting/model/DummyDelosModel;-><init>(Lcom/parrot/freeflight/core/model/LocalStorage;Lcom/parrot/freeflight/core/connection/ConnectionManager;)V

    .line 75
    .restart local v1    # "model":Lcom/parrot/freeflight/core/model/Model;
    :cond_3
    new-instance v5, Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-direct {v5, p0}, Lcom/parrot/freeflight/util/PermissionChecker;-><init>(Landroid/app/Activity;)V

    .line 76
    .local v5, "permissionChecker":Lcom/parrot/freeflight/util/PermissionChecker;
    if-eqz p1, :cond_4

    const-string v0, "drone_init_started"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mDroneInitStarted:Z

    .line 77
    iget-object v2, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/PilotingActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 78
    invoke-virtual {v9}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v6

    new-instance v7, Lcom/parrot/freeflight/piloting/PilotingActivity$1;

    invoke-direct {v7, p0}, Lcom/parrot/freeflight/piloting/PilotingActivity$1;-><init>(Lcom/parrot/freeflight/piloting/PilotingActivity;)V

    new-instance v8, Lcom/parrot/freeflight/piloting/PilotingActivity$2;

    invoke-direct {v8, p0}, Lcom/parrot/freeflight/piloting/PilotingActivity$2;-><init>(Lcom/parrot/freeflight/piloting/PilotingActivity;)V

    move-object v0, p0

    move-object v4, p1

    .line 77
    invoke-static/range {v0 .. v8}, Lcom/parrot/freeflight/piloting/PilotingBuilder;->buildUIController(Landroid/content/Context;Lcom/parrot/freeflight/core/model/Model;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Landroid/view/Window;Landroid/os/Bundle;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/piloting/ui/UIController$OnBackButtonClickListener;Lcom/parrot/freeflight/piloting/ui/DelosUIController$OnDroneNotInitListener;)Lcom/parrot/freeflight/piloting/ui/UIController;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    .line 92
    return-void

    .line 76
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "FFMini.Pilot.Life"

    const-string v1, "onDestroy Piloting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController;->destroy()V

    .line 151
    :cond_0
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 152
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 206
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/piloting/ui/UIController;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onJoystickEvent(FFFF)Z
    .locals 1
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F

    .prologue
    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/parrot/freeflight/piloting/ui/UIController;->onJoystickEvent(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 191
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/UIController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/UIController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController;->pause()V

    .line 118
    :cond_0
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onPause()V

    .line 119
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
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
    .line 178
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 179
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0, p1, p2, p3}, Lcom/parrot/freeflight/piloting/ui/UIController;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 182
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onResume()V

    .line 108
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController;->resume()V

    .line 111
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/piloting/ui/UIController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    :cond_0
    const-string v0, "product"

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->getValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    const-string v0, "drone_init_started"

    iget-boolean v1, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mDroneInitStarted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "FFMini.Pilot.Life"

    const-string v1, "onStart Piloting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStart()V

    .line 100
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController;->start()V

    .line 103
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 134
    const-string v0, "FFMini.Pilot.Life"

    const-string v1, "onStop Piloting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0}, Lcom/parrot/freeflight/piloting/ui/UIController;->stop()V

    .line 139
    :cond_0
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStop()V

    .line 140
    return-void
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 201
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/PilotingActivity;->mUIController:Lcom/parrot/freeflight/piloting/ui/UIController;

    invoke-interface {v0, p1, p2}, Lcom/parrot/freeflight/piloting/ui/UIController;->onTriggerEvent(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
