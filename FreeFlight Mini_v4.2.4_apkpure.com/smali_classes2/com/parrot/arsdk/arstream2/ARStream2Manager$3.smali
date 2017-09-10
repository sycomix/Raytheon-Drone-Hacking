.class Lcom/parrot/arsdk/arstream2/ARStream2Manager$3;
.super Ljava/lang/Object;
.source "ARStream2Manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arstream2/ARStream2Manager;-><init>(Ljava/lang/String;IIIILjava/lang/String;ILcom/parrot/arsdk/arsal/ARSAL_SOCKET_CLASS_SELECTOR_ENUM;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/arstream2/ARStream2Manager;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arstream2/ARStream2Manager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager$3;->this$0:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 54
    const/4 v0, -0x4

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 55
    iget-object v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager$3;->this$0:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    iget-object v1, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager$3;->this$0:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    invoke-static {v1}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->access$000(Lcom/parrot/arsdk/arstream2/ARStream2Manager;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->access$100(Lcom/parrot/arsdk/arstream2/ARStream2Manager;J)V

    .line 56
    return-void
.end method
