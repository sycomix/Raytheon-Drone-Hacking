.class Lcom/parrot/freeflight/home/HomeUIController$10;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/view/UnclickableEditText$OnActionListener;


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
    .line 456
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$10;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(I)V
    .locals 4
    .param p1, "action"    # I

    .prologue
    .line 459
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController$10;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/home/HomeUIController;->access$300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v3

    instance-of v3, v3, Lcom/parrot/freeflight/core/model/DelosModel;

    if-eqz v3, :cond_0

    .line 460
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController$10;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/home/HomeUIController;->access$300(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/core/model/Model;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/core/model/DelosModel;

    .line 461
    .local v1, "model":Lcom/parrot/freeflight/core/model/DelosModel;
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController$10;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/home/HomeUIController;->access$1600(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/view/UnclickableEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/view/UnclickableEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "newName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->getName()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "currentName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 464
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 465
    invoke-virtual {v1, v2}, Lcom/parrot/freeflight/core/model/DelosModel;->setName(Ljava/lang/String;)V

    .line 471
    .end local v0    # "currentName":Ljava/lang/String;
    .end local v1    # "model":Lcom/parrot/freeflight/core/model/DelosModel;
    .end local v2    # "newName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 466
    .restart local v0    # "currentName":Ljava/lang/String;
    .restart local v1    # "model":Lcom/parrot/freeflight/core/model/DelosModel;
    .restart local v2    # "newName":Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_0

    .line 467
    iget-object v3, p0, Lcom/parrot/freeflight/home/HomeUIController$10;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v3}, Lcom/parrot/freeflight/home/HomeUIController;->access$1600(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/view/UnclickableEditText;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/parrot/freeflight/view/UnclickableEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
