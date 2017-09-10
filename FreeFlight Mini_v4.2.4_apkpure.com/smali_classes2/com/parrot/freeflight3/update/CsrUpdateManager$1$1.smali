.class Lcom/parrot/freeflight3/update/CsrUpdateManager$1$1;
.super Ljava/lang/Object;
.source "CsrUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/update/CsrUpdateManager$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight3/update/CsrUpdateManager$1;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/update/CsrUpdateManager$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight3/update/CsrUpdateManager$1;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$1$1;->this$1:Lcom/parrot/freeflight3/update/CsrUpdateManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/parrot/freeflight3/update/CsrUpdateManager$1$1;->this$1:Lcom/parrot/freeflight3/update/CsrUpdateManager$1;

    iget-object v0, v0, Lcom/parrot/freeflight3/update/CsrUpdateManager$1;->this$0:Lcom/parrot/freeflight3/update/CsrUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/CsrUpdateManager;->access$200(Lcom/parrot/freeflight3/update/CsrUpdateManager;)V

    .line 80
    return-void
.end method
