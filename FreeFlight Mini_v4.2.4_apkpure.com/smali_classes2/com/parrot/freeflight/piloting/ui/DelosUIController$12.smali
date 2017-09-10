.class Lcom/parrot/freeflight/piloting/ui/DelosUIController$12;
.super Ljava/lang/Object;
.source "DelosUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/DelosUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    .prologue
    .line 656
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$12;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 659
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$12;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v7}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$2200(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->update()V

    .line 660
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$12;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v7}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$600(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 661
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$12;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v7}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$600(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    move-result-object v7

    invoke-interface {v7}, Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;->getCommandChoice()I

    move-result v4

    .line 662
    .local v4, "lastCommandChoice":I
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$12;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v7}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$600(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    move-result-object v7

    invoke-interface {v7}, Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;->update()V

    .line 663
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$12;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v7}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$600(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;

    move-result-object v7

    invoke-interface {v7}, Lcom/parrot/freeflight/piloting/ui/accessory/IAccessoryController;->getCommandChoice()I

    move-result v3

    .line 664
    .local v3, "commandChoice":I
    if-eq v4, v3, :cond_3

    move v2, v5

    .line 666
    .local v2, "commandChanged":Z
    :goto_0
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$12;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v7}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$2300(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v7

    sget-object v8, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE_DELOS3:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-ne v7, v8, :cond_5

    .line 668
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$12;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v7}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$000(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/parrot/freeflight/core/model/DelosModel;->getAccessoryType()I

    move-result v1

    .line 670
    .local v1, "accessoryType":I
    iget-object v7, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$12;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v7}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$2400(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)I

    move-result v7

    if-eq v7, v1, :cond_4

    move v0, v5

    .line 671
    .local v0, "accessoryChanged":Z
    :goto_1
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$12;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v5, v1}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$2402(Lcom/parrot/freeflight/piloting/ui/DelosUIController;I)I

    .line 676
    .end local v1    # "accessoryType":I
    :goto_2
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$12;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v5}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$800(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v5

    if-eqz v5, :cond_2

    if-nez v2, :cond_0

    if-eqz v0, :cond_2

    .line 677
    :cond_0
    if-eqz v2, :cond_1

    .line 678
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$12;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v5, v3}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$2502(Lcom/parrot/freeflight/piloting/ui/DelosUIController;I)I

    .line 681
    :cond_1
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$12;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v5}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$2600(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    .line 683
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$12;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v5}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$1400(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    .line 687
    .end local v0    # "accessoryChanged":Z
    .end local v2    # "commandChanged":Z
    .end local v3    # "commandChoice":I
    .end local v4    # "lastCommandChoice":I
    :cond_2
    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/DelosUIController$12;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosUIController;

    invoke-static {v5}, Lcom/parrot/freeflight/piloting/ui/DelosUIController;->access$2700(Lcom/parrot/freeflight/piloting/ui/DelosUIController;)V

    .line 688
    return-void

    .restart local v3    # "commandChoice":I
    .restart local v4    # "lastCommandChoice":I
    :cond_3
    move v2, v6

    .line 664
    goto :goto_0

    .restart local v1    # "accessoryType":I
    .restart local v2    # "commandChanged":Z
    :cond_4
    move v0, v6

    .line 670
    goto :goto_1

    .line 673
    .end local v1    # "accessoryType":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "accessoryChanged":Z
    goto :goto_2
.end method
