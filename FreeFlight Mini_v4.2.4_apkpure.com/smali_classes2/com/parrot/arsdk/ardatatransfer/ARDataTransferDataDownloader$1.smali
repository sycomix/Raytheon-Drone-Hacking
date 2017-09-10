.class Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader$1;
.super Ljava/lang/Object;
.source "ARDataTransferDataDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader$1;->this$0:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader$1;->this$0:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader$1;->this$0:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;

    invoke-static {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->access$000(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;->access$100(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferDataDownloader;J)V

    .line 73
    return-void
.end method
