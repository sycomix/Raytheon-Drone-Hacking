.class Lcom/parrot/freeflight/home/HomeUIController$16;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/home/DeviceListView$OnVisibilityChangeListener;


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
    .line 520
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$16;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChange(Z)V
    .locals 3
    .param p1, "animated"    # Z

    .prologue
    const/4 v2, 0x0

    .line 523
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$16;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$1900(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/home/DroneListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/home/DroneListView;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$16;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2100(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/DeviceConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$16;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$2000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/DeviceConnector$IDeviceListListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/core/DeviceConnector;->requestDiscovery(Lcom/parrot/freeflight/core/DeviceConnector$IDeviceListListener;)V

    .line 525
    if-nez p1, :cond_0

    .line 526
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$16;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2200(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/support/percent/PercentRelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$16;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$2200(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/support/percent/PercentRelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/percent/PercentRelativeLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/percent/PercentRelativeLayout;->setTranslationY(F)V

    .line 527
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$16;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2200(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/support/percent/PercentRelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$16;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2300(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/widget/ImageButton;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setRotation(F)V

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$16;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2100(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/DeviceConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/DeviceConnector;->stopDiscovery()V

    .line 532
    if-nez p1, :cond_0

    .line 533
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$16;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2200(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/support/percent/PercentRelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/percent/PercentRelativeLayout;->setTranslationY(F)V

    .line 534
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$16;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2200(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/support/percent/PercentRelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/percent/PercentRelativeLayout;->setVisibility(I)V

    .line 535
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$16;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$2300(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setRotation(F)V

    goto :goto_0
.end method
