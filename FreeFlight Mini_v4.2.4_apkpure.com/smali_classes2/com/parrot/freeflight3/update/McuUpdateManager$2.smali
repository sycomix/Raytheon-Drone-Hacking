.class Lcom/parrot/freeflight3/update/McuUpdateManager$2;
.super Ljava/lang/Object;
.source "McuUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight3/update/McuUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/update/McuUpdateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight3/update/McuUpdateManager;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$700(Lcom/parrot/freeflight3/update/McuUpdateManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v1}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1200(Lcom/parrot/freeflight3/update/McuUpdateManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$2;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1000(Lcom/parrot/freeflight3/update/McuUpdateManager;)V

    .line 354
    return-void
.end method
