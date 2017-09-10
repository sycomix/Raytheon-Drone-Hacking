.class Lcom/parrot/freeflight/gamepad/model/TinosGamePad$4;
.super Ljava/lang/Object;
.source "TinosGamePad.java"

# interfaces
.implements Lcom/parrot/freeflight3/OnRemoteBatteryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/model/TinosGamePad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$4;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryChange(I)V
    .locals 3
    .param p1, "batteryLevel"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$4;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$902(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;I)I

    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$4;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$1000(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;)V

    .line 113
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$4;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$1100(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$4;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$1100(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$4;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$4;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$1200(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$1102(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$4;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-static {v0}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->access$1100(Lcom/parrot/freeflight/gamepad/model/TinosGamePad;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 118
    :cond_1
    return-void
.end method
