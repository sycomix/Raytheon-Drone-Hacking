.class Lcom/parrot/freeflight/infos/DroneInfosActivity$5;
.super Ljava/lang/Object;
.source "DroneInfosActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/infos/DroneInfosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/infos/DroneInfosActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/infos/DroneInfosActivity;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$5;->this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;

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

    .line 403
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$5;->this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->access$300(Lcom/parrot/freeflight/infos/DroneInfosActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 417
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$5;->this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->access$302(Lcom/parrot/freeflight/infos/DroneInfosActivity;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;

    .line 407
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$5;->this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->access$300(Lcom/parrot/freeflight/infos/DroneInfosActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 408
    new-instance v9, Landroid/view/inputmethod/BaseInputConnection;

    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$5;->this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v9, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 409
    .local v9, "connection":Landroid/view/inputmethod/BaseInputConnection;
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$5;->this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$5;->this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->access$400(Lcom/parrot/freeflight/infos/DroneInfosActivity;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    const/4 v5, 0x2

    move-object v1, p1

    move v4, v3

    move v6, v3

    move-object v8, v7

    invoke-static/range {v0 .. v9}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IIIILcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/ui/UIController;Landroid/view/inputmethod/BaseInputConnection;)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v10

    .line 413
    .local v10, "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$5;->this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;

    new-instance v1, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    iget-object v2, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$5;->this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;

    invoke-direct {v1, v2, v10}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V

    invoke-static {v0, v1}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->access$502(Lcom/parrot/freeflight/infos/DroneInfosActivity;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    goto :goto_0

    .line 415
    .end local v9    # "connection":Landroid/view/inputmethod/BaseInputConnection;
    .end local v10    # "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosActivity$5;->this$0:Lcom/parrot/freeflight/infos/DroneInfosActivity;

    invoke-static {v0, v7}, Lcom/parrot/freeflight/infos/DroneInfosActivity;->access$502(Lcom/parrot/freeflight/infos/DroneInfosActivity;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    goto :goto_0
.end method
