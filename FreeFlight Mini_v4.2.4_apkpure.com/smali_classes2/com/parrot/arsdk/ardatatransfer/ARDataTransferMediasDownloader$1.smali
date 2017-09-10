.class Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader$1;
.super Ljava/lang/Object;
.source "ARDataTransferMediasDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader$1;->this$0:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader$1;->this$0:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader$1;->this$0:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;

    invoke-static {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->access$000(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;->access$100(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferMediasDownloader;J)V

    .line 80
    return-void
.end method
