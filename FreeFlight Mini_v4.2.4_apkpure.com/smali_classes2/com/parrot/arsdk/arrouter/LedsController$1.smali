.class Lcom/parrot/arsdk/arrouter/LedsController$1;
.super Ljava/lang/Object;
.source "LedsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arrouter/LedsController;->startBlink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/arrouter/LedsController;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arrouter/LedsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/arrouter/LedsController;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/parrot/arsdk/arrouter/LedsController$1;->this$0:Lcom/parrot/arsdk/arrouter/LedsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 370
    iget-object v2, p0, Lcom/parrot/arsdk/arrouter/LedsController$1;->this$0:Lcom/parrot/arsdk/arrouter/LedsController;

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/LedsController$1;->this$0:Lcom/parrot/arsdk/arrouter/LedsController;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/LedsController;->access$500(Lcom/parrot/arsdk/arrouter/LedsController;)Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->isBlinkEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/LedsController$1;->this$0:Lcom/parrot/arsdk/arrouter/LedsController;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/LedsController;->access$600(Lcom/parrot/arsdk/arrouter/LedsController;)Lcom/parrot/arsdk/arrouter/LedsController$RedLed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->isBlinkEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/LedsController$1;->this$0:Lcom/parrot/arsdk/arrouter/LedsController;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/LedsController;->access$700(Lcom/parrot/arsdk/arrouter/LedsController;)Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->isBlinkEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/LedsController$1;->this$0:Lcom/parrot/arsdk/arrouter/LedsController;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/LedsController;->access$800(Lcom/parrot/arsdk/arrouter/LedsController;)Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->isBlinkEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/parrot/arsdk/arrouter/LedsController;->access$402(Lcom/parrot/arsdk/arrouter/LedsController;Z)Z

    .line 371
    :goto_1
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/LedsController$1;->this$0:Lcom/parrot/arsdk/arrouter/LedsController;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/LedsController;->access$400(Lcom/parrot/arsdk/arrouter/LedsController;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/LedsController$1;->this$0:Lcom/parrot/arsdk/arrouter/LedsController;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/LedsController;->access$500(Lcom/parrot/arsdk/arrouter/LedsController;)Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->blink()V

    .line 374
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/LedsController$1;->this$0:Lcom/parrot/arsdk/arrouter/LedsController;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/LedsController;->access$700(Lcom/parrot/arsdk/arrouter/LedsController;)Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->blink()V

    .line 375
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/LedsController$1;->this$0:Lcom/parrot/arsdk/arrouter/LedsController;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/LedsController;->access$800(Lcom/parrot/arsdk/arrouter/LedsController;)Lcom/parrot/arsdk/arrouter/LedsController$LedBank;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/LedsController$LedBank;->blink()V

    .line 376
    iget-object v1, p0, Lcom/parrot/arsdk/arrouter/LedsController$1;->this$0:Lcom/parrot/arsdk/arrouter/LedsController;

    invoke-static {v1}, Lcom/parrot/arsdk/arrouter/LedsController;->access$600(Lcom/parrot/arsdk/arrouter/LedsController;)Lcom/parrot/arsdk/arrouter/LedsController$RedLed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/arsdk/arrouter/LedsController$RedLed;->blink()V

    .line 380
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 381
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 370
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 386
    :cond_2
    return-void
.end method
