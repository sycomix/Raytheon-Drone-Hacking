.class Lcom/parrot/freeflight/core/UncaughtExceptionController$1;
.super Ljava/lang/Object;
.source "UncaughtExceptionController.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/UncaughtExceptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/UncaughtExceptionController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/UncaughtExceptionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/UncaughtExceptionController;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/parrot/freeflight/core/UncaughtExceptionController$1;->this$0:Lcom/parrot/freeflight/core/UncaughtExceptionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/UncaughtExceptionController$1;->this$0:Lcom/parrot/freeflight/core/UncaughtExceptionController;

    invoke-static {v0}, Lcom/parrot/freeflight/core/UncaughtExceptionController;->access$000(Lcom/parrot/freeflight/core/UncaughtExceptionController;)Lcom/parrot/freeflight/core/connection/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/core/connection/ConnectionManager;->disconnectDrone()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/core/UncaughtExceptionController$1;->this$0:Lcom/parrot/freeflight/core/UncaughtExceptionController;

    invoke-static {v0}, Lcom/parrot/freeflight/core/UncaughtExceptionController;->access$100(Lcom/parrot/freeflight/core/UncaughtExceptionController;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/parrot/freeflight/core/UncaughtExceptionController$1;->this$0:Lcom/parrot/freeflight/core/UncaughtExceptionController;

    invoke-static {v0}, Lcom/parrot/freeflight/core/UncaughtExceptionController;->access$100(Lcom/parrot/freeflight/core/UncaughtExceptionController;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 28
    :cond_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    goto :goto_0
.end method
