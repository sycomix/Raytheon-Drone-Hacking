.class Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader$1;
.super Ljava/lang/Object;
.source "ARDataTransferUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader$1;->this$0:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader$1;->this$0:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;

    iget-object v1, p0, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader$1;->this$0:Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;

    invoke-static {v1}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->access$000(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;->access$100(Lcom/parrot/arsdk/ardatatransfer/ARDataTransferUploader;J)V

    .line 71
    return-void
.end method
