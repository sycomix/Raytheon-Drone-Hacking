.class Lcom/parrot/freeflight3/update/CsrUpdateManager$1;
.super Ljava/lang/Object;
.source "CsrUpdateManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/update/CsrUpdateManager;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/parrot/freeflight3/update/OnRemoteUpdateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/update/CsrUpdateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight3/update/CsrUpdateManager;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$1;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 73
    const-string v0, "CsrUpdateManager"

    const-string v1, "onServiceConnected: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$1;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$002(Lcom/parrot/freeflight3/update/CsrUpdateManager;Z)Z

    .line 75
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$1;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$100(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$1;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$300(Lcom/parrot/freeflight3/update/CsrUpdateManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/parrot/freeflight3/update/CsrUpdateManager$1$1;

    invoke-direct {v1, p0}, Lcom/parrot/freeflight3/update/CsrUpdateManager$1$1;-><init>(Lcom/parrot/freeflight3/update/CsrUpdateManager$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$1;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$002(Lcom/parrot/freeflight3/update/CsrUpdateManager;Z)Z

    .line 88
    return-void
.end method
