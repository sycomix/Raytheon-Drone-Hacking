.class public abstract Lcom/google/gdata/wireformats/input/CharacterParser;
.super Lcom/google/gdata/wireformats/input/AbstractParser;
.source "CharacterParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gdata/wireformats/input/AbstractParser",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)V
    .locals 0
    .param p1, "altFormat"    # Lcom/google/gdata/wireformats/AltFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/wireformats/AltFormat;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/google/gdata/wireformats/input/CharacterParser;, "Lcom/google/gdata/wireformats/input/CharacterParser<TT;>;"
    .local p2, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/wireformats/input/AbstractParser;-><init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected getCharset(Lcom/google/gdata/wireformats/input/InputProperties;)Ljava/lang/String;
    .locals 1
    .param p1, "inProps"    # Lcom/google/gdata/wireformats/input/InputProperties;

    .prologue
    .line 63
    .local p0, "this":Lcom/google/gdata/wireformats/input/CharacterParser;, "Lcom/google/gdata/wireformats/input/CharacterParser<TT;>;"
    invoke-interface {p1}, Lcom/google/gdata/wireformats/input/InputProperties;->getContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->getCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .param p1, "parseSource"    # Lcom/google/gdata/data/ParseSource;
    .param p2, "inProps"    # Lcom/google/gdata/wireformats/input/InputProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:TT;>(",
            "Lcom/google/gdata/data/ParseSource;",
            "Lcom/google/gdata/wireformats/input/InputProperties;",
            "Ljava/lang/Class",
            "<TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/google/gdata/wireformats/input/CharacterParser;, "Lcom/google/gdata/wireformats/input/CharacterParser<TT;>;"
    .local p3, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-virtual {p1}, Lcom/google/gdata/data/ParseSource;->getReader()Ljava/io/Reader;

    move-result-object v3

    .line 76
    .local v3, "reader":Ljava/io/Reader;
    if-nez v3, :cond_1

    .line 77
    invoke-virtual {p1}, Lcom/google/gdata/data/ParseSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 78
    .local v2, "inputStream":Ljava/io/InputStream;
    if-eqz v2, :cond_3

    .line 80
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/gdata/wireformats/input/CharacterParser;->getCharset(Lcom/google/gdata/wireformats/input/InputProperties;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 83
    const-string v0, "UTF-8"

    .line 85
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    new-instance v3, Lcom/google/gdata/util/io/base/UnicodeReader;

    .end local v3    # "reader":Ljava/io/Reader;
    invoke-direct {v3, v2, v0}, Lcom/google/gdata/util/io/base/UnicodeReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "charset":Ljava/lang/String;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "reader":Ljava/io/Reader;
    :cond_1
    :goto_0
    invoke-virtual {p0, v3, p2, p3}, Lcom/google/gdata/wireformats/input/CharacterParser;->parse(Ljava/io/Reader;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 88
    .restart local v0    # "charset":Ljava/lang/String;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    .end local v3    # "reader":Ljava/io/Reader;
    invoke-direct {v3, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3    # "reader":Ljava/io/Reader;
    goto :goto_0

    .line 90
    .end local v0    # "charset":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Lcom/google/gdata/util/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported encoding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 97
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "reader":Ljava/io/Reader;
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "XML event source not supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public abstract parse(Ljava/io/Reader;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:TT;>(",
            "Ljava/io/Reader;",
            "Lcom/google/gdata/wireformats/input/InputProperties;",
            "Ljava/lang/Class",
            "<TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation
.end method
