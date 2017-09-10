.class Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader$1;
.super Ljava/lang/Object;
.source "ARSyncMacgyverUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDLcom/parrot/arsdk/arsync/ARSyncMacgyverListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader$1;->this$0:Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader$1;->this$0:Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;

    iget-object v1, p0, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader$1;->this$0:Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;

    invoke-static {v1}, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->access$000(Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;->access$100(Lcom/parrot/arsdk/arsync/ARSyncMacgyverUploader;J)V

    .line 83
    return-void
.end method
