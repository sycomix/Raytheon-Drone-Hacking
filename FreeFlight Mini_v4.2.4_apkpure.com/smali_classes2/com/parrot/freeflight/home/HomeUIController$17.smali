.class Lcom/parrot/freeflight/home/HomeUIController$17;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/home/DeviceListView$OnAnimationListener;


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
    .line 540
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$17;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosingAnimationStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 543
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$17;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$2400(Lcom/parrot/freeflight/home/HomeUIController;ZZ)V

    .line 544
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$17;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$2500(Lcom/parrot/freeflight/home/HomeUIController;ZZ)V

    .line 545
    return-void
.end method

.method public onOpeningAnimationStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 549
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$17;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0, v1, v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$2400(Lcom/parrot/freeflight/home/HomeUIController;ZZ)V

    .line 550
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$17;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0, v1, v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$2500(Lcom/parrot/freeflight/home/HomeUIController;ZZ)V

    .line 551
    return-void
.end method
