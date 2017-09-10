.class public Lcom/parrot/freeflight/home/HomeActivity;
.super Lcom/parrot/freeflight/BaseAppCompatActivity;
.source "HomeActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/mapper/GamePadInputListener;


# static fields
.field private static final PURCHASE_REQUEST_CODE:I = 0xc8


# instance fields
.field private final mConnectionListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

.field private mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

.field private mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

.field private mPurchaseManager:Lcom/parrot/freeflight/core/PurchaseManager;

.field private mUIController:Lcom/parrot/freeflight/home/HomeUIController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;-><init>()V

    .line 178
    new-instance v0, Lcom/parrot/freeflight/home/HomeActivity$1;

    invoke-direct {v0, p0}, Lcom/parrot/freeflight/home/HomeActivity$1;-><init>(Lcom/parrot/freeflight/home/HomeActivity;)V

    iput-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mConnectionListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/home/HomeActivity;)Lcom/parrot/freeflight/core/CoreManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/home/HomeActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 140
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mPurchaseManager:Lcom/parrot/freeflight/core/PurchaseManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/core/PurchaseManager;->handleActivityResult(IILandroid/content/Intent;)V

    .line 143
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 144
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/HomeUIController;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-static {p0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->isResumed(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onBackPressed()V

    .line 152
    :goto_0
    const-string v0, "FFMini.Home"

    const-string v1, "The user wants to exit the application"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->stop()V

    .line 156
    :cond_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/HomeActivity;->supportFinishAfterTransition()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    const-string v3, "FFMini.Home.Life"

    const-string v6, "onCreate Home"

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-super/range {p0 .. p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v3, 0x7f04002a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/home/HomeActivity;->setContentView(I)V

    .line 52
    invoke-static {}, Lcom/parrot/freeflight/core/CoreManager;->getInstance()Lcom/parrot/freeflight/core/CoreManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/home/HomeActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    .line 53
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/home/HomeActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getModelStore()Lcom/parrot/freeflight/core/model/ModelStore;

    move-result-object v9

    .line 54
    .local v9, "modelStore":Lcom/parrot/freeflight/core/model/ModelStore;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/home/HomeActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v11

    .line 55
    .local v11, "academyManager":Lcom/parrot/freeflight/core/academy/AcademyManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/home/HomeActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getGamePadManager()Lcom/parrot/freeflight/gamepad/GamePadManager;

    move-result-object v18

    .line 56
    .local v18, "gamePadManager":Lcom/parrot/freeflight/gamepad/GamePadManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/home/HomeActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getBitmapCache()Lcom/parrot/freeflight/core/BitmapCache;

    move-result-object v17

    .line 58
    .local v17, "bitmapCache":Lcom/parrot/freeflight/core/BitmapCache;
    const v3, 0x7f0f00da

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/Toolbar;

    .line 59
    .local v5, "toolbar":Landroid/support/v7/widget/Toolbar;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/parrot/freeflight/home/HomeActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/home/HomeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v21

    .line 61
    .local v21, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v21, :cond_0

    .line 62
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 64
    :cond_0
    const v3, 0x7f0f0114

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout;

    .line 65
    .local v4, "drawer":Landroid/support/v4/widget/DrawerLayout;
    new-instance v2, Landroid/support/v7/app/ActionBarDrawerToggle;

    const v6, 0x7f08068a

    const v7, 0x7f080689

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 68
    .local v2, "toggle":Landroid/support/v7/app/ActionBarDrawerToggle;
    invoke-virtual {v4, v2}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 69
    invoke-virtual {v2}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 70
    const v3, 0x7f0f0115

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/home/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/support/design/widget/NavigationView;

    .line 71
    .local v14, "navigationView":Landroid/support/design/widget/NavigationView;
    new-instance v3, Lcom/parrot/freeflight/util/PermissionChecker;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/parrot/freeflight/util/PermissionChecker;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/home/HomeActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    .line 72
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/home/HomeActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getPurchaseManager()Lcom/parrot/freeflight/core/PurchaseManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/parrot/freeflight/home/HomeActivity;->mPurchaseManager:Lcom/parrot/freeflight/core/PurchaseManager;

    .line 74
    new-instance v6, Lcom/parrot/freeflight/home/HomeUIController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/home/HomeActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getDeviceConnector()Lcom/parrot/freeflight/core/DeviceConnector;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/home/HomeActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    .line 75
    invoke-virtual {v3}, Lcom/parrot/freeflight/core/CoreManager;->getVideoStreamingController()Lcom/parrot/freeflight/core/video/VideoStreamingController;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/home/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parrot/freeflight/home/HomeActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    move-object/from16 v19, v0

    new-instance v20, Lcom/parrot/freeflight/purchase/Purchaser;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/home/HomeActivity;->mPurchaseManager:Lcom/parrot/freeflight/core/PurchaseManager;

    const/16 v7, 0xc8

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v7}, Lcom/parrot/freeflight/purchase/Purchaser;-><init>(Landroid/app/Activity;Lcom/parrot/freeflight/core/PurchaseManager;I)V

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object v15, v5

    move-object/from16 v16, v4

    invoke-direct/range {v6 .. v20}, Lcom/parrot/freeflight/home/HomeUIController;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/video/VideoStreamingController;Landroid/view/Window;Landroid/support/design/widget/NavigationView;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Lcom/parrot/freeflight/core/BitmapCache;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/purchase/Purchaser;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    .line 77
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "FFMini.Home.Life"

    const-string v1, "onDestroy Home"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/HomeUIController;->destroy()V

    .line 129
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onDestroy()V

    .line 130
    return-void
.end method

.method public onJoystickEvent(FFFF)Z
    .locals 1
    .param p1, "leftJoystickX"    # F
    .param p2, "leftJoystickY"    # F
    .param p3, "rightJoystickX"    # F
    .param p4, "rightJoystickY"    # F

    .prologue
    .line 170
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/parrot/freeflight/home/HomeUIController;->onJoystickEvent(FFFF)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 165
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/home/HomeUIController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
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
    .line 160
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/home/HomeUIController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/HomeUIController;->pause()V

    .line 107
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onPause()V

    .line 108
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
    .line 134
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mPermissionChecker:Lcom/parrot/freeflight/util/PermissionChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/util/PermissionChecker;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 136
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "FFMini.Home.Life"

    const-string v1, "onResume Home"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onResume()V

    .line 101
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/HomeUIController;->resume()V

    .line 102
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v0, p1}, Lcom/parrot/freeflight/home/HomeUIController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 83
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 88
    const-string v0, "FFMini.Home.Life"

    const-string v1, "onStart Home"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStart()V

    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/HomeUIController;->start()V

    .line 92
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/CoreManager;->getConnectionManager()Lcom/parrot/freeflight/core/connection/ConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeActivity;->mConnectionListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->registerListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 93
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/parrot/freeflight/home/HomeActivity;->isChangingConfigurations()Z

    move-result v0

    .line 114
    .local v0, "isChangingConfiguration":Z
    const-string v1, "FFMini.Home.Life"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStop Home, config change : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v1}, Lcom/parrot/freeflight/home/HomeUIController;->stop()V

    .line 117
    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getConnectionManager()Lcom/parrot/freeflight/core/connection/ConnectionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeActivity;->mConnectionListener:Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;

    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->unregisterListener(Lcom/parrot/freeflight/core/connection/ConnectionManager$IListener;)V

    .line 118
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeActivity;->mCoreManager:Lcom/parrot/freeflight/core/CoreManager;

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/CoreManager;->getAcademyManager()Lcom/parrot/freeflight/core/academy/AcademyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/academy/AcademyManager;->stopPudDownload()V

    .line 119
    :cond_0
    invoke-super {p0}, Lcom/parrot/freeflight/BaseAppCompatActivity;->onStop()V

    .line 120
    return-void
.end method

.method public onTriggerEvent(FF)Z
    .locals 1
    .param p1, "leftTriggerValue"    # F
    .param p2, "rightTriggerValue"    # F

    .prologue
    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeActivity;->mUIController:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-virtual {v0, p1, p2}, Lcom/parrot/freeflight/home/HomeUIController;->onTriggerEvent(FF)Z

    move-result v0

    return v0
.end method
