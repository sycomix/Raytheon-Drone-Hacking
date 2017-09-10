.class Lcom/parrot/arsdk/aracademy/ARAcademyUploader$1;
.super Ljava/lang/Object;
.source "ARAcademyUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->createUploader(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;Lcom/parrot/arsdk/aracademy/ARAcademyUploaderFileProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/aracademy/ARAcademyUploaderFileCompletionListener;Ljava/lang/Object;Lcom/parrot/arsdk/aracademy/ARAcademyUploaderCompletionListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/arsdk/aracademy/ARAcademyUploader;


# direct methods
.method constructor <init>(Lcom/parrot/arsdk/aracademy/ARAcademyUploader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/arsdk/aracademy/ARAcademyUploader;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader$1;->this$0:Lcom/parrot/arsdk/aracademy/ARAcademyUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader$1;->this$0:Lcom/parrot/arsdk/aracademy/ARAcademyUploader;

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyUploader$1;->this$0:Lcom/parrot/arsdk/aracademy/ARAcademyUploader;

    invoke-static {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->access$000(Lcom/parrot/arsdk/aracademy/ARAcademyUploader;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->access$100(Lcom/parrot/arsdk/aracademy/ARAcademyUploader;J)V

    .line 73
    return-void
.end method
