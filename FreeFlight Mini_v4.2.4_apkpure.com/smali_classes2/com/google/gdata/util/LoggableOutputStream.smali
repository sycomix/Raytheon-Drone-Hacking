.class public Lcom/google/gdata/util/LoggableOutputStream;
.super Ljava/io/FilterOutputStream;
.source "LoggableOutputStream.java"


# instance fields
.field private bos:Ljava/io/ByteArrayOutputStream;

.field private logger:Ljava/util/logging/Logger;


# direct methods
.method public constructor <init>(Ljava/util/logging/Logger;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 37
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 32
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/LoggableOutputStream;->bos:Ljava/io/ByteArrayOutputStream;

    .line 38
    iput-object p1, p0, Lcom/google/gdata/util/LoggableOutputStream;->logger:Ljava/util/logging/Logger;

    .line 39
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 52
    iget-object v0, p0, Lcom/google/gdata/util/LoggableOutputStream;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/google/gdata/util/LoggableOutputStream;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-super {p0}, Ljava/io/FilterOutputStream;->flush()V

    .line 58
    iget-object v0, p0, Lcom/google/gdata/util/LoggableOutputStream;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/google/gdata/util/LoggableOutputStream;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/LoggableOutputStream;->bos:Ljava/io/ByteArrayOutputStream;

    .line 60
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 46
    iget-object v0, p0, Lcom/google/gdata/util/LoggableOutputStream;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 47
    return-void
.end method
