.class public abstract Lcom/google/gdata/wireformats/input/XmlInputParser;
.super Lcom/google/gdata/wireformats/input/CharacterParser;
.source "XmlInputParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gdata/wireformats/input/CharacterParser",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)V
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
    .line 45
    .local p0, "this":Lcom/google/gdata/wireformats/input/XmlInputParser;, "Lcom/google/gdata/wireformats/input/XmlInputParser<TT;>;"
    .local p2, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/wireformats/input/CharacterParser;-><init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)V

    .line 46
    return-void
.end method


# virtual methods
.method public parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
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
    .line 50
    .local p0, "this":Lcom/google/gdata/wireformats/input/XmlInputParser;, "Lcom/google/gdata/wireformats/input/XmlInputParser<TT;>;"
    .local p3, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-virtual {p1}, Lcom/google/gdata/data/ParseSource;->getEventSource()Lcom/google/gdata/data/XmlEventSource;

    move-result-object v0

    .line 51
    .local v0, "eventSource":Lcom/google/gdata/data/XmlEventSource;
    if-nez v0, :cond_0

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/input/CharacterParser;->parse(Lcom/google/gdata/data/ParseSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 54
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/gdata/wireformats/input/XmlInputParser;->parse(Lcom/google/gdata/data/XmlEventSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract parse(Lcom/google/gdata/data/XmlEventSource;Lcom/google/gdata/wireformats/input/InputProperties;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:TT;>(",
            "Lcom/google/gdata/data/XmlEventSource;",
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
