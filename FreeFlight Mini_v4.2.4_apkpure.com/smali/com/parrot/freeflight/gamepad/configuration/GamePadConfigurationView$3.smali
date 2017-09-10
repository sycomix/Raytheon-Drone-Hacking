.class Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$3;
.super Ljava/lang/Object;
.source "GamePadConfigurationView.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    .line 187
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$3;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommandSelected(Lcom/parrot/freeflight/gamepad/command/Command;)V
    .locals 3
    .param p1, "command"    # Lcom/parrot/freeflight/gamepad/command/Command;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 190
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$3;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$700(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$3;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$700(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->setCommandToChange(Lcom/parrot/freeflight/gamepad/command/Command;)V

    .line 192
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$3;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$100(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$3;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$000(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    instance-of v1, v1, Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$3;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$100(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 194
    .local v0, "commandIndex":I
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$3;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$900(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 197
    .end local v0    # "commandIndex":I
    :cond_0
    return-void
.end method

.method public onInputSelected(Lcom/parrot/freeflight/gamepad/GamePad$Input;)V
    .locals 2
    .param p1, "input"    # Lcom/parrot/freeflight/gamepad/GamePad$Input;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 201
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$3;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$700(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView$3;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;->access$700(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationView;)Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/parrot/freeflight/gamepad/mapper/ConfigurationMapper;->setInputsAndSaveMapping(Lcom/parrot/freeflight/gamepad/GamePad$Input;Lcom/parrot/freeflight/gamepad/GamePad$Input;)V

    .line 202
    :cond_0
    return-void
.end method
