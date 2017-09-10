.class Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;
.super Ljava/lang/Object;
.source "GamePadConfigurationView.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->updateMappingSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 10
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 227
    packed-switch p2, :pswitch_data_0

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$600(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$1000(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)I

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v3}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$000(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/gamepad/GamePad;->getType()I

    move-result v3

    invoke-static {v1, v2, v9, v3}, Lcom/parrot/freeflight/gamepad/command/CommandListFactory;->create(Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;III)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$102(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;Ljava/util/List;)Ljava/util/List;

    .line 236
    iget-object v8, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    new-instance v0, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$000(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/GamePad;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v3}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$600(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v4}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$1000(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)I

    move-result v4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/parrot/freeflight/gamepad/preferences/GamePadLocalPreferences;-><init>(Landroid/content/Context;ILcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;ILcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadJoystickParams;)V

    invoke-static {v8, v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$1102(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;)Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;

    .line 237
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-virtual {v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$000(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$600(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v3}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$1000(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)I

    move-result v3

    const/4 v4, 0x2

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/parrot/freeflight/gamepad/preferences/GamePadMappingFactory;->create(Landroid/content/Context;Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;III)Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;

    move-result-object v7

    .line 238
    .local v7, "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    new-instance v1, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$000(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v3}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$1100(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;

    move-result-object v3

    invoke-direct {v1, v2, v7, v3}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;-><init>(Lcom/parrot/freeflight/gamepad/GamePad;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;Lcom/parrot/freeflight/gamepad/preferences/GamePadPreferences;)V

    invoke-static {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$702(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;)Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    .line 239
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$700(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$800(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->registerListener(Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper$IListener;)V

    .line 240
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$200(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$100(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->setContent(Ljava/util/List;Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;)V

    .line 241
    return-void

    .line 229
    .end local v7    # "mapping":Lcom/parrot/freeflight/gamepad/preferences/GamePadMapping;
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v0, v9}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$1002(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;I)I

    goto/16 :goto_0

    .line 232
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$1002(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;I)I

    goto/16 :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f01e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
