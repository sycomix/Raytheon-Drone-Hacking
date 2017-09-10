.class Lcom/parrot/freeflight/gamepad/model/TinosGamePad$3;
.super Ljava/lang/Object;
.source "TinosGamePad.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 94
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$3;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 98
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 99
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/model/TinosGamePad$3;->this$0:Lcom/parrot/freeflight/gamepad/model/TinosGamePad;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/model/TinosGamePad;->checkBatteryLevel()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
