.class Lcom/parrot/freeflight3/update/McuUpdateManager$3;
.super Ljava/lang/Object;
.source "McuUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/update/McuUpdateManager;->notifyStateChange(Lcom/parrot/freeflight3/update/UpdateState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

.field final synthetic val$state:Lcom/parrot/freeflight3/update/UpdateState;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/update/McuUpdateManager;Lcom/parrot/freeflight3/update/UpdateState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$3;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    iput-object p2, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$3;->val$state:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$3;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1800(Lcom/parrot/freeflight3/update/McuUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$3;->val$state:Lcom/parrot/freeflight3/update/UpdateState;

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onStateChanged(Lcom/parrot/freeflight3/update/UpdateState;)V

    .line 497
    return-void
.end method
