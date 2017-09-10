.class public Lcom/google/gdata/wireformats/input/media/MediaParser;
.super Lcom/google/gdata/wireformats/input/AbstractParser;
.source "MediaParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/wireformats/input/AbstractParser",
        "<",
        "Lcom/google/gdata/data/media/MediaSource;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->MEDIA:Lcom/google/gdata/wireformats/AltFormat;

    const-class v1, Lcom/google/gdata/data/media/MediaSource;

    invoke-direct {p0, v0, v1}, Lcom/google/gdata/wireformats/input/AbstractParser;-><init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)V

    .line 40
    return-void
.end method


# virtual methods
.method public parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Lcom/google/gdata/data/media/MediaSource;
    .locals 5
    .param p1, "parseSource"    # Lcom/google/gdata/data/ParseSource;
    .param p2, "inProps"    # Lcom/google/gdata/wireformats/input/InputProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/gdata/data/media/MediaSource;",
            ">(",
            "Lcom/google/gdata/data/ParseSource;",
            "Lcom/google/gdata/wireformats/input/InputProperties;",
            "Ljava/lang/Class",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 46
    .local p3, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    const-class v2, Lcom/google/gdata/data/media/MediaSource;

    invoke-virtual {p3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result class must be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/google/gdata/data/media/MediaSource;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 49
    invoke-virtual {p1}, Lcom/google/gdata/data/ParseSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 50
    .local v0, "inputStream":Ljava/io/InputStream;
    const-string v2, "Parse source must be stream-based"

    invoke-static {v0, v2}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v1, Lcom/google/gdata/data/media/MediaStreamSource;

    invoke-interface {p2}, Lcom/google/gdata/wireformats/input/InputProperties;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gdata/util/ContentType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/gdata/data/media/MediaStreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 56
    .local v1, "mediaSource":Lcom/google/gdata/data/media/MediaStreamSource;
    invoke-virtual {p3, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/media/MediaSource;

    return-object v2
.end method

.method public bridge synthetic parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/google/gdata/data/ParseSource;
    .param p2, "x1"    # Lcom/google/gdata/wireformats/input/InputProperties;
    .param p3, "x2"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/input/media/MediaParser;->parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Lcom/google/gdata/data/media/MediaSource;

    move-result-object v0

    return-object v0
.end method
