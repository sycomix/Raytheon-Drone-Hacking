.class Lcom/parrot/freeflight/home/HomeUIController$9;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 444
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$9;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 447
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$9;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/UserDrone;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$9;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    iget v0, v0, Lcom/parrot/freeflight/home/HomeUIController;->mDroneConnectorState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 448
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$9;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$1600(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/view/UnclickableEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/view/UnclickableEditText;->startEdition()V

    .line 449
    const/4 v0, 0x1

    .line 451
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
