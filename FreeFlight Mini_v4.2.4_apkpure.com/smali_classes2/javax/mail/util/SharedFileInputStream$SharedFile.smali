.class Ljavax/mail/util/SharedFileInputStream$SharedFile;
.super Ljava/lang/Object;
.source "SharedFileInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/util/SharedFileInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SharedFile"
.end annotation


# instance fields
.field private cnt:I

.field private in:Ljava/io/RandomAccessFile;

.field private final this$0:Ljavax/mail/util/SharedFileInputStream;


# direct methods
.method constructor <init>(Ljavax/mail/util/SharedFileInputStream;Ljava/io/File;)V
    .locals 2
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->this$0:Ljavax/mail/util/SharedFileInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;

    .line 99
    return-void
.end method

.method constructor <init>(Ljavax/mail/util/SharedFileInputStream;Ljava/lang/String;)V
    .locals 2
    .param p2, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iput-object p1, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->this$0:Ljavax/mail/util/SharedFileInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;

    .line 95
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I

    if-lez v0, :cond_0

    iget v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I

    if-gtz v0, :cond_0

    .line 108
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 125
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 126
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 127
    return-void
.end method

.method public declared-synchronized forceClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I

    if-lez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I

    .line 115
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :goto_0
    monitor-exit p0

    return-void

    .line 119
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public open()Ljava/io/RandomAccessFile;
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I

    .line 103
    iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;

    return-object v0
.end method
