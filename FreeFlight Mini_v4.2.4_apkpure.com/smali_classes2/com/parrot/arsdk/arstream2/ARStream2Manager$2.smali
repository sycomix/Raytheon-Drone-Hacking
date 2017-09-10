.class Lcom/parrot/arsdk/arstream2/ARStream2Manager$2;
.super Ljava/lang/Object;
.source "ARStream2Manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arstream2/ARStream2Manager;-><init>(Lcom/parrot/mux/Mux;Ljava/lang/String;I)V
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
    .line 33
    iput-object p1, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager$2;->this$0:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 37
    const/4 v0, -0x4

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 38
    iget-object v0, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager$2;->this$0:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    iget-object v1, p0, Lcom/parrot/arsdk/arstream2/ARStream2Manager$2;->this$0:Lcom/parrot/arsdk/arstream2/ARStream2Manager;

    invoke-static {v1}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->access$000(Lcom/parrot/arsdk/arstream2/ARStream2Manager;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parrot/arsdk/arstream2/ARStream2Manager;->access$200(Lcom/parrot/arsdk/arstream2/ARStream2Manager;J)V

    .line 39
    return-void
.end method
