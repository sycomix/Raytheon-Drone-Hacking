.class Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage$1;
.super Ljava/lang/Object;
.source "ResumableHttpFileUploader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;->receiveMessage(J)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;


# direct methods
.method constructor <init>(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage$1;->this$0:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v3, 0x0

    .line 108
    .local v3, "received":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v2, "message":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v4, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage$1;->this$0:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;

    invoke-static {v4}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;->access$000(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;)I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 110
    iget-object v4, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage$1;->this$0:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;

    invoke-static {v4}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;->access$100(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 111
    .local v0, "avail":I
    if-lez v0, :cond_0

    .line 112
    new-array v1, v0, [B

    .line 113
    .local v1, "buf":[B
    iget-object v4, p0, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage$1;->this$0:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;

    invoke-static {v4}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;->access$100(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;)Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    add-int/2addr v3, v4

    .line 114
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 116
    .end local v1    # "buf":[B
    :cond_0
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 119
    .end local v0    # "avail":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
