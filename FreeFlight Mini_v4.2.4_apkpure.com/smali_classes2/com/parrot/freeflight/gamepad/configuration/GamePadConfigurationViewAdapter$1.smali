.class Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$1;
.super Ljava/lang/Object;
.source "GamePadConfigurationViewAdapter.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder$InputClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputClick(I)V
    .locals 2
    .param p1, "inputId"    # I

    .prologue
    .line 91
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->access$000(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;)Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->access$100(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;)Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->access$000(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;)Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/parrot/freeflight/gamepad/GamePad$InputsOwner;->getInputById(I)Lcom/parrot/freeflight/gamepad/GamePad$Input;

    move-result-object v0

    .line 93
    .local v0, "selectedInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->access$100(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;)Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$IListener;->onInputSelected(Lcom/parrot/freeflight/gamepad/GamePad$Input;)V

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$1;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->access$200(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;)V

    .line 98
    .end local v0    # "selectedInput":Lcom/parrot/freeflight/gamepad/GamePad$Input;
    :cond_1
    return-void
.end method
