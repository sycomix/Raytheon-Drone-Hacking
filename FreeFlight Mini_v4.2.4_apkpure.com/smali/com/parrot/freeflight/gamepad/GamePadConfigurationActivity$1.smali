.class Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$1;
.super Ljava/lang/Object;
.source "GamePadConfigurationActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/gamepad/GamePadManager$GamePadListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$1;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGamePadListChange(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/gamepad/GamePad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "knownGamePads":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    .local p2, "discoveredGamePads":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/gamepad/GamePad;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$1;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$000(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/list/GamePadListView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/parrot/freeflight/gamepad/list/GamePadListView;->update(Ljava/util/List;Ljava/util/List;)V

    .line 74
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$1;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v1, p2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$102(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;Ljava/util/List;)Ljava/util/List;

    .line 75
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$1;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$200(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 76
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad;

    .line 77
    .local v0, "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$1;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$200(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/GamePad;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$1;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$300(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/parrot/freeflight/gamepad/list/GamePadListView$OnDeviceClickListener;->onDeviceClick(Lcom/parrot/freeflight/gamepad/GamePad;)V

    goto :goto_0

    .line 82
    .end local v0    # "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity$1;->this$0:Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;->access$400(Lcom/parrot/freeflight/gamepad/GamePadConfigurationActivity;)V

    .line 83
    return-void
.end method
