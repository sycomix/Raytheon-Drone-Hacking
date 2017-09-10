.class Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader$1;
.super Ljava/lang/Object;
.source "McuUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->send()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader$1;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 456
    iget-object v0, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader$1;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;

    iget-object v0, v0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v0}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$1800(Lcom/parrot/freeflight3/update/McuUpdateManager;)Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader$1;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;

    invoke-static {v1}, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->access$1900(Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader$1;->this$1:Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;

    iget-object v2, v2, Lcom/parrot/freeflight3/update/McuUpdateManager$FileUploader;->this$0:Lcom/parrot/freeflight3/update/McuUpdateManager;

    invoke-static {v2}, Lcom/parrot/freeflight3/update/McuUpdateManager;->access$2000(Lcom/parrot/freeflight3/update/McuUpdateManager;)I

    move-result v2

    div-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/parrot/freeflight3/update/OnRemoteUpdateListener;->onProgress(I)V

    .line 457
    return-void
.end method
