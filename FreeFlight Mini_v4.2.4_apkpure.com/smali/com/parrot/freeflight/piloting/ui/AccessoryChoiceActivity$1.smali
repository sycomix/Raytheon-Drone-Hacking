.class Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$1;
.super Ljava/lang/Object;
.source "AccessoryChoiceActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


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
    .line 59
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$1;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$1;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->access$000(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$1;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->access$000(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/model/DelosModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$1;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$1;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->access$000(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;)Lcom/parrot/freeflight/core/model/DelosModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/model/DelosModel;->getAccessoryState()Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->access$100(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;Lcom/parrot/freeflight/piloting/ui/util/AccessoryState;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$1;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    invoke-virtual {v0}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->finish()V

    goto :goto_0
.end method
