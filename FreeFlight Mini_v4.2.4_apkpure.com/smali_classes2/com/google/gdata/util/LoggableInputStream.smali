.class public Lcom/google/gdata/util/LoggableInputStream;
.super Ljava/io/FilterInputStream;
.source "LoggableInputStream.java"


# instance fields
.field private closed:Z

.field private final logger:Ljava/util/logging/Logger;

.field private final sw:Ljava/io/StringWriter;


# direct methods
.method public constructor <init>(Ljava/util/logging/Logger;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 38
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 33
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/LoggableInputStream;->sw:Ljava/io/StringWriter;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/util/LoggableInputStream;->closed:Z

    .line 39
    iput-object p1, p0, Lcom/google/gdata/util/LoggableInputStream;->logger:Ljava/util/logging/Logger;

    .line 40
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
    .line 45
    iget-boolean v0, p0, Lcom/google/gdata/util/LoggableInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/google/gdata/util/LoggableInputStream;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/google/gdata/util/LoggableInputStream;->sw:Ljava/io/StringWriter;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/util/LoggableInputStream;->closed:Z

    .line 49
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 50
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 55
    .local v0, "readInt":I
    iget-object v1, p0, Lcom/google/gdata/util/LoggableInputStream;->sw:Ljava/io/StringWriter;

    invoke-virtual {v1, v0}, Ljava/io/StringWriter;->write(I)V

    .line 56
    return v0
.end method

.method public read([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v0

    .line 72
    .local v0, "read":I
    if-lez v0, :cond_0

    .line 73
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    .line 74
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/gdata/util/LoggableInputStream;->sw:Ljava/io/StringWriter;

    invoke-virtual {v2, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 76
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 62
    .local v0, "read":I
    if-lez v0, :cond_0

    .line 63
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v0}, Ljava/lang/String;-><init>([BII)V

    .line 64
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Lcom/google/gdata/util/LoggableInputStream;->sw:Ljava/io/StringWriter;

    invoke-virtual {v2, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 66
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return v0
.end method
