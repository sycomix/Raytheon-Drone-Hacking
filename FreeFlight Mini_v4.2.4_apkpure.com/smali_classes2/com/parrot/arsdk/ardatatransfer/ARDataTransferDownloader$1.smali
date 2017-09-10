.class Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader$1;
.super Ljava/lang/Object;
.source "ARDataTransferDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader$1;->this$0:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader$1;->this$0:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;

    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader$1;->this$0:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;

    invoke-static {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;->access$000(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;->access$100(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDownloader;J)V

    .line 71
    return-void
.end method
