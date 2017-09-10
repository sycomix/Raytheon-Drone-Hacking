.class Lcom/parrot/freeflight/home/HomeUIController$24;
.super Ljava/lang/Object;
.source "HomeUIController.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/home/HomeUIController;
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
    .line 668
    iput-object p1, p0, Lcom/parrot/freeflight/home/HomeUIController$24;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGamePadChange(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 11
    .param p1, "gamePad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 672
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$24;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$500(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 693
    :goto_0
    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$24;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$500(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$24;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$500(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$24;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$3200(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/GamePad;->removeStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$24;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/home/HomeUIController;->access$502(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;

    .line 680
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$24;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$500(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 681
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$24;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$3200(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/gamepad/GamePad$StateListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/gamepad/GamePad;->addStateListener(Lcom/parrot/freeflight/gamepad/GamePad$StateListener;)V

    .line 683
    new-instance v9, Landroid/view/inputmethod/BaseInputConnection;

    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$24;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$3300(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/view/Window;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v9, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 684
    .local v9, "connection":Landroid/view/inputmethod/BaseInputConnection;
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$24;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0}, Lcom/parrot/freeflight/home/HomeUIController;->access$1200(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$24;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    .line 685
    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/UserDrone;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/parrot/freeflight/home/HomeUIController$24;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$000(Lcom/parrot/freeflight/home/HomeUIController;)Lcom/parrot/freeflight/UserDrone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/UserDrone;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    :goto_1
    const/4 v5, 0x2

    move-object v1, p1

    move v4, v3

    move v6, v3

    move-object v8, v7

    .line 684
    invoke-static/range {v0 .. v9}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIIILcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/UIController;Landroid/view/inputmethod/BaseInputConnection;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v10

    .line 689
    .local v10, "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$24;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    new-instance v1, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    iget-object v2, p0, Lcom/parrot/freeflight/home/HomeUIController$24;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v2}, Lcom/parrot/freeflight/home/HomeUIController;->access$1200(Lcom/parrot/freeflight/home/HomeUIController;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V

    invoke-static {v0, v1}, Lcom/parrot/freeflight/home/HomeUIController;->access$3402(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    goto :goto_0

    .line 685
    .end local v10    # "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    :cond_2
    sget-object v2, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    goto :goto_1

    .line 691
    .end local v9    # "connection":Landroid/view/inputmethod/BaseInputConnection;
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/home/HomeUIController$24;->this$0:Lcom/parrot/freeflight/home/HomeUIController;

    invoke-static {v0, v7}, Lcom/parrot/freeflight/home/HomeUIController;->access$3402(Lcom/parrot/freeflight/home/HomeUIController;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    goto :goto_0
.end method
