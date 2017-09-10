.class Lcom/parrot/freeflight3/RemoteController$3;
.super Ljava/lang/Object;
.source "RemoteController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/RemoteController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/RemoteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight3/RemoteController;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/parrot/freeflight3/RemoteController$3;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 399
    const-string v0, "RemoteController"

    const-string v1, "Connection lost: reset cmd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/parrot/freeflight3/RemoteController$3;->this$0:Lcom/parrot/freeflight3/RemoteController;

    invoke-static {v0}, Lcom/parrot/freeflight3/RemoteController;->access$1600(Lcom/parrot/freeflight3/RemoteController;)Lcom/parrot/freeflight3/FrameResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight3/FrameResolver;->reset()V

    .line 401
    return-void
.end method
