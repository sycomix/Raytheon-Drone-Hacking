.class Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$5;
.super Ljava/lang/Object;
.source "AccessoryChoiceActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePadManager$SelectedGamePadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$5;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

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

    .line 282
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$5;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->access$400(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$5;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->access$402(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;Lcom/parrot/freeflight/gamepad/GamePad;)Lcom/parrot/freeflight/gamepad/GamePad;

    .line 286
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$5;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->access$400(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$5;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->access$000(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 287
    new-instance v9, Landroid/view/inputmethod/BaseInputConnection;

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$5;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v9, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 288
    .local v9, "connection":Landroid/view/inputmethod/BaseInputConnection;
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$5;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$5;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->access$000(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;)Lcom/parrot/freeflight/core/model/DelosModel;

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

    .line 292
    .local v10, "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$5;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    new-instance v1, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$5;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    invoke-direct {v1, v2, v10}, Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->access$502(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    goto :goto_0

    .line 294
    .end local v9    # "connection":Landroid/view/inputmethod/BaseInputConnection;
    .end local v10    # "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$5;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    invoke-static {v0, v7}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->access$502(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;)Lcom/parrot/freeflight/gamepad/mapper/CommandMapper;

    goto :goto_0
.end method
