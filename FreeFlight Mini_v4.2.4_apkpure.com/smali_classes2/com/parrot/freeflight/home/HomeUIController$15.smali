.class Lcom/parrot/freeflight/home/HomeUIController$15;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/home/HomeUIController;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/parrot/freeflight/core/model/ModelStore;Lcom/parrot/freeflight/core/DeviceConnector;Lcom/parrot/freeflight/core/academy/AcademyManager;Lcom/parrot/freeflight/core/video/VideoStreamingController;Landroid/view/Window;Landroid/support/design/widget/NavigationView;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Lcom/parrot/freeflight/core/BitmapCache;Lcom/parrot/freeflight/gamepad/GamePadManager;Lcom/parrot/freeflight/util/PermissionChecker;Lcom/parrot/freeflight/purchase/Purchaser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/home/HomeUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/home/HomeUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/home/HomeUIController;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$15;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 505
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$15;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$1900(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/home/DroneListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/DroneListView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$15;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$1900(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/home/DroneListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/parrot/freeflight/home/DroneListView;->switchVisibility(Z)V

    .line 517
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$15;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$1400(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/util/PermissionChecker;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v4

    new-array v2, v3, [I

    const v3, 0x7f0803ba

    aput v3, v2, v4

    const v3, 0x7f0803b7

    new-instance v4, Lcom/parrot/freeflight/home/HomeUIController$15$1;

    invoke-direct {v4, p0}, Lcom/parrot/freeflight/home/HomeUIController$15$1;-><init>(Lcom/parrot/freeflight/home/HomeUIController$15;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parrot/freeflight/util/PermissionChecker;->checkAndAskPermissions([Ljava/lang/String;[IILcom/parrot/freeflight/util/PermissionChecker$Listener;)V

    goto :goto_0
.end method
